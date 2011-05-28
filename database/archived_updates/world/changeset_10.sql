-- ChangeSET-10

-- Into Occupied Territory
DELETE FROM gameobject_loot_template WHERE entry=181140;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (181140, 22591, -100, 1, 0, 1, 1);

-- Fields of Grief
DELETE FROM gameobject_loot_template WHERE entry=375;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance) VALUES ('375','2846','-100');

-- Gordo's Task
DELETE FROM gameobject_loot_template WHERE entry=175566;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance) VALUES ('175566','12737','-100');

-- Variety is the Spice of Death (Objects)
DELETE FROM gameobject_loot_template WHERE entry IN (202422, 202421);
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance) VALUES 
(202422, 52067, -100),
(202421, 52066, -100);

-- Solanian's Belongings
DELETE FROM gameobject_loot_template WHERE entry=180512 AND item=20472;
INSERT INTO gameobject_loot_template (entry,item) VALUES ('180512','20472');
DELETE FROM gameobject WHERE id=180512;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation2, rotation3, spawntimesecs, state) VALUES (null,'180512','530','10228.6','-6347.75', '30.8399', '4.69897', '0.711836','-0.702346','1','1');
UPDATE gameobject SET animprogress = 100 WHERE id = 180512;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -100 WHERE entry = 180512;
-- Thirst Unending
UPDATE quest_template SET ReqSpellCast1 = 28730 WHERE entry = 8346;
UPDATE quest_template SET ReqCreatureOrGOId1 = 15274 WHERE entry = 8346;
-- Swift Discipline 
UPDATE quest_template SET ReqSpellCast1 = 27907 WHERE entry = 9066;
UPDATE quest_template SET ReqSpellCast2 = 27907 WHERE entry = 9066;

-- Socket Fix
UPDATE item_template SET maxcount=0 WHERE description LIKE '%Matches a%';
-- By Saiifii

-- DB: ERROR FIX (creature_addon)
DELETE FROM creature_addon WHERE guid IN ('252770', '252778', '252813', '252893', '252947', '252997', '253037', '253159', '253245', '253545', '253579', '253693', '253737', '253821', '253978', '253987', '253993', '254257', '254267', '254292', '254300', '254357', '254807', '254866', '254972', '255043', '255253', '255307', '315940', '315959', '315981', '316005');

-- Some Justice Point Vendor
DELETE FROM npc_vendor WHERE entry IN ('44246', '46555');
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES
(44246,0,58096,0,'0',3038),
(44246,0,58106,0,'0',3038),
(44246,0,58101,0,'0',3038),
(44246,0,58150,0,'0',3038),
(44246,0,58155,0,'0',3038),
(44246,0,58108,0,'0',3038),
(44246,0,58097,0,'0',3038),
(44246,0,58102,0,'0',3038),
(44246,0,58098,0,'0',3038),
(44246,0,58128,0,'0',3038),
(44246,0,58103,0,'0',3038),
(44246,0,58122,0,'0',3038),
(44246,0,58160,0,'0',3038),
(44246,0,58140,0,'0',3038),
(44246,0,58127,0,'0',3038),
(44246,0,58132,0,'0',3038),
(44246,0,58107,0,'0',3038),
(44246,0,58161,0,'0',3038),
(44246,0,58133,0,'0',3038),
(44246,0,58159,0,'0',3038),
(44246,0,58154,0,'0',3038),
(44246,0,58153,0,'0',3038),
(44246,0,58139,0,'0',3038),
(44246,0,58131,0,'0',3038),
(44246,0,58121,0,'0',3038),
(44246,0,58126,0,'0',3038),
(44246,0,58123,0,'0',3038),
(44246,0,57913,0,'0',3039),
(44246,0,57915,0,'0',3039),
(44246,0,57916,0,'0',3039),
(44246,0,57922,0,'0',3039),
(44246,0,57917,0,'0',3039),
(44246,0,58152,0,'0',3039),
(44246,0,58134,0,'0',3039),
(44246,0,57914,0,'0',3039),
(44246,0,58130,0,'0',3039),
(44246,0,58110,0,'0',3039),
(44246,0,58163,0,'0',3039),
(44246,0,58158,0,'0',3039),
(44246,0,58125,0,'0',3039),
(44246,0,57921,0,'0',3039),
(44246,0,58157,0,'0',3039),
(44246,0,58105,0,'0',3039),
(44246,0,58109,0,'0',3039),
(44246,0,58100,0,'0',3039),
(44246,0,58099,0,'0',3039),
(44246,0,57918,0,'0',3039),
(44246,0,58129,0,'0',3039),
(44246,0,58151,0,'0',3039),
(44246,0,58138,0,'0',3039),
(44246,0,58162,0,'0',3039),
(44246,0,58104,0,'0',3039),
(44246,0,57919,0,'0',3039),
(44246,0,58124,0,'0',3039),
(44246,0,57931,0,'0',3040),
(44246,0,57934,0,'0',3040),
(44246,0,57930,0,'0',3040),
(44246,0,57933,0,'0',3040),
(44246,0,57932,0,'0',3040),
(44246,0,57924,0,'0',3041),
(44246,0,57929,0,'0',3041),
(44246,0,57923,0,'0',3041),
(44246,0,57926,0,'0',3041),
(44246,0,57925,0,'0',3041),
(44246,0,57927,0,'0',3041),
(44246,0,57928,0,'0',3041),
(46555,0,58096,0,'0',3038),
(46555,0,58106,0,'0',3038),
(46555,0,58101,0,'0',3038),
(46555,0,58150,0,'0',3038),
(46555,0,58155,0,'0',3038),
(46555,0,58108,0,'0',3038),
(46555,0,58097,0,'0',3038),
(46555,0,58102,0,'0',3038),
(46555,0,58098,0,'0',3038),
(46555,0,58128,0,'0',3038),
(46555,0,58103,0,'0',3038),
(46555,0,58122,0,'0',3038),
(46555,0,58160,0,'0',3038),
(46555,0,58140,0,'0',3038),
(46555,0,58127,0,'0',3038),
(46555,0,58132,0,'0',3038),
(46555,0,58107,0,'0',3038),
(46555,0,58161,0,'0',3038),
(46555,0,58133,0,'0',3038),
(46555,0,58159,0,'0',3038),
(46555,0,58154,0,'0',3038),
(46555,0,58153,0,'0',3038),
(46555,0,58139,0,'0',3038),
(46555,0,58131,0,'0',3038),
(46555,0,58121,0,'0',3038),
(46555,0,58126,0,'0',3038),
(46555,0,58123,0,'0',3038),
(46555,0,57913,0,'0',3039),
(46555,0,57915,0,'0',3039),
(46555,0,57916,0,'0',3039),
(46555,0,57922,0,'0',3039),
(46555,0,57917,0,'0',3039),
(46555,0,58152,0,'0',3039),
(46555,0,58134,0,'0',3039),
(46555,0,57914,0,'0',3039),
(46555,0,58130,0,'0',3039),
(46555,0,58110,0,'0',3039),
(46555,0,58163,0,'0',3039),
(46555,0,58158,0,'0',3039),
(46555,0,58125,0,'0',3039),
(46555,0,57921,0,'0',3039),
(46555,0,58157,0,'0',3039),
(46555,0,58105,0,'0',3039),
(46555,0,58109,0,'0',3039),
(46555,0,58100,0,'0',3039),
(46555,0,58099,0,'0',3039),
(46555,0,57918,0,'0',3039),
(46555,0,58129,0,'0',3039),
(46555,0,58151,0,'0',3039),
(46555,0,58138,0,'0',3039),
(46555,0,58162,0,'0',3039),
(46555,0,58104,0,'0',3039),
(46555,0,57919,0,'0',3039),
(46555,0,58124,0,'0',3039),
(46555,0,57931,0,'0',3040),
(46555,0,57934,0,'0',3040),
(46555,0,57930,0,'0',3040),
(46555,0,57933,0,'0',3040),
(46555,0,57932,0,'0',3040),
(46555,0,57924,0,'0',3041),
(46555,0,57929,0,'0',3041),
(46555,0,57923,0,'0',3041),
(46555,0,57926,0,'0',3041),
(46555,0,57925,0,'0',3041),
(46555,0,57927,0,'0',3041),
(46555,0,57928,0,'0',3041);
-- Fix by Nosferatu

