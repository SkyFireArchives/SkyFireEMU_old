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

#include "ScriptPCH.h"
#include "halls_of_reflection.h"
#include "World.h"

enum eEnum
{
    ENCOUNTER_WAVE_MERCENARY                      = 6,
    ENCOUNTER_WAVE_FOOTMAN                        = 10,
    ENCOUNTER_WAVE_RIFLEMAN                       = 6,
    ENCOUNTER_WAVE_PRIEST                         = 6,
    ENCOUNTER_WAVE_MAGE                           = 6,
};

enum Events
{
    EVENT_NONE,
    EVENT_NEXT_WAVE,
    EVENT_START_LICH_KING,
};

static Position PriestSpawnPos[ENCOUNTER_WAVE_PRIEST] =
{
    {5277.74f,2016.88f,707.778f,5.96903f},
    {5295.88f,2040.34f,707.778f,5.07891f},
    {5320.37f,1980.13f,707.778f,2.00713f},
    {5280.51f,1997.84f,707.778f,0.296706f},
    {5302.45f,2042.22f,707.778f,4.90438f},
    {5306.57f,1977.47f,707.778f,1.50098f},
};

static Position MageSpawnPos[ENCOUNTER_WAVE_MAGE] =
{
    {5312.75f,2037.12f,707.778f,4.59022f},
    {5309.58f,2042.67f,707.778f,4.69494f},
    {5275.08f,2008.72f,707.778f,6.21337f},
    {5279.65f,2004.66f,707.778f,0.069813f},
    {5275.48f,2001.14f,707.778f,0.174533f},
    {5316.7f,2041.55f,707.778f,4.50295f},
};

static Position MercenarySpawnPos[ENCOUNTER_WAVE_MERCENARY] =
{
    {5302.25f,1972.41f,707.778f,1.37881f},
    {5311.03f,1972.23f,707.778f,1.64061f},
    {5277.36f,1993.23f,707.778f,0.401426f},
    {5318.7f,2036.11f,707.778f,4.2237f},
    {5335.72f,1996.86f,707.778f,2.74017f},
    {5299.43f,1979.01f,707.778f,1.23918f},
};

static Position FootmenSpawnPos[ENCOUNTER_WAVE_FOOTMAN] =
{
    {5306.06f,2037,707.778f,4.81711f},
    {5344.15f,2007.17f,707.778f,3.15905f},
    {5337.83f,2010.06f,707.778f,3.22886f},
    {5343.29f,1999.38f,707.778f,2.9147f},
    {5340.84f,1992.46f,707.778f,2.75762f},
    {5325.07f,1977.6f,707.778f,2.07694f},
    {5336.6f,2017.28f,707.778f,3.47321f},
    {5313.82f,1978.15f,707.778f,1.74533f},
    {5280.63f,2012.16f,707.778f,6.05629f},
    {5322.96f,2040.29f,707.778f,4.34587f},
};

static Position RiflemanSpawnPos[ENCOUNTER_WAVE_RIFLEMAN] =
{
    {5343.47f,2015.95f,707.778f,3.49066f},
    {5337.86f,2003.4f,707.778f,2.98451f},
    {5319.16f,1974,707.778f,1.91986f},
    {5299.25f,2036,707.778f,5.02655f},
    {5295.64f,1973.76f,707.778f,1.18682f},
    {5282.9f,2019.6f,707.778f,5.88176f},
};

class instance_halls_of_reflection : public InstanceMapScript
{
public:
    instance_halls_of_reflection() : InstanceMapScript("instance_halls_of_reflection", 668) { }

    struct instance_halls_of_reflection_InstanceMapScript : public InstanceScript
    {
        instance_halls_of_reflection_InstanceMapScript(Map* map) : InstanceScript(map) 
        {};

        uint32 uiEncounter[MAX_ENCOUNTERS];
        uint32 uiLider;
        uint32 uiTeamInInstance;
        uint32 uiWaveCount;
        uint8 uiSummons;

