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

#include "gamePCH.h"
#include "Common.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "World.h"
#include "ObjectMgr.h"
#include "Log.h"
#include "Opcodes.h"
#include "Guild.h"
#include "GossipDef.h"
#include "SocialMgr.h"

// Cataclysm TODO:
// Proper update of internal events:
// Promote, Demote, Add or Remove member
// Tabard/Emblem update (so that player doesn't have to relog to see changes)
// Guild Rank Management (adding, deleting ranks, editing ranks' permissions)
// Professions in guild roster, its dynamic updates
// GuildBankRightsAndSlots
//
// Guild Advancement system is currently disabled. Make its disable state configurable and fix it

// Helper for getting guild object of session's player.
// If guild does not exist, sends error (if necessary).
inline Guild* _GetPlayerGuild(WorldSession* session, bool sendError = false)
{
    if (uint32 guildId = session->GetPlayer()->GetGuildId())    // If guild id = 0, player is not in guild
        if (Guild* pGuild = sObjectMgr->GetGuildById(guildId))   // Find guild by id
            return pGuild;
    if (sendError)
        Guild::SendCommandResult(session, GUILD_CREATE_S, ERR_GUILD_PLAYER_NOT_IN_GUILD);
    return NULL;
}

// Cata Status: Done
void WorldSession::HandleGuildQueryOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_QUERY");

    uint64 guildId;
    uint64 player; //4.0.6a
    recvPacket >> guildId;
    recvPacket >> player;
    // Use received guild id to access guild method (not player's guild id)
    uint32 lowGuildId = GUID_LOPART(guildId);
    if (Guild *pGuild = sObjectMgr->GetGuildById(lowGuildId))
        pGuild->HandleQuery(this);
    else
        Guild::SendCommandResult(this, GUILD_CREATE_S, ERR_GUILD_PLAYER_NOT_IN_GUILD);
}

// Cata status: Not used.
void WorldSession::HandleGuildCreateOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_CREATE");

    std::string name;
    recvPacket >> name;

    if (!GetPlayer()->GetGuildId())             // Player cannot be in guild
    {
        Guild* pGuild = new Guild();
        if (pGuild->Create(GetPlayer(), name))
            sObjectMgr->AddGuild(pGuild);
        else
            delete pGuild;
    }
}

// Cata Status: Done
// Functional, but there are many unknown values in the SMSG_GUILD_INVITE
// However, until guild leveling system finds some use in emulating, those aren't needed
void WorldSession::HandleGuildInviteOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_INVITE");

    std::string invitedName;
    recvPacket >> invitedName;

    if (normalizePlayerName(invitedName))
        if (Guild* pGuild = _GetPlayerGuild(this, true))
            pGuild->HandleInviteMember(this, invitedName);
}

// Cata Status: Done
void WorldSession::HandleGuildRemoveOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_REMOVE");

    uint64 guid;
    recvPacket >> guid; // target
    recvPacket.read_skip<uint64>();

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleRemoveMember(this, guid);
}

// Cata Status: Done
void WorldSession::HandleGuildAcceptOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_ACCEPT");
    recvPacket.read_skip<uint64>();

    // Player cannot be in guild
    if (!GetPlayer()->GetGuildId())
        // Guild where player was invited must exist
        if (Guild* pGuild = sObjectMgr->GetGuildById(GetPlayer()->GetGuildIdInvited()))
            pGuild->HandleAcceptMember(this);
}

// Cata Status: Done
void WorldSession::HandleGuildDeclineOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_DECLINE");
    recvPacket.read_skip<uint64>();

    GetPlayer()->SetGuildIdInvited(0);
    GetPlayer()->SetInGuild(0);
}

// Cata Status: Done
void WorldSession::HandleGuildInfoOpcode(WorldPacket& /*recvPacket*/)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_INFO");

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->SendInfo(this);
}

// CATA Status: Done
void WorldSession::HandleGuildRosterOpcode(WorldPacket& /*recvPacket*/)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_ROSTER");

    if (Guild* pGuild = _GetPlayerGuild(this))
        pGuild->HandleRoster(this);
}

// Cata Status: Done
// TODO!!! The update is improper. Shouldn't re-send the roster - it causes visual sprinkles
void WorldSession::HandleGuildPromoteOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_PROMOTE");

    uint64 guid;
    recvPacket >> guid; // target guid
    recvPacket.read_skip<uint64>(); // command issuer's guid?

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleUpdateMemberRank(this, guid, false);
}

