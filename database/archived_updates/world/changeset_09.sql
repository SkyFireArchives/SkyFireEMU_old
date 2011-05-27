-- ChangeSET-09

-- Fix errors startup creature_questrelation
DELETE FROM `creature_questrelation` WHERE `id` IN (2031, 3098, 15271, 15294, 16516, 34865, 46363, 49871, 49874, 50039); 

-- Table 'gameobject_loot_template' entry xx  (gameobject entry) not exist but used as loot id in DB.
UPDATE gameobject_template SET flags = 4, questItem1 = 60295 WHERE entry = 57;
UPDATE gameobject_template SET flags = 4, questItem1 = 1349 WHERE entry = 119;
UPDATE gameobject_template SET flags = 4, questItem1 = 2640 WHERE entry = 271;
UPDATE gameobject_template SET flags = 4, questItem1 = 2676 WHERE entry = 276;
UPDATE gameobject_template SET flags = 4, questItem1 = 2779 WHERE entry = 321;
UPDATE gameobject_template SET flags = 4, questItem1 = 60386, questItem2 = 58811 WHERE entry = 759;
UPDATE gameobject_template SET flags = 4, questItem1 = 3418 WHERE entry = 1673;
UPDATE gameobject_template SET flags = 4, questItem1 = 3502 WHERE entry = 1723;
UPDATE gameobject_template SET flags = 4, questItem1 = 3900 WHERE entry = 2068;
UPDATE gameobject_template SET flags = 4, questItem1 = 3920 WHERE entry = 2086;
UPDATE gameobject_template SET flags = 4, questItem1 = 4483 WHERE entry = 2689;
UPDATE gameobject_template SET flags = 4, questItem1 = 4485 WHERE entry = 2690;
UPDATE gameobject_template SET flags = 4, questItem1 = 4531 WHERE entry = 2716;
UPDATE gameobject_template SET flags = 4, questItem1 = 4530 WHERE entry = 2717;
UPDATE gameobject_template SET flags = 4, questItem1 = 4532 WHERE entry = 2718;
UPDATE gameobject_template SET flags = 4, questItem1 = 3406 WHERE entry = 2739;
UPDATE gameobject_template SET flags = 4, questItem1 = 3405 WHERE entry = 2740;
UPDATE gameobject_template SET flags = 4, questItem1 = 3407 WHERE entry = 2741;
UPDATE gameobject_template SET flags = 4, questItem1 = 3408 WHERE entry = 2742;
UPDATE gameobject_template SET flags = 4, questItem1 = 3906 WHERE entry = 2891;
UPDATE gameobject_template SET flags = 4, questItem1 = 3907 WHERE entry = 2892;
UPDATE gameobject_template SET flags = 4, questItem1 = 3908 WHERE entry = 2893;
UPDATE gameobject_template SET flags = 4, questItem1 = 4863 WHERE entry = 3236;
UPDATE gameobject_template SET flags = 4, questItem1 = 4918 WHERE entry = 3290;
UPDATE gameobject_template SET flags = 4, questItem1 = 5012 WHERE entry = 3640;
UPDATE gameobject_template SET flags = 4, questItem1 = 5169 WHERE entry = 4608;
DELETE FROM gameobject_loot_template WHERE entry IN 
(52,57,119,263,271,276,290,321,759,1560,1562,1673,1723,2068,2086,2689,2690,2716,2717,2718,2739,2740,2741,2742,2744,2891,2892,2893,3236,3290,3640,3658,3659,3705,4608);
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount)
VALUES
(52, 2007, 100, 1, 0, 1, 1),
(52, 2008, 100, 1, 0, 1, 1),
(57, 60295, -100, 1, 0, 1, 1),
(119, 1349, -100, 1, 0, 1, 1),
(263, 2634, 100, 1, 0, 1, 1),
(271, 2640, -100, 1, 0, 1, 1),
(276, 2676, -100, 1, 0, 1, 1),
(290, 841, 100, 1, 0, 1, 1),
(321, 2779, -100, 1, 0, 1, 1),
(759, 60386, -62, 1, 0, 1, 1),
(759, 737, 1.9, 1, 0, 1, 1),
(759, 58811, -36, 1, 0, 1, 1),
(1560, 910, 100, 1, 0, 1, 1),
(1562, 921, 100, 1, 0, 1, 1),
(1673, 3418, -100, 1, 0, 1, 1),
(1723, 3502, -100, 1, 0, 1, 1),
(2068, 3900, -100, 1, 0, 1, 1),
(2086, 3920, -100, 1, 0, 1, 1),
(2689, 4483, -100, 1, 0, 1, 1), 
(2690, 4485, -100, 1, 0, 1, 1),
(2716, 4531, -100, 1, 0, 1, 1),
(2717, 4530, -100, 1, 0, 1, 1),
(2718, 4532, -100, 1, 0, 1, 1),
(2739, 3406, -100, 1, 0, 1, 1),
(2740, 3405, -100, 1, 0, 1, 1),
(2741, 3407, -100, 1, 0, 1, 1),
(2742, 3408, -100, 1, 0, 1, 1),
(2744, 5504, 85, 1, 0, 1, 3),
(2744, 4611,  10, 1, 0, 1, 1),
(2744, 5500, 4, 1, 0, 1, 1),
(2744, 5503, 4, 1, 0, 1, 1),
(2744, 5498, 3, 1, 0, 1, 1),
(2744, 2143, 3, 1, 0, 1, 1),
(2744, 4655, 3, 1, 0, 1, 1),
(2744, 1780, 3, 1, 0, 1, 1),
(2744, 1755, 3, 1, 0, 1, 1),
(2891, 3906, -100, 1, 0, 1, 1),
(2892, 3907, -100, 1, 0, 1, 1),                 
(2893, 3908, -100, 1, 0, 1, 1),
(3236, 4863, -100, 1, 0, 1, 1),
(3290, 4918, -100, 1, 0, 1, 1),
(3640, 5012, -100, 1, 0, 1, 1),
(3658, 159, 100, 1, 0, 2, 5),
(3659, 1205, 98, 1, 0, 2, 5),
(3705, 1179, 40, 1, 0, 2, 5),
(4608, 5159, -100, 1, 0, 1, 1);

