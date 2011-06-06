/*
* Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
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
/* Public version by Kuidin Sergey (Ghost)*/
/* ScriptData
SDName: Boss Black Knight
SD%Complete: 80%
SDComment: missing yells. not sure about timers.
SDCategory: Trial of the Champion
EndScriptData */

#include "ScriptPCH.h"
#include "ScriptedEscortAI.h"
#include "trial_of_the_champion.h"

enum eEnums
{
    //Yell
    SAY_INTRO_1         =   -1649501,
    SAY_INTRO_2         =   -1649502,
    SAY_INTRO_3         =   -1649503,
    SAY_AGGRO           =   -1649504,
    SAY_GHOUL_ZOMBIE    =   -1649505,
    SAY_AGGRO_PHASE_2   =   -1649506,
    SAY_AGGRO_PHASE_3   =   -1649507,
    SAY_DEATH           =   -1649508,
    SAY_KILL_1          =   -1649509,
    SAY_KILL_2          =   -1649510,
    SAY_INTRO_TIRION    =   -1649523,
    SAY_INTRO_VARIAN    =   -1649543
};

enum eSpells
{
    //phase 1
    SPELL_PLAGUE_STRIKE     = 67724,
    SPELL_PLAGUE_STRIKE_2   = 67884,
    SPELL_ICY_TOUCH         = 67881,
    SPELL_ICY_TOUCH_H       = 67718,
    SPELL_DEATH_RESPITE     = 67745,
    SPELL_OBLITERATE        = 67883,
    SPELL_OBLITERATE_H      = 67725,

    //phase 2 - During this phase, the Black Knight will use the same abilities as in phase 1, except for Death's Respite
    SPELL_ARMY_DEAD         = 67761,
    SPELL_DESECRATION       = 67778,
    SPELL_GHOUL_EXPLODE     = 67751,

    //phase 3
    SPELL_DEATH_BITE_H      = 67875,
    SPELL_DEATH_BITE        = 67808,
    SPELL_MARKED_DEATH      = 67882,
    SPELL_MARKED_DEATH_2    = 67823,

    SPELL_BLACK_KNIGHT_RES  = 67693,

    SPELL_LEAP				= 67749,
    SPELL_LEAP_H			= 67880,
    SPELL_EXPLOSION         = 67729,
    SPELL_EXPLOSION_H       = 67886,
};

enum eModels
{
    MODEL_SKELETON          = 29846,
    MODEL_GHOST             = 21300
};

enum eEquip
{
    EQUIP_SWORD			    = 40343
};

enum ePhases
{
    PHASE_NULL              = 0,
    PHASE_INTRO             = 1,
    PHASE_UNDEAD            = 2,
    PHASE_SKELETON          = 3,
    PHASE_GHOST             = 4
};

enum Misc
{
    ACHIEV_WORSE            = 3804
};

enum DoAction
{
    ACTION_INTRO            = 1,
    ACTION_ACHIEV_FALSE     = 2,
    ACTION_GHOUL_EXPLODE    = 3,
};

enum Killkredits
{
    KREDIT_BLACK_KNIGHT      = 68663,
};

class boss_black_knight : public CreatureScript
{
public:
    boss_black_knight() : CreatureScript("boss_black_knight") { }

    struct boss_black_knightAI : public ScriptedAI
    {
        boss_black_knightAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
            bEventInBattle = false;
            me->setFaction(35);
            me->SetReactState(REACT_PASSIVE);
		    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
        }