-- Some More Vendors
UPDATE creature_template SET npcflag = '128' WHERE entry IN ('50382', '50375', '50433', '50386');
DELETE FROM npc_vendor WHERE entry IN ('50382', '50375', '50433', '50386');
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES
(50382,0,66119,0,'0',3312),
(50382,0,66117,0,'0',3312),
(50382,0,66118,0,'0',3312),
(50382,0,66107,0,'0',3312),
(50382,0,66105,0,'0',3312),
(50382,0,66109,0,'0',3312),
(50382,0,66127,0,'0',3312),
(50382,0,66125,0,'0',3312),
(50382,0,66126,0,'0',3312),
(50382,0,66103,0,'0',3312),
(50382,0,66124,0,'0',3314),
(50382,0,66123,0,'0',3314),
(50382,0,66122,0,'0',3314),
(50382,0,66100,0,'0',3314),
(50382,0,67606,0,'0',3314),
(50382,0,66132,0,'0',3314),
(50382,0,66131,0,'0',3314),
(50382,0,66130,0,'0',3314),
(50382,0,66101,0,'0',3314),
(50382,0,66120,0,'0',3313),
(50382,0,66121,0,'0',3313),
(50382,0,66113,0,'0',3313),
(50382,0,66106,0,'0',3313),
(50382,0,66115,0,'0',3313),
(50382,0,67603,0,'0',3313),
(50382,0,66111,0,'0',3313),
(50382,0,66112,0,'0',3313),
(50382,0,66114,0,'0',3313),
(50382,0,66110,0,'0',3313),
(50382,0,66116,0,'0',3313),
(50382,0,66104,0,'0',3313),
(50382,0,66108,0,'0',3313),
(50382,0,66128,0,'0',3313),
(50382,0,66129,0,'0',3313);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES
(50375,0,66119,0,'0',3312),
(50375,0,66117,0,'0',3312),
(50375,0,66118,0,'0',3312),
(50375,0,66107,0,'0',3312),
(50375,0,66105,0,'0',3312),
(50375,0,66109,0,'0',3312),
(50375,0,66127,0,'0',3312),
(50375,0,66125,0,'0',3312),
(50375,0,66126,0,'0',3312),
(50375,0,66103,0,'0',3312),
(50375,0,66124,0,'0',3314),
(50375,0,66123,0,'0',3314),
(50375,0,66122,0,'0',3314),
(50375,0,66100,0,'0',3314),
(50375,0,67606,0,'0',3314),
(50375,0,66132,0,'0',3314),
(50375,0,66131,0,'0',3314),
(50375,0,66130,0,'0',3314),
(50375,0,66101,0,'0',3314),
(50375,0,66120,0,'0',3313),
(50375,0,66121,0,'0',3313),
(50375,0,66113,0,'0',3313),
(50375,0,66106,0,'0',3313),
(50375,0,66115,0,'0',3313),
(50375,0,67603,0,'0',3313),
(50375,0,66111,0,'0',3313),
(50375,0,66112,0,'0',3313),
(50375,0,66114,0,'0',3313),
(50375,0,66110,0,'0',3313),
(50375,0,66116,0,'0',3313),
(50375,0,66104,0,'0',3313),
(50375,0,66108,0,'0',3313),
(50375,0,66128,0,'0',3313),
(50375,0,66129,0,'0',3313);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES
(50433,0,68199,0,'0',2988),
(50433,0,54593,0,'0',2988),
(50433,0,54594,0,'0',2988),
(50433,0,54595,0,'0',2988),
(50433,0,54596,0,'0',2988),
(50433,0,54597,0,'0',2988),
(50433,0,54598,0,'0',2988),
(50433,0,54599,0,'0',2988),
(50433,0,54600,0,'0',2988),
(50433,0,54601,0,'0',2989),
(50433,0,54603,0,'0',2989),
(50433,0,54602,0,'0',2989),
(50433,0,54604,0,'0',2989),
(50433,0,54605,0,'0',2989);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES
(50386,0,68199,0,'0',2988),
(50386,0,54593,0,'0',2988),
(50386,0,54594,0,'0',2988),
(50386,0,54595,0,'0',2988),
(50386,0,54596,0,'0',2988),
(50386,0,54597,0,'0',2988),
(50386,0,54598,0,'0',2988),
(50386,0,54599,0,'0',2988),
(50386,0,54600,0,'0',2988),
(50386,0,54601,0,'0',2989),
(50386,0,54603,0,'0',2989),
(50386,0,54602,0,'0',2989),
(50386,0,54604,0,'0',2989),
(50386,0,54605,0,'0',2989);
-- Fixed by Nosferatu

-- Removeing some gameobjects, that are only summoned by players
DELETE FROM gameobject WHERE id IN ('191126', '21680', '194306', '29784', '190942', '176498', '182351', '176497', '176499', '182352', '176296', '189993', '176500', '176501', '189994', '183384', '184594', '191164', '206615', '206616', '192625', '206541', '193055', '193056', '192675', '206540', '194108');
-- Removeing some double spawns in orgrimmar.
DELETE FROM creature WHERE guid IN ('316563', '316569', '316795', '316970', '317239', '317297', '317366', '317610', '317901', '318598', '318751', '318856', '318867', '319548', '320013', '320061', '320068', '320216', '320287', '320482', '320752', '320759', '321166', '321394', '322093', '322324', '322506', '318293', '318057', '321406', '316046', '316373', '317051', '317060', '317119', '317630', '317698', '317724', '317767', '318095', '318391', '318398', '318440', '318470', '318785', '319001', '319028', '319103', '319106', '319147', '319175', '319265', '319477', '319694', '319802', '319808', '319854', '319887', '319973', '320402', '320502', '320551', '320666', '320881', '321234', '321879', '321888', '322280');
DELETE FROM creature_addon WHERE guid IN ('316563', '316569', '316795', '316970', '317239', '317297', '317366', '317610', '317901', '318598', '318751', '318856', '318867', '319548', '320013', '320061', '320068', '320216', '320287', '320482', '320752', '320759', '321166', '321394', '322093', '322324', '322506', '318293', '318057', '321406', '316046', '316373', '317051', '317060', '317119', '317630', '317698', '317724', '317767', '318095', '318391', '318398', '318440', '318470', '318785', '319001', '319028', '319103', '319106', '319147', '319175', '319265', '319477', '319694', '319802', '319808', '319854', '319887', '319973', '320402', '320502', '320551', '320666', '320881', '321234', '321879', '321888', '322280');
-- Fix By Nosferatu

--  Table gameobject have gameobject (GUID: xxxx Entry: xxx) that spawned at not existed map (Id: 65535), skip
DELETE FROM gameobject WHERE map = 65535;
-- Fix By giridhar. 

-- Wanted: Knucklerot and Luzran
UPDATE quest_template SET RequiredRaces=690, RewMoneyMaxLevel=1500, WDBVerified=13623 WHERE entry=9156;

-- Treepaser (DALARAN MAGE GUARDS)
DELETE FROM spell_target_position where id = '54029' or id = '54028';
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (54029, 571, 5849.16, 602.093, 651.13, 2.364);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (54028, 571, 5758.79, 678.359, 642.726, 5.572);

-- Fix startup error Table `gameobject` has gameobject (GUID: xxx) with non existing gameobject entry xxx, skipped.

