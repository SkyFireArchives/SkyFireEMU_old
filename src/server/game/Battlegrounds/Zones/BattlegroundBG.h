/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
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

#ifndef __BattlegroundBG_H
#define __BattlegroundBG_H


class Battleground;

enum BG_BG_Timers
{
    BG_BG_FLAG_CAPTURING_TIME   = 60000,
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
