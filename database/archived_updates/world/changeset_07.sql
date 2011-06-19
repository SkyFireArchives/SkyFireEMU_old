--    //      ChangeSET_07       //
--   //       08.02.2011        //

-- Stable Master
UPDATE creature_template SET npcflag = '4194305' WHERE subname = 'Stable Master';

-- Missing relation for quest You've Been Served
DELETE FROM creature_questrelation WHERE quest=14488;
INSERT INTO creature_questrelation(id,quest) VALUES
(38208,14488);
DELETE FROM creature_involvedrelation WHERE quest=14488;
INSERT INTO creature_involvedrelation(id,quest) VALUES
(36296,14488);

-- Missing loot form Standard Apothecary Serving Kit request for quest You've Been Served
DELETE FROM item_loot_template WHERE entry=49631;
INSERT INTO item_loot_template(entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount) VALUES 
(49631,49352,100,1,0,1,1),
(49631,49351,100,1,0,1,1),
(49631,49635,100,1,0,1,1);

-- Transport Objects 
DELETE FROM gameobject WHERE id =181689;
DELETE FROM gameobject WHERE id =175080;
DELETE FROM gameobject WHERE id =186238;
DELETE FROM gameobject WHERE id =20808;
DELETE FROM gameobject WHERE id =190549;
DELETE FROM gameobject WHERE id =176495;
DELETE FROM gameobject WHERE id =176231;
DELETE FROM gameobject WHERE id =190536;
DELETE FROM gameobject WHERE id =164871;
DELETE FROM gameobject WHERE id =176310;
-- Fix by AlterEgo

-- Fixed Mutated Abomination stats and difficulty linking
UPDATE creature_template SET minlevel=80,maxlevel=80,dynamicflags=0,VehicleId=591,minrangedmg=345,maxrangedmg=509,rangedattackpower=103,mindmg=422,maxdmg=586,attackpower=642,dmg_multiplier=7.5,spell3=70542,spell6=71516 WHERE entry IN (37672,38285,38605,38786,38787,38788,38789,38790);
UPDATE creature_template SET spell1=70360,spell2=70539 WHERE entry IN (38605,38786,38787);
UPDATE creature_template SET spell1=72527,spell2=72457 WHERE entry IN (38788,38789,38790);
UPDATE creature_template SET difficulty_entry_1=38605,difficulty_entry_2=38786,difficulty_entry_3=38787 WHERE entry=37672;
UPDATE creature_template SET difficulty_entry_1=38788,difficulty_entry_2=38789,difficulty_entry_3=38790 WHERE entry=38285;

-- Fragment of the Nightmare's Corruption drops 100% as of patch 3.0.2
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item IN (21146,21147,21148,21149);

-- Insert loot for Gently Shaken Gift
DELETE FROM item_loot_template WHERE entry=21271;
INSERT INTO item_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount) VALUES
(21271,21241,100,1,0,5,5);

-- Elune's Blessing
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=26393; 
INSERT INTO conditions (SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,ErrorTextId,ScriptName,Comment) VALUES 
(13,0,26393,0,18,1,0,0,0, '', 'Elune''s Blessing');

-- Kill a unrelated console DB error
DELETE FROM creature_addon WHERE guid=88103;

-- remove waypoint script spamming from 2 Dawnblade Blood Knight's
UPDATE waypoint_data SET action=0 WHERE id IN (943090,943250) AND point=2;

-- Update Trainertype where unit is NOT a trainer:
UPDATE creature_template SET trainer_type=0 WHERE entry IN (1300,1703,2855,2870,5749,5750,5753,5815,6027,6328,6373,6374,6376,6382,11048,11050,11051,15494,12776,16639,16649,16703,16727,16746,23535);

-- Winter Veil: Gifts (25 Dec -> 2 Jan)
DELETE FROM game_event WHERE entry=54;
INSERT INTO game_event (entry, start_time, end_time, occurence, length, holiday, description, world_event) VALUES 
(54, '2010-12-25 06:00:00', '2020-12-31 06:00:00', 525600, 11700, 0, 'Winter Veil: Gifts', 0);