        void Reset()
        {
            DespawnAdds();
            EventBattle();
            me->SetDisplayId(me->GetNativeDisplayId());
            me->ClearUnitState(UNIT_STAT_ROOT | UNIT_STAT_STUNNED);
           
            bEventInProgress = false;
            bSummonArmy = false;
            bDeathArmyDone = false;
            bExplosionHit = false;
            bCanCast = true;

            if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE1)))
                pInstance->HandleGameObject(pGO->GetGUID(),true);
            if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE1)))
                pInstance->HandleGameObject(pGO->GetGUID(),false);

            IcyTouchTimer = urand(10000,9000);
            PlagueStrikeTimer = urand(10000,13000);
            DeathRespiteTimer = urand(4000,5000);
            ObliterateTimer = 10000;
            DesecrationTimer = 4000;
            DeathArmyCheckTimer = 7000;
            ResurrectTimer = 4000;
            GhoulExplodeTimer = 8000;
            DeathBiteTimer = 2000;
            MarkedDeathTimer = urand (5000,7000);
            step = 0;
            phasetimer = -1;
            AnnouncerGUID = 0;
            TirionGUID = 0;
            KingVarianGUID = 0;
        }

        void EnterCombat(Unit* pWho)
        {
            DoScriptText(SAY_AGGRO, me);
            if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE1)))
                pInstance->HandleGameObject(pGO->GetGUID(),false);
            if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                pInstance->HandleGameObject(pGO->GetGUID(),false);	
            SetEquipmentSlots(false, EQUIP_SWORD, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
            bEventInBattle = true;
        }

        void KilledUnit(Unit *pWho)
        {
            if (pWho->GetTypeId() == TYPEID_PLAYER)
                DoScriptText(RAND(SAY_KILL_1,SAY_KILL_2), me);
        }

        void JustDied(Unit* pKiller)
        {
            DoScriptText(SAY_DEATH, me);

            // Prevent corpse despawning
            if (TempSummon* summ = me->ToTempSummon())
                summ->SetTempSummonType(TEMPSUMMON_DEAD_DESPAWN);
            
            if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE1)))
                pInstance->HandleGameObject(pGO->GetGUID(), true);

            DespawnAdds();

            if (pInstance)
            {
                pInstance->SetData(BOSS_BLACK_KNIGHT, DONE);
                pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, KREDIT_BLACK_KNIGHT);
                if (IsHeroic() && !bExplosionHit)
                    pInstance->DoCompleteAchievement(ACHIEV_WORSE);
            }
        }

        void DespawnAdds()
        {
            DespawnCreatures(NPC_RISEN_JAEREN, 250);
            DespawnCreatures(NPC_RISEN_ARELAS, 250);
            DespawnCreatures(NPC_ARMORY_OF_GHOUL, 250);
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
                return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn();
        }

        void JustSummoned(Creature* summon)
        {
            if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM))
                summon->AI()->AttackStart(pTarget);
        }

        void JumpToNextStep(uint32 uiTimer)
        {
            phasetimer = uiTimer;
            ++step;
        }

        void EventBattle()
        {
            if (bEventInBattle)
            {
                me->GetMotionMaster()->MovePoint(1,743.396f, 635.411f, 411.575f);
                me->setFaction(14);
                me->SetReactState(REACT_AGGRESSIVE);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                uiPhase = PHASE_UNDEAD;
            }
            else if (!bEventInBattle)
            {
                me->setFaction(35);
                me->SetReactState(REACT_PASSIVE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                uiPhase = PHASE_NULL;
            }
        }

        void AnnouncerSearch()
        {
            if (Unit* announcer = GetClosestCreatureWithEntry(me, NPC_JAEREN, 100.0f))
                AnnouncerGUID = announcer->GetGUID();
            else if (Unit* announcer = GetClosestCreatureWithEntry(me, NPC_ARELAS, 100.0f))
                AnnouncerGUID = announcer->GetGUID();
            if (Unit* tirion = GetClosestCreatureWithEntry(me, NPC_TIRION, 100.0f))
                TirionGUID = tirion->GetGUID();
            if (Unit* varian = GetClosestCreatureWithEntry(me, NPC_KING, 100.0f))
                KingVarianGUID = varian->GetGUID();
        }

        void DamageTaken(Unit* pDoneBy, uint32& uiDamage)
        {
            if (uiDamage >= me->GetHealth() && uiPhase != PHASE_GHOST)
            {
                uiDamage = 0;
                me->SetHealth(0);
                DoResetThreat();
                me->AddUnitState(UNIT_STAT_ROOT | UNIT_STAT_STUNNED);
                me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
                switch(uiPhase)
                {
                case PHASE_UNDEAD:
                    
                    if (Creature *pGhoul = Creature::GetCreature((*me), pInstance->GetData64(DATA_CHAMPION_GHOUL)))
                        pGhoul->AI()->DoAction(ACTION_GHOUL_EXPLODE);
                    me->SetDisplayId(MODEL_SKELETON);
                    me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
                    break;
                case PHASE_SKELETON:
                    me->SetDisplayId(MODEL_GHOST);
                    me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
                    SetEquipmentSlots(false, EQUIP_UNEQUIP, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
                    break;
                }
                bEventInProgress = true;
            }
        } 

        void DoAction(const int32 action)
        {
            switch(action)
            {
            case ACTION_INTRO:
                me->ExitVehicle();
                SetEquipmentSlots(false, EQUIP_SWORD, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
                uiPhase = PHASE_INTRO;
                JumpToNextStep(100);
                break;
            case ACTION_ACHIEV_FALSE:
                bExplosionHit = true;
                break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if(uiPhase == PHASE_INTRO)
            {
                if (phasetimer <= diff)
                {
                    switch (step)
                    {
                    case 1:
                        AnnouncerSearch();
                        JumpToNextStep(3000);
                        break;
                    case 2:
                        DoScriptText(SAY_INTRO_1, me);
                        JumpToNextStep(3000);
                        break;
                    case 3:
                        if (Creature* announcer = Unit::GetCreature(*me, AnnouncerGUID))
                            me->CastSpell(announcer, SPELL_DEATH_RESPITE, true);
                        JumpToNextStep(3000);
                        break;
                    case 4:
                        if (Creature* tirion = Unit::GetCreature(*me, TirionGUID))
                            DoScriptText(SAY_INTRO_TIRION, tirion);
                        if (Creature* announcer = Unit::GetCreature(*me, AnnouncerGUID))
                            announcer->Kill(announcer);
                        me->SetOrientation(4.714f);
                        JumpToNextStep(5000);
                        break;
                    case 5:
                        DoScriptText(SAY_INTRO_2, me);
                        JumpToNextStep(8000);
                        break;
                    case 6:
                        DoScriptText(SAY_INTRO_3, me);
                        JumpToNextStep(4000);
                        break;
                    case 7:
                        if (Creature* announcer = Unit::GetCreature(*me, AnnouncerGUID))
                        {
                            if (Creature* pGhoul = announcer->SummonCreature(NPC_RISEN_JAEREN,announcer->GetPositionX(),announcer->GetPositionY(),announcer->GetPositionZ(),announcer->GetOrientation()))					
                                pGhoul->AI()->DoZoneInCombat();
                            announcer->DisappearAndDie();
                        }
                        me->setFaction(14);
                        me->SetReactState(REACT_AGGRESSIVE);
                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                        uiPhase = PHASE_UNDEAD;
                        DoZoneInCombat();
                        JumpToNextStep(6000);
                        break;
                    case 8:
                        if (Creature* varian = Unit::GetCreature(*me, KingVarianGUID))
                            DoScriptText(SAY_INTRO_3, varian);
                        break;
                    default:
                        break;
                    }
                }
                else
                    phasetimer -= diff;
            }

            if (!UpdateVictim())
                return;

            if (bEventInProgress)
            {
                if (ResurrectTimer <= diff)
                {
                    switch(uiPhase)
                    {
                    case PHASE_UNDEAD:
                        DoScriptText(SAY_AGGRO_PHASE_2, me);
                        break;
                    case PHASE_SKELETON:
                        DoScriptText(SAY_AGGRO_PHASE_3, me);
                        break;
                    }
                    DoCast(me,SPELL_BLACK_KNIGHT_RES, true);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    me->SetHealth(me->GetMaxHealth());
                    me->AttackStop();
                    me->ClearUnitState(UNIT_STAT_ROOT | UNIT_STAT_STUNNED);
                    uiPhase++;
                    ResurrectTimer = 3000;
                    bEventInProgress = false;
                } else ResurrectTimer -= diff;
            }

            switch(uiPhase)
            {   
                case PHASE_UNDEAD:
                case PHASE_SKELETON:
                {
                    if(bCanCast)
                    {
                        if (PlagueStrikeTimer <= diff)
                        {
                            DoCastVictim(SPELL_PLAGUE_STRIKE);
                            PlagueStrikeTimer = urand(12000,15000);
                        } else PlagueStrikeTimer -= diff;

                        if (ObliterateTimer <= diff)
                        {
                            DoCastVictim(SPELL_OBLITERATE);
                            ObliterateTimer = urand(17000,19000);
                        } else ObliterateTimer -= diff;

                        if (IcyTouchTimer <= diff)
                        {
                            DoCastVictim(SPELL_ICY_TOUCH);
                            IcyTouchTimer = urand(5000,7000);
                        } else IcyTouchTimer -= diff;
                        break;
                    }
                }
            }

            switch(uiPhase)
            {
                case PHASE_UNDEAD:
                    if (DeathRespiteTimer <= diff)
                    {
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true))  
                            if (pTarget && pTarget->isAlive())
                                DoCast(pTarget,SPELL_DEATH_RESPITE);
                        DeathRespiteTimer = urand(10000,12000);
                    } else DeathRespiteTimer -= diff;
                    break;
                case PHASE_SKELETON:
                {
                    if (!bSummonArmy)
                    {
                        bSummonArmy = true;
                        bCanCast = false;
                        me->AddUnitState(UNIT_STAT_ROOT | UNIT_STAT_STUNNED);
                        me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
                        DoCast(me, SPELL_ARMY_DEAD);
                    }
                    if (!bDeathArmyDone)
                    {
                        if (DeathArmyCheckTimer <= diff)
                        {
                            me->ClearUnitState(UNIT_STAT_ROOT | UNIT_STAT_STUNNED);
                            me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
                            DeathArmyCheckTimer = 0;
                            bDeathArmyDone = true;
                            bCanCast = true;
                        } 
                        else DeathArmyCheckTimer -= diff;
                    }
                    
                    if(bCanCast)
                    {
                        if (GhoulExplodeTimer <= diff)
                        {
                            DoCast(me, SPELL_GHOUL_EXPLODE);
                            GhoulExplodeTimer = 8000;
                        } 
                        else GhoulExplodeTimer -= diff;

                        if (DesecrationTimer <= diff)
                        {
                            if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true))  
                                    DoCast(pTarget,SPELL_DEATH_RESPITE);
                            DesecrationTimer = urand(5000,10000);
                        } else DesecrationTimer -= diff;
                    }
                    break;
                }
                break;
                case PHASE_GHOST:
                {
                    if (DeathBiteTimer <= diff)
                    {
                        DoCastAOE(RAID_MODE(SPELL_DEATH_BITE, SPELL_DEATH_BITE_H));
                        DeathBiteTimer = 2000;
                    } 
                    else DeathBiteTimer -= diff;

                    if (MarkedDeathTimer <= diff)
                    {
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        {
                            if (pTarget && pTarget->isAlive())
                                DoCast(pTarget,RAID_MODE(SPELL_MARKED_DEATH, SPELL_MARKED_DEATH_2));
                        }   
                        MarkedDeathTimer = urand (5000, 7000);
                    } 
                    else MarkedDeathTimer -= diff;
                    break;
                }
            }   
            if (!me->HasUnitState(UNIT_STAT_ROOT) && !me->GetHealth()*100 / me->GetMaxHealth() <= 0)
                DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        bool bEventInProgress;
        bool bSummonArmy;
        bool bDeathArmyDone;
        bool bEventInBattle;
        bool bExplosionHit;
        bool bCanCast;
        uint8 uiPhase;
        uint64 AnnouncerGUID;
        uint64 TirionGUID;
        uint64 KingVarianGUID;
        uint32 PlagueStrikeTimer;
        uint32 IcyTouchTimer;
        uint32 DeathRespiteTimer;
        uint32 DesecrationTimer;
        uint32 ObliterateTimer;
        uint32 ResurrectTimer;
        uint32 DeathArmyCheckTimer;
        uint32 GhoulExplodeTimer;
        uint32 DeathBiteTimer;
        uint32 MarkedDeathTimer;
        uint32 phasetimer;
        uint32 step;
    };

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new boss_black_knightAI (pCreature);
    }
};

