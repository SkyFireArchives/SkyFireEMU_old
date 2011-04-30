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

#include "CharacterDatabase.h"

bool CharacterDatabaseConnection::Open()
{
    if (!MySQLConnection::Open())
        return false;

    if (!m_reconnecting)
        m_stmts.resize(MAX_CHARACTERDATABASE_STATEMENTS);

    /*
        ##################################
        LOAD YOUR PREPARED STATEMENTS HERE
        ##################################
    */
    PrepareStatement(CHAR_DEL_QUEST_POOL_SAVE, "DELETE FROM pool_quest_save WHERE pool_id = ?", true);
    PrepareStatement(CHAR_ADD_QUEST_POOL_SAVE, "INSERT INTO pool_quest_save (pool_id, quest_id) VALUES (?, ?)", true);
    PrepareStatement(CHAR_DEL_OLD_GUILD_EVENT_LOGS, "DELETE FROM guild_eventlog WHERE LogGuid > ?", true);
    PrepareStatement(CHAR_DEL_OLD_GUILD_BANK_EVENT_LOGS, "DELETE FROM guild_bank_eventlog WHERE LogGuid > ?", true);
    PrepareStatement(CHAR_DEL_NONEXISTENT_GUILD_BANK_ITEM, "DELETE FROM guild_bank_item WHERE guildid = ? AND TabId = ? AND SlotId = ?", true);
    PrepareStatement(CHAR_DEL_NONEXISTENT_CHARACTER_GROUP_MEMBERS, "DELETE FROM group_member WHERE NOT EXISTS (SELECT guid FROM characters WHERE guid=memberGuid)", true);
    PrepareStatement(CHAR_DEL_LEADERLESS_GROUPS, "DELETE FROM groups WHERE NOT EXISTS (SELECT guid FROM characters WHERE guid=leaderGuid)", true);
    PrepareStatement(CHAR_DEL_TINY_GROUPS, "DELETE FROM groups WHERE guid NOT IN (SELECT guid FROM group_member GROUP BY guid HAVING COUNT(guid) > 1)", true);
    PrepareStatement(CHAR_DEL_NONEXISTENT_GROUP_MEMBERS, "DELETE FROM group_member WHERE guid NOT IN (SELECT guid FROM groups)", true);
    PrepareStatement(CHAR_DEL_NONEXISTENT_GROUP_INSTANCES, "DELETE FROM group_instance WHERE guid NOT IN (SELECT guid FROM groups)", true);
    PrepareStatement(CHAR_DEL_EXPIRED_BANS, "UPDATE character_banned SET active = 0 WHERE unbandate <= UNIX_TIMESTAMP() AND unbandate <> bandate", true);
    PrepareStatement(CHAR_GET_GUID_BY_NAME, "SELECT guid FROM characters WHERE name = ?", true);
    PrepareStatement(CHAR_ADD_BAN, "INSERT INTO character_banned VALUES (?, UNIX_TIMESTAMP(), UNIX_TIMESTAMP()+?, ?, ?, 1)", true);
    PrepareStatement(CHAR_SET_NOT_BANNED, "UPDATE character_banned SET active = 0 WHERE guid = ? AND active != 0", true);
    PrepareStatement(CHAR_GET_BANINFO, "SELECT FROM_UNIXTIME(bandate), unbandate-bandate, active, unbandate, banreason, bannedby FROM character_banned WHERE guid = ? ORDER BY bandate ASC");
    PrepareStatement(CHAR_GET_GUID_BY_NAME_FILTER, "SELECT guid, name FROM characters WHERE name LIKE CONCAT('%', ?, '%')");
    PrepareStatement(CHAR_GET_BANINFO_LIST, "SELECT bandate, unbandate, bannedby, banreason FROM character_banned WHERE guid = ? ORDER BY unbandate");
    PrepareStatement(CHAR_GET_BANNED_NAME, "SELECT characters.name FROM characters, character_banned WHERE character_banned.guid = ? AND character_banned.guid = characters.guid");

    PrepareStatement(CHAR_LOAD_PLAYER, "SELECT guid, account,name, race, class, gender, level, xp, money, playerBytes, playerBytes2, playerFlags,"
        "position_x, position_y, position_z, map, orientation, taximask, cinematic, totaltime, leveltime, rest_bonus, logout_time, is_logout_resting, resettalents_cost,"
        "resettalents_time, trans_x, trans_y, trans_z, trans_o, transguid, extra_flags, stable_slots, at_login, zone, online, death_expire_time, taxi_path, instance_mode_mask,"
        "arenaPoints, totalHonorPoints, todayHonorPoints, yesterdayHonorPoints, totalKills, todayKills, yesterdayKills, chosenTitle, knownCurrencies, watchedFaction, drunk,"
        "health, power1, power2, power3, power4, power5, power6, power7, power8, power9, power10, instance_id, speccount, activespec, exploredZones, equipmentCache, ammoId," 
        "knownTitles, actionBars, currentPetSlot, petSlotUsed FROM characters WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_GROUP, "SELECT guid FROM group_member WHERE memberGuid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_BOUNDINSTANCES, "SELECT id, permanent, map, difficulty, resettime FROM character_instance LEFT JOIN instance ON instance = id WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_AURAS, "SELECT caster_guid, spell, effect_mask, recalculate_mask, stackcount, amount0, amount1, amount2, "
        "base_amount0, base_amount1, base_amount2, maxduration, remaintime, remaincharges FROM character_aura WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_SPELLS, "SELECT spell, active, disabled FROM character_spell WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_QUESTSTATUS, "SELECT quest, status, explored, timer, mobcount1, mobcount2, mobcount3, mobcount4, "
        "itemcount1, itemcount2, itemcount3, itemcount4 FROM character_queststatus WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_DAILYQUESTSTATUS, "SELECT quest, time FROM character_queststatus_daily WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_WEKLYQUESTSTATUS, "SELECT quest FROM character_queststatus_weekly WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_REPUTATION, "SELECT faction,standing,flags FROM character_reputation WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_INVENTORY, "SELECT creatorGuid, giftCreatorGuid, count, duration, charges, flags, enchantments, randomPropertyId, durability, playedTime, text, bag, slot, "
        "item, itemEntry FROM character_inventory ci JOIN item_instance ii ON ci.item = ii.guid WHERE ci.guid = ? ORDER BY bag, slot", true);
    PrepareStatement(CHAR_LOAD_PLAYER_ACTIONS, "SELECT a.button, a.action, a.type FROM character_action as a, characters as c WHERE a.guid = c.guid AND a.spec = c.activespec AND a.guid = ? ORDER BY button", true);
    PrepareStatement(CHAR_LOAD_PLAYER_ACTIONS_SPEC, "SELECT button, action, type FROM character_action WHERE guid = ? AND spec = ? ORDER BY button");
    PrepareStatement(CHAR_LOAD_PLAYER_MAILCOUNT, "SELECT COUNT(id) FROM mail WHERE receiver = ? AND (checked & 1) = 0 AND deliver_time <= ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_MAILDATE, "SELECT MIN(deliver_time) FROM mail WHERE receiver = ? AND (checked & 1) = 0", true);
    PrepareStatement(CHAR_LOAD_PLAYER_SOCIALLIST, "SELECT friend, flags, note FROM character_social JOIN characters ON characters.guid = character_social.friend WHERE character_social.guid = ? AND deleteinfos_name IS NULL LIMIT 255", true);
    PrepareStatement(CHAR_LOAD_PLAYER_HOMEBIND, "SELECT map, zone, position_x, position_y, position_z FROM character_homebind WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_SPELLCOOLDOWNS, "SELECT spell, item, time FROM character_spell_cooldown WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_DECLINEDNAMES, "SELECT genitive, dative, accusative, instrumental, prepositional FROM character_declinedname WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_GUILD, "SELECT guildid,rank FROM guild_member WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_ARENAINFO, "SELECT arenateamid, played_week, played_season, wons_season FROM arena_team_member WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_ACHIEVEMENTS, "SELECT achievement, date FROM character_achievement WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_CRITERIAPROGRESS, "SELECT criteria, counter, date FROM character_achievement_progress WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_EQUIPMENTSETS, "SELECT setguid, setindex, name, iconname, item0, item1, item2, item3, item4, item5, item6, item7, item8, "
        "item9, item10, item11, item12, item13, item14, item15, item16, item17, item18 FROM character_equipmentsets WHERE guid = ? ORDER BY setindex", true);
    PrepareStatement(CHAR_LOAD_PLAYER_BGDATA, "SELECT instance_id, team, join_x, join_y, join_z, join_o, join_map, taxi_start, taxi_end, mount_spell FROM character_battleground_data WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_GLYPHS, "SELECT spec, glyph1, glyph2, glyph3, glyph4, glyph5, glyph6, glyph7, glyph8, glyph9 FROM character_glyphs WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_TALENTS, "SELECT spell, spec FROM character_talent WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_ACCOUNTDATA, "SELECT type, time, data FROM character_account_data WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_SKILLS, "SELECT skill, value, max FROM character_skills WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_RANDOMBG, "SELECT guid FROM character_battleground_random WHERE guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_ARENASTATS, "SELECT slot, personal_rating, matchmaker_rating FROM character_arena_stats WHERE guid = ? ORDER BY slot ASC", true);
    PrepareStatement(CHAR_LOAD_PLAYER_BANNED, "SELECT guid FROM character_banned WHERE guid = ? AND active = 1", true);
    PrepareStatement(CHAR_LOAD_PLAYER_QUESTSTATUSREW, "SELECT quest FROM character_queststatus_rewarded WHERE guid = ?", true);
    // End LoginQueryHolder content

    PrepareStatement(CHAR_LOAD_ACCOUNT_DATA, "SELECT type, time, data FROM account_data WHERE account = ?");
    PrepareStatement(CHAR_LOAD_PLAYER_MAILITEMS, "SELECT creatorGuid, giftCreatorGuid, count, duration, charges, flags, enchantments, randomPropertyId, durability, playedTime, text, item_guid, itemEntry, owner_guid FROM mail_items mi JOIN item_instance ii ON mi.item_guid = ii.guid WHERE mail_id = ?");
    PrepareStatement(CHAR_LOAD_AUCTION_ITEMS, "SELECT creatorGuid, giftCreatorGuid, count, duration, charges, flags, enchantments, randomPropertyId, durability, playedTime, text, itemguid, itemEntry FROM auctionhouse ah JOIN item_instance ii ON ah.itemguid = ii.guid");
    PrepareStatement(CHAR_LOAD_AUCTIONS, "SELECT id, auctioneerguid, itemguid, itemEntry, itemowner, buyoutprice, time, buyguid, lastbid, startbid, deposit FROM auctionhouse ah INNER JOIN item_instance ii ON ii.guid = ah.itemguid");
    PrepareStatement(CHAR_ADD_AUCTION, "INSERT INTO auctionhouse (id, auctioneerguid, itemguid, itemowner, buyoutprice, time, buyguid, lastbid, startbid, deposit) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_AUCTION, "DELETE FROM auctionhouse WHERE id = ?");
    PrepareStatement(CHAR_ADD_MAIL, "INSERT INTO mail(id, messageType, stationery, mailTemplateId, sender, receiver, subject, body, has_items, expire_time, deliver_time, money,cod, checked) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_MAIL, "DELETE FROM mail WHERE id = ?", true);
    PrepareStatement(CHAR_ADD_MAIL_ITEM, "INSERT INTO mail_items(mail_id, item_guid, receiver) VALUES (?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_EMPTY_EXPIRED_MAIL, "DELETE FROM mail WHERE expire_time < ? AND has_items = 0 AND body = ''", true);
    PrepareStatement(CHAR_GET_EXPIRED_MAIL, "SELECT id, messageType, sender, receiver, has_items, expire_time, cod, checked, mailTemplateId FROM mail WHERE expire_time < ?");
    PrepareStatement(CHAR_GET_MAIL_ITEM_LITE, "SELECT item_guid, itemEntry FROM mail_items mi INNER JOIN item_instance ii ON ii.guid = mi.item_guid WHERE mail_id = ?");
    PrepareStatement(CHAR_SET_MAIL_RETURNED, "UPDATE mail SET sender = ?, receiver = ?, expire_time = ?, deliver_time = ?, cod = 0, checked = ? WHERE id = ?", true);
    PrepareStatement(CHAR_SET_MAIL_ITEM_RECEIVER, "UPDATE mail_items SET receiver = ? WHERE item_guid = ?", true);
    PrepareStatement(CHAR_SET_ITEM_OWNER, "UPDATE item_instance SET owner_guid = ? WHERE guid = ?", true);

    PrepareStatement(CHAR_LOAD_ITEM_REFUNDS, "SELECT player_guid, paidMoney, paidExtendedCost FROM item_refund_instance WHERE item_guid = ? AND player_guid = ? LIMIT 1");
    PrepareStatement(CHAR_LOAD_ITEM_BOP_TRADE, "SELECT allowedPlayers FROM item_soulbound_trade_data WHERE itemGuid = ? LIMIT 1");
    PrepareStatement(CHAR_DEL_ITEM_BOP_TRADE, "DELETE FROM item_soulbound_trade_data WHERE itemGuid = ? LIMIT 1", true);
    PrepareStatement(CHAR_ADD_ITEM_BOP_TRADE, "INSERT INTO item_soulbound_trade_data VALUES (?, ?)", true);
    PrepareStatement(CHAR_ADD_INVENTORY_ITEM, "INSERT INTO character_inventory (guid, bag, slot, item) VALUES (?, ?, ?, ?)", true);
    PrepareStatement(CHAR_UPDATE_INVENTORY_ITEM, "UPDATE character_inventory SET guid = ?, bag = ?, slot = ? WHERE item = ?", true);
    PrepareStatement(CHAR_DEL_INVENTORY_ITEM, "DELETE FROM character_inventory WHERE item = ?", true);
    PrepareStatement(CHAR_ADD_ITEM_INSTANCE, "REPLACE INTO item_instance (itemEntry, owner_guid, creatorGuid, giftCreatorGuid, count, duration, charges, flags, enchantments, randomPropertyId, durability, playedTime, text, guid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_UPDATE_ITEM_INSTANCE, "UPDATE item_instance SET itemEntry = ?, owner_guid = ?, creatorGuid = ?, giftCreatorGuid = ?, count = ?, duration = ?, charges = ?, flags = ?, enchantments = ?, randomPropertyId = ?, durability = ?, playedTime = ?, text = ? WHERE guid = ?", true);
    PrepareStatement(CHAR_UPDATE_ITEM_INSTANCE_ON_LOAD, "UPDATE item_instance SET duration = ?, flags = ?, durability = ? WHERE guid = ?", true);
    PrepareStatement(CHAR_DEL_ITEM_INSTANCE, "DELETE FROM item_instance WHERE guid = ?", true);
    PrepareStatement(CHAR_UPDATE_GIFT_OWNER, "UPDATE character_gifts SET guid = ? WHERE item_guid = ?", true);
    PrepareStatement(CHAR_DEL_GIFT, "DELETE FROM character_gifts WHERE item_guid = ?", true);
    PrepareStatement(CHAR_LOAD_PLAYER_TALENTBRANCHSPECS, "SELECT branchSpec, spec FROM character_branchspec WHERE guid = ?");
    PrepareStatement(CHAR_GET_ACCOUNT_BY_NAME, "SELECT account FROM characters WHERE name = ?");

    // Guild handling
    // 0: uint32, 1: string, 2: uint32, 3: string, 4: string, 5: uint64, 6-10: uint32, 11: uint64
    PrepareStatement(CHAR_ADD_GUILD, "INSERT INTO guild (guildid, name, leaderguid, info, motd, createdate, EmblemStyle, EmblemColor, BorderStyle, BorderColor, BackgroundColor, BankMoney, xp, level) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_GUILD, "DELETE FROM guild WHERE guildid = ?", true); // 0: uint32
    // 0: uint32, 1: uint32, 2: uint8, 4: string, 5: string
    PrepareStatement(CHAR_ADD_GUILD_MEMBER, "INSERT INTO guild_member (guildid, guid, rank, pnote, offnote) VALUES (?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_GUILD_MEMBER, "DELETE FROM guild_member WHERE guid = ?", true); // 0: uint32
    PrepareStatement(CHAR_DEL_GUILD_MEMBERS, "DELETE FROM guild_member WHERE guildid = ?", true); // 0: uint32
    // 0: uint32, 1: uint8, 3: string, 4: uint32
    PrepareStatement(CHAR_ADD_GUILD_RANK, "INSERT INTO guild_rank (guildid, rid, rname, rights) VALUES (?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_GUILD_RANKS, "DELETE FROM guild_rank WHERE guildid = ?", true); // 0: uint32
    PrepareStatement(CHAR_DEL_GUILD_LOWEST_RANK, "DELETE FROM guild_rank WHERE guildid = ? AND rid >= ?", true); // 0: uint32, 1: uint8
    PrepareStatement(CHAR_ADD_GUILD_BANK_TAB, "INSERT INTO guild_bank_tab (guildid, TabId) VALUES (?, ?)", true); // 0: uint32, 1: uint8
    PrepareStatement(CHAR_DEL_GUILD_BANK_TAB, "DELETE FROM guild_bank_tab WHERE guildid = ? AND TabId = ?", true); // 0: uint32, 1: uint8
    PrepareStatement(CHAR_DEL_GUILD_BANK_TABS, "DELETE FROM guild_bank_tab WHERE guildid = ?", true); // 0: uint32
     // 0: uint32, 1: uint8, 2: uint8, 3: uint32, 4: uint32
    PrepareStatement(CHAR_ADD_GUILD_BANK_ITEM, "INSERT INTO guild_bank_item (guildid, TabId, SlotId, item_guid) VALUES (?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_GUILD_BANK_ITEM, "DELETE FROM guild_bank_item WHERE guildid = ? AND TabId = ? AND SlotId = ?", true); // 0: uint32, 1: uint8, 2: uint8
    PrepareStatement(CHAR_DEL_GUILD_BANK_ITEMS, "DELETE FROM guild_bank_item WHERE guildid = ?", true); // 0: uint32
    PrepareStatement(CHAR_ADD_GUILD_BANK_RIGHT_DEFAULT, "INSERT INTO guild_bank_right (guildid, TabId, rid) VALUES (?, ?, ?)", true); // 0: uint32, 1: uint8, 2: uint8
     // 0: uint32, 1: uint8, 2: uint8, 3: uint8, 4: uint32
    PrepareStatement(CHAR_ADD_GUILD_BANK_RIGHT, "INSERT INTO guild_bank_right (guildid, TabId, rid, gbright, SlotPerDay) VALUES (?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_GUILD_BANK_RIGHT, "DELETE FROM guild_bank_right WHERE guildid = ? AND TabId = ? AND rid = ?", true); // 0: uint32, 1: uint8, 2: uint8
    PrepareStatement(CHAR_DEL_GUILD_BANK_RIGHTS, "DELETE FROM guild_bank_right WHERE guildid = ?", true); // 0: uint32
    PrepareStatement(CHAR_DEL_GUILD_BANK_RIGHTS_FOR_RANK, "DELETE FROM guild_bank_right WHERE guildid = ? AND rid = ?", true); // 0: uint32, 1: uint8
    // 0-1: uint32, 2-3: uint8, 4-5: uint32, 6: uint16, 7: uint8, 8: uint64
    PrepareStatement(CHAR_ADD_GUILD_BANK_EVENTLOG, "INSERT INTO guild_bank_eventlog (guildid, LogGuid, TabId, EventType, PlayerGuid, ItemOrMoney, ItemStackCount, DestTabId, TimeStamp) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_GUILD_BANK_EVENTLOG, "DELETE FROM guild_bank_eventlog WHERE guildid = ? AND LogGuid = ? AND TabId = ?", true); // 0: uint32, 1: uint32, 2: uint8
    PrepareStatement(CHAR_DEL_GUILD_BANK_EVENTLOGS, "DELETE FROM guild_bank_eventlog WHERE guildid = ?", true); // 0: uint32
    // 0-1: uint32, 2: uint8, 3-4: uint32, 5: uint8, 6: uint64
    PrepareStatement(CHAR_ADD_GUILD_EVENTLOG, "INSERT INTO guild_eventlog (guildid, LogGuid, EventType, PlayerGuid1, PlayerGuid2, NewRank, TimeStamp) VALUES (?, ?, ?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_GUILD_EVENTLOG, "DELETE FROM guild_eventlog WHERE guildid = ? AND LogGuid = ?", true); // 0: uint32, 1: uint32
    PrepareStatement(CHAR_DEL_GUILD_EVENTLOGS, "DELETE FROM guild_eventlog WHERE guildid = ?", true); // 0: uint32
    PrepareStatement(CHAR_SET_GUILD_MEMBER_PNOTE, "UPDATE guild_member SET pnote = ? WHERE guid = ?", true); // 0: string, 1: uint32
    PrepareStatement(CHAR_SET_GUILD_MEMBER_OFFNOTE, "UPDATE guild_member SET offnote = ? WHERE guid = ?", true); // 0: string, 1: uint32
    PrepareStatement(CHAR_SET_GUILD_MEMBER_RANK, "UPDATE guild_member SET rank = ? WHERE guid = ?", true); // 0: uint8, 1: uint32
    PrepareStatement(CHAR_SET_GUILD_MOTD, "UPDATE guild SET motd = ? WHERE guildid = ?", true); // 0: string, 1: uint32
    PrepareStatement(CHAR_SET_GUILD_INFO, "UPDATE guild SET info = ? WHERE guildid = ?", true); // 0: string, 1: uint32
    PrepareStatement(CHAR_SET_GUILD_LEADER, "UPDATE guild SET leaderguid = ? WHERE guildid = ?", true); // 0: uint32, 1: uint32
    PrepareStatement(CHAR_SET_GUILD_RANK_NAME, "UPDATE guild_rank SET rname = ? WHERE rid = ? AND guildid = ?", true); // 0: string, 1: uint8, 2: uint32
    PrepareStatement(CHAR_SET_GUILD_RANK_RIGHTS, "UPDATE guild_rank SET rights = ? WHERE rid = ? AND guildid = ?", true); // 0: uint32, 1: uint8, 2: uint32
    PrepareStatement(CHAR_GUILD_SAVE_XP, "UPDATE guild SET xp = ?, level = ? WHERE guildid = ?", true); // 1: uint64, 2,3: uint32
    // 0-5: uint32
    PrepareStatement(CHAR_SET_GUILD_EMBLEM_INFO, "UPDATE guild SET EmblemStyle = ?, EmblemColor = ?, BorderStyle = ?, BorderColor = ?, BackgroundColor = ? WHERE guildid = ?", true);
    // 0: string, 1: string, 2: uint32, 3: uint8
    PrepareStatement(CHAR_SET_GUILD_BANK_TAB_INFO, "UPDATE guild_bank_tab SET TabName = ?,TabIcon = ? WHERE guildid = ? AND TabId = ?", true);
    PrepareStatement(CHAR_SET_GUILD_BANK_MONEY, "UPDATE guild SET BankMoney = ? WHERE guildid = ?", true); // 0: uint64, 1: uint32
    // 0: uint8, 1: uint32, 2: uint8, 3: uint32
    PrepareStatement(CHAR_SET_GUILD_BANK_EVENTLOG_TAB, "UPDATE guild_bank_eventlog SET TabId = ? WHERE guildid = ? AND TabId = ? AND LogGuid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_REM_MONEY, "UPDATE guild_member SET BankRemMoney = ? WHERE guildid = ? AND guid = ?", true); // 0: uint32, 1: uint32, 2: uint32
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_TIME_MONEY, "UPDATE guild_member SET BankResetTimeMoney = ?, BankRemMoney = ? WHERE guildid = ? AND guid = ?", true); // 0: uint32, 1: uint32, 2: uint32, 3: uint32
    PrepareStatement(CHAR_RESET_GUILD_RANK_BANK_RESET_TIME, "UPDATE guild_member SET BankResetTimeMoney = 0 WHERE guildid = ? AND rank = ?", true); // 0: uint32, 1: uint8
    PrepareStatement(CHAR_SET_GUILD_RANK_BANK_MONEY, "UPDATE guild_rank SET BankMoneyPerDay = ? WHERE rid = ? AND guildid = ?", true); // 0: uint32, 1: uint8, 2: uint32
    PrepareStatement(CHAR_SET_GUILD_BANK_TAB_TEXT, "UPDATE guild_bank_tab SET TabText = ? WHERE guildid = ? AND TabId = ?", true); // 0: string, 1: uint32, 2: uint8
    // 0: uint32, 1: uint32, 2: uint32
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_REM_SLOTS0, "UPDATE guild_member SET BankRemSlotsTab0 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_REM_SLOTS1, "UPDATE guild_member SET BankRemSlotsTab1 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_REM_SLOTS2, "UPDATE guild_member SET BankRemSlotsTab2 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_REM_SLOTS3, "UPDATE guild_member SET BankRemSlotsTab3 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_REM_SLOTS4, "UPDATE guild_member SET BankRemSlotsTab4 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_REM_SLOTS5, "UPDATE guild_member SET BankRemSlotsTab5 = ? WHERE guildid = ? AND guid = ?", true);
    // 0: uint32, 1: uint32, 2: uint32, 3: uint32
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_TIME_REM_SLOTS0, "UPDATE guild_member SET BankResetTimeTab0 = ?, BankRemSlotsTab0 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_TIME_REM_SLOTS1, "UPDATE guild_member SET BankResetTimeTab1 = ?, BankRemSlotsTab1 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_TIME_REM_SLOTS2, "UPDATE guild_member SET BankResetTimeTab2 = ?, BankRemSlotsTab2 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_TIME_REM_SLOTS3, "UPDATE guild_member SET BankResetTimeTab3 = ?, BankRemSlotsTab3 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_TIME_REM_SLOTS4, "UPDATE guild_member SET BankResetTimeTab4 = ?, BankRemSlotsTab4 = ? WHERE guildid = ? AND guid = ?", true);
    PrepareStatement(CHAR_SET_GUILD_MEMBER_BANK_TIME_REM_SLOTS5, "UPDATE guild_member SET BankResetTimeTab5 = ?, BankRemSlotsTab5 = ? WHERE guildid = ? AND guid = ?", true);
    // 0: uint32, 1: uint8
    PrepareStatement(CHAR_RESET_GUILD_RANK_BANK_TIME0, "UPDATE guild_member SET BankResetTimeTab0 = 0 WHERE guildid = ? AND rank = ?", true);
    PrepareStatement(CHAR_RESET_GUILD_RANK_BANK_TIME1, "UPDATE guild_member SET BankResetTimeTab1 = 0 WHERE guildid = ? AND rank = ?", true);
    PrepareStatement(CHAR_RESET_GUILD_RANK_BANK_TIME2, "UPDATE guild_member SET BankResetTimeTab2 = 0 WHERE guildid = ? AND rank = ?", true);
    PrepareStatement(CHAR_RESET_GUILD_RANK_BANK_TIME3, "UPDATE guild_member SET BankResetTimeTab3 = 0 WHERE guildid = ? AND rank = ?", true);
    PrepareStatement(CHAR_RESET_GUILD_RANK_BANK_TIME4, "UPDATE guild_member SET BankResetTimeTab4 = 0 WHERE guildid = ? AND rank = ?", true);
    PrepareStatement(CHAR_RESET_GUILD_RANK_BANK_TIME5, "UPDATE guild_member SET BankResetTimeTab5 = 0 WHERE guildid = ? AND rank = ?", true);
    PrepareStatement(CHAR_LOAD_GUILDS, 
    //          0          1       2             3              4              5              6
        "SELECT g.guildid, g.name, g.leaderguid, g.EmblemStyle, g.EmblemColor, g.BorderStyle, g.BorderColor,"
    //   7                  8       9       10            11           12                  13  14
        "g.BackgroundColor, g.info, g.motd, g.createdate, g.BankMoney, COUNT(gbt.guildid), xp, level "
        "FROM guild g LEFT JOIN guild_bank_tab gbt ON g.guildid = gbt.guildid GROUP BY g.guildid ORDER BY g.guildid ASC");
    //                                              0        1    2      3       4
    PrepareStatement(CHAR_LOAD_GUILD_RANKS, "SELECT guildid, rid, rname, rights, BankMoneyPerDay FROM guild_rank ORDER BY guildid ASC, rid ASC");
    PrepareStatement(CHAR_LOAD_CHAR_DATA_FOR_GUILD, "SELECT name, level, class, zone, account FROM characters WHERE guid = ?");
    PrepareStatement(CHAR_LOAD_GUILD_MEMBERS, 
    //          0        1        2     3      4        5                   6
        "SELECT guildid, gm.guid, rank, pnote, offnote, BankResetTimeMoney, BankRemMoney,"
    //   7                  8                 9                  10                11                 12
        "BankResetTimeTab0, BankRemSlotsTab0, BankResetTimeTab1, BankRemSlotsTab1, BankResetTimeTab2, BankRemSlotsTab2,"
    //   13                 14                15                 16                17                 18
        "BankResetTimeTab3, BankRemSlotsTab3, BankResetTimeTab4, BankRemSlotsTab4, BankResetTimeTab5, BankRemSlotsTab5,"
    //   19      20       21       22      23         24
        "c.name, c.level, c.class, c.zone, c.account, c.logout_time "
        "FROM guild_member gm LEFT JOIN characters c ON c.guid = gm.guid ORDER BY guildid ASC");
    PrepareStatement(CHAR_LOAD_GUILD_BANK_RIGHTS, 
    //          0        1      2    3        4
        "SELECT guildid, TabId, rid, gbright, SlotPerDay FROM guild_bank_right ORDER BY guildid ASC, TabId ASC");
    //                                                  0        1      2        3        4
    PrepareStatement(CHAR_LOAD_GUILD_BANK_TABS, "SELECT guildid, TabId, TabName, TabIcon, TabText FROM guild_bank_tab ORDER BY guildid ASC, TabId ASC");
    PrepareStatement(CHAR_LOAD_GUILD_EVENTLOGS, 
    //          0        1        2          3            4            5        6
        "SELECT guildid, LogGuid, EventType, PlayerGuid1, PlayerGuid2, NewRank, TimeStamp FROM guild_eventlog ORDER BY TimeStamp DESC, LogGuid DESC");
    PrepareStatement(CHAR_LOAD_GUILD_BANK_EVENTLOGS, 
    //          0        1      2        3          4           5            6               7          8
        "SELECT guildid, TabId, LogGuid, EventType, PlayerGuid, ItemOrMoney, ItemStackCount, DestTabId, TimeStamp FROM guild_bank_eventlog ORDER BY TimeStamp DESC, LogGuid DESC");
    PrepareStatement(CHAR_LOAD_GUILD_BANK_ITEMS, 
    //          0            1                2      3         4        5      6             7                 8           9           10
        "SELECT creatorGuid, giftCreatorGuid, count, duration, charges, flags, enchantments, randomPropertyId, durability, playedTime, text, "
    //   11       12     13      14         15
        "guildid, TabId, SlotId, item_guid, itemEntry FROM guild_bank_item gbi INNER JOIN item_instance ii ON gbi.item_guid = ii.guid");

    PrepareStatement(CHAR_CLEAN_GUILD_RANKS, "DELETE FROM guild_rank WHERE guildId NOT IN (SELECT guildid FROM guild)", true);
    PrepareStatement(CHAR_CLEAN_GUILD_MEMBERS, "DELETE FROM guild_member WHERE guildId NOT IN (SELECT guildid FROM guild)", true);
    PrepareStatement(CHAR_CLEAN_GUILD_BANK_TABS, "DELETE FROM guild_bank_tab WHERE guildId NOT IN (SELECT guildid FROM guild)", true);
    PrepareStatement(CHAR_CLEAN_GUILD_BANK_RIGHTS, "DELETE FROM guild_bank_right WHERE guildId NOT IN (SELECT guildid FROM guild)", true);
    PrepareStatement(CHAR_CLEAN_GUILD_BANK_ITEMS, "DELETE FROM guild_bank_item WHERE guildId NOT IN (SELECT guildid FROM guild)", true);

    // Chat channel handling
    PrepareStatement(CHAR_LOAD_CHANNEL, "SELECT m_announce, m_ownership, m_password, BannedList FROM channels WHERE m_name = ? AND m_team = ?");
    PrepareStatement(CHAR_ADD_CHANNEL, "INSERT INTO channels (m_name, m_team, last_used) VALUES (? , ?, UNIX_TIMESTAMP())");
    PrepareStatement(CHAR_SET_CHANNEL, "UPDATE channels SET m_announce = ?, m_ownership = ?, m_password = ?, BannedList = ?, last_used = UNIX_TIMESTAMP() WHERE m_name = ? AND m_team = ?");
    PrepareStatement(CHAR_SET_CHANNEL_USAGE, "UPDATE channels SET last_used = UNIX_TIMESTAMP() WHERE m_name = ? AND m_team = ?");
    PrepareStatement(CHAR_CLEAN_CHANNEL, "DELETE FROM channels WHERE m_ownership = 1 AND (last_used + ?) < UNIX_TIMESTAMP()");

    // Equipmentsets
    PrepareStatement(CHAR_SET_EQUIP_SET, "UPDATE character_equipmentsets SET name=?, iconname=?, item0=?, item1=?, item2=?, item3=?, item4=?, item5=?, item6=?, item7=?, item8=?, item9=?, item10=?, item11=?, item12=?, item13=?, item14=?, item15=?, item16=?, item17=?, item18=? WHERE guid=? AND setguid=? AND setindex=?", true);
    PrepareStatement(CHAR_ADD_EQUIP_SET, "INSERT INTO character_equipmentsets (guid,setguid,setindex,name,iconname,item0,item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13,item14,item15,item16,item17,item18) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", true);
    PrepareStatement(CHAR_DEL_EQUIP_SET, "DELETE FROM character_equipmentsets WHERE setguid=?", true);

    // Auras
    PrepareStatement(CHAR_DEL_AURA, "DELETE FROM character_aura WHERE guid = ?", true);
    PrepareStatement(CHAR_ADD_AURA, "INSERT INTO character_aura (guid,caster_guid,item_guid,spell,effect_mask,recalculate_mask,stackcount,amount0,amount1,amount2,base_amount0,base_amount1,base_amount2,maxduration,remaintime,remaincharges) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", true);

	// Currency
	PrepareStatement(CHAR_LOAD_PLAYER_CURRENCY, "SELECT currency, count, thisweek FROM character_currency WHERE guid = ?");

    return true;
}
