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

#include "gamePCH.h"
#include "Common.h"
#include "DatabaseEnv.h"
#include "DBCStores.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "Item.h"
#include "GameObject.h"
#include "Opcodes.h"
#include "Chat.h"
#include "MapManager.h"
#include "Language.h"
#include "World.h"
#include "GameEventMgr.h"
#include "SpellMgr.h"
#include "PoolMgr.h"
#include "AccountMgr.h"
#include "WaypointManager.h"
#include "Util.h"
#include <cctype>
#include <iostream>
#include <fstream>
#include <map>
#include "OutdoorPvPMgr.h"
#include "Transport.h"
#include "TargetedMovementGenerator.h"                      // for HandleNpcUnFollowCommand
#include "CreatureGroups.h"
#include "ScriptMgr.h"

//mute player for some times
bool ChatHandler::HandleMuteCommand(const char* args)
{
    char* nameStr;
    char* delayStr;
    extractOptFirstArg((char*)args, &nameStr, &delayStr);
    if (!delayStr)
        return false;

    char *mutereason = strtok(NULL, "\r");
    std::string mutereasonstr = "No reason";
    if (mutereason != NULL)
         mutereasonstr = mutereason;

    Player* target;
    uint64 target_guid;
    std::string target_name;
    if (!extractPlayerTarget(nameStr, &target, &target_guid, &target_name))
        return false;

    uint32 account_id = target ? target->GetSession()->GetAccountId() : sObjectMgr->GetPlayerAccountIdByGUID(target_guid);

    // find only player from same account if any
    if (!target)
        if (WorldSession* session = sWorld->FindSession(account_id))
            target = session->GetPlayer();

    uint32 notspeaktime = (uint32) atoi(delayStr);

    // must have strong lesser security level
    if (HasLowerSecurity (target, target_guid, true))
        return false;

    time_t mutetime = time(NULL) + notspeaktime*60;

    if (target)
        target->GetSession()->m_muteTime = mutetime;

    LoginDatabase.PExecute("UPDATE account SET mutetime = " UI64FMTD " WHERE id = '%u'", uint64(mutetime), account_id);

    if (target)
        ChatHandler(target).PSendSysMessage(LANG_YOUR_CHAT_DISABLED, notspeaktime, mutereasonstr.c_str());

    std::string nameLink = playerLink(target_name);

    PSendSysMessage(LANG_YOU_DISABLE_CHAT, nameLink.c_str(), notspeaktime, mutereasonstr.c_str());

    return true;
}

//unmute player
bool ChatHandler::HandleUnmuteCommand(const char* args)
{
    Player* target;
    uint64 target_guid;
    std::string target_name;
    if (!extractPlayerTarget((char*)args, &target, &target_guid, &target_name))
        return false;

    uint32 account_id = target ? target->GetSession()->GetAccountId() : sObjectMgr->GetPlayerAccountIdByGUID(target_guid);

    // find only player from same account if any
    if (!target)
        if (WorldSession* session = sWorld->FindSession(account_id))
            target = session->GetPlayer();

    // must have strong lesser security level
    if (HasLowerSecurity (target, target_guid, true))
        return false;

    if (target)
    {
        if (target->CanSpeak())
        {
            SendSysMessage(LANG_CHAT_ALREADY_ENABLED);
            SetSentErrorMessage(true);
            return false;
        }

        target->GetSession()->m_muteTime = 0;
    }

    LoginDatabase.PExecute("UPDATE account SET mutetime = '0' WHERE id = '%u'", account_id);

    if (target)
        ChatHandler(target).PSendSysMessage(LANG_YOUR_CHAT_ENABLED);

    std::string nameLink = playerLink(target_name);

    PSendSysMessage(LANG_YOU_ENABLE_CHAT, nameLink.c_str());
    return true;
}

bool ChatHandler::HandleGoTriggerCommand(const char* args)
{
    Player* _player = m_session->GetPlayer();

    if (!*args)
        return false;

    char *atId = strtok((char*)args, " ");
    if (!atId)
        return false;

    int32 i_atId = atoi(atId);

    if (!i_atId)
        return false;

    AreaTriggerEntry const* at = sAreaTriggerStore.LookupEntry(i_atId);
    if (!at)
    {
        PSendSysMessage(LANG_COMMAND_GOAREATRNOTFOUND, i_atId);
        SetSentErrorMessage(true);
        return false;
    }

    if (!MapManager::IsValidMapCoord(at->mapid, at->x, at->y, at->z))
    {
        PSendSysMessage(LANG_INVALID_TARGET_COORD, at->x, at->y, at->mapid);
        SetSentErrorMessage(true);
        return false;
    }

    // stop flight if need
    if (_player->isInFlight())
    {
        _player->GetMotionMaster()->MovementExpired();
        _player->CleanupAfterTaxiFlight();
    }
    // save only in non-flight case
    else
        _player->SaveRecallPosition();

    _player->TeleportTo(at->mapid, at->x, at->y, at->z, _player->GetOrientation());
    return true;
}

bool ChatHandler::HandleGoGraveyardCommand(const char* args)
{
    Player* _player = m_session->GetPlayer();

    if (!*args)
        return false;

    char *gyId = strtok((char*)args, " ");
    if (!gyId)
        return false;

    int32 i_gyId = atoi(gyId);

    if (!i_gyId)
        return false;

    WorldSafeLocsEntry const* gy = sWorldSafeLocsStore.LookupEntry(i_gyId);
    if (!gy)
    {
        PSendSysMessage(LANG_COMMAND_GRAVEYARDNOEXIST, i_gyId);
        SetSentErrorMessage(true);
        return false;
    }

    if (!MapManager::IsValidMapCoord(gy->map_id, gy->x, gy->y, gy->z))
    {
        PSendSysMessage(LANG_INVALID_TARGET_COORD, gy->x, gy->y, gy->map_id);
        SetSentErrorMessage(true);
        return false;
    }

    // stop flight if need
    if (_player->isInFlight())
    {
        _player->GetMotionMaster()->MovementExpired();
        _player->CleanupAfterTaxiFlight();
    }
    // save only in non-flight case
    else
        _player->SaveRecallPosition();

    _player->TeleportTo(gy->map_id, gy->x, gy->y, gy->z, _player->GetOrientation());
    return true;
}

