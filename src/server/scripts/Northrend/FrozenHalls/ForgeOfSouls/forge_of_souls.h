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

#ifndef DEF_FORGE_OF_SOULS_H
#define DEF_FORGE_OF_SOULS_H

#define FoSScriptName "instance_forge_of_souls"

enum Data
{
    DATA_BRONJAHM           = 0,
    DATA_DEVOURER           = 1,
    DATA_DEVOURER_EVENT     = 2,
    DATA_TEAM_IN_INSTANCE   = 3,
};

enum Creatures
{
    CREATURE_BRONJAHM                             = 36497,
    CREATURE_DEVOURER                             = 36502,

    NPC_SYLVANAS_PART1                            = 37596,
    NPC_SYLVANAS_PART2                            = 38161,
    NPC_JAINA_PART1                               = 37597,
    NPC_JAINA_PART2                               = 38160,
    NPC_KALIRA                                    = 37583,
    NPC_ELANDRA                                   = 37774,
    NPC_LORALEN                                   = 37779,
    NPC_KORELN                                    = 37582,
    NPC_CHAMPION_1_HORDE                          = 37584,
    NPC_CHAMPION_2_HORDE                          = 37587,
    NPC_CHAMPION_3_HORDE                          = 37588,
    NPC_CHAMPION_1_ALLIANCE                       = 37496,
    NPC_CHAMPION_2_ALLIANCE                       = 37497,
};
#endif