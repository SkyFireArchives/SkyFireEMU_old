/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
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

#include "ScriptPCH.h"
#include "nexus.h"

enum Spells
{
    //Spells
    SPELL_SPARK                                   = 47751,
    H_SPELL_SPARK                                 = 57062,
    SPELL_RIFT_SHIELD                             = 47748,
    SPELL_CHARGE_RIFT                             = 47747, //Works wrong (affect players, not rifts)
    SPELL_CREATE_RIFT                             = 47743, //Don't work, using WA
    SPELL_ARCANE_ATTRACTION                       = 57063, //No idea, when it's used
};

enum Adds
{
    MOB_CRAZED_MANA_WRAITH                        = 26746,
    MOB_CHAOTIC_RIFT                              = 26918
};

enum Yells
{
    //Yell
    SAY_AGGRO                                     = -1576010,
    SAY_DEATH                                     = -1576011,
    SAY_RIFT                                      = -1576012,
    SAY_SHIELD                                    = -1576013
};

enum Achievs
{
    ACHIEV_CHAOS_THEORY                           = 2037
};

const Position RiftLocation[6] =
{
    {652.64f, -273.70f, -8.75f, 0.0f},
    {634.45f, -265.94f, -8.44f, 0.0f},
    {620.73f, -281.17f, -9.02f, 0.0f},
    {626.10f, -304.67f, -9.44f, 0.0f},
    {639.87f, -314.11f, -9.49f, 0.0f},
    {651.72f, -297.44f, -9.37f, 0.0f}
};

#define EMOTE_RISS "Anomalus \303\266ffnet einen Chaotischen Riss!"
#define EMOTE_RISS_AUFLADEN "Anomalus bereitet sich vor, Risse aufzuladen!"

class boss_anomalus : public CreatureScript
{
public:
    boss_anomalus() : CreatureScript("boss_anomalus") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_anomalusAI (pCreature);
    }

    struct boss_anomalusAI : public ScriptedAI
    {
        boss_anomalusAI(Creature *c) : ScriptedAI(c),summons(me)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript* pInstance;

        uint32 uiSparkTimer;
        uint32 uiCreateRiftTimer;
        uint32 uiHealthAmountModifier;
        uint32 uiSpawnTimer;
        uint64 uiChaoticRiftGUID;

        SummonList summons;

        bool bDeadChaoticRift; // needed for achievement: Chaos Theory(2037)

        void Reset()
        {
            summons.DespawnAll();
            uiHealthAmountModifier = 1;
            uiSparkTimer = 5*IN_MILLISECONDS;
            uiChaoticRiftGUID = 0;
            uiSpawnTimer = 10000;

            bDeadChaoticRift = false;

            if (pInstance)
                pInstance->SetData(DATA_ANOMALUS_EVENT, NOT_STARTED);
        }

        void EnterEvadeMode()
        {
            summons.DespawnAll();
            _EnterEvadeMode();
            me->GetMotionMaster()->MoveTargetedHome();
            Reset();
        }

        void SummonedCreatureDespawn(Creature *summon)
        {
            summons.Despawn(summon);
        }

        void JustSummoned(Creature *summon)
        {
            summons.Summon(summon);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
                pInstance->SetData(DATA_ANOMALUS_EVENT, IN_PROGRESS);
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);
            summons.DespawnAll();

            if (pInstance)
            {
                if (IsHeroic() && !bDeadChaoticRift)
                    pInstance->DoCompleteAchievement(ACHIEV_CHAOS_THEORY);
                pInstance->SetData(DATA_ANOMALUS_EVENT, DONE);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->GetDistance(me->GetHomePosition()) > 60.0f)
            {
                //Not blizzlike, hack to avoid an exploit
                EnterEvadeMode();
                return;
            }

            if (me->HasAura(SPELL_RIFT_SHIELD))
            {
                if (uiChaoticRiftGUID)
                {
                    Unit* Rift = Unit::GetUnit((*me), uiChaoticRiftGUID);
                    if (Rift && Rift->isDead())
                    {
                        me->CastStop(SPELL_CHARGE_RIFT);
                        me->RemoveAurasDueToSpell(SPELL_RIFT_SHIELD);
                        uiChaoticRiftGUID = 0;
                    }
                    return;
                }
            } else uiChaoticRiftGUID = 0;

            if (me->HealthBelowPct(100 - 25 * uiHealthAmountModifier))
            {
                ++uiHealthAmountModifier;
                DoScriptText(SAY_SHIELD, me);
                DoCast(me, SPELL_RIFT_SHIELD);
                Creature* Rift = me->SummonCreature(MOB_CHAOTIC_RIFT, RiftLocation[urand(0, 5)], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 1*IN_MILLISECONDS);
                if (Rift)
                {
                    me->MonsterTextEmote(EMOTE_RISS_AUFLADEN, 0, true);
                    DoCast(me, SPELL_CHARGE_RIFT);
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        Rift->AI()->AttackStart(pTarget);
                    uiChaoticRiftGUID = Rift->GetGUID();
                    DoScriptText(SAY_RIFT , me);
                }
            }

            if (uiSpawnTimer <= diff)
            {
                Creature* Rift = me->SummonCreature(MOB_CHAOTIC_RIFT, RiftLocation[urand(0, 5)], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 1*IN_MILLISECONDS);
                if (Rift)
                {
                    me->MonsterTextEmote(EMOTE_RISS, 0, true);
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        Rift->AI()->AttackStart(pTarget);
                }
                uiSpawnTimer = 30*IN_MILLISECONDS;
            } else uiSpawnTimer -= diff;

            if (uiSparkTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                DoCast(pTarget, DUNGEON_MODE(SPELL_SPARK,H_SPELL_SPARK));
                uiSparkTimer = 5*IN_MILLISECONDS;
            } else uiSparkTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };

};

