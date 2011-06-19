
 
   /* Dungeon Normal-Heroic for 5 people */
    /* Trash Mobs */
	
-- Infinite Hunter
SET @ENTRY := 27743;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,2,0,127,0,0,11,52635,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Accelerate on Target Spellcast'),
(@ENTRY,0,1,0,8,0,100,4,0,127,0,0,11,58820,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Accelerate on Target Spellcast'),
(@ENTRY,0,2,0,0,0,100,6,9000,15000,12000,18000,11,52636,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Time Shift');

-- Lordaeron Footman
SET @ENTRY := 27745;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,6,0,5,5000,8000,11,25710,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Heroic Strike on Close'),
(@ENTRY,0,1,0,0,0,100,6,7000,12000,9000,15000,11,52317,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Defend');

-- Infinite Agent
SET @ENTRY := 27744;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,9000,12000,15000,21000,11,52657,0,0,0,0,0,5,1,0,0,0,0,0,0,'Cast Temporal Vortex'),
(@ENTRY,0,1,0,0,0,100,4,9000,12000,15000,21000,11,58816,0,0,0,0,0,5,1,0,0,0,0,0,0,'Cast Temporal Vortex'),
(@ENTRY,0,2,0,0,0,100,2,5000,9000,12000,17000,11,52660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Wave'),
(@ENTRY,0,3,0,0,0,100,4,5000,9000,12000,17000,11,58817,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Wave');

-- Devouring Ghoul
SET @ENTRY := 28249;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,2,0,50,20000,25000,11,52352,0,0,0,0,0,2,1,0,0,0,0,0,0,'Cast Devour Flesh at 50% HP'),
(@ENTRY,0,1,0,2,0,100,4,0,50,20000,25000,11,58758,0,0,0,0,0,2,1,0,0,0,0,0,0,'Cast Devour Flesh at 50% HP');

-- Bile Golem
SET @ENTRY := 28201;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,12000,21000,27000,11,52527,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Wretching Bile'),
(@ENTRY,0,1,0,0,0,100,4,5000,12000,21000,27000,11,58810,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Wretching Bile');

-- Enraging Ghoul
SET @ENTRY := 27729;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,5000,9000,16000,24000,11,52461,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Unstoppable Enrage');

-- Dark Necromancer
SET @ENTRY := 28200;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,3,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,3,0,0,0,0,11,15537,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,2,0,40,3400,4700,11,15537,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,4,0,9,1,100,2,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,5,0,9,1,100,2,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,2,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,7,0,3,1,100,2,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,2,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,2,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,4,0,100,5,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,11,0,4,1,100,5,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,12,0,4,1,100,5,0,0,0,0,11,61558,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,13,0,9,1,100,4,0,40,3400,4700,11,61558,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,14,0,9,1,100,4,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,15,0,9,1,100,4,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,16,0,9,1,100,4,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,17,0,3,1,100,4,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,18,0,3,2,100,4,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,19,0,3,2,100,4,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,20,0,0,1,100,2,14000,18000,15000,21000,11,58772,0,0,0,0,0,5,1,0,0,0,0,0,0,'Cast Drain Mana'),
(@ENTRY,0,21,0,0,1,100,4,14000,18000,15000,21000,11,58770,0,0,0,0,0,5,1,0,0,0,0,0,0,'Cast Drain Mana'),
(@ENTRY,0,22,0,0,1,100,2,7000,11000,21000,25000,11,52498,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cripple'),
(@ENTRY,0,23,0,0,1,100,4,7000,11000,21000,25000,11,20812,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cripple');

-- Crypt Fiend
SET @ENTRY := 27734;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,6,0,8,12000,15000,11,52491,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Web Explosion on Close'),
(@ENTRY,0,1,0,0,0,100,6,2000,5000,12000,16000,11,52496,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Crypt Scarabs');

-- Patchwork Construct
SET @ENTRY := 27736;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,3,0,0,0,0,11,52525,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Disease Cloud on Spawn'),
(@ENTRY,0,1,0,11,0,100,5,0,0,0,0,11,58808,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Disease Cloud on Spawn');

-- Master Necromancer
SET @ENTRY := 27732;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,3,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,3,0,0,0,0,11,15537,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,2,0,40,3400,4700,11,15537,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,4,0,9,1,100,2,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,5,0,9,1,100,2,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,2,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,7,0,3,1,100,2,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,2,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,2,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,4,0,100,5,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,11,0,4,1,100,5,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,12,0,4,1,100,5,0,0,0,0,11,61558,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,13,0,9,1,100,4,0,40,3400,4700,11,61558,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,14,0,9,1,100,4,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,15,0,9,1,100,4,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,16,0,9,1,100,4,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,17,0,3,1,100,4,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,18,0,3,2,100,4,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,19,0,3,2,100,4,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,20,0,0,1,100,6,5000,9000,90000,180000,11,52611,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Summon Skeletons');

-- Stratholme Resident
SET @ENTRY := 28341;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,9000,12000,15000,21000,11,52657,0,0,0,0,0,5,1,0,0,0,0,0,0,'Cast Temporal Vortex'),
(@ENTRY,0,1,0,0,0,100,4,9000,12000,15000,21000,11,58816,0,0,0,0,0,5,1,0,0,0,0,0,0,'Cast Temporal Vortex'),
(@ENTRY,0,2,0,0,0,100,2,5000,9000,12000,17000,11,52660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Wave'),
(@ENTRY,0,3,0,0,0,100,4,5000,9000,12000,17000,11,58817,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Wave');

-- High Elf Mage-Priest
SET @ENTRY := 27747;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,7,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,7,0,0,0,0,11,34232,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,6,0,40,3400,4700,11,34232,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@ENTRY,0,4,0,9,1,100,6,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@ENTRY,0,5,0,9,1,100,6,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,6,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@ENTRY,0,7,0,3,1,100,6,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,6,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,6,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,14,1,100,4,5000,40,12000,18000,11,15586,0,0,0,0,0,6,0,0,0,0,0,0,0,'Cast Heal on Friendlies');

-- Infinite Adversary
SET @ENTRY := 27742;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,16000,21000,21000,29000,11,52634,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Void Shield'),
(@ENTRY,0,1,0,0,0,100,4,16000,21000,21000,29000,11,58813,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Void Shield'),
(@ENTRY,0,2,0,9,0,100,6,0,5,9000,13000,11,52633,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Void Strike on Close');

-- Stratholme Citizen
SET @ENTRY := 28340;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,2,0,127,0,0,11,52635,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Accelerate on Target Spellcast'),
(@ENTRY,0,1,0,8,0,100,4,0,127,0,0,11,58820,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Accelerate on Target Spellcast'),
(@ENTRY,0,2,0,0,0,100,6,9000,15000,12000,18000,11,52636,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Time Shift'),
(@ENTRY,0,3,0,0,0,100,2,16000,21000,21000,29000,11,52634,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Void Shield'),
(@ENTRY,0,4,0,0,0,100,4,16000,21000,21000,29000,11,58813,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Void Shield'),
(@ENTRY,0,5,0,9,0,100,6,0,5,9000,13000,11,52633,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Void Strike on Close');

-- Acolyte
SET @ENTRY := 27731;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,11000,15000,35000,45000,11,14875,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Curse of Agony'),
(@ENTRY,0,1,0,0,0,100,4,11000,15000,35000,45000,11,46190,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Curse of Agony'),
(@ENTRY,0,2,0,9,0,100,2,0,20,8000,13000,11,20832,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fire Blast on Close'),
(@ENTRY,0,3,0,9,0,100,4,0,20,8000,13000,11,14145,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fire Blast on Close'),
(@ENTRY,0,4,0,0,0,100,2,4000,8000,7000,10000,11,17439,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Shadow Shock'),
(@ENTRY,0,5,0,0,0,100,4,4000,8000,7000,10000,11,17234,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Shadow Shock'),
(@ENTRY,0,6,0,0,0,100,2,6000,10000,20000,30000,11,39621,0,0,0,0,0,5,32,0,0,0,0,0,0,'Cast Corruption'),
(@ENTRY,0,7,0,0,0,100,4,6000,10000,20000,30000,11,58811,0,0,0,0,0,5,32,0,0,0,0,0,0,'Cast Corruption'),
(@ENTRY,0,8,0,9,0,100,2,0,8,14000,19000,11,20828,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cone of Cold on Close'),
(@ENTRY,0,9,0,9,0,100,4,0,8,14000,19000,11,15244,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cone of Cold on Close');














