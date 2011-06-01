-- by iperpido
-- Quest: The Twin Ziggurats by iperpido
update `gameobject_template` set `flags`='4' where `entry`='181239';
update `gameobject_template` set `data0`='93' where `entry`='181239';
update `gameobject_template` set `data1`='181239' where `entry`='181239';
update `gameobject_template` set `data14`='21400' where `entry`='181239';
UPDATE `gameobject_template` SET `castBarCaption` = 'Opening' WHERE `entry` ='181239';
REPLACE INTO `gameobject_loot_template` set lootmode=1, mincountOrRef=1, item=22599, ChanceOrQuestChance=-100, maxcount=1, entry=181239, groupid=0;

-- by Karen
-- Chris Moller <Pie Vendor>
UPDATE `creature_template` SET `minlevel`='7',`maxlevel`='7' WHERE (`entry`='44125');
DELETE FROM npc_vendor WHERE entry=44125;
INSERT INTO npc_vendor VALUES
(44125, 0, 60375, 0, 0, 0),
(44125, 0, 60377, 0, 0, 0),
(44125, 0, 60379, 0, 0, 0),
(44125, 0, 60378, 0, 0, 0),
(44125, 0, 60376, 0, 0, 0);
-- Benjamin Sykes <Food Vendor>
UPDATE `creature_template` SET `minlevel`='10',`maxlevel`='10' WHERE (`entry`='42953');
DELETE FROM npc_vendor WHERE entry=42953;
INSERT INTO npc_vendor VALUES
(42953, 0, 4599, 0, 0, 0),
(42953, 0, 2287, 0, 0, 0),
(42953, 0, 3770, 0, 0, 0),
(42953, 0, 8952, 0, 0, 0),
(42953, 0, 117, 0, 0, 0),
(42953, 0, 3771, 0, 0, 0);
-- Karen Murray <General Goods Vendor>
UPDATE `creature_template` SET `minlevel`='5',`maxlevel`='5' WHERE (`entry`='42853');
DELETE FROM npc_vendor WHERE entry=42853;
INSERT INTO npc_vendor VALUES
(42853, 0, 5956, 0, 0, 0),
(42853, 0, 2324, 0, 0, 0),
(42853, 0, 6260, 0, 0, 0),
(42853, 0, 4498, 0, 0, 0),
(42853, 0, 2320, 0, 0, 0),
(42853, 0, 10648, 0, 0, 0),
(42853, 0, 6217, 0, 0, 0),
(42853, 0, 3371, 0, 0, 0),
(42853, 0, 6256, 0, 0, 0),
(42853, 0, 39354, 0, 0, 0),
(42853, 0, 2678, 0, 0, 0),
(42853, 0, 2901, 0, 0, 0),
(42853, 0, 2604, 0, 0, 0),
(42853, 0, 5042, 0, 0, 0),
(42853, 0, 159, 0, 0, 0),
(42853, 0, 4289, 0, 0, 0),
(42853, 0, 6529, 0, 0, 0),
(42853, 0, 30817, 0, 0, 0),
(42853, 0, 4470, 0, 0, 0),
(42853, 0, 7005, 0, 0, 0),
(42853, 0, 4496, 0, 0, 0),
(42853, 0, 4540, 0, 0, 0),
(42853, 0, 2880, 0, 0, 0);
-- Gerard Walthorn <Weapons Vendor>
UPDATE `creature_template` SET `minlevel`='5',`maxlevel`='5' WHERE (`entry`='36717');
DELETE FROM npc_vendor WHERE entry=36717;
INSERT INTO npc_vendor VALUES
(36717, 0, 25872, 0, 0, 0),
(36717, 0, 2492, 0, 0, 0),
(36717, 0, 2488, 0, 0, 0),
(36717, 0, 2491, 0, 0, 0),
(36717, 0, 2494, 0, 0, 0),
(36717, 0, 2490, 0, 0, 0),
(36717, 0, 2489, 0, 0, 0),
(36717, 0, 2495, 0, 0, 0),
(36717, 0, 29007, 0, 0, 0),
(36717, 0, 2493, 0, 0, 0);
-- Marie Allen <General Goods Vendor>  ¹1
UPDATE `creature_template` SET `minlevel`='5',`maxlevel`='5' WHERE (`entry`='38783');
DELETE FROM npc_vendor WHERE entry=38783;
INSERT INTO npc_vendor VALUES
(38783, 0, 5956, 0, 0, 0),
(38783, 0, 2324, 0, 0, 0),
(38783, 0, 6260, 0, 0, 0),
(38783, 0, 4498, 0, 0, 0),
(38783, 0, 2320, 0, 0, 0),
(38783, 0, 10648, 0, 0, 0),
(38783, 0, 6217, 0, 0, 0),
(38783, 0, 3371, 0, 0, 0),
(38783, 0, 6256, 0, 0, 0),
(38783, 0, 39354, 0, 0, 0),
(38783, 0, 2678, 0, 0, 0),
(38783, 0, 2901, 0, 0, 0),
(38783, 0, 2604, 0, 0, 0),
(38783, 0, 5042, 0, 0, 0),
(38783, 0, 159, 0, 0, 0),
(38783, 0, 4289, 0, 0, 0),
(38783, 0, 6529, 0, 0, 0),
(38783, 0, 30817, 0, 0, 0),
(38783, 0, 4470, 0, 0, 0),
(38783, 0, 7005, 0, 0, 0),
(38783, 0, 4496, 0, 0, 0),
(38783, 0, 4540, 0, 0, 0),
(38783, 0, 2880, 0, 0, 0);
-- Marie Allen <General Goods Vendor>  ¹2
UPDATE `creature_template` SET `minlevel`='5',`maxlevel`='5' WHERE (`entry`='38853');
DELETE FROM npc_vendor WHERE entry=38853;
INSERT INTO npc_vendor VALUES
(38853, 0, 5956, 0, 0, 0),
(38853, 0, 2324, 0, 0, 0),
(38853, 0, 6260, 0, 0, 0),
(38853, 0, 4498, 0, 0, 0),
(38853, 0, 2320, 0, 0, 0),
(38853, 0, 10648, 0, 0, 0),
(38853, 0, 6217, 0, 0, 0),
(38853, 0, 3371, 0, 0, 0),
(38853, 0, 6256, 0, 0, 0),
(38853, 0, 39354, 0, 0, 0),
(38853, 0, 2678, 0, 0, 0),
(38853, 0, 2901, 0, 0, 0),
(38853, 0, 2604, 0, 0, 0),
(38853, 0, 5042, 0, 0, 0),
(38853, 0, 159, 0, 0, 0),
(38853, 0, 4289, 0, 0, 0),
(38853, 0, 6529, 0, 0, 0),
(38853, 0, 30817, 0, 0, 0),
(38853, 0, 4470, 0, 0, 0),
(38853, 0, 7005, 0, 0, 0),
(38853, 0, 4496, 0, 0, 0),
(38853, 0, 4540, 0, 0, 0),
(38853, 0, 2880, 0, 0, 0);
-- Marie Allen <General Goods Vendor>  ¹3
UPDATE `creature_template` SET `minlevel`='5',`maxlevel`='5' WHERE (`entry`='36779');
DELETE FROM npc_vendor WHERE entry=36779;
INSERT INTO npc_vendor VALUES
(36779, 0, 5956, 0, 0, 0),
(36779, 0, 2324, 0, 0, 0),
(36779, 0, 6260, 0, 0, 0),
(36779, 0, 4498, 0, 0, 0),
(36779, 0, 2320, 0, 0, 0),
(36779, 0, 10648, 0, 0, 0),
(36779, 0, 6217, 0, 0, 0),
(36779, 0, 3371, 0, 0, 0),
(36779, 0, 6256, 0, 0, 0),
(36779, 0, 39354, 0, 0, 0),
(36779, 0, 2678, 0, 0, 0),
(36779, 0, 2901, 0, 0, 0),
(36779, 0, 2604, 0, 0, 0),
(36779, 0, 5042, 0, 0, 0),
(36779, 0, 159, 0, 0, 0),
(36779, 0, 4289, 0, 0, 0),
(36779, 0, 6529, 0, 0, 0),
(36779, 0, 30817, 0, 0, 0),
(36779, 0, 4470, 0, 0, 0),
(36779, 0, 7005, 0, 0, 0),
(36779, 0, 4496, 0, 0, 0),
(36779, 0, 4540, 0, 0, 0),
(36779, 0, 2880, 0, 0, 0);
-- Marie Allen <General Goods Vendor>  ¹4
UPDATE `creature_template` SET `minlevel`='5',`maxlevel`='5' WHERE (`entry`='43558');
DELETE FROM npc_vendor WHERE entry=43558;
INSERT INTO npc_vendor VALUES
(43558, 0, 5956, 0, 0, 0),
(43558, 0, 2324, 0, 0, 0),
(43558, 0, 6260, 0, 0, 0),
(43558, 0, 4498, 0, 0, 0),
(43558, 0, 2320, 0, 0, 0),
(43558, 0, 10648, 0, 0, 0),
(43558, 0, 6217, 0, 0, 0),
(43558, 0, 3371, 0, 0, 0),
(43558, 0, 6256, 0, 0, 0),
(43558, 0, 39354, 0, 0, 0),
(43558, 0, 2678, 0, 0, 0),
(43558, 0, 2901, 0, 0, 0),
(43558, 0, 2604, 0, 0, 0),
(43558, 0, 5042, 0, 0, 0),
(43558, 0, 159, 0, 0, 0),
(43558, 0, 4289, 0, 0, 0),
(43558, 0, 6529, 0, 0, 0),
(43558, 0, 30817, 0, 0, 0),
(43558, 0, 4470, 0, 0, 0),
(43558, 0, 7005, 0, 0, 0),
(43558, 0, 4496, 0, 0, 0),
(43558, 0, 4540, 0, 0, 0),
(43558, 0, 2880, 0, 0, 0);
-- Samantha Buckley <General Goods Vendor>
UPDATE `creature_template` SET `minlevel`='5',`maxlevel`='5' WHERE (`entry`='36695');
DELETE FROM npc_vendor WHERE entry=36695;
INSERT INTO npc_vendor VALUES
(36695, 0, 5956, 0, 0, 0),
(36695, 0, 2324, 0, 0, 0),
(36695, 0, 6260, 0, 0, 0),
(36695, 0, 4498, 0, 0, 0),
(36695, 0, 2320, 0, 0, 0),
(36695, 0, 10648, 0, 0, 0),
(36695, 0, 6217, 0, 0, 0),
(36695, 0, 3371, 0, 0, 0),
(36695, 0, 6256, 0, 0, 0),
(36695, 0, 39354, 0, 0, 0),
(36695, 0, 2678, 0, 0, 0),
(36695, 0, 2901, 0, 0, 0),
(36695, 0, 2604, 0, 0, 0),
(36695, 0, 5042, 0, 0, 0),
(36695, 0, 159, 0, 0, 0),
(36695, 0, 4289, 0, 0, 0),
(36695, 0, 6529, 0, 0, 0),
(36695, 0, 30817, 0, 0, 0),
(36695, 0, 4470, 0, 0, 0),
(36695, 0, 7005, 0, 0, 0),
(36695, 0, 4496, 0, 0, 0),
(36695, 0, 4540, 0, 0, 0),
(36695, 0, 2880, 0, 0, 0);
-- Cordelia Everseek <Food & Drink>
DELETE FROM npc_vendor WHERE entry=43972;
INSERT INTO npc_vendor VALUES
(43972, 0, 8932, 0, 0, 0),
(43972, 0, 414, 0, 0, 0),
(43972, 0, 2070, 0, 0, 0),
(43972, 0, 422, 0, 0, 0),
(43972, 0, 3927, 0, 0, 0),
(43972, 0, 1179, 0, 0, 0),
(43972, 0, 1205, 0, 0, 0),
(43972, 0, 1645, 0, 0, 0),
(43972, 0, 8766, 0, 0, 0),
(43972, 0, 159, 0, 0, 0),
(43972, 0, 1707, 0, 0, 0),
(43972, 0, 1708, 0, 0, 0);
-- Chase Everseek <Trade Goods>
DELETE FROM npc_vendor WHERE entry=43980;
INSERT INTO npc_vendor VALUES
(43980, 0, 2325, 0, 0, 0),
(43980, 0, 5956, 0, 0, 0),
(43980, 0, 2324, 0, 0, 0),
(43980, 0, 6532, 0, 0, 0),
(43980, 0, 3857, 0, 0, 0),
(43980, 0, 2320, 0, 0, 0),
(43980, 0, 6217, 0, 0, 0),
(43980, 0, 3371, 0, 0, 0),
(43980, 0, 2321, 0, 0, 0),
(43980, 0, 6256, 0, 0, 0),
(43980, 0, 4340, 0, 0, 0),
(43980, 0, 8343, 0, 0, 0),
(43980, 0, 4400, 0, 0, 0),
(43980, 0, 2678, 0, 0, 0),
(43980, 0, 2901, 0, 0, 0),
(43980, 0, 6530, 0, 0, 0),
(43980, 0, 4342, 0, 0, 0),
(43980, 0, 2604, 0, 0, 0),
(43980, 0, 14341, 0, 0, 0),
(43980, 0, 4289, 0, 0, 0),
(43980, 0, 4291, 0, 0, 0),
(43980, 0, 7005, 0, 0, 0),
(43980, 0, 3466, 0, 0, 0),
(43980, 0, 2880, 0, 0, 0),
(43980, 0, 4399, 0, 0, 0),
(43980, 0, 4341, 0, 0, 0);
-- Brod Anvilbeard <General Goods>
DELETE FROM npc_vendor WHERE entry=40826;
INSERT INTO npc_vendor VALUES
(40826, 0, 4497, 0, 0, 0),
(40826, 0, 4499, 0, 0, 0),
(40826, 0, 1205, 0, 0, 0),
(40826, 0, 4542, 0, 0, 0),
(40826, 0, 1645, 0, 0, 0),
(40826, 0, 159, 0, 0, 0),
(40826, 0, 4470, 0, 0, 0),
(40826, 0, 4601, 0, 0, 0),
(40826, 0, 1708, 0, 0, 0);
-- Fedli Caskcheer <Food & Drink Vendor>
DELETE FROM npc_vendor WHERE entry=40815;
INSERT INTO npc_vendor VALUES
(40815, 0, 8932, 0, 0, 0),
(40815, 0, 414, 0, 0, 0),
(40815, 0, 2070, 0, 0, 0),
(40815, 0, 422, 0, 0, 0),
(40815, 0, 3927, 0, 0, 0),
(40815, 0, 1179, 0, 0, 0),
(40815, 0, 1205, 0, 0, 0),
(40815, 0, 1645, 0, 0, 0),
(40815, 0, 8766, 0, 0, 0),
(40815, 0, 159, 0, 0, 0),
(40815, 0, 1707, 0, 0, 0),
(40815, 0, 1708, 0, 0, 0);
-- Rations Officer Flexgear <Food & Drink>
DELETE FROM npc_vendor WHERE entry=44417;
INSERT INTO npc_vendor VALUES
(44417, 0, 8932, 0, 0, 0),
(44417, 0, 414, 0, 0, 0),
(44417, 0, 2070, 0, 0, 0),
(44417, 0, 422, 0, 0, 0),
(44417, 0, 3927, 0, 0, 0),
(44417, 0, 1179, 0, 0, 0),
(44417, 0, 1205, 0, 0, 0),
(44417, 0, 1645, 0, 0, 0),
(44417, 0, 8766, 0, 0, 0),
(44417, 0, 159, 0, 0, 0),
(44417, 0, 1707, 0, 0, 0),
(44417, 0, 1708, 0, 0, 0);
-- Grohk <General Goods>
DELETE FROM npc_vendor WHERE entry=38847;
INSERT INTO npc_vendor VALUES
(38847, 0, 4497, 0, 0, 0),
(38847, 0, 4499, 0, 0, 0),
(38847, 0, 1205, 0, 0, 0),
(38847, 0, 4542, 0, 0, 0),
(38847, 0, 1645, 0, 0, 0),
(38847, 0, 159, 0, 0, 0),
(38847, 0, 4470, 0, 0, 0),
(38847, 0, 4601, 0, 0, 0),
(38847, 0, 1708, 0, 0, 0);
-- Snart Razzlegrin <General Goods>
DELETE FROM npc_vendor WHERE entry=44398;
INSERT INTO npc_vendor VALUES
(44398, 0, 4497, 0, 0, 0),
(44398, 0, 4499, 0, 0, 0),
(44398, 0, 1205, 0, 0, 0),
(44398, 0, 4542, 0, 0, 0),
(44398, 0, 1645, 0, 0, 0),
(44398, 0, 159, 0, 0, 0),
(44398, 0, 4470, 0, 0, 0),
(44398, 0, 4601, 0, 0, 0),
(44398, 0, 1708, 0, 0, 0);
-- Sally "Salvager" Sandscrew <Armor Vendor>
DELETE FROM npc_vendor WHERE entry=37761;
INSERT INTO npc_vendor VALUES
(37761, 0, 49265, 0, 0, 0),
(37761, 0, 49266, 0, 0, 0),
(37761, 0, 49267, 0, 0, 0),
(37761, 0, 49268, 0, 0, 0),
(37761, 0, 49269, 0, 0, 0),
(37761, 0, 49270, 0, 0, 0),
(37761, 0, 49259, 0, 0, 0),
(37761, 0, 49260, 0, 0, 0),
(37761, 0, 49261, 0, 0, 0),
(37761, 0, 49262, 0, 0, 0),
(37761, 0, 49263, 0, 0, 0),
(37761, 0, 49264, 0, 0, 0),
(37761, 0, 49271, 0, 0, 0),
(37761, 0, 49272, 0, 0, 0),
(37761, 0, 49273, 0, 0, 0),
(37761, 0, 49274, 0, 0, 0),
(37761, 0, 49275, 0, 0, 0),
(37761, 0, 49276, 0, 0, 0);
-- Brett "Coins" McQuid <General Goods>
DELETE FROM npc_vendor WHERE entry=37762;
INSERT INTO npc_vendor VALUES
(37762, 0, 49600, 0, 0, 0),
(37762, 0, 49258, 0, 0, 0),
(37762, 0, 49257, 0, 0, 0),
(37762, 0, 49253, 0, 0, 0),
(37762, 0, 49254, 0, 0, 0),
(37762, 0, 49601, 0, 0, 0);

