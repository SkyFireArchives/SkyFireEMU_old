ALTER TABLE gameobject_template ADD data24 int(10) AFTER data23;
ALTER TABLE gameobject_template ADD data25 int(10) AFTER data24;
ALTER TABLE gameobject_template ADD data26 int(10) AFTER data25;
ALTER TABLE gameobject_template ADD data27 int(10) AFTER data26;
ALTER TABLE gameobject_template ADD data28 int(10) AFTER data27;
ALTER TABLE gameobject_template ADD data29 int(10) AFTER data28;
ALTER TABLE gameobject_template ADD data30 int(10) AFTER data29;
ALTER TABLE gameobject_template ADD data31 int(10) AFTER data30;
--
-- Table structure for table `achievement_dbc`
--

DROP TABLE IF EXISTS `achievement_dbc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement_dbc` (
  `ID` int(10) unsigned NOT NULL,
  `requiredFaction` int(11) NOT NULL DEFAULT '-1',
  `mapID` int(11) NOT NULL DEFAULT '-1',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `refAchievement` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement_dbc`
--

LOCK TABLES `achievement_dbc` WRITE;
/*!40000 ALTER TABLE `achievement_dbc` DISABLE KEYS */;
INSERT INTO `achievement_dbc` VALUES
(3696,-1,-1,0,2,1,0), -- Earned the right to represent a city in the Argent Tournament
(4788,-1,-1,0,2,1,0), -- Is exalted with The Aldor or has any of exalted rewards
(4789,-1,-1,0,2,1,0); -- Is exalted with The Scryers or has any of exalted rewards
/*!40000 ALTER TABLE `achievement_dbc` ENABLE KEYS */;
UNLOCK TABLES;

-- Fire Bomb (66313) Spell Script
DELETE FROM `spell_script_names` WHERE `spell_id` = 66313;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('66313', 'spell_gen_fire_bomb');

-- Improved Cone of Cold, necessary for the above patch to work - it's a sorta hacky way, but I couldn't think of a better one (any advice/hint is highly appreciated)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`='120' AND `spell_effect`='83301';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`='120' AND `spell_effect`='83302';
INSERT INTO `spell_linked_spell` VALUES ('120', '83301', '1', 'Improved Cone of Cold trigger - rank 1');
INSERT INTO `spell_linked_spell` VALUES ('120', '83302', '1', 'Improved Cone of Cold trigger - rank 2');

-- Daybreak - Holy Paladin talent - fixes both Holy Shock proccing it and the exploit that allowed you to spam Holy Shock for the whole buff's duration
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20473' AND `spell_effect` = '-88819';
INSERT INTO `spell_linked_spell` VALUES ('20473', '-88819', '0', 'Holy Shock - removes Daybreak');

INSERT INTO `spell_linked_spell` VALUES (122,22645,0,"Frost Nova");

ALTER TABLE `version` CHANGE `core_revision` `core_revision` varchar(120) DEFAULT NULL;

DELETE FROM `trinity_string` WHERE `entry` IN (1134, 1135);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES 
(1134, 'Sending tickets is allowed.'),
(1135, 'Sending tickets is not allowed.');

-- Obsidian Sanctum
-- Template updates for creature 31103 (Twilight Egg (Cosmetic))
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`=31103; -- Twilight Egg (Cosmetic)
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81 WHERE `entry`=30681; -- Onyx Blaze Mistress
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81 WHERE `entry`=30453; -- Onyx Sanctum Guardian
UPDATE `creature_template` SET `exp`=0,`unit_flags`=`unit_flags`|33554432 WHERE `entry`=30648; -- Fire Cyclone
UPDATE `creature_model_info` SET `bounding_radius`=2.25,`combat_reach`=4.5,`gender`=0 WHERE `modelid`=27421; -- Shadron
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2 WHERE `entry`=30616; -- Flame Tsunami

-- Model data
UPDATE `creature_model_info` SET `bounding_radius`=1.25,`combat_reach`=8.75,`gender`=0 WHERE `modelid`=27226; -- Onyx Brood General
UPDATE `creature_model_info` SET `bounding_radius`=3.75,`combat_reach`=3.75,`gender`=1 WHERE `modelid`=27227; -- Onyx Blaze Mistress
UPDATE `creature_model_info` SET `bounding_radius`=3.75,`combat_reach`=4.375,`gender`=0 WHERE `modelid`=12891; -- Onyx Flight Captain
UPDATE `creature_model_info` SET `bounding_radius`=2.25,`combat_reach`=4.5,`gender`=0 WHERE `modelid`=27039; -- Vesperon
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=1,`gender`=0 WHERE `modelid`=27225; -- Onyx Sanctum Guardian
UPDATE `creature_model_info` SET `bounding_radius`=1.8,`combat_reach`=1,`gender`=2 WHERE `modelid`=27035; -- Sartharion

-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (31103,30680,30681,30682,30449,30453,30648,30451,28860,30616);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(31103,0,0,1,0, NULL), -- Twilight Egg (Cosmetic)
(30680,0,0,1,0, NULL), -- Onyx Brood General
(30681,0,0,1,0, NULL), -- Onyx Blaze Mistress
(30682,0,0,1,0, NULL), -- Onyx Flight Captain
(30449,0,0,1,0, NULL), -- Vesperon
(30453,0,0,1,0, NULL), -- Onyx Sanctum Guardian
(30648,0,0,1,0, NULL), -- Fire Cyclone
(30451,0,0,1,0, NULL), -- Shadron
(28860,0,0,1,0, NULL), -- Sartharion
(30616,0,0,1,0, NULL); -- Flame Tsunami

-- Egg Controller's faction 
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=31138; -- 10 man
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=31550; -- 25 man

-- Twilight Eggs
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry` IN (31204, 30882); -- 10 man faction
UPDATE `creature_template` SET `minlevel`=80, `maxlevel`=80 WHERE `entry`=31204; -- 10 man level
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry` IN (31539, 31547); -- 25 man facion

-- Twilight portal
DELETE FROM `gameobject` WHERE `id`=193988 AND `map`=615;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(193988, 615, 3, 1, 3211.47, 662.216, 88.6785, 0.0496894, 0, 0, 0.0248422, 0.999691, -300, 0, 1), -- Tenebron
(193988, 615, 3, 1, 3369.35, 551.057, 96.5166, 4.4896, 0, 0, 0.781329, -0.62412, -300, 0, 1), -- Shadron
(193988, 615, 3, 1, 3135.89, 508.316, 88.9527, 1.53269, 0, 0, 0.693506, 0.72045, -300, 0, 1), -- Vesperon
(193988, 615, 3, 1, 3241.02, 497.604, 58.7779, 1.46855, 0, 0, 0.670048, 0.742318, -300, 0, 1); -- Sartharion

-- Onyxia eggs cooldown
UPDATE `gameobject_template` SET `data5` = 15 WHERE `entry` = 176511;
-- Onyxia Warder respawn
UPDATE `creature` SET `spawntimesecs`=1000000 WHERE `id`=12129;

DELETE FROM `command` WHERE `name` LIKE 'channel set public';
DELETE FROM `command` WHERE `name` LIKE 'channel set ownership';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('channel set ownership', 3, 'Syntax: .channel set ownership $channel [on/off]\n\n\Grant ownership to the first person that joins the channel.');

DELETE FROM `trinity_string` WHERE `entry` IN (5022, 5023);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES 
(5022, 'Granting ownership to first person that joins the channel \"%s\": Enabled.'),
(5023, 'Granting ownership to first person that joins the channel \"%s\": Disabled.');

ALTER TABLE `disables` 
ADD COLUMN params_0 varchar (255) NOT NULL default '' AFTER flags,
ADD COLUMN params_1 VARCHAR (255) NOT NULL default '' AFTER params_0;

UPDATE `creature_template` SET `ScriptName`='npc_injured_soldier' WHERE (`entry`='50047');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `cast_flags`) VALUES
('50047', '93072', '28812', '1', '1'),
('50047', '93072', '28813', '1', '1'),
('50047', '93072', '29082', '1', '1'),
('50047', '93072', '28811', '1', '1'),
('50047', '93072', '28810', '1', '1'),
('50047', '93072', '28808', '1', '1'),
('50047', '93072', '28809', '1', '1'),
('50047', '93072', '28806', '1', '1');

