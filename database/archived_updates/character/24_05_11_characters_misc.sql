-- Battleground
ALTER TABLE `character_battleground_data` ROW_FORMAT=DEFAULT,
CHANGE `guid` `guid` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Global Unique Identifier',
CHANGE `instance_id` `instanceId` INT(10) UNSIGNED NOT NULL COMMENT 'Instance Identifier', 
CHANGE `team` `team` SMALLINT(5) UNSIGNED NOT NULL,
CHANGE `join_map` `joinMapId` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `taxi_start` `taxiStart` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `taxi_end` `taxiEnd` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `mount_spell` `mountSpell` MEDIUMINT(8) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `join_x` `joinX` float NOT NULL DEFAULT '0',
CHANGE `join_y` `joinY` float NOT NULL DEFAULT '0',
CHANGE `join_z` `joinZ` float NOT NULL DEFAULT '0',
CHANGE `join_o` `joinO` float NOT NULL DEFAULT '0';


-- Channels
ALTER TABLE `channels`
ROW_FORMAT=DEFAULT,
CHANGE `BannedList` `BannedList` TEXT,
DROP PRIMARY KEY, 
ADD PRIMARY KEY (`m_name`, `m_team`);

ALTER TABLE `channels` CHANGE COLUMN `m_name` `name` varchar(128) NOT NULL,
CHANGE COLUMN `m_team` `team` int(10) unsigned NOT NULL,
CHANGE COLUMN `m_announce` `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
CHANGE COLUMN `m_ownership` `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
CHANGE COLUMN `m_password` `password` varchar(32) DEFAULT NULL,
CHANGE COLUMN `BannedList` `bannedList` text,
CHANGE COLUMN `last_used` `lastUsed` int(10) unsigned NOT NULL;

-- Arena  
ALTER TABLE `arena_team`
CHANGE `arenateamid` `arenaTeamId` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `captainguid` `captainGuid` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BackgroundColor` `backgroundColor` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `EmblemStyle` `emblemStyle` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `EmblemColor` `emblemColor` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BorderStyle` `borderStyle` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `BorderColor` `borderColor` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
ADD COLUMN `rating` SMALLINT(5) UNSIGNED NOT NULL AFTER `type`,
ADD COLUMN `seasonGames` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `rating`,
ADD COLUMN `seasonWins` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `seasonGames`,
ADD COLUMN `weekGames` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `seasonWins`,
ADD COLUMN `weekWins` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `weekGames`,
ADD COLUMN `rank` INT(10) UNSIGNED NOT NULL AFTER `weekWins`;

UPDATE `arena_team` a, `arena_team_stats` s SET
`a`.`rating` = `s`.`rating`,
`a`.`seasonGames` = `s`.`played`,
`a`.`seasonWins` = `s`.`wins2`,
`a`.`weekGames` = `s`.`games`,
`a`.`weekWins` = `s`.`wins`,
`a`.`rank` = `s`.`rank`
WHERE `a`.`arenaTeamId` = `s`.`arenateamid`;

DROP TABLE `arena_team_stats`;

ALTER TABLE `arena_team_member`
CHANGE `arenateamid` `arenaTeamId` INT(10) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `played_week` `weekGames` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `wons_week` `weekWins` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `played_season` `seasonGames` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
CHANGE `wons_season` `seasonWins` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL,
ADD COLUMN `personalRating` SMALLINT(5) UNSIGNED DEFAULT '0' NOT NULL AFTER `seasonWins`;

ALTER TABLE `character_arena_stats`
CHANGE `personal_rating` `personalRating` SMALLINT(5) NOT NULL,
CHANGE `matchmaker_rating` `matchMakerRating` SMALLINT(5) NOT NULL;

UPDATE arena_team_member
INNER JOIN character_arena_stats ON arena_team_member.guid = character_arena_stats.guid
INNER JOIN arena_team ON arena_team.arenaTeamId = arena_team_member.arenaTeamId AND (slot = 0 AND TYPE = 2 OR slot = 1 AND TYPE = 3 OR slot = 2 AND TYPE = 5)
SET arena_team_member.personalRating = character_arena_stats.personalRating;

ALTER TABLE `character_arena_stats`
DROP COLUMN `personalRating`;