-- Flying Trainer
UPDATE creature_template SET npcflag = "81" WHERE Subname= "Flying Trainer";

-- Sigils
UPDATE item_template SET class=4 WHERE name LIKE '%sigil%' AND inventoryType=28;
UPDATE item_template SET subclass=10 WHERE name LIKE '%sigil%' AND inventoryType=28;
-- Totems
UPDATE item_template SET class=4 WHERE name LIKE '%totem%' AND inventoryType=28;
UPDATE item_template SET subclass=9 WHERE name LIKE '%totem%' AND inventoryType=28;
-- Idols
UPDATE item_template SET class=4 WHERE name LIKE '%idol%' AND inventoryType=28;
UPDATE item_template SET subclass=8 WHERE name LIKE '%idol%' AND inventoryType=28;
-- Librams
UPDATE item_template SET class=4 WHERE name LIKE '%libram%' AND inventoryType=28;
UPDATE item_template SET subclass=7 WHERE name LIKE '%libram%' AND inventoryType=28;
-- Relic
UPDATE item_template SET class=4 WHERE name LIKE '%relic%' AND inventoryType=28;
UPDATE item_template SET subclass=10 WHERE name LIKE '%relic%' AND inventoryType=28;

-- Deleted false Quest relations
DELETE FROM creature_questrelation WHERE id IN(15294,50047,10556,39317);

-- Some Npc Flags
UPDATE creature_template SET npcflag = 0 WHERE entry IN(49874,42938,15273,15298,15271,15294,15294,50047,10556,39317);