/** \brief Teleport the GM to the specified creature
*
* .gocreature <GUID>      --> TP using creature.guid
* .gocreature azuregos    --> TP player to the mob with this name
*                             Warning: If there is more than one mob with this name
*                                      you will be teleported to the first one that is found.
* .gocreature id 6109     --> TP player to the mob, that has this creature_template.entry
*                             Warning: If there is more than one mob with this "id"
*                                      you will be teleported to the first one that is found.
*/
//teleport to creature
bool ChatHandler::HandleGoCreatureCommand(const char* args)
{
    if (!*args)
        return false;
    Player* _player = m_session->GetPlayer();

    // "id" or number or [name] Shift-click form |color|Hcreature_entry:creature_id|h[name]|h|r
    char* pParam1 = extractKeyFromLink((char*)args, "Hcreature");
    if (!pParam1)
        return false;

    std::ostringstream whereClause;

    // User wants to teleport to the NPC's template entry
    if (strcmp(pParam1, "id") == 0)
    {
        //sLog->outError("DEBUG: ID found");

        // Get the "creature_template.entry"
        // number or [name] Shift-click form |color|Hcreature_entry:creature_id|h[name]|h|r
        char* tail = strtok(NULL, "");
        if (!tail)
            return false;
        char* cId = extractKeyFromLink(tail, "Hcreature_entry");
        if (!cId)
            return false;

        int32 tEntry = atoi(cId);
        //sLog->outError("DEBUG: ID value: %d", tEntry);
        if (!tEntry)
            return false;

        whereClause << "WHERE id = '" << tEntry << "'";
    }
    else
    {
        //sLog->outError("DEBUG: ID *not found*");

        int32 guid = atoi(pParam1);

        // Number is invalid - maybe the user specified the mob's name
        if (!guid)
        {
            std::string name = pParam1;
            WorldDatabase.EscapeString(name);
            whereClause << ", creature_template WHERE creature.id = creature_template.entry AND creature_template.name "_LIKE_" '" << name << "'";
        }
        else
        {
            whereClause <<  "WHERE guid = '" << guid << "'";
        }
    }
    //sLog->outError("DEBUG: %s", whereClause.c_str());

    QueryResult result = WorldDatabase.PQuery("SELECT position_x, position_y, position_z, orientation, map FROM creature %s", whereClause.str().c_str());
    if (!result)
    {
        SendSysMessage(LANG_COMMAND_GOCREATNOTFOUND);
        SetSentErrorMessage(true);
        return false;
    }
    if (result->GetRowCount() > 1)
        SendSysMessage(LANG_COMMAND_GOCREATMULTIPLE);

    Field *fields = result->Fetch();
    float x = fields[0].GetFloat();
    float y = fields[1].GetFloat();
    float z = fields[2].GetFloat();
    float ort = fields[3].GetFloat();
    int mapid = fields[4].GetUInt16();

    if (!MapManager::IsValidMapCoord(mapid, x, y, z, ort))
    {
        PSendSysMessage(LANG_INVALID_TARGET_COORD, x, y, mapid);
        SetSentErrorMessage(true);
        return false;
    }

    // stop flight if need
    if (_player->isInFlight())
    {
        _player->GetMotionMaster()->MovementExpired();
        _player->CleanupAfterTaxiFlight();
    }
    // save only in non-flight case
    else
        _player->SaveRecallPosition();

    _player->TeleportTo(mapid, x, y, z, ort);
    return true;
}

//teleport to gameobject
bool ChatHandler::HandleGoObjectCommand(const char* args)
{
    if (!*args)
        return false;

    Player* _player = m_session->GetPlayer();

    // number or [name] Shift-click form |color|Hgameobject:go_guid|h[name]|h|r
    char* cId = extractKeyFromLink((char*)args, "Hgameobject");
    if (!cId)
        return false;

    int32 guid = atoi(cId);
    if (!guid)
        return false;

    float x, y, z, ort;
    int mapid;

    // by DB guid
    if (GameObjectData const* go_data = sObjectMgr->GetGOData(guid))
    {
        x = go_data->posX;
        y = go_data->posY;
        z = go_data->posZ;
        ort = go_data->orientation;
        mapid = go_data->mapid;
    }
    else
    {
        SendSysMessage(LANG_COMMAND_GOOBJNOTFOUND);
        SetSentErrorMessage(true);
        return false;
    }

    if (!MapManager::IsValidMapCoord(mapid, x, y, z, ort))
    {
        PSendSysMessage(LANG_INVALID_TARGET_COORD, x, y, mapid);
        SetSentErrorMessage(true);
        return false;
    }

    // stop flight if need
    if (_player->isInFlight())
    {
        _player->GetMotionMaster()->MovementExpired();
        _player->CleanupAfterTaxiFlight();
    }
    // save only in non-flight case
    else
        _player->SaveRecallPosition();

    _player->TeleportTo(mapid, x, y, z, ort);
    return true;
}

bool ChatHandler::HandleGUIDCommand(const char* /*args*/)
{
    uint64 guid = m_session->GetPlayer()->GetSelection();

    if (guid == 0)
    {
        SendSysMessage(LANG_NO_SELECTION);
        SetSentErrorMessage(true);
        return false;
    }

    PSendSysMessage(LANG_OBJECT_GUID, GUID_LOPART(guid), GUID_HIPART(guid));
    return true;
}

bool ChatHandler::HandleModifyRepCommand(const char * args)
{
    if (!*args) return false;

    Player* target = NULL;
    target = getSelectedPlayer();

    if (!target)
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    // check online security
    if (HasLowerSecurity(target, 0))
        return false;

    char* factionTxt = extractKeyFromLink((char*)args, "Hfaction");
    if (!factionTxt)
        return false;

    uint32 factionId = atoi(factionTxt);

    int32 amount = 0;
    char *rankTxt = strtok(NULL, " ");
    if (!factionTxt || !rankTxt)
        return false;

    amount = atoi(rankTxt);
    if ((amount == 0) && (rankTxt[0] != '-') && !isdigit(rankTxt[0]))
    {
        std::string rankStr = rankTxt;
        std::wstring wrankStr;
        if (!Utf8toWStr(rankStr, wrankStr))
            return false;
        wstrToLower(wrankStr);

        int r = 0;
        amount = -42000;
        for (; r < MAX_REPUTATION_RANK; ++r)
        {
            std::string rank = GetSkyFireString(ReputationRankStrIndex[r]);
            if (rank.empty())
                continue;

            std::wstring wrank;
            if (!Utf8toWStr(rank, wrank))
                continue;

            wstrToLower(wrank);

            if (wrank.substr(0, wrankStr.size()) == wrankStr)
            {
                char *deltaTxt = strtok(NULL, " ");
                if (deltaTxt)
                {
                    int32 delta = atoi(deltaTxt);
                    if ((delta < 0) || (delta > ReputationMgr::PointsInRank[r] -1))
                    {
                        PSendSysMessage(LANG_COMMAND_FACTION_DELTA, (ReputationMgr::PointsInRank[r]-1));
                        SetSentErrorMessage(true);
                        return false;
                    }
                    amount += delta;
                }
                break;
            }
            amount += ReputationMgr::PointsInRank[r];
        }
        if (r >= MAX_REPUTATION_RANK)
        {
            PSendSysMessage(LANG_COMMAND_FACTION_INVPARAM, rankTxt);
            SetSentErrorMessage(true);
            return false;
        }
    }

    FactionEntry const *factionEntry = sFactionStore.LookupEntry(factionId);

    if (!factionEntry)
    {
        PSendSysMessage(LANG_COMMAND_FACTION_UNKNOWN, factionId);
        SetSentErrorMessage(true);
        return false;
    }

    if (factionEntry->reputationListID < 0)
    {
        PSendSysMessage(LANG_COMMAND_FACTION_NOREP_ERROR, factionEntry->name, factionId);
        SetSentErrorMessage(true);
        return false;
    }

    target->GetReputationMgr().SetReputation(factionEntry, amount);
    PSendSysMessage(LANG_COMMAND_MODIFY_REP, factionEntry->name, factionId,
        GetNameLink(target).c_str(), target->GetReputationMgr().GetReputation(factionEntry));
    return true;
}