UPDATE `quest_template` SET `SkillOrClassMask`='-2', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28785'  WHERE (`entry`='28809');
UPDATE `quest_template` SET `SkillOrClassMask`='-128', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28784'  WHERE (`entry`='28810');
UPDATE `quest_template` SET `SkillOrClassMask`='-8', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28787'  WHERE (`entry`='28811');
UPDATE `quest_template` SET `SkillOrClassMask`='-256', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28788'  WHERE (`entry`='28812');
UPDATE `quest_template` SET `SkillOrClassMask`='-1', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28789'  WHERE (`entry`='28813');
UPDATE `quest_template` SET `SkillOrClassMask`='-4', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28780' WHERE (`entry`='28806');
UPDATE `quest_template` SET `SkillOrClassMask`='-16', `MinLevel`='3', `QuestFlags`='524288', `PrevQuestId`='28786'  WHERE (`entry`='28808');

DELETE FROM `conditions` WHERE SourceEntry = 69228;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
('13', '69228', '18', '1', '36727'),
('13', '69228', '18', '1', '37155'),
('13', '69228', '18', '1', '37156');

INSERT INTO `spell_linked_spell` VALUES (86719,82739,0,"Flame Orb - Damage");
UPDATE `creature_template` SET `ScriptName`='npc_flame_orb' WHERE `entry`=30702;

