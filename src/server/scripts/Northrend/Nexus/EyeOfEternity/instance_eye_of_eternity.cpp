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
#include "eye_of_eternity.h"

class instance_eye_of_eternity : public InstanceMapScript
{
public:
    instance_eye_of_eternity() : InstanceMapScript("instance_eye_of_eternity", 616) { }

    InstanceScript* GetInstanceScript(InstanceMap* pMap) const
    {
        return new instance_eye_of_eternity_InstanceMapScript(pMap);
    }

    struct instance_eye_of_eternity_InstanceMapScript : public InstanceScript
    {
        instance_eye_of_eternity_InstanceMapScript(Map* pMap) : InstanceScript(pMap) {};

        uint64 uiMalygosGUID;
        uint64 uiPlatformGUID;
        uint64 uiExitPortalGUID;
        uint64 uiFocusingIrisGUID;
        uint64 lastPortalGUID;

        uint32 auiEncounter[MAX_ENCOUNTER];

        std::list<uint64> vortexTriggers;
        std::list<uint64> portalTriggers;

        void Initialize()
        {
            memset(&auiEncounter, 0, sizeof(auiEncounter));

            uiMalygosGUID = 0;
            uiPlatformGUID = 0;
            uiExitPortalGUID = 0;
            uiFocusingIrisGUID = 0;
            lastPortalGUID = 0;

            vortexTriggers.clear();
            portalTriggers.clear();
        }

        bool IsEncounterInProgress() const
        {
            for (int i = 0; i < MAX_ENCOUNTER; ++i)
                if (auiEncounter[i] == IN_PROGRESS)
                    return true;

            return false;
        }

        void OnCreatureCreate(Creature *pCreature, bool /*bAdd*/)
        {
            switch (pCreature->GetEntry())
            {
                case NPC_MALYGOS:
                    uiMalygosGUID = pCreature->GetGUID();
                    break;
                case NPC_VORTEX_TRIGGER:
                    vortexTriggers.push_back(pCreature->GetGUID());
                    break;
                case NPC_PORTAL_TRIGGER:
                    portalTriggers.push_back(pCreature->GetGUID());
                    break;
            }
        }

        void OnGameObjectCreate(GameObject *pGo, bool /*bAdd*/)
        {
            switch(pGo->GetEntry())
            {
                case GO_PLATFORM:
                    uiPlatformGUID = pGo->GetGUID();
                    //if (auiEncounter[0] == DONE)
                    //    go->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_DESTROYED);
                    break;
                case GO_EXIT_PORTAL:
                    uiExitPortalGUID = pGo->GetGUID();
                    break;
                case GO_FOCUSING_IRIS_10:
                case GO_FOCUSING_IRIS_25:
                    uiFocusingIrisGUID = pGo->GetGUID();
                    if (auiEncounter[0] == DONE)
                        pGo->SetPhaseMask(2, true);
                    break;
            }
        }

        void VortexHandling()
        {
            if (Creature* malygos = instance->GetCreature(uiMalygosGUID))
            {
                std::list<HostileReference*> m_threatlist = malygos->getThreatManager().getThreatList();
                for (std::list<uint64>::const_iterator itr_vortex = vortexTriggers.begin(); itr_vortex != vortexTriggers.end(); ++itr_vortex)
                {
                    if (m_threatlist.empty())
                        return;

                    uint8 counter = 0;
                    if (Creature* trigger = instance->GetCreature(*itr_vortex))
                    {
                        // each trigger have to cast the spell to 5 players.
                        for (std::list<HostileReference*>::const_iterator itr = m_threatlist.begin(); itr!= m_threatlist.end(); ++itr)
                        {
                            if (counter >= 5)
                                break;

                            if (Unit* target = (*itr)->getTarget())
                            {
                                Player* player = target->ToPlayer();

                                if (!player || player->isGameMaster() || player->HasAura(SPELL_VORTEX_4))
                                    continue;

                                player->CastSpell(trigger,SPELL_VORTEX_4,true);
                                counter++;
                            }
                        }
                    }
                }
            }
        }

