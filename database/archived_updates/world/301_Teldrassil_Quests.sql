DELETE FROM gameobject_template WHERE entry = 195074;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) values
('195074','3','323','Melithar s Stolen Bags','','Retrieving','','0','4','1.3','46700','0','0','0','0','0','5','195074','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','13329');

DELETE FROM gameobject_loot_template WHERE entry = 195074;
INSERT INTO gameobject_loot_template VALUES
(195074, 46700, -100, 1, 0, 1, 1);

DELETE FROM creature WHERE id = 49480;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('49480','1','1','1','0','0','10747.7','931.535','1336.92','3.17326','300','0','0','126','0','0','0','0','0','0');
UPDATE gameobject_template SET castBarCaption = 'Retrieving' WHERE entry = 195074;
DELETE FROM gameobject_loot_template WHERE entry = 152095;
INSERT INTO gameobject_loot_template VALUES
(152095, 10641, -100, 1, 0, 1, 1);

DELETE FROM gameobject WHERE id = 152095;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)VALUES
('152095','1','1','1','10569.1','815.969','1309.37','5.89896','0','0','0.190933','-0.981603','60','0','1'),
('152095','1','1','1','10541.6','828.119','1307.23','5.76152','0','0','0.257886','-0.966175','60','0','1'),
('152095','1','1','1','10529.5','847.418','1306.63','4.76485','0','0','0.688319','-0.725408','60','0','1'),
('152095','1','1','1','10578.8','860.859','1306.68','0.531538','0','0','0.262651','0.964891','60','0','1'),
('152095','1','1','1','10551.6','882.634','1307.86','0.533895','0','0','0.263788','0.964581','60','0','1'),
('152095','1','1','1','10537.8','917.85','1307.91','3.76031','0','0','0.952529','-0.304447','60','0','1'),
('152095','1','1','1','10526.9','910.683','1308.43','3.65428','0','0','0.967323','-0.253546','60','0','1'),
('152095','1','1','1','10517','895.794','1308.74','5.17167','0','0','0.527587','-0.849501','60','0','1'),
 ('152095','1','1','1','10524.9','879.826','1307.86','5.17167','0','0','0.527587','-0.849501','60','0','1'),
('152095','1','1','1','10534.6','860.186','1306.37','5.17167','0','0','0.527587','-0.849501','60','0','1'),
('152095','1','1','1','10589.9','850.27','1307.19','0.229943','0','0','0.114718','0.993398','60','0','1');

UPDATE quest_template SET RequiredRaces = 8, QuestFlags = 524288 WHERE entry IN (3117, 3118, 3119, 26945, 26946, 26947);
UPDATE quest_template SET RequiredRaces = 2097152, QuestFlags = 524288 WHERE entry IN (3120, 26948);
UPDATE quest_template SET RequiredRaces = 1032, QuestFlags = 524288 WHERE entry IN (3116, 26940, 26841);

-- Warrior
UPDATE quest_template SET ExclusiveGroup = 0, PrevQuestId = 28715, NextQuestId = 26945, NextQuestInChain = 26945 WHERE entry = 3116;
-- Hunter
UPDATE quest_template SET ExclusiveGroup = 0, PrevQuestId = 28715, NextQuestId = 26947, NextQuestInChain = 26947 WHERE entry = 3117;
-- Rogue
UPDATE quest_template SET ExclusiveGroup = 0, PrevQuestId = 28715, NextQuestId = 26946, NextQuestInChain = 26946 WHERE entry = 3118;
-- Priest
UPDATE quest_template SET ExclusiveGroup = 0, PrevQuestId = 28715, NextQuestId = 26949, NextQuestInChain = 26949 WHERE entry = 3119;
-- Druid
UPDATE quest_template SET ExclusiveGroup = 0, PrevQuestId = 28715, NextQuestId = 26948, NextQuestInChain = 26948 WHERE entry = 3120;
-- Mage
UPDATE quest_template SET ExclusiveGroup = 0, PrevQuestId = 28715, NextQuestId = 26940, NextQuestInChain = 26940 WHERE entry = 26841;
UPDATE quest_template SET ExclusiveGroup = 0, PrevQuestId = 0, NextQuestId = 28723 WHERE entry IN (26940, 26945, 26946, 26947, 26948, 26949);
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 28723;
UPDATE quest_template SET NextQuestId = 0, NextQuestInChain = 0 WHERE entry = 28715;

