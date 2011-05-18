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
#include "SocialMgr.h"

#include "DatabaseEnv.h"
#include "Opcodes.h"
#include "WorldPacket.h"
#include "Player.h"
#include "ObjectMgr.h"
#include "World.h"
#include "Util.h"

PlayerSocial::PlayerSocial()
{
    m_playerGUID = 0;
}

PlayerSocial::~PlayerSocial()
{
    m_playerSocialMap.clear();
}

uint32 PlayerSocial::GetNumberOfSocialsWithFlag(SocialFlag flag)
{
    uint32 counter = 0;
    for (PlayerSocialMap::const_iterator itr = m_playerSocialMap.begin(); itr != m_playerSocialMap.end(); ++itr)
        if (itr->second.Flags & flag)
            ++counter;

    return counter;
}

bool PlayerSocial::AddToSocialList(uint32 friend_guid, bool ignore)
{
    // check client limits
    if (ignore)
    {
        if (GetNumberOfSocialsWithFlag(SOCIAL_FLAG_IGNORED) >= SOCIALMGR_IGNORE_LIMIT)
            return false;
    }
    else
    {
        if (GetNumberOfSocialsWithFlag(SOCIAL_FLAG_FRIEND) >= SOCIALMGR_FRIEND_LIMIT)
            return false;
    }

    uint32 flag = SOCIAL_FLAG_FRIEND;
    if (ignore)
        flag = SOCIAL_FLAG_IGNORED;

    PlayerSocialMap::const_iterator itr = m_playerSocialMap.find(friend_guid);
    if (itr != m_playerSocialMap.end())
    {
        CharacterDatabase.PExecute("UPDATE character_social SET flags = (flags | %u) WHERE guid = '%u' AND friend = '%u'", flag, GetPlayerGUID(), friend_guid);
        m_playerSocialMap[friend_guid].Flags |= flag;
    }
    else
    {
        CharacterDatabase.PExecute("INSERT INTO character_social (guid, friend, flags) VALUES ('%u', '%u', '%u')", GetPlayerGUID(), friend_guid, flag);
        FriendInfo fi;
        fi.Flags |= flag;
        m_playerSocialMap[friend_guid] = fi;
    }
    return true;
}

void PlayerSocial::RemoveFromSocialList(uint32 friend_guid, bool ignore)
{
    PlayerSocialMap::iterator itr = m_playerSocialMap.find(friend_guid);
    if (itr == m_playerSocialMap.end())                     // not exist
        return;

    uint32 flag = SOCIAL_FLAG_FRIEND;
    if (ignore)
        flag = SOCIAL_FLAG_IGNORED;

    itr->second.Flags &= ~flag;
    if (itr->second.Flags == 0)
    {
        CharacterDatabase.PExecute("DELETE FROM character_social WHERE guid = '%u' AND friend = '%u'", GetPlayerGUID(), friend_guid);
        m_playerSocialMap.erase(itr);
    }
    else
        CharacterDatabase.PExecute("UPDATE character_social SET flags = (flags & ~%u) WHERE guid = '%u' AND friend = '%u'", flag, GetPlayerGUID(), friend_guid);
}

void PlayerSocial::SetFriendNote(uint32 friend_guid, std::string note)
{
    PlayerSocialMap::const_iterator itr = m_playerSocialMap.find(friend_guid);
    if (itr == m_playerSocialMap.end())                     // not exist
        return;

    utf8truncate(note,48);                                  // DB and client size limitation

    CharacterDatabase.escape_string(note);
    CharacterDatabase.PExecute("UPDATE character_social SET note = '%s' WHERE guid = '%u' AND friend = '%u'", note.c_str(), GetPlayerGUID(), friend_guid);
    m_playerSocialMap[friend_guid].Note = note;
}

