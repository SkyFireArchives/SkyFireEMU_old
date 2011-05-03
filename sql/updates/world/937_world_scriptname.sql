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