-- A Little Dash of Seasoning
UPDATE quest_template SET ReqCreatureOrGOId1='-181250',ReqCreatureOrGOId2='-181251',ReqCreatureOrGOId3='-181252',ReqCreatureOrGOCount1='1',ReqCreatureOrGOCount2='1',ReqCreatureOrGOCount3='1',ReqSpellCast1='29517',ReqSpellCast2='29517',ReqSpellCast3='29517',CompleteEmote='1' WHERE entry=9275;
UPDATE gameobject_template SET TYPE=2, data1=9275 WHERE entry IN(181250,181251,181252);

ALTER table `creature_linked_respawn`
RENAME TO `linked_respawn`,
ADD COLUMN linkType tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
DROP PRIMARY KEY,
ADD PRIMARY KEY(`guid`, `linkType`);

-- Escape from the Catacombs
DELETE FROM `script_waypoint` WHERE entry=16295;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
('16295','0','7545.07','-7359.87','162.354','4000','SAY_START'),
('16295','1','7550.05','-7362.24','162.236','0',''),
('16295','2','7566.98','-7364.32','161.739','0',''),
('16295','3','7578.83','-7361.68','161.739','0',''),
('16295','4','7590.97','-7359.05','162.258','0',''),
('16295','5','7598.35','-7362.82','162.257','4000','SAY_PROGRESS_1'),
('16295','6','7605.86','-7380.42','161.937','0',''),
('16295','7','7605.3','-7387.38','157.254','0',''),
('16295','8','7606.13','-7393.89','156.942','0',''),
('16295','9','7615.21','-7400.19','157.143','0',''),
('16295','10','7618.96','-7402.65','158.202','0',''),
('16295','11','7636.85','-7401.76','162.145','0','SAY_PROGRESS_2'),
('16295','12','7637.06','-7404.94','162.207','4000',''),
('16295','13','7636.91','-7412.59','162.366','0',''),
('16295','14','7637.61','-7425.59','162.631','0',''),
('16295','15','7637.82','-7459.06','163.303','0',''),
('16295','16','7638.86','-7470.9','162.517','0',''),
('16295','17','7641.4','-7488.22','157.381','0',''),
('16295','18','7634.46','-7505.45','154.682','0','SAY_PROGRESS_3'),
('16295','19','7631.91','-7516.95','153.597','0',''),
('16295','20','7622.23','-7537.04','151.587','0',''),
('16295','21','7610.92','-7550.67','149.639','0',''),
('16295','22','7598.23','-7562.55','145.954','0',''),
('16295','23','7588.51','-7577.76','148.294','0',''),
('16295','24','7567.34','-7608.46','146.006','0',''),
('16295','25','7562.55','-7617.42','148.098','0',''),
('16295','26','7561.51','-7645.06','151.245','0',''),
('16295','27','7563.34','-7654.65','151.227','0',''),
('16295','28','7565.53','-7658.3','151.249','0',''),
('16295','30','7579.12','-7662.21','151.652','0','quest complete'),
('16295','31','7603.77','-7667','153.998','0',''),
('16295','32','7603.77','-7667','153.998','4000','SAY_END_1'),
('16295','33','7603.77','-7667','153.998','8000','SAY_END_2'),
('16295','34','7603.77','-7667','153.998','0',''),
('16295','39','7571.16','-7659.12','151.245','0','');
 
