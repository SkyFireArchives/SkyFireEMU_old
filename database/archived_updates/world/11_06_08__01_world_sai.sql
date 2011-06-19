
   /* Dungeon Normal-Heroic for 5 people */
    /* Trash Mobs */
	
-- Raging Ghoul
SET @ENTRY := 36940;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,11,70150,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Leap on Aggro');

-- Quel'Delar
SET @ENTRY := 37158;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,5000,5000,12000,13000,11,29426,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Heroic Strike'),
(@ENTRY,0,1,0,0,0,100,6,3000,9000,7000,19000,11,16856,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Mortal Strike'),
(@ENTRY,0,2,0,9,0,100,6,0,5,15800,18300,11,67716,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Whirlwind on Close'),
(@ENTRY,0,3,0,9,0,100,6,0,8,25000,29800,11,67541,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bladestorm on Close');

-- Lumbering Abomination
SET @ENTRY := 37069;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,5000,5000,11300,13800,11,40505,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave');

-- Frostsworn General
SET @ENTRY := 36723;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,2,5,45,11000,18000,11,69222,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw Shield on Close'),
(@ENTRY,0,1,0,9,0,100,4,5,45,11000,18000,11,73076,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw Shield on Close');

-- Spiritual Reflection
SET @ENTRY := 37107;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,5000,12000,14000,11,69933,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Baleful Strike'),
(@ENTRY,0,1,0,0,0,100,4,5000,5000,12000,14000,11,70400,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Baleful Strike'),
(@ENTRY,0,2,0,9,0,100,2,0,15,15000,17000,11,69900,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Spirit Burst on Close'),
(@ENTRY,0,3,0,9,0,100,4,0,15,15000,17000,11,73046,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Spirit Burst on Close');

-- Spiritual Reflection
SET @ENTRY := 37068;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,5000,12000,14000,11,69933,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Baleful Strike'),
(@ENTRY,0,1,0,0,0,100,4,5000,5000,12000,14000,11,70400,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Baleful Strike'),
(@ENTRY,0,2,0,9,0,100,2,0,15,15000,17000,11,69900,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Spirit Burst on Close'),
(@ENTRY,0,3,0,9,0,100,4,0,15,15000,17000,11,73046,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Spirit Burst on Close');

-- Risen Witch Doctor
SET @ENTRY := 36941;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,3,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,3,0,0,0,0,11,70080,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,2,0,40,3400,4700,11,70080,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,4,0,9,1,100,2,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,5,0,9,1,100,2,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,2,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,7,0,3,1,100,2,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,2,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,2,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,4,0,100,5,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,11,0,4,1,100,5,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,12,0,4,1,100,5,0,0,0,0,11,70182,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,13,0,9,1,100,4,0,40,3400,4700,11,70182,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,14,0,9,1,100,4,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,15,0,9,1,100,4,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,16,0,9,1,100,4,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,17,0,3,1,100,4,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,18,0,3,2,100,4,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,19,0,3,2,100,4,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,20,0,0,1,100,2,8000,8000,14600,17800,11,70144,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Curse of Doom'),
(@ENTRY,0,21,0,0,1,100,4,8000,8000,14600,17800,11,70183,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Curse of Doom'),
(@ENTRY,0,22,0,9,1,100,2,0,20,14200,16800,11,70145,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shadow Bolt Volley on Close'),
(@ENTRY,0,23,0,9,1,100,4,0,20,14200,16800,11,70184,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shadow Bolt Volley on Close');