//move item to other slot
bool ChatHandler::HandleItemMoveCommand(const char* args)
{
    if (!*args)
        return false;
    uint8 srcslot, dstslot;

    char* pParam1 = strtok((char*)args, " ");
    if (!pParam1)
        return false;

    char* pParam2 = strtok(NULL, " ");
    if (!pParam2)
        return false;

    srcslot = (uint8)atoi(pParam1);
    dstslot = (uint8)atoi(pParam2);

    if (srcslot == dstslot)
        return true;

    if (!m_session->GetPlayer()->IsValidPos(INVENTORY_SLOT_BAG_0, srcslot, true))
        return false;

    if (!m_session->GetPlayer()->IsValidPos(INVENTORY_SLOT_BAG_0, dstslot, false))
        return false;

    uint16 src = ((INVENTORY_SLOT_BAG_0 << 8) | srcslot);
    uint16 dst = ((INVENTORY_SLOT_BAG_0 << 8) | dstslot);

    m_session->GetPlayer()->SwapItem(src, dst);

    return true;
}

//demorph player or unit
bool ChatHandler::HandleDeMorphCommand(const char* /*args*/)
{
    Unit *target = getSelectedUnit();
    if (!target)
        target = m_session->GetPlayer();

    // check online security
    else if (target->GetTypeId() == TYPEID_PLAYER && HasLowerSecurity((Player*)target, 0))
        return false;

    target->DeMorph();

    return true;
}

//morph creature or player
bool ChatHandler::HandleModifyMorphCommand(const char* args)
{
    if (!*args)
        return false;

    uint16 display_id = (uint16)atoi((char*)args);

    Unit *target = getSelectedUnit();
    if (!target)
        target = m_session->GetPlayer();

    // check online security
    else if (target->GetTypeId() == TYPEID_PLAYER && HasLowerSecurity((Player*)target, 0))
        return false;

    target->SetDisplayId(display_id);

    return true;
}

//kick player
bool ChatHandler::HandleKickPlayerCommand(const char *args)
{
    const char* kickName = strtok((char*)args, " ");
    Player* target = NULL;
    std::string playerName;
    if (!extractPlayerTarget((char*)args, &target, NULL, &playerName))
        return false;

    if (m_session && target == m_session->GetPlayer())
    {
        SendSysMessage(LANG_COMMAND_KICKSELF);
        SetSentErrorMessage(true);
        return false;
    }

    // check online security
    if (HasLowerSecurity(target, 0))
        return false;

    if (sWorld->getBoolConfig(CONFIG_SHOW_KICK_IN_WORLD))
        sWorld->SendWorldText(LANG_COMMAND_KICKMESSAGE, playerName.c_str());
    else
        PSendSysMessage(LANG_COMMAND_KICKMESSAGE, playerName.c_str());

    target->GetSession()->KickPlayer();
    return true;
}

//show info of player
bool ChatHandler::HandlePInfoCommand(const char* args)
{
    Player* target;
    uint64 target_guid;
    std::string target_name;
    if (!extractPlayerTarget((char*)args, &target, &target_guid, &target_name))
        return false;

    uint32 accId = 0;
    uint64 money = 0;
    uint32 total_player_time = 0;
    uint8 level = 0;
    uint32 latency = 0;
    uint8 race;
    uint8 Class;
    int64 muteTime = 0;
    int64 banTime = -1;

    // get additional information from Player object
    if (target)
    {
        // check online security
        if (HasLowerSecurity(target, 0))
            return false;

        accId = target->GetSession()->GetAccountId();
        money = target->GetMoney();
        total_player_time = target->GetTotalPlayedTime();
        level = target->getLevel();
        latency = target->GetSession()->GetLatency();
        race = target->getRace();
        Class = target->getClass();
        muteTime = target->GetSession()->m_muteTime;
    }
    // get additional information from DB
    else
    {
        // check offline security
        if (HasLowerSecurity(NULL, target_guid))
            return false;

        //                                                     0          1      2      3        4     5
        QueryResult result = CharacterDatabase.PQuery("SELECT totaltime, level, money, account, race, class FROM characters WHERE guid = '%u'", GUID_LOPART(target_guid));
        if (!result)
            return false;

        Field *fields = result->Fetch();
        total_player_time = fields[0].GetUInt32();
        level = fields[1].GetUInt32();
        money = fields[2].GetUInt64();
        accId = fields[3].GetUInt32();
        race = fields[4].GetUInt8();
        Class = fields[5].GetUInt8();
    }

    std::string username = GetSkyFireString(LANG_ERROR);
    std::string email = GetSkyFireString(LANG_ERROR);
    std::string last_ip = GetSkyFireString(LANG_ERROR);
    uint32 security = 0;
    std::string last_login = GetSkyFireString(LANG_ERROR);

    QueryResult result = LoginDatabase.PQuery("SELECT a.username, aa.gmlevel, a.email, a.last_ip, a.last_login, a.mutetime "
        "FROM account a "
        "LEFT JOIN account_access aa "
        "ON (a.id = aa.id) "
        "WHERE a.id = '%u'", accId);
    if (result)
    {
        Field* fields = result->Fetch();
        username = fields[0].GetString();
        security = fields[1].GetUInt32();
        email = fields[2].GetString();
        muteTime = fields[5].GetUInt64();

        if (email.empty())
            email = "-";

        if (!m_session || m_session->GetSecurity() >= AccountTypes(security))
        {
            last_ip = fields[3].GetString();
            last_login = fields[4].GetString();
        }
        else
        {
            last_ip = "-";
            last_login = "-";
        }
    }

    std::string nameLink = playerLink(target_name);

    PSendSysMessage(LANG_PINFO_ACCOUNT, (target?"":GetSkyFireString(LANG_OFFLINE)), nameLink.c_str(), GUID_LOPART(target_guid), username.c_str(), accId, email.c_str(), security, last_ip.c_str(), last_login.c_str(), latency);

    if (QueryResult result = LoginDatabase.PQuery("SELECT unbandate, bandate = unbandate FROM account_banned WHERE id = '%u' AND active ORDER BY bandate ASC LIMIT 1", accId))
    {
        Field * fields = result->Fetch();
        banTime = fields[1].GetBool() ? 0 : fields[0].GetUInt64();
    }
    else if (QueryResult result = CharacterDatabase.PQuery("SELECT unbandate, bandate = unbandate FROM character_banned WHERE guid = '%u' AND active ORDER BY bandate ASC LIMIT 1", GUID_LOPART(target_guid)))
    {
        Field * fields = result->Fetch();
        banTime = fields[1].GetBool() ? 0 : fields[0].GetUInt64();
    }

    muteTime = muteTime - time(NULL);
    if (muteTime > 0 || banTime >= 0)
        PSendSysMessage(LANG_PINFO_MUTE_BAN, muteTime > 0 ? secsToTimeString(muteTime, true).c_str() : "---", !banTime ? "perm." : (banTime > 0 ? secsToTimeString(banTime - time(NULL), true).c_str() : "---"));

    std::string race_s, Class_s;
    switch(race)
    {
    case RACE_HUMAN:            race_s = "Human";       break;
    case RACE_ORC:              race_s = "Orc";         break;
    case RACE_DWARF:            race_s = "Dwarf";       break;
    case RACE_NIGHTELF:         race_s = "Night Elf";   break;
    case RACE_UNDEAD_PLAYER:    race_s = "Undead";      break;
    case RACE_TAUREN:           race_s = "Tauren";      break;
    case RACE_GNOME:            race_s = "Gnome";       break;
    case RACE_TROLL:            race_s = "Troll";       break;
    case RACE_BLOODELF:         race_s = "Blood Elf";   break;
    case RACE_DRAENEI:          race_s = "Draenei";     break;
    case RACE_WORGEN:           race_s = "Worgen";      break;
    case RACE_GOBLIN:           race_s = "Goblin";      break;
    }
    switch(Class)
    {
    case CLASS_WARRIOR:         Class_s = "Warrior";        break;
    case CLASS_PALADIN:         Class_s = "Paladin";        break;
    case CLASS_HUNTER:          Class_s = "Hunter";         break;
    case CLASS_ROGUE:           Class_s = "Rogue";          break;
    case CLASS_PRIEST:          Class_s = "Priest";         break;
    case CLASS_DEATH_KNIGHT:    Class_s = "Death Knight";   break;
    case CLASS_SHAMAN:          Class_s = "Shaman";         break;
    case CLASS_MAGE:            Class_s = "Mage";           break;
    case CLASS_WARLOCK:         Class_s = "Warlock";        break;
    case CLASS_DRUID:           Class_s = "Druid";          break;
    }

    std::string timeStr = secsToTimeString(total_player_time, true, true);
    uint32 gold = money /GOLD;
    uint32 silv = (money % GOLD) / SILVER;
    uint32 copp = (money % GOLD) % SILVER;
    PSendSysMessage(LANG_PINFO_LEVEL, race_s.c_str(), Class_s.c_str(), timeStr.c_str(), level, gold, silv, copp);

    return true;
}

