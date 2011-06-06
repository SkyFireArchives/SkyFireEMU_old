/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
/* Public version by Kuidin Sergey (Ghost)*/
/* ScriptData
SDName: boss_grand_champions
SD%Complete: 50 %
SDComment: Is missing the ai to make the npcs look for a new mount and use it.
SDCategory: Trial Of the Champion
EndScriptData */

#include "ScriptPCH.h"
#include "ScriptedEscortAI.h"
#include "Vehicle.h"
#include "trial_of_the_champion.h"

enum eSpells
{
    //Vehicle

    SPELL_SHIELD_BREAKER            = 64686, //62575,
    SPELL_DEFEND                    = 62552,
    SPELL_CHARGE                    = 63010,

    // Marshal Jacob Alerius && Mokra the Skullcrusher || Warrior
    SPELL_MORTAL_STRIKE             = 68783,
    SPELL_MORTAL_STRIKE_H           = 68784,
    SPELL_BLADESTORM                = 63784,
    SPELL_INTERCEPT                 = 67540,
    SPELL_ROLLING_THROW             = 67546, //47115, //not implemented in the AI yet...

    // Ambrose Boltspark && Eressea Dawnsinger || Mage
    SPELL_FIREBALL                  = 66042,
    SPELL_FIREBALL_H                = 68310,
    SPELL_BLAST_WAVE                = 66044,
    SPELL_BLAST_WAVE_H              = 68312,
    SPELL_HASTE                     = 66045,
    SPELL_POLYMORPH                 = 66043,
    SPELL_POLYMORPH_H               = 68311,

    // Colosos && Runok Wildmane || Shaman
    SPELL_CHAIN_LIGHTNING           = 67529,
    SPELL_CHAIN_LIGHTNING_H         = 68319,
    SPELL_EARTH_SHIELD              = 67530,
    SPELL_HEALING_WAVE              = 67528,
    SPELL_HEALING_WAVE_H            = 68318,
    SPELL_HEX_OF_MENDING            = 67534,

    // Jaelyne Evensong && Zul'tore || Hunter
    SPELL_DISENGAGE                 = 68340, //not implemented in the AI yet...
    SPELL_LIGHTNING_ARROWS          = 66083,
    SPELL_MULTI_SHOT                = 49047,
    SPELL_SHOOT                     = 65868,
    SPELL_SHOOT_H                   = 67988,

    // Lana Stouthammer Evensong && Deathstalker Visceri || Rouge
    SPELL_EVISCERATE                = 67709,
    SPELL_EVISCERATE_H              = 68317,
    SPELL_FAN_OF_KNIVES             = 67706,
    SPELL_POISON_BOTTLE             = 67701
};
enum eEnums
{
    SAY_START_1                      = -1999939,
    SAY_START_2                      = -1999937
};

enum eSeat
{
    SEAT_ID_0                       = 0
};

enum KillCredits
{
    CREDIT_FACTION_CHAMPIONS    = 68572,
    CREDIT_EADRIC               = 68575,
    CREDIT_BLONDLOCKE           = 68574,
    KILL_CREDIT                 = 68663,

};

void AggroAllPlayers(Creature* pTemp)
{
    Map::PlayerList const &PlList = pTemp->GetMap()->GetPlayers();

    if(PlList.isEmpty())
            return;

    for (Map::PlayerList::const_iterator i = PlList.begin(); i != PlList.end(); ++i)
    {
        if(Player* pPlayer = i->getSource())
        {
            if(pPlayer->isGameMaster())
                continue;

            if(pPlayer->isAlive())
            {
                pTemp->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
                pTemp->SetReactState(REACT_AGGRESSIVE);
                pTemp->SetInCombatWith(pPlayer);
                pPlayer->SetInCombatWith(pTemp);
                pTemp->AddThreat(pPlayer, 0.0f);
            }
        }
    }
}

bool GrandChampionsOutVehicle(Creature* me)
{
    InstanceScript* pInstance = me->GetInstanceScript();

    if (!pInstance)
        return false;

    Creature* pGrandChampion1 = Unit::GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_1));
    Creature* pGrandChampion2 = Unit::GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_2));
    Creature* pGrandChampion3 = Unit::GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_3));

    if (pGrandChampion1 && pGrandChampion2 && pGrandChampion3)
    {
        if (!pGrandChampion1->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT) &&
            !pGrandChampion2->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT) &&
            !pGrandChampion3->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT))
            return true;
    }
    return false;
}