-- Fix missing Previous Quest Requirement for They Grow Up So Fast
UPDATE quest_template SET prevquestid=13887 WHERE entry=13906;

-- Jenn Langston
DELETE FROM creature WHERE id=3626;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (253049, 3626, 0, 1, 1, 0, 0, -8692.72, 397.438, 101.37, 5.51888, 370, 0, 0, 102, 0, 0, 2, 0, 0, 0);
DELETE FROM creature_addon WHERE guid=253049;
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote, auras) VALUES (253049, 2530490, 0, 0, 257, 0, NULL);
DELETE FROM waypoint_data WHERE id=2530490;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 1, -8703.23, 406.059, 99.8461, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 2, -8712.55, 405.839, 98.2215, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 3, -8724.25, 407.106, 97.652, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 4, -8726.03, 415.403, 97.527, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 5, -8723.28, 424.437, 97.8376, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 6, -8721.03, 435.953, 97.4688, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 7, -8716.93, 446.793, 97.0539, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 8, -8713.91, 455.698, 97.0791, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 9, -8705.39, 463.781, 96.0151, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 10, -8682.33, 483.703, 96.2082, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 11, -8678.09, 490.699, 97.9041, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 12, -8666.33, 496.996, 100.347, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 13, -8659.76, 494.769, 100.87, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 14, -8652, 485.892, 102.315, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 15, -8637.63, 467.013, 102.253, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 16, -8632.63, 459.051, 102.244, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 17, -8632.17, 446.828, 102.308, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 18, -8639.18, 438.867, 101.756, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 19, -8645.07, 427.67, 101.423, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 20, -8651.61, 418.216, 101.98, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 21, -8665.2, 409.606, 102.914, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 22, -8680.51, 399.868, 102.766, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2530490, 23, -8692.72, 397.438, 101.37, 0, 0, 0, 100, 0);

-- Anastasia
DELETE FROM creature WHERE id=44773;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (254084, 44773, 0, 1, 1, 11873, 44773, -8764.43, 656.486, 104.001, 5.27512, 5000, 0, 0, 71, 0, 0, 2, 0, 0, 0);
DELETE FROM creature_addon WHERE guid=254084;
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote, auras) VALUES (254084, 2540840, 0, 0, 0, 0, NULL);
DELETE FROM waypoint_data WHERE id=2540840;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2540840, 1, -8764.43, 656.486, 104.001, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2540840, 2, -8769.42, 659.725, 104.000, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2540840, 3, -8769.42, 663.914, 103.560, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2540840, 3, -8764.43, 656.486, 104.001, 0, 0, 0, 100, 0);


