UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch_credit' WHERE `entry`=40301;
UPDATE `creature_template` SET `ScriptName`= 'npc_tiger_matriarch' WHERE `entry`=40312;
UPDATE `creature_template` SET `ScriptName`= 'npc_troll_volunteer' WHERE `entry` IN (40260,40264);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (75420,75102);
INSERT INTO `spell_script_names` VALUES
(75420, 'spell_mount_check'),
(75102, 'spell_voljin_war_drums');