        uint64 uiFalric;
        uint64 uiMarwyn;  
        uint64 uiLichKingEvent;
        uint64 uiLiderGUID;
        uint64 uiJainaPart1;
        uint64 uiJainaPart2;
        uint64 uiSylvanasPart1;
        uint64 uiSylvanasPart2;

        uint64 uiMainGate;
        uint64 uiExitGate;
        uint64 uiDoor2;
        uint64 uiDoor3;

        uint64 uiFrostGeneral;
        uint64 uiFrostmourne;
        uint64 uiFrostmourneAltar;
        uint64 uiPortal;
        uint64 uiIceWall1;
        uint64 uiIceWall2;
        uint64 uiIceWall3;
        uint64 uiIceWall4;
        uint64 uiGoCave;

        bool bIntroDone;

        EventMap events;

        void Initialize()
        {
            events.Reset();

            uiMainGate = 0;
            uiFrostmourne = 0;
            uiFalric = 0;
            uiLiderGUID = 0;
            uiLichKingEvent = 0;
            uiExitGate = 0;
            uiSummons = 0;
            uiIceWall1 = 0;
            uiIceWall2 = 0;
            uiIceWall3 = 0;
            uiIceWall4 = 0;
            uiGoCave = 0;
            uiJainaPart1 = 0;
            uiJainaPart2 = 0;
            uiSylvanasPart1 = 0;
            uiSylvanasPart2 = 0;

            for (uint8 i = 0; i < MAX_ENCOUNTERS; ++i)
                uiEncounter[i] = NOT_STARTED;
        }

        void OpenDoor(uint64 guid)
        {
            if(!guid) 
                return;

            GameObject* go = instance->GetGameObject(guid);

            if (go) 
                go->SetGoState(GO_STATE_ACTIVE);
        }

        void CloseDoor(uint64 guid)
        {
            if(!guid) 
                return;
                GameObject* go = instance->GetGameObject(guid);

            if (go) 
                go->SetGoState(GO_STATE_READY);
        }

        void OnCreatureCreate(Creature *pCreature, bool /*bAdd*/)
        {
            Map::PlayerList const &players = instance->GetPlayers();
            if (!players.isEmpty())
                if (Player* pPlayer = players.begin()->getSource())
                    uiTeamInInstance = pPlayer->GetTeam();

            switch(pCreature->GetEntry())
            {
            case NPC_FALRIC: 
                uiFalric = pCreature->GetGUID(); 
                break;
            case NPC_MARWYN: 
                uiMarwyn = pCreature->GetGUID();  
                break;
            case BOSS_LICH_KING: 
                uiLichKingEvent = pCreature->GetGUID();
                break;
            case NPC_FROST_GENERAL:
                uiFrostGeneral = pCreature->GetGUID();
                break;
            case NPC_JAINA:
                uiJainaPart1 = pCreature->GetGUID();
                break;
            case NPC_JAINA_OUTRO:
                uiJainaPart2 = pCreature->GetGUID();
                break;
            case NPC_SYLVANA:
                uiSylvanasPart1 = pCreature->GetGUID();
                break;
            case NPC_SYLVANA_OUTRO:
                uiSylvanasPart2 = pCreature->GetGUID();
                break;
            }
        }

        void OnGameObjectCreate(GameObject *pGo, bool /*bAdd*/)
        {
            switch(pGo->GetEntry())
            {
                case GO_IMPENETRABLE_DOOR: 
                    uiMainGate = pGo->GetGUID(); 
                    break;
                case GO_FROSTMOURNE: 
                    uiFrostmourne = pGo->GetGUID(); 
                    break;
                case GO_ICECROWN_DOOR:     
                    uiExitGate = pGo->GetGUID(); 
                    break;
                case GO_ICECROWN_DOOR_2:   
                    uiDoor2 = pGo->GetGUID(); 
                    break;
                case GO_ICECROWN_DOOR_3:   
                    uiDoor3 = pGo->GetGUID(); 
                    break;
                case GO_PORTAL:            
                    uiPortal = pGo->GetGUID(); 
                    break;
                case GO_ICE_WALL_1:
                    uiIceWall1 = pGo->GetGUID();
                    pGo->SetGoState(GO_STATE_ACTIVE);
                    break;
                case GO_ICE_WALL_2:
                    uiIceWall2 = pGo->GetGUID();
                    pGo->SetGoState(GO_STATE_ACTIVE);
                    break;
                case GO_ICE_WALL_3:
                    uiIceWall3 = pGo->GetGUID();
                    pGo->SetGoState(GO_STATE_ACTIVE);
                    break;
                case GO_ICE_WALL_4:
                    uiIceWall4 = pGo->GetGUID();
                    pGo->SetGoState(GO_STATE_ACTIVE);
                    break;
                case GO_CAVE:
                    uiGoCave = pGo->GetGUID();
                    pGo->SetGoState(GO_STATE_ACTIVE);
                    break;
            }
        }