-- Crier Goodman
DELETE FROM creature WHERE id=2198;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (253588, 2198, 0, 1, 1, 0, 0, -8854, 743.15, 100.751, 0.607, 180, 0, 1, 71, 0, 0, 2, 0, 0, 0);
DELETE FROM creature_addon WHERE guid=253588;
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote, auras) VALUES (253588, 2535880, 0, 0, 0, 0, NULL);
DELETE FROM waypoint_data WHERE id=2535880;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 1, -8854.79, 744.984, 100.628, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 2, -8870.88, 761.122, 96.7068, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 3, -8879.96, 754.084, 96.2547, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 4, -8908.95, 790.699, 87.4927, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 5, -8934.53, 772.756, 88.621, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 6, -8944.13, 771.285, 90.3201, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 7, -8965.54, 773.706, 94.9534, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 8, -8977.95, 784.046, 97.6617, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 9, -8985.43, 791.302, 100.014, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 10, -8991.56, 809.182, 103.724, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 11, -8998.81, 833.932, 105.803, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 12, -8981.53, 845.267, 105.655, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 13, -8976.52, 858.696, 106.117, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 14, -8975.81, 876.301, 106.55, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 15, -9004.13, 900.85, 105.687, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 16, -9014.88, 924.122, 107.701, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 17, -9011.43, 940.299, 108.645, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 18, -9004.49, 954.96, 110.604, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 19, -8988.71, 960.284, 114.998, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 20, -8976.37, 959.781, 116.663, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 21, -8946.18, 956.524, 117.029, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 22, -8934.85, 956.044, 117.296, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 23, -8926.41, 955.113, 117.175, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 24, -8909.92, 934.34, 116.499, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 25, -8898.14, 915.28, 111.7, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 26, -8884.76, 916.891, 109.257, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 27, -8857.13, 931.769, 101.918, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 28, -8839.43, 937.251, 105.28, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 29, -8816.68, 954.823, 100.649, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 30, -8798.73, 932.607, 101.242, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 31, -8778.61, 908.587, 100.249, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 32, -8762.97, 891.598, 101.548, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 33, -8739.42, 892.225, 101.356, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 34, -8724.76, 877.719, 102.684, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 35, -8709.93, 859.664, 96.9997, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 36, -8683.41, 877.495, 97.0168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 37, -8652.23, 838.952, 96.8055, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 38, -8647.26, 832.146, 96.637, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 39, -8633.82, 789.02, 96.6508, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 40, -8664.12, 763.958, 96.6881, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 41, -8641.63, 734.248, 96.7288, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 42, -8609.99, 760.444, 96.7316, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 43, -8590.54, 758.209, 96.6511, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 44, -8579.3, 737.888, 96.6895, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 45, -8596.15, 717.032, 96.6506, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 46, -8561.63, 673.583, 97.0163, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 47, -8538.3, 689.024, 97.6667, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 48, -8524.54, 671.678, 102.609, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 49, -8509.97, 650.125, 100.291, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 50, -8536.25, 631.854, 100.345, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 51, -8559.01, 615.606, 102.287, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 52, -8580.68, 598.013, 103.277, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 53, -8588.05, 568.778, 102.425, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 54, -8576.18, 545.805, 101.774, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 55, -8576.18, 545.805, 101.774, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 56, -8564.37, 528.907, 101.058, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 57, -8553, 511.913, 98.7322, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 58, -8534.44, 487.404, 101.378, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 59, -8548.02, 469.652, 104.464, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 60, -8565.32, 465.826, 104.578, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 61, -8582.43, 481.443, 104.213, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 62, -8607.06, 507.405, 103.721, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 63, -8646.9, 477.236, 102.506, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 64, -8634.11, 460.982, 102.183, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 65, -8633.35, 444.237, 102.253, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 66, -8651.65, 423.054, 101.78, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 67, -8679.64, 398.887, 102.739, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 68, -8693.42, 398.315, 101.337, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 69, -8707.17, 414.48, 98.9898, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 70, -8722.86, 432.129, 97.818, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 71, -8711.15, 457.328, 96.7168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 72, -8694.38, 474.676, 95.3215, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 73, -8722.29, 511.906, 96.5861, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 74, -8715.45, 521.893, 97.4333, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 75, -8728.21, 537.03, 100.789, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 76, -8747.91, 560.403, 97.4025, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 77, -8737.96, 575.046, 97.4322, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 78, -8771.12, 609.204, 97.2593, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 79, -8795.98, 588.691, 97.4025, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 80, -8829.12, 626.228, 93.9856, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 81, -8852.75, 658.672, 96.892, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 82, -8833.7, 672.98, 98.323, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 83, -8826.04, 678.232, 97.5224, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 84, -8834.45, 697.672, 97.5586, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2535880, 85, -8845.68, 722.982, 97.1514, 0, 0, 0, 100, 0);

