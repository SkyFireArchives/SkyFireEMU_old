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
#include "azjol_nerub.h"

#define MAX_ENCOUNTER     3

/* Azjol Nerub encounters:
0 - Krik'thir the Gatewatcher
1 - Hadronox
2 - Anub'arak
*/

class instance_azjol_nerub : public InstanceMapScript
{
public:
    instance_azjol_nerub() : InstanceMapScript("instance_azjol_nerub", 601) { }

    struct instance_azjol_nerub_InstanceScript : public InstanceScript
    {
        instance_azjol_nerub_InstanceScript(Map* pMap) : InstanceScript(pMap) {}

        uint64 uiKrikthir;
        uint64 uiHadronox;
        uint64 uiAnubarak;
        uint64 uiWatcherGashra;
        uint64 uiWatcherSilthik;
        uint64 uiWatcherNarjil;
        uint64 uiAnubarakDoor[3];
        uint64 uiAnubarCrusher;

        uint64 uiKrikthirDoor;

        uint32 auiEncounter[MAX_ENCOUNTER];

        bool bDoorSwitch;

        uint32 uiDoorTimer;
        uint32 uiEngageTimer;
        std::set<uint64> WatcherTrashGUIDs;

        void Initialize()
        {
            memset(&auiEncounter, 0, sizeof(auiEncounter));
            memset(&uiAnubarakDoor, 0, sizeof(uiAnubarakDoor));

            uiKrikthir = 0;
            uiHadronox = 0;
            uiAnubarak = 0;
            uiWatcherGashra = 0;
            uiWatcherSilthik = 0;
            uiWatcherNarjil = 0;
            uiKrikthirDoor = 0;
            uiAnubarCrusher = 0;

            bDoorSwitch = false;
            uiDoorTimer = 5*IN_MILLISECONDS;
            uiEngageTimer = 45*IN_MILLISECONDS;
            WatcherTrashGUIDs.clear();
        }

        bool IsEncounterInProgress() const
        {
            for (uint8 i = 0; i < MAX_ENCOUNTER; ++i)
                if (auiEncounter[i] == IN_PROGRESS) return true;

            return false;
        }

        void OnCreatureCreate(Creature *pCreature, bool /*bAdd*/)
        {
            switch (pCreature->GetEntry())
            {
                case 28684:    uiKrikthir = pCreature->GetGUID();        break;
                case 28921:    uiHadronox = pCreature->GetGUID();        break;
                case 29120:    uiAnubarak = pCreature->GetGUID();        break;
                case 28730:    uiWatcherGashra = pCreature->GetGUID();   break;
                case 28731:    uiWatcherSilthik = pCreature->GetGUID();  break;
                case 28729:    uiWatcherNarjil = pCreature->GetGUID();   break;
                case 28922:    uiAnubarCrusher = pCreature->GetGUID();   break;
            }
            // bad way to handle trash respawn
            switch (pCreature->GetDBTableGUIDLow())
            {
                case 127228:
                case 127231:
                case 127232:
                case 127233:
                case 127234:
                case 127236:
                    WatcherTrashGUIDs.insert(pCreature->GetGUID());
                    break;
            }
        }

        void OnGameObjectCreate(GameObject *pGo, bool /*bAdd*/)
        {
            switch (pGo->GetEntry())
            {
                case 192395:
                    uiKrikthirDoor = pGo->GetGUID();
                    if (auiEncounter[0] == DONE)
                        HandleGameObject(NULL,true,pGo);
                    break;
                case 192396:
                    uiAnubarakDoor[0] = pGo->GetGUID();
                    break;
                case 192397:
                    uiAnubarakDoor[1] = pGo->GetGUID();
                    break;
                case 192398:
                    uiAnubarakDoor[2] = pGo->GetGUID();
                    break;
            }
        }

        uint64 GetData64(uint32 identifier)
        {
            switch (identifier)
            {
                case DATA_KRIKTHIR_THE_GATEWATCHER:     return uiKrikthir;
                case DATA_HADRONOX:                     return uiHadronox;
                case DATA_ANUBARAK:                     return uiAnubarak;
                case DATA_WATCHER_GASHRA:               return uiWatcherGashra;
                case DATA_WATCHER_SILTHIK:              return uiWatcherSilthik;
                case DATA_WATCHER_NARJIL:               return uiWatcherNarjil;
            }

            return 0;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch (type)
            {
            case DATA_KRIKTHIR_THE_GATEWATCHER_EVENT:
                // if encounter already done ignore event
                if (auiEncounter[0] == DONE)
                    break;

                auiEncounter[0] = data;

                if (data == NOT_STARTED)
                    HandleWatcher(true);
                else if (data == SPECIAL || data == IN_PROGRESS)
                    HandleWatcher(false);
                else if (data == DONE)
                    HandleGameObject(uiKrikthirDoor, true);
                break;
            case DATA_HADRONOX_EVENT:
                // if encounter already done ignore event
                if (auiEncounter[1] == DONE)
                    break;

                auiEncounter[1] = data;
                break;
            case DATA_ANUBARAK_EVENT:
                auiEncounter[2] = data;
                if (data == IN_PROGRESS)
                {
                    bDoorSwitch = true;
                    uiDoorTimer = 5*IN_MILLISECONDS;
                }
                else if (data == NOT_STARTED || data == DONE)
                {
                    bDoorSwitch = false;
                    for (uint8 i = 0; i < 3; ++i)
                        HandleGameObject(uiAnubarakDoor[i], true);
                }
                break;
            }

            if (data == DONE)
            {
                SaveToDB();
            }
        }