// Cata Status: Done
// TODO!!! The update is improper. Shouldn't re-send the roster - it causes visual sprinkles
void WorldSession::HandleGuildDemoteOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_DEMOTE");

    uint64 guid;
    recvPacket >> guid; // target guid
    recvPacket.read_skip<uint64>(); // command issuer's guid?

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleUpdateMemberRank(this, guid, true);
}

// Cata Status: Done
void WorldSession::HandleGuildLeaveOpcode(WorldPacket& /*recvPacket*/)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_LEAVE");

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleLeaveMember(this);
}

// Cata Status: Done
void WorldSession::HandleGuildDisbandOpcode(WorldPacket& /*recvPacket*/)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_DISBAND");

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleDisband(this);
}

// Cata Status: Done
void WorldSession::HandleGuildLeaderOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_LEADER");

    std::string name;
    recvPacket.read_skip<uint64>(); // guild GUID
    recvPacket.read_skip<uint64>(); // user's guid?
    recvPacket >> name;

    if (normalizePlayerName(name))
        if (Guild* pGuild = _GetPlayerGuild(this, true))
            pGuild->HandleSetLeader(this, name);
}

// Cata Status: Done
void WorldSession::HandleGuildChangeInfoTextOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_INFO_TEXT");

    recvPacket.read_skip<uint64>(); // issuer's guid
    recvPacket.read_skip<uint64>(); // guild's guid
    std::string info;
    recvPacket >> info;

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleSetInfo(this, info);
}

// Cata Status: Done
void WorldSession::HandleGuildMOTDOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_MOTD");

    recvPacket.read_skip<uint64>();
    recvPacket.read_skip<uint64>();

    std::string motd;
    recvPacket >> motd;

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleSetMOTD(this, motd);
}

void WorldSession::HandleGuildExperienceOpcode(WorldPacket& recvPacket)
{
    recvPacket.read_skip<uint64>();

    if (Guild* pGuild = sObjectMgr->GetGuildById(_player->GetGuildId()))
    {
        WorldPacket data(SMSG_GUILD_XP_UPDATE, 8*5);
        data << uint64(0x37); // max daily xp
        data << uint64(pGuild->GetNextLevelXP()); // next level XP
        data << uint64(0x37); // weekly xp
        data << uint64(pGuild->GetCurrentXP()); // Curr exp
        data << uint64(0); // Today exp (unsupported)
        SendPacket(&data);
    }
}

void WorldSession::HandleGuildMaxExperienceOpcode(WorldPacket& recvPacket)
{
    recvPacket.read_skip<uint64>();

    WorldPacket data(SMSG_GUILD_MAX_DAILY_XP, 8);
    data << uint64(67800000); // Constant value for now
    SendPacket(&data);
}

void WorldSession::HandleGuildRewardsOpcode(WorldPacket& recvPacket)
{
    if (!_player->GetGuildId() || !sWorld->getBoolConfig(CONFIG_GUILD_ADVANCEMENT_ENABLED))
        return;

    recvPacket.read_skip<uint64>();

    ObjectMgr::GuildRewardsVector const& vec = sObjectMgr->GetGuildRewards();
    if (vec.empty())
        return;

    WorldPacket data(SMSG_GUILD_REWARDS_LIST, 8);
    data << uint32(_player->GetGuildId()) ;
    data << uint32(vec.size()); // counter

    for(uint32 i = 0; i < vec.size(); ++i)
        data << uint32(0); // unk (only found 0 in retail logs)

    for(uint32 i = 0; i < vec.size(); ++i)
        data << uint32(0); // unk

    for(uint32 i = 0; i < vec.size(); ++i)
        data << uint64(vec[i]->price); // money price

    for(uint32 i = 0; i < vec.size(); ++i)
        data << uint32(vec[i]->achievement); // Achievement requirement

    for(uint32 i = 0; i < vec.size(); ++i)
        data << uint32(vec[i]->standing); // // Reputation level (REP_HONORED, REP_FRIENDLY, etc)

    for(uint32 i = 0; i < vec.size(); ++i)
        data << uint32(vec[i]->item); // item entry
    SendPacket(&data);
}

// Cata Status: Done
void WorldSession::HandleGuildSetNoteOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_SET_NOTE");

    uint8 ispublic;
    uint64 guid;
    recvPacket >> ispublic;
    recvPacket >> guid; // target guid
    recvPacket.read_skip<uint64>(); // issuer's guid (?)
    recvPacket.read_skip<uint64>(); // guild guid (not using it)

    std::string Note;
    recvPacket >> Note;

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleSetMemberNote(this, guid, Note, !ispublic);
}