//set temporary phase mask for player
bool ChatHandler::HandleModifyPhaseCommand(const char* args)
{
    if (!*args)
        return false;

    uint32 phasemask = (uint32)atoi((char*)args);

    Unit *target = getSelectedUnit();
    if (!target)
        target = m_session->GetPlayer();

    // check online security
    else if (target->GetTypeId() == TYPEID_PLAYER && HasLowerSecurity((Player*)target, 0))
        return false;

    target->SetPhaseMask(phasemask, true);

    return true;
}

//rename characters
bool ChatHandler::HandleCharacterRenameCommand(const char* args)
{
    Player* target;
    uint64 target_guid;
    std::string target_name;
    if (!extractPlayerTarget((char*)args, &target, &target_guid, &target_name))
        return false;

    if (target)
    {
        // check online security
        if (HasLowerSecurity(target, 0))
            return false;

        PSendSysMessage(LANG_RENAME_PLAYER, GetNameLink(target).c_str());
        target->SetAtLoginFlag(AT_LOGIN_RENAME);
    }
    else
    {
        // check offline security
        if (HasLowerSecurity(NULL, target_guid))
            return false;

        std::string oldNameLink = playerLink(target_name);

        PSendSysMessage(LANG_RENAME_PLAYER_GUID, oldNameLink.c_str(), GUID_LOPART(target_guid));
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '1' WHERE guid = '%u'", GUID_LOPART(target_guid));
    }

    return true;
}

// customize characters
bool ChatHandler::HandleCharacterCustomizeCommand(const char* args)
{
    Player* target;
    uint64 target_guid;
    std::string target_name;
    if (!extractPlayerTarget((char*)args, &target, &target_guid, &target_name))
        return false;

    if (target)
    {
        PSendSysMessage(LANG_CUSTOMIZE_PLAYER, GetNameLink(target).c_str());
        target->SetAtLoginFlag(AT_LOGIN_CUSTOMIZE);
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '8' WHERE guid = '%u'", target->GetGUIDLow());
    }
    else
    {
        std::string oldNameLink = playerLink(target_name);

        PSendSysMessage(LANG_CUSTOMIZE_PLAYER_GUID, oldNameLink.c_str(), GUID_LOPART(target_guid));
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '8' WHERE guid = '%u'", GUID_LOPART(target_guid));
    }

    return true;
}

bool ChatHandler::HandleCharacterChangeFactionCommand(const char * args)
{
    Player* target;
    uint64 target_guid;
    std::string target_name;

    if (!extractPlayerTarget((char*)args, &target, &target_guid, &target_name))
        return false;

    if (target)
    {
        // TODO : add text into database
        PSendSysMessage(LANG_CUSTOMIZE_PLAYER, GetNameLink(target).c_str());
        target->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '64' WHERE guid = %u", target->GetGUIDLow());
    }
    else
    {
        std::string oldNameLink = playerLink(target_name);

        // TODO : add text into database
        PSendSysMessage(LANG_CUSTOMIZE_PLAYER_GUID, oldNameLink.c_str(), GUID_LOPART(target_guid));
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '64' WHERE guid = %u", GUID_LOPART(target_guid));
    }

    return true;
}

bool ChatHandler::HandleCharacterChangeRaceCommand(const char * args)
{
    Player* target;
    uint64 target_guid;
    std::string target_name;
    if (!extractPlayerTarget((char*)args, &target, &target_guid, &target_name))
        return false;

    if (target)
    {
        // TODO : add text into database
        PSendSysMessage(LANG_CUSTOMIZE_PLAYER, GetNameLink(target).c_str());
        target->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '128' WHERE guid = %u", target->GetGUIDLow());
    }
    else
    {
        std::string oldNameLink = playerLink(target_name);

        // TODO : add text into database
        PSendSysMessage(LANG_CUSTOMIZE_PLAYER_GUID, oldNameLink.c_str(), GUID_LOPART(target_guid));
        CharacterDatabase.PExecute("UPDATE characters SET at_login = at_login | '128' WHERE guid = %u", GUID_LOPART(target_guid));
    }

    return true;
}