DELETE FROM gameobject WHERE id = 206832;
DELETE FROM gameobject WHERE id = 202944;
DELETE FROM gameobject WHERE id = 203837;
DELETE FROM gameobject WHERE id = 202945;
DELETE FROM gameobject WHERE id = 202261;
DELETE FROM gameobject WHERE id = 202940;
DELETE FROM gameobject WHERE id = 205017;
DELETE FROM gameobject WHERE id = 205432;
DELETE FROM gameobject WHERE id = 206833;
DELETE FROM gameobject WHERE id = 202951;
DELETE FROM gameobject WHERE id = 207078;
DELETE FROM gameobject WHERE id = 206639;
DELETE FROM gameobject WHERE id = 202262;
DELETE FROM gameobject WHERE id = 205937;
DELETE FROM gameobject WHERE id = 203259;
DELETE FROM gameobject WHERE id = 205936;
DELETE FROM gameobject WHERE id = 203415;
DELETE FROM gameobject WHERE id = 203256;
DELETE FROM gameobject WHERE id = 205819;
DELETE FROM gameobject WHERE id = 203415;
DELETE FROM gameobject WHERE id = 203259;
DELETE FROM gameobject WHERE id = 205936;
DELETE FROM gameobject WHERE id = 203452;
DELETE FROM gameobject WHERE id = 206842;
DELETE FROM gameobject WHERE id = 204668;
DELETE FROM gameobject WHERE id = 203452;
DELETE FROM gameobject WHERE id = 206103;
DELETE FROM gameobject WHERE id = 203452;
DELETE FROM gameobject WHERE id = 203258;
DELETE FROM gameobject WHERE id = 205872;
DELETE FROM gameobject WHERE id = 204669;
DELETE FROM gameobject WHERE id = 205587;
DELETE FROM gameobject WHERE id = 203452;
DELETE FROM gameobject WHERE id = 206103;
DELETE FROM gameobject WHERE id = 203242;
DELETE FROM gameobject WHERE id = 204359;  
DELETE FROM gameobject WHERE id = 203919;
DELETE FROM gameobject WHERE id = 204396;
DELETE FROM gameobject WHERE id = 205920;
DELETE FROM gameobject WHERE id = 204359;
DELETE FROM gameobject WHERE id = 205585;
DELETE FROM gameobject WHERE id = 205077;
DELETE FROM gameobject WHERE id = 206552;
DELETE FROM gameobject WHERE id = 205919;
DELETE FROM gameobject WHERE id = 204397;
DELETE FROM gameobject WHERE id = 206552;
DELETE FROM gameobject WHERE id = 205050;
DELETE FROM gameobject WHERE id = 202943;
DELETE FROM gameobject WHERE id = 194143;
DELETE FROM gameobject WHERE id = 202943;
DELETE FROM gameobject WHERE id = 207073;
DELETE FROM gameobject WHERE id = 202941;
DELETE FROM gameobject WHERE id = 206638;
DELETE FROM gameobject WHERE id = 202206;
DELETE FROM gameobject WHERE id = 206641;
DELETE FROM gameobject WHERE id = 203826;
DELETE FROM gameobject WHERE id = 206640; 
DELETE FROM gameobject WHERE id = 202942;
DELETE FROM gameobject WHERE id = 202946;
DELETE FROM gameobject WHERE id = 203944;
DELETE FROM gameobject WHERE id = 202364;
DELETE FROM gameobject WHERE id = 201994;
DELETE FROM gameobject WHERE id = 202023;
DELETE FROM gameobject WHERE id = 203881;
DELETE FROM gameobject WHERE id = 206865;
DELETE FROM gameobject WHERE id = 206594;
DELETE FROM gameobject WHERE id = 201991;
DELETE FROM gameobject WHERE id = 203932;
DELETE FROM gameobject WHERE id = 203924;
DELETE FROM gameobject WHERE id = 203945;
DELETE FROM gameobject WHERE id = 202365;
DELETE FROM gameobject WHERE id = 202026;
DELETE FROM gameobject WHERE id = 203941;
DELETE FROM gameobject WHERE id = 203927;
DELETE FROM gameobject WHERE id = 203875;
DELETE FROM gameobject WHERE id = 207718;
DELETE FROM gameobject WHERE id = 203939;
DELETE FROM gameobject WHERE id = 203933;
DELETE FROM gameobject WHERE id = 206204;
DELETE FROM gameobject WHERE id = 203876;
DELETE FROM gameobject WHERE id = 203935;
DELETE FROM gameobject WHERE id = 203929;
DELETE FROM gameobject WHERE id = 203950;
DELETE FROM gameobject WHERE id = 207722;
DELETE FROM gameobject WHERE id = 197015;
DELETE FROM gameobject WHERE id = 203955;
DELETE FROM gameobject WHERE id = 203889;
DELETE FROM gameobject WHERE id = 203943;
DELETE FROM gameobject WHERE id = 203891;
DELETE FROM gameobject WHERE id = 206205;
DELETE FROM gameobject WHERE id = 203936;
DELETE FROM gameobject WHERE id = 202025;
DELETE FROM gameobject WHERE id = 204873;
DELETE FROM gameobject WHERE id = 203930;
DELETE FROM gameobject WHERE id = 205164;
DELETE FROM gameobject WHERE id = 203951;
DELETE FROM gameobject WHERE id = 207416;
DELETE FROM gameobject WHERE id = 197039;
DELETE FROM gameobject WHERE id = 207723;
DELETE FROM gameobject WHERE id = 206623;
DELETE FROM gameobject WHERE id = 203925;
DELETE FROM gameobject WHERE id = 202027;
DELETE FROM gameobject WHERE id = 203938;
DELETE FROM gameobject WHERE id = 197041;
DELETE FROM gameobject WHERE id = 201995;
DELETE FROM gameobject WHERE id = 197077;
DELETE FROM gameobject WHERE id = 203896;
DELETE FROM gameobject WHERE id = 203934;
DELETE FROM gameobject WHERE id = 197096;
DELETE FROM gameobject WHERE id = 203940;
DELETE FROM gameobject WHERE id = 204796;
DELETE FROM gameobject WHERE id = 197042;
DELETE FROM gameobject WHERE id = 203878;
DELETE FROM gameobject WHERE id = 197038;
DELETE FROM gameobject WHERE id = 207691;
DELETE FROM gameobject WHERE id = 203890;
DELETE FROM gameobject WHERE id = 203865;
DELETE FROM gameobject WHERE id = 203243;
DELETE FROM gameobject WHERE id = 206037;
DELETE FROM gameobject WHERE id = 194142;
DELETE FROM gameobject WHERE id = 203931;
DELETE FROM gameobject WHERE id = 197034;
DELETE FROM gameobject WHERE id = 203897;
DELETE FROM gameobject WHERE id = 197040;
DELETE FROM gameobject WHERE id = 203988;
DELETE FROM gameobject WHERE id = 203879;
DELETE FROM gameobject WHERE id = 203887;
DELETE FROM gameobject WHERE id = 203926;
DELETE FROM gameobject WHERE id = 203864;
DELETE FROM gameobject WHERE id = 203948;
DELETE FROM gameobject WHERE id = 207720;
DELETE FROM gameobject WHERE id = 197010;
DELETE FROM gameobject WHERE id = 203953;
DELETE FROM gameobject WHERE id = 203952;
DELETE FROM gameobject WHERE id = 197035;
DELETE FROM gameobject WHERE id = 203898;
DELETE FROM gameobject WHERE id = 203942;
DELETE FROM gameobject WHERE id = 203880;
DELETE FROM gameobject WHERE id = 203888;
DELETE FROM gameobject WHERE id = 203928;
DELETE FROM gameobject WHERE id = 203866;
DELETE FROM gameobject WHERE id = 203949;
DELETE FROM gameobject WHERE id = 207721;
DELETE FROM gameobject WHERE id = 197037;
DELETE FROM gameobject WHERE id = 203954;
DELETE FROM gameobject WHERE id = 197036;
DELETE FROM gameobject WHERE id = 194139;
DELETE FROM gameobject WHERE id = 204228;
DELETE FROM gameobject WHERE id = 195058;
DELETE FROM gameobject WHERE id = 194144;
DELETE FROM gameobject WHERE id = 204774;
DELETE FROM gameobject WHERE id = 203947;
DELETE FROM gameobject WHERE id = 203987;
DELETE FROM gameobject WHERE id = 202363;
DELETE FROM gameobject WHERE id = 202028;
DELETE FROM gameobject WHERE id = 197033;
DELETE FROM gameobject WHERE id = 197043;
DELETE FROM gameobject WHERE id = 195174;
DELETE FROM gameobject WHERE id = 195176;
DELETE FROM gameobject WHERE id = 205938;
DELETE FROM gameobject WHERE id = 205078;
DELETE FROM gameobject WHERE id = 204047;
DELETE FROM gameobject WHERE id = 205004;
DELETE FROM gameobject WHERE id = 204379;
DELETE FROM gameobject WHERE id = 205586;
DELETE FROM gameobject WHERE id = 205921;
DELETE FROM gameobject WHERE id = 204379;
DELETE FROM gameobject WHERE id = 195175;
DELETE FROM gameobject WHERE id = 195177;
DELETE FROM gameobject WHERE id = 203937;
DELETE FROM gameobject WHERE id = 202024;
DELETE FROM gameobject WHERE id = 207719;
DELETE FROM gameobject WHERE id = 203946;  
DELETE FROM gameobject_template WHERE entry=195074;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`)
values
('195074','3','323','Melithar s Stolen Bags','','','','0','0','1.3','46700','0','0','0','0','0','14','195074','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340');
-- Fix by Giridhar

-- (Deadmines) 
-- Stormwind (Guard-Defender Equip)
UPDATE `creature_equip_template` SET `equipentry1`=1899, `equipentry2`=143 WHERE `entry`=3;
UPDATE `creature_template` SET `equipment_id`=3,`minlevel`=20, `maxlevel`=20 WHERE `entry`=50595;
-- Crime Scene Alarm-O-Bot
UPDATE `creature_template` SET `minlevel`=21, `maxlevel`=24 WHERE `entry`=46613;
-- Shattered Hand Assassin(Deadmines)
UPDATE `creature_template` SET `faction_A`=2159, `faction_H`=2159 WHERE `entry`=46890;
-- Kagtha Faction
UPDATE `creature_template` SET `faction_A`=2159, `faction_H`=2159 WHERE `entry`=46889;
-- Stormwind Investigator
UPDATE `creature_template` SET `minlevel`=21, `maxlevel`=24 WHERE `entry`=46614;

-- Frostwing Halls 
-- delete custom templates
DELETE FROM `creature_template` WHERE `entry` IN (3678902,3678903,3712602,3712603,3712702,3712703,3713202,3713203,3713302,3713303,3713402,3713403,3812501,3812502,3812503);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (3678902,3678903,3712602,3712603);
DELETE FROM `creature_loot_template` WHERE `entry` IN (3712602,3712603);

-- Spire Frostwyrm
UPDATE `creature` SET `spawnMask`=15 WHERE `id`=37528;

-- equip templates
SET @EQUIP := 2422;
DELETE FROM `creature_equip_template` WHERE `entry`=@EQUIP;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(@EQUIP,39381,0,45872);

-- creature template updates
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=36789; -- Valithria Dreamwalker
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37126; -- Sister Svalna
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37127; -- Ymirjar Frostbinder
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37132; -- Ymirjar Battle-Maiden
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37133; -- Ymirjar Warlord
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37134; -- Ymirjar Huntress
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=38125; -- Ymirjar Deathbringer
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`unit_class`=1,`faction_A`=1665,`faction_H`=1665,`unit_flags`=0x20000000,`baseattacktime`=2000,`scale`=1,`RegenHealth`=0 WHERE `entry` IN (36789,38174); -- Valithria Dreamwalker
UPDATE `creature_template` SET `minlevel`=81,`maxlevel`=81,`unit_class`=2,`faction_A`=16,`faction_H`=16,`unit_flags`=0,`baseattacktime`=2000,`scale`=1 WHERE `entry` IN (37868,38167,38725,38735); -- Risen Archmage
UPDATE `creature_template` SET `minlevel`=60,`maxlevel`=60,`unit_class`=1,`faction_A`=14,`faction_H`=14,`unit_flags`=0x2000000,`baseattacktime`=2000,`scale`=1 WHERE `entry`=38752; -- Green Dragon Combat Trigger
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`unit_class`=2,`faction_A`=2209,`faction_H`=2209,`unit_flags`=0x0040,`dynamicflags`=8,`baseattacktime`=2000,`equipment_id`=10084,`scale`=1,`speed_run`=2.285714,`speed_walk`=1.6,`InhabitType`=7 WHERE `entry` IN (37126,38258); -- Sister Svalna
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=8,`faction_A`=2209,`faction_H`=2209,`unit_flags`=0x8040,`dynamicflags`=8,`baseattacktime`=2000,`equipment_id`=93,`scale`=1 WHERE `entry` IN (37127,38126); -- Ymirjar Frostbinder
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=1,`faction_A`=2209,`faction_H`=2209,`unit_flags`=0x8040,`dynamicflags`=8,`baseattacktime`=2000,`equipment_id`=10128,`scale`=1,`speed_walk`=1.2 WHERE `entry` IN (37132,38132); -- Ymirjar Battle-Maiden
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=1,`faction_A`=2209,`faction_H`=2209,`unit_flags`=0x8040,`dynamicflags`=8,`baseattacktime`=2000,`equipment_id`=358,`scale`=1,`speed_run`=1.428571 WHERE `entry` IN (37133,38133); -- Ymirjar Warlord
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=2,`faction_A`=2209,`faction_H`=2209,`unit_flags`=0x8040,`dynamicflags`=8,`baseattacktime`=2000,`equipment_id`=@EQUIP,`scale`=1,`speed_run`=1.285714 WHERE `entry` IN (37134,38131); -- Ymirjar Huntress
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=2,`faction_A`=2209,`faction_H`=2209,`unit_flags`=0x8000,`dynamicflags`=8,`baseattacktime`=2000,`equipment_id`=93,`scale`=1 WHERE `entry` IN (38125,38130); -- Ymirjar Deathbringer
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=1,`faction_A`=2209,`faction_H`=2209,`baseattacktime`=2000,`scale`=1 WHERE `entry`=38154; -- Warhawk

-- model updates
UPDATE `creature_model_info` SET `bounding_radius`=2,`combat_reach`=20,`gender`=2 WHERE `modelid`=30318; -- Valithria Dreamwalker
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=7919; -- Risen Archmage
UPDATE `creature_model_info` SET `bounding_radius`=0.93,`combat_reach`=12,`gender`=1 WHERE `modelid`=30521; -- Sister Svalna
UPDATE `creature_model_info` SET `bounding_radius`=0.403,`combat_reach`=1.3,`gender`=1 WHERE `modelid`=27548; -- Ymirjar Frostbinder
UPDATE `creature_model_info` SET `bounding_radius`=0.403,`gender`=1 WHERE `modelid`=27549; -- Ymirjar Battle-Maiden
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=1.5, `gender`=0 WHERE `modelid`=26623; -- Ymirjar Warlord
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1,`gender`=1 WHERE `modelid`=25771; -- Ymirjar Warlord
UPDATE `creature_model_info` SET `bounding_radius`=0.403,`combat_reach`=1.3, `gender`=1 WHERE `modelid`=27548; -- Ymirjar Deathbringer

-- Gunship Armory (delete wrong spawn)
DELETE FROM `gameobject` WHERE `id`=202178;

-- Mode specific objects (instance portal) reused deleted guids
DELETE FROM `gameobject` WHERE `id` IN (202315,202316,202317,202318);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(150308,202318,631,5,1,82.1685,2211.82,33.0959,3.14159,0,0,1,0,6000,100,1),
(150310,202316,631,10,1,82.1685,2211.82,33.0959,3.14159,0,0,1,0,6000,100,1),
(150321,202317,631,5,1,82.1685,2211.82,33.0959,3.14159,0,0,1,0,6000,100,1),
(150326,202315,631,10,1,82.1685,2211.82,33.0959,3.14159,0,0,1,0,6000,100,1);

UPDATE `gameobject_template` SET `faction`=114,`flags`=0x00000020 WHERE entry IN (202181,202182,202183,201919,201920);
UPDATE `gameobject` SET `state`=0,animprogress=255 WHERE `id` IN (202181,202182,202183,201919,201920);
UPDATE `gameobject` SET `spawnMask`=15 WHERE `id` IN (201825,201583,201374,201911,201880,202211,201777,201772,201774,201771,201814,201816,202220,201811,201812,202079,202223,202235,202242,202243,202244,202245,202246);

SET @GUID := 137746;
DELETE FROM `creature` WHERE (`position_x` BETWEEN 4330 AND 4380) AND (`position_y` BETWEEN 2470 AND 2650) AND `position_z` > 350;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+37;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+00,36789,631,05,1,0,0,4203.65,2483.89,364.961,5.5152400,604800,0,0,06000003,0,0,0,0,0,0), -- Valithria Dreamwalker
(@GUID+01,36789,631,10,1,0,0,4203.65,2483.89,364.961,5.5152400,604800,0,0,17999997,0,0,0,0,0,0), -- Valithria Dreamwalker
(@GUID+02,37868,631,15,1,0,0,4222.86,2504.58,364.960,3.9095400,604800,0,0,0,0,0,0,0,0,0), -- Risen Archmage
(@GUID+03,37868,631,15,1,0,0,4223.40,2465.11,364.952,2.3911000,604800,0,0,0,0,0,0,0,0,0), -- Risen Archmage
(@GUID+04,37868,631,15,1,0,0,4230.44,2478.56,364.953,2.9321500,604800,0,0,0,0,0,0,0,0,0), -- Risen Archmage
(@GUID+05,37868,631,15,1,0,0,4230.53,2490.22,364.957,3.3684900,604800,0,0,0,0,0,0,0,0,0), -- Risen Archmage
(@GUID+06,38752,631,15,1,0,0,4203.89,2484.23,364.956,0.0000000,604800,0,0,0,0,0,0,0,0,0), -- Green Dragon Combat Trigger
(@GUID+07,37126,631,15,1,0,0,4356.71,2484.33,371.531,1.5708000,604800,0,0,0,0,0,0,0,0,0), -- Sister Svalna
(@GUID+08,37127,631,15,1,0,0,4346.72,2607.90,351.101,3.2342600,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Frostbinder
(@GUID+09,37127,631,15,1,0,0,4371.41,2570.52,351.101,0.0808906,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Frostbinder
(@GUID+10,37132,631,15,1,0,0,4349.24,2624.60,351.101,1.5592400,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Battle-Maiden
(@GUID+11,37132,631,15,1,0,0,4365.26,2624.06,351.101,1.6023200,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Battle-Maiden
(@GUID+12,37132,631,15,1,0,0,4347.20,2637.91,351.100,1.3406800,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Battle-Maiden
(@GUID+13,37132,631,15,1,0,0,4367.90,2638.14,351.100,1.7765700,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Battle-Maiden
(@GUID+14,37132,631,15,1,0,0,4345.88,2577.64,351.101,1.5299500,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Battle-Maiden
(@GUID+15,37132,631,15,1,0,0,4368.03,2578.97,351.101,1.6909600,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Battle-Maiden
(@GUID+16,37132,631,15,1,0,0,4369.26,2525.06,358.433,1.7891300,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Battle-Maiden
(@GUID+17,37132,631,15,1,0,0,4343.78,2525.43,358.433,1.2629100,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Battle-Maiden
(@GUID+18,37133,631,15,1,0,0,4366.83,2510.30,358.518,1.6231600,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Warlord
(@GUID+19,37133,631,15,1,0,0,4356.85,2636.39,351.101,1.5692200,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Warlord
(@GUID+20,37133,631,15,1,0,0,4346.98,2512.75,358.441,1.3571600,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Warlord
(@GUID+21,37133,631,15,1,0,0,4356.77,2524.27,358.433,1.5024600,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Warlord
(@GUID+22,37134,631,15,1,0,0,4351.66,2642.95,351.100,1.4035100,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Huntress
(@GUID+23,37134,631,15,1,0,0,4362.18,2642.97,351.100,1.5331000,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Huntress
(@GUID+24,37134,631,15,1,0,0,4363.48,2585.09,351.101,1.5849300,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Huntress
(@GUID+25,37134,631,15,1,0,0,4349.36,2584.54,351.101,1.6084900,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Huntress
(@GUID+26,37134,631,15,1,0,0,4350.65,2528.31,358.433,1.5299500,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Huntress
(@GUID+27,37134,631,15,1,0,0,4362.76,2527.67,358.433,1.4828200,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Huntress
(@GUID+28,38125,631,15,1,0,0,4369.75,2606.94,351.101,6.2462700,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Deathbringer
(@GUID+29,38125,631,15,1,0,0,4340.83,2572.01,351.101,3.1439400,7200,0,0,0,0,0,0,0,0,0), -- Ymirjar Deathbringer
(@GUID+30,38154,631,15,1,0,0,4360.11,2644.49,351.100,1.5880800,7200,0,0,0,0,0,0,0,0,0), -- Warhawk
(@GUID+31,38154,631,15,1,0,0,4355.22,2644.43,351.100,1.5841500,7200,0,0,0,0,0,0,0,0,0), -- Warhawk
(@GUID+32,38154,631,15,1,0,0,4359.36,2587.74,351.101,1.6477600,7200,0,0,0,0,0,0,0,0,0), -- Warhawk
(@GUID+33,38154,631,15,1,0,0,4354.53,2587.01,351.101,1.6438300,7200,0,0,0,0,0,0,0,0,0), -- Warhawk
(@GUID+34,38229,631,15,1,0,0,4358.06,2608.39,351.184,2.8626600,3600,5,0,0,0,0,1,0,0,0), -- Frozen Insect
(@GUID+35,38229,631,15,1,0,0,4351.09,2488.49,358.441,1.9373600,3600,5,0,0,0,0,1,0,0,0), -- Frozen Insect
(@GUID+36,38229,631,15,1,0,0,4356.68,2525.39,358.432,1.6956800,3600,5,0,0,0,0,1,0,0,0), -- Frozen Insect
(@GUID+37,38229,631,15,1,0,0,4352.72,2610.13,351.101,2.8266300,3600,5,0,0,0,0,1,0,0,0); -- Frozen Insect

-- creature addon
DELETE FROM `creature_addon` WHERE `guid` IN (131604,@GUID+7,@GUID+18,@GUID+19,@GUID+20,@GUID+21);
INSERT INTO `creature_addon` (`guid`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID+07,0x3000000,0x0000001,0, '70203 0'), -- Sister Svalna
(@GUID+18,0x0000000,0x0000001,0, '71244 0'), -- Ymirjar Warlord
(@GUID+19,0x0000000,0x0000001,0, '71244 0'), -- Ymirjar Warlord
(@GUID+20,0x0000000,0x0000001,0, '71244 0'), -- Ymirjar Warlord
(@GUID+21,0x0000000,0x0000001,0, '71244 0'); -- Ymirjar Warlord

-- Deadmines Spawns (REMADE)
DELETE FROM creature WHERE map=36;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -289.587, -489.575, 49.9126, 4.71239, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -308.819, -599.736, 48.2892, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -79.3229, -806.665, 39.93, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -79.2431, -834.884, 39.9758, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -194.476, -433.931, 53.5273, 4.85202, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 341, 48419, -267.22, -573.174, 50.7612, 1.97222, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -56.4115, -827.823, 42.0163, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48338, 36, 1, 1, 36119, 48338, -188.042, -497.33, 53.3696, 4.41967, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -45.6111, -851.63, 18.5623, 4.79965, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (4075, 36, 1, 1, 1141, 4075, -14.5733, -376.397, 60.595, 2.89547, 5000, 0, 0, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2438, 48419, -260.201, -571.132, 50.862, 1.8675, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -284.227, -550.545, 49.5303, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46903, 36, 1, 1, 5299, 46903, -59.4844, -405.837, 55.0932, 1.81514, 5000, 0, 0, 1544, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -205.571, -442.113, 59.5037, 3.67858, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48446, 36, 1, 1, 36147, 48446, -90.3924, -375.684, 58.0291, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46890, 36, 1, 1, 35340, 46890, -87.474, -819.863, 39.2913, 0, 5000, 0, 0, 1452, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2350, 48521, -124.783, -834.497, 16.9262, 5.98648, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -108.859, -843.837, 17.0549, 5.68977, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -62.6597, -823.653, 41.4015, 2.05949, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -187.845, -455.237, 65.2876, 2.61363, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -154.483, -532.689, 49.8082, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -180.252, -437.943, 54.7876, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -181.135, -443.258, 65.2601, 0.943512, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -49.3264, -730.056, 9.32048, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48440, 36, 1, 1, 30184, 48440, -204.576, -500.977, 52.4169, 1.309, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48451, 36, 1, 1, 36152, 48451, -136.896, -767.099, 4.0439, 0.942478, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48342, 36, 1, 1, 36116, 48342, -226.382, -488.74, 48.403, 2.52211, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -17.9792, -818.58, 19.8577, 2.37365, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48417, 36, 1, 1, 2448, 48417, -138.802, -578.325, 18.572, 3.10669, 5000, 0, 0, 1140, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -196.948, -427.533, 54.2706, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -206.753, -554.3, 51.3129, 5.13127, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48420, 36, 1, 1, 556, 48420, -295.382, -585.839, 49.4252, 0.244346, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48442, 36, 1, 1, 30185, 48442, -157.717, -520.205, 52.495, 2.30383, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48418, 36, 1, 1, 36140, 48418, -303.137, -586.967, 47.7649, 6.00393, 5000, 0, 0, 1140, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -51.8299, -829.847, 42.455, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48450, 36, 1, 1, 36150, 48450, -84.2229, -728.545, 19.0409, 1.46836, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48441, 36, 1, 1, 30186, 48441, -236.847, -489.092, 49.9486, 4.39823, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -250.729, -584.616, 51.2278, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -168.455, -396.632, 57.568, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48441, 36, 1, 1, 30186, 48441, -154.549, -530.686, 49.8494, 3.71755, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48502, 36, 1, 1, 36165, 48502, -101.089, -673.014, 7.50165, 1.79769, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -185.151, -559.092, 19.3898, 3.07178, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48442, 36, 1, 1, 30185, 48442, -150.635, -518.189, 52.9936, 0.767945, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -126.455, -441.102, 55.5273, 4.43314, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48505, 36, 1, 1, 210, 48505, -127.726, -602.797, 16.1609, 1.93731, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (43778, 36, 1, 1, 35606, 43778, -209.837, -568.622, 21.0601, 1.97222, 5000, 0, 0, 10680, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -235.134, -569.219, 19.3898, 5.18363, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46903, 36, 1, 1, 5299, 46903, -81.9973, -784.703, 26.4822, 3.32525, 5000, 0, 0, 1668, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -90.4306, -375.743, 58.0161, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -47.6163, -808.856, 42.8273, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -104.384, -819.276, 38.0203, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -65.401, -833.352, 41.2017, 2.14675, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -179.307, -415.161, 55.0199, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 308, 48419, -282.951, -590.705, 51.0512, 2.60054, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48447, 36, 1, 1, 36148, 48447, -42.0898, -721.388, 20.8815, 0.519401, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48341, 36, 1, 1, 36115, 48341, -187.855, -497.553, 53.4452, 1.3065, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -187.719, -440.285, 53.5591, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -29.5, -846.29, 19.3106, 3.56047, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -212.672, -550.024, 51.3129, 3.78736, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48230, 36, 1, 1, 10704, 48230, -97.5538, -398.875, 58.4307, 2.56563, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -206.177, -608.375, 29.0938, 3.49066, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -158.859, -533.128, 52.419, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46890, 36, 1, 1, 35340, 46890, -46.9873, -384.88, 55.5515, 0.593508, 5000, 0, 0, 1452, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -289.809, -527.215, 49.8021, 1.62316, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -149.052, -523.596, 52.4815, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -85.6667, -808.549, 39.4228, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -200.88, -440.773, 53.4445, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -70.941, -835.523, 40.6859, 4.17134, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -146.592, -528.896, 52.0218, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -183.901, -430.757, 54.2875, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48442, 36, 1, 1, 30185, 48442, -193.194, -507.111, 53.2797, 5.34071, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -32.6267, -795.549, 19.089, 0.698132, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2349, 48521, -89.0278, -854.734, 17.305, 2.49582, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (4075, 36, 1, 1, 1418, 4075, -254.311, -587.275, 51.149, 5.87235, 5000, 0, 0, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -182.872, -574.391, 48.223, 3.64774, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -12.0556, -740.252, 9.10946, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -123.663, -395.759, 58.4454, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -214.504, -443.613, 57.2767, 1.80172, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48230, 36, 1, 1, 10704, 48230, -168.764, -401.113, 57.2797, 0.610865, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46890, 36, 1, 1, 35340, 46890, -75.75, -825.137, 40.2247, 0.017453, 5000, 0, 0, 1452, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48447, 36, 1, 1, 36148, 48447, -4.89219, -744.454, 17.0266, 2.73823, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48505, 36, 1, 1, 184, 48505, -110.326, -617.406, 13.6003, 3.10669, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47677, 36, 1, 1, 11686, 47677, -193.358, -442.031, 53.7168, 1.69297, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -66.8785, -820.351, 40.9776, 0.05236, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48266, 36, 1, 1, 21788, 48266, -82.3142, -775.5, 26.8933, 1.72788, 5000, 0, 0, 328, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -181.766, -416.976, 54.7594, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -189.061, -422.387, 54.1955, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2350, 48521, -122.405, -794.535, 16.9422, 1.53589, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48442, 36, 1, 1, 30185, 48442, -182.979, -503.938, 53.5592, 4.83456, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -48.2222, -786.179, 18.42, 1.09956, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48341, 36, 1, 1, 36115, 48341, -226.518, -488.741, 48.503, 2.52211, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48446, 36, 1, 1, 36147, 48446, 0.512153, -768.229, 9.80134, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -106.967, -660.372, 7.50513, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -207.479, -441.516, 54.0559, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48421, 36, 1, 1, 2317, 48421, -306.72, -606.372, 47.8699, 4.20624, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -234.089, -587.472, 19.3898, 3.59538, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48445, 36, 1, 1, 30262, 48445, -300.974, -504.708, 49.4726, 6.16101, 5000, 0, 0, 1806, 326, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48418, 36, 1, 1, 36141, 48418, -289.589, -562.243, 49.0151, 6.00393, 5000, 0, 0, 1140, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -47.4358, -831.122, 42.8763, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2350, 48521, -81.6823, -780.378, 17.3339, 1.75935, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48445, 36, 1, 1, 30262, 48445, -256.983, -478.148, 49.5233, 6.16101, 5000, 0, 0, 1806, 326, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -66.8785, -820.351, 40.9776, 0.05236, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -206.377, -511.821, 51.6158, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -72.0347, -790.8, 39.3369, 1.78024, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -72.559, -731.221, 8.5869, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48505, 36, 1, 1, 210, 48505, -98.4774, -672.389, 7.50265, 1.23918, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2438, 48419, -285.405, -567.736, 49.417, 6.00393, 5000, 0, 0, 1800, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36135, 48279, -217.524, -502.311, 50.8115, 3.56047, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48230, 36, 1, 1, 10704, 48230, -135.946, -405.498, 58.1496, 3.00197, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48502, 36, 1, 1, 36168, 48502, -133.95, -629.488, 14.1015, 1.79769, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -209.266, -569.715, 27.3194, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -217.95, -598.425, 23.3113, 2.02458, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -149.479, -533.724, 49.7047, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -55.0469, -805.922, 42.1087, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -101.174, -824.677, 38.2535, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -212.122, -570.392, 26.4326, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48230, 36, 1, 1, 10704, 48230, -126.363, -392.281, 58.8804, 0.855211, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -56.9514, -832.986, 41.9731, 2.05949, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2438, 48419, -288.335, -592.95, 49.5437, 1.98968, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -76.5903, -787.217, 26.2657, 5.42797, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -211.063, -463.714, 54.0187, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -105.021, -843.693, 17.1262, 4.17134, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -207.793, -550.951, 51.3129, 3.52556, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -211.707, -561.788, 21.0601, 6.14356, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -96.1215, -662.59, 7.49677, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46890, 36, 1, 1, 35340, 46890, -82.8833, -380.416, 56.5812, 2.71094, 5000, 0, 0, 1452, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47296, 36, 1, 1, 33002, 47296, -303.025, -516.463, 55.8199, 0.174533, 5000, 0, 0, 3560, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -211.88, -568.484, 23.0489, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -228.181, -491.986, 48.785, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -94.2292, -809.929, 38.7469, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -62.6597, -823.653, 41.4015, 2.05949, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -193.269, -442.016, 53.7124, 1.69297, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -302.448, -504.391, 49.5412, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -183.608, -446.207, 54.8357, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48445, 36, 1, 1, 30244, 48445, -278.099, -502.125, 49.7471, 3.24631, 5000, 0, 0, 1806, 326, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -100.849, -703.773, 9.29407, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -234.035, -587.694, 51.327, 1.64061, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48447, 36, 1, 1, 36148, 48447, 4.16673, -771.456, 21.6317, 5.7171, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (4075, 36, 1, 1, 2176, 4075, -134.399, -792.648, 17.47, 2.70032, 5000, 0, 0, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -214.366, -587.153, 21.0601, 6.24828, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -276.222, -579.795, 50.4263, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -193.694, -445.674, 54.2208, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48266, 36, 1, 1, 21788, 48266, -58.6424, -787.132, 39.3505, 1.39626, 5000, 0, 0, 328, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -175.089, -400.432, 57.5112, 2.46091, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46890, 36, 1, 1, 35340, 46890, -75.6493, -814.5, 40.2176, 6.26573, 5000, 0, 0, 1452, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48266, 36, 1, 1, 21788, 48266, -72.1059, -786.894, 39.5538, 1.64061, 5000, 0, 0, 328, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48502, 36, 1, 1, 36166, 48502, -144.295, -575.267, 19.1305, 3.40339, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -214.543, -441.151, 54.6617, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -64.4392, -819.938, 41.2188, 0.05236, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -19.5833, -832.882, 19.8021, 3.50811, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48441, 36, 1, 1, 30186, 48441, -220.229, -503.561, 50.3507, 3.29867, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -204.993, -456.09, 54.2894, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -201.273, -462.531, 54.3655, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2349, 48521, -123.168, -790.698, 17.2485, 5.84685, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48341, 36, 1, 1, 36115, 48341, -226.463, -488.783, 48.603, 2.52211, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48447, 36, 1, 1, 36148, 48447, -57.8591, -726.924, 16.8742, 2.57896, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48502, 36, 1, 1, 36168, 48502, -128.217, -627.396, 13.4368, 2.19912, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -216.793, -571.972, 21.0601, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47404, 36, 1, 1, 35605, 47404, -229.724, -590.372, 19.3898, 0.715585, 5000, 0, 0, 3280, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48420, 36, 1, 1, 2441, 48420, -309.809, -587.983, 48.2952, 1.91986, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36133, 48279, -153.231, -531.007, 49.7449, 3.1765, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -198.247, -571.009, 21.0601, 3.52556, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -57.3889, -822.721, 41.915, 3.24631, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48447, 36, 1, 1, 36148, 48447, -98.5933, -692.422, 16.5591, 1.02029, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36133, 48279, -159.293, -507.467, 53.403, 0.226893, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -56.901, -818.264, 41.954, 2.46091, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -146.743, -586.997, 18.936, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2350, 48521, -35.6976, -791.144, 18.8755, 5.62302, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48343, 36, 1, 1, 36117, 48343, -187.859, -497.821, 53.5452, 1.3065, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48417, 36, 1, 1, 36164, 48417, -100.878, -676.349, 7.49962, 1.78024, 5000, 0, 0, 1140, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48441, 36, 1, 1, 30186, 48441, -147.781, -532.668, 50.3866, 5.8294, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -116.497, -420.271, 56.8943, 0.907571, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48502, 36, 1, 1, 36168, 48502, -143.554, -582.24, 18.8237, 2.9147, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -202.276, -571.061, 21.0601, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2444, 48419, -277.901, -597.014, 51.5949, 5.58505, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -182.821, -485.785, 54.1321, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -60, -807.571, 41.6455, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -99.684, -818.974, 38.3542, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -208.491, -576.698, 27.9501, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -140.661, -409.825, 58.8828, 3.735, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -53.2882, -810.453, 42.2844, 2.47837, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -228.839, -561.601, 51.3129, 3.45575, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -88.4253, -724.722, 8.67503, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48341, 36, 1, 1, 36115, 48341, -187.876, -497.62, 53.5452, 1.3065, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48446, 36, 1, 1, 36147, 48446, -72.559, -731.221, 8.5869, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -216.05, -578.45, 21.0601, 0.593412, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -127.288, -599.422, 16.8903, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46889, 36, 1, 1, 35333, 46889, -66.2517, -401.241, 54.2756, 1.51844, 5000, 0, 0, 2865, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47297, 36, 1, 1, 33003, 47297, -302.361, -516.346, 52.0315, 0.174533, 5000, 0, 0, 7120, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -208.552, -568.122, 25.2074, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -136.859, -630.3, 14.8651, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -119.554, -791.314, 17.193, 2.86234, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -203.391, -431.139, 54.4389, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -62.6927, -814.031, 41.3843, 4.32842, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -149.915, -524.575, 52.2205, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -197.222, -453.622, 54.8957, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48442, 36, 1, 1, 30185, 48442, -168.326, -510.337, 53.5563, 4.71239, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -22.316, -833.927, 19.6427, 0.139626, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -225.444, -566.316, 51.3129, 3.9619, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -121.691, -835.438, 16.9671, 2.6529, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (4075, 36, 1, 1, 1418, 4075, -92.6304, -402.809, 57.7553, 0.505063, 5000, 0, 0, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48445, 36, 1, 1, 30244, 48445, -257.16, -486.394, 49.5231, 0, 5000, 0, 0, 1806, 326, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -153.854, -533.601, 49.6608, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -19.1372, -813.344, 19.793, 1.46608, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -177.921, -433.079, 63.6494, 1.12896, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -140.064, -399.931, 58.3888, 1.5708, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46906, 36, 1, 1, 29346, 46906, -66.7257, -804.813, 41.0256, 4.97419, 5000, 0, 0, 800, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48266, 36, 1, 1, 21788, 48266, -30.2622, -793.069, 19.237, 0.802851, 5000, 0, 0, 328, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36132, 48279, -203.663, -502.885, 52.9165, 2.19912, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -190.347, -431.764, 53.7694, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48446, 36, 1, 1, 36147, 48446, -12.0556, -740.252, 9.10946, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48440, 36, 1, 1, 30184, 48440, -178.653, -491.51, 54.4003, 6.23082, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -195.924, -436.646, 53.4248, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -249.444, -492.528, 49.2208, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48447, 36, 1, 1, 36148, 48447, -94.4733, -714.614, 20.7427, 5.11292, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48340, 36, 1, 1, 36114, 48340, -226.403, -488.768, 48.553, 2.52211, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2350, 48521, -32.0191, -847.84, 19.1876, 0.558505, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48417, 36, 1, 1, 36164, 48417, -129.417, -633.34, 13.2763, 1.78024, 5000, 0, 0, 1140, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -205.2, -561.354, 21.0601, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47403, 36, 1, 1, 35604, 47403, -182.743, -565.969, 19.3898, 3.35103, 5000, 0, 0, 3280, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -112.92, -445.181, 55.6213, 5.39307, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2444, 48419, -283.868, -602.792, 49.859, 5.44543, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -51.8837, -833.491, 42.4604, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -107.352, -847.233, 17.0334, 1.0821, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48445, 36, 1, 1, 30244, 48445, -290.559, -490.45, 49.9544, 1.37881, 5000, 0, 0, 1806, 326, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -72.9931, -825.99, 40.4834, 0.244346, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2438, 48419, -270.012, -585.599, 50.186, 6.00393, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -81.4913, -779.387, 26.7951, 1.79769, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48342, 36, 1, 1, 36116, 48342, -187.807, -497.68, 53.3452, 1.3065, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48417, 36, 1, 1, 36163, 48417, -97.467, -675.726, 7.50242, 1.78024, 5000, 0, 0, 1140, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -108.866, -426.997, 55.5585, 1.3439, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -148.8, -406.87, 57.6224, 3.87463, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48502, 36, 1, 1, 36166, 48502, -131.684, -602.8, 15.7192, 1.65806, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -64.2552, -820.245, 41.2374, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46906, 36, 1, 1, 29346, 46906, -66.6233, -398.573, 54.6927, 4.85202, 5000, 0, 0, 800, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -192.785, -495.118, 53.5662, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -66.6615, -805.149, 41.0334, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -95.3628, -828.319, 38.6867, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -218.965, -565.441, 21.0601, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -165.851, -395.592, 57.4267, 1.98968, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -73.9705, -819.941, 40.3588, 4.38078, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -203, -589.443, 21.0601, 4.01426, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -180.807, -561.872, 51.3129, 0.506145, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -124.016, -809.231, 16.9686, 4.03171, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48340, 36, 1, 1, 36114, 48340, -187.841, -497.671, 53.4952, 1.3065, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48446, 36, 1, 1, 36147, 48446, -49.3264, -730.056, 9.32048, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -183.33, -593.04, 40.1064, 0.314159, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -109.484, -621.764, 14.7253, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46903, 36, 1, 1, 5299, 46903, -53.5035, -402.894, 55.534, 2.40855, 5000, 0, 0, 1544, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -289.16, -505.155, 50.0993, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -206.163, -568.849, 24.6352, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -275.771, -502.406, 50.0816, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2349, 48521, -91.2517, -852.661, 17.2657, 5.55015, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47282, 36, 1, 1, 11686, 47282, -188.757, -452.146, 54.5701, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -67.6128, -814.219, 40.944, 3.76991, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -101.122, -813.936, 38.2438, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -153.231, -532.743, 49.6474, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -181.127, -423.819, 54.8461, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36135, 48279, -185.141, -501.458, 53.2657, 5.44543, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2350, 48521, -31.9462, -845.813, 19.1758, 6.17846, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48278, 36, 1, 1, 30187, 48278, -159.908, -529.783, 52.3288, 3.01942, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48266, 36, 1, 1, 21788, 48266, -40.0035, -793.302, 39.4754, 1.0472, 5000, 0, 0, 328, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (4075, 36, 1, 1, 1418, 4075, -200.419, -436.422, 53.3609, 4.6984, 5000, 0, 0, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36133, 48279, -234.918, -487.356, 48.5705, 3.80482, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -98.1962, -388.095, 58.9235, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2347, 48522, -59.0538, -791.024, 39.1883, 1.37881, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -68.1302, -822.918, 40.888, 4.08407, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -175.354, -433.016, 55.9103, 5.40378, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48266, 36, 1, 1, 21788, 48266, -122.925, -388.813, 59.0769, 0.401426, 5000, 0, 0, 328, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -48.3003, -852.727, 18.4557, 5.39307, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48445, 36, 1, 1, 30261, 48445, -275.003, -519.023, 49.9407, 0.698132, 5000, 0, 0, 1806, 326, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2444, 48419, -294.177, -607.531, 47.7152, 4.72984, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -73.6458, -814.604, 40.402, 3.97935, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2350, 48521, -121.389, -832.83, 17.0271, 4.06662, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36135, 48279, -194.712, -491.557, 53.7048, 3.03687, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -176.099, -431.241, 55.2092, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -179.148, -425.917, 55.0343, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -60.9792, -835.979, 41.5982, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48446, 36, 1, 1, 36147, 48446, -30.6337, -727.731, 8.52102, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48351, 36, 1, 1, 36120, 48351, -215.396, -499.653, 49.7591, 2.51884, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48230, 36, 1, 1, 10704, 48230, -115.431, -431.451, 55.0773, 0, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48505, 36, 1, 1, 184, 48505, -135.177, -633.656, 14.5447, 1.23918, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -208.259, -567.292, 21.0601, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47404, 36, 1, 1, 35605, 47404, -205.535, -552.747, 19.3898, 4.53786, 5000, 0, 0, 3280, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48262, 36, 1, 1, 37382, 48262, -190.826, -425.172, 54.1097, 5.89921, 5000, 0, 0, 1968, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46889, 36, 1, 1, 35333, 46889, -100.824, -820.619, 38.2404, 4.63089, 5000, 0, 0, 2865, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -195.891, -600.521, 33.9845, 1.39626, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -75.5295, -831.818, 40.2749, 2.46091, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48266, 36, 1, 1, 21788, 48266, -46.901, -783.155, 18.4898, 1.16937, 5000, 0, 0, 328, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -163.313, -402.139, 57.0682, 5.02655, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36134, 48279, -168.495, -508.53, 53.5882, 4.90438, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -68.934, -829.365, 40.8772, 3.10669, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2444, 48419, -304.705, -579.278, 48.5992, 2.32129, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -87.7917, -786.304, 17.3169, 1.76278, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -97.0885, -391.076, 59.0574, 0.837758, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47677, 36, 1, 1, 11686, 47677, -63.7604, -820.811, 41.2875, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36135, 48279, -156.708, -519.698, 52.5334, 3.9968, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46890, 36, 1, 1, 35340, 46890, -82.5976, -369.945, 57.2399, 3.44135, 5000, 0, 0, 1452, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46902, 36, 1, 1, 35342, 46902, -57.0278, -403.214, 54.3313, 2.37365, 5000, 0, 0, 2715, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -292.052, -575.366, 48.8457, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -72.8733, -808.346, 40.4807, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -88.1024, -831.63, 39.2559, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -200.03, -565.434, 21.0601, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -61.9878, -829.885, 41.5003, 2.44346, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -223.089, -575.111, 21.0601, 3.68265, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, 0.512153, -768.229, 9.80134, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (4075, 36, 1, 1, 1418, 4075, -114.81, -644.915, 10.022, 2.37437, 5000, 0, 0, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48280, 36, 1, 1, 7110, 48280, -205.578, -561.946, 21.0601, 1.37881, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -158.8, -531.5, 52.4572, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (24935, 36, 1, 1, 22750, 24935, -55.8281, -405.351, 54.9577, 1.27409, 5000, 0, 0, 699, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -206.783, -429.919, 65.1862, 3.67857, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -169.663, -407.125, 57.6002, 5.88176, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46903, 36, 1, 1, 5299, 46903, -82.2208, -781.419, 26.6876, 3.28652, 5000, 0, 0, 1544, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -213.526, -496.017, 49.7937, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48446, 36, 1, 1, 36147, 48446, -88.4253, -724.722, 8.67503, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -203.043, -448.563, 54.1013, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -138.866, -412.375, 58.8345, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -203.56, -450.4, 65.2096, 3.33678, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48440, 36, 1, 1, 30184, 48440, -211.255, -512.712, 50.905, 5.23599, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2349, 48521, -53.0551, -792.299, 38.6337, 3.46492, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48441, 36, 1, 1, 30186, 48441, -197.111, -491.161, 54.0053, 3.28122, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36134, 48279, -151.997, -518.648, 52.7741, 0.593412, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -30.6337, -727.731, 8.52102, 0, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (4075, 36, 1, 1, 1141, 4075, -119.803, -425.179, 55.6102, 3.73371, 5000, 0, 0, 8, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48343, 36, 1, 1, 36117, 48343, -226.268, -488.837, 48.603, 2.52211, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48447, 36, 1, 1, 36148, 48447, -20.4904, -728.622, 18.437, 0.912876, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48446, 36, 1, 1, 36147, 48446, -100.849, -703.773, 9.29407, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47162, 36, 1, 1, 37410, 47162, -192.328, -450.245, 54.5215, 1.6057, 5000, 0, 0, 11375, 357, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48419, 36, 1, 1, 2438, 48419, -282.78, -557.547, 49.3715, 6.23082, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48278, 36, 1, 1, 30187, 48278, -220.377, -485.104, 49.332, 1.01229, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48439, 36, 1, 1, 7109, 48439, -222.319, -561.106, 19.3898, 2.35619, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48522, 36, 1, 1, 2348, 48522, -42.0486, -796.323, 39.4285, 0.994838, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48279, 36, 1, 1, 36134, 48279, -221.134, -488.538, 48.7575, 1.44862, 5000, 0, 0, 1640, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -150.373, -533.181, 49.6118, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48284, 36, 1, 1, 36085, 48284, -117.422, -412.74, 58.5219, 0, 5000, 0, 0, 3, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48441, 36, 1, 1, 30186, 48441, -157.344, -507.266, 53.5206, 0.645772, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47739, 36, 1, 1, 1305, 47739, -88.1319, -819.33, 39.2345, 0, 5000, 0, 0, 10680, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48505, 36, 1, 1, 184, 48505, -136.177, -603.12, 15.8018, 1.36136, 5000, 0, 0, 1312, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (45979, 36, 1, 1, 11686, 45979, -211.771, -564.958, 21.0601, 1.8675, 5000, 0, 0, 77490, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47403, 36, 1, 1, 35604, 47403, -228.675, -565.753, 19.3898, 5.98648, 5000, 0, 0, 3280, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -58.0365, -812.931, 41.8374, 5.67232, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -125.884, -393.607, 59.6515, 0.855211, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46902, 36, 1, 1, 35342, 46902, -85.1321, -783.436, 26.5951, 3.42386, 5000, 0, 0, 2715, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48418, 36, 1, 1, 36139, 48418, -281.726, -595.186, 50.3688, 4.2237, 5000, 0, 0, 1140, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47242, 36, 1, 1, 11686, 47242, -82.5642, -830.498, 39.7044, 5.39307, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48262, 36, 1, 1, 37382, 48262, -185.094, -428.71, 54.1505, 2.54818, 5000, 0, 0, 1968, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48421, 36, 1, 1, 2317, 48421, -303.453, -609.116, 47.7281, 3.40339, 5000, 0, 0, 984, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48521, 36, 1, 1, 2349, 48521, -103.72, -846.056, 17.1134, 3.07178, 5000, 0, 0, 1204, 1580, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48266, 36, 1, 1, 21788, 48266, -89.2569, -782.528, 17.2564, 1.55334, 5000, 0, 0, 328, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (48229, 36, 1, 1, 373, 48229, -105.993, -403.417, 59.9879, 4.71239, 5000, 0, 0, 300, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47626, 36, 1, 1, 35739, 47626, -66.7813, -837.863, 41.063, 4.60767, 5000, 0, 0, 8900, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (47284, 36, 1, 1, 11686, 47284, -181.012, -456.194, 54.7731, 0, 5000, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46613, 36, 1, 1, 0, 0, -54.9423, -380.117, 54.2159, 0.389306, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46613, 36, 1, 1, 0, 0, -19.3453, -375.108, 60.8902, 4.6391, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46613, 36, 1, 1, 0, 0, -46.0976, -390.719, 55.7053, 0.985423, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46890, 36, 1, 1, 0, 46890, -10.822, -381.801, 61.7296, 4.2307, 300, 0, 0, 1452, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46890, 36, 1, 1, 0, 46890, -19.3698, -382.516, 61.3321, 5.65618, 300, 0, 0, 1452, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (50595, 36, 1, 1, 0, 0, -19.3856, -382.425, 61.2815, 5.46498, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (50595, 36, 1, 1, 0, 0, -10.8074, -381.678, 61.7195, 4.38898, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (50595, 36, 1, 1, 0, 0, -46.7356, -384.701, 55.5368, 0.752586, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (50595, 36, 1, 1, 0, 0, -82.5855, -370.036, 57.1863, 3.60782, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (50595, 36, 1, 1, 0, 0, -82.9935, -380.318, 56.6257, 2.72818, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46614, 36, 1, 1, 0, 0, -65.4093, -353.747, 55.2116, 2.83702, 300, 0, 0, 84, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46614, 36, 1, 1, 0, 0, -46.989, -395.134, 55.4531, 5.28353, 300, 0, 0, 84, 0, 0, 0, 0, 0, 0);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (46614, 36, 1, 1, 0, 0, -49.7597, -399.682, 55.6046, 0.55936, 300, 0, 0, 84, 0, 0, 0, 0, 0, 0);

-- Can't Make An Omelette Without... / Shadraspawn Egg / LOOT
DELETE FROM gameobject_loot_template WHERE entry=204102 AND item=58252;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (204102, 58252, -100);
DELETE FROM creature_loot_template WHERE entry=42901 AND item=58252;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42901, 58252, -91);

-- Marez Cowl / Spawn
DELETE FROM creature WHERE id=2783;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (2783, 0, 1, 1, 4031, 0, -1644.56, -1933.05, 68.1722, 0.174533, 400, 0, 0, 1676, 0, 0, 0, 0, 0, 0);

-- Jeeves should be a vendor and a banker (to Engineers).
SET @Jeeves = 35642;
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`npcflag`=`npcflag`|4225|131072,`unit_flags`=`unit_flags`|768,`gossip_menu_id`=10667,`AIName`='' WHERE `entry`=@Jeeves; -- template updates
-- Jeeves gets the (player) faction of its summoner, 35 by default
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=0,`gender`=2 WHERE `modelid`=30076; -- addon data
DELETE FROM `creature_template_addon` WHERE `entry`=@Jeeves;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@Jeeves,0,33554432,1,0, '68054 0'); -- Aura: Pressing Engagement, bytes1: hover mode
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10667 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,10667,0,0,7,202,350,0,0, '', 'Jeeves: Bank requires Engineering 350');
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10667 AND `id` IN (0,1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`) VALUES
(10667,0,6,'I would like to check my deposit box.',9,131072), -- banker
(10667,1,1,'Let me browse your goods.',3,128); -- vendor
DELETE FROM `npc_vendor` WHERE `entry`=@Jeeves;
INSERT INTO `npc_vendor` (`entry`,`slot`,`item`,`maxcount`,`incrtime`,`ExtendedCost`) VALUES
(@Jeeves,1,41584,0,0,0), -- Frostbite Bullets
(@Jeeves,2,41586,0,0,0), -- Terrorshaft Arrow
(@Jeeves,3,44605,0,0,0), -- Wild Spineleaf
(@Jeeves,4,44614,0,0,0), -- Starleaf Seed
(@Jeeves,5,44615,0,0,0), -- Devout Candle
(@Jeeves,6,16583,0,0,0), -- Demonic Figurine
(@Jeeves,7,21177,0,0,0), -- Symbol of Kings
(@Jeeves,8,17020,0,0,0), -- Arcane Powder
(@Jeeves,9,37201,0,0,0), -- Corpse Dust
(@Jeeves,10,5565,0,0,0), -- Infernal Stone
(@Jeeves,11,17032,0,0,0), -- Rune of Portals
(@Jeeves,12,17030,0,0,0), -- Ankh
(@Jeeves,13,17033,0,0,0), -- Symbol of Divinity
(@Jeeves,14,17031,0,0,0); -- Rune of Teleportation
DELETE FROM `creature_ai_scripts` WHERE `id`=3564201; -- remove unneed EventAI script