void WorldSession::HandleGuildRankOpcode(WorldPacket& recvPacket)
{
    uint32 BankStacks[GUILD_BANK_MAX_TABS];
    for(uint32 i = 0; i < GUILD_BANK_MAX_TABS; i++)
        recvPacket >> BankStacks[i];

    uint32 new_rights;
    recvPacket >> new_rights;

    uint32 new_rankId;
    recvPacket >> new_rankId;

    uint32 old_rankId;
    recvPacket >> old_rankId;

    uint32 BankRights[GUILD_BANK_MAX_TABS];
    for(uint32 i = 0; i < GUILD_BANK_MAX_TABS; i++)
        recvPacket >> BankRights[i];

    uint64 guildId;
    recvPacket >> guildId;

    uint32 old_rights;
    recvPacket >> old_rights;

    uint32 money;
    recvPacket >> money;

    uint64 playerGuid;
    recvPacket >> playerGuid;

    std::string rankName;
    recvPacket >> rankName;

    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_RANK");

    if (GetPlayer()->GetGUID() != playerGuid)
    {
        printf("CMSG_GUILD_RANK: The playerGUID in the packet does not match the current player!\n");
        recvPacket.rpos(recvPacket.wpos());
        Guild::SendCommandResult(this, GUILD_CREATE_S, ERR_GUILD_PLAYER_NOT_IN_GUILD);
        return;
    }
    if (GetPlayer()->GetGuildId() != GUID_LOPART(guildId))
    {
        printf("CMSG_GUILD_RANK: This player is not in the guild.\n");
        recvPacket.rpos(recvPacket.wpos());
        Guild::SendCommandResult(this, GUILD_CREATE_S, ERR_GUILD_PLAYER_NOT_IN_GUILD);
        return;
    }

    Guild* pGuild = _GetPlayerGuild(this, true);

    if (!pGuild)
    {
        recvPacket.rpos(recvPacket.wpos());
        return;
    }

    GuildBankRightsAndSlotsVec rightsAndSlots(GUILD_BANK_MAX_TABS);
    if (old_rankId != GR_GUILDMASTER)
    {
        for (uint8 tabId = 0; tabId < GUILD_BANK_MAX_TABS; ++tabId)
        {
            rightsAndSlots[tabId] = GuildBankRightsAndSlots(BankRights[tabId], BankStacks[tabId]);
        }

        pGuild->HandleSetRankInfo(this, new_rankId, rankName, new_rights, money, rightsAndSlots);
    }
    if (old_rankId != new_rankId && old_rankId != GR_GUILDMASTER && new_rankId != GR_GUILDMASTER)
        pGuild->SwitchRank(old_rankId, new_rankId);
}

// Cata Status: Done
// TODO: The structure is completely ignored atm
void WorldSession::HandleGuildAddRankOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_ADD_RANK");

    //std::string rankName;
    //recvPacket >> rankName;

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleAddNewRank(this, "New Rank");
}

// Cata Status: Done
void WorldSession::HandleGuildDelRankOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_GUILD_DEL_RANK");
    uint32 rankid;
    recvPacket >> rankid;

    if (Guild* pGuild = _GetPlayerGuild(this, true))
        pGuild->HandleRemoveRank(this, rankid);
}

// Cata Status: Done
// TODO!!! Doesn't update tabard, guild tab until relog
void WorldSession::HandleSaveGuildEmblemOpcode(WorldPacket& recvPacket)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received MSG_SAVE_GUILD_EMBLEM");

    uint64 vendorGuid;
    recvPacket >> vendorGuid;

    EmblemInfo emblemInfo;
    emblemInfo.ReadPacket(recvPacket);

    if (GetPlayer()->GetNPCIfCanInteractWith(vendorGuid, UNIT_NPC_FLAG_TABARDDESIGNER))
    {
        // Remove fake death
        if (GetPlayer()->HasUnitState(UNIT_STAT_DIED))
            GetPlayer()->RemoveAurasByType(SPELL_AURA_FEIGN_DEATH);

        if (Guild* pGuild = _GetPlayerGuild(this))
            pGuild->HandleSetEmblem(this, emblemInfo);
        else
            // "You are not part of a pGuild!";
            Guild::SendSaveEmblemResult(this, ERR_GUILDEMBLEM_NOGUILD);
    }
    else
    {
        // "That's not an emblem vendor!"
        Guild::SendSaveEmblemResult(this, ERR_GUILDEMBLEM_INVALIDVENDOR);
        sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: HandleSaveGuildEmblemOpcode - Unit (GUID: %u) not found or you can't interact with him.", GUID_LOPART(vendorGuid));
    }
}