        void PowerSparksHandling()
        {
            bool next =  (lastPortalGUID == portalTriggers.back() || !lastPortalGUID ? true : false);

            for (std::list<uint64>::const_iterator itr_trigger = portalTriggers.begin(); itr_trigger != portalTriggers.end(); ++itr_trigger)
            {
                if (next)
                {
                    if (Creature* trigger = instance->GetCreature(*itr_trigger))
                    {
                        lastPortalGUID = trigger->GetGUID();
                        trigger->CastSpell(trigger,SPELL_PORTAL_OPENED,true);
                        trigger->AI()->DoAction(ACTION_AKTIVATE_PORTAL); 
                        return;
                    }
                }

                if (*itr_trigger == lastPortalGUID)
                    next = true;
            }
        }

        void SetData(uint32 uiType, uint32 uiData)
        {
            switch(uiType)
            {
                case TYPE_MALYGOS:
                    auiEncounter[0] = uiData;
                    if (uiData == NOT_STARTED)
                    {
                        if (GameObject* pFocusingIris = instance->GetGameObject(uiFocusingIrisGUID))
                        {
                            pFocusingIris->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_UNK1);
                            pFocusingIris->SetPhaseMask(1, true);
                        }
                        if (GameObject* pExitPortal = instance->GetGameObject(uiExitPortalGUID))
                            pExitPortal->SetPhaseMask(1, true);

                        if (GameObject* pPlatform = instance->GetGameObject(uiPlatformGUID))
                            if (pPlatform->HasFlag(GAMEOBJECT_FLAGS, GO_FLAG_DESTROYED))
                                pPlatform->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_DESTROYED);
                    }
                    /*if (uiData == IN_PROGRESS)
                    {
                        if (GameObject* pFocusingIris = instance->GetGameObject(uiFocusingIrisGUID))
                            pFocusingIris->SetPhaseMask(2, true);

                        if (GameObject* pExitPortal = instance->GetGameObject(uiExitPortalGUID))
                            pExitPortal->SetPhaseMask(2, true);
                    }*/
                    if (uiData == DONE)
                    {
                        if (GameObject* pExitPortal = instance->GetGameObject(uiExitPortalGUID))
                            pExitPortal->SetPhaseMask(1, true);
                    }
                    break;
                case DATA_VORTEX_HANDLING:
                    VortexHandling();
                    break;
                case DATA_POWER_SPARKS_HANDLING:
                    PowerSparksHandling();
                    break;
            }

            if (uiData == DONE)
                SaveToDB();
        }

        uint32 GetData(uint32 uiType)
        {
            switch (uiType)
            {
                case TYPE_MALYGOS: return auiEncounter[0];
            }
            return 0;
        }

        uint64 GetData64(uint32 uiData)
        {
            switch (uiData)
            {
                case DATA_MALYGOS: 
                    return uiMalygosGUID;
                case DATA_PLATFORM: 
                    return uiPlatformGUID;
                case DATA_TRIGGER:
                    return vortexTriggers.front();
                case GO_EXIT_PORTAL:
                    return uiExitPortalGUID;
                case GO_FOCUSING_IRIS_10:
                case GO_FOCUSING_IRIS_25:
                    return uiFocusingIrisGUID;
            }
            return 0;
        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;

            std::ostringstream saveStream;
            saveStream << "E E " << auiEncounter[0];

            OUT_SAVE_INST_DATA_COMPLETE;
            return saveStream.str();
        }

        void Load(const char* data)
        {
            if (!data)
            {
                OUT_LOAD_INST_DATA_FAIL;
                return;
            }

            OUT_LOAD_INST_DATA(data);

            char dataHead1, dataHead2;
            uint16 data0;

            std::istringstream loadStream(data);
            loadStream >> dataHead1 >> dataHead2 >> data0;

            if (dataHead1 == 'E' && dataHead2 == 'E')
            {
                auiEncounter[0] = data0;

                if (auiEncounter[0] == IN_PROGRESS)
                    auiEncounter[0] = NOT_STARTED;

            } else OUT_LOAD_INST_DATA_FAIL;

            OUT_LOAD_INST_DATA_COMPLETE;
        }

        void OnPlayerEnter(Player* pPlayer)
        {
            //if (auiEncounter[0] == DONE)
            //{
            //   if (Creature* pMount = pPlayer->SummonCreature(NPC_WYRMREST_SKYTALON, pPlayer->GetPositionX(), pPlayer->GetPositionY(), 260.0f, 0.0f))
            //    {
            //        pMount->SetFlying(true);
            //        pPlayer->EnterVehicle(pMount, 0);
            //    }
            //}
        }
    };
};

void AddSC_instance_eye_of_eternity()
{
    new instance_eye_of_eternity();
}