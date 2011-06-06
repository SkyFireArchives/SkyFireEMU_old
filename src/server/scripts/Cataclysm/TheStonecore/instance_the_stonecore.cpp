
#include "ScriptPCH.h"
#include "the_stone_core.h"

#define ENCOUNTERS  4

class instance_the_stone_core : public InstanceMapScript
{
public:
	instance_the_stone_core() : InstanceMapScript("instance_the_stone_core", 725) { }

    InstanceScript* GetInstanceScript(InstanceMap* pMap) const
    {
        return new instance_the_stonecore_InstanceMapScript(pMap);
    }

    struct instance_the_stonecore_InstanceMapScript : public InstanceScript
    {
    	instance_the_stonecore_InstanceMapScript(Map *Map) : InstanceScript(Map) {};

        uint32 uiEncounters[ENCOUNTERS];

        uint64 uiCorborus;
        uint64 uiSlaphide;
        uint64 uiOzruk;
        uint64 uiHighPriestAzil;

        void Initialize()
        {
        	uiCorborus = 0;
            uiSlaphide = 0;
            uiOzruk = 0;
            uiHighPriestAzil = 0;

            for (uint8 i = 0; i < ENCOUNTERS; i++)
                uiEncounters[i] = NOT_STARTED;
        }

        bool IsEncounterInProgress() const
        {
            for (uint8 i = 0; i < ENCOUNTERS; i++)
                if (uiEncounters[i] == IN_PROGRESS)
                    return true;

            return false;
        }

        void OnCreatureCreate(Creature *creature, bool /*add*/)
        {
            switch(creature->GetEntry())
            {
                case CREATURE_CORBORUS: uiCorborus  = creature->GetGUID(); 
                    break;
                case CREATURE_SLAPHIDE: uiSlaphide  = creature->GetGUID(); 
                    break;
                case CREATURE_OZRUK: uiOzruk  = creature->GetGUID(); 
                    break;
                case CREATURE_HIGH_PRIESTESS_AZIL: uiHighPriestAzil  = creature->GetGUID(); 
                    break;
            }
        }

        uint32 GetData(uint32 type)
        {
            switch(type)
            {
                case DATA_CORBORUS_EVENT: 
                    return uiEncounters[0];
                case DATA_SLAPHIDE_EVENT: 
                    return uiEncounters[1];
                case DATA_OZRUK_EVENT: 
                    return uiEncounters[2];
                case DATA_HIGH_PRIESTESS_AZIL_EVENT: 
                    return uiEncounters[3];
            }
            return 0;
        }

        uint64 GetData64(uint32 identifier)
        {
            switch(identifier)
            {
                case DATA_CORBORUS: 
                    return uiCorborus;
                case DATA_SLAPHIDE: 
                    return uiSlaphide;
                case DATA_OZRUK: 
                    return uiOzruk;
                case DATA_HIGH_PRIESTESS_AZIL: 
                    return uiHighPriestAzil;
            }
            return 0;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch(type)
            {
                case DATA_CORBORUS_EVENT:   
                    uiEncounters[0] = data; break;
                case DATA_SLAPHIDE_EVENT:   
                    uiEncounters[1] = data; break;
                case DATA_OZRUK_EVENT:   
                    uiEncounters[2] = data; break;
                case DATA_HIGH_PRIESTESS_AZIL_EVENT:   
                    uiEncounters[3] = data; break;
            }

            if (data == DONE)
                SaveToDB();
        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;
            std::ostringstream stream;
            stream << uiEncounters[0] << " " << uiEncounters[1] << " " << uiEncounters[2] << " " << uiEncounters[3];

            char* out = new char[stream.str().length() + 1];
            strcpy(out, stream.str().c_str());
            if (out)
            {
                OUT_SAVE_INST_DATA_COMPLETE;
                return out;
            }

            return NULL;
        }

        void Load(const char* in)
        {
            if (!in)
            {
                OUT_LOAD_INST_DATA_FAIL;
                return;
            }

            OUT_LOAD_INST_DATA(in);

            std::istringstream stream(in);
            stream >> uiEncounters[0] >> uiEncounters[1] >> uiEncounters[2] >> uiEncounters[3];

            for (uint8 i = 0; i < ENCOUNTERS; ++i)
                if (uiEncounters[i] == IN_PROGRESS)
                    uiEncounters[i] = NOT_STARTED;

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };
};

void AddSC_instance_the_stonecore()
{
    new instance_the_stone_core();
}