-- Thomas Miller <Baker>
DELETE FROM creature WHERE id=3518;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (255070, 3518, 0, 1, 1, 0, 0, -8831.81, 543.054, 96.8538, 3.51519, 350, 0, 1, 328, 0, 0, 2, 0, 0, 0);
DELETE FROM creature_addon WHERE guid=255070;
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote, auras) VALUES (255070, 2550700, 0, 0, 0, 0, NULL);
DELETE FROM waypoint_data WHERE id=2550700;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 1, -8831.81, 543.054, 96.8538, 0, 0, 271, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 2, -8831.28, 543.109, 96.8344, 0, 0, 272, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 3, -8823.8, 554.302, 95.1343, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 4, -8816.18, 563.58, 94.1516, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 5, -8812.27, 575.284, 94.8673, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 6, -8798.45, 588.131, 97.2749, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 7, -8781.38, 601.002, 97.395, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 8, -8770.7, 609.208, 97.2416, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 9, -8761.96, 617.745, 99.1796, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 10, -8757.63, 628.577, 102.216, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 11, -8759.15, 642.457, 103.654, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 12, -8770.64, 661.869, 103.528, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 13, -8787.04, 680.217, 102.245, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 14, -8804.12, 683.305, 100.683, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 15, -8815.72, 680.448, 98.2183, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 16, -8831.55, 674.228, 98.3358, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 17, -8843.12, 667.22, 97.8051, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 18, -8852.2, 659.229, 96.9603, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 19, -8841.74, 637.862, 95.1661, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 20, -8834.06, 634.756, 94.3203, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 21, -8817.96, 641.332, 94.2293, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 22, -8811.88, 634.469, 94.2293, 0, 0, 273, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 23, -8813.45, 625.373, 94.1306, 0, 0, 274, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 24, -8827.66, 620.367, 94.2332, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 25, -8846.61, 601.6, 92.6069, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 26, -8859.18, 589.015, 92.709, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 27, -8874.99, 572.27, 93.4734, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 28, -8883.26, 572.174, 92.8046, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 29, -8886.9, 579.094, 92.9168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 30, -8889.38, 585.29, 93.3191, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 31, -8869.45, 596.649, 92.4409, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 32, -8860.44, 601.856, 92.161, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 33, -8847.27, 610.523, 92.6533, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 34, -8837.06, 617.396, 93.0252, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 35, -8834.75, 618.401, 93.3229, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 36, -8827.87, 621.207, 94.1001, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 37, -8809.26, 603.528, 96.2749, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 38, -8806.62, 593.729, 97.1852, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 39, -8820.32, 573.328, 94.1915, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 40, -8830.69, 558.865, 94.8851, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2550700, 41, -8834.06, 549.867, 96.194, 0, 0, 0, 100, 0);

-- Nikova Raskol
DELETE FROM creature WHERE id=1721;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (253443, 1721, 0, 1, 1, 0, 0, -8696.33, 391.153, 102.258, 1.64061, 180, 0, 0, 102, 0, 0, 2, 0, 0, 0);
DELETE FROM creature_addon WHERE guid=253443;
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote, auras) VALUES (253443, 2534430, 0, 0, 0, 0, NULL);
DELETE FROM waypoint_data WHERE id=2534430;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 1, -8698.37, 401.569, 101.036, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 2, -8717.3, 406.85, 97.8757, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 3, -8724.67, 406.652, 97.6569, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 4, -8733.15, 394.315, 98.2072, 6000, 0, 1182, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 5, -8732.05, 394.275, 98.2072, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 6, -8726.09, 405.419, 97.759, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 7, -8724.3, 422.966, 97.8733, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 8, -8715.03, 455.983, 97.1363, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 9, -8681.31, 485.258, 96.6978, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 10, -8666.83, 497.894, 100.43, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 11, -8652.38, 486.102, 102.261, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 12, -8636.97, 465.872, 102.235, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 13, -8632.35, 456.593, 102.26, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 14, -8638.79, 450.024, 102.389, 6000, 0, 1183, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 15, -8639.3, 451.104, 102.395, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 16, -8633.5, 442.8, 102.209, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 17, -8640.33, 437.125, 101.617, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 18, -8646.86, 427.444, 101.366, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 19, -8655.47, 420.304, 102.237, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 20, -8665.62, 411.493, 103.009, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 21, -8670.61, 403.653, 103.321, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 22, -8680.94, 400.982, 102.882, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 23, -8687.24, 395.868, 101.947, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 24, -8693.1, 396.712, 101.469, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2534430, 25, -8696.33, 391.153, 102.258, 6000, 0, 1184, 100, 0);