DELETE FROM `script_texts` WHERE entry IN(-1000140,-1000141,-1000142,-1000143,-1000144,-1000145,-1000146);
INSERT INTO `script_texts` (`npc_entry`,`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('16295','-1000146','Liatha, get someone to look at those injuries. Thank you for bringing her back safely.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','1','0','lilatha CAPTAIN_ANSWER'),
('16295','-1000145','Captain Helios, I\'ve been rescued from the Amani Catacombs. Reporting for duty, sir!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','1','0','lilatha SAY_END2'),
('16295','-1000144','Thank you for saving my life and bringing me back to safety, $N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','1','0','lilatha SAY_END1'),
('16295','-1000143','There\'s Farstrider Enclave now, $C. Not far to go... Look out! Troll ambush!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','1','0','lilatha SAY_PROGRESS3'),
('16295','-1000142','I can see the light at the end of the tunnel!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','1','0','lilatha SAY_PROGRESS2'),
('16295','-1000141','$N, let\'s use the antechamber to the right.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','1','0','lilatha SAY_PROGRESS1'),
('16295','-1000140','Let\'s go.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','1','0','lilatha SAY_START');
UPDATE creature SET MovementType=2 WHERE id=16295;
UPDATE creature_template SET ScriptName='npc_ranger_lilatha',MovementType=2 WHERE entry=16295;
UPDATE quest_template SET SpecialFlags=2,OfferRewardText='You\'re quite the hero, $c, to get her out of there alive.  I suppose we\'ll have to mount an offensive to clear out those catacombs too.  As if we didn\'t have enough trouble with the living trolls!$B$BYou\'ve done a great thing today, I should reward you.  Take your pick from any of these.',CompleteEmote=1 WHERE entry=9212;

-- Healing the Lake
UPDATE `quest_template` SET PrevQuestId=9293,EndText='',CompletedText='Return to Botanist Taerix at the Crash Site in Ammen Vale.',ReqCreatureOrGOId1='181433',ReqCreatureOrGOCount1='1',ReqSpellCast1='28700',DetailsEmote1='1',CompleteEmote='1',OfferRewardEmote1='1',OfferRewardEmote2='4',OfferRewardEmoteDelay2='1000' WHERE entry=9294;

-- The Dwarven Spy
UPDATE creature_template SET MovementType=2 WHERE entry=15420;
UPDATE creature SET MovementType=2, spawntimesecs=60 WHERE id=15420;
 
DELETE FROM script_waypoint WHERE entry =15420;
INSERT INTO `script_waypoint` (`entry`,`pointid`,`location_x`,`location_y`,`location_z`,`waittime`,`point_comment`)VALUES
(15420,0,9294.78,-6682.51,22.42,0, 'npc_prospector_anvilward'),
(15420,1,9298.27,-6667.99,22.42,0, 'npc_prospector_anvilward'),
(15420,2,9309.63,-6658.84,22.43,0, 'npc_prospector_anvilward'),
(15420,3,9304.43,-6649.31,26.46,0, 'npc_prospector_anvilward'),
(15420,4,9298.83,-6648,28.61,0, 'npc_prospector_anvilward'),
(15420,5,9291.06,-6653.46,31.83,2500,'npc_prospector_anvilward'),
(15420,6,9289.08,-6660.17,31.85,5000, 'npc_prospector_anvilward'),
(15420,7,9291.06,-6653.46,31.83,0, 'npc_prospector_anvilward');
 
DELETE FROM script_texts WHERE entry IN(-1000209, -1000210);
INSERT INTO script_texts(entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, TYPE, LANGUAGE, emote, COMMENT)VALUES
(-1000209, 'Very well. Let\'s see what you have to show me, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_prospector_anvilward'),
(-1000210, 'What manner of trick is this, $R? If you seek to ambush me, I warn you I will not go down quietly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0, 'npc_prospector_anvilward');

-- A Smart Start
UPDATE `gameobject_template` SET questItem1=23738 WHERE entry=181675;
UPDATE `gameobject_loot_template` SET item=23738 WHERE entry=181675;

-- Captain Kelisendra's Lost Rutters
UPDATE creature_loot_template SET ChanceOrQuestChance='5' WHERE item=21776 AND entry= 15937;

-- Vanquishing Aquantion
DELETE FROM event_scripts WHERE id=9980;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`)VALUES
('9980', '0', '10', '16292', '30000', '0', '7929.65', '-7635.611', '114.839', '6.1121');

-- Captives at Deatholme
UPDATE creature_template SET scriptname='npc_captive' WHERE entry IN(16206,16208,16209);

-- Dueling Spell To Goblins 
DELETE FROM playercreateinfo_spell WHERE race=9 AND Spell=7266;
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES
(9, 1, 7266, 'Duel'),
(9, 3, 7266, 'Duel'),
(9, 4, 7266, 'Duel'),
(9, 5, 7266, 'Duel'),
(9, 6, 7266, 'Duel'),
(9, 7, 7266, 'Duel'),
(9, 8, 7266, 'Duel'),
(9, 9, 7266, 'Duel');

-- Trial of the Champion

