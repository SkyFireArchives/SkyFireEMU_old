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

/* ScriptData
SDName: Boss_ZulJin
SD%Complete: 85%
SDComment:
EndScriptData */

#include "ScriptPCH.h"
#include "zulaman.h"

//Speech
const char* YELL_TRANSFORM_TO_LYNX = "Let me introduce to you my new bruddahs: fang and claw!";
#define SOUND_TRANSFORM_TO_LYNX 12094

const char* YELL_TRANSFORM_TO_BEAR = "Got me some new tricks...like me bruddah bear!";
#define SOUND_TRANSFORM_TO_BEAR 12092

const char* YELL_TRANSFORM_TO_DRAGONHAWK = "Ya don' have to look to da sky to see da dragonhawk!";
#define SOUND_TRANSFORM_TO_DRAGONHAWK 12095

const char* YELL_TRANSFORM_TO_EAGLE = "Dere be no hidin' from da eagle!";
#define SOUND_TRANSFORM_TO_EAGLE 12093

#define YELL_KILL_ONE "Da Amani de chuka!"
#define SOUND_KILL_ONE 12098

#define YELL_KILL_TWO "Lot more gonna fall like you!"
#define SOUND_KILL_TWO 12099

#define YELL_FIRE_BREATH "Fire kill you just as quick!"
#define SOUND_FIRE_BRETH 12096

#define YELL_AGGRO "Nobody badduh dan me!"
#define SOUND_AGGRO 12091

#define YELL_BERSERK "You too slow! Me too strong!"
#define SOUND_BERSERK 12097

#define YELL_DEATH "Mebbe me fall...but da Amani empire...never gonna die..."
#define SOUND_DEATH 12100

//Still not used, need more info
#define YELL_INTRO "Everybody always wanna take from us. Now we gonna start takin' back. Anybody who get in our way...gonna drown in their own blood! De Amani empire be back now...seekin' vengeance. And we gonna start...with you!"
#define SOUND_INTRO 12090

//coords for going for changing form
#define CENTER_X 120.148811f
#define CENTER_Y 703.713684f
#define CENTER_Z 45.111477f

//Spells:
enum Spells
{
    //====== Troll Form
    SPELL_WHIRLWIND                = 17207,
    SPELL_GRIEVOUS_THROW           = 43093,  // remove debuff after full healed
    //====== Bear Form
    SPELL_CREEPING_PARALYSIS       = 43095,   // should cast on the whole raid
    SPELL_OVERPOWER                = 43456,   // use after melee attack dodged
    //====== Eagle Form
    SPELL_ENERGY_STORM             = 43983,   // enemy area aura, trigger 42577
    SPELL_ZAP_INFORM               = 42577,
    SPELL_ZAP_DAMAGE               = 43137,   // 1250 damage
    SPELL_SUMMON_CYCLONE           = 43112,   // summon four feather vortex
    SPELL_CYCLONE_VISUAL           = 43119,   // trigger 43147 visual
    SPELL_CYCLONE_PASSIVE          = 43120,   // trigger 43121 (4y aoe) every second
    //Lynx Form
    SPELL_CLAW_RAGE_HASTE          = 42583,
    SPELL_CLAW_RAGE_TRIGGER        = 43149,
    SPELL_CLAW_RAGE_DAMAGE         = 43150,
    SPELL_LYNX_RUSH_HASTE          = 43152,
    SPELL_LYNX_RUSH_DAMAGE         = 43153,
    //Dragonhawk Form
    SPELL_FLAME_WHIRL              = 43213,  // trigger two spells
    SPELL_FLAME_BREATH             = 43215,
    SPELL_SUMMON_PILLAR            = 43216,   // summon 24187
    CREATURE_COLUMN_OF_FIRE        = 24187,
    SPELL_PILLAR_TRIGGER           = 43218,   // trigger 43217

    //cosmetic
    SPELL_SPIRIT_AURA              = 42466,
    SPELL_SIPHON_SOUL              = 43501,
    SPELL_BERSERK                  = 45078,

    //Transforms:
    SPELL_SHAPE_OF_THE_BEAR        = 42594,   // 15% dmg
    SPELL_SHAPE_OF_THE_EAGLE       = 42606,
    SPELL_SHAPE_OF_THE_LYNX        = 42607,   // haste melee 30%
    SPELL_SHAPE_OF_THE_DRAGONHAWK  = 42608,
};