-- Add quest relations flag to npc 36296 "Apothecary Hummel <Crown Chemical Co.>"
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=36296;

-- Pilfered Supplies
DELETE FROM gameobject_loot_template WHERE entry=203129;
INSERT INTO gameobject_loot_template (entry, item) VALUES (203129, 55151);

-- Use correct item for Tharon'ja quest item drop (Prophet's Enchanted Tiki)
UPDATE `creature_loot_template` SET `item`=43670 WHERE `entry`=31360 AND `item`=13249;

-- Courier Lanson (Sleep)
DELETE FROM creature_template_addon WHERE entry=27060;
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES (27060, 3);

-- Beezle Spinspark <Engineering Supplies>

DELETE FROM npc_vendor WHERE entry = 43708;
INSERT INTO npc_vendor
VALUES
(43708, 1, 5956, 0, 0, 0),
(43708, 2, 4382, 1, 43200, 0),
(43708, 3, 4371, 2, 43200, 0),
(43708, 4, 4364, 4, 43200, 0),
(43708, 5, 10648, 0, 0, 0),
(43708, 6, 4363, 2, 43200, 0),
(43708, 7, 4361, 2, 43200, 0),
(43708, 8, 10647, 0, 0, 0),
(43708, 9, 4389, 1, 43200, 0),
(43708, 10, 39684, 0, 0, 0),
(43708, 11, 4400, 0, 0, 0),
(43708, 12, 2901, 0, 0, 0),
(43708, 13, 4357, 4, 43200, 0),
(43708, 14,  4404, 3, 43200, 0),
(43708, 15, 3466, 0, 0, 0),
(43708, 16, 40533, 0, 0, 0),
(43708, 17, 2880, 0, 0, 0),
(43708, 18, 4399, 0, 0, 0);

