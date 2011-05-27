-- Dummy
DELETE FROM `creature` WHERE `guid` in (252558, 252522, 252485, 252462, 252458, 252420, 252399, 252371, 252336);
UPDATE `creature_template` SET `dynamicflags`=0, `ScriptName`='npc_training_dummy', `RegenHealth`=0 WHERE `entry`=44548;
UPDATE `creature` SET `spawntimesecs`=3 WHERE `id`=44548;
UPDATE `creature_template` SET `flags_extra`=64 WHERE `entry` in (44820, 44794, 44703, 44937, 48304, 44614, 44848, 44171, 44548, 44389);
--

-- Llane Beshere gossip text
UPDATE `gossip_menu` SET `text_id`=5721 WHERE `entry`=4650;
--

-- Delete & Change creatures position and emote
DELETE FROM `creature` WHERE `guid` in (252467, 252366, 252332, 254520, 252377, 254676, 253505, 252557, 252900, 255262, 254741, 254998, 253667, 253076, 253874, 254144, 252356, 253398);
REPLACE INTO `creature` VALUES (252467,49869,0,1,1,32729,49869,-8985.640,-70.7077,88.53,0.541309,5000,0,0,71,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (252366,49869,0,1,1,32729,49869,-8970.87000000000128,-82.1098,87.1563,0.761221,5000,0,0,55,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (252332,49869,0,1,1,32729,49869,-8951.54000000000128,-86.0769,87.7553,1.311,5000,0,0,55,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (254520,49869,0,1,1,32729,49869,-8820.9,-142.061,80.9928,1.42407,5000,0,0,55,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (252377,49869,0,1,1,32729,49869,-8856.46999999999872,-132.731,81.3083,0.831747,5000,0,0,55,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (254676,49869,0,1,1,32729,49869,-8870.,-118.951,80.8899,0.419726,5000,0,0,71,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (253505,951,0,1,1,0,951,-8825.79999999999872,-147.052,80.5643,6.02651,5000,0,0,87,104,0,0,0,0,0);
REPLACE INTO `creature` VALUES (253667,1642,0,1,1,3167,1642,-9046.12,-44.8936,88.3316,1.41984,5000,0,0,2,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (253076,1642,0,1,1,3257,1642,-9045.25,-42.8946,88.3531,4.55358,5000,0,0,2,0,0,0,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`=252512;
UPDATE `creature_addon` SET `emote`=333 WHERE `guid` in (253505, 255299, 255196, 252936);
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(252467,0,0,0,1,333,''),
(252366,0,0,0,1,333,''),
(252332,0,0,0,1,333,''),
(254520,0,0,0,1,333,''),
(252377,0,0,0,1,333,''),
(254676,0,0,0,1,333,""),
(253667,253667,0,0,0,0,''),
(253076,253076,0,0,0,0,'');
--

-- Injured Stormwind Infantry health & pool - Stormwind Infantry dmg & texts - Blackrock Battle Worg dmg - Northshire Guard health & movepath & Blackrock Spy dmg & spells & movepath & texts - Goblin Assassin dmg & spells & texts - Blackrock Invader dmg & texts
UPDATE `creature_template` SET `RegenHealth`=0 WHERE `entry`=50047;
REPLACE INTO `pool_template` VALUES (50047, 18, "Injured Stormwind Infantry");
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `description`) VALUES
(255165, 50047, "Injured Stormwind - Group 1"),
(255138, 50047, "Injured Stormwind - Group 2"),
(255015, 50047, "Injured Stormwind - Group 3"),
(254900, 50047, "Injured Stormwind - Group 4"),
(254677, 50047, "Injured Stormwind - Group 5"),
(254637, 50047, "Injured Stormwind - Group 6"),
(254133, 50047, "Injured Stormwind - Group 7"),
(254123, 50047, "Injured Stormwind - Group 8"),
(254062, 50047, "Injured Stormwind - Group 9"),
(254034, 50047, "Injured Stormwind - Group 10"),
(253981, 50047, "Injured Stormwind - Group 11"),
(253762, 50047, "Injured Stormwind - Group 12"),
(253455, 50047, "Injured Stormwind - Group 13"),
(253441, 50047, "Injured Stormwind - Group 14"),
(253079, 50047, "Injured Stormwind - Group 15"),
(252793, 50047, "Injured Stormwind - Group 16"),
(252758, 50047, "Injured Stormwind - Group 17"),
(252739, 50047, "Injured Stormwind - Group 18"),
(252694, 50047, "Injured Stormwind - Group 19"),
(252693, 50047, "Injured Stormwind - Group 20"),
(252692, 50047, "Injured Stormwind - Group 21"),
(252691, 50047, "Injured Stormwind - Group 22"),
(252690, 50047, "Injured Stormwind - Group 23"),
(252689, 50047, "Injured Stormwind - Group 24"),
(252688, 50047, "Injured Stormwind - Group 25"),
(252687, 50047, "Injured Stormwind - Group 26"),
(252686, 50047, "Injured Stormwind - Group 27"),
(252681, 50047, "Injured Stormwind - Group 28"),
(252680, 50047, "Injured Stormwind - Group 29"),
(252675, 50047, "Injured Stormwind - Group 30"),
(252677, 50047, "Injured Stormwind - Group 31"),
(252512, 50047, "Injured Stormwind - Group 32"),
(252685, 50047, "Injured Stormwind - Group 33"),
(252676, 50047, "Injured Stormwind - Group 34"),
(252682, 50047, "Injured Stormwind - Group 35"),
(252406, 50047, "Injured Stormwind - Group 36"),
(252679, 50047, "Injured Stormwind - Group 37"),
(252683, 50047, "Injured Stormwind - Group 38"),
(252684, 50047, "Injured Stormwind - Group 39"),
(252678, 50047, "Injured Stormwind - Group 40");
REPLACE INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `type`, `emote`, `comment`) VALUES
(49869, -1000001, "Your filthy dogs won't be enough!", 1, 0, "Stormwind Infantry - Yell1"),
(49869, -1000002, "Your worgs are no match for the might of Stormwind!", 1, 0, "Stormwind Infantry - Yell2"),
(49869, -1000003, "Look alive, men! There are orcs and worgs about!", 1, 0, "Stormwind Infantry - Yell3"),
(49869, -1000004, "I'll kill a hundred more of your battle worgs!", 1, 22, "Stormwind Infantry - Yell4"),
(49869, -1000005, "Come, monsters! We will cursh you!", 1, 0, "Stormwind Infantry - Yell5"),
(49869, -1000006, "Make yourself useful and heal me, Paxton!", 0, 0, "Stormwind Infantry - Say1"),
(49869, -1000007, "I could use a heal, brother!", 0, 0, "Stormwind Infantry - Say2"),
(49869, -1000008, "I need a heal!", 0, 0, "Stormwind Infantry - Say3"),
(49869, -1000009, "HELP!", 0, 0, "Stormwind Infantry - Say4");
UPDATE `creature_template` SET `mindmg`=6, `maxdmg`=8, `ScriptName`='npc_stormwind_infantry' WHERE `entry`=49869;
UPDATE `creature_template` SET `mindmg`=4, `maxdmg`=5, `ScriptName`='npc_blackrock_battle_worg' WHERE `entry`=49871;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`) VALUES
(253667, 1, -9047.82, -69.533, 88.1482, 0),
(253667, 2, -9049.7, -74.7728, 88.141, 0),
(253667, 3, -9051.3, -87.0787, 87.9445, 0),
(253667, 4, -9046.37, -97.1341, 88.0547, 0),
(253667, 5, -9037.65, -100.691, 87.8292, 0),
(253667, 6, -9021.47, -97.2466, 87.0877, 0),
(253667, 7, -9013.97, -90.8248, 86.5515, 0),
(253667, 8, -9007.88, -81.0571, 86.5524, 2000),
(253667, 9, -9008.03, -84.6109, 86.3904, 0),
(253667, 10, -9013.97, -90.8248, 86.5515, 0),
(253667, 11, -9021.47, -97.2466, 87.0877, 0),
(253667, 12, -9037.65, -100.691, 87.8292, 0),
(253667, 13, -9046.37, -97.1341, 88.0547, 0),
(253667, 14, -9051.3, -87.0787, 87.9445, 0),
(253667, 15, -9049.7, -74.7728, 88.141, 0),
(253667, 16, -9046.120117, -44.893600, 88.331596, 2000),
(253076, 1, -9040.39, -10.1797, 88.2425, 0),
(253076, 2, -9037.12, -1.32417, 88.3222, 0),
(253076, 3, -9030.68, 3.90194, 88.2341, 0),
(253076, 4, -9022.66, 3.78092, 88.306, 0),
(253076, 5, -9012.76, -9.73045, 88.491, 0),
(253076, 6, -9009.67, -35.7909, 88.0058, 0),
(253076, 7, -9008.94, -50.5854, 87.3187, 0),
(253076, 8, -9006.81, -78.6543, 86.5426, 1000),
(253076, 9, -9004.85, -80.2992, 86.3719, 0),
(253076, 10, -9010.12, -55.3667, 87.2097, 0),
(253076, 11, -9008.94, -32.6009, 88.1985, 0),
(253076, 12, -9018.07, 1.60422, 88.6018, 0),
(253076, 13, -9025.93, 3.83505, 88.2557, 0),
(253076, 14, -9034.68, 3.47404, 88.1886, 0),
(253076, 15, -9037.12, -1.32417, 88.3222, 0),
(253076, 16, -9040.39, -10.1797, 88.2425, 0),
(253076, 17, -9045.25, -42.8946, 88.3531, 2000);
UPDATE `creature` SET `position_x`=-8818.05, `position_y`=-69.5144, `position_z`=88.9984 WHERE `guid`=255255;
UPDATE `creature` SET `MovementType`=2 WHERE `guid` in (253667, 253076);
UPDATE `creature` SET `position_x`=-8969.07, `position_y`=-80.9248, `position_z`=87.6098 WHERE `guid`=254655;
UPDATE `creature` SET `position_x`=-8950.521484, `position_y`=-79.937584, `position_z`=89.051521 WHERE `guid`=252455;
UPDATE `creature` SET `position_x`=-8867.74, `position_y`=-115.946, `position_z`=80.7052 WHERE `guid`=252413;
UPDATE `creature` SET `position_x`=-8819.93, `position_y`=-139.003, `position_z`=81.0422 WHERE `guid`=252534;
UPDATE `creature` SET `position_x`=-8792.67, `position_y`=-137.877, `position_z`=82.6484 WHERE `guid`=254738;
UPDATE `creature` SET `position_x`=-8780.77, `position_y`=-168.533, `position_z`=81.8364 WHERE `guid`=252583;
UPDATE `creature` SET `position_x`=-8908.14, `position_y`=-80.2426, `position_z`=87.1642 WHERE `guid`=252441;
UPDATE `creature` SET `position_x`=-8922.44, `position_y`=-73.9883, `position_z`=88.8196 WHERE `guid`=252614;
UPDATE `creature` SET `position_x`=-8959.98, `position_y`=-63.4328, `position_z`=92.2544 WHERE `guid`=252321;
UPDATE `creature` SET `position_x`=-8868.88, `position_y`=-99.1016, `position_z`=82.0550 WHERE `guid`=252378;
UPDATE `creature` SET `position_x`=-8801.731445, `position_y`=-159.409439, `position_z`=82.0550 WHERE `guid`=252620;
UPDATE `creature` SET `position_x`=-9000.887695, `position_y`=-135.385300, `position_z`=83.800583 WHERE `guid`=252482;
UPDATE `creature` SET `position_x`=-8854.218750, `position_y`=-129.872513, `position_z`=81.273811 WHERE `guid`=252584;
UPDATE `creature` SET `position_x`=-9021.198242, `position_y`=-120.441910, `position_z`=86.677055 WHERE `guid`=252364;
UPDATE `creature` SET `position_x`=-8951.299805, `position_y`=-79.435631, `position_z`=89.226784 WHERE `guid`=252455;
UPDATE `creature` SET `MovementType`=1, `spawndist`=10 WHERE `id`=49871;
REPLACE INTO `creature_ai_scripts` VALUES (8,49874,11,0,100,0,0,0,0,0,11,80676,0,0,0,0,0,0,0,0,0,0,'Blackrock Spy - Spyglass Emote');
REPLACE INTO `creature` VALUES (252356,49874,0,1,1,0,49874,-8838.67,-119.558,80.4687,3.19537,300,0,0,42,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (254144,49874,0,1,1,0,49874,-8983.12,-202.827,74.5903,.437072,300,0,0,55,0,0,0,0,0,0);
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(254144, 0, 0, 0, 1, 0, ''),
(252356, 0, 0, 0, 1, 0, '');
UPDATE `creature_addon` SET `path_id`=254510 WHERE `guid`=254510;
UPDATE `creature_addon` SET `path_id`=254802 WHERE `guid`=254802;
UPDATE `creature_addon` SET `path_id`=254319 WHERE `guid`=254319;
UPDATE `creature_addon` SET `path_id`=252614 WHERE `guid`=252614;
UPDATE `creature_addon` SET `path_id`=252378 WHERE `guid`=252378;
UPDATE `creature_addon` SET `path_id`=252321 WHERE `guid`=252321;
UPDATE `creature_addon` SET `path_id`=254909 WHERE `guid`=254909;
UPDATE `creature_addon` SET `path_id`=252386 WHERE `guid`=252386;
DELETE FROM `creature_addon` WHERE `guid`=252557;
REPLACE INTO `creature_addon` VALUES (252557, 252557, 0, 0, 1, 0, '');
REPLACE INTO `creature_addon` VALUES (253398, 253398, 0, 0, 1, 0, '');
REPLACE INTO `creature` VALUES (253398,49874,0,1,1,36652,49874,-8983.12,-202.827,74.5903,1.437072,5000,0,0,55,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (252557,49874,0,1,1,36652,49874,-8960.08,-63.7670,92.2314,1.437072,5000,0,0,55,0,0,0,0,0,0);
REPLACE INTO `creature` VALUES (252900,49874,0,1,1,36654,49874,-8838.67,-119.558,80.4687,3.19537,5000,0,0,55,0,0,0,0,0,0);
UPDATE `creature` SET `MovementType`=2 WHERE `guid` in (254510, 254802, 254319, 252614, 252378, 252321, 254909, 252386, 252557, 253398);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`) VALUES
(254909, 1, -8776.549805, -79.157997, 89.244675, 0),
(254909, 2, -8773.385742, -81.287643, 88.736755, 0),
(254909, 3, -8771.829102, -86.030197, 88.447823, 0),
(254909, 4, -8773.385742, -81.287643, 88.736755, 0),
(254802, 1, -9022.080078, -163.964996, 79.617142, 0),
(254802, 2, -9023.010742, -170.013672, 78.029991, 0),
(254802, 3, -9021.515625, -175.506821, 77.091354, 0),
(254802, 4, -9018.903320, -180.885941, 77.126961, 0),
(254802, 5, -9011.931641, -185.738800, 77.140663, 0),
(254802, 6, -9018.903320, -180.885941, 77.126961, 0),
(254802, 7, -9021.515625, -175.506821, 77.091354, 0),
(254802, 8, -9023.010742, -170.013672, 78.029991, 0),
(254510, 1, -8834.849609, -119.700996, 80.556549, 0),
(254510, 2, -8832.659180, -122.350616, 80.663483, 0),
(254510, 3, -8832.477539, -125.841782, 80.819069, 0),
(254510, 4, -8832.659180, -122.350616, 80.663483, 0),
(254319, 1, -8909.679688, -40.024700, 89.370453, 0),
(254319, 2, -8906.560547, -41.003555, 88.461220, 0),
(254319, 3, -8900.656250, -44.462246, 86.953003, 0),
(254319, 4, -8906.560547, -41.003555, 88.461220, 0),
(252614, 1, -8922.440430, -73.988297, 88.819603, 0),
(252614, 2, -8925.285156, -69.595291, 89.552521, 0),
(252614, 3, -8930.860352, -69.694862, 89.892075, 0),
(252614, 4, -8925.285156, -69.595291, 89.552521, 0),
(252386, 1, -8936.500000, -246.742996, 78.959717, 0),
(252386, 2, -8940.758789, -247.087845, 78.918701, 0),
(252386, 3, -8945.662109, -243.966019, 78.503807, 0),
(252386, 4, -8940.758789, -247.087845, 78.918701, 0),
(252378, 1, -8868.879883, -99.101601, 82.055000, 0),
(252378, 2, -8871.898438, -94.866287, 82.738777, 0),
(252378, 3, -8876.878906, -93.351204, 83.557465, 0),
(252378, 4, -8871.898438, -94.866287, 82.738777, 0),
(252557, 1, -8960.083008, -63.767036, 92.231422, 0),
(252557, 2, -8962.370117, -60.936699, 92.266602, 0),
(252557, 3, -8966.929688, -60.640701, 91.859497, 0),
(252557, 4, -8962.370117, -60.936699, 92.266602, 0),
(253398, 1, -8983.120117, -202.826996, 74.590302, 0),
(253398, 2, -8983.431641, -206.920502, 74.260719, 0),
(253398, 3, -8977.766602, -210.526764, 74.138229, 0),
(253398, 4, -8983.431641, -206.920502, 74.260719, 0);
UPDATE `creature_template` SET `ScriptName`='npc_blackrock_spy', `mindmg`=2, `maxdmg`=4 WHERE `entry`=49874;
REPLACE INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `type`, `comment`) VALUES
(49874, -1000015, "Orc KILL human!", 0, "Blackrock Spy - Say1"),
(49874, -1000016, "Eat you!", 0, "Blackrock Spy - Say2"),
(49874, -1000017, "Blackrock take forest!", 0, "Blackrock Spy - Say3"),
(49874, -1000018, "The grapes were VERY TASTY!", 0, "Blackrock Spy - Say4"),
(49874, -1000019, "Beg for life!", 0, "Blackrock Spy - Say5"),
(50039, -1000020, "Time to join your friends, kissin' the dirt!", 0, "Goblin Asssassin - Say1"),
(50039, -1000021, "We're gonna burn this place to the ground!", 0, "Goblin Asssassin - Say2");
UPDATE `creature` SET `MovementType`=1, `spawndist`=10 WHERE `id`=50039;
UPDATE `creature_template` SET `ScriptName`='npc_goblin_assassin', `mindmg`=3, `maxdmg`=8 WHERE `entry`=50039;
UPDATE `creature` SET `MovementType`=1, `spawndist`=5 WHERE `id` in (721, 42937);
UPDATE `creature_template` SET `mindmg`=6, `maxdmg`=8, `ScriptName`='npc_blackrock_invader' WHERE `entry`=42937;
UPDATE `creature_template` SET `mindmg`=9, `maxdmg`=12 WHERE `entry`=42938;
--

-- Dane Winslow's Minion
REPLACE INTO `creature_template` VALUES (2,0,0,0,0,0,4449,0,0,0,"Imp Minion","Dane Winslow's Minion","",0,8,8,0,12,12,0,1,1.14286,1,0,5,6,0,28,1,2000,0,2,0,8,23,0,0,0,0,3,4,100,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"",0,3,0.0125,1,1,0,0,0,0,0,0,0,0,1,0,0,0,"",1);
REPLACE INTO `creature` VALUES (254998,2,0,1,1,4449,0,-8929.793945,-203.908310,80.524017,2.26893,5000,0,0,51,105,0,0,0,0,0);
--

-- Stormwind Royal Guard
UPDATE `creature_template` SET `Health_mod`=4.717334 WHERE `entry`=42218;
DELETE FROM `creature` WHERE `guid` in (252523, 252409, 252574, 252473);
REPLACE INTO `creature` VALUES (252409, 42218, 0, 1, 1, 0, 42218, -9007.29, -61.9982, 87.0045, 1.71485, 300, 0, 0, 45, 0, 0, 0, 0, 134250496, 0);
REPLACE INTO `creature` VALUES (252473, 42218, 0, 1, 1, 0, 42218, -9006.84, -66.768, 86.7372, 1.7659, 300, 0, 0, 45, 0, 0, 0, 0, 134250496, 0);
REPLACE INTO `creature` VALUES (252523, 42218, 0, 1, 1, 0, 42218, -9011.44, -62.7255, 87.1745, 1.71485, 300, 0, 0, 45, 0, 0, 0, 0, 134250496, 0);
REPLACE INTO `creature` VALUES (252574, 42218, 0, 1, 1, 0, 42218, -9010.89, -67.1851, 87.0343, 1.71485, 300, 0, 0, 45, 0, 0, 0, 0, 134250496, 0);
UPDATE `creature` SET `MovementType`=2 WHERE `guid` in (252523, 252409);
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(252523, 252523, 28912, 0, 256, 0, ''),
(252473, 252409, 28912, 0, 256, 0, ''),
(252409, 252409, 28912, 0, 256, 0, ''),
(252574, 252523, 28912, 0, 256, 0, '');
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`) VALUES
(252523, 1, -9014.500000, -25.473600, 88.208603, 700),
(252523, 2, -9017.719727, -7.758590, 88.460701, 1000),
(252523, 3, -9020.792969, 0.370390, 88.513641, 1000),
(252523, 4, -9026.098633, 1.420386, 88.373566, 1000),
(252523, 5, -9032.915039, -3.480094, 88.492653, 1000),
(252523, 6, -9036.106445, -10.867732, 88.414291, 1000),
(252523, 7, -9038.322266, -23.608477, 88.242638, 0),
(252523, 8, -9039.700195, -31.946781, 88.207008, 300),
(252523, 9, -9042.301758, -41.510708, 88.372803, 0),
(252523, 10, -9045.107422, -45.143894, 88.353195, 0),
(252523, 11, -9045.475586, -46.971195, 88.314056, 0),
(252523, 12, -9042.814453, -53.392357, 88.180016, 0),
(252523, 13, -9043.314453, -59.570770, 88.238335, 1000),
(252523, 14, -9045.360352, -80.535896, 88.353477, 1000),
(252523, 15, -9047.062500, -84.696434, 88.244019, 1000),
(252523, 16, -9046.468750, -88.136200, 88.147537, 1000),
(252523, 17, -9041.250977, -94.675354, 87.970627, 1000),
(252523, 18, -9035.473633, -97.686974, 87.711548, 0),
(252523, 19, -9028.842773, -96.209038, 87.249969, 0),
(252523, 20, -9007.821289, -80.445496, 86.576378, 0),
(252523, 21, -9003.063477, -79.910027, 86.254654, 100),
(252523, 22, -8995.715820, -83.638664, 85.693527, 0),
(252523, 23, -8973.464844, -105.294624, 84.833618, 1000),
(252523, 24, -8965.876953, -106.989594, 84.625931, 1000),
(252523, 25, -8944.698242, -108.325172, 83.105667, 1000),
(252523, 26, -8937.461914, -109.096558, 82.973381, 0),
(252523, 27, -8931.479492, -110.764488, 82.976883, 500),
(252523, 28, -8928.108398, -112.141525, 82.983421, 0),
(252523, 29, -8930.266602, -115.472122, 82.433434, 0),
(252523, 30, -8946.287109, -116.227570, 82.969643, 0),
(252523, 31, -8958.169922, -116.851303, 83.481949, 0),
(252523, 32, -8969.877930, -115.416298, 83.839149, 0),
(252523, 33, -8975.406250, -112.808922, 84.384888, 0),
(252523, 34, -8983.249023, -106.625008, 85.090202, 0),
(252523, 35, -9005.249023, -85.751083, 86.179535, 0),
(252523, 36, -9007.441406, -81.270081, 86.517616, 0),
(252523, 37, -9011.44, -62.7255, 87.1745, 0),
(252409, 1, -9009.429688, -25.123899, 88.345299, 0),
(252409, 2, -9013.846680, -6.479075, 88.601776, 0),
(252409, 3, -9018.704102, 4.529739, 88.425087, 0),
(252409, 4, -9028.753906, 4.828815, 88.202141, 0),
(252409, 5, -9036.213867, -0.888057, 88.334579, 0),
(252409, 6, -9040.030273, -10.229570, 88.242424, 0),
(252409, 7, -9042.149414, -23.257296, 88.246544, 0),
(252409, 8, -9043.383789, -31.350163, 88.254478, 0),
(252409, 9, -9046.765625, -40.668201, 88.288696, 0),
(252409, 10, -9047.437500, -52.932175, 88.153618, 0),
(252409, 11, -9047.976563, -59.428749, 88.243843, 0),
(252409, 12, -9048.969727, -82.736984, 88.185249, 0),
(252409, 13, -9049.818359, -90.019936, 87.985367, 0),
(252409, 14, -9044.139648, -98.027115, 87.992058, 0),
(252409, 15, -9035.555664, -102.177330, 87.698357, 0),
(252409, 16, -9027.319336, -100.479027, 87.503181, 0),
(252409, 17, -9006.020508, -82.883202, 86.397270, 1000),
(252409, 18, -9003.856445, -83.470100, 86.286484, 1000),
(252409, 19, -8998.515625, -87.515114, 85.789482, 500),
(252409, 20, -8974.950195, -110.325714, 84.535500, 0),
(252409, 21, -8966.744141, -112.762878, 83.997993, 0),
(252409, 22, -8945.051758, -112.615601, 82.928139, 0),
(252409, 23, -8938.166016, -113.336426, 85.614059, 0),
(252409, 24, -8932.642578, -114.807526, 82.428619, 0),
(252409, 25, -8930.266602, -115.472122, 82.433434, 0),
(252409, 26, -8928.108398, -112.141525, 82.983421, 0),
(252409, 27, -8946.586914, -112.157593, 83.016708, 0),
(252409, 28, -8958.385742, -111.731842, 83.765884, 0),
(252409, 29, -8969.064453, -110.818062, 84.332253, 0),
(252409, 30, -8972.860352, -108.475586, 84.642532, 500),
(252409, 31, -8980.470703, -103.327263, 85.089203, 1000),
(252409, 32, -9001.523438, -82.387398, 86.124825, 1000),
(252409, 33, -9002.657227, -79.163162, 86.212006, 1000),
(252409, 34, -9007.29, -61.9982, 87.0045, 500);
--

-- Brother Paxton
DELETE FROM `creature` WHERE `id`=951;
REPLACE INTO `creature` VALUES (254741,951,0,1,1,3253,0,-8825.799,-147.052,80.5643,6.02651,5000,0,0,140,2080,0,0,0,0,0);
REPLACE INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `type`, `comment`) VALUES
(951, -1000010, "Be healed, brother!", 0, "Brother Paxton - Say1"),
(951, -1000011, "AND I LAY MY HANDS UPON YOU!", 0, "Brother Paxton - Say2"),
(951, -1000012, "Let the Holy Light embrace you!", 0, "Brother Paxton - Say3"),
(951, -1000013, "FIGHT ON, BROTHER!", 0, "Brother Paxton - Say4"),
(951, -1000014, "BY THE LIGHT BE RENEWED!", 0, "Brother Paxton - Say5");
UPDATE `creature_template` SET `mindmg`=6, `maxdmg`=8, `ScriptName`='npc_brother_paxton' WHERE `entry`=951;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`) VALUES
(951, 1, -8820.216797, -149.962021, 81.05003, 0),
(951, 2, -8816.782227, -152.909119, 81.536835, 0),
(951, 3, -8813.891602, -157.684784, 81.634727, 1000),
(951, 4, -8816.782227, -152.909119, 81.536835, 0),
(951, 5, -8820.216797, -149.962021, 81.05003, 0),
(951, 6, -8825.799, -147.052, 80.5643, 1000);
--

-- Sergeant Willem Emote
REPLACE INTO `creature_ai_scripts` VALUES (7,823,11,0,100,0,0,0,0,0,11,80681,0,0,0,0,0,0,0,0,0,0,'Sergeant Willem - Spyglass Emote');
--

-- All NPCs Spawn Times(Northshire)
UPDATE `creature` SET `spawntimesecs`=60 WHERE `id`=42938;
UPDATE `creature` SET `spawntimesecs`=360 WHERE `id`=42937;
UPDATE `creature` SET `spawntimesecs`=180 WHERE `id` IN (49871, 49874, 50039, 49869);
--

-- All Loot Tables FROM WOWHEAD(Northshire)
UPDATE `creature_template` SET `lootid`=42938, `mingold`=3, `maxgold`=6 WHERE `entry`=42938;
UPDATE `creature_template` SET `lootid`=42937, `mingold`=1, `maxgold`=5 WHERE `entry`=42937;
UPDATE `creature_template` SET `lootid`=49874, `mingold`=1, `maxgold`=5 WHERE `entry`=49874;
UPDATE `creature_template` SET `lootid`=50039, `mingold`=1, `maxgold`=5 WHERE `entry`=50039;
DELETE FROM `creature_loot_template` WHERE `entry` IN (42938, 50039, 49874, 49871, 42937);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(42938, 117, 54, 1, 1, 1, 1),
(42938, 159, 21, 1, 1, 1, 1),
(42938, 5571, 12, 1, 1, 1, 1),
(42938, 828, 7, 1, 1, 1, 1),
(42938, 4496, 4, 1, 1, 1, 1),
(42938, 5572, 3, 1, 1, 1, 1),
(50039, 117, 54, 1, 1, 1, 1),
(50039, 159, 23, 1, 1, 1, 1),
(50039, 5571, 5, 1, 1, 1, 1),
(50039, 828, 5, 1, 1, 1, 1),
(50039, 4496, 5, 1, 1, 1, 1),
(50039, 5572, 4, 1, 1, 1, 1),
(50039, 805, 4, 1, 1, 1, 1),
(49874, 117, 47, 1, 1, 1, 1),
(49874, 159, 22, 1, 1, 1, 1),
(49874, 5571, 8, 1, 1, 1, 1),
(49874, 828, 6, 1, 1, 1, 1),
(49874, 4496, 6, 1, 1, 1, 1),
(49874, 5572, 6, 1, 1, 1, 1),
(49874, 805, 4, 1, 1, 1, 1),
(49871, 62328, 76, 1, 1, 1, 1),
(49871, 3300, 24, 1, 1, 1, 1),
(42937, 58361, -100, 1, 1, 1, 1),
(42937, 117, 1.5, 1, 1, 1, 1);
--