enum Summons
{
    CREATURE_FEATHER_VORTEX        = 24136,
};

enum Phase
{
    PHASE_BEAR                      = 0,
    PHASE_EAGLE                     = 1,
    PHASE_LYNX                      = 2,
    PHASE_DRAGONHAWK                = 3,
    PHASE_TROLL                     = 4
};

struct SpiritInfoStruct
{
    uint32 entry;
    float x, y, z, orient;
};

static SpiritInfoStruct SpiritInfo[4] =
{
    {23878, 137.23f, 725.98f, 45.11f, 3.71f},
    {23880, 104.29f, 726.43f, 45.11f, 5.43f},
    {23877, 147.87f, 706.51f, 45.11f, 3.04f},
    {23879, 88.95f, 705.49f, 45.11f, 6.11f},
};

struct TransformStruct
{
    uint32 sound;
    std::string text;
    uint32 spell, unaura;
};

static TransformStruct Transform[4] =
{
    {SOUND_TRANSFORM_TO_BEAR, YELL_TRANSFORM_TO_BEAR, SPELL_SHAPE_OF_THE_BEAR, SPELL_WHIRLWIND},
    {SOUND_TRANSFORM_TO_EAGLE, YELL_TRANSFORM_TO_EAGLE, SPELL_SHAPE_OF_THE_EAGLE, SPELL_SHAPE_OF_THE_BEAR},
    {SOUND_TRANSFORM_TO_LYNX, YELL_TRANSFORM_TO_LYNX, SPELL_SHAPE_OF_THE_LYNX, SPELL_SHAPE_OF_THE_EAGLE},
    {SOUND_TRANSFORM_TO_DRAGONHAWK, YELL_TRANSFORM_TO_DRAGONHAWK, SPELL_SHAPE_OF_THE_DRAGONHAWK, SPELL_SHAPE_OF_THE_LYNX}
};

class boss_zuljin : public CreatureScript
{
public:
    boss_zuljin() : CreatureScript("boss_zuljin"){}

    struct boss_zuljinAI : public ScriptedAI
    {
        boss_zuljinAI(Creature *c) : ScriptedAI(c), Summons(me)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript *pInstance;

        uint64 SpiritGUID[4];
        uint64 ClawTargetGUID;
        uint64 TankGUID;

        uint32 Phase;
        uint32 health20;

        uint32 IntroTimer;
        uint32 BerserkTimer;

        uint32 WhirlwindTimer;
        uint32 GrievousThrowTimer;

        uint32 CreepingParalysisTimer;
        uint32 OverpowerTimer;

        uint32 ClawRageTimer;
        uint32 LynxRushTimer;
        uint32 ClawCounter;
        uint32 ClawLoopTimer;

        uint32 FlameWhirlTimer;
        uint32 FlameBreathTimer;
        uint32 PillarOfFireTimer;

        SummonList Summons;

        void Reset()
        {
            if (pInstance)
                pInstance->SetData(DATA_ZULJINEVENT, NOT_STARTED);

            Phase = 0;

            health20 = me->CountPctFromMaxHealth(20);

            IntroTimer = 37000;
            BerserkTimer = 600000;

            WhirlwindTimer = 7000;
            GrievousThrowTimer = 8000;

            CreepingParalysisTimer = 7000;
            OverpowerTimer = 0;

            ClawRageTimer = 5000;
            LynxRushTimer = 14000;
            ClawLoopTimer = 0;
            ClawCounter = 0;

            FlameWhirlTimer = 5000;
            FlameBreathTimer = 6000;
            PillarOfFireTimer = 7000;

            ClawTargetGUID = 0;
            TankGUID = 0;

            Summons.DespawnAll();

            for (uint32 i = 0; i < 30; ++i)
                DoCast(me, SPELL_BURNING_FURY);

            SpawnAdds();
        }

        void EnterCombat(Unit * /*who*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ZULJINEVENT, IN_PROGRESS);

            DoZoneInCombat();

            me->MonsterYell(YELL_INTRO,LANG_UNIVERSAL,NULL);
            DoPlaySoundToSet(me, SOUND_INTRO);
            EnterPhase(0);
        }

        void KilledUnit(Unit* /*victim*/)
        {
            if (IntroTimer)
                return;

            switch (urand(0,1))
            {
                case 0:
                    me->MonsterYell(YELL_KILL_ONE, LANG_UNIVERSAL, NULL);
                    DoPlaySoundToSet(me, SOUND_KILL_ONE);
                    break;
                case 1:
                    me->MonsterYell(YELL_KILL_TWO, LANG_UNIVERSAL, NULL);
                    DoPlaySoundToSet(me, SOUND_KILL_TWO);
                    break;
            }
        }

