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

#ifndef DEF_SERPENT_SHRINE_H
#define DEF_SERPENT_SHRINE_H
enum LurkerEventState
{
    LURKER_NOT_STARTED = 0,
    LURKER_FISHING     = 1,
    LURKER_HOOKED      = 2
};
enum WaterEventState
{
    WATERSTATE_NONE     = 0,
    WATERSTATE_FRENZY   = 1,
    WATERSTATE_SCALDING = 2
};
#define DATA_CANSTARTPHASE3 1
#define DATA_CARIBDIS 2
#define DATA_HYDROSSTHEUNSTABLEEVENT 3
#define DATA_KARATHRESS 4
#define DATA_KARATHRESSEVENT 5
#define DATA_KARATHRESSEVENT_STARTER 6
#define DATA_LADYVASHJ 7
#define DATA_LADYVASHJEVENT 8
#define DATA_LEOTHERASTHEBLINDEVENT 9
#define DATA_MOROGRIMTIDEWALKEREVENT 10
#define DATA_SHARKKIS 11
#define DATA_SHIELDGENERATOR1 12
#define DATA_SHIELDGENERATOR2 13
#define DATA_SHIELDGENERATOR3 14
#define DATA_SHIELDGENERATOR4 15
#define DATA_THELURKERBELOW 16
#define DATA_THELURKERBELOWEVENT 17
#define DATA_TIDALVESS 18
#define DATA_FATHOMLORDKARATHRESSEVENT 19
#define DATA_LEOTHERAS 20
#define DATA_LEOTHERAS_EVENT_STARTER 21
#define DATA_CONTROL_CONSOLE 22
#define DATA_STRANGE_POOL 23
#define DATA_WATER 24
#define DATA_TRASH 25
#endif