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

#include "ScriptPCH.h"
#include "nexus.h"

enum Spells
{
    SPELL_ICE_NOVA                                = 47772,
    H_SPELL_ICE_NOVA                              = 56935,
    SPELL_FIREBOMB                                = 47773,
    H_SPELL_FIREBOMB                              = 56934,
    SPELL_GRAVITY_WELL                            = 47756,
    SPELL_TELESTRA_BACK                           = 47714,

    SPELL_FIRE_MAGUS_VISUAL                       = 47705,
    SPELL_FROST_MAGUS_VISUAL                      = 47706,
    SPELL_ARCANE_MAGUS_VISUAL                     = 47704,

     // The acctual summoning spells for clones.
    SPELL_SUMMON_TELESTRA_CLONE_ARCANE            = 47708,
    SPELL_SUMMON_TELESTRA_CLONE_FIRE              = 47707,
    SPELL_SUMMON_TELESTRA_CLONE_FROST             = 47709,
    SPELL_SUMMON_TELESTRA_CLONES                  = 47710,

    //not used for now
    SPELL_TELESTRA_CLONE_DIES_ARCANE              = 47713,
    SPELL_TELESTRA_CLONE_DIES_FIRE                = 47711,
    SPELL_TELESTRA_CLONE_DIES_FROST               = 47712,

    // Spells used by Telestra Clones
    SPELL_FIREBLAST                               = 47721,
    H_SPELL_FIREBLAST                             = 56939,
    SPELL_SCORCH                                  = 47723,
    H_SPELL_SCORCH                                = 56938,

    SPELL_CRITTER                                 = 47731,
    SPELL_TIME_STOP                               = 47736,

    SPELL_BLIZZARD                                = 47727,
    H_SPELL_BLIZZARD                              = 56936,
    SPELL_ICE_BARB                                = 47729,
    H_SPELL_ICE_BARB                              = 56937,
};
enum Creatures
{
    MOB_FIRE_MAGUS                                = 26928,
    MOB_FROST_MAGUS                               = 26930,
    MOB_ARCANE_MAGUS                              = 26929
};
enum Yells
{
    SAY_AGGRO                                     = -1576000,
    SAY_KILL                                      = -1576001,
    SAY_DEATH                                     = -1576002,
    SAY_MERGE                                     = -1576003,
    SAY_SPLIT_1                                   = -1576004,
    SAY_SPLIT_2                                   = -1576005,
};
enum Achievements
{
    ACHIEV_SPLIT_PERSONALITY                      = 2150,
    ACHIEV_TIMER                                  = 5*IN_MILLISECONDS,
    GRAND_MAGUS_TELESTRA_DISPLAYID                = 24066
};

const Position  CenterOfRoom = {504.80f, 89.07f, -16.12f, 6.27f};

