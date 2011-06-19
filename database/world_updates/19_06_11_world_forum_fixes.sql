-- Fix by AMON
--1 Adding the enterance/exit triggers for Throne of the Tides. (Dungeon only! I have more work on the enterance form Abyssal Depths to Abyssal Breach).
--2 Fixing the exits of Gnomeregan instance. Now we will not fall under Dun morogh on exit.
DELETE FROM `areatrigger_teleport` WHERE `id` IN ('6197', '6201', '322', '525');
INSERT INTO `areatrigger_teleport` (`id`, `name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
        (6197,'Throne of the Tides(Exit)',0,'-5599.09','5412.06','-1798.15','2.40455'),
        (6201,'Throne of the Tides(Enterance)',643,'-624.44','807.108','246.295','6.26158'),
        (322,'Gnomeregan Instance Start',0,'-5142.78','894.675','287.863','5.36474'),
        (525,'Gnomeregan Train Depot Instance',0,'-4915.15','807.528','270.914','4.60716');
		
-- Fix by Gullidann
-- Guild rewards data update.		
REPLACE INTO guild_rewards VALUES ('67107', '15000000', '5492', '1');
REPLACE INTO guild_rewards VALUES ('63398', '3000000', '5144', '1');
REPLACE INTO guild_rewards VALUES ('62287', '200000000', '5158', '0');
REPLACE INTO guild_rewards VALUES ('63353', '1500000', '4989', '1');
REPLACE INTO guild_rewards VALUES ('62038', '12000000', '4944', '1');
REPLACE INTO guild_rewards VALUES ('62039', '12000000', '4944', '1');
REPLACE INTO guild_rewards VALUES ('62040', '12000000', '4944', '1');
REPLACE INTO guild_rewards VALUES ('63207', '3000000', '4945', '1');
REPLACE INTO guild_rewards VALUES ('61931', '15000000', '4946', '1');
REPLACE INTO guild_rewards VALUES ('62286', '100000000', '4943', '0');
REPLACE INTO guild_rewards VALUES ('65364', '5000000', '5201', '1');
REPLACE INTO guild_rewards VALUES ('64402', '3000000', '5422', '1');
REPLACE INTO guild_rewards VALUES ('65362', '3000000', '5179', '1');
REPLACE INTO guild_rewards VALUES ('63125', '30000000', '4988', '1');
REPLACE INTO guild_rewards VALUES ('64401', '2000000', '5143', '1');
REPLACE INTO guild_rewards VALUES ('62800', '1500000', '5036', '1');
REPLACE INTO guild_rewards VALUES ('62799', '1500000', '5467', '1');
REPLACE INTO guild_rewards VALUES ('65498', '1500000', '5024', '1');
REPLACE INTO guild_rewards VALUES ('65274', '5000000', '5035', '1');
REPLACE INTO guild_rewards VALUES ('65435', '1500000', '5465', '1');
REPLACE INTO guild_rewards VALUES ('64400', '1500000', '4860', '1');
REPLACE INTO guild_rewards VALUES ('63138', '3000000', '5127', '1');	

-- Fix by Blizz
-- Quest from Rivern Frostwind fix 

UPDATE `quest_template` SET `QuestFlags` = 8200 WHERE `entry` = 5201;
UPDATE `quest_template` SET `QuestFlags` = 8200 WHERE `entry` = 4970;
UPDATE `quest_template` SET `QuestFlags` = 8200 WHERE `entry` = 5981;

-- Fix by Blizz
-- Spawn fix Frostmaul Preserver and Frostmaul Giant 
DELETE FROM `creature` WHERE `id`=7429;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(7429, 1, 1, 1, 12815, 7429, 5247.57, -4551.8, 835.507, 0.764122, 300, 0, 0, 6273, 2117, 0, 0, 0, 0, 0),
(7429, 1, 1, 1, 0, 7429, 5105.43, -4839.32, 857.966, 0.371365, 300, 0, 0, 6273, 2117, 0, 0, 0, 0, 0),
(7429, 1, 1, 1, 0, 7429, 5094.52, -4903.69, 871.489, 0.0524921, 300, 0, 0, 6273, 2117, 0, 0, 0, 0, 0),
(7429, 1, 1, 1, 0, 7429, 5034.76, -4706.06, 851.014, 0.207215, 300, 0, 0, 6273, 2117, 0, 0, 0, 0, 0),
(7429, 1, 1, 1, 0, 7429, 5130.77, -4616.27, 840.477, 5.33194, 300, 0, 0, 6273, 2117, 0, 0, 0, 0, 0),
(7429, 1, 1, 1, 0, 7429, 5100.92, -4510.04, 847.201, 5.91667, 300, 0, 0, 6273, 2117, 0, 0, 0, 0, 0),
(7429, 1, 1, 1, 0, 7429, 5241.45, -4441.42, 853.46, 5.60526, 300, 0, 0, 6273, 2117, 0, 0, 0, 0, 0),
(7429, 1, 1, 1, 0, 7429, 5212.66, -4571.24, 832.499, 5.44583, 300, 0, 0, 6273, 2117, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=7428;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(7428, 1, 1, 1, 0, 0, 5104.75, -4566.91, 845.239, 5.70815, 300, 0, 0, 8883, 0, 0, 0, 0, 0, 0),
(7428, 1, 1, 1, 0, 0, 5151.81, -4468.04, 863.09, 4.576, 300, 0, 0, 8883, 0, 0, 0, 0, 0, 0),
(7428, 1, 1, 1, 0, 0, 5325.94, -4444.09, 832.943, 4.54969, 300, 0, 0, 9156, 0, 0, 0, 0, 0, 0),
(7428, 1, 1, 1, 0, 0, 5048.56, -4655.27, 851.288, 0.310891, 300, 0, 0, 8883, 0, 0, 0, 0, 0, 0),
(7428, 1, 1, 1, 0, 0, 5091.19, -4879.15, 868.22, 0.50135, 300, 0, 0, 9156, 0, 0, 0, 0, 0, 0),
(7428, 1, 1, 1, 0, 0, 5158.25, -5011.38, 892.941, 1.96101, 300, 0, 0, 8883, 0, 0, 0, 0, 0, 0),
(7428, 1, 1, 1, 0, 0, 5027.47, -4754.89, 855.204, 0.79155, 300, 0, 0, 8883, 0, 0, 0, 0, 0, 0);

-- Fix by Aleksandru
-- http://www.wowhead.com/quest=27743
UPDATE `quest_template` SET `EndText`=NULL,`CompletedText`='Speak with Initiate Goldmine inside the Elementium Depths in Twilight Highlands.' WHERE `entry`='27743';
-- http://www.wowhead.com/quest=28107
UPDATE `quest_template` SET `EndText`=NULL,`CompletedText`='Speak to the Highbank Lieutenant at Wyrms\' Bend in Twilight Highlands.' WHERE `entry`='28107';
-- http://www.wowhead.com/quest=27813	
UPDATE `quest_template` SET `EndText`=NULL,`CompletedText`='Return to Mackay Firebeard at Gorshak War Camp in Twilight Highlands.' WHERE `entry`='27813';