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

#ifndef _GUILDMGR_H
#define _GUILDMGR_H

#include "Guild.h"

class GuildMgr
{
    friend class ACE_Singleton<GuildMgr, ACE_Null_Mutex>;
    GuildMgr();
    ~GuildMgr();

public:
    typedef UNORDERED_MAP<uint32, Guild*> GuildContainer;

    Guild* GetGuildByLeader(uint64 const& guid) const;
    Guild* GetGuildById(uint32 guildId) const;
    Guild* GetGuildByName(const std::string& guildName) const;
    std::string GetGuildNameById(uint32 guildId) const;

    void LoadGuilds();
    void AddGuild(Guild* guild);
    void RemoveGuild(uint32 guildId);

    uint32 GenerateGuildId();
    void SetNextGuildId(uint32 Id) { NextGuildId = Id; }

protected:
    uint32 NextGuildId;
    GuildContainer GuildStore;
};

#define sGuildMgr ACE_Singleton<GuildMgr, ACE_Null_Mutex>::instance()

#endif