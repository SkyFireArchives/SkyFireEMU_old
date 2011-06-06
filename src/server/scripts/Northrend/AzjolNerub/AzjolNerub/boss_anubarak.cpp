/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
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
#include "azjol_nerub.h"

enum Spells
{
    SPELL_CARRION_BEETLES                         = 53520,
    SPELL_SUMMON_CARRION_BEETLES                  = 53521,
    SPELL_LEECHING_SWARM                          = 53467,
    SPELL_LEECHING_SWARM_H                        = 59430,
    SPELL_POUND                                   = 53472,
    SPELL_POUND_H                                 = 59433,
    SPELL_POUND_DMG                               = 53509,
    SPELL_POUND_DMG_H                             = 59432,
    SPELL_SUBMERGE                                = 53421,
    SPELL_IMPALE_DMG                              = 53454,
    SPELL_IMPALE_DMG_H                            = 59446,
    SPELL_IMPALE_SHAKEGROUND                      = 53455,
    SPELL_IMPALE_SPIKE                            = 53539,   //this is not the correct visual effect
    //SPELL_IMPALE_TARGET                           = 53458,
};

enum Creatures
{
    CREATURE_DARTER                               = 29213,
    CREATURE_GUARDIAN                             = 29216,
    CREATURE_VENOMANCER                           = 29217,
    CREATURE_IMPALE_TARGET                        = 89,
    DISPLAY_INVISIBLE                             = 11686
};

// not in db
enum Yells
{
    SAY_INTRO                                     = -1601010,
    SAY_AGGRO                                     = -1601000,
    SAY_SLAY_1                                    = -1601001,
    SAY_SLAY_2                                    = -1601002,
    SAY_SLAY_3                                    = -1601003,
    SAY_LOCUST_1                                  = -1601005,
    SAY_LOCUST_2                                  = -1601006,
    SAY_LOCUST_3                                  = -1601007,
    SAY_SUBMERGE_1                                = -1601008,
    SAY_SUBMERGE_2                                = -1601009,
    SAY_DEATH                                     = -1601004
};

enum
{
    ACHIEV_TIMED_START_EVENT                      = 20381,
};

enum Phases
{
    PHASE_MELEE                                   = 0,
    PHASE_UNDERGROUND                             = 1,
    IMPALE_PHASE_TARGET                           = 0,
    IMPALE_PHASE_ATTACK                           = 1,
    IMPALE_PHASE_DMG                              = 2
};

const Position SpawnPoint[2] =
{
    { 550.7f, 282.8f, 224.3f, 0.0f },
    { 551.1f, 229.4f, 224.3f, 0.0f },
};

const Position SpawnPointGuardian[2] =
{
    { 550.348633f, 316.006805f, 234.2947f, 0.0f },
    { 550.188660f, 324.264557f, 237.7412f, 0.0f },
};

class boss_anub_arak : public CreatureScript
{
public:
    boss_anub_arak() : CreatureScript("boss_anub_arak") { }

    struct boss_anub_arakAI : public ScriptedAI
    {
        boss_anub_arakAI(Creature *c) : ScriptedAI(c), lSummons(me)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            me->SetFloatValue(UNIT_FIELD_BOUNDINGRADIUS, 5.0f);
            me->SetFloatValue(UNIT_FIELD_COMBATREACH, 5.0f);

            CarrionBeetlesTimer = 60*IN_MILLISECONDS;
            LeechingSwarmTimer = 20*IN_MILLISECONDS;
            ImpaleTimer = 9*IN_MILLISECONDS;
            PoundTimer = 15*IN_MILLISECONDS;

            Phase = PHASE_MELEE;
            UndergroundPhase = 0;
            AddsAlive = 0;
            bChanneling = false;
            ImpalePhase = IMPALE_PHASE_TARGET;

            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
            me->RemoveAura(SPELL_SUBMERGE);

            lSummons.DespawnAll();

