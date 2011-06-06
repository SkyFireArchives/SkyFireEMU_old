/* Copyright (C) 2011 Acheron-network <www.acheron-network.de>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "ScriptPCH.h"
#include "the_stone_core.h"

/*enum Yells
{
    // Todo
};*/

enum Spells
{
    SPELL_FORCE_GRIP                    = 79351,
    SPELL_FORCE_GRIP_DAMAGE             = 92664,
    SPELL_CURSE_OF_BLOOD                = 92663,
    
    SPELL_ENERGY_SHIELD                 = 92667,
    SPELL_SEISMIC_SHARD_CHANNEL         = 79002,
    SPELL_SEISMIC_SHARD_VISUAL          = 79009,
    SPELL_SEISMIC_SHARD_DAMAGE          = 79021,
    SPELL_SEISMIC_SHARD_SUMMON          = 86856,
    SPELL_SEISMIC_SHARD_SUMMON_CHANNEL  = 79015,
    SPELL_SEISMIC_SHARD_CHARGE          = 79014,
    SPELL_SEISMIC_SHARD_TARGETING       = 80511,

    SPELL_SUMMON_GRAVITY_WELL           = 79340,
    SPELL_GRAVITY_WELL_VISUAL_1         = 79245,
    SPELL_GRAVITY_WELL_VISUAL_2         = 79244,
    SPELL_GRAVITY_WELL_SMALL            = 92475,
};

enum Summons
{
    NPC_DEVOUT_FOLLOWER                 = 42428,
    NPC_SEISMIC_SHARD                   = 42355,
    NPC_GRAVITY_WELL                    = 42499,
};

enum Points
{
    POINT_PHASE_1                       = 1,
    POINT_PHASE_2                       = 2,
    POINT_TARGET                        = 3,
};

enum Phases
{
    PHASE_NONE                          = 0,
    PHASE_INTRO                         = 1,
    PHASE_FIGHT                         = 2,
    PHASE_FLIGHT                        = 3,
    PHASE_PRE_2                         = 4,
};

static const Position IntroPos = {1331.830811f, 986.819031f, 207.745010f};
static const Position Phase2   = {1338.187988f, 962.107117f, 216.000763f};