bool ChatHandler::HandleCharacterReputationCommand(const char* args)
{
    Player* target;
    if (!extractPlayerTarget((char*)args, &target))
        return false;

    LocaleConstant loc = GetSessionDbcLocale();

    FactionStateList const& targetFSL = target->GetReputationMgr().GetStateList();
    for (FactionStateList::const_iterator itr = targetFSL.begin(); itr != targetFSL.end(); ++itr)
    {
        FactionEntry const *factionEntry = sFactionStore.LookupEntry(itr->second.ID);
        char const* factionName = factionEntry ? factionEntry->name : "#Not found#";
        ReputationRank rank = target->GetReputationMgr().GetRank(factionEntry);
        std::string rankName = GetSkyFireString(ReputationRankStrIndex[rank]);
        std::ostringstream ss;
        if (m_session)
            ss << itr->second.ID << " - |cffffffff|Hfaction:" << itr->second.ID << "|h[" << factionName << " " << localeNames[loc] << "]|h|r";
        else
            ss << itr->second.ID << " - " << factionName << " " << localeNames[loc];

        ss << " " << rankName << " (" << target->GetReputationMgr().GetReputation(factionEntry) << ")";

        if (itr->second.Flags & FACTION_FLAG_VISIBLE)
            ss << GetSkyFireString(LANG_FACTION_VISIBLE);
        if (itr->second.Flags & FACTION_FLAG_AT_WAR)
            ss << GetSkyFireString(LANG_FACTION_ATWAR);
        if (itr->second.Flags & FACTION_FLAG_PEACE_FORCED)
            ss << GetSkyFireString(LANG_FACTION_PEACE_FORCED);
        if (itr->second.Flags & FACTION_FLAG_HIDDEN)
            ss << GetSkyFireString(LANG_FACTION_HIDDEN);
        if (itr->second.Flags & FACTION_FLAG_INVISIBLE_FORCED)
            ss << GetSkyFireString(LANG_FACTION_INVISIBLE_FORCED);
        if (itr->second.Flags & FACTION_FLAG_INACTIVE)
            ss << GetSkyFireString(LANG_FACTION_INACTIVE);

        SendSysMessage(ss.str().c_str());
    }
    return true;
}

//change standstate
bool ChatHandler::HandleModifyStandStateCommand(const char* args)
{
    if (!*args)
        return false;

    uint32 anim_id = atoi((char*)args);
    m_session->GetPlayer()->SetUInt32Value(UNIT_NPC_EMOTESTATE , anim_id);

    return true;
}

bool ChatHandler::HandleLookupEventCommand(const char* args)
{
    if (!*args)
        return false;

    std::string namepart = args;
    std::wstring wnamepart;

    // converting string that we try to find to lower case
    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    wstrToLower(wnamepart);

    bool found = false;
    uint32 count = 0;
    uint32 maxResults = sWorld->getIntConfig(CONFIG_MAX_RESULTS_LOOKUP_COMMANDS);

    GameEventMgr::GameEventDataMap const& events = sGameEventMgr->GetEventMap();
    GameEventMgr::ActiveEvents const& activeEvents = sGameEventMgr->GetActiveEventList();

    for (uint32 id = 0; id < events.size(); ++id)
    {
        GameEventData const& eventData = events[id];

        std::string descr = eventData.description;
        if (descr.empty())
            continue;

        if (Utf8FitTo(descr, wnamepart))
        {
            if (maxResults && count++ == maxResults)
            {
                PSendSysMessage(LANG_COMMAND_LOOKUP_MAX_RESULTS, maxResults);
                return true;
            }

            char const* active = activeEvents.find(id) != activeEvents.end() ? GetSkyFireString(LANG_ACTIVE) : "";

            if (m_session)
                PSendSysMessage(LANG_EVENT_ENTRY_LIST_CHAT, id, id, eventData.description.c_str(), active);
            else
                PSendSysMessage(LANG_EVENT_ENTRY_LIST_CONSOLE, id, eventData.description.c_str(), active);

            if (!found)
                found = true;
        }
    }

    if (!found)
        SendSysMessage(LANG_NOEVENTFOUND);

    return true;
}

bool ChatHandler::HandleEventActiveListCommand(const char* /*args*/)
{
    uint32 counter = 0;

    GameEventMgr::GameEventDataMap const& events = sGameEventMgr->GetEventMap();
    GameEventMgr::ActiveEvents const& activeEvents = sGameEventMgr->GetActiveEventList();

    char const* active = GetSkyFireString(LANG_ACTIVE);

    for (GameEventMgr::ActiveEvents::const_iterator itr = activeEvents.begin(); itr != activeEvents.end(); ++itr)
    {
        uint32 event_id = *itr;
        GameEventData const& eventData = events[event_id];

        if (m_session)
            PSendSysMessage(LANG_EVENT_ENTRY_LIST_CHAT, event_id, event_id, eventData.description.c_str(), active);
        else
            PSendSysMessage(LANG_EVENT_ENTRY_LIST_CONSOLE, event_id, eventData.description.c_str(), active);

        ++counter;
    }

    if (counter == 0)
        SendSysMessage(LANG_NOEVENTFOUND);

    return true;
}

bool ChatHandler::HandleEventInfoCommand(const char* args)
{
    if (!*args)
        return false;

    // id or [name] Shift-click form |color|Hgameevent:id|h[name]|h|r
    char* cId = extractKeyFromLink((char*)args, "Hgameevent");
    if (!cId)
        return false;

    uint32 event_id = atoi(cId);

    GameEventMgr::GameEventDataMap const& events = sGameEventMgr->GetEventMap();

    if (event_id >=events.size())
    {
        SendSysMessage(LANG_EVENT_NOT_EXIST);
        SetSentErrorMessage(true);
        return false;
    }

    GameEventData const& eventData = events[event_id];
    if (!eventData.isValid())
    {
        SendSysMessage(LANG_EVENT_NOT_EXIST);
        SetSentErrorMessage(true);
        return false;
    }

    GameEventMgr::ActiveEvents const& activeEvents = sGameEventMgr->GetActiveEventList();
    bool active = activeEvents.find(event_id) != activeEvents.end();
    char const* activeStr = active ? GetSkyFireString(LANG_ACTIVE) : "";

    std::string startTimeStr = TimeToTimestampStr(eventData.start);
    std::string endTimeStr = TimeToTimestampStr(eventData.end);

    uint32 delay = sGameEventMgr->NextCheck(event_id);
    time_t nextTime = time(NULL)+delay;
    std::string nextStr = nextTime >= eventData.start && nextTime < eventData.end ? TimeToTimestampStr(time(NULL)+delay) : "-";

    std::string occurenceStr = secsToTimeString(eventData.occurence * MINUTE);
    std::string lengthStr = secsToTimeString(eventData.length * MINUTE);

    PSendSysMessage(LANG_EVENT_INFO, event_id, eventData.description.c_str(), activeStr,
        startTimeStr.c_str(), endTimeStr.c_str(), occurenceStr.c_str(), lengthStr.c_str(),
        nextStr.c_str());
    return true;
}