class generic_vehicleAI_toc5 : public CreatureScript
{
public:
    generic_vehicleAI_toc5() : CreatureScript("generic_vehicleAI_toc5") { }

    struct generic_vehicleAI_toc5AI : public npc_escortAI
    {
        generic_vehicleAI_toc5AI(Creature* creature) : npc_escortAI(creature)
        {
            SetDespawnAtEnd(false);
            WaypointPath = 0;
            pInstance = (InstanceScript*)creature->GetInstanceScript();

            for (uint8 i = 0; i < 3; ++i)
                DoCast(me, SPELL_DEFEND,true);
        }

        void Reset()
        {
            BuffTimer = urand(30000,60000);
            MoveTimer = 5000;
            SpellTimer = 5000;
            me->setFaction(16);
        }

        void SetData(uint32 type, uint32 data)
        {
            switch(type)
            {
                case 1:
                    AddWaypoint(0,746.45f,647.03f,411.57f);
                    AddWaypoint(1,771.434f, 642.606f, 411.9f);
                    AddWaypoint(2,779.807f, 617.535f, 411.716f);
                    AddWaypoint(3,771.098f, 594.635f, 411.625f);
    				AddWaypoint(4,746.887f, 583.425f, 411.668f);
    				AddWaypoint(5,715.176f, 583.782f, 412.394f);
    				AddWaypoint(6,720.719f, 591.141f, 411.737f);
                    WaypointPath = 1;
                    break;
                case 2:
                    AddWaypoint(0,746.45f,647.03f,411.57f);
                    AddWaypoint(1,771.434f, 642.606f, 411.9f);
                    AddWaypoint(2,779.807f, 617.535f, 411.716f);
                    AddWaypoint(3,771.098f, 594.635f, 411.625f);
    				AddWaypoint(4,746.887f, 583.425f, 411.668f);
    				AddWaypoint(5,746.16f, 571.678f, 412.389f);
    				AddWaypoint(6,746.887f, 583.425f, 411.668f);
                    WaypointPath = 2;
                    break;
                case 3:
                    AddWaypoint(0,746.45f,647.03f,411.57f);
                    AddWaypoint(1,771.434f, 642.606f, 411.9f);
                    AddWaypoint(2,779.807f, 617.535f, 411.716f);
                    AddWaypoint(3,771.098f, 594.635f, 411.625f);
    				AddWaypoint(4,777.759f, 584.577f, 412.393f);
    				AddWaypoint(5,772.48f, 592.99f, 411.68f);
                    WaypointPath = 3;
                    break;
            }

            if (type <= 3)
                Start(false,true,0,NULL);
        }

        void WaypointReached(uint32 i)
        {
            switch(i)
            {
            case 2:
                if (pInstance && WaypointPath == 3 || WaypointPath == 2)
                    pInstance->SetData(DATA_MOVEMENT_DONE, pInstance->GetData(DATA_MOVEMENT_DONE)+1);
                break;
            case 3:
                if (pInstance)
                    pInstance->SetData(DATA_MOVEMENT_DONE, pInstance->GetData(DATA_MOVEMENT_DONE)+1);
                break;
            }
        }

        void EnterCombat(Unit* who)
        {
            DoZoneInCombat();

            for (uint8 i = 0; i < 3; ++i)
                DoCast(me, SPELL_DEFEND,true);
        }

        void UpdateAI(const uint32 diff)
        {
            npc_escortAI::UpdateAI(diff);

            if (!UpdateVictim())
                return;

            if (BuffTimer <= diff)
            {
                DoCast(me, SPELL_DEFEND,true);
                BuffTimer = urand(8000,15000);
            }else BuffTimer -= diff;

            if (SpellTimer <=diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM,0))
                if (target && me->IsInRange(target,5,40,false))
			    {
				    switch (urand(0,7))
                    {
                    case 0: 
                    case 1: 
                    case 2: 
                        DoCast(target, SPELL_SHIELD_BREAKER, true);
                        break;
                    case 3: 
                    case 4: 
                    case 5: 
                        DoCast(target, SPELL_CHARGE, true);
                        DoResetThreat();
                        me->AddThreat(target, 30.0f);
                        break;
                    }
			    }
                SpellTimer= urand(1000,3000);
            } else SpellTimer -= diff;
		