class boss_magus_telestra : public CreatureScript
{
public:
    boss_magus_telestra() : CreatureScript("boss_magus_telestra") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_magus_telestraAI (pCreature);
    }

    struct boss_magus_telestraAI : public ScriptedAI
    {
        boss_magus_telestraAI(Creature* c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        bool bFireMagusDead;
        bool bFrostMagusDead;
        bool bArcaneMagusDead;

        void Reset()
        {
            Phase = 0;
            //These times are probably wrong
            IceNovaTimer =  7*IN_MILLISECONDS;
            FireBombTimer =  0;
            GravityWellTimer = 15*IN_MILLISECONDS;
            Cooldown = 0;

            AchievementProgress = 0;
            AchievementTimer = 0;

            bIsAchievementTimerRunning = false;
            bIsWaitingToAppear = false;
            bIsDissapearDelay = false;
            bIsAppearSpellCastAllowed = false;

            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetVisible(true);
            me->SetReactState(REACT_AGGRESSIVE);

            if (pInstance)
                pInstance->SetData(DATA_MAGUS_TELESTRA_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
                pInstance->SetData(DATA_MAGUS_TELESTRA_EVENT, IN_PROGRESS);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetVisible(true);
            DoScriptText(SAY_DEATH, me);

            if (pInstance)
            {
                if (IsHeroic() && AchievementProgress == 2)
                    pInstance->DoCompleteAchievement(ACHIEV_SPLIT_PERSONALITY);
                pInstance->SetData(DATA_MAGUS_TELESTRA_EVENT, DONE);
            }
        }

        void KilledUnit(Unit * /*victim*/)
        {
            DoScriptText(SAY_KILL, me);
        }

        void SplitPersonality(uint32 entry)
        {
            switch (entry)
            {
                case MOB_FIRE_MAGUS:
                {
                    DoCast(SPELL_SUMMON_TELESTRA_CLONE_FIRE);
                    break;
                }
                case MOB_FROST_MAGUS:
                {
                    DoCast(SPELL_SUMMON_TELESTRA_CLONE_FROST);
                    break;
                }
                case MOB_ARCANE_MAGUS:
                {
                    DoCast(SPELL_SUMMON_TELESTRA_CLONE_ARCANE);
                    break;
                }
            }
        }

        Unit* SelectARandomTarget()
        {
            Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true);
                return pTarget;
        }

        void SummonedCreatureDespawn(Creature *summon)
        {
            if (summon->isAlive())
                return;

            if (summon->GetEntry() == MOB_FIRE_MAGUS)
            {
                bFireMagusDead = true;
                bIsAchievementTimerRunning = true;
            }
            else if (summon->GetEntry() == MOB_FROST_MAGUS)
            {
                bFrostMagusDead = true;
                bIsAchievementTimerRunning = true;
            }
            else if (summon->GetEntry() == MOB_ARCANE_MAGUS)
            {
                bArcaneMagusDead = true;
                bIsAchievementTimerRunning = true;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

             if (bIsWaitingToAppear)
             {
                 me->StopMoving();
                 if (IsWaitingToAppearTimer <= diff)
                 {
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    bIsWaitingToAppear = false;
                 } else IsWaitingToAppearTimer -= diff;
                 return;
             }

            if (bIsDissapearDelay)
            {
                if(DissapearDelayTimer <= diff)
                {
                    SplitPersonality(MOB_FIRE_MAGUS);
                    SplitPersonality(MOB_FROST_MAGUS);
                    SplitPersonality(MOB_ARCANE_MAGUS);

                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    me->GetMotionMaster()->Clear();
                    me->GetMap()->CreatureRelocation(me, CenterOfRoom.GetPositionX(), CenterOfRoom.GetPositionY(), CenterOfRoom.GetPositionZ(), CenterOfRoom.GetOrientation());
                    bFireMagusDead = false;
                    bFrostMagusDead = false;
                    bArcaneMagusDead = false;
                    bIsDissapearDelay = false;
                } else DissapearDelayTimer -= diff;
                return;
            }

            if ((Phase == 1) ||(Phase == 3))
            {
                if (bIsAchievementTimerRunning)
                    AchievementTimer += diff;
                if (bFireMagusDead && bFrostMagusDead && bArcaneMagusDead)
                {
                    if (AchievementTimer <= ACHIEV_TIMER)
                        AchievementProgress +=1;
                    DoCast(SPELL_TELESTRA_BACK);
                    me->SetDisplayId(GRAND_MAGUS_TELESTRA_DISPLAYID);
                    if (Phase == 1)
                        Phase = 2;
                    if (Phase == 3)
                        Phase = 4;
                    bIsWaitingToAppear = true;
                    bIsAppearSpellCastAllowed = true;
                    IsWaitingToAppearTimer = 2*IN_MILLISECONDS;
                    DoScriptText(SAY_MERGE, me);
                    bIsAchievementTimerRunning = false;
                    AchievementTimer = 0;
                }
                else
                    return;
            }

            if ((Phase == 0) && HealthBelowPct(50))
            {
                Phase = 1;
                me->CastStop();
                me->RemoveAllAuras();
                me->SetReactState(REACT_PASSIVE);
                me->AttackStop();
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                bFireMagusDead = false;
                bFrostMagusDead = false;
                bArcaneMagusDead = false;
                DoCast(SPELL_SUMMON_TELESTRA_CLONES);
                bIsDissapearDelay = true;
                DissapearDelayTimer = 2000;
                DoScriptText(RAND(SAY_SPLIT_1,SAY_SPLIT_2), me);
                return;
            }

            if (IsHeroic() && (Phase == 2) && HealthBelowPct(10))
            {
                Phase = 3;
                me->CastStop();
                me->RemoveAllAuras();
                me->SetReactState(REACT_PASSIVE);
                me->AttackStop();
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                bFireMagusDead = false;
                bFrostMagusDead = false;
                bArcaneMagusDead = false;
                DoCast(SPELL_SUMMON_TELESTRA_CLONES);
                bIsDissapearDelay = true;
                DissapearDelayTimer = 2000;
                DoScriptText(RAND(SAY_SPLIT_1,SAY_SPLIT_2), me);
                return;
            }

            if (Cooldown)
            {
                if (Cooldown <= diff)
                    Cooldown = 0;
                else
                {
                    Cooldown -= diff;
                    return;
                }
            }

            if (IceNovaTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                {
                    DoCast(pTarget, SPELL_ICE_NOVA, false);
                    Cooldown = 1500;
                }
                IceNovaTimer = 15*IN_MILLISECONDS;
            } else IceNovaTimer -= diff;

            if (GravityWellTimer <= diff)
            {
                if (Unit *pTarget = me->getVictim())
                {
                    DoCast(pTarget, SPELL_GRAVITY_WELL);
                    Cooldown = 6*IN_MILLISECONDS;
                }
                GravityWellTimer = 15*IN_MILLISECONDS;
            } else GravityWellTimer -= diff;

            if (FireBombTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                {
                    DoCast(pTarget, SPELL_FIREBOMB, false);
                    Cooldown = 2*IN_MILLISECONDS;
                }
                FireBombTimer = 2*IN_MILLISECONDS;
            } else FireBombTimer -=diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;

        bool bIsWaitingToAppear;
        bool bIsAchievementTimerRunning;
        bool bIsAppearSpellCastAllowed;
        bool bIsDissapearDelay;

        uint32 IsWaitingToAppearTimer;
        uint32 IceNovaTimer;
        uint32 FireBombTimer;
        uint32 GravityWellTimer;
        uint32 Cooldown;
        uint32 AchievementTimer;
        uint32 DissapearDelayTimer;

        uint8 Phase;
        uint8 AchievementProgress;
    };
};

class boss_magus_telestra_fire_clone : public CreatureScript
{
public:
    boss_magus_telestra_fire_clone() : CreatureScript("boss_magus_telestra_fire_clone") { }

    struct boss_magus_telestra_fire_cloneAI : public ScriptedAI
    {
        boss_magus_telestra_fire_cloneAI(Creature* c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            DoCast(me, SPELL_FIRE_MAGUS_VISUAL);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
            bIsFightDelay = true;
        }

        void Reset()
        {
            ScorchTimer = 9000;
            FireBlastTimer = 3000;
            OutOfCombatTimer = 5000;
            FightDelayTimer = 1300;
        }

        void UpdateAI(const uint32 diff)
        {
            if(bIsFightDelay)
            {
                if(FightDelayTimer <= diff && pInstance)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);

                    if(Creature *MagusTelestra  = Unit::GetCreature((*me), pInstance->GetData64(DATA_MAGUS_TELESTRA_EVENT)))
                    {
                        Unit *pTarget = CAST_AI(boss_magus_telestra::boss_magus_telestraAI,MagusTelestra->AI())->SelectARandomTarget();
                        AttackStart(pTarget);
                    }
                    bIsFightDelay = false;
                }
                else
                {
                    FightDelayTimer -=diff;
                    return;
                }
            }

            if(!UpdateVictim())
            {
                if(OutOfCombatTimer <= diff)
                    me->DisappearAndDie();
                else
                {   OutOfCombatTimer -= diff;
                    return;
                }
            }

            if(ScorchTimer <= diff)
            {
                DoCast(me->getVictim(),DUNGEON_MODE(SPELL_SCORCH,H_SPELL_SCORCH));
                ScorchTimer = urand(9500,11500);
            }
            else ScorchTimer -= diff;


            if(FireBlastTimer <= diff)
            {
                DoCast(me->getVictim(),DUNGEON_MODE(SPELL_FIREBLAST,H_SPELL_FIREBLAST));
                FireBlastTimer = urand(8000,9000);
            }
            else FireBlastTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit *who)
        {
            if(pInstance)
            {
                if(Creature *MagusTelestra  = Unit::GetCreature((*me), pInstance->GetData64(DATA_MAGUS_TELESTRA_EVENT)))
                    CAST_AI(boss_magus_telestra::boss_magus_telestraAI,MagusTelestra->AI())->bFireMagusDead = true;
            }
        }

    private:
        InstanceScript* pInstance;
        uint32 ScorchTimer;
        uint32 FireBlastTimer;
        uint32 OutOfCombatTimer;
        uint32 FightDelayTimer;
        bool   bIsFightDelay;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_magus_telestra_fire_cloneAI (pCreature);
    }
};

