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
#include "new_hyjal.h"

const DoorData doorData[] =
{
    {GO_KAIMLEI_FLAME_WALL1, DATA_JANALAI_TRIO, DOOR_TYPE_ROOM,     0},
    {GO_KAIMLEI_FLAME_WALL2, DATA_JANALAI_TRIO, DOOR_TYPE_ROOM,     0},
    {GO_KAIMLEI_FLAME_WALL3, DATA_JANALAI_TRIO, DOOR_TYPE_ROOM,     0},
    {GO_KAIMLEI_FLAME_WALL4, DATA_JANALAI_TRIO, DOOR_TYPE_PASSAGE,  0},
    {0,                      0,                 DOOR_TYPE_ROOM,     0}
};

class instance_new_hyjal : public InstanceMapScript
{
public:
    instance_new_hyjal() : InstanceMapScript("instance_new_hyjal", 534) { }

    InstanceScript* GetInstanceScript(InstanceMap* pMap) const
    {
        return new instance_new_hyjal_InstanceMapScript(pMap);
    }

    struct instance_new_hyjal_InstanceMapScript : public InstanceScript
    {
        instance_new_hyjal_InstanceMapScript(Map* pMap) : InstanceScript(pMap)
        {
            SetBossNumber(MAX_BOSS_NUMBER);
        }

        uint64 uiTemusy;
        uint64 uiZuljinTrio;
        uint64 uiHalazziTrio;
        uint64 uiJanalaiTrio;
        uint64 uiZATrioController;

        uint64 GoTemusiFlameRingGUID;

        void OnGameObjectCreate(GameObject* go)
        {
            AddDoor(go, true);
            switch(go->GetEntry())
            {
            case GO_TEMUSI_FLAME_RING:
                GoTemusiFlameRingGUID = go->GetGUID();
                break;
            }
        }
        
        void OnGameObjectRemove(GameObject* go)
        {
            AddDoor(go, false);
        }

        void OnCreatureCreate(Creature* creature)
        {
            Map::PlayerList const &players = instance->GetPlayers();
            uint32 TeamInInstance = 0;

            if (!players.isEmpty())
                if (Player* pPlayer = players.begin()->getSource())
                    TeamInInstance = pPlayer->GetTeam();
        
            switch(creature->GetEntry())
            {
                case BOSS_CREATURE_TEMUSY: uiTemusy = creature->GetGUID(); return;
                case BOSS_JANALAI: uiJanalaiTrio = creature->GetGUID(); return;
                case BOSS_ZULJIN: uiZuljinTrio = creature->GetGUID(); return;
                case BOSS_HALAZZI: uiHalazziTrio = creature->GetGUID(); return;
                case NPC_TRIO_CONTROLLER: uiZATrioController = creature->GetGUID(); return;
            }
        }

        uint64 GetData64(uint32 id)
        {
            switch(id)
            {
            case DATA_TEMUSY:
                return uiTemusy;
            case DATA_JANALAI_TRIO:
                return uiJanalaiTrio;
            case DATA_ZULJIN_TRIO:
                return uiZuljinTrio;
            case DATA_HALAZZI_TRIO:
                return uiHalazziTrio;
            case DATA_ZA_TRIO_CONTROLLER:
                return uiZATrioController;
            }
            return NULL;
        }
    
        void SetData(uint32 id, uint32 value)
        {
            switch(id)
            {
                case DATA_TEMUSI_FLAME_RING:
                    if (GameObject* pRunicDoor = instance->GetGameObject(GoTemusiFlameRingGUID))
                        pRunicDoor->SetGoState(GOState(value));
                    break;
            }
        }

        bool SetBossState(uint32 id, EncounterState state)
        {
            if (!InstanceScript::SetBossState(id, state))
                return false;
            
            switch (id)
            {
            case DATA_TEMUSY:
                /*if(state == DONE) Todo
                {
                    Creature *boss = instance->GetCreature(uiTemusy);
                    {
                        boss->setActive(true);
                        boss->AI()->DoAction(ACTION_INTRO);
                    }
                }*/
                break;
            }
            return true;
        }
    };
};

void AddSC_new_hyjal()
{
    new instance_new_hyjal();
}
