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
#include "gundrak.h"

//Spells
enum Spells
{
    SPELL_POISON_NOVA                             = 55081,
    H_SPELL_POISON_NOVA                           = 59842,
    SPELL_POWERFULL_BITE                          = 48287,
    H_SPELL_POWERFULL_BITE                        = 59840,
    SPELL_VENOM_BOLT                              = 54970,
    H_SPELL_VENOM_BOLT                            = 59839
};

//Yell
enum Yells
{
    SAY_AGGRO                                     = -1574031,
    SAY_SLAY_1                                    = -1604018,
    SAY_SLAY_2                                    = -1604019,
    SAY_SLAY_3                                    = -1604020,
    SAY_DEATH                                     = -1604021,
    SAY_SUMMON_SNAKES                             = -1604022,
    SAY_SUMMON_CONSTRICTORS                       = -1604023,
    EMOTE_NOVA                                    = -1574029,
};

//Creatures
enum Creatures
{
    CREATURE_SNAKE                                = 29680,
    CREATURE_CONSTRICTORS                         = 29713,
    CREATURE_SNAKE_WRAP                           = 29742
};

//Creatures' spells
enum ConstrictorSpells
{
    SPELL_GRIP_OF_SLAD_RAN                        = 55093,
    SPELL_SNAKE_WRAP                              = 55099,
    SPELL_SNAKE_WRAP_STUN                         = 55126,
    SPELL_VENOMOUS_BITE                           = 54987,
    H_SPELL_VENOMOUS_BITE                         = 58996
};

enum Achievements
{
    ACHIEV_SNAKES                                 = 2058
};

static Position SpawnLoc[]=
{
    {1783.81f, 646.637f, 133.948f, 3.71755f},
    {1775.03f, 606.586f, 134.165f, 1.43117f},
    {1717.39f, 630.041f, 129.282f, 5.96903f},
    {1765.66f, 646.542f, 134.02f,  5.11381f},
    {1716.76f, 635.159f, 129.282f, 0.191986f}
};

class boss_slad_ran : public CreatureScript
{
public:
    boss_slad_ran() : CreatureScript("boss_slad_ran") { }

