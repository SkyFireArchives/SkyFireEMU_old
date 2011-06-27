 
  /* Raid Normal for 10 & 25 people */
 /* Trash Mobs */
 
-- Onyxian Lair Guard
SET @ENTRY := 36561;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,9000,20000,35000,11,68959,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Ignite Weapon'),
(@ENTRY,0,1,0,0,0,100,4,4000,9000,20000,35000,11,68964,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Ignite Weapon'),
(@ENTRY,0,2,0,0,0,100,6,15000,25000,20000,30000,11,68958,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Blast Nova');

-- Onyxian Warder
SET @ENTRY := 12129;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,90,2,5000,5000,20000,20000,11,18958,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Flame Lash'),
(@ENTRY,0,1,0,0,0,90,4,5000,5000,20000,20000,11,69308,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Flame Lash'),
(@ENTRY,0,2,0,0,0,95,6,3000,3000,35000,35000,11,12097,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Pierce Armor'),
(@ENTRY,0,3,0,0,0,80,6,7000,7000,9000,11000,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave'),
(@ENTRY,0,4,0,0,0,100,2,10000,10000,12000,12000,11,20203,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Fire Nova'),
(@ENTRY,0,5,0,0,0,100,4,10000,10000,12000,12000,11,68969,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Fire Nova');
