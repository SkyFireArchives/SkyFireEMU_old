-- correct movements for eye of achrus (quest = id 12641) -death comes from high
-- commenting out any template changes,,, Templates are set by blizzard. no touching.

UPDATE creature_template SET modelid1 = 16925, modelid2 = 16925, scale = 2, flags_extra = 0 WHERE entry IN (28525,28542,28543,28544);
-- UPDATE quest_template SET ReqSpellCast1 = 51859, ReqSpellCast2 = 51859, ReqSpellCast3 = 51859, ReqSpellCast4 = 51859 WHERE entry = 12641;
-- UPDATE creature_template SET minlevel = 55, maxlevel = 55, Armor_mod = 9730, Speed_walk = 3, Speed_run = 6.48571 WHERE entry = 28511;

UPDATE creature SET phaseMask = 2 WHERE guid IN 
(128627,128628,128629,128630,128631,128632,128633,128634,128635,128636,128637,128643,128644,128645,128646,
128647,128648,128649,128650,128651,128652,128653,128654,128655,128656,128657,128658,128659,128660,128661,
128662,128663,128664,128665,128666,128667,128668,128669,128670,128671,128672,128673,128674,128675,128676,
128677,128678,128679,128680,128681,128682,128683,128684,128685,128687,128688,128689,128690,128691,128692,
128693,128694,128695,128696,128698,128699,128700,128701,128702,128705,128706,128707,128708,128709,128710,
128711,128712,128713,128714,128715,128716,128717,128718,128719,128720,128721,128722,128723,128724,128725,
128726,128727,128728,128729,128730,128731,128732,128733,128734,128735,128736,128737,128752,128796,128797,
128798,128799,128800,128801,128802,128958,129165,129168,129169,129170,129171,129474,129475,129476,129477,
129478,129479,129483,129484,129485,129486,129487,129488,129489,129490,129491);

UPDATE gameobject SET phaseMask = 3 WHERE guid IN (65961,65962,65963,65964,65965,65966);
UPDATE creature SET phaseMask = 3 WHERE guid = 128738;

-- script_text
DELETE FROM `script_texts` WHERE `npc_entry` = 28511;
INSERT  INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
('28511','-1666451',"The eye of Acherus moves toward it'\s target.",'0','0','0','0','0','0','0','0','0','0','0',"The eye of Acherus moves toward it'\s target.",'TEXT_EYE_LAUNCHED');

INSERT  INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
('28511','-1666452',"The eye of Acherus subject of your control.",'0','0','0','0','0','0','0','0','0','0','0',"The eye of Acherus subject of your control.",'TEXT_EYE_UNDER_CONTROL');

-- waypoint
insert  into `waypoints`(`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) values (28511,1,1750.83,-5873.79,147.227,'Eye_of_the_Archus');

-- ScriptName
UPDATE `creature_template` SET `ScriptName` = 'npc_eye_of_acherus' WHERE `entry` = '28511';