enum RiftSpells
{
    SPELL_CHAOTIC_ENERGY_BURST                    = 47688,
    SPELL_CHARGED_CHAOTIC_ENERGY_BURST            = 47737,
    SPELL_ARCANEFORM                              = 48019 //Chaotic Rift visual
};

class mob_chaotic_rift : public CreatureScript
{
public:
    mob_chaotic_rift() : CreatureScript("mob_chaotic_rift") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_chaotic_riftAI (pCreature);
    }

    struct mob_chaotic_riftAI : public Scripted_NoMovementAI
    {
        mob_chaotic_riftAI(Creature *c) : Scripted_NoMovementAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript* pInstance;

        uint32 uiChaoticEnergyBurstTimer;
        uint32 uiSummonCrazedManaWraithTimer;

        void Reset()
        {
            uiChaoticEnergyBurstTimer = 1*IN_MILLISECONDS;
            uiSummonCrazedManaWraithTimer = 5*IN_MILLISECONDS;
            DoCast(me, 47687);
            DoCast(me, SPELL_ARCANEFORM, false);
        }


        void JustDied(Unit * /*killer*/)
        {
            if (Creature* pAnomalus = Unit::GetCreature(*me, pInstance ? pInstance->GetData64(DATA_ANOMALUS) : 0))
                if (pInstance && pInstance->GetData(DATA_ANOMALUS_EVENT) == IN_PROGRESS)
                    CAST_AI(boss_anomalus::boss_anomalusAI,pAnomalus->AI())->bDeadChaoticRift = true;
        }
         
        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(me->HasAura(SPELL_CHARGE_RIFT))
            {
                me->AddAura(47733, me);
                me->RemoveAurasDueToSpell(47687);
            }
            else
            {
                me->AddAura(47687, me);
                me->RemoveAurasDueToSpell(47733);
            }

            if (uiSummonCrazedManaWraithTimer <= diff)
            {
                Creature* Wraith = me->SummonCreature(MOB_CRAZED_MANA_WRAITH, me->GetPositionX()+1, me->GetPositionY()+1, me->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 1*IN_MILLISECONDS);
                if (Wraith)
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        Wraith->AI()->AttackStart(pTarget);
                Unit* Anomalus = Unit::GetUnit(*me, pInstance ? pInstance->GetData64(DATA_ANOMALUS) : 0);
                if (Anomalus && Anomalus->HasAura(SPELL_RIFT_SHIELD))
                    uiSummonCrazedManaWraithTimer = 5*IN_MILLISECONDS;
                else
                    uiSummonCrazedManaWraithTimer = 10*IN_MILLISECONDS;
            } else uiSummonCrazedManaWraithTimer -= diff;
        }
    };

};

void AddSC_boss_anomalus()
{
    new boss_anomalus();
    new mob_chaotic_rift();
}