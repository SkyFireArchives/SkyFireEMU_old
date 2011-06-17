/*
* Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
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

#include"ScriptPCH.h"
#include"baradin_hold.h"

class instance_baradin_hold: public InstanceMapScript
{
public:
    instance_baradin_hold() : InstanceMapScript("instance_baradin_hold", 757) { }
    
    InstanceScript* GetInstanceScript(InstanceMap *map) const
    {
        return new instance_baradin_hold_InstanceMapScript(map);
    }
    
    struct instance_baradin_hold_InstanceMapScript: public InstanceScript
    {
        instance_baradin_hold_InstanceMapScript(InstanceMap *map) : InstanceScript(map) { }

        uint32 uiEncounters[ENCOUNTERS];

        uint64 uiArgaloth;
        uint64 uiOccuthar;
 
        void Initialize()
        {
            uiArgaloth = 0;
            uiOccuthar = 0;
            for(uint8 i=0; i < ENCOUNTERS; ++i)
                uiEncounters = NOT_STARTED;
            
        }

        bool IsEncounterInProgress() const
        {
            for(uint8 i=0; i < ENCOUNTERS; ++i)
            {
                if (uiEncounters[i] == IN_PROGRESS)
                    return true;
            }
            return false;
        }

        void OnCreatureCreate(Creature* pCreature, bool)
        {
            switch(pCreature->GetEntry())
            {
                case BOSS_ARGALOTH:
                    uiArgaloth = pCreature->GetGUID();
                    break;
                case BOSS_OCCUTHAR:
                    uiOccuthar = pCreature->GetGUID();
                    break;
            }
        }

        uint64 getData64(uint32 identifier)
        {
            switch(identifer)
            {
                case DATA_ARGALOTH:
                    return uiArgaloth;
                case DATA_OCCUTHAR:
                    return uiOccuthar;
            }
        return 0;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch(type)
            {
                case DATA_ARGALOTH:
                    uiEncounter[0] = data;
                    break;
                case DATA_OCCUTHAR:
                    uiEncounter[1] = data;
                    break;
            }

            if (data == DONE)
            {
                SaveToDB();
            }
        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;

            std::string str_data;
            std::ostringstream saveStream;
            saveStream << "B H" << uiEncounter[0] << " " << uiEncounter[1];
            str_data = saveStream.str();

            OUT_SAVE_INST_DATA_COMPLETE;
            return str_data;
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
            uint16 data0, data1;

            std::istringstream loadStream(in);
            loadStream >> dataHead1 >> dataHead2 >> data0 >> data1;

            if (dataHead1 == 'B' && dataHead2 == 'H')
            {
                uiEncounter[0] = data0;
                uiEncounter[1] = data1;
                       
                for(uint8 i=0; i < ENCOUNTERS; ++i)
                    if (uiEncounter[i] == IN_PROGRESS)
                        uiEncounter[i] = NOT_STARTED;
            }
            else OUT_LOAD_INST_DATA_FAIL;

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };
};

void AddSC_instance_baradin_hold()
{
    new instance_baradin_hold();
}