            if (pInstance)
            {
                pInstance->SetData(DATA_ANUBARAK_EVENT, NOT_STARTED);
                pInstance->DoStopTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMED_START_EVENT);
            }
            me->SetReactState(REACT_PASSIVE);
        }

        Creature* DoSummonImpaleTarget(Unit *pTarget)
        {
            Position targetPos;
            pTarget->GetPosition(&targetPos);

            if (TempSummon* pImpaleTarget = me->SummonCreature(CREATURE_IMPALE_TARGET, targetPos, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 6*IN_MILLISECONDS))
            {
                ImpaleTarget = pImpaleTarget->GetGUID();
                pImpaleTarget->SetReactState(REACT_PASSIVE);
                pImpaleTarget->SetDisplayId(DISPLAY_INVISIBLE);
                pImpaleTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE|UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                return pImpaleTarget;
            }

            return NULL;
        }

        void EnterCombat(Unit * /*pWho*/)
        {
            DoScriptText(SAY_AGGRO, me);
            if (pInstance)
            {
                pInstance->SetData(DATA_ANUBARAK_EVENT, IN_PROGRESS);
                pInstance->DoStartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMED_START_EVENT);
            }
            me->SetReactState(REACT_AGGRESSIVE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            switch (Phase)
            {
            case PHASE_UNDERGROUND:
                if (ImpaleTimer <= diff)
                {
                    switch(ImpalePhase)
                    {
                    case IMPALE_PHASE_TARGET:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        {
                            if (Creature *pImpaleTarget = DoSummonImpaleTarget(target))
                                pImpaleTarget->CastSpell(pImpaleTarget, SPELL_IMPALE_SHAKEGROUND, true);
                            ImpaleTimer = 3*IN_MILLISECONDS;
                            ImpalePhase = IMPALE_PHASE_ATTACK;
                        }
                        break;
                    case IMPALE_PHASE_ATTACK:
                        if (Creature* pImpaleTarget = Unit::GetCreature(*me, ImpaleTarget))
                        {
                            pImpaleTarget->CastSpell(pImpaleTarget, SPELL_IMPALE_SPIKE, false);
                            pImpaleTarget->RemoveAurasDueToSpell(SPELL_IMPALE_SHAKEGROUND);
                        }
                        ImpalePhase = IMPALE_PHASE_DMG;
                        ImpaleTimer = 1*IN_MILLISECONDS;
                        break;
                    case IMPALE_PHASE_DMG:
                        if (Creature* pImpaleTarget = Unit::GetCreature(*me, ImpaleTarget))
                            me->CastSpell(pImpaleTarget, DUNGEON_MODE(SPELL_IMPALE_DMG, SPELL_IMPALE_DMG_H), true);
                        ImpalePhase = IMPALE_PHASE_TARGET;
                        ImpaleTimer = 9*IN_MILLISECONDS;
                        break;
                    }
                } else ImpaleTimer -= diff;

                if (!bGuardianSummoned)
                {
                    for (uint8 i = 0; i < 2; ++i)
                    {
                        if (Creature *Guardian = me->SummonCreature(CREATURE_GUARDIAN,SpawnPointGuardian[i],TEMPSUMMON_CORPSE_DESPAWN,0))
                        {
                            Guardian->AddThreat(me->getVictim(), 0.0f);
                            DoZoneInCombat(Guardian);
                        }
                    }
                    bGuardianSummoned = true;
                }

                if (!bVenomancerSummoned)
                {
                    if (VenomancerTimer <= diff)
                    {
                        if (UndergroundPhase > 1)
                        {
                            for (uint8 i = 0; i < 2; ++i)
                            {
                                if (Creature *Venomancer = me->SummonCreature(CREATURE_VENOMANCER,SpawnPointGuardian[i],TEMPSUMMON_CORPSE_DESPAWN,0))
                                {
                                    Venomancer->AddThreat(me->getVictim(), 0.0f);
                                    DoZoneInCombat(Venomancer);
                                }
                            }
                            bVenomancerSummoned = true;
                        }
                    } else VenomancerTimer -= diff;
                }

                if (DarterTimer <= diff)
                {
                    if (!UndergroundPhase)
                        return;

                    for (uint8 i = 0; i < 2; ++i)
                    {
                        if (Creature *Darter = me->SummonCreature(CREATURE_DARTER,SpawnPoint[i],TEMPSUMMON_CORPSE_DESPAWN,0))
                        {
                            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                                Darter->AI()->AttackStart(pTarget);
                            DoZoneInCombat(Darter);
                        }
                    }
                    DarterTimer = 20*IN_MILLISECONDS / UndergroundPhase;
                } else DarterTimer -= diff;

                if (UndergroundTimer <= diff)
                {
                    if (!AddsAlive)
                    {
                        PoundTimer = urand(2500, 10000);
                        me->RemoveAura(SPELL_SUBMERGE);
                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                        Phase = PHASE_MELEE;
                    }
                } else UndergroundTimer -= diff;
                break;

            case PHASE_MELEE:
                if (((UndergroundPhase == 0 && HealthBelowPct(75))
                    || (UndergroundPhase == 1 && HealthBelowPct(50))
                    || (UndergroundPhase == 2 && HealthBelowPct(25)))
                    && !me->HasUnitState(UNIT_STAT_CASTING))
                {
                    bGuardianSummoned = false;
                    bVenomancerSummoned = false;

                    UndergroundTimer = 40*IN_MILLISECONDS;
                    VenomancerTimer = 25*IN_MILLISECONDS;
                    DarterTimer = 5*IN_MILLISECONDS;

                    ImpalePhase = 0;
                    ImpaleTimer = 9*IN_MILLISECONDS;

                    DoCast(me, SPELL_SUBMERGE, false);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);

                    Phase = PHASE_UNDERGROUND;
                    ++UndergroundPhase;
                }

                if (bChanneling == true)
                {
                    for (uint8 i = 0; i < 8; ++i)
                    DoCast(me->getVictim(), SPELL_SUMMON_CARRION_BEETLES, true);
                    bChanneling = false;
                }
                else if (CarrionBeetlesTimer <= diff)
                {
                    bChanneling = true;
                    DoCastVictim(SPELL_CARRION_BEETLES);
                    CarrionBeetlesTimer = 60*IN_MILLISECONDS; // handled by leeching swarm
                } else CarrionBeetlesTimer -= diff;

                if (LeechingSwarmTimer <= diff)
                {
                    if(!me->IsNonMeleeSpellCasted(false))
                    {
                        DoCast(me, DUNGEON_MODE(SPELL_LEECHING_SWARM, SPELL_LEECHING_SWARM_H), true);
                        LeechingSwarmTimer = urand(25*IN_MILLISECONDS, 30*IN_MILLISECONDS);
                        CarrionBeetlesTimer = 2*IN_MILLISECONDS;
                    }
                } else LeechingSwarmTimer -= diff;

                if (PoundTimer <= diff)
                {
                    float x, y, z;
                    z = me->GetPositionZ();
                    me->GetNearPoint2D(x, y, -2.5f, me->GetOrientation());

                    // summon the temp target relative to self instead of current victim, should prevent facing issues while casting
                    if (Creature *pTempTarget = me->SummonCreature(CREATURE_IMPALE_TARGET, x, y, z, 0.0f, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 3500))
                    {
                        me->SetFacingToObject(pTempTarget);
                        pTempTarget->SetReactState(REACT_PASSIVE);
                        pTempTarget->SetDisplayId(DISPLAY_INVISIBLE);
                        pTempTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE|UNIT_FLAG_NON_ATTACKABLE |UNIT_FLAG_NOT_SELECTABLE);
                        me->CastSpell(pTempTarget, DUNGEON_MODE(SPELL_POUND, SPELL_POUND_H), false);
                    }
                    PoundTimer = urand(17000, 20000);
                } else PoundTimer -= diff;

                DoMeleeAttackIfReady();
                break;
            }
        }

        void SpellHitTarget(Unit *pTarget, const SpellEntry *spell) 
        {
            if (spell->Id == DUNGEON_MODE(SPELL_POUND, SPELL_POUND_H))
                pTarget->CastSpell(pTarget, DUNGEON_MODE(SPELL_POUND_DMG, SPELL_POUND_DMG_H), true);
        }

        void JustDied(Unit * /*pKiller*/)
        {
            DoScriptText(SAY_DEATH, me);
            lSummons.DespawnAll();
            if (pInstance)
                pInstance->SetData(DATA_ANUBARAK_EVENT, DONE);
        }

        void KilledUnit(Unit *pVictim)
        {
            if (pVictim == me)
                return;

            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);
        }

        void JustSummoned(Creature* summon)
        {
            lSummons.Summon(summon);

            if (summon->GetEntry() == CREATURE_GUARDIAN || summon->GetEntry() == CREATURE_VENOMANCER)
                ++AddsAlive;
        }

        void SummonedCreatureDies(Creature* summon, Unit* /*killer*/)
        {
            if (summon->GetEntry() == CREATURE_GUARDIAN || summon->GetEntry() == CREATURE_VENOMANCER)
                --AddsAlive;
        }

    private:
        InstanceScript *pInstance;
        bool bChanneling;
        bool bGuardianSummoned;
        bool bVenomancerSummoned;
        uint8 Phase;
        uint8 AddsAlive;
        uint32 UndergroundPhase;
        uint32 CarrionBeetlesTimer;
        uint32 LeechingSwarmTimer;
        uint32 PoundTimer;
        uint32 SubmergeTimer;
        uint32 UndergroundTimer;
        uint32 VenomancerTimer;
        uint32 DarterTimer;
        uint32 ImpaleTimer;
        uint32 ImpalePhase;
        uint64 ImpaleTarget;
        SummonList lSummons;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new boss_anub_arakAI(creature);
    }
};

void AddSC_boss_anub_arak()
{
    new boss_anub_arak();
}