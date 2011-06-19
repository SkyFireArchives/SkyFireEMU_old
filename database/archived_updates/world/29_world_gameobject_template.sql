-- Fixed startup errors related to non existing gameobject scriptnames
-- Game Objects
UPDATE `gameobject_template` SET `ScriptName`='go_cat_figurine' WHERE `entry`=13873;
UPDATE `gameobject_template` SET `ScriptName`='go_northern_crystal_pylon' WHERE `entry`=164955;
UPDATE `gameobject_template` SET `ScriptName`='go_western_crystal_pylon' WHERE `entry`=164956;
UPDATE `gameobject_template` SET `ScriptName`='go_eastern_crystal_pylon' WHERE `entry`=164957;
UPDATE `gameobject_template` SET `ScriptName`='go_barov_journal' WHERE `entry`=180794;
UPDATE `gameobject_template` SET `ScriptName`='go_tablet_of_the_seven' WHERE `entry`=169294;
UPDATE `gameobject_template` SET `ScriptName`='go_tele_to_violet_stand' WHERE `entry`=191229;
UPDATE `gameobject_template` SET `ScriptName`='go_mausoleum_door' WHERE `entry`=176594;
UPDATE `gameobject_template` SET `ScriptName`='go_mausoleum_trigger' WHERE `entry`=104593;
-- Ragefire Chasm
UPDATE `gameobject_template` SET `ScriptName`='go_blood_filled_orb' WHERE `entry`=182024;
-- Silithus
UPDATE `gameobject_template` SET `ScriptName`='go_hive_pod' WHERE `entry`=178553;
UPDATE `gameobject_template` SET `ScriptName`='go_crystalline_tear' WHERE `entry`=180633;
-- Blackfathom Deeps
UPDATE `gameobject_template` SET `ScriptName`='go_blackfathom_fire' WHERE `entry` IN (21118,21119,21120,21121);
-- Razorfen Downs
UPDATE `gameobject_template` SET `ScriptName`='go_gong' WHERE `entry`=148917;
-- Ashenvale
UPDATE `gameobject_template` SET `ScriptName`='go_naga_brazier' WHERE `entry`=178247;
-- Fixed By Ari.