void PlayerSocial::SendSocialList(Player* plr, uint32 mask)
{
    if (!plr)
        return;

    
    WorldPacket data(SMSG_CONTACT_LIST, (4 + 4));           // just can guess size
    data << uint32(mask);                                   // flag (0x1, 0x2, 0x4)
    size_t countPos = data.wpos();
    uint32 count = 0;
    data << uint32(count);                                  // friends count

    for (PlayerSocialMap::iterator itr = m_playerSocialMap.begin(); itr != m_playerSocialMap.end(); ++itr)
    {
        sSocialMgr->GetFriendInfo(plr, itr->first, itr->second);

        if (!(itr->second.Flags & mask))    
            continue;
    
        ++count;

        data << uint64(itr->first);                         // player guid
        data << uint32(itr->second.Flags);                  // player flag (0x1-friend?, 0x2-ignored?, 0x4-muted?)
        data << itr->second.Note;                           // string note
        if (itr->second.Flags & SOCIAL_FLAG_FRIEND)         // if IsFriend()
        {
            data << uint8(itr->second.Status);              // online/offline/etc?
            if (itr->second.Status)                         // if online
            {
                data << uint32(itr->second.Area);           // player area
                data << uint32(itr->second.Level);          // player level
                data << uint32(itr->second.Class);          // player class
            }
        }
    }

    data.put<uint32>(countPos, count);

    plr->GetSession()->SendPacket(&data);
    sLog->outDebug("WORLD: Sent SMSG_CONTACT_LIST");
}

bool PlayerSocial::HasFriend(uint32 friend_guid)
{
    PlayerSocialMap::const_iterator itr = m_playerSocialMap.find(friend_guid);
    if (itr != m_playerSocialMap.end())
        return itr->second.Flags & SOCIAL_FLAG_FRIEND;
    return false;
}

bool PlayerSocial::HasIgnore(uint32 ignore_guid)
{
    PlayerSocialMap::const_iterator itr = m_playerSocialMap.find(ignore_guid);
    if (itr != m_playerSocialMap.end())
        return itr->second.Flags & SOCIAL_FLAG_IGNORED;
    return false;
}

SocialMgr::SocialMgr()
{
}

SocialMgr::~SocialMgr()
{
}

void SocialMgr::GetFriendInfo(Player *player, uint32 friendGUID, FriendInfo &friendInfo)
{
    if (!player)
        return;

    friendInfo.Status = FRIEND_STATUS_OFFLINE;
    friendInfo.Area = 0;
    friendInfo.Level = 0;
    friendInfo.Class = 0;

    Player *pFriend = ObjectAccessor::FindPlayer(friendGUID);
    if (!pFriend)
        return;

    uint32 team = player->GetTeam();
    AccountTypes security = player->GetSession()->GetSecurity();
    bool allowTwoSideWhoList = sWorld->getBoolConfig(CONFIG_ALLOW_TWO_SIDE_WHO_LIST);
    AccountTypes gmLevelInWhoList = AccountTypes (sWorld->getIntConfig(CONFIG_GM_LEVEL_IN_WHO_LIST));

    PlayerSocialMap::iterator itr = player->GetSocial()->m_playerSocialMap.find(friendGUID);
    if (itr != player->GetSocial()->m_playerSocialMap.end())
        friendInfo.Note = itr->second.Note;

    // PLAYER see his team only and PLAYER can't see MODERATOR, GAME MASTER, ADMINISTRATOR characters
    // MODERATOR, GAME MASTER, ADMINISTRATOR can see all
    if (pFriend && pFriend->GetName() &&
        (security > SEC_PLAYER ||
        ((pFriend->GetTeam() == team || allowTwoSideWhoList) && (pFriend->GetSession()->GetSecurity() <= gmLevelInWhoList))) &&
        pFriend->IsVisibleGloballyFor(player))
    {
        friendInfo.Status = FRIEND_STATUS_ONLINE;
        if (pFriend->isAFK())
            friendInfo.Status = FRIEND_STATUS_AFK;
        if (pFriend->isDND())
            friendInfo.Status = FRIEND_STATUS_DND;
        friendInfo.Area = pFriend->GetZoneId();
        friendInfo.Level = pFriend->getLevel();
        friendInfo.Class = pFriend->getClass();
    }
}

