-- Unused yet: 
-- Wintergrasp is under attack!
-- Wintergrasp Fortress is under attack!
-- Winter's Edge Tower is under attack!
-- Commander Dardosh yells: The first of the Alliance towers has fallen! Destro all three and we will hasten their retreat!
-- Commander Dardosh yells: Lok'tar! The second tower falls! Destroy the final tower and we will hasten their retreat!
-- Eastern Bridge is under attack!
-- Western Bridge is under attack!
-- Westspark Bridge is under attack!
-- Flamewatch Tower is under attack!

-- TODO: Remove french trad
DELETE FROM SkyFire_string WHERE entry BETWEEN 12050 AND 12072;
INSERT INTO `SkyFire_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`)VALUES
(12072, 'win keep text', NULL, 'TRAD', NULL, NULL, NULL, NULL, NULL, NULL),
(12071, 'The western tower', NULL, 'La tour ouest', NULL, NULL, NULL, NULL, NULL, NULL),
(12070, 'The eastern tower', NULL, 'La tour est', NULL, NULL, NULL, NULL, NULL, NULL),
(12069, 'The southern tower', NULL, 'La tour sud', NULL, NULL, NULL, NULL, NULL, NULL),
(12068, '%s has successfully defended the Wintergrasp fortress!', NULL, '%s a d?fendu la forteresse du Joug-d''hiver!', NULL, NULL, NULL, NULL, NULL, NULL),
(12067, 'The battle for Wintergrasp begin!', NULL, 'Que la bataille pour le Joug-d''hiver commence!', NULL, NULL, NULL, NULL, NULL, NULL),
(12066, '%s has been destroyed!', NULL, '%s a ?t? d?truite!', NULL, NULL, NULL, NULL, NULL, NULL),
(12065, '%s has been damaged !', NULL, '%s a ?t? endommag?e !', NULL, NULL, NULL, NULL, NULL, NULL),
(12064, 'The north-western keep tower', NULL, 'La tour du donjon nord-ouest', NULL, NULL, NULL, NULL, NULL, NULL),
(12063, 'The south-western keep tower', NULL, 'La tour du donjon sud-ouest', NULL, NULL, NULL, NULL, NULL, NULL),
(12062, 'The north-eastern keep tower', NULL, 'La tour du donjon nord-est', NULL, NULL, NULL, NULL, NULL, NULL),
(12061, 'The south-eastern keep tower', NULL, 'La tour du donjon sud-est', NULL, NULL, NULL, NULL, NULL, NULL),
(12060, 'You have reached Rank 2: First Lieutenant', NULL, 'Vous avez atteint le deuxi?me grade : premier lieutenant', NULL, NULL, NULL, NULL, NULL, NULL),
(12059, 'You have reached Rank 1: Corporal', NULL, 'Vous avez atteint le premier grade : caporal', NULL, NULL, NULL, NULL, NULL, NULL),
(12058, 'The battle for Wintergrasp is going to begin!', NULL, 'La bataille du lac Joug-d''hiver va commencer!', NULL, NULL, NULL, NULL, NULL, NULL),
(12057, 'Alliance', NULL, 'L''alliance', NULL, NULL, NULL, NULL, NULL, NULL),
(12056, 'Horde', NULL, 'la Horde', NULL, NULL, NULL, NULL, NULL, NULL),
(12055, 'The Sunken Ring siege workshop', NULL, 'L''atelier de si?ge de l''Ar?ne Engloutie', NULL, NULL, NULL, NULL, NULL, NULL),
(12054, 'Westspark siege workshop', NULL, 'L''atelier de si?ge de l''Ouestincelle', NULL, NULL, NULL, NULL, NULL, NULL),
(12053, 'Eastspark siege workshop', NULL, 'L''atelier de si?ge de l''Estincelle', NULL, NULL, NULL, NULL, NULL, NULL),
(12052, 'The Broken Temple siege workshop', NULL, 'L''atelier de si?ge du Temple Bris?', NULL, NULL, NULL, NULL, NULL, NULL),
(12051, '%s is under attack by %s', NULL, '%s est attaqu? par %s', NULL, NULL, NULL, NULL, NULL, NULL),
(12050, '%s has been captured by %s ', NULL, '%s a ?t? pris par %s', NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM `script_texts` WHERE entry BETWEEN -1850507 AND -1850500;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)VALUES
(0, -1850500, 'Guide me to the Fortress Graveyard.', NULL, 'Montrez-moi o? est le cimeti?re de la forteresse..', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(0, -1850501, 'Guide me to the Sunken Ring Graveyard.', NULL, 'Montrez-moi o? est le cimeti?re de l''ar?ne engloutie..', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(0, -1850502, 'Guide me to the Broken Temple Graveyard.', NULL, 'Montrez-moi o? est le cimeti?re du temple Bris?.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(0, -1850503, 'Guide me to the Westspark Graveyard.', NULL, 'Montrez-moi o? est le cimeti?re d''Ouestincelle.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(0, -1850504, 'Guide me to the Eastspark Graveyard.', NULL, 'Montrez-moi o? est le cimeti?re d''Estincelle.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(0, -1850505, 'Guide me back to the Horde landing camp.', NULL, 'Ramenez-moi au camp d''arriv?e de la Horde.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(0, -1850506, 'Guide me back to the Alliance landing camp.', NULL, 'Ramenez-moi au camp d''arriv?e de l''Alliance.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(0, -1850507, 'Get in the queue for the Batttle for Wintergrasp', NULL, 'Se mettre dans la file pour le Joug-d''hiver', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `ScriptName` = 'npc_wg_dalaran_queue' WHERE `entry` IN (32169,32170,35599,35596,35600,35601,35598,35603,35602,35597,35612,35611);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 54640;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (54640, 54643, 0, 'WG teleporter');

DELETE FROM `gameobject` where `id` in (194162,192951,192273,192274,192277,192280,192283,192289,192290,192338,192339,192406,192407,192414,192417,192418,192429,192433,192434,192435,192458,192459,192460,192461,192819,190475,190487,194959,194962,192829,190219,190220,191795,191796,191799,191800,191801,191802,191803,191804,191806,191807,191808,191809,190369,190370,190371,190372,190374,190376,190221,190373,190377,190378,191797,191798,191805,190356,190357,190358,190375,191810,	192488,192501,192374,192416,192375,192336,192255,192269,192254,192349,192366,192367,192364,192370,192369,192368,192362,192363,192379,192378,192355,192354,192358,192359,192284,192285,192371,192372,192373,192360,192361,192356,192352,192353,192357,192350,192351,190763,192501,192488,192269,192278) AND `map`=571;
DELETE FROM `creature` where `id` in (30739,30740,31102,31841,31151,31153,32296,31051,31106,31108,31109,31053,30489,39172,31107,32294,31101,30499,31842,31036,31091,39173,31052,30400,31054) AND `map`=571;
UPDATE `creature_template` SET `InhabitType` = '7' WHERE `entry` = 27852;

UPDATE `creature_template` SET `ScriptName` = 'npc_wg_spiritguide' WHERE `entry` IN (31841,31842);
UPDATE `creature_template` SET `ScriptName` = 'npc_demolisher_engineerer' WHERE `entry` IN (30400,30499);

UPDATE `SkyFire_string` SET `content_default` = 'The Wintergrasp fortress has been captured by %s !', `content_loc2` = '%s a capturÊ la forteresse du Joug d''hiver !' WHERE `SkyFire_string`.`entry` =12072 LIMIT 1 ;

DELETE FROM `spell_area` where `spell` = 58730;
DELETE FROM `spell_area` where `spell` = 91604;
insert into spell_area values (91604, 4581, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4539, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4197, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4585, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4612, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4582, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4583, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4589, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4575, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4538, 0, 0, 0, 0, 0, 2, 1);
insert into spell_area values (91604, 4577, 0, 0, 0, 0, 0, 2, 1);

DELETE FROM `spell_area` where `spell` = 57940;
insert INTO `spell_area` VALUES (57940, 65, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 66, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 67, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 206, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 210, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 394, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 395, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 1196, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 2817, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 3456, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 3477, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 3537, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 3711, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4100, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4196, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4228, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4264, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4265, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4272, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4273, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4395, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4415, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4416, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4493, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4494, 0, 0, 0, 0, 0, 2, 1);
insert INTO `spell_area` VALUES (57940, 4603, 0, 0, 0, 0, 0, 2, 1);

UPDATE creature_template SET faction_A = 1732,faction_H = 1735,spell1 = 51421 WHERE entry = 28366;

UPDATE creature_template SET faction_A = '1732', faction_H = '1732' WHERE entry IN (30499,30740, 28319); -- aliance
UPDATE creature_template SET faction_A = '1735', faction_H = '1735' WHERE entry IN (30400,30739, 32629);  -- horde

DELETE FROM `command` WHERE name IN ('bf start', 'bf stop', 'bf enable', 'bf switch', 'bf timer');
INSERT INTO `command` (name, security, help) VALUES ('bf start',3,'Syntax: .bf start #battleid');
INSERT INTO `command` (name, security, help) VALUES ('bf stop',3,'Syntax: .bf stop #battleid');
INSERT INTO `command` (name, security, help) VALUES ('bf enable',3,'Syntax: .bf enable #battleid');
INSERT INTO `command` (name, security, help) VALUES ('bf switch',3,'Syntax: .bf switch #battleid');
INSERT INTO `command` (name, security, help) VALUES ('bf timer',3,'Syntax: .bf timer #battleid #timer');

DELETE FROM `spell_scripts` WHERE `id` = 49899;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('49899', '0', '1', '406', '0', '0', '0', '0', '0', '0');

DELETE FROM `creature_addon` WHERE `guid` BETWEEN 131258 AND 131322;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 131326 AND 131328;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 131350 AND 131353;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 131376 AND 131380;
DELETE FROM `creature_addon` WHERE `guid` = 131392;
DELETE FROM `creature_addon` WHERE `guid` = 131437;
DELETE FROM `creature_addon` WHERE `guid` = 131458;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 131631 AND 131634;
DELETE FROM `creature_addon` WHERE `guid` = 131706;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 131727 AND 131731;

-- Wintergrasp vehicle teleport
UPDATE gameobject_template SET ScriptName = "go_wintergrasp_teleporter" WHERE entry = 192951;

-- Quests
-- Horde
UPDATE quest_template SET ExclusiveGroup = 13199 WHERE entry IN(13193, 13199);
UPDATE quest_template SET ExclusiveGroup = 13192 WHERE entry IN(13192, 13202);
UPDATE quest_template SET ExclusiveGroup = 13180 WHERE entry IN(13180, 13178);
UPDATE quest_template SET ExclusiveGroup = 13200 WHERE entry IN(13200, 13191);
UPDATE quest_template SET ExclusiveGroup = 13201 WHERE entry IN(13201, 13194);
UPDATE quest_template SET ExclusiveGroup = 13185 WHERE entry IN(13185, 13223);
-- Alliance
UPDATE quest_template SET ExclusiveGroup = 13196 WHERE entry IN(13196, 13154);
UPDATE quest_template SET ExclusiveGroup = 13198 WHERE entry IN(13198, 13153);
UPDATE quest_template SET ExclusiveGroup = 13179 WHERE entry IN(13179, 13177);
UPDATE quest_template SET ExclusiveGroup = 13186 WHERE entry IN(13186, 13222);
UPDATE quest_template SET ExclusiveGroup = 13195 WHERE entry IN(13195, 13156);

UPDATE creature_template SET ScriptName = "npc_wintergrasp_quest_giver" WHERE entry IN(31054, 31052, 31091, 31036, 31101, 31107, 31053, 31051, 31153, 31151, 31102, 31106);

-- Catapult
UPDATE creature_template SET speed_walk = 2.8, speed_run = 1.6 WHERE entry = 27881;