-- Stormwind Patroler 
DELETE FROM creature WHERE id=1976;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (322816, 1976, 0, 1, 1, 829, 1502, 1976.79, 1514.7, 86.8198, 3.25407, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);

-- Officer Jaxon
DELETE FROM creature WHERE id=14423;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (254771, 14423, 0, 1, 1, 0, 0, -8833.45, 545.681, 96.7027, 0.655296, 350, 0, 1, 50400, 0, 0, 2, 0, 0, 0);
DELETE FROM creature_addon WHERE guid=254771;
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote, auras) VALUES (254771, 2547710, 0, 0, 0, 0, NULL);
DELETE FROM waypoint_data WHERE id=2547710;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 1, -8833.45, 545.681, 96.7027, 6000, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 2, -8817.08, 561.721, 94.1515, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 3, -8813.1, 569.525, 94.1518, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 4, -8812, 571.609, 94.4612, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 5, -8808.1, 577.143, 95.3581, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 6, -8792.02, 589.799, 97.6067, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 7, -8782.32, 597.452, 97.3853, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 8, -8775.03, 603.947, 97.1696, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 9, -8772.58, 605.622, 97.1128, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 10, -8768.97, 606.279, 96.9813, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 11, -8756.13, 592.906, 97.2675, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 12, -8742.29, 579.29, 97.4817, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 13, -8736.06, 575.933, 97.4212, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 14, -8720.75, 589.938, 98.4214, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 15, -8710.44, 595.341, 98.7051, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 16, -8707.57, 600.926, 99.0356, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 17, -8706.51, 630.319, 100.532, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 18, -8706.91, 636.789, 100.271, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 19, -8714.21, 658.612, 99.1102, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 20, -8724.75, 677.194, 98.6505, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 21, -8741.35, 706.904, 98.4889, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 22, -8740.55, 713.511, 98.951, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 23, -8730.36, 721.873, 101.658, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 24, -8717.26, 731.956, 97.9911, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 25, -8716.77, 732.837, 97.772, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 26, -8713.37, 732.742, 97.8146, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 27, -8704.04, 723.672, 97.0168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 28, -8699.86, 719.506, 97.0168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 29, -8695.85, 718.255, 97.0168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 30, -8675.3, 733.878, 97.0168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 31, -8662.28, 743.944, 96.6883, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 32, -8640.69, 741.107, 96.7364, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 33, -8635.17, 741.835, 96.9411, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 34, -8614.13, 757.997, 96.7196, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 35, -8614.72, 762.503, 96.7291, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 36, -8616.31, 764.799, 96.7187, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 37, -8624.42, 774.717, 96.6518, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 38, -8631.69, 783.76, 96.6518, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 39, -8635.03, 784.432, 96.6525, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 40, -8645.79, 775.999, 96.6777, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 41, -8656.35, 767.66, 96.7104, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 42, -8662.83, 745.229, 96.658, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 43, -8664.82, 743.798, 96.8588, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 44, -8684.77, 727.93, 97.0168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 45, -8697.58, 717.363, 97.0168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 46, -8700.72, 717.639, 97.0168, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 47, -8714.6, 732.199, 97.816, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 48, -8719.64, 732.775, 98.357, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 49, -8732.21, 723.063, 101.597, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 50, -8743.2, 714.979, 98.3363, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 51, -8746.93, 715.174, 97.9227, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 52, -8756.18, 726.651, 98.1689, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 53, -8763.99, 734.341, 98.8475, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 54, -8775.27, 740.612, 99.581, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 55, -8776.9, 741.161, 99.6281, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 56, -8791.84, 745.005, 98.2925, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 57, -8801.62, 743.731, 97.648, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 58, -8824.3, 732.241, 98.2778, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 59, -8840.75, 722.989, 97.374, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 60, -8842.24, 718.581, 97.4915, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 61, -8835.14, 702.534, 97.6207, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 62, -8826.28, 683.359, 97.1511, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 63, -8826.9, 677.449, 97.5684, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 64, -8844.41, 666.475, 97.7201, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 65, -8862.81, 653.747, 96.1929, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 66, -8877.14, 644.984, 96.0478, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 67, -8885.75, 640.029, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 68, -8909.8, 628.307, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 69, -8922.61, 629.52, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 70, -8925.8, 628.812, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 71, -8929.66, 625.909, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 72, -8930.6, 623.277, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 73, -8923.92, 611.298, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 74, -8921.12, 610.442, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 75, -8915.19, 613.59, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 76, -8908.17, 626.226, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 77, -8890.44, 636.987, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 78, -8884.08, 639.915, 99.5228, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 79, -8876.09, 643.43, 96.0639, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 80, -8860.14, 642.356, 96.2195, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 81, -8852.03, 643.808, 96.4267, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 82, -8847.78, 642.58, 96.2872, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 83, -8839, 623.148, 93.417, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 84, -8841.1, 615.685, 92.8422, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 85, -8853.4, 607.339, 92.3092, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 86, -8869.47, 596.131, 92.4305, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 87, -8884.6, 584.536, 93.1116, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 88, -8887.25, 577.55, 92.8427, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 89, -8886.19, 573.957, 92.7462, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 90, -8883.22, 571.903, 92.7972, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 91, -8876.58, 573.579, 93.1698, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 92, -8864.82, 583.256, 93.1855, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 93, -8861.65, 585.743, 93.0465, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 94, -8850.63, 598.162, 92.3497, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 95, -8839.34, 610.727, 93.0189, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 96, -8830.58, 619.745, 93.9095, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 97, -8826.54, 619.128, 94.4163, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 98, -8809.7, 604.996, 96.1216, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 99, -8809.16, 602.337, 96.4127, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 100, -8808.21, 600.951, 96.5584, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 101, -8807.85, 599.387, 96.7086, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 102, -8809.8, 590.401, 96.7909, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 103, -8810.7, 586.735, 96.5865, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 104, -8820.5, 572.227, 94.212, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 105, -8831.25, 555.086, 95.3136, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 106, -8837.71, 542.842, 97.0109, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 107, -8844.47, 532.401, 102.948, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 108, -8847.85, 526.924, 106.017, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 109, -8852.03, 527.667, 106.035, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 110, -8852.95, 534.645, 105.922, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 111, -8855.6, 538.249, 105.906, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 112, -8864.67, 534.31, 106.607, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 113, -8866.02, 529.774, 106.899, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 114, -8857.08, 515.718, 109.039, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 115, -8847.14, 500.948, 109.612, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 116, -8837.96, 489.135, 109.612, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 117, -8835.45, 485.64, 109.612, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 118, -8834.71, 484.189, 109.61, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 119, -8833.29, 480.591, 109.609, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 120, -8835.7, 478.756, 109.613, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 121, -8838.47, 481.526, 109.602, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 122, -8844.75, 493.567, 109.607, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 123, -8854.63, 508.405, 109.607, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 124, -8864.5, 524.973, 107.486, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 125, -8868.22, 530.915, 106.829, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 126, -8866.27, 534.991, 106.566, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 127, -8856.56, 538.682, 106.286, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 128, -8853.1, 537.689, 105.91, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 129, -8852.83, 527.731, 106.014, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 130, -8851.74, 525.815, 106.03, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 131, -8848.78, 525.143, 105.993, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 132, -8843.86, 532.134, 102.869, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2547710, 133, -8835.46, 543.499, 96.9199, 0, 0, 0, 100, 0);

