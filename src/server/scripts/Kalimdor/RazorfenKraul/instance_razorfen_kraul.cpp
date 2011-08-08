/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2006-2011 ScriptDev2 <http://www.scriptdev2.com/>
 *
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

/* ScriptData
SDName: Instance_Razorfen_Kraul
SD%Complete:
SDComment:
SDCategory: Razorfen Kraul
EndScriptData */

#include "ScriptPCH.h"
#include "razorfen_kraul.h"

#define WARD_KEEPERS_NR 2

class instance_razorfen_kraul : public InstanceMapScript
{
public:
    instance_razorfen_kraul() : InstanceMapScript("instance_razorfen_kraul", 47) { }

    InstanceScript* GetInstanceScript(InstanceMap* pMap) const
    {
        return new instance_razorfen_kraul_InstanceMapScript(pMap);
    }

    struct instance_razorfen_kraul_InstanceMapScript : public InstanceScript
    {
        instance_razorfen_kraul_InstanceMapScript(Map* pMap) : InstanceScript(pMap) {Initialize();};

        uint64 DoorWardGUID;
        uint32 WardCheck_Timer;
        int WardKeeperAlive;

        void Initialize()
        {
            WardKeeperAlive = 1;
            WardCheck_Timer = 4000;
            DoorWardGUID = 0;
        }

        Player* GetPlayerInMap()
        {
            Map::PlayerList const& players = instance->GetPlayers();

            if (!players.isEmpty())
            {
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                {
                    if (Player* plr = itr->getSource())
                        return plr;
                }
            }
            sLog->outDebug(LOG_FILTER_TSCR, "TSCR: Instance Razorfen Kraul: GetPlayerInMap, but PlayerList is empty!");
            return NULL;
        }

        void OnGameObjectCreate(GameObject* pGo, bool /*apply*/)
        {
            switch(pGo->GetEntry())
            {
            case 21099: DoorWardGUID = pGo->GetGUID(); break;
            }
        }

        void Update(uint32 diff)
        {
            if (WardCheck_Timer <= diff)
            {
                HandleGameObject(DoorWardGUID, WardKeeperAlive);
                WardKeeperAlive = 0;
                WardCheck_Timer = 4000;
            }else
                WardCheck_Timer -= diff;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch(type)
            {
                case TYPE_WARD_KEEPERS:
                    if (data == NOT_STARTED)
                        WardKeeperAlive = 1;
                    break;
            }
        }
    };
};

void AddSC_instance_razorfen_kraul()
{
    new instance_razorfen_kraul();
}