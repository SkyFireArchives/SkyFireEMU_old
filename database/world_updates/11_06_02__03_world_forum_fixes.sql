-- by Blizz
-- [QUEST] The Shrine of Dath'Remar
DELETE FROM areatrigger_involvedrelation Where quest = '8345';
DELETE FROM `creature_questrelation` WHERE quest = '8345';
DELETE FROM `gameobject_questrelation` WHERE quest = '8345';
UPDATE `item_template` SET startquest = 0 WHERE startquest = '8345';
DELETE FROM `creature_involvedrelation` WHERE quest = '8345';
DELETE FROM `gameobject_involvedrelation` WHERE quest = '8345';
DELETE FROM `quest_start_scripts` WHERE id = '0';
DELETE FROM `quest_end_scripts` WHERE id = '0';
UPDATE IGNORE `quest_template` SET entry='8345', Method='2', ZoneOrSort='3431', SkillOrClassMask='', MinLevel='2', MaxLevel='0', QuestLevel='4', Type='0', RequiredRaces='0', RequiredSkillValue='0', RepObjectiveFaction='0', RepObjectiveFaction2='0', RepObjectiveValue='0', RepObjectiveValue2='0', RequiredMinRepFaction='0', RequiredMinRepValue='0', RequiredMaxRepFaction='0', RequiredMaxRepValue='0', SuggestedPlayers='0', LimitTime='0', QuestFlags='524416', SpecialFlags='0', PlayersSlain='0', CharTitleId='0', BonusTalents='0', RewardArenaPoints='0', PrevQuestId='8330', NextQuestId='0', ExclusiveGroup='0', NextQuestInChain='0', RewXPId='5', SrcItemId='0', SrcItemCount='0', SrcSpell='0', Title='The Shrine of Dath\'Remar', Details='Day after day I stand here, watching, waiting.  I\'ve been accused of dwelling too much on our past, while my eyes look to the horizon.  But it is my firm belief that each visitor to this island should honor those who have sacrificed all so that they may continue to do so.$B$BDath\'Remar Sunstrider was our first king.  He led us here from Kalimdor through the Maelstrom.$B$BSeek out his shrine to the west and do not return to me until you have read the plaque upon it in his honor.', Objectives='Read the plaque on the Shrine of Dath\'Remar and then return to Well Watcher Solanian at the Sunspire on Sunstrider Isle.', OfferRewardText='Ah, $N - thank you for sharing your experience at the Shrine of Dath\'Remar. First off, you should be commended for your sense of duty and respect - it will serve you well not only here, but in all of Azeroth as well.