bool ChatHandler::HandleEventStartCommand(const char* args)
{
    if (!*args)
        return false;

    // id or [name] Shift-click form |color|Hgameevent:id|h[name]|h|r
    char* cId = extractKeyFromLink((char*)args, "Hgameevent");
    if (!cId)
        return false;

    int32 event_id = atoi(cId);

    GameEventMgr::GameEventDataMap const& events = sGameEventMgr->GetEventMap();

    if (event_id < 1 || uint32(event_id) >= events.size())
    {
        SendSysMessage(LANG_EVENT_NOT_EXIST);
        SetSentErrorMessage(true);
        return false;
    }

    GameEventData const& eventData = events[event_id];
    if (!eventData.isValid())
    {
        SendSysMessage(LANG_EVENT_NOT_EXIST);
        SetSentErrorMessage(true);
        return false;
    }

    GameEventMgr::ActiveEvents const& activeEvents = sGameEventMgr->GetActiveEventList();
    if (activeEvents.find(event_id) != activeEvents.end())
    {
        PSendSysMessage(LANG_EVENT_ALREADY_ACTIVE, event_id);
        SetSentErrorMessage(true);
        return false;
    }

    sGameEventMgr->StartEvent(event_id, true);
    return true;
}

bool ChatHandler::HandleEventStopCommand(const char* args)
{
    if (!*args)
        return false;

    // id or [name] Shift-click form |color|Hgameevent:id|h[name]|h|r
    char* cId = extractKeyFromLink((char*)args, "Hgameevent");
    if (!cId)
        return false;

    int32 event_id = atoi(cId);

    GameEventMgr::GameEventDataMap const& events = sGameEventMgr->GetEventMap();

    if (event_id < 1 || uint32(event_id) >= events.size())
    {
        SendSysMessage(LANG_EVENT_NOT_EXIST);
        SetSentErrorMessage(true);
        return false;
    }

    GameEventData const& eventData = events[event_id];
    if (!eventData.isValid())
    {
        SendSysMessage(LANG_EVENT_NOT_EXIST);
        SetSentErrorMessage(true);
        return false;
    }

    GameEventMgr::ActiveEvents const& activeEvents = sGameEventMgr->GetActiveEventList();

    if (activeEvents.find(event_id) == activeEvents.end())
    {
        PSendSysMessage(LANG_EVENT_NOT_ACTIVE, event_id);
        SetSentErrorMessage(true);
        return false;
    }

    sGameEventMgr->StopEvent(event_id, true);
    return true;
}

bool ChatHandler::HandleCombatStopCommand(const char* args)
{
    Player* target;
    if (!extractPlayerTarget((char*)args, &target))
        return false;

    // check online security
    if (HasLowerSecurity(target, 0))
        return false;

    target->CombatStop();
    target->getHostileRefManager().deleteReferences();
    return true;
}

void ChatHandler::HandleLearnSkillRecipesHelper(Player* player, uint32 skill_id)
{
    uint32 classmask = player->getClassMask();

    for (uint32 j = 0; j < sSkillLineAbilityStore.GetNumRows(); ++j)
    {
        SkillLineAbilityEntry const *skillLine = sSkillLineAbilityStore.LookupEntry(j);
        if (!skillLine)
            continue;

        // wrong skill
        if (skillLine->skillId != skill_id)
            continue;

        // not high rank
        if (skillLine->forward_spellid)
            continue;

        // skip racial skills
        if (skillLine->racemask != 0)
            continue;

        // skip wrong class skills
        if (skillLine->classmask && (skillLine->classmask & classmask) == 0)
            continue;

        SpellEntry const* spellInfo = sSpellStore.LookupEntry(skillLine->spellId);
        if (!spellInfo || !SpellMgr::IsSpellValid(spellInfo, player, false))
            continue;

        player->learnSpell(skillLine->spellId, false);
    }
}

bool ChatHandler::HandleLearnAllCraftsCommand(const char* /*args*/)
{
    for (uint32 i = 0; i < sSkillLineStore.GetNumRows(); ++i)
    {
        SkillLineEntry const *skillInfo = sSkillLineStore.LookupEntry(i);
        if (!skillInfo)
            continue;

        if ((skillInfo->categoryId == SKILL_CATEGORY_PROFESSION || skillInfo->categoryId == SKILL_CATEGORY_SECONDARY) &&
            skillInfo->canLink)                             // only prof. with recipes have
        {
            HandleLearnSkillRecipesHelper(m_session->GetPlayer(), skillInfo->id);
        }
    }

    SendSysMessage(LANG_COMMAND_LEARN_ALL_CRAFT);
    return true;
}

bool ChatHandler::HandleLearnAllRecipesCommand(const char* args)
{
    //  Learns all recipes of specified profession and sets skill to max
    //  Example: .learn all_recipes enchanting

    Player* target = getSelectedPlayer();
    if (!target)
    {
        SendSysMessage(LANG_PLAYER_NOT_FOUND);
        return false;
    }

    if (!*args)
        return false;

    std::wstring wnamepart;

    if (!Utf8toWStr(args, wnamepart))
        return false;

    // converting string that we try to find to lower case
    wstrToLower(wnamepart);

    std::string name;

    SkillLineEntry const *targetSkillInfo = NULL;
    for (uint32 i = 1; i < sSkillLineStore.GetNumRows(); ++i)
    {
        SkillLineEntry const *skillInfo = sSkillLineStore.LookupEntry(i);
        if (!skillInfo)
            continue;

        if ((skillInfo->categoryId != SKILL_CATEGORY_PROFESSION &&
            skillInfo->categoryId != SKILL_CATEGORY_SECONDARY) ||
            !skillInfo->canLink)                            // only prof with recipes have set
            continue;

        int loc = GetSessionDbcLocale();
        name = skillInfo->name[loc];
        if (name.empty())
            continue;

        if (!Utf8FitTo(name, wnamepart))
        {
            loc = 0;
            for (; loc < TOTAL_LOCALES; ++loc)
            {
                if (loc == GetSessionDbcLocale())
                    continue;

                name = skillInfo->name[loc];
                if (name.empty())
                    continue;

                if (Utf8FitTo(name, wnamepart))
                    break;
            }
        }

        if (loc < TOTAL_LOCALES)
        {
            targetSkillInfo = skillInfo;
            break;
        }
    }

    if (!targetSkillInfo)
        return false;

    HandleLearnSkillRecipesHelper(target, targetSkillInfo->id);

    uint16 maxLevel = target->GetPureMaxSkillValue(targetSkillInfo->id);
    target->SetSkill(targetSkillInfo->id, target->GetSkillStep(targetSkillInfo->id), maxLevel, maxLevel);
    PSendSysMessage(LANG_COMMAND_LEARN_ALL_RECIPES, name.c_str());
    return true;
}