        uint32 GetData(uint32 type)
        {
            switch (type)
            {
                case DATA_KRIKTHIR_THE_GATEWATCHER_EVENT:   return auiEncounter[0];
                case DATA_HADRONOX_EVENT:                   return auiEncounter[1];
                case DATA_ANUBARAK_EVENT:                   return auiEncounter[2];
            }

            return 0;
        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;

            std::ostringstream saveStream;
            saveStream << "A N " << auiEncounter[0] << " " << auiEncounter[1] << " "
                << auiEncounter[2];

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
            uint16 data0,data1,data2;

            std::istringstream loadStream(in);
            loadStream >> dataHead1 >> dataHead2 >> data0 >> data1 >> data2;

            if (dataHead1 == 'A' && dataHead2 == 'N')
            {
                auiEncounter[0] = data0;
                auiEncounter[1] = data1;
                auiEncounter[2] = data2;

                for (uint8 i = 0; i < MAX_ENCOUNTER; ++i)
                    if (auiEncounter[i] == IN_PROGRESS)
                        auiEncounter[i] = NOT_STARTED;

            } else OUT_LOAD_INST_DATA_FAIL;

            OUT_LOAD_INST_DATA_COMPLETE;
        }

        void HandleWatcher(bool reset)
        {
            Creature *pGashra = instance->GetCreature(uiWatcherGashra);
            Creature *pSilthik = instance->GetCreature(uiWatcherSilthik);
            Creature *pNarjil = instance->GetCreature(uiWatcherNarjil);
            Creature *pKrikthir = instance->GetCreature(uiKrikthir);

            if (pGashra && pSilthik && pNarjil && pKrikthir)
            {
                if (reset)
                {
                    // only respawn if boss is still alive
                    if (pKrikthir->isAlive())
                    {
                        if (!pGashra->isAlive())
                            pGashra->Respawn();

                        if (!pSilthik->isAlive())
                            pSilthik->Respawn();

                        if (!pNarjil->isAlive())
                            pNarjil->Respawn();

                        pGashra->AI()->EnterEvadeMode();
                        pSilthik->AI()->EnterEvadeMode();
                        pNarjil->AI()->EnterEvadeMode();
                        pKrikthir->AI()->EnterEvadeMode();

                        // trash
                        if (!WatcherTrashGUIDs.empty())   
                            for (std::set<uint64>::const_iterator itr = WatcherTrashGUIDs.begin(); itr != WatcherTrashGUIDs.end(); ++itr)
                            {
                                Creature* pTemp = instance->GetCreature(*itr);
                                if (pTemp)
                                {
                                    if (!pTemp->isAlive())
                                        pTemp->Respawn();

                                    pTemp->AI()->EnterEvadeMode();
                                }
                            }
                    }
                }
                else
                {
                    // if boss is pulled set adds in combat if still alive
                    if (pKrikthir->isAlive() && pKrikthir->isInCombat())
                    {
                        if (pGashra->isAlive() && !pGashra->isInCombat())
                            pGashra->AI()->DoZoneInCombat();
                        if (pSilthik->isAlive() && !pSilthik->isInCombat())
                            pSilthik->AI()->DoZoneInCombat();
                        if (pNarjil->isAlive() && !pNarjil->isInCombat())
                            pNarjil->AI()->DoZoneInCombat();

                        if (auiEncounter[0] == SPECIAL)
                            auiEncounter[0] = IN_PROGRESS;
                    }

                    uiEngageTimer = 45*IN_MILLISECONDS;
                }
            }
        }

        void Update(uint32 diff)
        {
            if (auiEncounter[0] == SPECIAL)
                if (uiEngageTimer <= diff)
                {
                    Creature *pGashra = instance->GetCreature(uiWatcherGashra);
                    Creature *pSilthik = instance->GetCreature(uiWatcherSilthik);
                    Creature *pNarjil = instance->GetCreature(uiWatcherNarjil);
                    Creature *pKrikthir = instance->GetCreature(uiKrikthir);

                    if (pGashra && pSilthik && pNarjil && pKrikthir)
                    {
                        if (pGashra->isAlive() && !pGashra->isInCombat())
                            pGashra->AI()->DoZoneInCombat();
                        else if (pSilthik->isAlive() && !pSilthik->isInCombat())
                            pSilthik->AI()->DoZoneInCombat();
                        else if (pNarjil->isAlive() && !pNarjil->isInCombat())
                            pNarjil->AI()->DoZoneInCombat();
                        else if (pKrikthir->isAlive() && !pKrikthir->isInCombat())
                            pKrikthir->AI()->DoZoneInCombat();

                        uiEngageTimer = 45*IN_MILLISECONDS;
                    }
                } else uiEngageTimer -= diff;

            if (bDoorSwitch)
            {
                if (uiDoorTimer <= diff)
                {
                    bDoorSwitch = false;
                    for (uint8 i = 0; i < 3; ++i)
                        HandleGameObject(uiAnubarakDoor[i], false);
                } else uiDoorTimer -= diff;
            }
        }
    };

    InstanceScript* GetInstanceScript(InstanceMap *map) const
    {
        return new instance_azjol_nerub_InstanceScript(map);
    }
};

void AddSC_instance_azjol_nerub()
{
    new instance_azjol_nerub;
}