As for the odd sensation, it is no doubt a contributing part of the taint that has befallen Sunstrider Isle. We shall keep an eye on it; thank you for alerting us to it!', RequestItemsText='Have you read the plaque on the shrine then, $c?', EndText='Return to Well Watcher Solanian at Sunstrider Isle in Eversong Woods.', CompletedText='Return to Well Watcher Solanian at Sunstrider Isle in Eversong Woods.', ObjectiveText1='Shrine of Dath\'Remar Read', ObjectiveText2='', ObjectiveText3='', ObjectiveText4='', ReqItemId1='0', ReqItemId2='0', ReqItemId3='0', ReqItemId4='0', ReqItemId5='0', ReqItemId6='0', ReqItemCount1='0', ReqItemCount2='0', ReqItemCount3='0', ReqItemCount4='0', ReqItemCount5='0', ReqItemCount6='0', ReqSourceId1='0', ReqSourceId2='0', ReqSourceId3='0', ReqSourceId4='0', ReqSourceCount1='0', ReqSourceCount2='0', ReqSourceCount3='0', ReqSourceCount4='0', ReqCreatureOrGOId1='-180516', ReqCreatureOrGOId2='0', ReqCreatureOrGOId3='0', ReqCreatureOrGOId4='0', ReqCreatureOrGOCount1='1', ReqCreatureOrGOCount2='0', ReqCreatureOrGOCount3='0', ReqCreatureOrGOCount4='0', ReqSpellCast4='0', ReqSpellCast3='0', ReqSpellCast2='0', ReqSpellCast1='0', RewChoiceItemId1='0', RewChoiceItemId2='0', RewChoiceItemId3='0', RewChoiceItemId4='0', RewChoiceItemId5='0', RewChoiceItemId6='0', RewChoiceItemCount6='0', RewChoiceItemCount5='0', RewChoiceItemCount4='0', RewChoiceItemCount3='0', RewChoiceItemCount2='0', RewChoiceItemCount1='0', RewItemId4='0', RewItemId3='0', RewItemId2='0', RewItemId1='0', RewItemCount4='0', RewItemCount3='0', RewItemCount2='0', RewItemCount1='0', RewRepFaction5='0', RewRepFaction4='0', RewRepFaction3='0', RewRepFaction2='0', RewRepFaction1='911', RewRepValueId5='0', RewRepValueId4='0', RewRepValueId3='0', RewRepValueId2='0', RewRepValueId1='5', RewRepValue5='0', RewRepValue4='0', RewRepValue3='0', RewRepValue2='0', RewRepValue1='0', RewHonorAddition='0', RewHonorMultiplier='0', unk0='0', RewOrReqMoney='150', RewMoneyMaxLevel='210', RewSpell='0', RewSpellCast='0', RewMailTemplateId='0', RewMailDelaySecs='0', PointMapId='0', PointX='0', PointY='0', PointOpt='0', DetailsEmote4='0', DetailsEmote3='0', DetailsEmote2='0', DetailsEmote1='0', DetailsEmoteDelay4='0', DetailsEmoteDelay3='0', DetailsEmoteDelay2='0', DetailsEmoteDelay1='0', IncompleteEmote='0', CompleteEmote='1', OfferRewardEmote4='0', OfferRewardEmote3='0', OfferRewardEmote2='0', OfferRewardEmote1='0', OfferRewardEmoteDelay4='0', OfferRewardEmoteDelay3='0', OfferRewardEmoteDelay2='0', OfferRewardEmoteDelay1='0', StartScript='0', CompleteScript='0', WDBVerified='1' WHERE entry='8345';
INSERT INTO creature_questrelation (id, quest) VALUES (15295,8345);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15295;
INSERT INTO creature_involvedrelation (id, quest) VALUES (15295,8345);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15295;
-- [Gobject] Loot Fix Elementium Vein
-- Elementium Vein
DELETE FROM `gameobject_loot_template` WHERE (`entry`=202741);
INSERT INTO `gameobject_loot_template` VALUES 
(202741, 52185, 100, 1, 0, 1, 12),
(202741, 52327, 20, 1, 0, 1, 2),
(202741, 52325, 20, 1, 0, 1, 2),
(202741, 52326, 19, 1, 0, 1, 2),
(202741, 52328, 3, 1, 0, 1, 2),
(202741, 52182, 0.9, 1, 0, 1, 1),
(202741, 52179, 0.8, 1, 0, 1, 1),
(202741, 52181, 0.8, 1, 0, 1, 1),
(202741, 52177, 0.8, 1, 0, 1, 1),
(202741, 52180, 0.8, 1, 0, 1, 1),
(202741, 52178, 0.8, 1, 0, 1, 1);
-- Rich Elementium Vein
DELETE FROM `gameobject_loot_template` WHERE (`entry`=202738);
INSERT INTO `gameobject_loot_template` VALUES 
(202738, 52185, 100, 1, 0, 2, 9),
(202738, 52327, 10, 1, 0, 1, 2),
(202738, 52325, 10, 1, 0, 1, 2),
(202738, 52326, 10, 1, 0, 1, 2),
(202738, 52328, 2, 1, 0, 1, 2),
(202738, 52179, 0.8, 1, 0, 1, 1),
(202738, 52177, 0.8, 1, 0, 1, 1),
(202738, 52181, 0.8, 1, 0, 1, 1),
(202738, 52182, 0.8, 1, 0, 1, 1),
(202738, 52180, 0.8, 1, 0, 1, 1),
(202738, 52178, 0.8, 1, 0, 1, 1);