-- [QUEST] Priestess of the Moon
DELETE FROM creature_questrelation WHERE quest = 28723;
INSERT INTO creature_questrelation VALUES
(43006, 28723);

-- Iverron
UPDATE creature_template SET gossip_menu_id = 8584 WHERE entry = 8584;
DELETE FROM npc_text WHERE id = 8584;
DELETE FROM gossip_menu WHERE entry = 8584;
INSERT INTO npc_text (id, text0_0) VALUES
(8584, 'I hear  I have you to thank for helping to cure me. Thank you. Truly.');
INSERT INTO gossip_menu VALUES
(8584, 8584);

-- Texts

UPDATE quest_template SET OfferRewardText = 'You performed your dutles well, Lights' WHERE entry = 28713;
UPDATE quest_template SET RequestItemsText = 'Satisfy my suspicions, Lights. Bring to me fel moss from the grelkin.', OfferRewardText = 'Your service to the creatures of Shadowglen is worthy of reward, Lights. $b$b You confirmed my fears, however. The grelkin are still tainted by fel moss, despite Teldrassil\'s blessing. Something sinister remains within the tree. I can only hope that the Gnarlpine tribe of furbolgs are free of the corruption, or we are still in grave danger. $b$b I will look into this further and contact those who might be of aid. Thank you, $c' WHERE entry = 28714;
UPDATE quest_template SET RequestItemsText = 'I don\'t have any spare supplies for my customers until my stolen goods are recovered. Have you had any luck?', OfferRewardText = 'Elune be praised! And you as well, young $c. $b $B There are many young night elves in need of these, but I\'d be more than happy to give you one of the bags as reward. I\'m sure it will come in handy. $b $b Safe travels to you.' WHERE entry = 28715;
UPDATE quest_template SET OfferRewardText = 'It is good that you\'ve come. It seems your traininig progresses quickly.', NextQuestInChain = 28724 WHERE entry = 28723;
UPDATE quest_template SET RequestItemsText = 'Our dear friend is not doing well, even with my mending. Have you brought the supplies I require?', OfferRewardText = 'These will do perfectly. Thank you, Lights. Your swiftness is appreciated.', NextQuestInChain = 28725 WHERE entry = 28724;
UPDATE quest_template SET OfferRewardText = 'I see you found me, young $R. Dentaria was wise to have sent you.', NextQuestInChain = 28726 WHERE entry = 28725;
UPDATE quest_template SET OfferRewardText = 'This corruption these spiders suffer from is not simply surface deep. It cannot be magic or subtle mal intent. It is bred into them. $b $b It seems our next task is clear.', NextQuestInChain = 28727 WHERE entry = 28726;
UPDATE quest_template SET OfferRewardText = 'Githyiss and her brood were being corrupted by this totem. This is a furbolg totem. $b $b This is very troubling indeed. This means the Gnarlpine are still a danger to these forests. We let our guard down too soon.', NextQuestInChain = 28728 WHERE entry = 28727;
UPDATE quest_template SET OfferRewardText = 'You\'ve returned! It\'s good to see you. It seems you\'ve dealt with the source of much of the corruption in Shadowglen. $B $B Teldrassil still suffers and will need attention, be we can afford a moment or two for you to finish you training here in Shadowglen.', NextQuestInChain = 28729 WHERE entry = 28728;
UPDATE quest_template SET RequestItemsText = 'Our recent history is fraught with strife and violence. There is still much with which we must come to terms.', OfferRewardText = 'Well done, Lights. You have one task left for you before you depart Shadowglen for the open wilds of Teldrassil.', NextQuestInChain = 28730 WHERE entry = 28729;
UPDATE quest_template SET RequestItemsText = 'The moonwells hold the waters of the Well of Eternity, the ancient source of magic that has wrought so many horrors upon our world. $B $B The druids take advantage of its properties, the Sentinels revere the wells as shrines to Elune, and now even the returning Highborne look to the wells longingly.', OfferRewardText = 'So you have heard the first part of the aftermath of the Battle of Mount Hyjal. There is much more for you to learn and the task you have begun here will continue through the rest of your journey through Teldrassil and into Darnassus.', NextQuestInChain = 28731 WHERE entry = 28730;