class npc_risen_ghoul : public CreatureScript
{
public:
    npc_risen_ghoul() : CreatureScript("npc_risen_ghoul") { }

    struct npc_risen_ghoulAI : public ScriptedAI
    {
        npc_risen_ghoulAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
        }

        void Reset()
        {
            AttackTimer = 3500;
            ExplosionTimer = 1000;

            Explosion = false;
        }

        void SpellHitTarget(Unit * pWho, const SpellEntry * pSpell)
        {
            if (pWho && pWho->GetTypeId() == TYPEID_PLAYER && pSpell->Id == SPELL_EXPLOSION_H)
                 if (Creature *blackknight = Creature::GetCreature((*me), pInstance->GetData64(DATA_BLACK_KNIGHT)))
                    blackknight->AI()->DoAction(ACTION_ACHIEV_FALSE);
        }

        void EnterCombat(Unit* pWho)
        {
            DoScriptText(SAY_GHOUL_ZOMBIE, me);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(!Explosion)
            {
                if (HealthBelowPct(50))
                {
                    Explosion = true;
                    ExplosionTimer = 1000;
                }
                if (AttackTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true))
                    {
                        if (pTarget && pTarget->isAlive())
                            DoCast(pTarget,SPELL_LEAP);
                    }
                    AttackTimer = 7000;
                } else AttackTimer -= diff;
            }
            else if(Explosion)
            {
                if (ExplosionTimer <= diff)
                {
                    DoCast(me, DUNGEON_MODE(SPELL_EXPLOSION,SPELL_EXPLOSION_H));
                    ExplosionTimer = 25000;
                } else ExplosionTimer -= diff;
            }

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        uint32 AttackTimer;
        uint32 ExplosionTimer;
        bool Explosion;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_risen_ghoulAI(pCreature);
    }
};