            if (MoveTimer <= diff)
            {
			    x =urand(0,7);
			    y =urand(0,7);
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM,0))
			    switch (urand(0,3))
                {
					case 0: 
                        me->GetMotionMaster()->MovePoint(0, (target->GetPositionX()+x), (target->GetPositionY()+y), target->GetPositionZ());
                        break;
					case 1: 
                        me->GetMotionMaster()->MovePoint(0, (target->GetPositionX()-x), (target->GetPositionY()+y), target->GetPositionZ());
                        break;
					case 2: 
                        me->GetMotionMaster()->MovePoint(0, (target->GetPositionX()+x), (target->GetPositionY()-y), target->GetPositionZ());
                        break;
					case 3: 
                        me->GetMotionMaster()->MovePoint(0, (target->GetPositionX()-x), (target->GetPositionY()-y), target->GetPositionZ());
                        break;
				}
                MoveTimer = urand(2000,4000);
            } else MoveTimer -= diff;
     
            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        uint32 ShieldBreakerTimer;
        uint32 BuffTimer;
        uint32 ChargeTimer;
        uint32 MoveTimer;
        uint32 SpellTimer;
        uint32 WaypointPath;
        int8 x,y;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new generic_vehicleAI_toc5AI(creature);
    }
};

// Marshal Jacob Alerius && Mokra the Skullcrusher || Warrior
class boss_warrior_toc5 : public CreatureScript
{
public:
    boss_warrior_toc5() : CreatureScript("boss_warrior_toc5") { }
	
    struct boss_warrior_toc5AI : public ScriptedAI
    {
        boss_warrior_toc5AI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();

            bDone = false;
            bHome = false;

            Phase = 0;
            PhaseTimer = 0;
            
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
        }

        void Reset()
        {
            BladeStormTimer = urand(15000,20000);
            InterceptTimer  = 7000;
            MortalStrikeTimer = urand(8000,12000);
            RollingThrowTime = 12000;
            me->setFaction(16);

            if (Creature* temp1 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_1)))
                if (!temp1->isAlive())
                {
                    temp1->Respawn();
                    temp1->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                }
            if (Creature* temp2 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_2)))
                if (!temp2->isAlive())
                {
                    temp2->Respawn();
                    temp2->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                }
            if (Creature* temp3 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_3)))
                if (!temp3->isAlive())
                {
                    temp3->Respawn();
                    temp3->SetHomePosition(754.34f,660.70f,412.39f,4.79f);
                }
        }

        void JustRespawned()
        {
            me->GetMotionMaster()->MoveTargetedHome();
        }

        void EnterCombat(Unit* who)
        {
            DoZoneInCombat();
        }

        void JustReachedHome()
        {
            ScriptedAI::JustReachedHome();

            if (!bHome)
                return;

            PhaseTimer = 15000;
            Phase = 1;

            bHome = false;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!bDone && GrandChampionsOutVehicle(me))
            {
                bDone = true;

                if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_1))
                    me->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_2))
                    me->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_3))
                    me->SetHomePosition(754.34f,660.70f,412.39f,4.79f);

                EnterEvadeMode();
                bHome = true;
            }

            if (PhaseTimer <= diff)
            {
                if (Phase == 1)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetStandState(UNIT_STAND_STATE_STAND);
                    Phase = 0;
                }
            }else PhaseTimer -= diff;

            if (!UpdateVictim() || me->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT))
                return;

            if (InterceptTimer <= diff)
            {
                Map::PlayerList const& players = me->GetMap()->GetPlayers();
                if (me->GetMap()->IsDungeon() && !players.isEmpty())
                {
                    for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                    {
                        Player* pPlayer = itr->getSource();
                        if (pPlayer && !pPlayer->isGameMaster() && me->IsInRange(pPlayer,8.0f,25.0f,false))
                        {
                            DoResetThreat();
                            me->AddThreat(pPlayer,5.0f);
                            DoCast(pPlayer,SPELL_INTERCEPT);
                            break;
                        }
                    }
                }
                InterceptTimer = 25000;
            } else InterceptTimer -= diff;

            if (RollingThrowTime <= diff)
            {
                if (Unit* target = me->getVictim())
                    target->CastSpell(target, SPELL_ROLLING_THROW, false);
                RollingThrowTime = urand(15000,25000);
            } else RollingThrowTime -= diff;

            if (BladeStormTimer <= diff)
            {
                DoCastVictim(SPELL_BLADESTORM);
                BladeStormTimer = urand(25000,35000);
            } else BladeStormTimer -= diff;

            if (MortalStrikeTimer <= diff)
            {
                DoCastVictim(SPELL_MORTAL_STRIKE);
                MortalStrikeTimer = urand(22000,26000);
            } else MortalStrikeTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* pKiller)
        {
            if (pInstance)
            {
                pInstance->SetData(BOSS_GRAND_CHAMPIONS, DONE);
                pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, 65195);
            }
        }

    private:
        InstanceScript* pInstance;
        uint8 Phase;
        uint32 PhaseTimer;
        uint32 BladeStormTimer;
        uint32 InterceptTimer;
        uint32 MortalStrikeTimer;
        uint32 AttackTimer;
    	uint32 ResetTimer;
        uint32 RollingThrowTime;

        bool bDone;
        bool bHome;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_warrior_toc5AI(creature);
    }
};