-- Table 'gameobject_loot_template' entry xx  (gameobject entry) not exist but used as loot id in DB.
UPDATE gameobject_template SET flags = 4, questItem1 = 12955 WHERE entry = 176207;
UPDATE gameobject_template SET flags = 4, questItem1 = 12956 WHERE entry = 176208;
UPDATE gameobject_template SET flags = 4, questItem1 = 12957 WHERE entry = 176209;
UPDATE gameobject_template SET flags = 4, questItem1 = 13471 WHERE entry = 176484;
UPDATE gameobject_template SET flags = 4, questItem1 = 13448 WHERE entry = 176485;
UPDATE gameobject_template SET flags = 4, questItem1 = 13450 WHERE entry = 176486;
UPDATE gameobject_template SET flags = 4, questItem1 = 13451 WHERE entry = 176487;
UPDATE gameobject_template SET flags = 4, questItem1 = 13703 WHERE entry = 176751;
UPDATE gameobject_template SET flags = 4, questItem1 = 13702 WHERE entry = 176753;
UPDATE gameobject_template SET flags = 4, questItem1 = 13850 WHERE entry = 176785;
UPDATE gameobject_template SET flags = 4, questItem1 = 13872 WHERE entry = 176793;
UPDATE gameobject_template SET flags = 4, questItem1 = 15884 WHERE entry = 177789;
UPDATE gameobject_template SET flags = 4, questItem1 = 16762 WHERE entry = 177964;
UPDATE gameobject_template SET flags = 4, questItem1 = 16313 WHERE entry = 178084;
UPDATE gameobject_template SET flags = 4, questItem1 = 16314 WHERE entry = 178085;
UPDATE gameobject_template SET flags = 4, questItem1 = 16332 WHERE entry = 178087;
UPDATE gameobject_template SET flags = 4, questItem1 = 16602 WHERE entry = 178144;
UPDATE gameobject_template SET flags = 4, questItem1 = 16784 WHERE entry = 178184;
UPDATE gameobject_template SET flags = 4, questItem1 = 17202 WHERE entry = 178609;
UPDATE gameobject_template SET flags = 4, questItem1 = 18943 WHERE entry = 179828;
UPDATE gameobject_template SET flags = 4, questItem1 = 19071 WHERE entry = 179922;
UPDATE gameobject_template SET flags = 4, questItem1 = 20379 WHERE entry = 180436;
UPDATE gameobject_template SET flags = 4, questItem1 = 20378 WHERE entry = 180436;
UPDATE gameobject_template SET flags = 4, questItem1 = 20470 WHERE entry = 180510;
UPDATE gameobject_template SET flags = 4, questItem1 = 20471 WHERE entry = 180511;
UPDATE gameobject_template SET flags = 4, questItem1 = 20516 WHERE entry = 180523;
UPDATE gameobject_template SET flags = 4, questItem1 = 20743 WHERE entry = 180600;
UPDATE gameobject_template SET flags = 4, questItem1 = 21771 WHERE entry = 180917;
UPDATE gameobject_template SET flags = 4, questItem1 = 20771 WHERE entry = 180921;
UPDATE gameobject_template SET flags = 4, questItem1 = 22413 WHERE entry = 181107;
UPDATE gameobject_template SET flags = 4, questItem1 = 22414 WHERE entry = 181110;
UPDATE gameobject_template SET flags = 4, questItem1 = 22583 WHERE entry = 181133;
UPDATE gameobject_template SET flags = 4, questItem1 = 22590 WHERE entry = 181138;
UPDATE gameobject_template SET flags = 4, questItem1 = 22591 WHERE entry = 181139;
UPDATE gameobject_template SET flags = 4, questItem1 = 22592 WHERE entry = 181140;
UPDATE gameobject_template SET flags = 4, questItem1 = 22674 WHERE entry = 181151;
UPDATE gameobject_template SET flags = 4, questItem1 = 22598 WHERE entry = 181238;
UPDATE gameobject_template SET flags = 4, questItem1 = 22978 WHERE entry = 181283;
UPDATE gameobject_template SET flags = 4, questItem1 = 23205 WHERE entry = 181372;
DELETE FROM gameobject_loot_template WHERE entry IN
(176207,176208,176209,176484,176485,176486,176487,176751,176753,176785,177789,176793,177964,178084,178085,178087,178144,178184,178609,179499,179516,179828,179922,180435,180436,180510,180511,180523,180600,180917,180921,181107,181110,181133,181138,181139,181140,181151,181238,181283,181372);
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount)
VALUES
(176207, 12955, -100, 1, 0, 1, 1),
(176208, 12956, -100, 1, 0, 1, 1),
(176209, 12957, -100, 1, 0, 1, 1),
(176484, 13471, -100, 1, 0, 1, 1),
(176485, 13448, -100, 1, 0, 1, 1),
(176486, 13450, -100, 1, 0, 1, 1),
(176487, 13451, -100, 1, 0, 1, 1),
(176751, 13703, -100, 1, 0, 1, 1),
(176753, 13702, -100, 1, 0, 1, 1),
(176785, 13850, -100, 1, 0, 1, 1),
(176793, 13872, -100, 1, 0, 1, 1),
(177789, 15884, -100, 1, 0, 1, 1),
(177964, 16762, -100, 1, 0, 1, 1),
(178084, 16313, -100, 1, 0, 1, 1),
(178085, 16314, -100, 1, 0, 1, 1),
(178087, 16332, -100, 1, 0, 1, 1),
(178144, 16602, -100, 1, 0, 1, 1),
(178184, 16784, -100, 1, 0, 2, 5),
(178609, 17202, -100, 1, 0, 3, 6),
(179499, 18240, -100, 1, 0, 1, 1),
(179516, 18266, -100, 1, 0, 1, 1),
(179828, 18943, -100, 1, 0, 1, 1),
(179922, 19071, -100, 1, 0, 1, 1),
(180435, 20379, -100, 1, 0, 1, 1),
(180436, 20378, -100, 1, 0, 1, 1),
(180510, 20470, -100, 1, 0, 1, 1),
(180511, 20471, -100, 1, 0, 1, 1),
(180523, 20516, -100, 1, 0, 1, 1),
(180600, 20743, -100, 1, 0, 1, 1),
(180917, 21771, -100, 1, 0, 1, 1),
(180921, 20771, -100, 1, 0, 1, 1),
(181107, 22413, -100, 1, 0, 1, 1),
(181110, 22414, -100, 1, 0, 1, 1),
(181133, 22583, -110, 1, 0, 1, 1),
(181138, 22590, -100, 1, 0, 1, 1),
(181139, 22591, -100, 1, 0, 1, 1),
(181140, 22591, -100, 1, 0, 1, 1),
(181151, 22674, -100, 1, 0, 1, 1),
(181238, 22598, -100, 1, 0, 1, 1),
(181283, 22978, -100, 1, 0, 1, 1),
(181372, 23205, -100, 1, 0, 1, 1);
-- Fix By Giridhar

