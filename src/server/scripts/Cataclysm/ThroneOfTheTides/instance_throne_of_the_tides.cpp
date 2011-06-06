
#include "ScriptPCH.h"
#include "throne_of_the_tides.h"

#define ENCOUNTERS  1

class instance_throne_of_the_tides : public InstanceMapScript
{
public:
	instance_throne_of_the_tides() : InstanceMapScript("instance_throne_of_the_tides", 643) { }

    InstanceScript* GetInstanceScript(InstanceMap* pMap) const
    {
        return new instance_throne_of_the_tides_InstanceMapScript(pMap);
    }

    struct instance_throne_of_the_tides_InstanceMapScript : public InstanceScript
    {
    	instance_throne_of_the_tides_InstanceMapScript(Map *Map) : InstanceScript(Map) {};

        uint32 uiEncounters[ENCOUNTERS];

        uint64 uiLadyNazjar;

        void Initialize()
        {
        	uiLadyNazjar = 0;

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
                case CREATURE_LADY_NAZJAR: uiLadyNazjar  = creature->GetGUID(); break;
            }
        }

        uint32 GetData(uint32 type)
        {
            switch(type)
            {
                case DATA_LADY_NAZJAR_EVENT:   return uiEncounters[0];
            }
            return 0;
        }

        uint64 GetData64(uint32 identifier)
        {
            switch(identifier)
            {
                case DATA_LADY_NAZJAR: return uiLadyNazjar;
            }
            return 0;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch(type)
            {
                case DATA_LADY_NAZJAR_EVENT:   uiEncounters[0] = data; break;
            }

            if (data == DONE)
                SaveToDB();
        }

        std::string GetSaveData()
        {
            OUT_SAVE_INST_DATA;
            std::ostringstream stream;
            //stream << uiEncounters[0] << " " << uiEncounters[1] << " " << uiEncounters[2] << " " << uiEncounters[3];
            stream << uiEncounters[0];

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
            //stream >> uiEncounters[0] >> uiEncounters[1] >> uiEncounters[2] >> uiEncounters[3];
            stream >> uiEncounters[0];

            for (uint8 i = 0; i < ENCOUNTERS; ++i)
                if (uiEncounters[i] == IN_PROGRESS)
                    uiEncounters[i] = NOT_STARTED;

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };

};


void AddSC_instance_throne_of_the_tides()
{
    new instance_throne_of_the_tides();
}