// Ambrose Boltspark && Eressea Dawnsinger || Mage
class boss_mage_toc5 : public CreatureScript
{
public:
    boss_mage_toc5() : CreatureScript("boss_mage_toc5") { }
	
    struct boss_mage_toc5AI : public ScriptedAI
    {

        boss_mage_toc5AI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();

            bDone = false;
            bHome = false;

            Phase = 0;
            PhaseTimer = 0;

            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
        }

        void Reset()
        {
            FireBallTimer = 5000;
            PolymorphTimer  = 8000;
            BlastWaveTimer = 12000;
            HasteTimer = 22000;
            me->setFaction(16);

            if (Creature* temp1 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_1)))
                if (!temp1->isAlive())
                {
                    temp1->Respawn();
                    temp1->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                }
            if (Creature* temp2 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_2)))
                if (!temp2->isAlive())
                {
                    temp2->Respawn();
                    temp2->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                }
            if (Creature* temp3 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_3)))
                if (!temp3->isAlive())
                {
                    temp3->Respawn();
                    temp3->SetHomePosition(754.34f,660.70f,412.39f,4.79f);
                }
        }

        void JustRespawned()
        {
            me->GetMotionMaster()->MoveTargetedHome();
        }

        void JustReachedHome()
        {
            ScriptedAI::JustReachedHome();

            if (!bHome)
                return;

            PhaseTimer = 15000;
            Phase = 1;

            bHome = false;
        }

        void EnterCombat(Unit* who)
        {
            DoZoneInCombat();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!bDone && GrandChampionsOutVehicle(me))
            {
                bDone = true;

                if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_1))
                    me->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_2))
                    me->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_3))
                    me->SetHomePosition(754.34f,660.70f,412.39f,4.79f);

                if (pInstance)
                    pInstance->SetData(BOSS_GRAND_CHAMPIONS, IN_PROGRESS);

                EnterEvadeMode();
                bHome = true;
            }

            if (PhaseTimer <= diff)
            {
                if (Phase == 1)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetStandState(UNIT_STAND_STATE_STAND);
                    Phase = 0;
                }
            } else PhaseTimer -= diff;

            if (!UpdateVictim() || me->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT))
                return;

            if (FireBallTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_FIREBALL);
                FireBallTimer = 5000;
            } else FireBallTimer -= diff;

            if (PolymorphTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_POLYMORPH);
                PolymorphTimer = 22000;
            } else PolymorphTimer -= diff;

            if (BlastWaveTimer <= diff)
            {
                DoCastAOE(SPELL_BLAST_WAVE, false);
                BlastWaveTimer = 20000;
            } else BlastWaveTimer -= diff;

            if (HasteTimer <= diff)
            {
                DoCast(me, SPELL_HASTE);
                HasteTimer = 40000;
            } else HasteTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* pKiller)
        {
            if (pInstance)
            {
                pInstance->SetData(BOSS_GRAND_CHAMPIONS, DONE);
                pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, CREDIT_FACTION_CHAMPIONS);
            }
        }

    private:
        InstanceScript* pInstance;
        uint8 Phase;
        uint32 PhaseTimer;
        uint32 FireBallTimer;
        uint32 BlastWaveTimer;
        uint32 HasteTimer;
        uint32 PolymorphTimer;
        bool bDone;
        bool bHome;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_mage_toc5AI(creature);
    }
};

// Colosos && Runok Wildmane || Shaman
class boss_shaman_toc5 : public CreatureScript
{
public:
    boss_shaman_toc5() : CreatureScript("boss_shaman_toc5") { }

    struct boss_shaman_toc5AI : public ScriptedAI
    {
        boss_shaman_toc5AI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();

            bDone = false;
            bHome = false;

            Phase = 0;
            PhaseTimer = 0;

            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
        }