UPDATE `item_template` SET `RandomSuffix`='0' WHERE `entry`='26173';
UPDATE `item_template` SET `RandomSuffix`='0' WHERE `entry`='26174';
UPDATE `item_template` SET `RandomSuffix`='0' WHERE `entry`='26175';
UPDATE `item_template` SET `RandomSuffix`='0' WHERE `entry`='26324';
UPDATE `item_template` SET `RandomSuffix`='0' WHERE `entry`='26655';
UPDATE `item_template` SET `RandomSuffix`='0' WHERE `entry`='27196';
-- Fix By RobyDj

UPDATE gameobject_template SET flags = 4, questItem1 = 23217 WHERE entry = 181385;
UPDATE gameobject_template SET flags = 4, questItem1 = 23551 WHERE entry = 181594;
UPDATE gameobject_template SET flags = 4, questItem1 = 23657 WHERE entry = 181626;
UPDATE gameobject_template SET flags = 4, questItem1 = 23642 WHERE entry = 181637;
UPDATE gameobject_template SET flags = 4, questItem1 = 23692 WHERE entry = 181644;
UPDATE gameobject_template SET flags = 4, questItem1 = 23694 WHERE entry = 181645;
UPDATE gameobject_template SET flags = 4, questItem1 = 23739 WHERE entry = 181674;
UPDATE gameobject_template SET flags = 4, questItem1 = 23748 WHERE entry = 181675;
UPDATE gameobject_template SET flags = 4, questItem1 = 23753 WHERE entry = 181680;
UPDATE gameobject_template SET flags = 4, questItem1 = 23760 WHERE entry = 181681;
UPDATE gameobject_template SET flags = 4, questItem1 = 23779 WHERE entry = 181683;
UPDATE gameobject_template SET flags = 4, questItem1 = 23776 WHERE entry = 181686;
UPDATE gameobject_template SET flags = 4, questItem1 = 23790 WHERE entry = 181696;
UPDATE gameobject_template SET flags = 4, questItem1 = 23791, questItem2 = 59152 WHERE entry = 181697;
UPDATE gameobject_template SET flags = 4, questItem1 = 23830 WHERE entry = 181746; 
UPDATE gameobject_template SET flags = 4, questItem1 = 23863 WHERE entry = 181770;
UPDATE gameobject_template SET flags = 4, questItem1 = 23927 WHERE entry = 181854;
UPDATE gameobject_template SET flags = 4, questItem1 = 23981 WHERE entry = 181871;
UPDATE gameobject_template SET flags = 4, questItem1 = 24040 WHERE entry = 181891;
UPDATE gameobject_template SET flags = 4, questItem1 = 24041 WHERE entry = 181892;
UPDATE gameobject_template SET flags = 4, questItem1 = 24042 WHERE entry = 181893;
UPDATE gameobject_template SET flags = 4, questItem1 = 24043 WHERE entry = 181894;
UPDATE gameobject_template SET flags = 4, questItem1 = 24049 WHERE entry = 181897;
UPDATE gameobject_template SET flags = 4, questItem1 = 24081 WHERE entry = 181916;
UPDATE gameobject_template SET flags = 4, questItem1 = 24185 WHERE entry = 181981;
UPDATE gameobject_template SET flags = 4, questItem1 = 24233 WHERE entry = 182031;
UPDATE gameobject_template SET flags = 4, questItem1 = 24240 WHERE entry = 182050;
UPDATE gameobject_template SET flags = 4, questItem1 = 24247 WHERE entry = 182054;
UPDATE gameobject_template SET flags = 4, questItem1 = 24290 WHERE entry = 182069;
UPDATE gameobject_template SET flags = 4, questItem1 = 24468 WHERE entry = 182095;
DELETE FROM gameobject_loot_template WHERE entry IN 
(181385,181594,181626,181637,181644,181645,181674,181675,181680,181681,181683,181686,181696,181697,181746,181770,181854,181871,181891,181892,181893,181894,181897,181916,181981,182031,182050,182053,182054,182069,182095);
INSERT INTO gameobject_loot_template VALUES
(181385, 23217, -100, 1, 0, 1, 1),
(181594, 23551, -100, 1, 0, 1, 1),
(181626, 23657, -100, 1, 0, 1, 1),
(181637, 23642, -100, 1, 0, 1, 1),
(181644, 23692, -100, 1, 0, 1, 1),
(181645, 23694, -100, 1, 0, 1, 1),
(181674, 23739, -100, 1, 0, 1, 1),
(181675, 23748, -100, 1, 0, 1, 1),
(181680, 23753, -100, 1, 0, 1, 1),
(181681, 23760, -100, 1, 0, 1, 1),
(181683, 23779, -100, 1, 0, 1, 1),
(181686, 23776, -100, 1, 0, 1, 2),
(181696, 23790, -100, 1, 0, 1, 1),
(181697, 59152, -100, 1, 0, 1, 1),
(181697, 23791, -100, 1, 0, 1, 1),
(181746, 23830, -100, 1, 0, 1, 1),
(181770, 23863, -100, 1, 0, 1, 1),
(181854, 23927, -100, 1, 0, 1, 1),
(181871, 23981, -100, 1, 0, 1, 1),
(181891, 24040, -100, 1, 0, 1, 1), 
(181892, 24041, -100, 1, 0, 1, 1),
(181893, 24042, -100, 1, 0, 1, 1), 
(181894, 24043, -100, 1, 0, 1, 1),
(181897, 24049, -100, 1, 0, 1, 1),
(181916, 24081, -100, 1, 0, 1, 1), 
(181981, 24185, -100, 1, 0, 1, 1),
(182031, 24233, -100, 1, 0, 1, 1),
(182050, 24240, -100, 1, 0, 1, 1),
(182053, 24245, -100, 1, 0, 1, 1),
(182054, 24247, -100, 1, 0, 1, 1),
(182069, 24290, -100, 1, 0, 1, 1),
(182095, 24468, -100, 1, 0, 1, 1);
-- Fix By giridhar
