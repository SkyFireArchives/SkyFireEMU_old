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
SDName: Trial Of the Champion
SD%Complete:
SDComment:
SDCategory: trial_of_the_champion
EndScriptData */

/* ContentData
npc_announcer_toc5
EndContentData */

#include "ScriptPCH.h"
#include "trial_of_the_champion.h"
#include "Vehicle.h"

#define GOSSIP_START_EVENT1     "Ich bin bereit!"
#define GOSSIP_START_EVENT2     "Ich bin fuer die naechste Herausforderung bereit!"

#define ORIENTATION             4.714f

/*######
## npc_announcer_toc5
######*/

const Position SpawnPosition = {746.843f, 695.68f, 412.339f, 4.70776f};
	
enum eEnums
{
    SAY_START_BLACKKNIGHT   = -1649511,
    SAY_INTRO_1             = -1649513,
    SAY_INTRO_2             = -1649514,
    SAY_INTRO_3             = -1649515,
    SAY_INTRO_4             = -1649516,
    SAY_INTRO_5             = -1649517,
    SAY_INTRO_6             = -1649518,
    SAY_INTRO_7             = -1649519,
    SAY_INTRO_8             = -1649520,
    SAY_INTRO_9             = -1649500,
    SAY_INTRO_10            = -1649521,
    SAY_INTRO_11            = -1649512,
    SAY_SUMMON_PALETRESS_1  = -1649525, // Todo Tirion
    SAY_SUMMON_PALETRESS_2  = -1649526,
};

enum IntroPhase
{
    IDLE,
    INTRO,
    FINISHED
};	