        void JustDied(Unit* /*Killer*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ZULJINEVENT, DONE);

            me->MonsterYell(YELL_DEATH, LANG_UNIVERSAL, NULL);
            DoPlaySoundToSet(me, SOUND_DEATH);
            Summons.DespawnEntry(CREATURE_COLUMN_OF_FIRE);

            if (Unit *Temp = Unit::GetUnit(*me, SpiritGUID[3]))
                Temp->SetUInt32Value(UNIT_FIELD_BYTES_1,UNIT_STAND_STATE_DEAD);
        }

        void AttackStart(Unit *who)
        {
            if (Phase == 2)
                AttackStartNoMove(who);
            else
                ScriptedAI::AttackStart(who);
        }

        void DoMeleeAttackIfReady()
        {
            if (!me->IsNonMeleeSpellCasted(false))
            {
                if (me->isAttackReady() && me->IsWithinMeleeRange(me->getVictim()))
                {
                    if (Phase == 1 && !OverpowerTimer)
                    {
                        uint32 health = me->getVictim()->GetHealth();
                        me->AttackerStateUpdate(me->getVictim());
                        if (me->getVictim() && health == me->getVictim()->GetHealth())
                        {
                            DoCast(me->getVictim(), SPELL_OVERPOWER, false);
                            OverpowerTimer = 5000;
                        }
                    } else me->AttackerStateUpdate(me->getVictim());
                    me->resetAttackTimer();
                }
            }
        }

        void SpawnAdds()
        {
            Creature *pCreature = NULL;
            for (uint8 i = 0; i < 4; ++i)
            {
                pCreature = me->SummonCreature(SpiritInfo[i].entry, SpiritInfo[i].x, SpiritInfo[i].y, SpiritInfo[i].z, SpiritInfo[i].orient, TEMPSUMMON_DEAD_DESPAWN, 0);
                if (pCreature)
                {
                    pCreature->CastSpell(pCreature, SPELL_SPIRIT_AURA, true);
                    pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    pCreature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    SpiritGUID[i] = pCreature->GetGUID();
                }
            }
        }

        void DespawnAdds()
        {
            for (uint8 i = 0; i < 4; ++i)
            {
                Unit* Temp = NULL;
                if (SpiritGUID[i])
                {
                    Temp = Unit::GetUnit(*me, SpiritGUID[i]);
                    if (Temp)
                    {
                        Temp->SetVisible(false);
                        Temp->setDeathState(DEAD);
                    }
                }
                SpiritGUID[i] = 0;
            }
        }

        void JustSummoned(Creature *summon)
        {
            Summons.Summon(summon);
        }

        void SummonedCreatureDespawn(Creature *summon)
        {
            Summons.Despawn(summon);
        }

        void EnterPhase(uint32 NextPhase)
        {
            switch(NextPhase)
            {
            case 0:
                break;
            case 1:
            case 2:
            case 3:
            case 4:
                DoTeleportTo(CENTER_X, CENTER_Y, CENTER_Z, 100);
                DoResetThreat();
                me->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID, 0);
                me->RemoveAurasDueToSpell(Transform[Phase].unaura);
                DoCast(me, Transform[Phase].spell);
                me->MonsterYell(Transform[Phase].text.c_str(), LANG_UNIVERSAL, NULL);
                DoPlaySoundToSet(me, Transform[Phase].sound);
                if (Phase > 0)
                {
                    if (Unit *Temp = Unit::GetUnit(*me, SpiritGUID[Phase - 1]))
                        Temp->SetUInt32Value(UNIT_FIELD_BYTES_1,UNIT_STAND_STATE_DEAD);
                }
                if (Unit *Temp = Unit::GetUnit(*me, SpiritGUID[NextPhase - 1]))
                    Temp->CastSpell(me, SPELL_SIPHON_SOUL, false); // should m cast on temp
                if (NextPhase == 2)
                {
                    me->GetMotionMaster()->Clear();
                    DoCast(me, SPELL_ENERGY_STORM, true); // enemy aura
                    for (uint8 i = 0; i < 4; ++i)
                    {
                        Creature* Vortex = DoSpawnCreature(CREATURE_FEATHER_VORTEX, 0, 0, 0, 0, TEMPSUMMON_CORPSE_DESPAWN, 0);
                        if (Vortex)
                        {
                            Vortex->CastSpell(Vortex, SPELL_CYCLONE_PASSIVE, true);
                            Vortex->CastSpell(Vortex, SPELL_CYCLONE_VISUAL, true);
                            Vortex->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                            Vortex->SetSpeed(MOVE_RUN, 1.0f);
                            Vortex->AI()->AttackStart(SelectTarget(SELECT_TARGET_RANDOM, 0));
                            DoZoneInCombat(Vortex);
                        }
                    }
                }
                else
                    me->AI()->AttackStart(me->getVictim());
                if (NextPhase == 3)
                {
                    me->RemoveAurasDueToSpell(SPELL_ENERGY_STORM);
                    Summons.DespawnEntry(CREATURE_FEATHER_VORTEX);
                    me->GetMotionMaster()->MoveChase(me->getVictim());
                }
                break;
            default:
                break;
            }
            Phase = NextPhase;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!TankGUID)
            {
                if (!UpdateVictim())
                    return;

                if (me->GetHealth() < health20 * (4 - Phase))
                    EnterPhase(Phase + 1);
            }

            if (BerserkTimer <= diff)
            {
                DoCast(me, SPELL_BERSERK, true);
                me->MonsterYell(YELL_BERSERK, LANG_UNIVERSAL, NULL);
                DoPlaySoundToSet(me, SOUND_BERSERK);
                BerserkTimer = 60000;
            } else BerserkTimer -= diff;

            switch (Phase)
            {
            case 0:
                if (IntroTimer)
                {
                    if (IntroTimer <= diff)
                    {
                        me->MonsterYell(YELL_AGGRO, LANG_UNIVERSAL, NULL);
                        DoPlaySoundToSet(me, SOUND_AGGRO);
                        IntroTimer = 0;
                    } else IntroTimer -= diff;
                }

                if (WhirlwindTimer <= diff)
                {
                    DoCast(me, SPELL_WHIRLWIND);
                    WhirlwindTimer = 15000 + rand()%5000;
                } else WhirlwindTimer -= diff;

                if (GrievousThrowTimer <= diff)
                {
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_GRIEVOUS_THROW, false);
                    GrievousThrowTimer = 10000;
                } else GrievousThrowTimer -= diff;
                break;

            case 1:
                if (CreepingParalysisTimer <= diff)
                {
                    DoCast(me, SPELL_CREEPING_PARALYSIS);
                    CreepingParalysisTimer = 20000;
                } else CreepingParalysisTimer -= diff;

                if (OverpowerTimer <= diff)
                {
                    // implemented in DoMeleeAttackIfReady()
                    OverpowerTimer = 0;
                } else OverpowerTimer -= diff;
                break;
            case 2:
                return;
            case 3:
                if (ClawRageTimer <= diff)
                {
                    if (!TankGUID)
                    {
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        {
                            TankGUID = me->getVictim()->GetGUID();
                            me->SetSpeed(MOVE_RUN, 5.0f);
                            AttackStart(pTarget); // change victim
                            ClawRageTimer = 0;
                            ClawLoopTimer = 500;
                            ClawCounter = 0;
                        }
                    }
                    else if (!ClawRageTimer) // do not do this when Lynx_Rush
                    {
                        if (ClawLoopTimer <= diff)
                        {
                            Unit *pTarget = me->getVictim();
                            if (!pTarget || !pTarget->isTargetableForAttack()) pTarget = Unit::GetUnit(*me, TankGUID);
                            if (!pTarget || !pTarget->isTargetableForAttack()) pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0);
                            if (pTarget)
                            {
                                AttackStart(pTarget);
                                if (me->IsWithinMeleeRange(pTarget))
                                {
                                    DoCast(pTarget, SPELL_CLAW_RAGE_DAMAGE, true);
                                    ++ClawCounter;
                                    if (ClawCounter == 12)
                                    {
                                        ClawRageTimer = 15000 + rand()%5000;
                                        me->SetSpeed(MOVE_RUN, 1.2f);
                                        AttackStart(Unit::GetUnit(*me, TankGUID));
                                        TankGUID = 0;
                                        return;
                                    }
                                    else ClawLoopTimer = 500;
                                }
                            }
                            else
                            {
                                EnterEvadeMode(); // if (pTarget)
                                return;
                            }
                        } else ClawLoopTimer -= diff;
                    } //if (TankGUID)
                } else ClawRageTimer -= diff;

                if (LynxRushTimer <= diff)
                {
                    if (!TankGUID)
                    {
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        {
                            TankGUID = me->getVictim()->GetGUID();
                            me->SetSpeed(MOVE_RUN, 5.0f);
                            AttackStart(pTarget); // change victim
                            LynxRushTimer = 0;
                            ClawCounter = 0;
                        }
                    }
                    else if (!LynxRushTimer)
                    {
                        Unit *pTarget = me->getVictim();
                        if (!pTarget || !pTarget->isTargetableForAttack())
                        {
                            pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0);
                            AttackStart(pTarget);
                        }
                        if (pTarget)
                        {
                            if (me->IsWithinMeleeRange(pTarget))
                            {
                                DoCast(pTarget, SPELL_LYNX_RUSH_DAMAGE, true);
                                ++ClawCounter;
                                if (ClawCounter == 9)
                                {
                                    LynxRushTimer = 15000 + rand()%5000;
                                    me->SetSpeed(MOVE_RUN, 1.2f);
                                    AttackStart(Unit::GetUnit(*me, TankGUID));
                                    TankGUID = 0;
                                }
                                else AttackStart(SelectTarget(SELECT_TARGET_RANDOM, 0));
                            }
                        }
                        else
                        {
                            EnterEvadeMode(); // if (pTarget)
                            return;
                        }
                    } //if (TankGUID)
                } else LynxRushTimer -= diff;

                break;
            case 4:
                if (FlameWhirlTimer <= diff)
                {
                    DoCast(me, SPELL_FLAME_WHIRL);
                    FlameWhirlTimer = 12000;
                }FlameWhirlTimer -= diff;

                if (PillarOfFireTimer <= diff)
                {
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        DoCast(pTarget, SPELL_SUMMON_PILLAR);
                    PillarOfFireTimer = 10000;
                } else PillarOfFireTimer -= diff;

                if (FlameBreathTimer <= diff)
                {
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->SetInFront(pTarget);
                    DoCast(me, SPELL_FLAME_BREATH);
                    FlameBreathTimer = 10000;
                } else FlameBreathTimer -= diff;
                break;
            default:
                break;
            }

            if (!TankGUID)
                DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_zuljinAI(creature);
    }
};

class mob_zuljin_vortex : public CreatureScript
{
public:
    mob_zuljin_vortex() : CreatureScript("mob_zuljin_vortex"){}

    struct mob_zuljin_vortexAI : public ScriptedAI
    {
        mob_zuljin_vortexAI(Creature *c) : ScriptedAI(c) 
        {
            for (uint32 i = 0; i < 30; ++i)
                DoCast(me, SPELL_BURNING_FURY);
        }

        void Reset() {}

        void EnterCombat(Unit * /*pTarget*/) {}