-- Fix Boss Corborus - The Stonecore
UPDATE `creature_template` SET `Health_mod` = 25 WHERE `entry` = 43438;
UPDATE `creature_classlevelstats` SET `basehp3` = 64496 WHERE `level` = 84 and `class` = 1;

-- [NPC] Target Acquisition Device
UPDATE `creature_template` SET `exp` = 3, `dynamicflags` = 8, `type_flags` = 524288, `VehicleId` = 348 WHERE `entry` = 46012;

-- by espargon
-- spell missing when creating a globin dk
REPLACE INTO playercreateinfo_spell (race, class, Spell, Note) VALUES
(9, 6, 48266, 'Frost Presence'),
(9, 6, 6603, 'Auto Attack'),
(9, 6, 61455, 'Runic Focus'),
(9, 6, 59921, 'Frost Fever'),
(9, 6, 45477, 'Icy Touch'),
(9, 6, 49576, 'Death Grip'),
(9, 6, 45462, 'Plague Strike'),
(9, 6, 45902, 'Blood Strike'),
(9, 6, 59879, 'Blood Plague'),
(9, 6, 23548, 'Parry'),
(9, 6, 47541, 'Death Coil');

-- by KillaVulkan
-- Quest Bloody Breakout
-- NPC Koltira Deathweaver
REPLACE INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
   (28912,-1609561,'I''ll need to get my runeblade and armor... Just need a little more time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,399,'Koltira Deathweaver SAY_BREAKOUT1'),
   (28912,-1609562,'I''m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you''ll be destroyed by their spells.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT2'),
   (28912,-1609563,'Maintaining this barrier will require all of my concentration. Kill them all!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,16,'Koltira Deathweaver SAY_BREAKOUT3'),
   (28912,-1609564,'There are more coming. Defend yourself! Don''t fall out of the anti-magic field! They''ll tear you apart without its protection!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT4'),
   (28912,-1609565,'I can''t keep barrier up much longer... Where is that coward?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT5'),
   (28912,-1609566,'The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT6'),
   (28912,-1609567,'Stay in the anti-magic field! Make them come to you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT7'),
   (28912,-1609568,'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I''ll be fine on my own.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT8'),
   (28912,-1609569,'I''ll draw their fire, you make your escape behind me.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Koltira Deathweaver SAY_BREAKOUT9'),
   (28912,-1609570,'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Koltira Deathweaver SAY_BREAKOUT10');

DELETE FROM `script_waypoint` WHERE `entry`=28912;
INSERT INTO `script_waypoint` VALUES
   (28912,0,1653.518,-6038.374,127.585,1000, 'Jump off'),
   (28912,1,1653.978,-6034.614,127.585,5000, 'To Box'),
   (28912,2,1653.854,-6034.726,127.585,0, 'Equip'),
   (28912,3,1652.297,-6035.671,127.585,1000, 'Recover'),
   (28912,4,1639.762,-6046.343,127.948,0, 'Escape'),
   (28912,5,1640.963,-6028.119,134.740,0, ''),
   (28912,6,1625.805,-6029.197,134.740,0, ''),
   (28912,7,1626.845,-6015.085,134.740,0, ''),
   (28912,8,1649.150,-6016.975,133.240,0, ''),
   (28912,9,1653.063,-5974.844,132.652,5000, 'Mount'),
   (28912,10,1654.747,-5926.424,121.191,0, 'Disappear');

-- Loot and Gameobject Flag from High Inquisitor Valroth's Remains
UPDATE `gameobject_template` SET `flags` = '64' WHERE `entry` = 191092;
UPDATE `gameobject_loot_template` SET `entry` = '191092', `ChanceOrQuestChance` = '-100' WHERe `item` = 39510;

