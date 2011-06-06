/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

/* ScriptData
SDName: Boss Loken
SD%Complete: 60%
SDComment: Missing intro. Remove hack of Pulsing Shockwave when core supports. Aura is not working (59414)
SDCategory: Halls of Lightning
EndScriptData */

#include "ScriptPCH.h"
#include "halls_of_lightning.h"

enum eEnums
{
    ACHIEV_TIMELY_DEATH_START_EVENT               = 20384,

    SAY_AGGRO                                     = -1602018,
    SAY_INTRO_1                                   = -1602019,
    SAY_INTRO_2                                   = -1602020,
    SAY_SLAY_1                                    = -1602021,
    SAY_SLAY_2                                    = -1602022,
    SAY_SLAY_3                                    = -1602023,
    SAY_DEATH                                     = -1602024,
    SAY_NOVA_1                                    = -1602025,
    SAY_NOVA_2                                    = -1602026,
    SAY_NOVA_3                                    = -1602027,
    SAY_75HEALTH                                  = -1602028,
    SAY_50HEALTH                                  = -1602029,
    SAY_25HEALTH                                  = -1602030,
    EMOTE_NOVA                                    = -1602031,

    SPELL_ARC_LIGHTNING                           = 52921,
    SPELL_LIGHTNING_NOVA_N                        = 52960,
    SPELL_LIGHTNING_NOVA_H                        = 59835,

    SPELL_PULSING_SHOCKWAVE_N                     = 52961,
    SPELL_PULSING_SHOCKWAVE_H                     = 59836,
    SPELL_PULSING_SHOCKWAVE_AURA                  = 59414
};

class boss_loken : public CreatureScript
{
public:
    boss_loken() : CreatureScript("boss_loken") { }

    struct boss_lokenAI : public ScriptedAI
    {
        boss_lokenAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            m_pInstance = pCreature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            bIsAura = false;

            ArcLightningTimer = 15000;
            LightningNovaTimer = 20000;
            PulsingShockwaveTimer = 2000;
            ResumePulsingShockwaveTimer = 15000;

            HealthAmountModifier = 1;

            if (m_pInstance)
            {
                m_pInstance->SetData(TYPE_LOKEN, NOT_STARTED);
                m_pInstance->DoStopTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMELY_DEATH_START_EVENT);
            }
        }

        void EnterCombat(Unit* /*pWho*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (m_pInstance)
            {
                m_pInstance->SetData(TYPE_LOKEN, IN_PROGRESS);
                m_pInstance->DoStartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMELY_DEATH_START_EVENT);
            }
        }

        void JustDied(Unit* /*pKiller*/)
        {
            DoScriptText(SAY_DEATH, me);

            if (m_pInstance)
                m_pInstance->SetData(TYPE_LOKEN, DONE);
        }

        void KilledUnit(Unit* /*pVictim*/)
        {
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (bIsAura)
            {
                // workaround for PULSING_SHOCKWAVE
                if (PulsingShockwaveTimer <= uiDiff)
                {
                    Map* pMap = me->GetMap();
                    if (pMap->IsDungeon())
                    {
                        Map::PlayerList const &PlayerList = pMap->GetPlayers();

                        if (PlayerList.isEmpty())
                            return;

                        for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                            if (i->getSource() && i->getSource()->isAlive() && i->getSource()->isTargetableForAttack())
                            {
                                int32 dmg;
                                float m_fDist = me->GetExactDist(i->getSource()->GetPositionX(), i->getSource()->GetPositionY(), i->getSource()->GetPositionZ());

                                dmg = DUNGEON_MODE(100, 150); // need to correct damage
                                if (m_fDist > 1.0f) // Further from 1 yard
                                    dmg = int32(dmg*m_fDist);

                                me->CastCustomSpell(i->getSource(), DUNGEON_MODE(52942, 59837), &dmg, 0, 0, false);
                            }
                    }
                    PulsingShockwaveTimer = 2000;
                } else PulsingShockwaveTimer -= uiDiff;
            }
            else
            {
                if (ResumePulsingShockwaveTimer <= uiDiff)
                {
                    //breaks at movement, can we assume when it's time, this spell is casted and also must stop movement?
                    DoCast(me, SPELL_PULSING_SHOCKWAVE_AURA, true);

                    DoCast(me, SPELL_PULSING_SHOCKWAVE_N); // need core support
                    bIsAura = true;
                    ResumePulsingShockwaveTimer = 0;
                }
                else ResumePulsingShockwaveTimer -= uiDiff;
            }

            if (ArcLightningTimer <= uiDiff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_ARC_LIGHTNING);

                ArcLightningTimer = 15000 + rand()%1000;
            }
            else ArcLightningTimer -= uiDiff;

            if (LightningNovaTimer <= uiDiff)
            {
                DoScriptText(RAND(SAY_NOVA_1,SAY_NOVA_2,SAY_NOVA_3), me);
                DoScriptText(EMOTE_NOVA, me);
                DoCast(me, SPELL_LIGHTNING_NOVA_N);

                bIsAura = false;
                ResumePulsingShockwaveTimer = DUNGEON_MODE(5000, 4000); // Pause Pulsing Shockwave aura
                LightningNovaTimer = 20000 + rand()%1000;
            }
            else LightningNovaTimer -= uiDiff;

            // Health check
            if (HealthBelowPct(100 - 25 * HealthAmountModifier))
            {
                switch(HealthAmountModifier)
                {
                    case 1: DoScriptText(SAY_75HEALTH, me); break;
                    case 2: DoScriptText(SAY_50HEALTH, me); break;
                    case 3: DoScriptText(SAY_25HEALTH, me); break;
                }

                ++HealthAmountModifier;
            }
            DoMeleeAttackIfReady();
        }
    private:
        InstanceScript* m_pInstance;
        bool bIsAura;
        uint32 ArcLightningTimer;
        uint32 LightningNovaTimer;
        uint32 PulsingShockwaveTimer;
        uint32 ResumePulsingShockwaveTimer;
        uint32 HealthAmountModifier;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_lokenAI(pCreature);
    }
};

void AddSC_boss_loken()
{
    new boss_loken();
}