class npc_black_knight_skeletal_gryphon : public CreatureScript
{
public:
    npc_black_knight_skeletal_gryphon() : CreatureScript("npc_black_knight_skeletal_gryphon") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_black_knight_skeletal_gryphonAI(pCreature);
    }

    struct npc_black_knight_skeletal_gryphonAI : public npc_escortAI
    {
        npc_black_knight_skeletal_gryphonAI(Creature* pCreature) : npc_escortAI(pCreature)
        {
            Start(false,true,0,NULL);
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
        } 

        InstanceScript* pInstance;
		
        void WaypointReached(uint32 uiPointId)
        {
            switch(uiPointId)
            {
            case 1:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 2:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 3:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 4:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 5:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 6:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 7:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 8:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 9:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 10:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 11:
                me->SetSpeed(MOVE_FLIGHT, 2.0f);
                break;
            case 12:
                me->SetUnitMovementFlags(MOVEMENTFLAG_WALKING);
                me->SetSpeed(MOVE_RUN, 2.0f);
                break;
            case 13:
                if (Creature *blackknight = Creature::GetCreature((*me), pInstance->GetData64(DATA_BLACK_KNIGHT)))
                    blackknight->AI()->DoAction(ACTION_INTRO);
                me->SetUnitMovementFlags(MOVEMENTFLAG_WALKING);
                break;
            case 14:
                me->SetFlying(true);
                break;
            case 15:
                break;
            case 16:
                break;
            case 17:
                break;
            case 18:
                break;
            case 19:
                break;
            case 20:
                break;
            case 21:
                break;
            case 22:
                me->ForcedDespawn();
                break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            npc_escortAI::UpdateAI(diff);

            if (!UpdateVictim())
                return;
        }
    };
};

