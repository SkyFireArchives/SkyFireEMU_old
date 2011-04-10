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

#include "WorldDatabase.h"

bool WorldDatabaseConnection::Open()
{
    if (!MySQLConnection::Open())
        return false;

    if (!m_reconnecting)
        m_stmts.resize(MAX_WORLDDATABASE_STATEMENTS);

    /*
        ##################################
        LOAD YOUR PREPARED STATEMENTS HERE
        ##################################
    */
    PrepareStatement(WORLD_LOAD_QUEST_POOLS, "SELECT entry, pool_entry FROM pool_quest");
    PrepareStatement(WORLD_DEL_CRELINKED_RESPAWN, "DELETE FROM creature_linked_respawn WHERE guid = ?", true);
    PrepareStatement(WORLD_REP_CRELINKED_RESPAWN, "REPLACE INTO creature_linked_respawn (guid,linkedGuid) VALUES (?, ?)", true);
    PrepareStatement(WORLD_DEL_CREATURE_RESPAWN_TIME, "DELETE FROM creature_respawn WHERE guid = ? AND instance = ?", true);
    PrepareStatement(WORLD_ADD_CREATURE_RESPAWN_TIME, "REPLACE INTO creature_respawn VALUES (?, ?, ?)", true);
    PrepareStatement(WORLD_DEL_GAMEOBJECT_RESPAWN_TIMES, "DELETE FROM gameobject_respawn WHERE respawntime <= UNIX_TIMESTAMP()");
    PrepareStatement(WORLD_DEL_GO_RESPAWN_TIME, "DELETE FROM gameobject_respawn WHERE guid = ? AND instance = ?", true);
    PrepareStatement(WORLD_ADD_GO_RESPAWN_TIME, "REPLACE INTO gameobject_respawn VALUES (?, ?, ?)", true);
    PrepareStatement(WORLD_LOAD_CRETEXT, "SELECT entry, groupid, id, text, type, language, probability, emote, duration, sound FROM creature_text");
    return true;
}