    struct boss_slad_ranAI : public ScriptedAI
    {
        boss_slad_ranAI(Creature *c) : ScriptedAI(c), lSummons(me)
        {
            pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            PoisonNovaTimer = 10*IN_MILLISECONDS;
            PowerfullBiteTimer = 3*IN_MILLISECONDS;
            VenomBoltTimer = 15*IN_MILLISECONDS;
            SpawnTimer = 5*IN_MILLISECONDS;
            Phase = 0;

            lSummons.DespawnAll();
            lUnWrappedPlayers.clear();

            if (pInstance)
                pInstance->SetData(DATA_SLAD_RAN_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
            {
                pInstance->SetData(DATA_SLAD_RAN_EVENT, IN_PROGRESS);

                Map::PlayerList const &players = pInstance->instance->GetPlayers();
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                    lUnWrappedPlayers.insert(itr->getSource()->GetGUID());
            }
        }

        void GotWrapped(Unit* unit)
        {
            if (unit && unit->GetTypeId() == TYPEID_PLAYER)
                lUnWrappedPlayers.erase(unit->GetGUID());
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (Phase)
            {
                if (SpawnTimer <= diff)
                {
                    if ((Phase == 1) || (Phase == 2))
                        for (uint8 i = 0; i < DUNGEON_MODE(1, 2); ++i)
                            me->SummonCreature(CREATURE_SNAKE, SpawnLoc[i], TEMPSUMMON_CORPSE_TIMED_DESPAWN,1*IN_MILLISECONDS);
                    if (Phase == 2)
                        for (uint8 i = 0; i < DUNGEON_MODE(1, 2); ++i)
                            me->SummonCreature(CREATURE_CONSTRICTORS, SpawnLoc[i], TEMPSUMMON_CORPSE_TIMED_DESPAWN,1*IN_MILLISECONDS);
                    SpawnTimer = 10000;
                } else SpawnTimer -= diff;
            }

            if (Phase == 0 && HealthBelowPct(90))
            {
                DoScriptText(SAY_SUMMON_SNAKES,me);
                Phase = 1;
            }

            if (Phase == 1 && HealthBelowPct(75))
            {
                DoScriptText(SAY_SUMMON_CONSTRICTORS,me);
                Phase = 2;
            }

            // do not interrupt self
            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (PoisonNovaTimer <= diff)
            {
                DoScriptText(EMOTE_NOVA,me);
                DoCastAOE(DUNGEON_MODE(SPELL_POISON_NOVA, H_SPELL_POISON_NOVA));
                PoisonNovaTimer = 23*IN_MILLISECONDS;
            } else PoisonNovaTimer -= diff;

            if (PowerfullBiteTimer <= diff)
            {
                DoCast(me->getVictim(), DUNGEON_MODE(SPELL_POWERFULL_BITE, H_SPELL_POWERFULL_BITE));
                PowerfullBiteTimer = 10*IN_MILLISECONDS;
            } else PowerfullBiteTimer -= diff;

            if (VenomBoltTimer <= diff)
            {
                DoCast(me->getVictim(), DUNGEON_MODE(SPELL_VENOM_BOLT, H_SPELL_VENOM_BOLT));
                VenomBoltTimer = 10*IN_MILLISECONDS;
            } else VenomBoltTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);

            AchievementEntry const *achievSnakes = GetAchievementStore()->LookupEntry(ACHIEV_SNAKES);
            if (achievSnakes && IsHeroic())
            {
                for (std::set<uint64>::const_iterator itr = lUnWrappedPlayers.begin(); itr != lUnWrappedPlayers.end(); ++itr)
                {
                    Player* temp = Unit::GetPlayer(*me, *itr);
                    if (temp && temp->isAlive() && (temp->GetDistance2d(me) < 100))
                        temp->CompletedAchievement(achievSnakes);
                }
            } 
     
            if (pInstance)
                pInstance->SetData(DATA_SLAD_RAN_EVENT, DONE);
        }

        void KilledUnit(Unit * /*victim*/)
        {
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);
        }

        void JustSummoned(Creature* summoned)
        {
            summoned->GetMotionMaster()->MovePoint(0,me->GetPositionX(),me->GetPositionY(),me->GetPositionZ());
            lSummons.Summon(summoned);
        }

    private:
        uint32 PoisonNovaTimer;
        uint32 PowerfullBiteTimer;
        uint32 VenomBoltTimer;
        uint32 SpawnTimer;
        uint8 Phase;
        std::set<uint64> lUnWrappedPlayers;
        SummonList lSummons;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_slad_ranAI (pCreature);
    }
};

class mob_slad_ran_constrictor : public CreatureScript
{
public:
    mob_slad_ran_constrictor() : CreatureScript("mob_slad_ran_constrictor") { }

    struct mob_slad_ran_constrictorAI : public ScriptedAI
    {
        mob_slad_ran_constrictorAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            GripOfSladRanTimer = 1*IN_MILLISECONDS;
            EnwrapTimer = 3*IN_MILLISECONDS;
            WrapTarget = 0;
            bEnwrapping = false;
        }