        void Reset()
        {
            uiChainLightningTimer = 16000;
            uiHealingWaveTimer = 12000;
            uiEartShieldTimer = urand(30000,35000);
            uiHexMendingTimer = urand(20000,25000);
            me->setFaction(16);

            if (Creature* temp1 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_1)))
                if (!temp1->isAlive())
                {
                    temp1->Respawn();
                    temp1->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                }
            if (Creature* temp2 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_2)))
                if (!temp2->isAlive())
                {
                    temp2->Respawn();
                    temp2->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                }
            if (Creature* temp3 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_3)))
                if (!temp3->isAlive())
                {
                    temp3->Respawn();
                    temp3->SetHomePosition(754.34f,660.70f,412.39f,4.79f);
                }
        }

        void EnterCombat(Unit* who)
        {
            DoCast(me,SPELL_EARTH_SHIELD);
            DoCast(who,SPELL_HEX_OF_MENDING);

            DoZoneInCombat();
        }

        void JustRespawned()
        {
            me->GetMotionMaster()->MoveTargetedHome();
        }

        void JustReachedHome()
        {
            ScriptedAI::JustReachedHome();

            if (!bHome)
                return;

            PhaseTimer = 15000;
            Phase = 1;

            bHome = false;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!bDone && GrandChampionsOutVehicle(me))
            {
                bDone = true;

                if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_1))
                    me->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_2))
                    me->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_3))
                    me->SetHomePosition(754.34f,660.70f,412.39f,4.79f);

                if (pInstance)
                    pInstance->SetData(BOSS_GRAND_CHAMPIONS, IN_PROGRESS);

                EnterEvadeMode();
                bHome = true;
            }

            if (PhaseTimer <= diff)
            {
                if (Phase == 1)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetStandState(UNIT_STAND_STATE_STAND);
                    Phase = 0;
                }
            }else PhaseTimer -= diff;

            if (!UpdateVictim() || me->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT))
                return;

            if (uiChainLightningTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target,SPELL_CHAIN_LIGHTNING);

                uiChainLightningTimer = urand(10000,15000);
            } else uiChainLightningTimer -= diff;

            if (uiHealingWaveTimer <= diff)
            {
                switch(urand(0,2))
                {
                case 0:
                    if (Creature* temp1 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_1)))
                        if (temp1->isAlive())
                            DoCast(temp1, SPELL_HEALING_WAVE);
                    break;
                case 1:
                    if (Creature* temp2 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_2)))
                        if (temp2->isAlive())
                            DoCast(temp2, SPELL_HEALING_WAVE);
                    break;
                case 2:  
                    if (Creature* temp3 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_3)))
                        if (temp3->isAlive())
                            DoCast(temp3, SPELL_HEALING_WAVE);
                    break;
                }
                uiHealingWaveTimer = urand(5000,10000);
            } else uiHealingWaveTimer -= diff;

            if (uiEartShieldTimer <= diff)
            {
                switch(urand(0,2))
                {
                case 0:
                    if (Creature* temp1 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_1)))
                        if (temp1->isAlive())
                            DoCast(temp1, SPELL_EARTH_SHIELD);
                    break;
                case 1:
                    if (Creature* temp2 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_2)))
                        if (temp2->isAlive())
                            DoCast(temp2, SPELL_EARTH_SHIELD);
                    break;
                case 2:  
                    if (Creature* temp3 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_3)))
                        if (temp3->isAlive())
                            DoCast(temp3, SPELL_EARTH_SHIELD);
                    break;
                }
                uiEartShieldTimer = urand(10000,15000);
            } else uiEartShieldTimer -= diff;

            if (uiHexMendingTimer <= diff)
            {
                DoCastVictim(SPELL_HEX_OF_MENDING,true);

                uiHexMendingTimer = urand(30000,35000);
            } else uiHexMendingTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* pKiller)
        {
            if (pInstance)
            {
                pInstance->SetData(BOSS_GRAND_CHAMPIONS, DONE);
                pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, CREDIT_FACTION_CHAMPIONS);
            }
        }

    private:   
        InstanceScript* pInstance;
        uint8 Phase;
        uint32 PhaseTimer;
        uint32 uiChainLightningTimer;
        uint32 uiEartShieldTimer;
        uint32 uiHealingWaveTimer;
        uint32 uiHexMendingTimer;
        bool bDone;
        bool bHome;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_shaman_toc5AI(creature);
    }
};

