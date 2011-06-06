/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#ifndef DEF_HYJAL_H
#define DEF_HYJAL_H

enum DataTypes
{
    DATA_TEMUSY          = 1,
    DATA_JANALAI_TRIO    = 2,
    DATA_ZULJIN_TRIO     = 3,
    DATA_HALAZZI_TRIO    = 4,
    DATA_ZA_TRIO_CONTROLLER = 5,
    MAX_BOSS_NUMBER
};

enum Gameobjects
{
    GO_TEMUSI_FLAME_RING    = 600000,
    GO_KAIMLEI_FIRE_FIELD   = 600001,
    GO_KAIMLEI_FLAME_WALL1  = 600002,
    GO_KAIMLEI_FLAME_WALL2  = 600002,
    GO_KAIMLEI_FLAME_WALL3  = 600002,
    GO_KAIMLEI_FLAME_WALL4  = 600002,
};

enum Data
{
    DATA_TEMUSI_FLAME_RING,
};

enum Creatures
{
    BOSS_CREATURE_TEMUSY     = 70000,
    NPC_METEOR_STRIKE        = 70001,
    NPC_FIRE_STRIKE          = 70002,
    NPC_VERGANGENHEIT        = 70003,
    
    BOSS_JANALAI             = 70004,
    BOSS_ZULJIN              = 70005,
    BOSS_HALAZZI             = 70006,
    NPC_EGG_BOMB             = 70007,
    NPC_TRIO_CONTROLLER      = 70008,
};

enum Action
{
    ACTION_INTRO            = 1,
};

#endif

