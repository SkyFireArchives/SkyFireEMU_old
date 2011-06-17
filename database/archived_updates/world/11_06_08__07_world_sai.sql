 
   /* Dungeon Normal-Heroic for 5 people */
    /* Trash Mobs */
	
-- Argent Battleworg
SET @ENTRY := 36558;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,11,68282,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Charge on Aggro'),
(@ENTRY,0,1,0,9,0,100,6,5,25,12000,14000,11,62575,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Shield-Breaker on Close');

-- Argent Warhorse
SET @ENTRY := 36557;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,11,68282,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Charge on Aggro'),
(@ENTRY,0,1,0,9,0,100,6,5,25,12000,14000,11,62575,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Shield-Breaker on Close');

-- Risen Champion <Black Knight's Minion>
SET @ENTRY := 35590;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,3500,4500,11300,12800,11,67774,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Claw'),
(@ENTRY,0,1,0,0,0,100,4,3500,4500,11300,12800,11,67879,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Claw'),
(@ENTRY,0,2,0,6,0,100,3,0,0,0,0,11,67729,3,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Explode on Death'),
(@ENTRY,0,4,0,6,0,100,5,0,0,0,0,11,67886,3,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Explode on Death');

-- Risen Jaeren Sunsworn <Black Knight's Minion>
SET @ENTRY := 35545;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,3500,4500,11300,12800,11,67774,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Claw'),
(@ENTRY,0,1,0,0,0,100,4,3500,4500,11300,12800,11,67879,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Claw'),
(@ENTRY,0,2,0,6,0,100,3,0,0,0,0,11,67729,3,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Explode on Death'),
(@ENTRY,0,4,0,6,0,100,5,0,0,0,0,11,67886,3,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Explode on Death'),
(@ENTRY,0,5,0,4,0,100,3,0,0,0,0,11,67749,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Leap on Aggro'),
(@ENTRY,0,6,0,4,0,100,5,0,0,0,0,11,67880,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Leap on Aggro');



