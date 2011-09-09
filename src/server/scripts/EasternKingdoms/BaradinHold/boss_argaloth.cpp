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
    SPELL_FEL_FIRESTORM			= 88972,
    SPELL_METEOR_SLASH			= 88942,
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
				_Reset();
				_felFireStormCount = 0;
				me->RemoveAurasDueToSpell(SPELL_BERSERK);
			}

			void EnterCombat(Unit* /*who*/)
			{
				_EnterCombat();

				events.Reset();
				events.ScheduleEvent(EVENT_BERSERK, 300000);
				events.ScheduleEvent(EVENT_CONSUMING_DARKNESS, urand(12000, 14000));
				events.ScheduleEvent(EVENT_METEOR_SLASH, 15000);
			}

			void JustDied(Unit* /*killer*/)
			{
				_JustDied();
			}

			void DoAction(int32 const action)
			{
				if (action == ACTION_FEL_FIRESTORM)
				{
					++_felFireStormCount;
					DoCast(SPELL_FEL_FIRESTORM);
				}
			}

			void DamageTaken(Unit* /*attack*/, uint32& damage)
			{
				if (me->HealthBelowPctDamaged(66, damage) && _felFireStormCount == 0)
					DoAction(ACTION_FEL_FIRESTORM);
				else if (me->HealthBelowPctDamaged(33, damage) && _felFireStormCount == 1)
					DoAction(ACTION_FEL_FIRESTORM);
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
							if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
								DoCast(target, SPELL_CONSUMING_DARKNESS);
							events.ScheduleEvent(EVENT_CONSUMING_DARKNESS, 24000);
							break;
						case EVENT_METEOR_SLASH:
							DoCastVictim(SPELL_METEOR_SLASH);
							events.ScheduleEvent(EVENT_METEOR_SLASH, 21000);
							break;
						case EVENT_BERSERK:
							DoCast(me, SPELL_BERSERK);
							break;
						default:
							break;
					}
				}

				DoMeleeAttackIfReady();
            
			}

		private:
			uint8 _felFireStormCount;
		};

		CreatureAI* GetAI(Creature* creature) const
		{
			return GetBaradinHoldAI<boss_argalothAI>(creature);
		}
};

void AddSC_boss_argaloth()
{
    new boss_argaloth();
}