bool ChatHandler::HandleLookupPlayerIpCommand(const char* args)
{
    if (!*args)
        return false;

    std::string ip = strtok ((char*)args, " ");
    char* limit_str = strtok (NULL, " ");
    int32 limit = limit_str ? atoi (limit_str) : -1;

    LoginDatabase.EscapeString (ip);

    QueryResult result = LoginDatabase.PQuery ("SELECT id, username FROM account WHERE last_ip = '%s'", ip.c_str ());

    return LookupPlayerSearchCommand (result, limit);
}

bool ChatHandler::HandleLookupPlayerAccountCommand(const char* args)
{
    if (!*args)
        return false;

    std::string account = strtok ((char*)args, " ");
    char* limit_str = strtok (NULL, " ");
    int32 limit = limit_str ? atoi (limit_str) : -1;

    if (!AccountMgr::normalizeString (account))
        return false;

    LoginDatabase.EscapeString (account);

    QueryResult result = LoginDatabase.PQuery ("SELECT id, username FROM account WHERE username = '%s'", account.c_str ());

    return LookupPlayerSearchCommand (result, limit);
}

bool ChatHandler::HandleLookupPlayerEmailCommand(const char* args)
{
    if (!*args)
        return false;

    std::string email = strtok ((char*)args, " ");
    char* limit_str = strtok (NULL, " ");
    int32 limit = limit_str ? atoi (limit_str) : -1;

    LoginDatabase.EscapeString (email);

    QueryResult result = LoginDatabase.PQuery ("SELECT id, username FROM account WHERE email = '%s'", email.c_str ());

    return LookupPlayerSearchCommand (result, limit);
}