class boss_magus_telestra_arcane_clone : public CreatureScript
{
public:
    boss_magus_telestra_arcane_clone() : CreatureScript("boss_magus_telestra_arcane_clone") { }

    struct boss_magus_telestra_arcane_cloneAI : public ScriptedAI
    {
        boss_magus_telestra_arcane_cloneAI(Creature* c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            DoCast(me,SPELL_ARCANE_MAGUS_VISUAL);
            bIsFightDelay = true;
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            TimeStopTimer = urand(15000,16000);
            CritterTimer = urand(6000,8000);
            OutOfCombatTimer = 5000;
            FightDelayTimer = 1300;
        }

        void UpdateAI(const uint32 diff)
        {
            if(bIsFightDelay)
            {
                if(FightDelayTimer <= diff && pInstance)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    if(Creature *MagusTelestra  = Unit::GetCreature((*me), pInstance->GetData64(DATA_MAGUS_TELESTRA_EVENT)))
                    {
                        Unit *pTarget = CAST_AI(boss_magus_telestra::boss_magus_telestraAI,MagusTelestra->AI())->SelectARandomTarget();
                            AttackStart(pTarget);
                    }
                    bIsFightDelay = false;
                }
                else
                {
                    FightDelayTimer -=diff;
                    return;
                }
            }
            if(!UpdateVictim())
            {
                if(OutOfCombatTimer <= diff)
                    me->DisappearAndDie();
                else
                {   OutOfCombatTimer -= diff;
                    return;
                }
            }