-- Drakma <Wind Rider Keeper>
DELETE FROM npc_vendor WHERE entry = 44918; 
INSERT INTO npc_vendor
VALUES
(44918, 1, 25531, 0, 0, 0),
(44918, 2, 25533, 0, 0, 0),
(44918, 3, 25477, 0, 0, 0),
(44918, 4, 25532, 0, 0, 0),
(44918, 5, 25475, 0, 0, 0),
(44918, 6, 25476, 0, 0, 0),
(44918, 7, 25474, 0, 0, 0);
-- Naros <Plate Armor Merchant>
DELETE FROM npc_vendor WHERE entry = 46512; 
INSERT INTO npc_vendor
VALUES
(46512, 1, 2451, 0, 0, 0),
(46512, 2, 62260, 0, 0, 0),
(46512, 3, 62261, 0, 0, 0),
(46512, 4, 62262, 0, 0, 0),
(46512, 5, 62266, 0, 0, 0),
(46512, 6, 62263, 0, 0, 0),
(46512, 7, 62264, 0, 0, 0),
(46512, 8, 62265, 0, 0, 0),
(46512, 9, 62253, 0, 0, 0),
(46512, 10, 62254, 0, 0, 0),
(46512, 11, 62255, 0, 0, 0),
(46512, 12, 62256, 0, 0, 0),
(46512, 13, 62257, 0, 0, 0),
(46512, 14, 62259, 0, 0, 0),
(46512, 15, 62258, 0, 0, 0),
(46512, 16, 17190, 0, 0, 0);
-- Lutah <Mining Supplies>
DELETE FROM npc_vendor WHERE entry = 46358; 
INSERT INTO npc_vendor
VALUES
(46358, 1, 30746, 0, 0, 0), 
(46358, 2, 3857, 0, 0, 0),
(46358, 3, 20815, 0, 0, 0),
(46358, 4, 2901, 0, 0, 0),
(46358, 5, 20824, 0, 0, 0),
(46358, 6, 3466, 0, 0, 0),
(46358, 7, 2880, 0, 0, 0);
-- Punra <Blacksmithing Supplies>
DELETE FROM npc_vendor WHERE entry = 46359; 
INSERT INTO npc_vendor
VALUES
(46359, 1, 5956, 0, 0, 0),
(46359, 2, 3857, 0, 0, 0),
(46359, 3, 18567, 0, 0, 0),
(46359, 4, 2901, 0, 0, 0),
(46359, 5, 12162, 1, 43200, 0),
(46359, 6, 3466, 0, 0, 0),
(46359, 7, 2880, 0, 0, 0);
-- Fix By Giridhar
