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

#include"ScriptPCH.h"
#include"WorldPacket.h"
#include"baradin_hold.h"
#include"ScriptMgr.h"
#include"ScriptedCreature.h"
#include"SpellScript.h"
#include"SpellAuraEffects.h"

enum Spells
{
    SPELL_BERSERK              = 47008,
    SPELL_CONSUMING_DARKNESS   = 88954,
    H_SPELL_CONSUMING_DARKNESS = 95173,
    SPELL_FEL_FIRESTORM        = 88972,
    SPELL_METEOR_SLASH         = 88942,
    H_SPELL_METEOR_SLASH       = 95172,
};

enum Events
{
    EVENT_BERSERK,
    EVENT_CONSUMING_DARKNESS,
    EVENT_FEL_FIRESTORM,
    EVENT_METEOR_SLASH,
};

class boss_argaloth: public CreatureScript
{
public:
    boss_argaloth() : CreatureScript("boss_argaloth") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
       return new boss_argalothAI(pCreature);
    }
    struct boss_argalothAI: public ScriptedAI
    {
        boss_argalothAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript *pInstance;
        EventMap events;
        bool fs_flag;
        uint32 bsk;
        bool enrage_flag;
        bool check_in;
        float curr_health;

        void Reset()
        {
            bsk = 300000; // 5 min Enrage Timer
            events.Reset();
            if (pInstance && (pInstance->GetData(DATA_ARGALOTH_EVENT) != DONE &&  !check_in))
                pInstance->SetData(DATA_ARGALOTH_EVENT, NOT_STARTED);

            enrage_flag = false;
            check_in = false;
        }

        void EnterCombat(Unit* /*Ent*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ARGALOTH_EVENT, IN_PROGRESS);
        }

        void JustDied(Unit* /*Kill*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ARGALOTH_EVENT, DONE);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            curr_health = me->GetHealthPct();
            events.Update(uiDiff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    case EVENT_CONSUMING_DARKNESS:
                        if (Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0))
                            DoCast(me->getVictim(), SPELL_CONSUMING_DARKNESS);
                        events.ScheduleEvent(EVENT_CONSUMING_DARKNESS, urand(12000, 14000));
                        break;
                    case EVENT_METEOR_SLASH:
                        DoCast(me->getVictim(), SPELL_METEOR_SLASH);
                        events.ScheduleEvent(EVENT_METEOR_SLASH, 21000);
                        break;
                    case SPELL_FEL_FIRESTORM:
                        if (curr_health < 66.0 && (fs_flag == false))
                        {
                            DoCast(me->getVictim(), SPELL_FEL_FIRESTORM);
                            fs_flag = true;
                        }
                                               
                        if (curr_health < 33.0 && (fs_flag == false))
                        {
                            DoCast(me->getVictim(), SPELL_FEL_FIRESTORM);
                            fs_flag = true;
                        }
                        break;
                    case EVENT_BERSERK:
                        if(!enrage_flag && bsk <= uiDiff)
                        {
                            DoCast(me, SPELL_BERSERK);
                            enrage_flag = true;
                            events.ScheduleEvent(EVENT_BERSERK, 300000);
                        }
                        else
                            bsk -= uiDiff;
                        break;
                }
            }
            DoMeleeAttackIfReady();
            
        }
     };
};

void AddSC_boss_argaloth()
{
    new boss_argaloth();
}
