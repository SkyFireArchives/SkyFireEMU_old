/*
 * Copyright (C) 2010-2011 SkyFire <http://www.projectskyfire.org/>
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

#ifndef DEF_LOST_CITY_OF_THE_TOLVIR_H
#define DEF_LOST_CITY_OF_THE_TOLVIR_H

#define LCTSCriptName "instance_lost_city_of_the_tolvir"

enum Data
{
	DATA_GENERAL_HUSAM_EVENT,
	DATA_HIGH_PROPHET_BARIM_EVENT,
	DATA_LOCKMAW_AUGH_EVENT,
	DATA_SIAMAT_EVENT,
	DATA_TEAM_IN_INSTANCE,
};

enum Data64
{
	DATA_GENERAL_HUSAM,
	DATA_HIGH_PROPHET_BARIM,
	DATA_LOCKMAW_AUGH,
	DATA_SIAMAT,
};

enum CreatureIds
{
	//Dungeon Boss

	BOSS_GENERAL_HUSAM = 44577,
	BOSS_HIGH_PROPHET_BARIM = 43612,
	BOSS_LOCKMAW_AUGH = 43614,
	BOSS_AUGH = 49045,
	BOSS_SIAMAT = 44819,

	//Trash mobs

	MOB_BLAZE_OF_HEAVENS = 48906,
	MOB_HARBINGER_OF_DARKNESS = 43927,
	MOB_MINION_OF_SIAMAT = 44704,
	MOB_NEFERSET_DARKCASTER = 44982,
	MOB_NEFERSET_PLAGUEBRINGER = 44976,
	MOB_NEFERSET_THEURGIST = 44980,
	MOB_NEFERSET_TORTURER = 44977,
	MOB_OATHSWORN_AXEMASTER = 44922,
	MOB_OATHSWORN_CAPTAIN = 45122,
	MOB_OATHSWORN_MYRMIDON = 44924,
	MOB_OATHSWORN_PATHFINDER = 44932,
	MOB_OATHSWORN_SCORPID_KEEPER = 45062,
	MOB_OATHSWORN_SKINNER = 44981,
	MOB_OATHSWORN_TAMER = 45097,
	MOB_WANDERER = 44926,
	MOB_PYGMY_BRUTE = 44896,
	MOB_PYGMY_FIREBREATHER = 44898,
	MOB_PYGMY_SCOUT = 44897,
	MOB_SERVANT_OF_SIAMAT = 45269,
};

#endif