        void SpellHit(Unit *caster, const SpellEntry *spell)
        {
            if (spell->Id == SPELL_ZAP_INFORM)
                DoCast(caster, SPELL_ZAP_DAMAGE, true);
        }

        void UpdateAI(const uint32 /*diff*/)
        {
            //if the vortex reach the target, it change his target to another player
            if (me->IsWithinMeleeRange(me->getVictim()))
                AttackStart(SelectTarget(SELECT_TARGET_RANDOM, 0));
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_zuljin_vortexAI(creature);
    }
};

class spell_zuljin_grievous_throw : public SpellScriptLoader
{
public:
    spell_zuljin_grievous_throw() : SpellScriptLoader("spell_zuljin_grievous_throw") { } //70541


    class spell_zuljin_grievous_throw_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_zuljin_grievous_throw_AuraScript)

        void HandleTick(AuraEffect const*aurEff)
        {
            if (!GetTarget()->isAlive() || GetTarget()->GetHealthPct() == 100)
            {
                PreventDefaultAction();
                GetTarget()->RemoveAurasDueToSpell(aurEff->GetSpellProto()->Id);
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_zuljin_grievous_throw_AuraScript::HandleTick, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_zuljin_grievous_throw_AuraScript();
    }
};

void AddSC_boss_zuljin()
{
    new boss_zuljin();
    new mob_zuljin_vortex();
    new spell_zuljin_grievous_throw();
}