// Cata Status: Done
void WorldSession::HandleGuildEventLogQueryOpcode(WorldPacket& /* recvPacket */)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (MSG_GUILD_EVENT_LOG_QUERY)");

    if (Guild* pGuild = _GetPlayerGuild(this))
        pGuild->SendEventLog(this);
}

// Cata Status: Done
void WorldSession::HandleGuildBankMoneyWithdrawn(WorldPacket & /* recv_data */)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (MSG_GUILD_BANK_MONEY_WITHDRAWN)");

    if (Guild* pGuild = _GetPlayerGuild(this))
        pGuild->SendMoneyInfo(this);
}

// Cata Status: Done
void WorldSession::HandleGuildPermissions(WorldPacket& /* recv_data */)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (MSG_GUILD_PERMISSIONS)");

    if (Guild* pGuild = _GetPlayerGuild(this))
        pGuild->SendPermissions(this);
}

// Called when clicking on Guild bank gameobject
// Cata Status: Done
void WorldSession::HandleGuildBankerActivate(WorldPacket & recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (CMSG_GUILD_BANKER_ACTIVATE)");

    uint64 GoGuid;
    recv_data >> GoGuid;

    uint8 unk;
    recv_data >> unk;

    if (GetPlayer()->GetGameObjectIfCanInteractWith(GoGuid, GAMEOBJECT_TYPE_GUILD_BANK))
    {
        if (Guild* pGuild = _GetPlayerGuild(this))
            pGuild->SendBankTabsInfo(this);
        else
            Guild::SendCommandResult(this, GUILD_UNK1, ERR_GUILD_PLAYER_NOT_IN_GUILD);
    }
}

// Called when opening pGuild bank tab only (first one)
// Cata Status: Done
void WorldSession::HandleGuildBankQueryTab(WorldPacket & recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (CMSG_GUILD_BANK_QUERY_TAB)");

    uint64 GoGuid;
    recv_data >> GoGuid;

    uint8 tabId;
    recv_data >> tabId;

    uint8 unk1;
    recv_data >> unk1;

    if (GetPlayer()->GetGameObjectIfCanInteractWith(GoGuid, GAMEOBJECT_TYPE_GUILD_BANK))
        if (Guild* pGuild = _GetPlayerGuild(this))
            pGuild->SendBankTabData(this, tabId);
}

// Cata Status: Done
void WorldSession::HandleGuildBankDepositMoney(WorldPacket & recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (CMSG_GUILD_BANK_DEPOSIT_MONEY)");

    uint64 GoGuid;
    recv_data >> GoGuid;

    uint64 money;
    recv_data >> money;

    if (GetPlayer()->GetGameObjectIfCanInteractWith(GoGuid, GAMEOBJECT_TYPE_GUILD_BANK))
        if (money && GetPlayer()->HasEnoughMoney(uint32(money)))
            if (Guild* pGuild = _GetPlayerGuild(this))
                pGuild->HandleMemberDepositMoney(this, money);
}

// Cata Status: Done
void WorldSession::HandleGuildBankWithdrawMoney(WorldPacket & recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (CMSG_GUILD_BANK_WITHDRAW_MONEY)");

    uint64 GoGuid;
    recv_data >> GoGuid;

    uint64 money;
    recv_data >> money;

    if (money)
        if (GetPlayer()->GetGameObjectIfCanInteractWith(GoGuid, GAMEOBJECT_TYPE_GUILD_BANK))
            if (Guild* pGuild = _GetPlayerGuild(this))
                pGuild->HandleMemberWithdrawMoney(this, money);
}

