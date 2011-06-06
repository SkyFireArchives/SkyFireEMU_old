#include "ScriptPCH.h"
#include "bastion_of_twilight.h"

#define ENCOUNTERS  5

class instance_bastion_of_twilight: public InstanceMapScript
{
public:
    instance_bastion_of_twilight() :
        InstanceMapScript("instance_bastion_of_twilight", 671)
    {
    }

    InstanceScript* GetInstanceScript(InstanceMap* pMap) const
    {
        return new instance_bastion_of_twilight_InstanceMapScript(pMap);
    }

    struct instance_bastion_of_twilight_InstanceMapScript: public InstanceScript
    {
        instance_bastion_of_twilight_InstanceMapScript(Map* pMap) :
            InstanceScript(pMap)
        {
        }

        uint32 uiEncounters[ENCOUNTERS];

        uint64 uiHalfusWyrmbreaker;
        uint64 uiProtoBehemoth;
        uint64 uiSlateDragon;
        uint64 uiNetherScion;
        uint64 uiStormRider;
        uint64 uiTimeWarden;
        uint64 uiEmeraldWhelp;

        uint64 uiFeludius;
        uint64 uiIgnacious;
        uint64 uiArion;
        uint64 uiTerrastra;
        uint64 uiElementiumMonstrosity;
        uint64 uiAscendantCouncilController;

        void Initialize()
        {
            uiHalfusWyrmbreaker     = 0;
            uiProtoBehemoth         = 0;
            uiSlateDragon           = 0;
            uiNetherScion           = 0;
            uiStormRider            = 0;
            uiTimeWarden            = 0;
            uiEmeraldWhelp          = 0;

            uiFeludius              = 0;
            uiIgnacious             = 0;
            uiArion                 = 0;
            uiTerrastra             = 0;
            uiElementiumMonstrosity = 0;
            uiAscendantCouncilController = 0;

            for (uint8 i = 0; i < ENCOUNTERS; i++)
                uiEncounters[i] = NOT_STARTED;
        }

        bool IsEncounterInProgress() const
        {
            for (uint8 i = 0; i < ENCOUNTERS; i++)
            {
                if (uiEncounters[i] == IN_PROGRESS)
                    return true;
            }
            return false;
        }

        void OnCreatureCreate(Creature *creature, bool /*add*/)
        {
            switch (creature->GetEntry())
            {
                case NPC_HALFUS_WYRMBREAKER:
                    uiHalfusWyrmbreaker = creature->GetGUID();
                    break;
                case NPC_PROTO_BEHEMOTH:
                    uiProtoBehemoth = creature->GetGUID();
                    break;
                case NPC_SLATE_DRAGON:
                    uiSlateDragon = creature->GetGUID();
                    break;
                case NPC_NETHER_SCION:
                    uiNetherScion = creature->GetGUID();
                    break;
                case NPC_STORM_RIDER:
                    uiStormRider = creature->GetGUID();
                    break;
                case NPC_TIME_WARDEN:
                    uiTimeWarden = creature->GetGUID();
                    break;
                case NPC_EMERALD_WHELP:
                    uiEmeraldWhelp = creature->GetGUID();
                    break;
                case NPC_FELDIUS:
                    uiFeludius = creature->GetGUID();
                    break;
                case NPC_IGNACOIOUS:
                    uiIgnacious = creature->GetGUID();
                    break;
                case NPC_ARION:
                    uiArion = creature->GetGUID();
                    break;
                case NPC_TERRASTRA:
                    uiTerrastra = creature->GetGUID();
                    break;
                case NPC_ELEMENTIUM_MONSTROSITY:
                    uiElementiumMonstrosity = creature->GetGUID();
                    break;
                case NPC_ASCENDANT_COUNCIL_CONTROLLER:
                    uiAscendantCouncilController = creature->GetGUID();
                    break;
            }
        }

        uint32 GetData(uint32 type)
        {
            switch (type)
            {
                case DATA_HALFUS_WYRMBREAKER_EVENT:
                    return uiEncounters[0];
                case DATA_ASCENDANT_COUNCIL_EVENT:
                    return uiEncounters[3];
            }
            return 0;
        }

        uint64 GetData64(uint32 identifier)
        {
            switch (identifier)
            {
                case DATA_HALFUS_WYRMBREAKER:
                    return uiHalfusWyrmbreaker;
                case DATA_PROTO_BEHEMOTH:
                    return uiProtoBehemoth;
                case DATA_STORM_RIDER:
                    return uiStormRider;
                case DATA_TIME_WARDEN:
                    return uiTimeWarden;
                case DATA_SLATE_DRAGON:
                    return uiSlateDragon;
                case DATA_NETHER_SCION:
                    return uiNetherScion;
                case DATA_EMERALD_WHELP:
                    return uiEmeraldWhelp;
                case DATA_FELDIUS:
                    return uiFeludius;
                case DATA_IGNACOIOUS:
                    return uiIgnacious;
                case DATA_ARION:
                    return uiArion;
                case DATA_TERRASTRA:
                    return uiTerrastra;
                case DATA_ELEMENTIUM_MONSTROSITY:
                    return uiElementiumMonstrosity;
                case DATA_ASCENDANT_COUNCIL_CONTROLLER:
                    return uiAscendantCouncilController;
            }
            return 0;
        }

        void SetData(uint32 type, uint32 data)
        {
            switch (type)
            {
                case DATA_HALFUS_WYRMBREAKER_EVENT:
                    uiEncounters[0] = data;
                    break;
                case DATA_ASCENDANT_COUNCIL_EVENT:
                    uiEncounters[3] = data;
                    break;
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
            stream >> uiEncounters[0] /*>> uiEncounters[1] >> uiEncounters[2]*/ >> uiEncounters[3];

            for (uint8 i = 0; i < ENCOUNTERS; ++i)
            {
                if (uiEncounters[i] == IN_PROGRESS)
                    uiEncounters[i] = NOT_STARTED;
            }

            OUT_LOAD_INST_DATA_COMPLETE;
        }
    };
};

void AddSC_instance_bastion_of_twilight()
{
    new instance_bastion_of_twilight();
}