        void CastGrip(Unit* pTarget) // workaround
        {
            uint8 stackcount = 0;

            if (pTarget->HasAura(SPELL_GRIP_OF_SLAD_RAN)) //if aura exists
            {
                 if (Aura* pGripAura = pTarget->GetAura(SPELL_GRIP_OF_SLAD_RAN))
                 {
                     stackcount = pGripAura->GetStackAmount();

                     pGripAura->SetStackAmount(stackcount + 1); // add one stack
                     pGripAura->SetDuration(pGripAura->GetMaxDuration()); // reset aura duration

                     //if now stacked 5 times
                     if (stackcount >= 4)
                     {
                          pTarget->RemoveAurasDueToSpell(SPELL_GRIP_OF_SLAD_RAN);
                    
                          me->AddUnitState(UNIT_STAT_ROOT); //dont interrupt channelling by moving
                          DoCast(pTarget, SPELL_SNAKE_WRAP);
                    
                          bEnwrapping = true;
                          WrapTarget = pTarget->GetGUID();
                     }
                 }
            }
            else DoCast(pTarget, SPELL_GRIP_OF_SLAD_RAN);  //else add aura
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (GripOfSladRanTimer <= diff)
            {
                Unit* pTarget = me->getVictim();
            
                CastGrip(pTarget);
            
                GripOfSladRanTimer = 5*IN_MILLISECONDS;
            } else GripOfSladRanTimer -= diff;
    
            if (bEnwrapping)
            {
                if (EnwrapTimer <= diff)
                {
                    if (Unit* pTarget = Unit::GetUnit((*me), WrapTarget))
                    {
                        pTarget->CastSpell(pTarget, SPELL_SNAKE_WRAP_STUN, true);
                    
                        // replace with Unit::GetCreature(*me, pInstance ? pInstance->GetData64(DATA_SLADRAN) : 0) later
                        if (Creature* pSladran = GetClosestCreatureWithEntry(me, CREATURE_SLAD_RAN, 100.0f))
                            CAST_AI(boss_slad_ran::boss_slad_ranAI, pSladran->AI())->GotWrapped(pTarget);

                        me->DisappearAndDie();
                        WrapTarget = 0;
                    }
                    bEnwrapping = false;
                    EnwrapTimer = 3*IN_MILLISECONDS;
                } else EnwrapTimer -= diff;
            }
        }

    private:
        uint64 WrapTarget;
        uint32 GripOfSladRanTimer;
        uint32 EnwrapTimer;
        bool bEnwrapping;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_slad_ran_constrictorAI (pCreature);
    }
};

class mob_slad_ran_viper : public CreatureScript
{
public:
    mob_slad_ran_viper() : CreatureScript("mob_slad_ran_viper") { }

    struct mob_slad_ran_viperAI : public ScriptedAI
    {
        mob_slad_ran_viperAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            VenomousBiteTimer = 2*IN_MILLISECONDS;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (VenomousBiteTimer <= diff)
            {
                DoCast(me->getVictim(), DUNGEON_MODE(SPELL_VENOMOUS_BITE, H_SPELL_VENOMOUS_BITE));
                VenomousBiteTimer = 10*IN_MILLISECONDS;
            } else VenomousBiteTimer -= diff;
        }

    private:
        uint32 VenomousBiteTimer;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_slad_ran_viperAI (pCreature);
    }
};

class mob_snake_wrap : public CreatureScript
{
public:
    mob_snake_wrap() : CreatureScript("mob_snake_wrap") { }

    struct mob_snake_wrapAI : public ScriptedAI
    {
        mob_snake_wrapAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        { 
            WrapTargetGUID = 0; 
        }

        void EnterCombat(Unit* /*who*/) {}
        void AttackStart(Unit* /*who*/) {}
        void MoveInLineOfSight(Unit* /*who*/) {}

        void JustDied(Unit *killer)
        {
            if (WrapTargetGUID)
            {
                Unit* pTarget = Unit::GetUnit((*me), WrapTargetGUID);
                if (pTarget)
                    pTarget->RemoveAurasDueToSpell(SPELL_SNAKE_WRAP_STUN);
            }
            me->RemoveCorpse();
        }

        void UpdateAI(const uint32 /*diff*/)
        {
            if (Unit* pSummoner = CAST_SUM(me)->GetSummoner())
                WrapTargetGUID = pSummoner->GetGUID();

            Unit* temp = Unit::GetUnit((*me), WrapTargetGUID);
            if ((temp && temp->isAlive() && !temp->HasAura(SPELL_SNAKE_WRAP_STUN)) || !temp)
                me->DealDamage(me, me->GetHealth(), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
        }

    private:
        uint64 WrapTargetGUID;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_snake_wrapAI(pCreature);
    }
};

void AddSC_boss_slad_ran()
{
    new boss_slad_ran();
    new mob_slad_ran_constrictor();
    new mob_slad_ran_viper();
    new mob_snake_wrap();
}