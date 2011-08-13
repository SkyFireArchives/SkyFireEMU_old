/*
* Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "baradin_hold.h"

enum Spells
{
    SPELL_BERSERK				= 47008,
    SPELL_CONSUMING_DARKNESS	= 88954,
    H_SPELL_CONSUMING_DARKNESS	= 95173,
    SPELL_FEL_FIRESTORM			= 88972,
    SPELL_METEOR_SLASH			= 88942,
    H_SPELL_METEOR_SLASH		= 95172,
};

enum Events
{
    EVENT_BERSERK				= 1,
    EVENT_CONSUMING_DARKNESS	= 2,
    EVENT_METEOR_SLASH			= 3,
};

class boss_argaloth: public CreatureScript
{
	public:
		boss_argaloth() : CreatureScript("boss_argaloth") { }

		struct boss_argalothAI: public BossAI
		{
			boss_argalothAI(Creature* creature) : BossAI(creature, DATA_ARGALOTH)
			{
			}

			void Reset()
			{
				events.Reset();
				instance->SetBossState(DATA_ARGALOTH, NOT_STARTED);

				felStormCount = 0;
			}

			void EnterCombat(Unit* /*who*/)
			{
				me->setActive(true);
				DoZoneInCombat();

				events.ScheduleEvent(EVENT_CONSUMING_DARKNESS, urand(12000, 14000));
				events.ScheduleEvent(EVENT_METEOR_SLASH, 15000);
				events.ScheduleEvent(EVENT_BERSERK, 300000);
			}

			void JustDied(Unit* /*killer*/)
			{
				Map* map = instance->instance;
				Map::PlayerList const &players = map->GetPlayers();
				if (!players.isEmpty())
				{
					if (Player* player = players.begin()->getSource())
					{
						if (Is25ManRaid())
							player->ModifyCurrency(396, 10500);
						else
							player->ModifyCurrency(396, 7500);
					}
				}

				instance->SetBossState(DATA_ARGALOTH, DONE);
			}

			void DamageTaken(Unit* /*attack*/, uint32& /*damage*/)
			{
				if (HealthBelowPct(67) && felStormCount == 0)
				{
					++felStormCount;
					DoCast(me, SPELL_FEL_FIRESTORM);
				}
				else if (HealthBelowPct(34) && felStormCount == 1)
				{
					++felStormCount;
					DoCast(me, SPELL_FEL_FIRESTORM);
				}
			}

			void UpdateAI(uint32 const diff)
			{
				if (!UpdateVictim())
					return;

	            events.Update(diff);

				if (me->HasUnitState(UNIT_STAT_CASTING))
					return;

				while (uint32 eventId = events.ExecuteEvent())
				{
					switch(eventId)
					{
						case EVENT_CONSUMING_DARKNESS:
							if (Is25ManRaind())
								DoCast(H_SPELL_CONSUMING_DARKNESS);
							else
								DoCast(SPELL_CONSUMING_DARKNESS);
							events.ScheduleEvent(EVENT_CONSUMING_DARKNESS, 24000);
							break;
						case EVENT_METEOR_SLASH:
							DoCastVictim(SPELL_METEOR_SLASH);
							events.ScheduleEvent(EVENT_METEOR_SLASH, 21000);
							break;
						case EVENT_BERSERK:
							DoCast(me, SPELL_BERSERK);
							break;
					}
				}

				DoMeleeAttackIfReady();
            
			}

		private:
			uint8 felStormCount;
		};

		CreatureAI* GetAI(Creature* creature) const
		{
			return new boss_argalothAI(creature);
		}
};

void AddSC_boss_argaloth()
{
    new boss_argaloth();
}
