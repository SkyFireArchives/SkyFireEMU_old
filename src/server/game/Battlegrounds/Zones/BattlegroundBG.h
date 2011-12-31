/*
 * Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
 * Copyright (C) 2005-2012 MaNGOS <http://www.getmangos.com/>
 * Copyright (C) 2008-2012 Trinity <http://www.trinitycore.org/>
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

#ifndef __BattlegroundBG_H
#define __BattlegroundBG_H

class Battleground;

enum BG_BG_NodeObjectId
{
    BG_BG_OBJECTID_NODE_BANNER_0    = 205557,       // Lighthouse banner
    BG_BG_OBJECTID_NODE_BANNER_1    = 208782,       // Mine banner
    BG_BG_OBJECTID_NODE_BANNER_2    = 208785,       // Watterworks banner
};

enum BG_BG_ObjectType
{
    BG_BG_OBJECT_BANNER_NEUTRAL          = 0,
    BG_BG_OBJECT_BANNER_CONT_A           = 1,
    BG_BG_OBJECT_BANNER_CONT_H           = 2,
    BG_BG_OBJECT_BANNER_ALLY             = 3,
    BG_BG_OBJECT_BANNER_HORDE            = 4,
    BG_BG_OBJECT_AURA_ALLY               = 5,
    BG_BG_OBJECT_AURA_HORDE              = 6,
    BG_BG_OBJECT_AURA_CONTESTED          = 7,
    BG_BG_OBJECT_GATE_A                  = 24,
    BG_BG_OBJECT_GATE_H                  = 25,
    BG_BG_OBJECT_MAX                     = 26,
};

/* Object id templates from DB */
enum BG_BG_ObjectTypes
{
    // BG_BG_OBJECTID_BANNER_A             =
    // BG_BG_OBJECTID_BANNER_CONT_A        =
    // BG_BG_OBJECTID_BANNER_H             =
    // BG_BG_OBJECTID_BANNER_CONT_H        =

    BG_BG_OBJECTID_GATE_A               = 205496,
    BG_BG_OBJECTID_GATE_H               = 207178
};

enum BG_BG_Timers
{
    BG_BG_FLAG_CAPTURING_TIME   = 60000,
};

enum BG_BG_Score
{
    BG_BG_WARNING_NEAR_VICTORY_SCORE    = 1800,
    BG_BG_MAX_TEAM_SCORE                = 2000
};

/* do NOT change the order, else wrong behaviour */
enum BG_BG_BattlegroundNodes
{
    BG_BG_NODE_LIGHTHOUSE       = 0,
    BG_BG_NODE_WATERWORKS       = 1,
    BG_BG_NODE_MINE             = 2,

    BG_BG_DYNAMIC_NODES_COUNT   = 3,                        // dynamic nodes that can be captured

    BG_BG_SPIRIT_ALIANCE        = 3,
    BG_BG_SPIRIT_HORDE          = 4,

    BG_BG_ALL_NODES_COUNT       = 5,                        // all nodes (dynamic and static)
};

enum BG_BG_NodeStatus
{
    BG_BG_NODE_TYPE_NEUTRAL             = 0,
    BG_BG_NODE_TYPE_CONTESTED           = 1,
    BG_BG_NODE_STATUS_ALLY_CONTESTED    = 1,
    BG_BG_NODE_STATUS_HORDE_CONTESTED   = 2,
    BG_BG_NODE_TYPE_OCCUPIED            = 3,
    BG_BG_NODE_STATUS_ALLY_OCCUPIED     = 3,
    BG_BG_NODE_STATUS_HORDE_OCCUPIED    = 4
};

enum BG_BG_Sounds
{
    BG_BG_SOUND_NODE_CLAIMED            = 8192,
    BG_BG_SOUND_NODE_CAPTURED_ALLIANCE  = 8173,
    BG_BG_SOUND_NODE_CAPTURED_HORDE     = 8213,
    BG_BG_SOUND_NODE_ASSAULTED_ALLIANCE = 8212,
    BG_BG_SOUND_NODE_ASSAULTED_HORDE    = 8174,
    BG_BG_SOUND_NEAR_VICTORY            = 8456
};

enum BG_BG_Objectives
{
    BG_OBJECTIVE_ASSAULT_BASE           = 122,
    BG_OBJECTIVE_DEFEND_BASE            = 123
};

// x, y, z, o, rot0, rot1, rot2, rot3
const float BG_BG_DoorPositions[2][8] = {
    {918.876f, 1336.56f, 27.6195f, 2.77481f, 0.0f, 0.0f, 0.983231f, 0.182367f},
    {1396.15f, 977.014f, 7.43169f, 6.27043f, 0.0f, 0.0f, 0.006378f, -0.99998f}
};

const uint32 BG_BG_TickIntervals[4] = {0, 12000, 6000, 1000};
const uint32 BG_BG_TickPoints[4] = {0, 10, 10, 30};

// WorldSafeLocs ids for 3 nodes, and for ally, and horde starting location
const uint32 BG_BG_GraveyardIds[BG_BG_ALL_NODES_COUNT] = {1735, 1736, 1738, 1739, 1740};

struct BG_BG_BannerTimer
{
    uint32      timer;
    uint8       type;
    uint8       teamIndex;
};

class BattlegroundBGScore : public BattlegroundScore
{
    public:
        BattlegroundBGScore(): BasesAssaulted(0), BasesDefended(0) {};
        virtual ~BattlegroundBGScore() {};
        uint32 BasesAssaulted;
        uint32 BasesDefended;
};

class BattlegroundBG : public Battleground
{
    friend class BattlegroundMgr;

    public:
        BattlegroundBG();
        ~BattlegroundBG();
        void Update(uint32 diff);

        /* inherited from BattlegroundClass */
        virtual void AddPlayer(Player *plr);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        void RemovePlayer(Player *plr, uint64 guid);
        void HandleAreaTrigger(Player *Source, uint32 Trigger);
        bool SetupBattleground();
        void EndBattleground(uint32 winner);

        /* Scorekeeping */
        void UpdatePlayerScore(Player *Source, uint32 type, uint32 value, bool doAddHonor = true);

    private:
};
#endif