class boss_high_priestess_azil : public CreatureScript
{
public:
    boss_high_priestess_azil() : CreatureScript("boss_high_priestess_azil") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_high_priestess_azilAI(pCreature);
    }

    struct boss_high_priestess_azilAI : public ScriptedAI
    {
        boss_high_priestess_azilAI(Creature *pCreature) : ScriptedAI(pCreature),Summons(me)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;
        SummonList Summons;

        bool Shard;

        uint32 uiPhase;
        uint32 phasetimer;
        uint32 step;

        uint32 uiForceGripTimer;
        uint32 uiCurseOfBloodTimer;
        uint32 uiGravityWellTimer;
        uint32 uiForceGripDamageTimer;

        // Phase 2
        uint32 uiEnergyShieldTimer;
        uint32 uiMovePhase2Timer;
        uint32 uiSummonShardTimer;
        uint32 uiSummonDevoutTimer;
        uint32 uiMovePhase1Timer;

        void Reset()
        {
            uiPhase = PHASE_NONE;
            phasetimer = -1;
            step = 0;

            uiForceGripTimer = 15000;
            uiCurseOfBloodTimer = 14000;
            uiGravityWellTimer = 12000;
            uiEnergyShieldTimer = 50000;

            DespawnCreatures();

            Shard = false;

            me->SetSpeed(MOVE_FLIGHT, 2.0f);
            me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
            me->SetFlying(false);

            if (pInstance)
                pInstance->SetData(DATA_HIGH_PRIESTESS_AZIL_EVENT, NOT_STARTED);
        }

        void KilledUnit(Unit* /*Victim*/){}

        void JustDied(Unit* /*Killer*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_HIGH_PRIESTESS_AZIL_EVENT, DONE);

            DespawnCreatures();
        }
      
        void EnterCombat(Unit * /*who*/)
        {
            me->SetReactState(REACT_PASSIVE);
            me->GetMotionMaster()->Clear();
            uiPhase = PHASE_INTRO;
            JumpToNextStep(100);

            if (pInstance)
                pInstance->SetData(DATA_HIGH_PRIESTESS_AZIL_EVENT, IN_PROGRESS);
        }

        void JumpToNextStep(uint32 uiTimer)
        {
            phasetimer = uiTimer;
            ++step;
        }

        void DespawnCreatures()
        {
            DespawnCreatures(NPC_DEVOUT_FOLLOWER, 250);
            DespawnCreatures(NPC_SEISMIC_SHARD, 250);
            DespawnCreatures(NPC_GRAVITY_WELL, 250);
        }

        /*void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_FORCE_GRIP)
                target->CastSpell(target, SPELL_FORCE_GRIP_DAMAGE, true, NULL, NULL, me->GetGUID());
        }*/
            
        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (id)
            {
            case POINT_PHASE_1:
                uiPhase = PHASE_FIGHT;
                me->RemoveAllAuras();
                me->SetReactState(REACT_AGGRESSIVE);
                DoZoneInCombat();
                if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == POINT_MOTION_TYPE)
                    me->GetMotionMaster()->MovementExpired();
                DoStartMovement(me->getVictim());
                me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                me->SetFlying(false);
                break;
            case POINT_PHASE_2:
                uiPhase = PHASE_FLIGHT;
                DoCast(me, SPELL_SEISMIC_SHARD_CHANNEL);
                uiSummonShardTimer = 7000;
                uiSummonDevoutTimer = 2000;
                uiMovePhase1Timer = 20000;
                break;
            default:
                break;
            }
        }

        void JustSummoned(Creature *summon)
        {
            if(summon->GetEntry() == (NPC_SEISMIC_SHARD))
                return;
            if(summon->GetEntry() == (NPC_GRAVITY_WELL))
                return;

            summon->setFaction(16);
            summon->AI()->DoZoneInCombat();
            Summons.Summon(summon);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            switch(uiPhase)
            {
                case PHASE_FIGHT:
                    if (uiForceGripTimer <= diff)
                    {
                        DoCastVictim(SPELL_FORCE_GRIP);
                        uiForceGripTimer = urand(20000, 25000);
                        uiForceGripDamageTimer = 3000;
                    } else uiForceGripTimer -= diff;

                    if(me->HasAura(SPELL_FORCE_GRIP))
                    {
                        if (uiForceGripDamageTimer <= diff)
                        {
                            DoCastVictim(SPELL_FORCE_GRIP_DAMAGE);
                            uiForceGripDamageTimer = 1500;
                        } else uiForceGripDamageTimer -= diff;
                    }

                    if (uiCurseOfBloodTimer <= diff)
                    {
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                            DoCast(pTarget, SPELL_CURSE_OF_BLOOD);
                        uiCurseOfBloodTimer = urand(10000, 15000);
                    } else uiCurseOfBloodTimer -= diff;

                    if (uiGravityWellTimer <= diff)
                    {
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                            DoCast(pTarget, SPELL_SUMMON_GRAVITY_WELL);
                        uiGravityWellTimer = urand(12000, 13000);
                    } else uiGravityWellTimer -= diff;

                    if (uiEnergyShieldTimer <= diff)
                    {
                        me->GetMotionMaster()->MoveIdle();
                        DoCast(me, SPELL_ENERGY_SHIELD);
                        uiPhase = PHASE_FLIGHT;
                        uiEnergyShieldTimer = 60000;
                        uiMovePhase2Timer = 2000;
                    } else uiEnergyShieldTimer -= diff;
                    break;
                case PHASE_FLIGHT:
                    if (uiMovePhase2Timer <= diff)
                    {
                        me->SetSpeed(MOVE_FLIGHT, 4.0f);
                        me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                        me->SetFlying(true);
                        me->GetMotionMaster()->MovePoint(POINT_PHASE_2, Phase2);
                        uiMovePhase2Timer = 60000;
                    } else uiMovePhase2Timer -= diff;

                    if (uiSummonShardTimer <= diff)
                    {
                            DoCast(me, SPELL_SEISMIC_SHARD_SUMMON);
                        uiSummonShardTimer = 6000;
                    } else uiSummonShardTimer -= diff;

                    if (uiSummonDevoutTimer <= diff)
                    {
                        for (uint32 i = 0; i < 10; ++i)
                            me->SummonCreature(NPC_DEVOUT_FOLLOWER, 1292.120850f, 1039.014038f, 209.695190f, 4.714445f, TEMPSUMMON_DEAD_DESPAWN, 60000);
                        uiSummonDevoutTimer = 12000;
                    } else uiSummonDevoutTimer -= diff;

                    if (uiMovePhase1Timer <= diff)
                    {
                        me->CastStop();
                        uiPhase = PHASE_INTRO;
                        step = 0;
                        phasetimer = -1;
                        JumpToNextStep(1000);
                        uiEnergyShieldTimer = 40000;
                        uiMovePhase1Timer = 50000;
                    } else uiMovePhase1Timer -= diff;
                    break;
                default:
                    break;
            }

            if (uiPhase == PHASE_INTRO)
            {
                if (phasetimer <= diff)
                {
                    switch (step)
                    {
                    case 1:
                        me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                        me->SetFlying(true);
                        me->GetMotionMaster()->MoveIdle();
                        if(!me->HasAura(SPELL_ENERGY_SHIELD))
                            DoCast(me, SPELL_ENERGY_SHIELD);
                        JumpToNextStep(2000);
                        break;
                    case 2:
                        me->GetMotionMaster()->MovePoint(POINT_PHASE_1, IntroPos);
                        JumpToNextStep(1000);
                        break;
                    default:
                        break;
                    }
                }
                else
                    phasetimer -= diff;
            }
            DoMeleeAttackIfReady();
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_pCreatures;
            GetCreatureListWithEntryInGrid(m_pCreatures, me, entry, distance);
     
            if (m_pCreatures.empty())
            return;
     
            for(std::list<Creature*>::iterator iter = m_pCreatures.begin(); iter != m_pCreatures.end(); ++iter)
            (*iter)->DespawnOrUnsummon();
        }
    };
};

