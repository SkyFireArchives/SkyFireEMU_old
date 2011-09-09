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

#ifndef DEF_BARADIN_HOLD_H_
#define DEF_BARADIN_HOLD_H_
#define BHScriptName "instance_baradin_hold"

uint32 const EncounterCount = 1;

enum CreatureIds
{
    NPC_ARGALOTH  = 47120,
};

enum DataTypes
{
	DATA_ARGALOTH = 1,
};

enum SharedActions
{
	ACTION_FEL_FIRESTORM		= -4712000,
};

template <class AI>
CreatureAI* GetBaradinHoldAI(Creature* creature)
{
	if (InstanceMap* instance = creature->GetMap()->ToInstanceMap())
        if (instance->GetInstanceScript())
            if (instance->GetScriptId() == sObjectMgr->GetScriptId(BHScriptName))
				return new AI(creature);
	return NULL;
}

#endif