            if(TimeStopTimer <= diff)
            {
                DoCast(me->getVictim(),SPELL_TIME_STOP);
                TimeStopTimer = urand(15000,16000);
            }
            else TimeStopTimer -= diff;


            if(CritterTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget,SPELL_CRITTER);
                CritterTimer = urand(10000,12000);
            }
            else CritterTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit *who)
        {
            if(pInstance)
            {
                if(Creature *MagusTelestra  = Unit::GetCreature((*me), pInstance->GetData64(DATA_MAGUS_TELESTRA_EVENT)))
                    CAST_AI(boss_magus_telestra::boss_magus_telestraAI,MagusTelestra->AI())->bArcaneMagusDead = true;
            }
        }

    private:
        InstanceScript* pInstance;
        uint32 TimeStopTimer;
        uint32 CritterTimer;
        uint32 OutOfCombatTimer;
        uint32 FightDelayTimer;
        bool bIsFightDelay;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_magus_telestra_arcane_cloneAI (pCreature);
    }
};

class boss_magus_telestra_frost_clone : public CreatureScript
{
public:
    boss_magus_telestra_frost_clone() : CreatureScript("boss_magus_telestra_frost_clone") { }

    struct boss_magus_telestra_frost_cloneAI : public ScriptedAI
    {
        boss_magus_telestra_frost_cloneAI(Creature* c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            DoCast(me,SPELL_FROST_MAGUS_VISUAL);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
            bIsFightDelay = true;
        }