class npc_seismic_shard : public CreatureScript
{
public:
    npc_seismic_shard() : CreatureScript("npc_seismic_shard") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_seismic_shardAI(pCreature);
    }

    struct npc_seismic_shardAI : public ScriptedAI
    {
        npc_seismic_shardAI(Creature *pCreature) : ScriptedAI(pCreature){}

        void Reset()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
            me->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ()+20);
            me->SetFlying(true);
            me->SetSpeed(MOVE_FLIGHT, 4.0f);
            me->SetSpeed(MOVE_RUN, 4.0f);
            me->SetSpeed(MOVE_WALK, 4.0f);
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, SPELL_SEISMIC_SHARD_VISUAL);
            uiTargetTimer = urand(4000,6000);
            uiTargetGUID = 0;
        }

        uint32 uiSeismicShardDamageTimer;
        uint32 uiTargetTimer;
        uint64 uiTargetGUID;

        void UpdateAI(const uint32 diff)
        {
            if (uiTargetTimer <= diff)
            {
                DoZoneInCombat();
                if (Unit *ShardTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                {
                    uiTargetGUID = ShardTarget->GetGUID();
                    DoCast(ShardTarget, SPELL_SEISMIC_SHARD_TARGETING);
                }
                uiTargetTimer = 90000;
                uiSeismicShardDamageTimer = 3000;
            } else uiTargetTimer -= diff;

            if (uiSeismicShardDamageTimer <= diff)
            {
                if (Unit* ShardTarget = Unit::GetUnit(*me, uiTargetGUID))
                {
                    DoCast(ShardTarget, SPELL_SEISMIC_SHARD_CHARGE);
                    uiTargetGUID = 0;
                }
                uiSeismicShardDamageTimer = 30000;
            } else uiSeismicShardDamageTimer -= diff;
        }
    };
};

class npc_high_gravity_well : public CreatureScript
{
public:
    npc_high_gravity_well() : CreatureScript("npc_high_gravity_well") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_high_gravity_wellAI(pCreature);
    }

    struct npc_high_gravity_wellAI : public Scripted_NoMovementAI
    {
        npc_high_gravity_wellAI(Creature *pCreature) : Scripted_NoMovementAI(pCreature){}

        void Reset()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
            DoCast(me, SPELL_GRAVITY_WELL_VISUAL_1);
            uiGravityTimer = 3000;
            Gravity = false;
        }

        uint32 uiGravityTimer;
        bool Gravity;

        void MoveInLineOfSight(Unit *who)
        {
            if (!who)
                return;

            if(!me->HasAura(SPELL_GRAVITY_WELL_VISUAL_2))
                return;

            if (who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 5))
            {
                DoCast(me, SPELL_GRAVITY_WELL_SMALL);
                me->DealDamage(who, DUNGEON_MODE(5000,15000), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_SHADOW, NULL, false);
                return;
            }
            else
            if (who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 2))
            {
                DoCast(me, SPELL_GRAVITY_WELL_SMALL);
                me->DealDamage(who, DUNGEON_MODE(8000,30000), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_SHADOW, NULL, false);
                return;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (uiGravityTimer <= diff && !Gravity)
            {
                me->RemoveAurasDueToSpell(SPELL_GRAVITY_WELL_VISUAL_1);
                DoCast(me, SPELL_GRAVITY_WELL_VISUAL_2);
                Gravity = true;
            } else uiGravityTimer -= diff;
        }
    };
};

class npc_devout_follower : public CreatureScript
{
public:
    npc_devout_follower() : CreatureScript("npc_devout_follower") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_devout_followerAI(pCreature);
    }

    struct npc_devout_followerAI : public ScriptedAI
    {
        npc_devout_followerAI(Creature *pCreature) : ScriptedAI(pCreature){}

        void Reset()
        {
        }

        void MoveInLineOfSight(Unit* who)
        {
            ScriptedAI::MoveInLineOfSight(who);

            if (who->GetTypeId() != TYPEID_UNIT)
                return;

            if (who->GetEntry() == NPC_GRAVITY_WELL && who->GetDistance(me) < 5.0f)
                me->DealDamage(me, 3000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_high_priestess_azil()
{
    new boss_high_priestess_azil();
    new npc_seismic_shard();
    new npc_high_gravity_well();
    new npc_devout_follower();
}