        void SetData(uint32 type, uint32 data)
        {
            if (type == TYPE_WAVE_COUNT && data == SPECIAL)
            {
                bIntroDone = true;
                events.ScheduleEvent(EVENT_NEXT_WAVE, 10000);
                return;
            }

            if (uiWaveCount && data == NOT_STARTED)
                DoWipe();

            switch(type)
            {
                case TYPE_FALRIC:               
                    uiEncounter[0] = data;
                     if (data == DONE)
                        events.ScheduleEvent(EVENT_NEXT_WAVE, 60000);
                    break;
                case TYPE_MARWYN:               
                    uiEncounter[1] = data;
                    if(data == DONE)
                    {
                        OpenDoor(uiMainGate);
                        OpenDoor(uiExitGate);
                    }
                    break;
                case TYPE_LICH_KING:            
                    uiEncounter[2] = data;
                    if(data == IN_PROGRESS)
                        OpenDoor(uiDoor3);
                    if(data == NOT_STARTED)
                        CloseDoor(uiDoor3);
                    if(data == DONE)
                    {
                        if (GameObject* pPortal = instance->GetGameObject(uiPortal))
                            if (pPortal && !pPortal->isSpawned()) 
                            {
                                pPortal->SetRespawnTime(DAY);
                            }
                    }
                    break;
                case TYPE_PHASE:                
                    uiEncounter[3] = data; 
                    break;
                case TYPE_EVENT:                
                    uiEncounter[4] = data;                   
                    data = NOT_STARTED;
                    break;
                case TYPE_FROST_GENERAL:        
                    uiEncounter[5] = data; 
                    if(data == DONE)
                        OpenDoor(uiDoor2);
                    break;
                case TYPE_ICE_WALL_01:          
                    uiEncounter[6] = data; 
                    break;
                case TYPE_ICE_WALL_02:          
                    uiEncounter[7] = data; 
                    break;
                case TYPE_ICE_WALL_03:          
                    uiEncounter[8] = data; 
                    break;
                case TYPE_ICE_WALL_04:          
                    uiEncounter[9] = data; 
                    break;
                case TYPE_HALLS:                
                    uiEncounter[10] = data; 
                    break;
                case DATA_START_ENCOUNTER:
                    if(data == IN_PROGRESS)
                        CloseDoor(uiExitGate);
                    if(data == NOT_STARTED)
                        OpenDoor(uiExitGate);
                    if(data == DONE)
                        OpenDoor(uiExitGate);
                    if(data == DONE)
                    uiEncounter[11] = data; 
                    break;
                case DATA_LIDER:                
                    uiLider = data;
                    data = NOT_STARTED;
                    break;
                case DATA_SUMMONS:              
                    if (data == 3) 
                        uiSummons = 0;
                    else if (data == 1) 
                        ++uiSummons;
                    else if (data == 0) 
                        --uiSummons;
                    data = NOT_STARTED;
                }

            if (data == DONE)
                SaveToDB();
        }

