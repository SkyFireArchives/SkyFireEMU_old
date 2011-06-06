/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
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

#ifndef DEF_EYE_OF_ETERNITY_H
#define DEF_EYE_OF_ETERNITY_H

enum eInstanceData
{
    TYPE_MALYGOS,
    MAX_ENCOUNTER,

    DATA_VORTEX_HANDLING,
    DATA_POWER_SPARKS_HANDLING
};

enum eData64
{
    DATA_TRIGGER,
    DATA_MALYGOS,
    DATA_PLATFORM
};

enum eCreatures
{
    NPC_MALYGOS                 = 28859,
    NPC_VORTEX_TRIGGER          = 30090,
    NPC_PORTAL_TRIGGER          = 30118,
    NPC_POWER_SPARK             = 30084,
    NPC_ARCANE_OVERLOAD         = 30282,
    NPC_SURGE_OF_POWER          = 30334,
    NPC_NEXUS_LORD              = 30245,
    NPC_SCION_OF_ETERNITY       = 30249,
    NPC_DISC_PLAYER             = 30234,
    NPC_DISC_NPC                = 30248,
    NPC_STATIC_FIELD            = 30592,
    NPC_WYRMREST_SKYTALON       = 30161,
    NPC_ALEXSTRASZA             = 32295,
    NPC_ALEXSTRASZAS_GIFT       = 32448
};

enum eGameObjects
{
    GO_PLATFORM                 = 193070,
    GO_EXIT_PORTAL              = 193908,
    GO_FOCUSING_IRIS_10         = 193958,
    GO_FOCUSING_IRIS_25         = 193960,
    GO_ALEXSTRASZAS_GIFT_10     = 193905,
    GO_ALEXSTRASZAS_GIFT_25     = 193967,
    GO_HEART_OF_MAGIC_10        = 194158,
    GO_HEART_OF_MAGIC_25        = 194159
};

enum eAchievementData
{
    ACHIEV_TIMED_START_EVENT    = 20387
};

enum Actions
{
    ACTION_AKTIVATE_PORTAL      = 0,
};

enum InstanceSpells
{
    SPELL_VORTEX_4          = 55853, // damage | used to enter to the vehicle
    SPELL_VORTEX_5          = 56263, // damage | used to enter to the vehicle
    SPELL_PORTAL_OPENED     = 61236,
    SPELL_RIDE_RED_DRAGON   = 56071,
};

#endif