-- ScriptName
UPDATE `creature_template` SET `AIName`='PassiveAI' WHERE `entry` IN (35332,35330,35328,35327,35331,35329,35325,35314,35326,35323);
UPDATE `instance_template` SET `script`='instance_trial_of_the_champion' WHERE `map`=650;
UPDATE `creature_template` SET `ScriptName`='generic_vehicleAI_toc5' WHERE `entry` IN (33299, 35637,35633,35768,34658,35636,35638,35635,35640,35641,35634,33298,33416,33297,33414,33301,33408,33300,33409,33418);
UPDATE `creature_template` SET `ScriptName`='boss_warrior_toc5' WHERE `entry` IN (34705,35572);
UPDATE `creature_template` SET `ScriptName`='boss_mage_toc5' WHERE `entry` IN (34702,35569);
UPDATE `creature_template` SET `ScriptName`='boss_shaman_toc5' WHERE `entry` IN (35571,34701);
UPDATE `creature_template` SET `ScriptName`='boss_hunter_toc5' WHERE `entry` IN (35570,34657);
UPDATE `creature_template` SET `ScriptName`='boss_rouge_toc5' WHERE `entry` IN (35617,34703);
UPDATE `creature_template` SET `ScriptName`='npc_announcer_toc5' WHERE `entry`IN (35004,35005);
UPDATE `creature_template` SET `ScriptName`='npc_risen_ghoul' WHERE `entry` IN (35545,35564);
UPDATE `creature_template` SET `ScriptName`='boss_black_knight' WHERE `entry`=35451;
UPDATE `creature_template` SET `ScriptName`='boss_eadric' WHERE `entry`=35119;
UPDATE `creature_template` SET `ScriptName`='boss_paletress' WHERE `entry`=34928;
UPDATE `creature_template` SET `ScriptName`='npc_memory' WHERE `entry` IN (35052,35041,35033,35046,35043,35047,35044,35039,35034,35049,35030,34942,35050,35042,35045,35037,35031,35038,35029,35048,35032,35028,35040,35036,35051);
UPDATE `creature_template` SET `ScriptName`='npc_argent_soldier' WHERE `entry` IN (35309,35305,35307);
UPDATE `creature_template` SET `ScriptName`='npc_black_knight_skeletal_gryphon' WHERE `entry`=35491;

-- Open Entrance Door
UPDATE `gameobject` SET `state` = 0 WHERE `guid` = 1804;

-- Mounts
DELETE FROM `vehicle_accessory` WHERE `entry` in (35491,33299,33418,33409,33300,33408,33301,33414,33297,33416,33298);
INSERT INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(35491,35451,0,0, 'Black Knight'),
(33299,35323,0,1, 'Darkspear Raptor'),
(33418,35326,0,1, 'Silvermoon Hawkstrider'),
(33409,35314,0,1, 'Orgrimmar Wolf'),
(33300,35325,0,1, 'Thunder Bluff Kodo'),
(33408,35329,0,1, 'Ironforge Ram'),
(33301,35331,0,1, 'Gnomeregan Mechanostrider'),
(33414,35327,0,1, 'Forsaken Warhorse'),
(33297,35328,0,1, 'Stormwind Steed'),
(33416,35330,0,1, 'Exodar Elekk'),
(33298,35332,0,1, 'Darnassian Nightsaber');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33318', '35330', '1', 'Exodar Elekk');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33319', '35332', '1', 'Darnassian Nightsaber');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33316', '35329', '1', 'Ironforge Ram');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33317', '35331', '1', 'Gnomeregan Mechanostrider');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33217', '35328', '1', 'Stormwind Steed');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33324', '35327', '1', 'Forsaken Warhorse');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33322', '35325', '1', 'Thunder Bluff Kodo');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33320', '35314', '1', 'Orgrimmar Wolf');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33323', '35326', '1', 'Silvermoon Hawkstrider');
INSERT INTO `vehicle_accessory` (`entry`, `accessory_entry`, `minion`, `description`) VALUES ('33321', '35323', '1', 'Darkspear Raptor');

UPDATE `creature_template` SET `minlevel` = 80,`maxlevel` = 80 WHERE `entry` in (33298,33416,33297,33301,33408,35640,33299,33300,35634,33418,35638,33409,33414,33299,35635,35641);
UPDATE `creature_template` SET `faction_A` = 14,`faction_H` = 14 WHERE `entry` in (33318, 33319, 33316, 33317, 33217, 33324, 33322, 33320, 33323, 33321, 33298,33416,33297,33301,33408,35545,33299,35564,35590,35119,34928,35309,35305,33414,35307,35325,33300,35327,35326,33418,35638,35314,33409,33299,35635,35640,35641,35634,35633,35636,35768,35637,34658);
UPDATE `creature_template` SET `Health_mod` = 10,`mindmg` = 20000,`maxdmg` = 30000 WHERE `entry` in (33298,33416,33297,33301,33408,33409,33418,33300,33414,33299,33298,33416,33297,33301,33408,35640,35638,35634,35635,35641,35633,35636,35768,35637,34658);
UPDATE `creature_template` SET `speed_run` = 2,`Health_mod` = 40,`mindmg` = 10000,`maxdmg` = 20000,`spell1` =68505,`spell2` =62575,`spell3` =68282,`spell4` =66482 WHERE `entry` in (35644,36558, 36559, 36557);
UPDATE `creature` SET `spawntimesecs` = 86400 WHERE `id` in (35644,36558, 36559, 36557);
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` in (35644,36558, 36559, 36557);
-- VehicleId
UPDATE `creature_template` SET `VehicleId`=486 WHERE `entry` in (36558, 35644, 36559, 36557);
-- faction for Vehicle
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry` in (36558, 35644, 36559, 36557);
UPDATE `creature` SET `id` = 35644 WHERE `id` = 36557;
UPDATE `creature` SET `id` = 36558 WHERE `id` = 36559;