        uint32 GetData(uint32 type)
        {
            switch(type)
            {
                case TYPE_FALRIC:               return uiEncounter[0];
                case TYPE_MARWYN:               return uiEncounter[1];
                case TYPE_LICH_KING:            return uiEncounter[2];
                case TYPE_PHASE:                return uiEncounter[3];
                case TYPE_EVENT:                return uiEncounter[4];
                case TYPE_FROST_GENERAL:        return uiEncounter[5];
                case TYPE_ICE_WALL_01:          return uiEncounter[6];
                case TYPE_ICE_WALL_02:          return uiEncounter[7];
                case TYPE_ICE_WALL_03:          return uiEncounter[8];
                case TYPE_ICE_WALL_04:          return uiEncounter[9];
                case TYPE_HALLS:                return uiEncounter[10];
                case TYPE_WAVE_COUNT:           return uiWaveCount;
                case DATA_LIDER:                return uiLider;
                case DATA_TEAM_IN_INSTANCE:     return uiTeamInInstance;
                case DATA_SUMMONS:              return uiSummons;
            }

            return 0;
        }

        uint64 GetData64(uint32 data)
        {
            switch(data)
            {
                case NPC_FALRIC:           return uiFalric;
                case NPC_MARWYN:           return uiMarwyn;
                case NPC_FROST_GENERAL:    return uiFrostGeneral;
                case BOSS_LICH_KING:       return uiLichKingEvent;
                case DATA_ESCAPE_LIDER:    return uiLiderGUID;
                case GO_IMPENETRABLE_DOOR: return uiMainGate;
                case GO_FROSTMOURNE:       return uiFrostmourne;
                case GO_ICECROWN_DOOR:     return uiExitGate;
                case GO_ICECROWN_DOOR_2:   return uiDoor2;
                case GO_ICECROWN_DOOR_3:   return uiDoor3;
                case GO_ICE_WALL_1:        return uiIceWall1;
                case GO_ICE_WALL_2:        return uiIceWall2;
                case GO_ICE_WALL_3:        return uiIceWall3;
                case GO_ICE_WALL_4:        return uiIceWall4;
                case GO_CAVE:              return uiGoCave;
            }

            return 0;
        }

        void SetData64(uint32 data, uint64 uiGuid)
        {
            switch(data)
            {
                case DATA_ESCAPE_LIDER:
                    uiLiderGUID = uiGuid;
                    break;
            }
        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;

            std::ostringstream saveStream;
            saveStream << "H R 1 " << uiEncounter[0] << " " << uiEncounter[1] << " " << uiEncounter[2] << " " 
            << uiEncounter[3] << " " << uiEncounter[4] << " " << uiEncounter[5] << " " << uiEncounter[6] << " "
            << uiEncounter[7] << " " << uiEncounter[8] << " " << uiEncounter[9] << " " << uiEncounter[10] << " " << uiEncounter[11];


            OUT_SAVE_INST_DATA_COMPLETE;
            return saveStream.str();
        }

        void Load(const char* in)
        {
            if (!in)
            {
                OUT_LOAD_INST_DATA_FAIL;
                return;
            }

            OUT_LOAD_INST_DATA(in);

            char dataHead1, dataHead2;
            uint16 version;
            uint16 data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11;

            std::istringstream loadStream(in);
            loadStream >> dataHead1 >> dataHead2 >> version 
                >> data0 >> data1 >> data2 >> data3 >> data4 >> data5
                >> data6 >> data7 >> data8 >> data9 >> data10 >> data11;

            if (dataHead1 == 'H' && dataHead2 == 'R')
            {
                uiEncounter[0] = data0;
                uiEncounter[1] = data1;
                uiEncounter[2] = data2;
                uiEncounter[3] = data3;
                uiEncounter[4] = data4;
                uiEncounter[5] = data5;
                uiEncounter[6] = data6;
                uiEncounter[7] = data7;
                uiEncounter[8] = data8;
                uiEncounter[9] = data9;
                uiEncounter[10] = data10;
                uiEncounter[11] = data11;

                for (uint8 i = 0; i < MAX_ENCOUNTERS; ++i)
                    if (uiEncounter[i] == IN_PROGRESS)
                        uiEncounter[i] = NOT_STARTED;

            } else OUT_LOAD_INST_DATA_FAIL;

            if (uiEncounter[0] == DONE || uiEncounter[1] == DONE)
                bIntroDone = true;

            OUT_LOAD_INST_DATA_COMPLETE;
        }

