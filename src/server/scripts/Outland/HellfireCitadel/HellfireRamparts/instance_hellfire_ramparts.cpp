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
SDName: Instance_Hellfire_Ramparts
SD%Complete: 50
SDComment:
SDCategory: Hellfire Ramparts
EndScriptData */

#include "ScriptPCH.h"
#include "hellfire_ramparts.h"

class instance_ramparts : public InstanceMapScript
{
    public:
        instance_ramparts()
            : InstanceMapScript("instance_ramparts", 543)
        {
        }

        struct instance_ramparts_InstanceMapScript : public InstanceScript
        {
            instance_ramparts_InstanceMapScript(Map* pMap) : InstanceScript(pMap) {Initialize();}

            uint32 m_auiEncounter[MAX_ENCOUNTER];
            uint64 m_uiChestNGUID;
            uint64 m_uiChestHGUID;
            bool spawned;

            void Initialize()
            {
                memset(&m_auiEncounter, 0, sizeof(m_auiEncounter));

                m_uiChestNGUID = 0;
                m_uiChestHGUID = 0;
            }

            void OnGameObjectCreate(GameObject* pGo, bool /*add*/)
            {
                switch(pGo->GetEntry())
                {
                    case 185168:
                        m_uiChestNGUID = pGo->GetGUID();
                        break;
                    case 185169:
                        m_uiChestHGUID = pGo->GetGUID();
                        break;
                }
            }

            void SetData(uint32 uiType, uint32 uiData)
            {
                sLog->outDebug(LOG_FILTER_TSCR, "TSCR: Instance Ramparts: SetData received for type %u with data %u", uiType, uiData);

                switch(uiType)
                {
                    case TYPE_VAZRUDEN:
                        if (uiData == DONE && m_auiEncounter[1] == DONE && !spawned)
                        {
                            DoRespawnGameObject(instance->IsHeroic() ? m_uiChestHGUID : m_uiChestNGUID, HOUR*IN_MILLISECONDS);
                            spawned = true;
                        }
                        m_auiEncounter[0] = uiData;
                        break;
                    case TYPE_NAZAN:
                        if (uiData == DONE && m_auiEncounter[0] == DONE && !spawned)
                        {
                            DoRespawnGameObject(instance->IsHeroic() ? m_uiChestHGUID : m_uiChestNGUID, HOUR*IN_MILLISECONDS);
                            spawned = true;
                        }
                        m_auiEncounter[1] = uiData;
                        break;
                }
            }
        };

        InstanceScript* GetInstanceScript(InstanceMap* pMap) const
        {
            return new instance_ramparts_InstanceMapScript(pMap);
        }
};

void AddSC_instance_ramparts()
{
    new instance_ramparts;
}