ALTER TABLE `character_pet`
ROW_FORMAT=DEFAULT,
CHANGE `id` `id` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `entry` `entry` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `owner` `owner` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `modelid` `modelid` INT(10) UNSIGNED DEFAULT '0' NULL ,
CHANGE `CreatedBySpell` `CreatedBySpell` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `level` `level` SMALLINT(5) UNSIGNED DEFAULT '1' NOT NULL,
CHANGE `exp` `exp` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `Reactstate` `Reactstate` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `name` `name` VARCHAR(21) DEFAULT 'Pet' NOT NULL,
CHANGE `renamed` `renamed` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `slot` `slot` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `curhealth` `curhealth` INT(10) UNSIGNED DEFAULT '1' NOT NULL,
CHANGE `curmana` `curmana` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `curhappiness` `curhappiness` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `savetime` `savetime` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `resettalents_cost` `resettalents_cost` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `resettalents_time` `resettalents_time` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `abdata` `abdata` TEXT NULL;

ALTER TABLE `character_inventory`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `bag` `bag` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `item` `item` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Item Global Unique Identifier';

ALTER TABLE `character_instance`
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `instance` `instance` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `permanent` `permanent` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `character_homebind`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `map` `map` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Map Identifier',
CHANGE `zone` `zone` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Zone Identifier';

ALTER TABLE `worldstates`
ROW_FORMAT=DEFAULT,
CHANGE `entry` `entry` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `value` `value` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `comment` `comment` TINYTEXT;

ALTER TABLE `petition_sign`
ROW_FORMAT=DEFAULT,
CHANGE `petitionguid` `petitionguid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `playerguid` `playerguid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `player_account` `player_account` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `type` `type` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `petition`
ROW_FORMAT=DEFAULT,
CHANGE `name` `name` VARCHAR(24) NOT NULL;

ALTER TABLE `pet_spell_cooldown`
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier, Low part',
CHANGE `spell` `spell` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Spell Identifier',
CHANGE `time` `time` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `pet_spell`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `spell` `spell` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Spell Identifier',
CHANGE `active` `active` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `pet_aura`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `spell` `spell` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `amount0` `amount0` MEDIUMINT(8) NOT NULL, 
CHANGE `amount1` `amount1` MEDIUMINT(8) NOT NULL, 
CHANGE `amount2` `amount2` MEDIUMINT(8) NOT NULL, 
CHANGE `base_amount0` `base_amount0` MEDIUMINT(8) NOT NULL, 
CHANGE `base_amount1` `base_amount1` MEDIUMINT(8) NOT NULL, 
CHANGE `base_amount2` `base_amount2` MEDIUMINT(8) NOT NULL;

ALTER TABLE `mail_items`
CHANGE `mail_id` `mail_id` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `item_guid` `item_guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `receiver` `receiver` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Character Global Unique Identifier';

ALTER TABLE `mail`
ROW_FORMAT=DEFAULT,
CHANGE `id` `id` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Identifier',
CHANGE `mailTemplateId` `mailTemplateId` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `sender` `sender` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Character Global Unique Identifier',
CHANGE `receiver` `receiver` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Character Global Unique Identifier',
CHANGE `expire_time` `expire_time` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `deliver_time` `deliver_time` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `money` `money` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `cod` `cod` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `lag_reports`
ROW_FORMAT=DEFAULT,
CHANGE `report_id` `report_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
CHANGE `player` `player` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `lag_type` `lag_type` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `map` `map` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `item_soulbound_trade_data`
ROW_FORMAT=DEFAULT,
CHANGE `itemGuid` `itemGuid` INT(10) UNSIGNED NOT NULL COMMENT 'Item GUID';