        void AddWave()
        {
            DoUpdateWorldState(WORLD_STATE_HOR, 1);
            DoUpdateWorldState(WORLD_STATE_HOR_WAVE_COUNT, uiWaveCount);

            switch(uiWaveCount)
            {
                case 1:
                case 2:
                case 3:
                case 4:
                    if (Creature* pFalric = instance->GetCreature(uiFalric))
                        SpawnWave(pFalric);
                    break;
                case 5:
                    if (GetData(TYPE_FALRIC) == DONE)
                        events.ScheduleEvent(EVENT_NEXT_WAVE, 10000);
                    else if (Creature* pFalric = instance->GetCreature(uiFalric))
                        if (pFalric->AI())
                            pFalric->AI()->DoAction(ACTION_ENTER_COMBAT);
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                    if (Creature* pMarwyn  = instance->GetCreature(uiFalric))
                        SpawnWave(pMarwyn);
                    break;
                case 10:
                    if (GetData(TYPE_MARWYN) != DONE) // wave should not have been started if DONE. Check anyway to avoid bug exploit!
                        if (Creature* pMarwyn = instance->GetCreature(uiMarwyn))
                            if (pMarwyn->AI())
                                pMarwyn->AI()->DoAction(ACTION_ENTER_COMBAT);
                    break;
            }
        }

        // Wipe has been detected. Perform cleanup and reset.
        void DoWipe()
        {
            uiWaveCount = 0;
            events.Reset();
            DoUpdateWorldState(WORLD_STATE_HOR, 1);
            DoUpdateWorldState(WORLD_STATE_HOR_WAVE_COUNT, uiWaveCount);

            // TODO
            // in case of wipe, the event is normally restarted by jumping into the center of the room.
            // As I can't find a trigger area there, just respawn Jaina/Sylvanas so the event may be restarted.
            if (Creature* pJaina = instance->GetCreature(uiJainaPart1))
                pJaina->Respawn();

            if (Creature* pSylvanas = instance->GetCreature(uiSylvanasPart1))
                pSylvanas->Respawn();

            if (Creature* pFalric = instance->GetCreature(uiFalric))
                pFalric->SetVisible(false);
            if (Creature* pMarwyn = instance->GetCreature(uiMarwyn))
                pMarwyn->SetVisible(false);
        }


        // spawn a wave on behalf of the summoner.
        void SpawnWave(Creature* pSummoner)
        {
            uint32 index;

            pSummoner->SetVisible(true);

            // TODO: do composition at random. # of spawn also depends on uiWaveCount
            // As of now, it is just one of each.
            index = urand(0,ENCOUNTER_WAVE_MERCENARY-1);
            pSummoner->SummonCreature(NPC_WAVE_MERCENARY, MercenarySpawnPos[index], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 0);

            index = urand(0,ENCOUNTER_WAVE_FOOTMAN-1);
            pSummoner->SummonCreature(NPC_WAVE_FOOTMAN, FootmenSpawnPos[index], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 0);

            index = urand(0,ENCOUNTER_WAVE_RIFLEMAN-1);
            pSummoner->SummonCreature(NPC_WAVE_RIFLEMAN, RiflemanSpawnPos[index], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 0);

            index = urand(0,ENCOUNTER_WAVE_PRIEST-1);
            pSummoner->SummonCreature(NPC_WAVE_PRIEST, PriestSpawnPos[index], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 0);

            index = urand(0,ENCOUNTER_WAVE_MAGE-1);
            pSummoner->SummonCreature(NPC_WAVE_MAGE, MageSpawnPos[index], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 0);
        }

        void Update(uint32 diff)
        {
            if (!instance->HavePlayers())
                return;

            events.Update(diff);

            switch(events.ExecuteEvent())
            {
            case EVENT_NEXT_WAVE:
                uiWaveCount++;
                AddWave();
                break;
            }
        }
    };

    InstanceScript* GetInstanceScript (InstanceMap* map) const
    {
        return new instance_halls_of_reflection_InstanceMapScript(map);
    }
};


void AddSC_instance_halls_of_reflection()
{
    new instance_halls_of_reflection();
}