-- Erich Lohan
DELETE FROM creature WHERE id=3627;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (252719, 3627, 0, 1, 1, 0, 0, -9028.74, 889.187, 110.196, 4.19386, 180, 0, 0, 102, 0, 0, 2, 0, 0, 0);
DELETE FROM creature_addon WHERE guid=252719;
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote, auras) VALUES (252719, 2527190, 0, 0, 0, 0, NULL);
DELETE FROM waypoint_data WHERE id=2527190;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 1, -9034.2, 877.191, 110.196, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 2, -9035.91, 860.754, 107.111, 0, 0, 432, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 3, -9033.92, 848.171, 107.11, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 4, -9023.53, 832.354, 105.627, 0, 0, 433, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 5, -9016.38, 825.968, 105.505, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 6, -9012.89, 823.956, 105.391, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 7, -9005.3, 830.229, 105.844, 0, 0, 434, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 8, -8994.8, 835.745, 105.735, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 9, -8989.94, 837.108, 105.735, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 10, -8982.81, 843.712, 105.693, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 11, -8978.75, 849.494, 105.573, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 12, -8976.2, 854.701, 105.781, 0, 0, 435, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 13, -8954.92, 861.906, 105.05, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 14, -8943.87, 861.831, 103.905, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 15, -8922.47, 856.404, 98.249, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 16, -8912.75, 848.766, 96.4024, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 17, -8901.89, 834.202, 94.0667, 0, 0, 436, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 18, -8899.06, 827.046, 92.6505, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 19, -8898.81, 807.248, 88.1918, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 20, -8902.02, 799.839, 87.4874, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 21, -8922.09, 779.398, 87.1289, 0, 0, 437, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 22, -8928.82, 775.42, 87.6545, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 23, -8941.95, 771.786, 89.9387, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 24, -8957.81, 770.791, 93.1487, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 25, -8968.67, 774.861, 95.4338, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 26, -8982.65, 786.061, 98.6597, 0, 0, 438, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 27, -8988.77, 796.649, 101.436, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 28, -8991.35, 804.573, 103.096, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 29, -8994.84, 826.638, 105.086, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 30, -8990.29, 835.501, 105.736, 0, 0, 439, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 31, -8981.03, 845.671, 105.648, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 32, -8976.62, 855.44, 105.797, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 33, -8975.41, 866.343, 106.754, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 34, -8977.36, 879.192, 106.493, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 35, -8988.19, 891.329, 105.629, 0, 0, 440, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 36, -9002.42, 900.679, 105.676, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 37, -9015.42, 923.475, 107.621, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 38, -9011.81, 940.12, 108.632, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 39, -9005.63, 953.796, 110.287, 0, 0, 441, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 40, -8989.52, 959.707, 114.775, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 41, -8975.89, 959.491, 116.712, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 42, -8952.37, 951.436, 117.02, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 43, -8939.33, 949.156, 117.145, 0, 0, 442, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 44, -8925.34, 949.682, 117.305, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 45, -8916.03, 941.926, 117.103, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 46, -8901.01, 920.7, 113.482, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 47, -8888.86, 895.884, 105.43, 0, 0, 443, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 48, -8889.01, 887.939, 102.653, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 49, -8900, 860.946, 96.2711, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 50, -8906.67, 851.144, 96.2159, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 51, -8910.29, 850.054, 96.3303, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 52, -8932.71, 859.26, 101.04, 0, 0, 444, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 53, -8950.33, 862.454, 104.588, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 54, -8974.64, 855.231, 105.853, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 55, -8980.84, 845.118, 105.658, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 56, -8989.95, 837.338, 105.738, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 57, -8996.83, 835.71, 105.734, 0, 0, 445, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 58, -9004.16, 831.251, 105.932, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 59, -9012.72, 824.789, 105.42, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 60, -9019.22, 827.557, 105.572, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 61, -9029.09, 837.128, 107.032, 0, 0, 446, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 62, -9034.74, 857.293, 107.109, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 63, -9035.49, 869.124, 110.147, 0, 0, 0, 100, 0);
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay, move_flag, action, action_chance, wpguid) VALUES (2527190, 64, -9029.88, 884.097, 110.197, 0, 0, 0, 100, 0);