// Jaelyne Evensong && Zul'tore || Hunter
class boss_hunter_toc5 : public CreatureScript
{
public:
    boss_hunter_toc5() : CreatureScript("boss_hunter_toc5") { }

    struct boss_hunter_toc5AI : public ScriptedAI
    {
        boss_hunter_toc5AI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();

            bDone = false;
            bHome = false;

            Phase = 0;
            PhaseTimer = 0;

            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
        }

        void Reset()
        {
            me->setFaction(16);
            ShootTimer = 12000;
            MultiShotTimer = 0;
            LightningArrowsTimer = 7000;
            DisengageCooldown = 10000;

            TargetGUID = 0;

            bShoot = false;

            if (Creature* temp1 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_1)))
                if (!temp1->isAlive())
                {
                    temp1->Respawn();
                    temp1->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                }
            if (Creature* temp2 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_2)))
                if (!temp2->isAlive())
                {
                    temp2->Respawn();
                    temp2->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                }
            if (Creature* temp3 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_3)))
                if (!temp3->isAlive())
                {
                    temp3->Respawn();
                    temp3->SetHomePosition(754.34f,660.70f,412.39f,4.79f);
                }
        }

        void JustRespawned()
        {
            me->GetMotionMaster()->MoveTargetedHome();
        }

        void JustReachedHome()
        {
            ScriptedAI::JustReachedHome();

            if (!bHome)
                return;

            PhaseTimer = 15000;
            Phase = 1;

            bHome = false;
        }

        void EnterCombat(Unit* who)
        {
            DoZoneInCombat();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!bDone && GrandChampionsOutVehicle(me))
            {
                bDone = true;

                if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_1))
                    me->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_2))
                    me->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_3))
                    me->SetHomePosition(754.34f,660.70f,412.39f,4.79f);

                if (pInstance)
                    pInstance->SetData(BOSS_GRAND_CHAMPIONS, IN_PROGRESS);

                EnterEvadeMode();
                bHome = true;
            }

            if (PhaseTimer <= diff)
            {
                if (Phase == 1)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetStandState(UNIT_STAND_STATE_STAND);
                    Phase = 0;
                }
            }else PhaseTimer -= diff;

            if (!UpdateVictim() || me->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT))
                return;

            if (DisengageCooldown <= diff)
            {
                if (me->IsWithinDistInMap(me->getVictim(), 5) && DisengageCooldown == 0)
                {
                    DoCast(me, SPELL_DISENGAGE);
                    DisengageCooldown = 35000;
                }
                DisengageCooldown = 20000;
            }else DisengageCooldown -= diff;

            if (LightningArrowsTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(target,SPELL_LIGHTNING_ARROWS);

                LightningArrowsTimer = 15000;

            } else LightningArrowsTimer -= diff;

            if (ShootTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_FARTHEST,0,30.0f))
                {
                    TargetGUID = target->GetGUID();
                    DoCast(target, SPELL_SHOOT);
                }
                ShootTimer = 2000;
                MultiShotTimer = 8000;
                bShoot = true;
            } else ShootTimer -= diff;

            if (bShoot && MultiShotTimer <= diff)
            {
                me->InterruptNonMeleeSpells(true);
                Unit* target = Unit::GetUnit(*me, TargetGUID);

                if (target && me->IsInRange(target,5.0f,30.0f,false))
                {
                    DoCast(target,SPELL_MULTI_SHOT);
                } 
                else
                {
                    Map::PlayerList const& players = me->GetMap()->GetPlayers();
                    if (me->GetMap()->IsDungeon() && !players.isEmpty())
                    {
                        for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                        {
                            Player* pPlayer = itr->getSource();
                            if (pPlayer && !pPlayer->isGameMaster() && me->IsInRange(pPlayer,5.0f,30.0f,false))
                            {
                                DoCast(target,SPELL_MULTI_SHOT);
                                break;
                            }
                        }
                    }
                }
                bShoot = false;
            } else MultiShotTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* pKiller)
        {
            if (pInstance)
            {
                pInstance->SetData(BOSS_GRAND_CHAMPIONS, DONE);
                pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, CREDIT_FACTION_CHAMPIONS);
            }
        }

    private:
        InstanceScript* pInstance;
        uint8 Phase;
        uint32 PhaseTimer;
        uint32 ShootTimer;
        uint32 DisengageCooldown;
        uint32 MultiShotTimer;
        uint32 LightningArrowsTimer;
        uint64 TargetGUID;
        bool bShoot;
        bool bDone;
        bool bHome;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_hunter_toc5AI(creature);
    }
};