-- by Tutu
delete from creature where map = 725;
INSERT INTO `creature_template_addon` VALUES (42808, 0, 0, 0, 0, 438, NULL);  /*Stonecore Flayer animation*/
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 925.611, 979.747, 316.984, 3.04637, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (50048, 725, 3, 1, 839.101, 994.357, 317.44, 5.67962, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42333, 725, 3, 1, 1337.79, 963.399, 214.183, 1.80461, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43438, 725, 3, 1, 1164.41, 874.28, 285.348, 3.07851, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43537, 725, 3, 1, 916.019, 992.009, 317.789, 3.01888, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 913.5, 983.962, 317.047, 3.14455, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42188, 725, 3, 1, 1473.44, 1061.58, 216.667, 0.47337, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 926.06, 984.451, 317.367, 3.04637, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 925.865, 989.621, 317.77, 3.24272, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 913.512, 980.007, 316.738, 3.14455, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43391, 725, 3, 1, 913.488, 988.057, 317.399, 3.14848, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43214, 725, 3, 1, 1286.5, 1218.08, 246.952, 3.58754, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 951.165, 958.031, 315.62, 2.20207, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 947.587, 949.951, 315.038, 2.53979, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 959.209, 942.639, 314.75, 0.878676, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 952.352, 938.87, 314.54, 3.51761, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 959.953, 933.771, 314.2, 2.19029, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 918.252, 945.663, 318.533, 4.77032, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 925.719, 947.663, 318.12, 4.60932, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 958.094, 923.465, 312.731, 1.88006, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 970.049, 923.971, 311.768, 1.9154, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43391, 725, 3, 1, 987.677, 882.458, 303.374, 2.07248, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43537, 725, 3, 1, 992.328, 884.816, 302.913, 2.206, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43430, 725, 3, 1, 983.637, 878.033, 303.375, 2.23349, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43537, 725, 3, 1, 995.663, 876.682, 301.935, 2.1628, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 991.068, 872.937, 302.375, 2.28061, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 1013.37, 856.106, 299.897, 2.90894, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 1030.1, 851.455, 297.973, 0.862975, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 1042.64, 844.628, 296.469, 2.39058, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 1039.15, 858.856, 295.634, 2.75579, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43662, 725, 3, 1, 1030.5, 869.301, 296.991, 2.73615, 86400, 10, 1);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43391, 725, 3, 1, 1066.2, 864.455, 293.038, 3.17597, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1073.25, 868.321, 292.009, 3.17597, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43430, 725, 3, 1, 1073.51, 860.625, 291.821, 3.17597, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43537, 725, 3, 1, 1077.55, 855.92, 290.949, 2.98355, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43537, 725, 3, 1, 1078.98, 863.379, 290.893, 2.95214, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42810, 725, 3, 1, 1147.85, 930.417, 285.002, 4.79389, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1127.4, 964.8, 285.088, 2.13925, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1133.03, 967.803, 284.24, 2.06071, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1159.31, 956.593, 283.906, 4.13887, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1159.7, 964.56, 282.35, 4.37057, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1154.2, 966.519, 282.632, 4.37057, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1164.89, 968.117, 280.707, 4.2724, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1158.71, 971.024, 280.956, 4.2724, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1163.58, 974.284, 279.166, 4.34702, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1171.56, 972.439, 278.882, 4.18602, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1139.98, 1012.01, 269.552, 5.57224, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1149.55, 1012.06, 269.754, 5.26986, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1151.72, 1003.15, 271.802, 5.25415, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1143.54, 1017.87, 268.597, 5.44658, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1153.83, 1009.17, 270.607, 4.8536, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1145.08, 1010.11, 270.131, 5.11278, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1178.18, 1015.75, 271.286, 0.781309, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1172.05, 1024.27, 270.458, 0.216607, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1152.43, 1067.39, 265.522, 0.393322, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1157.98, 1062.73, 265.385, 1.09939, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1165.46, 1063.74, 265.174, 2.4762, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1136.95, 1046.82, 265.769, 5.33505, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1133.14, 1044.13, 265.514, 4.64232, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1129.14, 1040.06, 265.26, 5.91624, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1138.79, 1041.99, 265.705, 5.90053, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1142.18, 1047.02, 265.342, 4.70673, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (43917, 725, 3, 1, 1143.52, 1041.55, 265.715, 5.20939, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42810, 725, 3, 1, 1099.12, 996.951, 265.924, 0.999645, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1100.12, 1065.37, 268.413, 2.98278, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1096.67, 1059.35, 268.419, 1.96961, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1065.35, 1028.51, 266.157, 3.12022, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1062.75, 1021.39, 265.096, 3.10451, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42810, 725, 3, 1, 1187.59, 1064.41, 263.427, 5.92803, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1210.02, 1037.49, 259.825, 6.04191, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1213.65, 1044.85, 259.52, 5.93588, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1404.36, 1169.75, 231.642, 5.5589, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1413.04, 1170.3, 231.446, 4.59207, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1455.09, 1222.13, 232.043, 2.73461, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1451.77, 1226.04, 232.359, 4.57636, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1447.85, 1223.22, 231.83, 6.20842, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1450.34, 1219.3, 231.458, 1.25255, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42695, 725, 3, 1, 1469.96, 1198.17, 230.799, 3.02663, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42695, 725, 3, 1, 1533.67, 1188.69, 219.899, 2.89703, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1539.08, 1191.04, 220.069, 2.95594, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1535.02, 1184.36, 219.429, 2.95594, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1541.2, 1186.64, 219.297, 2.95594, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1540.49, 1181.74, 218.817, 2.41795, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42692, 725, 3, 1, 1550.99, 1154.66, 215.978, 2.20197, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1535.34, 1210.21, 223.398, 0.851081, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1552.77, 1206.09, 222.498, 1.95849, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1543.33, 1208.4, 223, 1.44013, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1574.82, 1180.18, 219.122, 0.328787, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1572.92, 1185.67, 219.831, 0.332714, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42692, 725, 3, 1, 1595.39, 1173.05, 218.224, 2.91903, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1590.05, 1165.41, 217.743, 2.86405, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1584.92, 1166.2, 217.781, 1.23434, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1525.74, 1155.32, 217.326, 0.747396, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1571, 1194.08, 220.804, 4.38255, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1536.25, 1122.36, 216.333, 2.16773, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1536.95, 1132.11, 216.333, 4.09588, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1559.32, 1107.26, 215.731, 1.57475, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1562.03, 1102.22, 215.754, 1.35956, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1556.52, 1102.32, 215.747, 1.35956, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1583.8, 1087.41, 217.38, 1.49696, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1594.4, 1102.36, 216.776, 2.66017, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1589.18, 1092.24, 217.276, 3.00575, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1597.68, 1110.19, 216.36, 3.52175, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1597.81, 1107.03, 216.584, 3.28535, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1530.2, 1131.09, 216.36, 5.32031, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1530.86, 1123.27, 216.357, 0.721797, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1562.33, 1075.16, 217.307, 4.84905, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42692, 725, 3, 1, 1513.97, 1075.5, 216.849, 0.513649, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1565.78, 1069.08, 217.906, 3.23113, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1519.19, 1098.12, 216.667, 1.60928, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1525.82, 1097.32, 216.525, 2.18184, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1524.93, 1105.71, 216.462, 0.768121, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1527.65, 1108.43, 216.376, 4.07465, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1532, 1101.38, 216.428, 2.48029, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42696, 725, 3, 1, 1561.44, 1058.92, 218.613, 2.07424, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42691, 725, 3, 1, 1544.94, 1061.34, 218.381, 0.198453, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1588.49, 1087.3, 217.591, 1.44984, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42692, 725, 3, 1, 1587.2, 1102.15, 216.514, 1.04669, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42789, 725, 3, 1, 1549.7, 1057.38, 218.618, 1.16842, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1405.69, 1063.2, 212.564, 6.12821, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1378.14, 1070.96, 213.251, 0.563662, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1387.93, 1076.37, 212.992, 3.70683, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1383.11, 1050.52, 213.049, 4.61003, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1367.91, 1048.05, 212.272, 5.22264, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1378.98, 1076.49, 213.74, 6.0905, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1386.99, 1084.5, 213.279, 4.28802, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1372.99, 1075.02, 213.457, 2.24206, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1375.51, 1114.19, 213.436, 0.00368118, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1369.17, 1108.39, 214.421, 5.30355, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1367.29, 1101.45, 214.383, 5.99313, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1361.44, 1100.18, 214.371, 1.57134, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1352.64, 1082.11, 214.08, 0.145838, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1352.94, 1072.53, 213.25, 1.11502, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1346.94, 1077.01, 213.299, 0.528327, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1348.34, 1084.52, 214.041, 3.33769, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1342.2, 1082.33, 214.004, 4.62496, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1345.62, 1070.23, 213.066, 0.922594, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1340.51, 1076.86, 213.191, 0.922594, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1321.18, 1088.79, 213.38, 4.70428, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1318.12, 1083.28, 213.176, 5.23835, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1324.49, 1080.38, 213.296, 1.54934, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1319.36, 1078.15, 212.971, 2.45647, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1312.91, 1079.41, 212.823, 1.80852, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1312.74, 1086.23, 213.065, 0.0806416, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1316.22, 1093.11, 213.252, 4.71056, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1289.81, 1091.16, 212.664, 4.25896, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1294.49, 1088.79, 212.468, 3.8804, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1289.12, 1081.75, 212.532, 2.10068, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1294.93, 1082.08, 212.428, 1.6263, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1292.67, 1094.38, 212.639, 2.78084, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1284.98, 1088.14, 212.765, 4.13801, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1284.43, 1082.96, 212.626, 0.327253, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1290.82, 1085.69, 212.562, 0.48826, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42692, 725, 3, 1, 1298.86, 1070.26, 212.112, 0.243996, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1274.19, 1113.38, 213.355, 3.07929, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42808, 725, 3, 1, 1274.37, 1104.02, 213.678, 2.92378, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1317.08, 982.893, 207.448, 5.21319, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1316, 984.867, 207.571, 5.21319, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1314.76, 987.128, 207.712, 5.21319, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1313.59, 989.279, 207.846, 5.21319, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1312.48, 991.29, 207.971, 5.21319, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1328.82, 1000.79, 208.534, 4.92652, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1318.93, 984.114, 207.542, 5.22104, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1317.69, 986.134, 207.667, 5.26424, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1316.42, 988.189, 207.794, 5.26424, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1315.25, 990.212, 207.919, 5.22104, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1314.13, 992.534, 208.066, 5.21319, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1330.96, 990.929, 207.974, 4.90296, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1320.6, 985.671, 207.655, 5.2878, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1319.58, 987.329, 207.755, 5.26424, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1318.31, 989.386, 207.878, 5.26424, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1317.07, 991.548, 208.007, 5.25638, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1315.82, 993.612, 208.131, 5.25638, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1330.47, 993.216, 208.104, 4.92652, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1322.27, 986.838, 207.727, 5.25639, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1321.15, 988.654, 207.832, 5.27602, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1319.97, 990.471, 207.941, 5.2878, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1318.61, 992.566, 208.067, 5.2878, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1317.2, 994.739, 208.197, 5.2878, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1329.38, 998.229, 208.389, 4.92652, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1324.07, 988.205, 207.826, 5.35456, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1322.85, 989.942, 207.914, 5.331, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1321.59, 991.705, 208.012, 5.331, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1320.19, 993.673, 208.13, 5.331, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1318.65, 995.842, 208.262, 5.331, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1329.93, 995.7, 208.245, 4.92652, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1333.02, 991.548, 207.994, 4.96972, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1332.35, 993.914, 208.129, 4.98935, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1331.66, 996.319, 208.267, 4.98935, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1331.2, 998.685, 208.401, 4.98935, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1330.6, 1001.11, 208.54, 4.98542, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1334.83, 992.307, 208.022, 4.94223, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1334.28, 994.617, 208.155, 4.94616, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1333.7, 997.049, 208.293, 4.94616, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1333.17, 999.277, 208.42, 4.94616, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1332.6, 1001.66, 208.556, 4.94616, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1336.73, 992.869, 208.038, 4.8794, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1336.35, 995.173, 208.171, 4.87547, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1335.72, 997.456, 208.301, 4.90689, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1335.26, 999.74, 208.431, 4.91474, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1334.75, 1002.15, 208.568, 4.91867, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1338.7, 993.488, 208.057, 4.89118, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1338.28, 995.737, 208.188, 4.90689, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1337.81, 997.983, 208.316, 4.92652, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1337.3, 1000.39, 208.452, 4.91867, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1336.81, 1002.71, 208.584, 4.91867, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1344.71, 994.412, 208.058, 4.56524, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1345.15, 996.568, 208.178, 4.51026, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1345.63, 998.892, 208.307, 4.51026, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1346.18, 1001.58, 208.456, 4.51026, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1346.65, 1003.91, 208.581, 4.51026, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1346.75, 994.253, 208.031, 4.4867, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1347.17, 996.5, 208.156, 4.5299, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1347.6, 998.838, 208.287, 4.5299, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1348.07, 1001.41, 208.43, 4.5299, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1348.48, 1003.63, 208.552, 4.5299, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1348.87, 994.024, 207.998, 4.51027, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1349.37, 996.459, 208.134, 4.51027, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1349.85, 998.783, 208.263, 4.51027, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1350.28, 1001.33, 208.406, 4.54561, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1350.64, 1003.5, 208.528, 4.54561, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1351.1, 993.819, 207.967, 4.49849, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1351.64, 996.091, 208.093, 4.48278, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1352.2, 998.527, 208.228, 4.49849, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1352.56, 1000.98, 208.376, 4.50634, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1352.99, 1003.05, 208.517, 4.50634, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1353.26, 993.472, 207.927, 4.49849, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1353.79, 995.83, 208.058, 4.49063, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1354.28, 998.318, 208.221, 4.51812, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1354.72, 1000.52, 208.37, 4.51812, 86400, 0, 0);
INSERT INTO `creature` (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, MovementType) VALUES (42428, 725, 3, 1, 1355.15, 1002.86, 208.527, 4.5299, 86400, 0, 0);