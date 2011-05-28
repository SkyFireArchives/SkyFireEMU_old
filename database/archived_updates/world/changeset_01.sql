--     //                   //
--    //   changeset_01    //
--   //    28.01.2011     //
--  //Orc Start Location //
-- //      Durotar      //

-- Gornek NPC (http://www.wowhead.com/npc=3143) FIX
UPDATE creature_template SET npcflag=3 WHERE entry=3143;

-- Foreman Thazz'ril (http://www.wowhead.com/npc=11378) FIX
UPDATE creature_template SET npcflag=3 WHERE entry=11378;

-- Zureetha Fargaze (http://www.wowhead.com/npc=3145) FIX
UPDATE creature_template SET npcflag=3 WHERE entry=3145;

-- QUEST: Galgar's Cactus Apple Surprise [FIX]
UPDATE gameobject_template SET data1=171938 WHERE entry=171938;
REPLACE INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (171938, 11583, -100);

-- Master Gadrin (http://www.wowhead.com/npc=3188) FIX
UPDATE creature_template SET npcflag=3 WHERE entry=3188;


--   //     29.01.2011     //     
--  //Dwarf Start Location//
-- //      ColdRidge     //

-- Joren Ironstock <Local Mountaineer Captain> (http://www.wowhead.com/npc=37081) FIX
UPDATE creature_template SET npcflag=3 WHERE entry=37081;

-- Item Drop: (http://www.wowhead.com/item=49747)
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE entry=708 AND item=49747;
-- Item Drop: (http://www.wowhead.com/item=49748)
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE entry=704 AND item=49748;
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE entry=705 AND item=49748;


-- QUEST: First Things First: We're Gonna Need Some Beer (http://www.wowhead.com/quest=24474)
-- Keg of Stormhammer Stout
DELETE FROM gameobject_loot_template WHERE entry=201610; 
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (201610, 49744, -100);
UPDATE gameobject_template SET data1=201610 WHERE entry=201610;
-- Keg of Theramore Pale Ale
DELETE FROM gameobject_loot_template WHERE entry=201609; 
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (201609, 49745, -100);
UPDATE gameobject_template SET data1=201609 WHERE entry=201609;
-- Keg of Gnomenbrau
DELETE FROM gameobject_loot_template WHERE entry=201611;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (201611, 49746, -100);
UPDATE gameobject_template SET data1=201611 WHERE entry=201611;

-- Harnessing the Flames (http://www.wowhead.com/quest=26904)
UPDATE quest_template SET ZoneOrSort=61 WHERE entry=26904;

-- Dwarven Artifacts (http://www.wowhead.com/quest=24477)
DELETE FROM gameobject_loot_template WHERE entry=201608;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (201608, 49749, -100);
UPDATE gameobject_template SET data1=201608 WHERE entry=201608;

-- QUEST: A Refugee's Quandary (http://www.wowhead.com/quest=3361)
-- Felix's Box
DELETE FROM gameobject_loot_template WHERE entry=148499;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (148499, 10438, -100);
UPDATE gameobject_template SET data1=148499 WHERE entry=148499;
-- Felix's Chest
DELETE FROM gameobject_loot_template WHERE entry=178084;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (178084, 16313, -100);
UPDATE gameobject_template SET data1=178084 WHERE entry=178084;
-- Felix's Bucket of Bolts
DELETE FROM gameobject_loot_template WHERE entry=178085;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (178085, 16314, -100);
UPDATE gameobject_template SET data1=178085 WHERE entry=178085;

-- Milo Geartwinge (http://www.wowhead.com/npc=37113)
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (37113, 0, 1, 1, 0, 0, -6248.79, 305.429, 383.44, 3.12898, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0);

-- Tharek Blackstone (http://www.wowhead.com/npc=1872) FIX
UPDATE creature_template SET npcflag=3 WHERE entry=1872;

-- Ammo Crate
DELETE FROM gameobject_loot_template WHERE entry=176785;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (176785, 13850, -100);
UPDATE gameobject_template SET data1=176785 WHERE entry=176785;



--   //                 //
--  //   Other Fixes   //
-- //                 //

-- Class Trainer Fix
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Warrior Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Paladin Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Hunter Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Rogue Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Priest Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Death Knight Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Shaman Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Mage Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Warlock Trainer';
UPDATE creature_template SET npcflag = '49' WHERE npcflag = '16' AND subname = 'Druid Trainer';

-- Delete an extras NPCs Priestess Anetta
DELETE FROM creature WHERE id=375;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(254776, 375, 0, 1, 1, 3344, 375, -8853.59, -193.336, 82.1157, 2.54818, 5000, 0, 0, 102, 0, 0, 0);
-- Delete an extras NPCs Khelden Bremen
DELETE FROM creature WHERE id=198;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(255037, 198, 0, 1, 1, 5001, 198, -8851.57, -188.234, 89.4958, 2.9147, 5000, 0, 0, 102, 0, 0, 0);
-- Fix By  jonathan

-- Dalaran Alliance Portal Deletation
DELETE FROM gameobject WHERE guid=56712;
DELETE FROM gameobject WHERE guid=56485;
DELETE FROM gameobject WHERE guid=56552;
DELETE FROM gameobject WHERE guid=61217;
DELETE FROM gameobject WHERE guid=56465;
-- fix by Giridhar

-- Dalaran Horde Portal Deletation
DELETE FROM gameobject WHERE guid=56568;
DELETE FROM gameobject WHERE guid=56658;
DELETE FROM gameobject WHERE guid=56733;
DELETE FROM gameobject WHERE guid=56600;
DELETE FROM gameobject WHERE guid=56586;
-- fix by ari

-- Dalaran class trainer Alliance spawns
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation) VALUES
(50155, 571, 1, 1, 0, 0, 5716.54, 728.771, 641.657, 3.974);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation) VALUES
(50160, 571, 1, 1, 0, 0, 5715.912, 725.789, 641.619, 1.461);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation) VALUES
(50157, 571, 1, 1, 0, 0, 5713.527, 727.866, 641.705, 0.291);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation) VALUES
(50156, 571, 1, 1, 0, 0, 5709.218, 731.703, 641.798, 2.472);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation) VALUES
(50158, 571, 1, 1, 0, 0, 5707.958, 732.958, 641.804, 5.06);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation) VALUES
(50163, 571, 1, 1, 0, 0, 5708.848, 738.445, 641.795, 2.49);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation) VALUES
(50174, 571, 1, 1, 0, 0, 5705.604, 738.751, 641.825, 0.17);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation) VALUES
(50171, 571, 1, 1, 0, 0, 5709.071, 742.160, 641.769, 4.57);
-- fix by Giridhar