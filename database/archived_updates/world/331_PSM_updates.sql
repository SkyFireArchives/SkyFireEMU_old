-- A Most Unusual Map
UPDATE gameobject_template SET data1=195205 WHERE entry=195205;
DELETE FROM gameobject_loot_template WHERE entry=195205;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(195205,46832,-100,0,1,1);

-- It's Up There!
UPDATE gameobject_template SET data1=203294 WHERE entry=203294;
DELETE FROM gameobject_loot_template WHERE entry=203294;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(203294,56091,-100,0,1,1);

-- Capturing Memories
UPDATE gameobject_template SET data1=203214 WHERE entry=203214;
DELETE FROM gameobject_loot_template WHERE entry=203214;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(203214,55971,-100,0,1,1);

-- Twilight Whelp [Torgull]
UPDATE creature_template SET faction_A=103, faction_H=103 WHERE entry=30890;
UPDATE creature_template SET faction_A=103, faction_H=103 WHERE entry=31540;

-- Quest: Imbuing the Headpiece [Nevyn]
UPDATE quest_template SET ReqItemId2=0, ReqItemCount2=0 WHERE entry=10782;

-- Lowered spawntime for Flying Machines Trainers at Shadowmoon Valley (NPCs 24868 and 25099) from 1800000 secs to 360 secs
UPDATE creature SET spawntimesecs=360 Where id IN (24868,25099);

-- Lowered spawntime for NPC "Gnarlhide" from 7200 secs to 900 secs
UPDATE creature SET spawntimesecs=900 WHERE id=30003;

-- A Most Unusual Map
UPDATE gameobject_template SET data1=195205 WHERE entry=195205;
DELETE FROM gameobject_loot_template WHERE entry=195205;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(195205,46832,-100,0,1,1);

-- It's Up There!
UPDATE gameobject_template SET data1=203294 WHERE entry=203294;
DELETE FROM gameobject_loot_template WHERE entry=203294;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(203294,56091,-100,0,1,1);

-- Capturing Memories
UPDATE gameobject_template SET data1=203214 WHERE entry=203214;
DELETE FROM gameobject_loot_template WHERE entry=203214;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(203214,55971,-100,0,1,1);

-- Seen Better Days
UPDATE gameobject_template SET data1=203374 WHERE entry=203374;
DELETE FROM gameobject_loot_template WHERE entry=203374;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(203374,56186,-100,0,1,1);

-- Breaking the Siege
UPDATE gameobject_template SET data1=202136 WHERE entry=202136;
DELETE FROM gameobject_loot_template WHERE entry=202136;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(202136,50445,-100,0,1,1);

-- Pick-a-Part
UPDATE gameobject_template SET data1=202477 WHERE entry=202477;
DELETE FROM gameobject_loot_template WHERE entry=202477;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(202477,52285,-100,0,1,1);

-- Hands Off Me Dig!
UPDATE gameobject_template SET data1=202533 WHERE entry=202533;
DELETE FROM gameobject_loot_template WHERE entry=202533;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(202533,52360,-100,0,1,1);

UPDATE gameobject_template SET data1=202542 WHERE entry=202542;
DELETE FROM gameobject_loot_template WHERE entry=202542;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(202542,52469,-100,0,1,1);

-- The Taurajo Briefs
UPDATE gameobject_template SET data1=202467 WHERE entry=202467;
DELETE FROM gameobject_loot_template WHERE entry=202467;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(202467,52277,-100,0,1,1);

-- Trol'kalar
UPDATE gameobject_template SET data1=203450 WHERE entry=203450;
DELETE FROM gameobject_loot_template WHERE entry=203450;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(203450,56804,-100,0,1,1);

-- The Fate of Kurzen
UPDATE gameobject_template SET data1=204826 WHERE entry=204826;
DELETE FROM gameobject_loot_template WHERE entry=204826;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204826,60214,-100,0,1,1);
UPDATE gameobject_template SET data1=204827 WHERE entry=204827;
DELETE FROM gameobject_loot_template WHERE entry=204827;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204827,60215,-100,0,1,1);

