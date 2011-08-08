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

#ifndef DEF_HYJAL_H
#define DEF_HYJAL_H

#define ERROR_INST_DATA     "TSCR: Instance data not set properly for Mount Hyjal. Encounters will be buggy."

enum eTypes
{
    WORLD_STATE_WAVES         = 2842,
    WORLD_STATE_ENEMY         = 2453,
    WORLD_STATE_ENEMYCOUNT    = 2454,

    DATA_ANETHERON            = 1,
    DATA_ANETHERONEVENT       = 2,
    DATA_ARCHIMONDE           = 3,
    DATA_ARCHIMONDEEVENT      = 4,
    DATA_AZGALOR              = 5,
    DATA_AZGALOREVENT         = 6,
    DATA_JAINAPROUDMOORE      = 7,
    DATA_KAZROGAL             = 8,
    DATA_KAZROGALEVENT        = 9,
    DATA_RAGEWINTERCHILL      = 10,
    DATA_RAGEWINTERCHILLEVENT = 11,
    DATA_THRALL               = 12,
    DATA_TYRANDEWHISPERWIND   = 13,
    DATA_TRASH                = 14,
    DATA_RESET_TRASH_COUNT    = 15,
    DATA_ALLIANCE_RETREAT     = 16,
    DATA_HORDE_RETREAT        = 17,
    DATA_RAIDDAMAGE           = 18,
    DATA_RESET_RAIDDAMAGE     = 19,
    TYPE_RETREAT              = 20
};
#endif