        void Reset()
        {
            BlizzardTimer = 9000;
            IceBarbTimer = 3000;
            OutOfCombatTimer = 5000;
            FightDelayTimer = 1300;
        }

        void UpdateAI(const uint32 diff)
        {
            if(bIsFightDelay)
            {
                if(FightDelayTimer <= diff && pInstance)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    if(Creature *MagusTelestra  = Unit::GetCreature((*me), pInstance->GetData64(DATA_MAGUS_TELESTRA_EVENT)))
                    {
                        Unit *pTarget = CAST_AI(boss_magus_telestra::boss_magus_telestraAI,MagusTelestra->AI())->SelectARandomTarget();
                        AttackStart(pTarget);
                    }
                    bIsFightDelay = false;
                }
                else
                {
                    FightDelayTimer -=diff;
                    return;
                }
            }

            if(!UpdateVictim())
            {
                if(OutOfCombatTimer <= diff)
                    me->DisappearAndDie();
                else
                {   OutOfCombatTimer -= diff;
                    return;
                }
            }

            if(BlizzardTimer <= diff)
            {
                DoCast(me->getVictim(),DUNGEON_MODE(SPELL_BLIZZARD,H_SPELL_BLIZZARD));
                BlizzardTimer = urand(15000,16000);
            }
            else BlizzardTimer -= diff;


            if(IceBarbTimer <= diff)
            {
                DoCast(me->getVictim(),DUNGEON_MODE(SPELL_ICE_BARB,H_SPELL_ICE_BARB));
                IceBarbTimer = urand(8000,9000);
            }
            else IceBarbTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit *who)
        {
            if(pInstance)
            {
                if(Creature *MagusTelestra  = Unit::GetCreature((*me), pInstance->GetData64(DATA_MAGUS_TELESTRA_EVENT)))
                    CAST_AI(boss_magus_telestra::boss_magus_telestraAI,MagusTelestra->AI())->bFrostMagusDead = true;
            }
        }

    private:
        InstanceScript* pInstance;
        uint32 BlizzardTimer;
        uint32 IceBarbTimer;
        uint32 OutOfCombatTimer;
        uint32 FightDelayTimer;
        bool   bIsFightDelay;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_magus_telestra_frost_cloneAI (pCreature);
    }
};

class spell_nexus_critter_targeting : public SpellScriptLoader
{
public:
    spell_nexus_critter_targeting() : SpellScriptLoader("spell_nexus_critter_targeting") { }

    class spell_nexus_critter_targeting_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_nexus_critter_targeting_SpellScript);

        void FilterTargetsInitial(std::list<Unit*>& unitList)
        {
            sharedUnitList = unitList;
        }

        void FilterTargetsSubsequent(std::list<Unit*>& unitList)
        {
            unitList = sharedUnitList;
        }

        void Register()
        {
            OnUnitTargetSelect += SpellUnitTargetFn(spell_nexus_critter_targeting_SpellScript::FilterTargetsInitial, EFFECT_0, TARGET_UNIT_AREA_ENEMY_SRC);
            OnUnitTargetSelect += SpellUnitTargetFn(spell_nexus_critter_targeting_SpellScript::FilterTargetsSubsequent, EFFECT_1, TARGET_UNIT_AREA_ENEMY_SRC);
            OnUnitTargetSelect += SpellUnitTargetFn(spell_nexus_critter_targeting_SpellScript::FilterTargetsSubsequent, EFFECT_2, TARGET_UNIT_AREA_ENEMY_SRC);
        }

        std::list<Unit*> sharedUnitList;
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_nexus_critter_targeting_SpellScript();
    }
};

void AddSC_boss_magus_telestra()
{
    new boss_magus_telestra();
    new boss_magus_telestra_fire_clone();
    new boss_magus_telestra_arcane_clone();
    new boss_magus_telestra_frost_clone();
    new spell_nexus_critter_targeting();
}