-- Ogre Thieves
UPDATE gameobject_template SET data1=119 WHERE entry=119;
DELETE FROM gameobject_loot_template WHERE entry=119;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(119,1349,-100,0,1,1);

-- Breaking Out is Hard to Do
UPDATE gameobject_template SET data1=204389 WHERE entry=204389;
DELETE FROM gameobject_loot_template WHERE entry=204389;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204389,58950,-52.7,0,1,1),
(204389,59261,-47.3,0,1,1);

-- Propaganda
UPDATE gameobject_template SET data1=204016 WHERE entry=204016;
DELETE FROM gameobject_loot_template WHERE entry=204016;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204016,58115,-100,0,1,1);

-- Arms of the Grimtotems
UPDATE gameobject_template SET data1=186301 WHERE entry=186301;
DELETE FROM gameobject_loot_template WHERE entry=186301;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(186301,33071,-100,0,1,1);

-- The Eye of Shadra
UPDATE gameobject_template SET data1=204120 WHERE entry=204120;
DELETE FROM gameobject_loot_template WHERE entry=204120;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204120,58282,-52,0,1,1),
(204120,58281,-48,0,1,1);

-- Perfectly Pure
UPDATE gameobject_template SET data1=759 WHERE entry=759;
DELETE FROM gameobject_loot_template WHERE entry=759;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(759,60386,-61,0,1,1),
(759,58811,-36,0,1,1),
(759,737,-1, 0,1,1);

-- If They're Just Going to Leave Them Lying Around...
UPDATE gameobject_template SET data1=204336 WHERE entry=204336;
DELETE FROM gameobject_loot_template WHERE entry=204336;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204336,58877,-100,0,1,1);

-- The Mosh'Ogg Bounty
UPDATE gameobject_template SET data1=204087 WHERE entry=204087;
DELETE FROM gameobject_loot_template WHERE entry=204087;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204087,58205,-100,0,1,1);

-- Still Assessing the Threat
UPDATE gameobject_template SET data1=204345 WHERE entry=204345;
DELETE FROM gameobject_loot_template WHERE entry=204345;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204345,58887,-100,0,1,1);
UPDATE gameobject_template SET data1=204346 WHERE entry=204346;
DELETE FROM gameobject_loot_template WHERE entry=204346;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204346,58888,-100,0,1,1);
UPDATE gameobject_template SET data1=204347 WHERE entry=204347;
DELETE FROM gameobject_loot_template WHERE entry=204347;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,Groupid,mincountOrRef,maxcount) VALUES
(204347,58889,-100,0,1,1);

-- Rep Fix: Earning rep with the Oracles reduces rep with Frenzyheart
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-5 WHERE entry=12574;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-5 WHERE entry=12577;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-5 WHERE entry=12578;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-5 WHERE entry=12704;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-5 WHERE entry=12726;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-5 WHERE entry=12735;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-5 WHERE entry=12736;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-5 WHERE entry=12737;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12570;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12571;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12572;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12573;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12575;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12576;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12579;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12580;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12705;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12761;
UPDATE quest_template SET RewRepFaction2=1104, RewRepValueId2=-6 WHERE entry=12762;

-- Rep Fix: Earning rep with the Frenzyheart reduces rep with Oracles
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12528;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12529;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-7 WHERE entry=12530;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-7 WHERE entry=12531;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12532;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12533;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-7 WHERE entry=12534;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12535;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12536;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-7 WHERE entry=12537;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12538;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12539;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-5 WHERE entry=12702;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12703;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-5 WHERE entry=12732;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-5 WHERE entry=12734;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-5 WHERE entry=12741;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-5 WHERE entry=12758;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12759;
UPDATE quest_template SET RewRepFaction2=1105, RewRepValueId2=-6 WHERE entry=12760;

-- Quest: Fresh out of the Grave
-- Quest: The Shadow Grave
UPDATE quest_template SET 
QuestFlags=0,
RewOrReqMoney=0
WHERE entry IN (24959, 28608);