class npc_announcer_toc5 : public CreatureScript
{
public:
    npc_announcer_toc5() : CreatureScript("npc_announcer_toc5") { }
	
    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
    {
        if (uiAction == GOSSIP_ACTION_INFO_DEF+1)
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            CAST_AI(npc_announcer_toc5AI, pCreature->AI())->StartEncounter();
        }
        return true;
    }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        InstanceScript* pInstance = (InstanceScript*)pCreature->GetInstanceScript(); 

        if (pInstance &&
            pInstance->GetData(BOSS_GRAND_CHAMPIONS) == DONE &&
            pInstance->GetData(BOSS_BLACK_KNIGHT) == DONE &&
            (pInstance->GetData(BOSS_ARGENT_CHALLENGE_E) == DONE ||
            pInstance->GetData(BOSS_ARGENT_CHALLENGE_P) == DONE))

            return false;

        if (pInstance &&
            pInstance->GetData(BOSS_GRAND_CHAMPIONS) == NOT_STARTED &&
            pInstance->GetData(BOSS_ARGENT_CHALLENGE_E) == NOT_STARTED &&
            pInstance->GetData(BOSS_ARGENT_CHALLENGE_P) == NOT_STARTED &&
            pInstance->GetData(BOSS_BLACK_KNIGHT) == NOT_STARTED)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_START_EVENT1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
        else if (pInstance)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_START_EVENT2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);

            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
            return true;
    }

    struct npc_announcer_toc5AI : public ScriptedAI
    {
        npc_announcer_toc5AI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = (InstanceScript*)pCreature->GetInstanceScript();

            SummonTimes = 0;
            Position = 0;
            LesserChampions = 0;

            FirstBoss = 0;
            SecondBoss = 0;
            ThirdBoss = 0;

            ArgentChampion = 0;

            Phase = 0;
            Timer = 0;

            Vehicle1GUID = 0;
            Vehicle2GUID = 0;
            Vehicle3GUID = 0;

            Champion1List.clear();
            Champion2List.clear();
            Champion3List.clear();
    	
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            SetGrandChampionsForEncounter();
            SetArgentChampion();
        }

        void NextStep(uint32 TimerStep,bool bNextStep = true,uint8 PhaseStep = 0)
        {
            Timer = TimerStep;
            if (bNextStep)
                ++Phase;
            else
                Phase = PhaseStep;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch (type)
            {
            case DATA_START:
                if (Creature *Tirion = Creature::GetCreature((*me), pInstance->GetData64(DATA_TIRION)))
                    DoScriptText(SAY_INTRO_2, Tirion);
                if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                    pInstance->HandleGameObject(pGO->GetGUID(), true);
                if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE1)))
                    pInstance->HandleGameObject(pGO->GetGUID(), false);		
                DoSummonGrandChampion(FirstBoss);
                NextStep(10000,false,1);
                break;
            case DATA_IN_POSITION: //movement done.	
                if (Creature *Tirion = Creature::GetCreature((*me), pInstance->GetData64(DATA_TIRION)))
                    DoScriptText(SAY_INTRO_6, Tirion);
                me->SetUnitMovementFlags(MOVEMENTFLAG_WALKING);			
                me->GetMotionMaster()->MovePoint(1,735.898f, 651.961f, 411.93f);
                if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                    pInstance->HandleGameObject(pGO->GetGUID(),false);
                NextStep(20000,false,3);
                break;
            case DATA_LESSER_CHAMPIONS_DEFEATED:
            {
                ++LesserChampions;
                std::list<uint64> TempList;
                if (LesserChampions == 3 || LesserChampions == 6)
                {
                    switch(LesserChampions)
                    {
                    case 3:
                        TempList = Champion2List;
                        break;
                    case 6:
                        TempList = Champion3List;
                        break;
                    }
                    for (std::list<uint64>::const_iterator itr = TempList.begin(); itr != TempList.end(); ++itr)
                    if (Creature* pSummon = Unit::GetCreature(*me, *itr))
                    AggroAllPlayers(pSummon);
                }
                else if (LesserChampions == 9)
                StartGrandChampionsAttack();
                break;
                }   
            }
        }   

        void StartGrandChampionsAttack()
        {
            Creature* pGrandChampion1 = Unit::GetCreature(*me, Vehicle1GUID);
            Creature* pGrandChampion2 = Unit::GetCreature(*me, Vehicle2GUID);
            Creature* pGrandChampion3 = Unit::GetCreature(*me, Vehicle3GUID);

            if (pGrandChampion1 && pGrandChampion2 && pGrandChampion3)
            {
                AggroAllPlayers(pGrandChampion1);
                AggroAllPlayers(pGrandChampion2);
                AggroAllPlayers(pGrandChampion3);
            }
        }

        void MovementInform(uint32 type, uint32 uiPointId)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            if (uiPointId == 1)
            {
                me->SetOrientation(ORIENTATION);
                me->SendMovementFlagUpdate();
            }
        }

        void DoSummonGrandChampion(uint32 uiBoss)
        {
            ++SummonTimes;
            uint32 VEHICLE_TO_SUMMON1 = 0;
            uint32 VEHICLE_TO_SUMMON2 = 0;
            switch(uiBoss)
            {
            case 0:
                VEHICLE_TO_SUMMON1 = VEHICLE_MOKRA_SKILLCRUSHER_MOUNT;
                VEHICLE_TO_SUMMON2 = VEHICLE_ORGRIMMAR_WOLF;
                break;
            case 1:
                VEHICLE_TO_SUMMON1 = VEHICLE_ERESSEA_DAWNSINGER_MOUNT;
                VEHICLE_TO_SUMMON2 = VEHICLE_SILVERMOON_HAWKSTRIDER;
                break;
            case 2:
                VEHICLE_TO_SUMMON1 = VEHICLE_RUNOK_WILDMANE_MOUNT;
                VEHICLE_TO_SUMMON2 = VEHICLE_THUNDER_BLUFF_KODO;
                break;
            case 3:
                VEHICLE_TO_SUMMON1 = VEHICLE_ZUL_TORE_MOUNT;
                VEHICLE_TO_SUMMON2 = VEHICLE_DARKSPEAR_RAPTOR;
                break;
            case 4:
                VEHICLE_TO_SUMMON1 = VEHICLE_DEATHSTALKER_VESCERI_MOUNT;
                VEHICLE_TO_SUMMON2 = VEHICLE_FORSAKE_WARHORSE;
                break;
            default:
                return;
            }

            if (Creature* pBoss = me->SummonCreature(VEHICLE_TO_SUMMON1,SpawnPosition))
            {
                switch(SummonTimes)
                {
                case 1:
                {
                    Vehicle1GUID = pBoss->GetGUID();
                    uint64 GrandChampionBoss1 = 0;
                    if (Creature* pBoss = Unit::GetCreature(*me, Vehicle1GUID))
                        if (Vehicle* pVehicle = pBoss->GetVehicleKit())
                            if (Unit* pUnit = pVehicle->GetPassenger(0))
                                GrandChampionBoss1 = pUnit->GetGUID();
                    if (pInstance)
                    {
                        pInstance->SetData64(DATA_GRAND_CHAMPION_VEHICLE_1,Vehicle1GUID);
                        pInstance->SetData64(DATA_GRAND_CHAMPION_1,GrandChampionBoss1);
                    }
                    pBoss->AI()->SetData(1,0);
                    break;
                }
                case 2:
                {
                    Vehicle2GUID = pBoss->GetGUID();
                    uint64 uiGrandChampionBoss2 = 0;
                    if (Creature* pBoss = Unit::GetCreature(*me, Vehicle2GUID))
                        if (Vehicle* pVehicle = pBoss->GetVehicleKit())
                            if (Unit* pUnit = pVehicle->GetPassenger(0))
                                uiGrandChampionBoss2 = pUnit->GetGUID();
                    if (pInstance)
                    {
                        pInstance->SetData64(DATA_GRAND_CHAMPION_VEHICLE_2,Vehicle2GUID);
                        pInstance->SetData64(DATA_GRAND_CHAMPION_2,uiGrandChampionBoss2);
                    }
                    pBoss->AI()->SetData(2,0);
                    break;
                }
                case 3:					
                {
                    Vehicle3GUID = pBoss->GetGUID();
                    uint64 uiGrandChampionBoss3 = 0;
                    if (Creature* pBoss = Unit::GetCreature(*me, Vehicle3GUID))
                        if (Vehicle* pVehicle = pBoss->GetVehicleKit())
                            if (Unit* pUnit = pVehicle->GetPassenger(0))
                    uiGrandChampionBoss3 = pUnit->GetGUID();
                    if (pInstance)
                    {
                        pInstance->SetData64(DATA_GRAND_CHAMPION_VEHICLE_3,Vehicle3GUID);
                        pInstance->SetData64(DATA_GRAND_CHAMPION_3,uiGrandChampionBoss3);
                    }
                    pBoss->AI()->SetData(3,0);
                    break;
                }
                default:
                    return;
                }

                for (uint8 i = 0; i < 3; ++i)
                {
                    if (Creature* pAdd = me->SummonCreature(VEHICLE_TO_SUMMON2,SpawnPosition,TEMPSUMMON_CORPSE_DESPAWN))
                    {			
                        switch(SummonTimes)
                        {
                        case 1:
                            Champion1List.push_back(pAdd->GetGUID());
                            break;
                        case 2:
                            Champion2List.push_back(pAdd->GetGUID());
                            break;
                        case 3:
                            Champion3List.push_back(pAdd->GetGUID());
                            break;
                        }

                        switch(i)
                        {
                        case 0:
                            pAdd->GetMotionMaster()->MoveFollow(pBoss,2.0f,M_PI);
                            break;
                        case 1:
                            pAdd->GetMotionMaster()->MoveFollow(pBoss,2.0f,M_PI / 2);
                            break;
                        case 2:
                            pAdd->GetMotionMaster()->MoveFollow(pBoss,2.0f,M_PI / 2 + M_PI);
                            break;
                        }
                    }
                }
            }
        }

        void DoStartArgentChampionEncounter()
        {
            DoScriptText(SAY_SUMMON_PALETRESS_2, me);
            if (Creature* pBoss = me->SummonCreature(ArgentChampion,SpawnPosition))
            {
                for (uint8 i = 0; i < 3; ++i)
                {
                    if (Creature* pTrash = me->SummonCreature(NPC_ARGENT_LIGHWIELDER,SpawnPosition))
                        pTrash->AI()->SetData(i,0);
                    if (Creature* pTrash = me->SummonCreature(NPC_ARGENT_MONK,SpawnPosition))
                        pTrash->AI()->SetData(i,0);
                    if (Creature* pTrash = me->SummonCreature(NPC_PRIESTESS,SpawnPosition))
                        pTrash->AI()->SetData(i,0);
                }
            }
        }

        void EnterCombat(Unit* pWho){}
    	
        void SetGrandChampionsForEncounter()
        {
            FirstBoss = urand(0,4);

            while (SecondBoss == FirstBoss || ThirdBoss == FirstBoss || ThirdBoss == SecondBoss)
            {
                SecondBoss = urand(0,4);
                ThirdBoss = urand(0,4);
            }
        }

        void SetArgentChampion()
        {
            uint8 uiTempBoss = urand(0,1);

            switch(uiTempBoss)
            {
            case 0:
                ArgentChampion = NPC_EADRIC;
                break;
            case 1:
                DoScriptText(SAY_SUMMON_PALETRESS_2, me);
                ArgentChampion = NPC_PALETRESS;
                break;
            }
        }

        void StartEncounter()
        {
            if (!pInstance)
                return;

            me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE1)))
            pInstance->HandleGameObject(pGO->GetGUID(),false);

            if (pInstance->GetData(BOSS_BLACK_KNIGHT) == NOT_STARTED)
            {
                if (pInstance->GetData(BOSS_ARGENT_CHALLENGE_E) == NOT_STARTED && pInstance->GetData(BOSS_ARGENT_CHALLENGE_P) == NOT_STARTED)
                {
                    if (pInstance->GetData(BOSS_GRAND_CHAMPIONS) == NOT_STARTED)
                        me->AI()->SetData(DATA_START,0);

                    if (pInstance->GetData(BOSS_GRAND_CHAMPIONS) == DONE)
                        DoStartArgentChampionEncounter();
                }

                if (pInstance->GetData(BOSS_GRAND_CHAMPIONS) == DONE &&
                pInstance->GetData(BOSS_ARGENT_CHALLENGE_E) == DONE ||
                pInstance->GetData(BOSS_ARGENT_CHALLENGE_P) == DONE)
                {
                    if (Unit* pBlackKnight = me->SummonCreature(VEHICLE_BLACK_KNIGHT,801.369507f, 640.574280f, 469.314362f, 3.97124f,TEMPSUMMON_DEAD_DESPAWN,180000))
                    {
                        BlackKnightGUID = pBlackKnight->GetGUID();
                        pBlackKnight->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        pBlackKnight->SetUInt64Value(UNIT_FIELD_TARGET, me->GetGUID());
                        me->SetUInt64Value(UNIT_FIELD_TARGET, BlackKnightGUID);
                        if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                        pInstance->HandleGameObject(pGO->GetGUID(),false);
                    }
                    me->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
                    me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                    me->SetReactState(REACT_AGGRESSIVE);
                    DoScriptText(SAY_START_BLACKKNIGHT, me);
                }
            }
        }

        void Reset()
        {
            BlackKnightGUID = 0;
        }

        void AggroAllPlayers(Creature* pTemp)
        {
            Map::PlayerList const &PlList = me->GetMap()->GetPlayers();

            if (PlList.isEmpty())
                return;

            for (Map::PlayerList::const_iterator i = PlList.begin(); i != PlList.end(); ++i)
            {
                if (Player* pPlayer = i->getSource())
                {
                    if (pPlayer->isGameMaster())
                        continue;

                    if (pPlayer->isAlive())
                    {
                        pTemp->SetHomePosition(me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),me->GetOrientation());
                        pTemp->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
                        pTemp->SetReactState(REACT_AGGRESSIVE);
                        pTemp->SetInCombatWith(pPlayer);
                        pPlayer->SetInCombatWith(pTemp);
                        pTemp->AddThreat(pPlayer, 0.0f);
                    }
                }       
            }
        }
    	
        void UpdateAI(const uint32 uiDiff)
        {
            ScriptedAI::UpdateAI(uiDiff);

            if (Timer <= uiDiff)
            {
                switch(Phase)
                {
                case 1:
                    DoSummonGrandChampion(SecondBoss);
                    NextStep(10000,true);
                    break;
                case 2:
                    DoSummonGrandChampion(ThirdBoss);
                    NextStep(0,false);
                    break;
                case 3:
                    if (!Champion1List.empty())
                    {
                        for (std::list<uint64>::const_iterator itr = Champion1List.begin(); itr != Champion1List.end(); ++itr)
                        if (Creature* pSummon = Unit::GetCreature(*me, *itr))
                        AggroAllPlayers(pSummon);
                        NextStep(0,false);
                    }
                    break;
                }
            } else Timer -= uiDiff;

            if (!UpdateVictim())
                return;
        }

        void JustSummoned(Creature* pSummon)
        {
            if (pInstance && pInstance->GetData(BOSS_GRAND_CHAMPIONS) == NOT_STARTED)
            {
                pSummon->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
                pSummon->SetReactState(REACT_PASSIVE);
            }
        }

        void SummonedCreatureDespawn(Creature* pSummon)
        {
            switch(pSummon->GetEntry())
            {
                case VEHICLE_DARNASSIA_NIGHTSABER:
                case VEHICLE_EXODAR_ELEKK:
                case VEHICLE_STORMWIND_STEED:
                case VEHICLE_GNOMEREGAN_MECHANOSTRIDER:
                case VEHICLE_IRONFORGE_RAM:
                case VEHICLE_FORSAKE_WARHORSE:
                case VEHICLE_THUNDER_BLUFF_KODO:
                case VEHICLE_ORGRIMMAR_WOLF:
                case VEHICLE_SILVERMOON_HAWKSTRIDER:
                case VEHICLE_DARKSPEAR_RAPTOR:
                    me->AI()->SetData(DATA_LESSER_CHAMPIONS_DEFEATED,0);
                    break;
            }
        }

    private:
        InstanceScript* pInstance;
        uint8 SummonTimes;
        uint8 Position;
        uint8 LesserChampions;
        uint32 ArgentChampion;
        uint32 FirstBoss;
        uint32 SecondBoss;
        uint32 ThirdBoss;
        uint32 Phase;
        uint32 Timer;
        uint64 BlackKnightGUID;
        uint64 Vehicle1GUID;
        uint64 Vehicle2GUID;
        uint64 Vehicle3GUID;
        uint64 GrandChampionBoss1;
        std::list<uint64> Champion1List;
        std::list<uint64> Champion2List;
        std::list<uint64> Champion3List;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_announcer_toc5AI(pCreature);
    }
};

void AddSC_trial_of_the_champion()
{
    new npc_announcer_toc5();
}