bool ChatHandler::LookupPlayerSearchCommand(QueryResult result, int32 limit)
{
    if (!result)
    {
        PSendSysMessage(LANG_NO_PLAYERS_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    int i = 0;
    uint32 count = 0;
    uint32 maxResults = sWorld->getIntConfig(CONFIG_MAX_RESULTS_LOOKUP_COMMANDS);
    do
    {
        if (maxResults && count++ == maxResults)
        {
            PSendSysMessage(LANG_COMMAND_LOOKUP_MAX_RESULTS, maxResults);
            return true;
        }

        Field* fields = result->Fetch();
        uint32 acc_id = fields[0].GetUInt32();
        std::string acc_name = fields[1].GetString();

        QueryResult chars = CharacterDatabase.PQuery("SELECT guid, name FROM characters WHERE account = '%u'", acc_id);
        if (chars)
        {
            PSendSysMessage(LANG_LOOKUP_PLAYER_ACCOUNT, acc_name.c_str(), acc_id);

            uint64 guid = 0;
            std::string name;

            do
            {
                Field* charfields = chars->Fetch();
                guid = charfields[0].GetUInt64();
                name = charfields[1].GetString();

                PSendSysMessage(LANG_LOOKUP_PLAYER_CHARACTER, name.c_str(), guid);
                ++i;
            } while (chars->NextRow() && (limit == -1 || i < limit));
        }
    } while (result->NextRow());

    if (i == 0)                                                // empty accounts only
    {
        PSendSysMessage(LANG_NO_PLAYERS_FOUND);
        SetSentErrorMessage(true);
        return false;
    }

    return true;
}

/// Triggering corpses expire check in world
bool ChatHandler::HandleServerCorpsesCommand(const char* /*args*/)
{
    sObjectAccessor->RemoveOldCorpses();
    return true;
}

bool ChatHandler::HandleRepairitemsCommand(const char* args)
{
    Player* target;
    if (!extractPlayerTarget((char*)args, &target))
        return false;

    // check online security
    if (HasLowerSecurity(target, 0))
        return false;

    // Repair items
    target->DurabilityRepairAll(false, 0, false);

    PSendSysMessage(LANG_YOU_REPAIR_ITEMS, GetNameLink(target).c_str());
    if (needReportToTarget(target))
        ChatHandler(target).PSendSysMessage(LANG_YOUR_ITEMS_REPAIRED, GetNameLink().c_str());
    return true;
}

bool ChatHandler::HandleWaterwalkCommand(const char* args)
{
    if (!*args)
        return false;

    Player *player = getSelectedPlayer();

    if (!player)
    {
        PSendSysMessage(LANG_NO_CHAR_SELECTED);
        SetSentErrorMessage(true);
        return false;
    }

    // check online security
    if (HasLowerSecurity(player, 0))
        return false;

    if (strncmp(args, "on", 3) == 0)
        player->SetMovement(MOVE_WATER_WALK);               // ON
    else if (strncmp(args, "off", 4) == 0)
        player->SetMovement(MOVE_LAND_WALK);                // OFF
    else
    {
        SendSysMessage(LANG_USE_BOL);
        return false;
    }

    PSendSysMessage(LANG_YOU_SET_WATERWALK, args, GetNameLink(player).c_str());
    if (needReportToTarget(player))
        ChatHandler(player).PSendSysMessage(LANG_YOUR_WATERWALK_SET, args, GetNameLink().c_str());
    return true;
}

bool ChatHandler::HandleCreatePetCommand(const char* /*args*/)
{
    Player *player = m_session->GetPlayer();
    Creature *creatureTarget = getSelectedCreature();

    if (!creatureTarget || creatureTarget->isPet() || creatureTarget->GetTypeId() == TYPEID_PLAYER)
    {
        PSendSysMessage(LANG_SELECT_CREATURE);
        SetSentErrorMessage(true);
        return false;
    }

    CreatureInfo const* cInfo = ObjectMgr::GetCreatureTemplate(creatureTarget->GetEntry());
    // Creatures with family 0 crashes the server
    if (cInfo->family == 0)
    {
        PSendSysMessage("This creature cannot be tamed. (family id: 0).");
        SetSentErrorMessage(true);
        return false;
    }

    if (player->GetPetGUID())
    {
        PSendSysMessage("You already have a pet");
        SetSentErrorMessage(true);
        return false;
    }

    // Everything looks OK, create new pet
    Pet* pet = new Pet(player, HUNTER_PET);

    if (!pet)
      return false;

    if (!pet->CreateBaseAtCreature(creatureTarget))
    {
        delete pet;
        PSendSysMessage("Error 1");
        return false;
    }

    creatureTarget->setDeathState(JUST_DIED);
    creatureTarget->RemoveCorpse();
    creatureTarget->SetHealth(0); // just for nice GM-mode view

    pet->SetUInt64Value(UNIT_FIELD_CREATEDBY, player->GetGUID());
    pet->SetUInt32Value(UNIT_FIELD_FACTIONTEMPLATE, player->getFaction());

    if (!pet->InitStatsForLevel(creatureTarget->getLevel()))
    {
        sLog->outError("InitStatsForLevel() in EffectTameCreature failed! Pet deleted.");
        PSendSysMessage("Error 2");
        delete pet;
        return false;
    }

    // prepare visual effect for levelup
    pet->SetUInt32Value(UNIT_FIELD_LEVEL, creatureTarget->getLevel()-1);

    pet->GetCharmInfo()->SetPetNumber(sObjectMgr->GeneratePetNumber(), true);
    // this enables pet details window (Shift+P)
    pet->InitPetCreateSpells();
    pet->SetFullHealth();

    pet->GetMap()->Add(pet->ToCreature());

    // visual effect for levelup
    pet->SetUInt32Value(UNIT_FIELD_LEVEL, creatureTarget->getLevel());

    player->SetMinion(pet, true, PET_SLOT_UNK_SLOT);
    pet->SavePetToDB(PET_SLOT_ACTUAL_PET_SLOT);
    player->PetSpellInitialize();

    return true;
}

bool ChatHandler::HandlePetLearnCommand(const char* args)
{
    if (!*args)
        return false;

    Player *plr = m_session->GetPlayer();
    Pet *pet = plr->GetPet();

    if (!pet)
    {
        PSendSysMessage("You have no pet");
        SetSentErrorMessage(true);
        return false;
    }

    uint32 spellId = extractSpellIdFromLink((char*)args);

    if (!spellId || !sSpellStore.LookupEntry(spellId))
        return false;

    // Check if pet already has it
    if (pet->HasSpell(spellId))
    {
        PSendSysMessage("Pet already has spell: %u", spellId);
        SetSentErrorMessage(true);
        return false;
    }

    // Check if spell is valid
    SpellEntry const* spellInfo = sSpellStore.LookupEntry(spellId);
    if (!spellInfo || !SpellMgr::IsSpellValid(spellInfo))
    {
        PSendSysMessage(LANG_COMMAND_SPELL_BROKEN, spellId);
        SetSentErrorMessage(true);
        return false;
    }

    pet->learnSpell(spellId);

    PSendSysMessage("Pet has learned spell %u", spellId);
    return true;
}

bool ChatHandler::HandlePetUnlearnCommand(const char *args)
{
    if (!*args)
        return false;

    Player *plr = m_session->GetPlayer();
    Pet *pet = plr->GetPet();

    if (!pet)
    {
        PSendSysMessage("You have no pet");
        SetSentErrorMessage(true);
        return false;
    }

    uint32 spellId = extractSpellIdFromLink((char*)args);

    if (pet->HasSpell(spellId))
        pet->removeSpell(spellId, false);
    else
        PSendSysMessage("Pet doesn't have that spell");

    return true;
}

bool ChatHandler::HandlePetTpCommand(const char *args)
{
    if (!*args)
        return false;

    Player *plr = m_session->GetPlayer();
    Pet *pet = plr->GetPet();

    if (!pet)
    {
        PSendSysMessage("You have no pet");
        SetSentErrorMessage(true);
        return false;
    }

    uint32 tp = atol(args);

    //pet->SetTP(tp);

    PSendSysMessage("Pet's tp changed to %u", tp);
    return true;
}

bool ChatHandler::HandleLookupTitleCommand(const char* args)
{
    if (!*args)
        return false;

    // can be NULL in console call
    Player* target = getSelectedPlayer();

    // title name have single string arg for player name
    char const* targetName = target ? target->GetName() : "NAME";

    std::string namepart = args;
    std::wstring wnamepart;

    if (!Utf8toWStr(namepart, wnamepart))
        return false;

    // converting string that we try to find to lower case
    wstrToLower(wnamepart);

    uint32 counter = 0;                                     // Counter for figure out that we found smth.
    uint32 maxResults = sWorld->getIntConfig(CONFIG_MAX_RESULTS_LOOKUP_COMMANDS);

    // Search in CharTitles.dbc
    for (uint32 id = 0; id < sCharTitlesStore.GetNumRows(); id++)
    {
        CharTitlesEntry const *titleInfo = sCharTitlesStore.LookupEntry(id);
        if (titleInfo)
        {
            std::string name = titleInfo->name;
            if (!name.empty())
            {
                if (maxResults && counter == maxResults)
                {
                    PSendSysMessage(LANG_COMMAND_LOOKUP_MAX_RESULTS, maxResults);
                    return true;
                }

                char const* knownStr = target && target->HasTitle(titleInfo) ? GetSkyFireString(LANG_KNOWN) : "";

                char const* activeStr = target && target->GetUInt32Value(PLAYER_CHOSEN_TITLE) == titleInfo->bit_index
                    ? GetSkyFireString(LANG_ACTIVE)
                    : "";

                char titleNameStr[80];
                snprintf(titleNameStr, 80, name.c_str(), targetName);

                // send title in "id (idx:idx) - [namedlink locale]" format
                if (m_session)
                    PSendSysMessage(LANG_TITLE_LIST_CHAT, id, titleInfo->bit_index, id, titleNameStr, localeNames, knownStr, activeStr);
                else
                    PSendSysMessage(LANG_TITLE_LIST_CONSOLE, id, titleInfo->bit_index, titleNameStr, localeNames, knownStr, activeStr);

                ++counter;
            }
        }
    }
    if (counter == 0)                                       // if counter == 0 then we found nth
        SendSysMessage(LANG_COMMAND_NOTITLEFOUND);
    return true;
}

bool ChatHandler::HandleCharacterTitlesCommand(const char* args)
{
    if (!*args)
        return false;

    Player* target;
    if (!extractPlayerTarget((char*)args, &target))
        return false;

    LocaleConstant loc = GetSessionDbcLocale();
    char const* targetName = target->GetName();
    char const* knownStr = GetSkyFireString(LANG_KNOWN);

    // Search in CharTitles.dbc
    for (uint32 id = 0; id < sCharTitlesStore.GetNumRows(); id++)
    {
        CharTitlesEntry const *titleInfo = sCharTitlesStore.LookupEntry(id);
        if (titleInfo && target->HasTitle(titleInfo))
        {
            std::string name = titleInfo->name;
            if (name.empty())
                continue;

            char const* activeStr = target && target->GetUInt32Value(PLAYER_CHOSEN_TITLE) == titleInfo->bit_index
                ? GetSkyFireString(LANG_ACTIVE)
                : "";

            char titleNameStr[80];
            snprintf(titleNameStr, 80, name.c_str(), targetName);

            // send title in "id (idx:idx) - [namedlink locale]" format
            if (m_session)
                PSendSysMessage(LANG_TITLE_LIST_CHAT, id, titleInfo->bit_index, id, titleNameStr, localeNames[loc], knownStr, activeStr);
            else
                PSendSysMessage(LANG_TITLE_LIST_CONSOLE, id, titleInfo->bit_index, name.c_str(), localeNames[loc], knownStr, activeStr);
        }
    }
    return true;
}