void SocialMgr::MakeFriendStatusPacket(FriendsResult result, uint32 guid, WorldPacket *data)
{
    data->Initialize(SMSG_FRIEND_STATUS, 9);
    *data << uint8(result);
    *data << uint64(guid);
}

void SocialMgr::SendFriendStatus(Player *player, FriendsResult result, uint32 friend_guid, bool broadcast)
{
    FriendInfo fi;

    WorldPacket data;
    MakeFriendStatusPacket(result, friend_guid, &data);
    GetFriendInfo(player, friend_guid, fi);
    switch (result)
    {
        case FRIEND_ADDED_OFFLINE:
        case FRIEND_ADDED_ONLINE:
            data << fi.Note;
            break;
        default:
            break;
    }

    switch (result)
    {
        case FRIEND_ADDED_ONLINE:
        case FRIEND_ONLINE:
            data << uint8(fi.Status);
            data << uint32(fi.Area);
            data << uint32(fi.Level);
            data << uint32(fi.Class);
            break;
        default:
            break;
    }

    if (broadcast)
        BroadcastToFriendListers(player, &data);
    else
        player->GetSession()->SendPacket(&data);
}

void SocialMgr::BroadcastToFriendListers(Player *player, WorldPacket *packet)
{
    if (!player)
        return;

    uint32 team = player->GetTeam();
    AccountTypes security = player->GetSession()->GetSecurity();
    uint32 guid = player->GetGUIDLow();
    AccountTypes gmLevelInWhoList = AccountTypes(sWorld->getIntConfig(CONFIG_GM_LEVEL_IN_WHO_LIST));
    bool allowTwoSideWhoList = sWorld->getBoolConfig(CONFIG_ALLOW_TWO_SIDE_WHO_LIST);

    for (SocialMap::const_iterator itr = m_socialMap.begin(); itr != m_socialMap.end(); ++itr)
    {
        PlayerSocialMap::const_iterator itr2 = itr->second.m_playerSocialMap.find(guid);
        if (itr2 != itr->second.m_playerSocialMap.end() && (itr2->second.Flags & SOCIAL_FLAG_FRIEND))
        {
            Player *pFriend = ObjectAccessor::FindPlayer(MAKE_NEW_GUID(itr->first, 0, HIGHGUID_PLAYER));

            // PLAYER see his team only and PLAYER can't see MODERATOR, GAME MASTER, ADMINISTRATOR characters
            // MODERATOR, GAME MASTER, ADMINISTRATOR can see all
            if (pFriend && pFriend->IsInWorld() &&
                (pFriend->GetSession()->GetSecurity() > SEC_PLAYER ||
                ((pFriend->GetTeam() == team || allowTwoSideWhoList) && security <= gmLevelInWhoList)) &&
                player->IsVisibleGloballyFor(pFriend))
            {
                pFriend->GetSession()->SendPacket(packet);
            }
        }
    }
}

PlayerSocial *SocialMgr::LoadFromDB(PreparedQueryResult result, uint32 guid)
{
    PlayerSocial *social = &m_socialMap[guid];
    social->SetPlayerGUID(guid);

    if (!result)
        return social;

    uint32 friend_guid = 0;
    uint32 flags = 0;
    std::string note = "";

    do
    {
        Field* fields = result->Fetch();

        friend_guid = fields[0].GetUInt32();
        flags = fields[1].GetUInt32();
        note = fields[2].GetString();

        social->m_playerSocialMap[friend_guid] = FriendInfo(flags, note);

        // client's friends list and ignore list limit
        if (social->m_playerSocialMap.size() >= (SOCIALMGR_FRIEND_LIMIT + SOCIALMGR_IGNORE_LIMIT))
            break;
    }
    while (result->NextRow());

    return social;
}