-- StormWind Gobject Names
-- Trias' Cheese
UPDATE gameobject_template SET name='Trias\' Cheese' WHERE entry=197118;
-- Stormwind Visitor's Center
UPDATE gameobject_template SET name='Stormwind Visitor\'s Center' WHERE entry=197120;
-- Pestle's Apothecary
UPDATE gameobject_template SET name='Pestle\'s Apothecary' WHERE entry=197117;
-- Weller's Arsenal
UPDATE gameobject_template SET name='Weller\'s Arsenal' WHERE entry=197121;
-- Lionheart Armory
UPDATE gameobject_template SET name='Lionheart Armory' WHERE entry=197122;
-- Stormwind Counting House
UPDATE gameobject_template SET name='Stormwind Counting House' WHERE entry=197119;
-- The Gilden Rose
UPDATE gameobject_template SET name='The Gilden Rose' WHERE entry=197185;
-- Mailbox
UPDATE gameobject_template SET name='Mailbox' WHERE entry=197018;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=197085;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=197134;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=197135;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=197136;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=197137;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=201515;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=201619;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=201987;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=201989;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=201990;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=197017;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=201521;
UPDATE gameobject_template SET name='Mailbox' WHERE entry=197186;
-- Mage Quarter
UPDATE gameobject_template SET name='Mage Quarter' WHERE entry=197140;
-- The Empty Quiver
UPDATE gameobject_template SET name='The Empty Quiver' WHERE entry=197123;
-- Cathedral Square
UPDATE gameobject_template SET name='Cathedral Square' WHERE entry=197131;
UPDATE gameobject_template SET name='Cathedral Square' WHERE entry=197138;
-- Old Town
UPDATE gameobject_template SET name='Old Town' WHERE entry=197133;
UPDATE gameobject_template SET name='Old Town' WHERE entry=197139;
-- Gryphon Roost
UPDATE gameobject_template SET name='Gryphon Roost' WHERE entry=197132;
-- Fragrant Flowers
UPDATE gameobject_template SET name='Fragrant Flowers' WHERE entry=197124;
-- Trade District
UPDATE gameobject_template SET name='Trade District' WHERE entry=201522;
-- Thane's Boots
UPDATE gameobject_template SET name='Thane\'s Boots' WHERE entry=201503;
-- The Silver Shield
UPDATE gameobject_template SET name='The Silver Shield' WHERE entry=201500;
-- Stormwind Keep
UPDATE gameobject_template SET name='Stormwind Keep' WHERE entry=201523;
-- Heavy Handed Weapons
UPDATE gameobject_template SET name='Heavy Handed Weapons' WHERE entry=201498;
-- Champions' Hall
UPDATE gameobject_template SET name='Champions\' Hall' WHERE entry=201505;
-- SI:7
UPDATE gameobject_template SET name='SI:7' WHERE entry=201520;
UPDATE gameobject_template SET name='SI:7' WHERE entry=201510;
-- Command Center
UPDATE gameobject_template SET name='Command Center' WHERE entry=201516;
UPDATE gameobject_template SET name='Command Center' WHERE entry=201507;
-- Wooden Chair
UPDATE gameobject_template SET name='Wooden Chair' WHERE entry=201538;
UPDATE gameobject_template SET name='Wooden Chair' WHERE entry=201537;
UPDATE gameobject_template SET name='Wooden Chair' WHERE entry=201539;
UPDATE gameobject_template SET name='Wooden Chair' WHERE entry=201540;
UPDATE gameobject_template SET name='Wooden Chair' WHERE entry=201541;
UPDATE gameobject_template SET name='Wooden Chair' WHERE entry=201542;
-- Honest Blades
UPDATE gameobject_template SET name='Honest Blades' WHERE entry=201499;
-- Limited Immunity
UPDATE gameobject_template SET name='Limited Immunity' WHERE entry=201502;
-- Champions Hall
UPDATE gameobject_template SET name='Champions\' Hall' WHERE entry=201519;
-- The Protective Hide
UPDATE gameobject_template SET name='The Protective Hide' WHERE entry=201501;
-- Highback Chair
UPDATE gameobject_template SET name='Highback Chair' WHERE displayID=91;
-- Brazier
UPDATE gameobject_template SET name='Brazier' WHERE entry=201822;