class npc_champion_ghoul : public CreatureScript
{
public:
    npc_champion_ghoul() : CreatureScript("npc_champion_ghoul") { }

    struct npc_champion_ghoulAI : public ScriptedAI
    {
        npc_champion_ghoulAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();
        }

        void Reset()
        {
            AttackTimer = 3500;
            ExplosionTimer = 1000;

            Explosion = false;
        }

        void SpellHitTarget(Unit * pWho, const SpellEntry * pSpell)
        {
            if (pWho && pWho->GetTypeId() == TYPEID_PLAYER && pSpell->Id == SPELL_EXPLOSION_H)
                 if (Creature *blackknight = Creature::GetCreature((*me), pInstance->GetData64(DATA_BLACK_KNIGHT)))
                    blackknight->AI()->DoAction(ACTION_ACHIEV_FALSE);
        }

        void DoAction(const int32 action)
        {
            switch(action)
            {
            case ACTION_GHOUL_EXPLODE:
                Explosion = true;
                ExplosionTimer = 1000;
                break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(!Explosion)
            {
                if (HealthBelowPct(50))
                {
                    Explosion = true;
                    ExplosionTimer = 1000;
                }
                if (AttackTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true))
                    {
                        if (pTarget && pTarget->isAlive())
                            DoCast(pTarget,SPELL_LEAP);
                    }
                    AttackTimer = 3500;
                } else AttackTimer -= diff;
            }
            else if(Explosion)
            {
                if (ExplosionTimer <= diff)
                {
                    DoCast(me, DUNGEON_MODE(SPELL_EXPLOSION,SPELL_EXPLOSION_H));
                    ExplosionTimer = 25000;
                } else ExplosionTimer -= diff;
            }
            else if(me->HasAura(67751))
            {
                if (ExplosionTimer <= diff)
                {
                    DoCast(me, DUNGEON_MODE(SPELL_EXPLOSION,SPELL_EXPLOSION_H));
                    ExplosionTimer = 25000;
                } else ExplosionTimer -= diff;
            }

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        uint32 AttackTimer;
        uint32 ExplosionTimer;
        bool Explosion;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_champion_ghoulAI(pCreature);
    }
};

void AddSC_boss_black_knight()
{
    new boss_black_knight();
    new npc_risen_ghoul();
    new npc_black_knight_skeletal_gryphon();
    new npc_champion_ghoul();
}

/*UPDATE `creature_template` SET `ScriptName`='npc_champion_ghoul' WHERE `entry`= 35590;*/