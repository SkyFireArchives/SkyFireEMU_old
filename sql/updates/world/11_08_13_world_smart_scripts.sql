
-- SmartAI Demon Containment Unit
SET @ENTRY := 47901;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,5000,5000,20000,20000,11,89348,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Cast Demon Repellent Ray"),
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,11000,11000,20000,20000,11,89354,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Cast Arcane Amplifier");

-- creature_template Demon Containment Unit
DELETE FROM `creature_template` WHERE `entry`=47901 LIMIT 1;
INSERT INTO `creature_template` ( `entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ( 47901, 0, 0, 0, 0, 0, 35906, 0, 0, 0, "Demon Containment Unit", "", "", 0, 87, 87, 3, 14, 14, 0, 1.0, 1.14286, 1.0, 1, 650, 856, 0, 2000, 7.5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 650, 856, 2000, 9, 104, 47901, 0, 0, 0, 0, 0, 0, 0, 0, 89354, 89348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "SmartAI", 1, 3, 34.1927, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, "", "1");