-- Texts
DELETE FROM `script_texts` WHERE `entry` <= -1999926 and `entry` >= -1999956;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1999926, 'Coming out of the gate Grand Champions other faction. ' ,0,0,0,1, '' ),
(0,-1999927, 'Good work! You can get your award from Crusader\'s Coliseum chest!. ' ,0,1,0,1, '' ),
(0,-1999928, 'You spoiled my grand entrance. Rat.' ,16256,1,0,5, '' ),
(0,-1999929, 'Did you honestly think an agent if the Lich King would be bested on the field of your pathetic little tournament?' ,16257,1,0,5, '' ),
(0,-1999930, 'I have come to finish my task ' ,16258,1,0,5, '' ),
(0,-1999931, 'This farce ends here!' ,16259,1,0,5, '' ),
(0,-1999932, '[Zombie]Brains.... .... ....' ,0,1,0,5, '' ),
(0,-1999933, 'My roting flash was just getting in the way!' ,16262,1,0,5, '' ),
(0,-1999934, 'I have no need for bones to best you!' ,16263,1,0,5, '' ),
(0,-1999935, 'No! I must not fail...again...' ,16264,1,0,5, '' ),
(0,-1999936, 'What\'s that. up near the rafters ?' ,0,1,0,5, '' ),
(0,-1999937, 'Please change your weapon! Next battle will be start now!' ,0,3,0,5, '' ),
(0,-1999939, 'Excellent work!' ,0,1,0,1, '' ),
(0,-1999940, 'Coming out of the gate Crusader\'s Coliseum Champion.' ,0,0,0,1, '' ),
(0,-1999941, 'Excellent work! You are win Argent champion!' ,0,3,0,0, '' ),
(0,-1999942, 'The Sunreavers are proud to present their representatives in this trial by combat.' ,0,0,0,1, '' ),
(0,-1999943, 'Welcome, champions. Today, before the eyes of your leeders and peers, you will prove youselves worthy combatants.' ,0,0,0,1, '' ),
(0,-1999944, 'Fight well, Horde! Lok\'tar Ogar!' ,0,1,0,5, '' ),
(0,-1999945, 'Finally, a fight worth watching.' ,0,1,0,5, '' ),
(0,-1999946, 'I did not come here to watch animals tear at each other senselessly, Tirion' ,0,1,0,5, '' ),
(0,-1999947, 'You will first be facing three of the Grand Champions of the Tournament! These fierce contenders have beaten out all others to reach the pinnacle of skill in the joust.' ,0,1,0,5, '' ),
(0,-1999948, 'Will tought! You next challenge comes from the Crusade\'s own ranks. You will be tested against their consederable prowess.' ,0,1,0,5, '' ),
(0,-1999949, 'You may begin!' ,0,0,0,5, '' ),
(0,-1999950, 'Well, then. Let us begin.' ,0,1,0,5, '' ),
(0,-1999951, 'Take this time to consider your past deeds.' ,16248,1,0,5, '' ),
(0,-1999952, 'What is the meaning of this?' ,0,1,0,5, '' ),
(0,-1999953, 'No...I\'m still too young' ,0,1,0,5, '' ),
(0,-1999954, 'Excellent work! You are win Argent champion!' ,0,3,0,0, '' );