// Lana Stouthammer Evensong && Deathstalker Visceri || Rouge
class boss_rouge_toc5 : public CreatureScript
{
public:
    boss_rouge_toc5() : CreatureScript("boss_rouge_toc5") { }

    struct boss_rouge_toc5AI : public ScriptedAI
    {
        boss_rouge_toc5AI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();

            bDone = false;
            bHome = false;

            Phase = 0;
            PhaseTimer = 0;

            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
        }

        void Reset()
        {
            uiEviscerateTimer = 8000;
            uiFanKivesTimer   = 14000;
            uiPosionBottleTimer = 10000;
            me->setFaction(16);

            if (Creature* temp1 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_1)))
                if (!temp1->isAlive())
                {
                    temp1->Respawn();
                    temp1->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                }
            if (Creature* temp2 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_2)))
                if (!temp2->isAlive())
                {
                    temp2->Respawn();
                    temp2->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                }
            if (Creature* temp3 = me->GetCreature(*me, pInstance->GetData64(DATA_GRAND_CHAMPION_3)))
                if (!temp3->isAlive())
                {
                    temp3->Respawn();
                    temp3->SetHomePosition(754.34f,660.70f,412.39f,4.79f);
                }
        }

        void JustReachedHome()
        {
            ScriptedAI::JustReachedHome();

            if (!bHome)
                return;

            PhaseTimer = 15000;
            Phase = 1;

            bHome = false;
        }

        void EnterCombat(Unit* who)
        {
            DoZoneInCombat();
        }

        void JustRespawned()
        {
            me->GetMotionMaster()->MoveTargetedHome();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!bDone && GrandChampionsOutVehicle(me))
            {
                bDone = true;

                if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_1))
                    me->SetHomePosition(739.678f,662.541f,412.393f,4.49f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_2))
                    me->SetHomePosition(746.71f,661.02f,411.69f,4.6f);
                else if (pInstance && me->GetGUID() == pInstance->GetData64(DATA_GRAND_CHAMPION_3))
                    me->SetHomePosition(754.34f,660.70f,412.39f,4.79f);

                if (pInstance)
                    pInstance->SetData(BOSS_GRAND_CHAMPIONS, IN_PROGRESS);

                EnterEvadeMode();
                bHome = true;
            }

            if (PhaseTimer <= diff)
            {
                if (Phase == 1)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetStandState(UNIT_STAND_STATE_STAND);
                    Phase = 0;
                }
            } else PhaseTimer -= diff;

            if (!UpdateVictim() || me->HasUnitMovementFlag(MOVEMENTFLAG_ONTRANSPORT))
                return;

            if (uiEviscerateTimer <= diff)
            {
                DoCast(me->getVictim(),SPELL_EVISCERATE);
                uiEviscerateTimer = 22000;
            } else uiEviscerateTimer -= diff;

            if (uiFanKivesTimer <= diff)
            {
                DoCastAOE(SPELL_FAN_OF_KNIVES,false);
                uiFanKivesTimer = 20000;
            } else uiFanKivesTimer -= diff;

            if (uiPosionBottleTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM,0))
                DoCast(target,SPELL_POISON_BOTTLE);
                uiPosionBottleTimer = 19000;
            } else uiPosionBottleTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* pKiller)
        {
            if (pInstance)
            {
                pInstance->SetData(BOSS_GRAND_CHAMPIONS, DONE);
                pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, CREDIT_FACTION_CHAMPIONS);
            }
        }

    private:
        InstanceScript* pInstance;
        uint8 Phase;
        uint32 PhaseTimer;
        uint32 uiEviscerateTimer;
        uint32 uiFanKivesTimer;
        uint32 uiPosionBottleTimer;
        bool bDone;
        bool bHome;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_rouge_toc5AI(creature);
    }
};

// Trash AI
class mob_trash_vehicle : public CreatureScript
{
public:
    mob_trash_vehicle() : CreatureScript("mob_trash_vehicle") { }

    struct mob_trash_vehicleAI : public ScriptedAI
    {
        mob_trash_vehicleAI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();

            for (uint8 i = 0; i < 2; ++i)
                DoCast(me, SPELL_DEFEND, true);
        }

        void Reset()
        {
            ShieldBreakerTimer = 8000;
            BuffTimer = urand(30000,60000);
            ChargeTimer = 10000;
            MoveTimer = 5000;
            SpellTimer = 4000;
            me->setFaction(16);
        }

