/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2006-2011 ScriptDev2 <http://www.scriptdev2.com/>
 *
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

/* ScriptData
SDName: Boss_Doctor_Theolen_Krastinov
SD%Complete: 100
SDComment:
SDCategory: Scholomance
EndScriptData */

#include "ScriptPCH.h"
#include "scholomance.h"

enum eEnums
{
    SPELL_REND                  = 16509,
    SPELL_BACKHAND              = 18103,
    SPELL_FRENZY                = 8269
};

class boss_doctor_theolen_krastinov : public CreatureScript
{
public:
    boss_doctor_theolen_krastinov() : CreatureScript("boss_doctor_theolen_krastinov") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_theolenkrastinovAI (pCreature);
    }

    struct boss_theolenkrastinovAI : public ScriptedAI
    {
        boss_theolenkrastinovAI(Creature *c) : ScriptedAI(c) {}

        uint32 m_uiRend_Timer;
        uint32 m_uiBackhand_Timer;
        uint32 m_uiFrenzy_Timer;

        void Reset()
        {
            m_uiRend_Timer = 8000;
            m_uiBackhand_Timer = 9000;
            m_uiFrenzy_Timer = 1000;
        }

        void JustDied(Unit* /*pKiller*/)
        {
            InstanceScript* pInstance = me->GetInstanceScript();
            if (pInstance)
            {
                pInstance->SetData(DATA_DOCTORTHEOLENKRASTINOV_DEATH, 0);

                if (pInstance->GetData(TYPE_GANDLING) == IN_PROGRESS)
                    me->SummonCreature(1853, 180.73f, -9.43856f, 75.507f, 1.61399f, TEMPSUMMON_DEAD_DESPAWN, 0);
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            //Rend_Timer
            if (m_uiRend_Timer <= uiDiff)
            {
                DoCast(me->getVictim(), SPELL_REND);
                m_uiRend_Timer = 10000;
            }
            else
                m_uiRend_Timer -= uiDiff;

            //Backhand_Timer
            if (m_uiBackhand_Timer <= uiDiff)
            {
                DoCast(me->getVictim(), SPELL_BACKHAND);
                m_uiBackhand_Timer = 10000;
            }
            else
                m_uiBackhand_Timer -= uiDiff;

            //Frenzy_Timer
            if (HealthBelowPct(26))
            {
                if (m_uiFrenzy_Timer <= uiDiff)
                {
                    DoCast(me, SPELL_FRENZY);
                    DoScriptText(EMOTE_GENERIC_FRENZY_KILL, me);

                    m_uiFrenzy_Timer = 120000;
                }
                else
                    m_uiFrenzy_Timer -= uiDiff;
            }

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_theolenkrastinov()
{
    new boss_doctor_theolen_krastinov();
}