// Cata Status: Done
void WorldSession::HandleGuildBankSwapItems(WorldPacket & recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (CMSG_GUILD_BANK_SWAP_ITEMS)");

    uint64 GoGuid;
    recv_data >> GoGuid;

    if (!GetPlayer()->GetGameObjectIfCanInteractWith(GoGuid, GAMEOBJECT_TYPE_GUILD_BANK))
    {
        recv_data.rpos(recv_data.wpos());                   // Prevent additional spam at rejected packet
        return;
    }

    Guild* pGuild = _GetPlayerGuild(this);
    if (!pGuild)
    {
        recv_data.rpos(recv_data.wpos());                   // Prevent additional spam at rejected packet
        return;
    }

    uint8 bankToBank;
    recv_data >> bankToBank;

    uint8 tabId;
    uint8 slotId;
    uint32 itemEntry;
    uint32 splitedAmount = 0;

    if (bankToBank)
    {
        uint8 destTabId;
        recv_data >> destTabId;

        uint8 destSlotId;
        recv_data >> destSlotId;
        recv_data.read_skip<uint32>();                      // Always 0

        recv_data >> tabId;
        recv_data >> slotId;
        recv_data >> itemEntry;
        recv_data.read_skip<uint8>();                       // Always 0

        recv_data >> splitedAmount;

        pGuild->SwapItems(GetPlayer(), tabId, slotId, destTabId, destSlotId, splitedAmount);
    }
    else
    {
        uint8 playerBag = NULL_BAG;
        uint8 playerSlotId = NULL_SLOT;
        uint8 toChar = 1;

        recv_data >> tabId;
        recv_data >> slotId;
        recv_data >> itemEntry;

        uint8 autoStore;
        recv_data >> autoStore;
        if (autoStore)
        {
            recv_data.read_skip<uint32>();                  // autoStoreCount
            recv_data.read_skip<uint8>();                   // ToChar (?), always and expected to be 1 (autostore only triggered in Bank -> Char)
            recv_data.read_skip<uint32>();                  // Always 0
        }
        else
        {
            recv_data >> playerBag;
            recv_data >> playerSlotId;
            recv_data >> toChar;
            recv_data >> splitedAmount;
        }

        // Player <-> Bank
        // Allow to work with inventory only
        if (!Player::IsInventoryPos(playerBag, playerSlotId) && !(playerBag == NULL_BAG && playerSlotId == NULL_SLOT))
            GetPlayer()->SendEquipError(EQUIP_ERR_NONE, NULL);
        else
            pGuild->SwapItemsWithInventory(GetPlayer(), toChar, tabId, slotId, playerBag, playerSlotId, splitedAmount);
    }
}

// Cata Status: Done
void WorldSession::HandleGuildBankBuyTab(WorldPacket & recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (CMSG_GUILD_BANK_BUY_TAB)");

    uint64 GoGuid;
    recv_data >> GoGuid;

    uint8 tabId;
    recv_data >> tabId;

    if (GetPlayer()->GetGameObjectIfCanInteractWith(GoGuid, GAMEOBJECT_TYPE_GUILD_BANK))
        if (Guild* pGuild = _GetPlayerGuild(this))
            pGuild->HandleBuyBankTab(this, tabId);
}

// Cata Status: Done
void WorldSession::HandleGuildBankUpdateTab(WorldPacket & recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (CMSG_GUILD_BANK_UPDATE_TAB)");

    uint64 GoGuid;
    recv_data >> GoGuid;

    uint8 tabId;
    recv_data >> tabId;

    std::string name;
    recv_data >> name;

    std::string icon;
    recv_data >> icon;

    if (!name.empty() && !icon.empty())
        if (GetPlayer()->GetGameObjectIfCanInteractWith(GoGuid, GAMEOBJECT_TYPE_GUILD_BANK))
            if (Guild* pGuild = _GetPlayerGuild(this))
                pGuild->HandleSetBankTabInfo(this, tabId, name, icon);
}

// Cata Status: Done
void WorldSession::HandleGuildBankLogQuery(WorldPacket & recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received (MSG_GUILD_BANK_LOG_QUERY)");

    uint8 tabId;
    recv_data >> tabId;

    if (Guild* pGuild = _GetPlayerGuild(this))
        pGuild->SendBankLog(this, tabId);
}

// Cata Status: Done
void WorldSession::HandleQueryGuildBankTabText(WorldPacket &recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received MSG_QUERY_GUILD_BANK_TEXT");

    uint8 tabId;
    recv_data >> tabId;

    if (Guild* pGuild = _GetPlayerGuild(this))
        pGuild->SendBankTabText(this, tabId);
}

// Cata Status: Done
void WorldSession::HandleSetGuildBankTabText(WorldPacket &recv_data)
{
    sLog->outDebug(LOG_FILTER_NETWORKIO, "WORLD: Received CMSG_SET_GUILD_BANK_TEXT");

    uint8 tabId;
    recv_data >> tabId;

    std::string text;
    recv_data >> text;

    if (Guild* pGuild = _GetPlayerGuild(this))
        pGuild->SetBankTabText(tabId, text);
}