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

#ifndef DEF_THE_STONECORE_H
#define DEF_THE_STONECORE_H

enum Data
{
    DATA_CORBORUS_EVENT,
    DATA_SLABHIDE_EVENT,
    DATA_OZRUK_EVENT,
    DATA_HIGH_PRIESTESS_AZIL_EVENT,
    DATA_TEAM_IN_INSTANCE,
};

enum Data64
{
    DATA_CORBORUS,
    DATA_SLABHIDE,
    DATA_OZRUK,
    DATA_HIGH_PRIESTESS_AZIL,
};

enum Creatures
{
    // Bosses
    BOSS_CORBORUS            = 43438,
    BOSS_SLABHIDE            = 43214,
    BOSS_OZRUK               = 42188,
    BOSS_HIGH_PRIESTESS_AZIL = 42333,

    // Trash npc
    CREATURE_CRYSTALSPAWN_GIANT    = 42810,
    CREATURE_IMP                   = 43014,
    CREATURE_MILLHOUSE_MANASTORM   = 43391,
    CREATURE_ROCK_BORER            = 43917,
    CREATURE_ROCK_BORER2           = 42845,
    CREATURE_STONECORE_BERSERKER   = 43430,
    CREATURE_STONECORE_BRUISER     = 42692,
    CREATURE_STONECORE_EARTHSHAPER = 43537,
    CREATURE_STONECORE_FLAYER      = 42808,
    CREATURE_MAGMALORD             = 42789,
    CREATURE_RIFT_CONJURER         = 42691,
    CREATURE_STONECORE_SENTRY      = 42695,
    CREATURE_STONECORE_WARBRINGER  = 42696,
};

#endif