        void EnterCombat(Unit* who)
        {
            for (uint8 i = 0; i < 2; ++i)
                DoCast(me, SPELL_DEFEND, true);

            DoZoneInCombat();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (BuffTimer <= diff)
            {
                DoCast(me, SPELL_DEFEND, true);
                BuffTimer = urand(8000,10000);
            }else BuffTimer -= diff;

            if (SpellTimer <=diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM,0))
                if (target && me->IsInRange(target,5,40,false))
			    {
				    switch (urand(0,7))
                    {
                        case 0: 
                        case 1: 
                        case 2: 
                            DoCast(target, SPELL_SHIELD_BREAKER, true);
                            break;
                        case 3: 
                        case 4: 
                        case 5: 
                            DoCast(target, SPELL_CHARGE, true);
                            DoResetThreat();
                            me->AddThreat(target, 30.0f);
                            break;
                    }
			    }
                SpellTimer= urand(1000,3000);
            } else SpellTimer -= diff;
		
            if (MoveTimer <= diff)
            {
			    x = urand(0,7);
			    y = urand(0,7);
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
			    switch (urand(0,3))
                {
					case 0: 
                        me->GetMotionMaster()->MovePoint(0, (target->GetPositionX()+x), (target->GetPositionY()+y), target->GetPositionZ());
                        break;
					case 1: 
                        me->GetMotionMaster()->MovePoint(0, (target->GetPositionX()-x), (target->GetPositionY()+y), target->GetPositionZ());
                        break;
					case 2: 
                        me->GetMotionMaster()->MovePoint(0, (target->GetPositionX()+x), (target->GetPositionY()-y), target->GetPositionZ());
                        break;
					case 3: 
                        me->GetMotionMaster()->MovePoint(0, (target->GetPositionX()-x), (target->GetPositionY()-y), target->GetPositionZ());
                        break;
				}
                MoveTimer = urand(2000,4000);
            } else MoveTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        uint32 ShieldBreakerTimer;
        uint32 BuffTimer;
        uint32 ChargeTimer;
        uint32 MoveTimer;
        uint32 SpellTimer;
        int8 x,y;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_trash_vehicleAI(creature);
    }
};

enum ArgentTournamentSpells
{
    SPELL_DEFEND_AURA = 62552,
};

// Shield-Breaker 62575
class spell_gen_shieldbreaker : public SpellScriptLoader
{
public:
    spell_gen_shieldbreaker() : SpellScriptLoader("spell_gen_shieldbreaker") { }

    class spell_gen_shieldbreaker_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_gen_shieldbreaker_SpellScript)

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            if (Unit * target = GetHitUnit())
                //target->RemoveAuraFromStack(SPELL_DEFEND_AURA);
                target->RemoveAuraFromStack(SPELL_DEFEND);
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_gen_shieldbreaker_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_gen_shieldbreaker_SpellScript();
    }
};

// Charge 63010
class spell_gen_atcharge : public SpellScriptLoader
{
public:
    spell_gen_atcharge() : SpellScriptLoader("spell_gen_atcharge") { }

    class spell_gen_atcharge_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_gen_atcharge_SpellScript)

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            if (Unit * target = GetHitUnit())
                target->RemoveAuraFromStack(SPELL_DEFEND);
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_gen_atcharge_SpellScript::HandleScript, EFFECT_2, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_gen_atcharge_SpellScript();
    }
};

// Shield-Breaker 68504
class spell_gen_npcshieldbreaker : public SpellScriptLoader
{
public:
    spell_gen_npcshieldbreaker() : SpellScriptLoader("spell_gen_npcshieldbreaker") { }

    class spell_gen_npcshieldbreaker_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_gen_npcshieldbreaker_SpellScript)

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            if (Unit * target = GetHitUnit())
                target->RemoveAuraFromStack(SPELL_DEFEND);
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_gen_npcshieldbreaker_SpellScript::HandleScript, EFFECT_1, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_gen_npcshieldbreaker_SpellScript();
    }
};

void AddSC_boss_grand_champions()
{
    new generic_vehicleAI_toc5();
    new boss_warrior_toc5();
    new boss_mage_toc5();
    new boss_shaman_toc5();
    new boss_hunter_toc5();
    new boss_rouge_toc5();
    new mob_trash_vehicle();
    new spell_gen_shieldbreaker();
    new spell_gen_atcharge();
    new spell_gen_npcshieldbreaker();
}