ALTER TABLE `item_refund_instance`
ROW_FORMAT=DEFAULT,
CHANGE `item_guid` `item_guid` INT(10) UNSIGNED NOT NULL COMMENT 'Item GUID',
CHANGE `player_guid` `player_guid` INT(10) UNSIGNED NOT NULL COMMENT 'Player GUID',
CHANGE `paidMoney` `paidMoney` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `paidExtendedCost` `paidExtendedCost` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `item_instance`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `owner_guid` `owner_guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `charges` `charges` TINYTEXT,
CHANGE `duration` `duration` INT(10) DEFAULT '0' NOT NULL,
CHANGE `flags` `flags` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `randomPropertyId` `randomPropertyId` SMALLINT(5) DEFAULT '0' NOT NULL,
CHANGE `durability` `durability` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `text` `text` TEXT NULL;

ALTER TABLE `instance_reset`
CHANGE `mapid` `mapid` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `difficulty` `difficulty` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `resettime` `resettime` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `instance`
CHANGE `id` `id` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `map` `map` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `resettime` `resettime` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `difficulty` `difficulty` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `data` `data` TINYTEXT NOT NULL;

ALTER TABLE `guild_rank`
ROW_FORMAT=DEFAULT,
CHANGE `guildid` `guildid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `rid` `rid` TINYINT(3) UNSIGNED NOT NULL,
CHANGE `rname` `rname` VARCHAR(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' NOT NULL,
CHANGE `rights` `rights` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BankMoneyPerDay` `BankMoneyPerDay` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `guild_member`
ROW_FORMAT=DEFAULT,
CHANGE `guildid` `guildid` INT(10) UNSIGNED NOT NULL COMMENT 'Guild Identificator',
CHANGE `guid` `guid` INT(10) UNSIGNED NOT NULL,
CHANGE `rank` `rank` TINYINT(3) UNSIGNED NOT NULL,
CHANGE `pnote` `pnote` varchar(31) NOT NULL DEFAULT '',
CHANGE `offnote` `offnote` varchar(31) NOT NULL DEFAULT '',
CHANGE `BankResetTimeMoney` `BankResetTimeMoney` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankRemMoney` `BankRemMoney` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankResetTimeTab0` `BankResetTimeTab0` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankRemSlotsTab0` `BankRemSlotsTab0` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankResetTimeTab1` `BankResetTimeTab1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankRemSlotsTab1` `BankRemSlotsTab1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankResetTimeTab2` `BankResetTimeTab2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankRemSlotsTab2` `BankRemSlotsTab2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankResetTimeTab3` `BankResetTimeTab3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankRemSlotsTab3` `BankRemSlotsTab3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankResetTimeTab4` `BankResetTimeTab4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankRemSlotsTab4` `BankRemSlotsTab4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankResetTimeTab5` `BankResetTimeTab5` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `BankRemSlotsTab5` `BankRemSlotsTab5` INT(10) UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE `guild_eventlog`
CHANGE `guildid` `guildid` INT(10) UNSIGNED NOT NULL COMMENT 'Guild Identificator',
CHANGE `LogGuid` `LogGuid` INT(10) UNSIGNED NOT NULL COMMENT 'Log record identificator - auxiliary column',
CHANGE `EventType` `EventType` TINYINT(3) UNSIGNED NOT NULL COMMENT 'Event type',
CHANGE `PlayerGuid1` `PlayerGuid1` INT(10) UNSIGNED NOT NULL COMMENT 'Player 1',
CHANGE `PlayerGuid2` `PlayerGuid2` INT(10) UNSIGNED NOT NULL COMMENT 'Player 2',
CHANGE `NewRank` `NewRank` TINYINT(3) UNSIGNED NOT NULL COMMENT 'New rank(in case promotion/demotion)',
CHANGE `TimeStamp` `TimeStamp` INT(10) UNSIGNED NOT NULL COMMENT 'Event UNIX time';

ALTER TABLE `guild_bank_tab`
CHANGE `guildid` `guildid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `TabId` `TabId` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `TabName` `TabName` VARCHAR(16) DEFAULT '' NOT NULL,
CHANGE `TabText` `TabText` VARCHAR(500) NULL;

ALTER TABLE `guild_bank_right`
CHANGE `guildid` `guildid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `TabId` `TabId` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `rid` `rid` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `SlotPerDay` `SlotPerDay` INT(10) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE `guild_bank_item`
CHANGE `guildid` `guildid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `TabId` `TabId` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `item_guid` `item_guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `guild_bank_eventlog`
CHANGE `guildid` `guildid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Guild Identificator',
CHANGE `LogGuid` `LogGuid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Log record identificator - auxiliary column',
CHANGE `PlayerGuid` `PlayerGuid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `ItemOrMoney` `ItemOrMoney` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `ItemStackCount` `ItemStackCount` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `DestTabId` `DestTabId` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Destination Tab Id',
CHANGE `TimeStamp` `TimeStamp` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Event UNIX time';

ALTER TABLE `guild`
ROW_FORMAT=DEFAULT,
CHANGE `guildid` `guildid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `name` `name` VARCHAR(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' NOT NULL,
CHANGE `leaderguid` `leaderguid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `EmblemStyle` `EmblemStyle` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `EmblemColor` `EmblemColor` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BorderStyle` `BorderStyle` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BorderColor` `BorderColor` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BackgroundColor` `BackgroundColor` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `motd` `motd` VARCHAR(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' NOT NULL,
CHANGE `createdate` `createdate` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BankMoney` `BankMoney` BIGINT(20) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `groups`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED NOT NULL,
CHANGE `leaderGuid` `leaderGuid` INT(10) UNSIGNED NOT NULL,
CHANGE `lootMethod` `lootMethod` TINYINT(3) UNSIGNED NOT NULL,
CHANGE `looterGuid` `looterGuid` INT(10) UNSIGNED NOT NULL,
CHANGE `lootThreshold` `lootThreshold` TINYINT(3) UNSIGNED NOT NULL,
CHANGE `icon1` `icon1` INT(10) UNSIGNED NOT NULL,
CHANGE `icon2` `icon2` INT(10) UNSIGNED NOT NULL,
CHANGE `icon3` `icon3` INT(10) UNSIGNED NOT NULL,
CHANGE `icon4` `icon4` INT(10) UNSIGNED NOT NULL,
CHANGE `icon5` `icon5` INT(10) UNSIGNED NOT NULL,
CHANGE `icon6` `icon6` INT(10) UNSIGNED NOT NULL,
CHANGE `icon7` `icon7` INT(10) UNSIGNED NOT NULL,
CHANGE `icon8` `icon8` INT(10) UNSIGNED NOT NULL,
CHANGE `groupType` `groupType` TINYINT(3) UNSIGNED NOT NULL,
CHANGE `raiddifficulty` `raiddifficulty` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `group_member`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED NOT NULL,
CHANGE `memberGuid` `memberGuid` INT(10) UNSIGNED NOT NULL;

ALTER TABLE `group_instance`
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `instance` `instance` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `permanent` `permanent` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `gm_tickets`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
CHANGE `playerGuid` `playerGuid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `name` `name` VARCHAR(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
CHANGE `createtime` `createtime` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `map` `map` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `timestamp` `timestamp` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `closed` `closed` INT(11) DEFAULT '0' NOT NULL,
CHANGE `assignedto` `assignedto` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `completed` `completed` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `escalated` `escalated` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `viewed` `viewed` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `gm_surveys`
ROW_FORMAT=DEFAULT,
CHANGE `surveyid` `surveyid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
CHANGE `player` `player` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `mainSurvey` `mainSurvey` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `timestamp` `timestamp` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `gm_subsurveys`
ROW_FORMAT=DEFAULT,
CHANGE `surveyid` `surveyid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
CHANGE `subsurveyid` `subsurveyid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `rank` `rank` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `comment` `comment` TEXT NOT NULL;

ALTER TABLE `game_event_condition_save`
CHANGE `event_id` `event_id` SMALLINT(5) UNSIGNED NOT NULL,
CHANGE `condition_id` `condition_id` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `corpse`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `player` `player` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Character Global Unique Identifier',
DROP COLUMN `zone`,
CHANGE `map` `map` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Map Identifier',
CHANGE `phaseMask` `phaseMask` TINYINT(3) UNSIGNED DEFAULT '1' NOT NULL,
CHANGE `flags` `flags` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `dynFlags` `dynFlags` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `time` `time` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `instance` `instance` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `characters`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `account` `account` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Account Identifier',
CHANGE `map` `map` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Map Identifier',
CHANGE `instance_id` `instance_id` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `instance_mode_mask` `instance_mode_mask` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `taximask` `taximask` TEXT NOT NULL,
CHANGE `totaltime` `totaltime` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `leveltime` `leveltime` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `logout_time` `logout_time` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `resettalents_cost` `resettalents_cost` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `resettalents_time` `resettalents_time` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `transguid` `transguid` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `extra_flags` `extra_flags` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `stable_slots` `stable_slots` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `at_login` `at_login` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `zone` `zone` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `death_expire_time` `death_expire_time` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `watchedFaction` `watchedFaction` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `latency` `latency` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `deleteInfos_Account` `deleteInfos_Account` INT(10) UNSIGNED NULL ,
CHANGE `deleteDate` `deleteDate` INT(10) UNSIGNED NULL ;

ALTER TABLE `character_tutorial`
ROW_FORMAT=DEFAULT,
CHANGE `account` `account` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Account Identifier',
DROP PRIMARY KEY, 
ADD PRIMARY KEY (`account`),
DROP `realmid`,
CHANGE `tut0` `tut0` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `tut1` `tut1` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `tut2` `tut2` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `tut3` `tut3` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `tut4` `tut4` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `tut5` `tut5` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `tut6` `tut6` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `tut7` `tut7` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
DROP KEY `acc_key`;

ALTER TABLE `character_talent`
CHANGE `guid` `guid` INT(10) UNSIGNED NOT NULL,
CHANGE `spell` `spell` MEDIUMINT(8) UNSIGNED NOT NULL;

ALTER TABLE `character_stats`
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier, Low part';

ALTER TABLE `character_spell_cooldown`
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier, Low part',
CHANGE `spell` `spell` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Spell Identifier',
CHANGE `item` `item` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Item Identifier',
CHANGE `time` `time` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `character_spell`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `spell` `spell` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Spell Identifier';

ALTER TABLE `character_social`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Character Global Unique Identifier',
CHANGE `friend` `friend` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Friend Global Unique Identifier',
CHANGE `flags` `flags` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Friend Flags',
DROP INDEX `guid`,
DROP INDEX `guid_flags`,
DROP INDEX `friend_flags`;

ALTER TABLE `character_skills`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `skill` `skill` SMALLINT(5) UNSIGNED NOT NULL,
CHANGE `value` `value` SMALLINT(5) UNSIGNED NOT NULL,
CHANGE `max` `max` SMALLINT(5) UNSIGNED NOT NULL;

ALTER TABLE `character_reputation`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `faction` `faction` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `flags` `flags` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `character_queststatus_weekly`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `quest` `quest` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Quest Identifier';

ALTER TABLE `character_queststatus_daily`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `quest` `quest` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Quest Identifier',
CHANGE `time` `time` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `character_queststatus`
ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `quest` `quest` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Quest Identifier',
CHANGE `status` `status` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `explored` `explored` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `timer` `timer` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `mobcount1` `mobcount1` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `mobcount2` `mobcount2` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `mobcount3` `mobcount3` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `mobcount4` `mobcount4` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `itemcount1` `itemcount1` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `itemcount2` `itemcount2` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `itemcount3` `itemcount3` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `itemcount4` `itemcount4` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `character_pet_declinedname`
ROW_FORMAT=DEFAULT,
CHANGE `id` `id` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `owner` `owner` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE `character_inventory` 
ADD UNIQUE KEY (`guid`,`bag`,`slot`);