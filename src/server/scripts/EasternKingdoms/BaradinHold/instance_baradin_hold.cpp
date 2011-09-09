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
		instance_baradin_hold() : InstanceMapScript(BHScriptName, 757) { }
    
		struct instance_baradin_hold_InstanceMapScript: public InstanceScript
		{
			instance_baradin_hold_InstanceMapScript(InstanceMap *map) : InstanceScript(map)
			{
				SetBossNumber(EncounterCount);
				ArgalothGUID = 0;
			}

			void OnCreatureCreate(Creature* creature)
			{
				if (creature->GetEntry() == NPC_ARGALOTH)
					ArgalothGUID = creature->GetGUID();
			}

			uint64 GetData64(uint32 type)
			{
				if (type == DATA_ARGALOTH)
					return ArgalothGUID;

				return 0;
			}

			std::string GetSaveData()
			{
				OUT_SAVE_INST_DATA;

				std::ostringstream saveStream;
				saveStream << "B H" << EncounterCount;

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

				std::istringstream loadStream(in);
				loadStream >> dataHead1 >> dataHead2;

				if (dataHead1 == 'B' && dataHead2 == 'H')
				{
					for (uint32 i = 0; i < EncounterCount; ++i)
					{
						uint32 tmpState;
                        loadStream >> tmpState;
                        if (tmpState == IN_PROGRESS || tmpState > SPECIAL)
                            tmpState = NOT_STARTED;
                        SetBossState(i, EncounterState(tmpState));
					}
				}
				else
					OUT_LOAD_INST_DATA_FAIL;

				OUT_LOAD_INST_DATA_COMPLETE;
			}

		protected:
			uint64 ArgalothGUID;
		};

		InstanceScript* GetInstanceScript(InstanceMap *map) const
		{
			return new instance_baradin_hold_InstanceMapScript(map);
		}
};

void AddSC_instance_baradin_hold()
{
    new instance_baradin_hold();
}