-- Griphon of black Knight
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(35491, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 4, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_black_knight_skeletal_gryphon');
DELETE FROM `script_waypoint` WHERE `entry`=35491;
INSERT INTO `script_waypoint` VALUES
(35491,1,781.513062, 657.989624, 466.821472,0,''),
(35491,2,759.004639, 665.142029, 462.540771,0,''),
(35491,3,732.936646, 657.163879, 452.678284,0,''),
(35491,4,717.490967, 646.008545, 440.136902,0,''),
(35491,5,707.570129, 628.978455, 431.128632,0,''),
(35491,6,705.164063, 603.628418, 422.956635,0,''),
(35491,7,716.350891, 588.489746, 420.801666,0,''),
(35491,8,741.702881, 580.167725, 420.523010,0,''),
(35491,9,761.634033, 586.382690, 422.206207,0,''),
(35491,10,775.982666, 601.991943, 423.606079,0,''),
(35491,11,769.051025, 624.686157, 420.035126,0,''),
(35491,12,756.582214, 631.692322, 412.529785,0,''),
(35491,13,744.841,634.505,411.575,0,'');
-- Griphon of black Knight before battle start
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(35492, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_gr');

DELETE FROM `script_waypoint` WHERE `entry`=35492;
INSERT INTO `script_waypoint` VALUES
(35492,1,741.067078, 634.471558, 411.569366,0,''),
(35492,2,735.726196, 639.247498, 414.725555,0,''),
(35492,3,730.187256, 653.250977, 418.913269,0,''),
(35492,4,734.517700, 666.071350, 426.259247,0,''),
(35492,5,739.638489, 675.339417, 438.226776,0,''),
(35492,6,741.833740, 698.797302, 456.986328,0,''),
(35492,7,734.647339, 711.084778, 467.165314,0,''),
(35492,8,715.388489, 723.820862, 470.333588,0,''),
(35492,9,687.178711, 730.140503, 470.569336,0,'');
-- Announcer for start event
DELETE FROM `creature_template` WHERE `entry` in (35591,35592);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(35591, 0, 0, 0, 0, 0, 29894, 0, 0, 0, 'Jaeren Sunsworn', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart'),
(35592, 0, 0, 0, 0, 0, 29893, 0, 0, 0, 'Arelas Brightstar', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart');

-- Spawn Announcer in normal/heroic mode
DELETE FROM `creature` WHERE `id` in (35004, 35005);
DELETE FROM `creature` WHERE `guid` in (180100, 180101);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(180100, 35591, 650, 3, 64, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0),
(180101, 35592, 650, 3, 128, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0);
-- Addons
REPLACE INTO `creature_template_addon` VALUES
-- Argent
(35309, 0, 0, 0, 1, 0, '63501 0'),
(35310, 0, 0, 0, 1, 0, '63501 0'),
(35305, 0, 0, 0, 1, 0, '63501 0'),
(35306, 0, 0, 0, 1, 0, '63501 0'),
(35307, 0, 0, 0, 1, 0, '63501 0'),
(35308, 0, 0, 0, 1, 0, '63501 0'),
(35119, 0, 0, 0, 1, 0, '63501 0'),
(35518, 0, 0, 0, 1, 0, '63501 0'),
(34928, 0, 0, 0, 1, 0, '63501 0'),
(35517, 0, 0, 0, 1, 0, '63501 0'),

-- Faction_champ
(35323, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(35570, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(36091, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(35326, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(35569, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(36085, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(35314, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(35572, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(36089, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(35325, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(35571, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(36090, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(35329, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(34703, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(36087, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(35331, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(34702, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(36082, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(35327, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(35617, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(36084, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(35328, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(34705, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(36088, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(35330, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(34701, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(36083, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(35332, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0'),
(36086, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0'),
(34657, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0');

-- Immunes (crash fix)
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1073741823 WHERE `entry` IN
(35309,35310, -- Argent Lightwielder
35305,35306, -- Argent Monk
35307,35308); -- Argent Priestess

UPDATE `spell_bonus_data` SET `direct_bonus` = 0.2143 WHERE `entry` = 6789;

UPDATE `creature_template` SET `ScriptName` = 'npc_spring_rabbit' WHERE `entry` = 32791;
UPDATE `achievement_criteria_data` SET `value1` = 186 WHERE `criteria_id` = 9199 AND `type` = 6;

DELETE FROM `spell_bonus_data` WHERE `entry` = 64844;
INSERT INTO `spell_bonus_data` VALUES 
(64844, 0.5483, -1, -1, -1, 'Priest - Divine Hymn');

DELETE FROM `spell_proc_event` WHERE `entry` = 64568;
UPDATE `spell_proc_event` SET `cooldown` = 10 WHERE `entry` = 64571;

UPDATE `spell_bonus_data` SET `direct_bonus` = 0.473 WHERE `entry` = 974;

DELETE FROM `spell_bonus_data` WHERE `entry` = 2818;
INSERT INTO `spell_bonus_data` VALUES
(2818,-1,-1,-1,0.03,'Rogue - Deadly Poison Rank 1($AP*0.12 / number of ticks)');

DELETE FROM `spell_script_names` WHERE `spell_id` = -2818;
INSERT INTO `spell_script_names` VALUES
(-2818,'spell_rog_deadly_poison');

-- Twin Peaks Battleground

DELETE FROM `trinity_string` WHERE entry IN
(1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244);

INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(1230, 'The battle for Twin Peaks begins in 2 minutes.'),
(1231, 'The battle for Twin Peaks begins in 1 minute.'),
(1232, 'The battle for Twin Peaks begins in 30 seconds. Prepare yourselves!'),
(1233, 'Let the battle for Twin Peaks begin!'),
(1234, '$n captured the Horde flag!'),
(1235, '$n captured the Alliance flag!'),
(1236, 'The Horde flag was dropped by $n!'),
(1237, 'The Alliance Flag was dropped by $n!'),
(1238, 'The Alliance Flag was returned to its base by $n!'),
(1239, 'The Horde flag was returned to its base by $n!'),
(1240, 'The Horde flag was picked up by $n!'),
(1241, 'The Alliance Flag was picked up by $n!'),
(1242, 'The flags are now placed at their bases.'),
(1243, 'The Alliance flag is now placed at its base.'),
(1244, 'The Horde flag is now placed at its base.');

-- Twin Peaks Battleground

DELETE FROM `trinity_string` WHERE entry IN
(1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244);

INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(1230, 'The battle for Twin Peaks begins in 2 minutes.'),
(1231, 'The battle for Twin Peaks begins in 1 minute.'),
(1232, 'The battle for Twin Peaks begins in 30 seconds. Prepare yourselves!'),
(1233, 'Let the battle for Twin Peaks begin!'),
(1234, '$n captured the Horde flag!'),
(1235, '$n captured the Alliance flag!'),
(1236, 'The Horde flag was dropped by $n!'),
(1237, 'The Alliance Flag was dropped by $n!'),
(1238, 'The Alliance Flag was returned to its base by $n!'),
(1239, 'The Horde flag was returned to its base by $n!'),
(1240, 'The Horde flag was picked up by $n!'),
(1241, 'The Alliance Flag was picked up by $n!'),
(1242, 'The flags are now placed at their bases.'),
(1243, 'The Alliance flag is now placed at its base.'),
(1244, 'The Horde flag is now placed at its base.');

UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch_credit' WHERE `entry`=40301;
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch' WHERE `entry`=40312;
UPDATE `creature_template` SET `ScriptName`= 'npc_troll_volunteer' WHERE `entry` IN (40260,40264);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (75420,75102);
INSERT INTO `spell_script_names` VALUES
(75420, 'spell_mount_check'),
(75102, 'spell_voljin_war_drums');

UPDATE `instance_template` SET `script`='instance_zulgurub' WHERE `map`=309;
UPDATE `creature_template` SET `ScriptName`='boss_jeklik' WHERE `entry`=14517;
UPDATE `creature_template` SET `ScriptName`='boss_venoxis' WHERE `entry`=14507;
UPDATE `creature_template` SET `ScriptName`='boss_marli' WHERE `entry`=14510;
UPDATE `creature_template` SET `ScriptName`='boss_mandokir' WHERE `entry`=11382;
UPDATE `creature_template` SET `ScriptName`='boss_gahzranka' WHERE `entry`=15114;
UPDATE `creature_template` SET `ScriptName`='boss_jindo' WHERE `entry`=11380;
UPDATE `creature_template` SET `ScriptName`='boss_hakkar' WHERE `entry`=14834;
UPDATE `creature_template` SET `ScriptName`='boss_thekal' WHERE `entry`=14509;
UPDATE `creature_template` SET `ScriptName`='boss_arlokk' WHERE `entry`=14515;
UPDATE `gameobject_template` SET `ScriptName`='go_gong_of_bethekk' WHERE `entry`=180526;
UPDATE `creature_template` SET `ScriptName`='boss_grilek' WHERE `entry`=15082;
UPDATE `creature_template` SET `ScriptName`='boss_hazzarah' WHERE `entry`=15083;
UPDATE `creature_template` SET `ScriptName`='boss_renataki' WHERE `entry`=15084;
UPDATE `creature_template` SET `ScriptName`='boss_wushoolay' WHERE `entry`=15085;
UPDATE `creature_template` SET `ScriptName`='mob_zealot_lorkhan' WHERE `entry`=11347;
UPDATE `creature_template` SET `ScriptName`='mob_zealot_zath' WHERE `entry`=11348;
UPDATE `creature_template` SET `ScriptName`='mob_healing_ward' WHERE `entry`=14987;
UPDATE `creature_template` SET `ScriptName`='mob_spawn_of_marli' WHERE `entry`=15041;
UPDATE `creature_template` SET `ScriptName`='mob_batrider' WHERE `entry`=14965;
UPDATE `creature_template` SET `ScriptName`='mob_shade_of_jindo' WHERE `entry`=14986;
UPDATE `creature_template` SET `ScriptName`='mob_ohgan' WHERE `entry`=14988;

DELETE FROM `areatrigger_scripts` WHERE `entry`=3066;
INSERT INTO `areatrigger_scripts` VALUES
   (3066,'at_ravenholdt');
   
