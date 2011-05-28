--    //      ChangeSET_05       //
--   //       05.02.2011        //


-- All of the Cataclysm instance entrance/exits except Throne of The Tides. 
DELETE FROM areatrigger_teleport WHERE id in 
(6354, 6341, 6177,6179, 6108, 6011, 6581, 6580, 6620, 6488, 6610, 6612, 6612, 6487, 6485, 6196, 6194, 6672, 6673, 6618, 6664);
INSERT INTO areatrigger_teleport (id, name, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
	(6354,'Bastion of Twilight (Enterance)',671,'-565.082','-531.977','890.593','6.2334'),
	(6341,'Bastion of Twilight (Exit)',0,'-4888.41','-4239.17','827.763','5.21704'),
	(6177,'Grim Batol (Exit)',0,'-4053.51','-3447.71','283.404','3.44519'),
	(6179,'Grim Batol (Enterance)',670,'-626.595','-180.003','272.097','4.9288'),
	(6108,'Blackrock carvens (Enterance)',645,'211.15','1131.12','205.8','4.6767'),
	(6011,'Blackrock carvens (Exit)',0,'-7571.42','-1320.84','246.382','1.638'),
	(6581,'Blackwing Descent (Enterance)',669,'-341.186','-226.004','193.514','6.28049'),
	(6580,'Blackwing Descent (Exit)',0,'-7539.44','-1196.08','477.769','5.01914'),
	(6620,'Lost City of the Tol\'vir (Enterance)',755,'-10701.4','-1312.92','18.5184','3.41487'),
	(6488,'Blackwing Descent (Enterance)',1,'-10671.1','-1305.18','15.3542','0.250501'),
	(6610,'The Vortex Pinnacle (Exit)',1,'-11516.5','-2312.36','608.65','0.673829'),
	(6612,'The Vortex Pinnacle (Enterance)',657,'-339.959','12.9507','626.98','3.95129'),
	(6487,'Halls of Origination (Exit)',1,'-10211','-1837.83','20.1281','6.25565'),
	(6485,'Halls of Origination (Enterance)',644,'-954.217','461.686','51.9705','1.55269'),
	(6196,'Stonecore (Enterance)',725,'827.012','985.966','317.375','0.006879'),
	(6194,'Stonecore (Exit)',646,'1027.44','628.709','157.141','1.82351'),
	(6672,'Throne of The Four Winds (Enterance)',754,'-301.544','817.184','198.405','6.28036'),
	(6673,'Throne of The Four Winds (Exit)',1,'-11355','58.1568','723.883','5.01194'),
	(6618,'Baradin Hold (Exit)',732,'-1266.98','1049.99','106.995','0.014455'),
	(6664,'Baradin Hold (Enterance)',757,'165.2','1337.02','170.765','0.034195');
	
-- Gameobject (Entry:205273 GoType:22) have data0=0 but Spell (Entry0) not exist.
UPDATE gameobject_template SET data0=17609, data3=1 WHERE entry=205273;

-- Gameobject (Entry:151951 GoType:8) have data0=2061 but SpellFocus (Id:2061) not exist.
UPDATE gameobject_template SET data0=4 WHERE entry=151951;

-- Dual Talent Spec Gossip MENU FIX
UPDATE gossip_menu_option SET box_money=100000 WHERE menu_id=0 AND id=16;
-- Fix By Sanctum32

-- Gelman Stonehand <Mining Trainer> SPAWN
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (5513, 0, 1, 1, 0, 0, -8434, 692.809, 103.364, 0.717, 310, 0, 0, 1342, 0, 0, 0, 0, 0, 0);

-- Lieutenant Horatio Laine
UPDATE creature_template SET npcflag=3 WHERE entry=42308;

-- Elevators
UPDATE gameobject_template SET flags=40 WHERE name LIKE '%elevator%' AND type=11;

-- Netherwing Drake Quests FIX
DELETE FROM quest_template WHERE entry IN (11109, 11110, 11111, 11112, 11113, 11114);
INSERT INTO quest_template (entry, Method, ZoneOrSort, SkillOrClassMask, MinLevel, MaxLevel, QuestLevel, Type, RequiredRaces, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RepObjectiveFaction2, RepObjectiveValue2, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PlayersSlain, BonusTalents, RewardArenaPoints, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, RewXPId, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemId5, ReqItemId6, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqItemCount5, ReqItemCount6, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValueId1, RewRepValueId2, RewRepValueId3, RewRepValueId4, RewRepValueId5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorAddition, RewHonorMultiplier, unk0, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript, WDBVerified) VALUES (11109, 0, 3703, 0, 70, 0, 70, 0, 0, 0, 0, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 11108, 0, 11109, 0, 0, 0, 0, 0, 'Jorus the Cobalt Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32859, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);
INSERT INTO quest_template (entry, Method, ZoneOrSort, SkillOrClassMask, MinLevel, MaxLevel, QuestLevel, Type, RequiredRaces, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RepObjectiveFaction2, RepObjectiveValue2, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PlayersSlain, BonusTalents, RewardArenaPoints, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, RewXPId, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemId5, ReqItemId6, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqItemCount5, ReqItemCount6, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValueId1, RewRepValueId2, RewRepValueId3, RewRepValueId4, RewRepValueId5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorAddition, RewHonorMultiplier, unk0, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript, WDBVerified) VALUES (11110, 0, 3703, 0, 70, 0, 70, 0, 0, 0, 0, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 11108, 0, 11109, 0, 0, 0, 0, 0, 'Malfas the Purple Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32860, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);
INSERT INTO quest_template (entry, Method, ZoneOrSort, SkillOrClassMask, MinLevel, MaxLevel, QuestLevel, Type, RequiredRaces, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RepObjectiveFaction2, RepObjectiveValue2, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PlayersSlain, BonusTalents, RewardArenaPoints, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, RewXPId, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemId5, ReqItemId6, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqItemCount5, ReqItemCount6, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValueId1, RewRepValueId2, RewRepValueId3, RewRepValueId4, RewRepValueId5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorAddition, RewHonorMultiplier, unk0, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript, WDBVerified) VALUES (11111, 0, 3703, 0, 70, 0, 70, 0, 0, 0, 0, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 11108, 0, 11109, 0, 0, 0, 0, 0, 'Onyxien the Onyx Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32857, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);
INSERT INTO quest_template (entry, Method, ZoneOrSort, SkillOrClassMask, MinLevel, MaxLevel, QuestLevel, Type, RequiredRaces, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RepObjectiveFaction2, RepObjectiveValue2, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PlayersSlain, BonusTalents, RewardArenaPoints, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, RewXPId, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemId5, ReqItemId6, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqItemCount5, ReqItemCount6, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValueId1, RewRepValueId2, RewRepValueId3, RewRepValueId4, RewRepValueId5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorAddition, RewHonorMultiplier, unk0, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript, WDBVerified) VALUES (11112, 0, 3703, 0, 70, 0, 70, 0, 0, 0, 0, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 11108, 0, 11109, 0, 0, 0, 0, 0, 'Suraku the Azure Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32858, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);
INSERT INTO quest_template (entry, Method, ZoneOrSort, SkillOrClassMask, MinLevel, MaxLevel, QuestLevel, Type, RequiredRaces, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RepObjectiveFaction2, RepObjectiveValue2, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PlayersSlain, BonusTalents, RewardArenaPoints, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, RewXPId, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemId5, ReqItemId6, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqItemCount5, ReqItemCount6, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValueId1, RewRepValueId2, RewRepValueId3, RewRepValueId4, RewRepValueId5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorAddition, RewHonorMultiplier, unk0, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript, WDBVerified) VALUES (11113, 0, 3703, 0, 70, 0, 70, 0, 0, 0, 0, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 11108, 0, 11109, 0, 0, 0, 0, 0, 'Voranaku the Violet Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32862, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);
INSERT INTO quest_template (entry, Method, ZoneOrSort, SkillOrClassMask, MinLevel, MaxLevel, QuestLevel, Type, RequiredRaces, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RepObjectiveFaction2, RepObjectiveValue2, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PlayersSlain, BonusTalents, RewardArenaPoints, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, RewXPId, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemId5, ReqItemId6, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqItemCount5, ReqItemCount6, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValueId1, RewRepValueId2, RewRepValueId3, RewRepValueId4, RewRepValueId5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorAddition, RewHonorMultiplier, unk0, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript, WDBVerified) VALUES (11114, 0, 3703, 0, 70, 0, 70, 0, 0, 0, 0, 0, 0, 0, 1015, 42000, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 11108, 0, 11109, 0, 0, 0, 0, 0, 'Zoya the Veridian Netherwing Drake', '', '', 'It is an honor to meet you, $N. We have all been keeping a close eye on your adventures and are grateful for all that you have done for the Netherwing Dragonflight.$B$BIf you choose me as your compatriot, I will fly you to the ends of this world and back. Whatever it is that you ask of me, I will do my best to comply.$B$BBe warned that you may only select one of us for your journeys in Outland. Once the selection has been made, you cannot change your mind.', '', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32861, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);

-- War at Sea Quest 
DELETE FROM quest_template WHERE entry=9268;
INSERT INTO quest_template (entry, Method, ZoneOrSort, SkillOrClassMask, MinLevel, MaxLevel, QuestLevel, Type, RequiredRaces, RequiredSkillValue, RepObjectiveFaction, RepObjectiveValue, RepObjectiveFaction2, RepObjectiveValue2, RequiredMinRepFaction, RequiredMinRepValue, RequiredMaxRepFaction, RequiredMaxRepValue, SuggestedPlayers, LimitTime, QuestFlags, SpecialFlags, CharTitleId, PlayersSlain, BonusTalents, RewardArenaPoints, PrevQuestId, NextQuestId, ExclusiveGroup, NextQuestInChain, RewXPId, SrcItemId, SrcItemCount, SrcSpell, Title, Details, Objectives, OfferRewardText, RequestItemsText, EndText, CompletedText, ObjectiveText1, ObjectiveText2, ObjectiveText3, ObjectiveText4, ReqItemId1, ReqItemId2, ReqItemId3, ReqItemId4, ReqItemId5, ReqItemId6, ReqItemCount1, ReqItemCount2, ReqItemCount3, ReqItemCount4, ReqItemCount5, ReqItemCount6, ReqSourceId1, ReqSourceId2, ReqSourceId3, ReqSourceId4, ReqSourceCount1, ReqSourceCount2, ReqSourceCount3, ReqSourceCount4, ReqCreatureOrGOId1, ReqCreatureOrGOId2, ReqCreatureOrGOId3, ReqCreatureOrGOId4, ReqCreatureOrGOCount1, ReqCreatureOrGOCount2, ReqCreatureOrGOCount3, ReqCreatureOrGOCount4, ReqSpellCast1, ReqSpellCast2, ReqSpellCast3, ReqSpellCast4, RewChoiceItemId1, RewChoiceItemId2, RewChoiceItemId3, RewChoiceItemId4, RewChoiceItemId5, RewChoiceItemId6, RewChoiceItemCount1, RewChoiceItemCount2, RewChoiceItemCount3, RewChoiceItemCount4, RewChoiceItemCount5, RewChoiceItemCount6, RewItemId1, RewItemId2, RewItemId3, RewItemId4, RewItemCount1, RewItemCount2, RewItemCount3, RewItemCount4, RewRepFaction1, RewRepFaction2, RewRepFaction3, RewRepFaction4, RewRepFaction5, RewRepValueId1, RewRepValueId2, RewRepValueId3, RewRepValueId4, RewRepValueId5, RewRepValue1, RewRepValue2, RewRepValue3, RewRepValue4, RewRepValue5, RewHonorAddition, RewHonorMultiplier, unk0, RewOrReqMoney, RewMoneyMaxLevel, RewSpell, RewSpellCast, RewMailTemplateId, RewMailDelaySecs, PointMapId, PointX, PointY, PointOpt, DetailsEmote1, DetailsEmote2, DetailsEmote3, DetailsEmote4, DetailsEmoteDelay1, DetailsEmoteDelay2, DetailsEmoteDelay3, DetailsEmoteDelay4, IncompleteEmote, CompleteEmote, OfferRewardEmote1, OfferRewardEmote2, OfferRewardEmote3, OfferRewardEmote4, OfferRewardEmoteDelay1, OfferRewardEmoteDelay2, OfferRewardEmoteDelay3, OfferRewardEmoteDelay4, StartScript, CompleteScript, WDBVerified) VALUES (9268, 0, 440, 0, 40, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'War at Sea', '', '', 'Keep it coming, $N. Us goblins don\'t forget that easily!', 'You seek to befriend the goblins of Tanaris once again, $N? We\'re in need of materials for sails and guns to fight off our old enemies, the Bloodsail Buccaneers. Bring me mageweave and strong flux and we\'ll be on our way to pardoning your trespasses.', NULL, 'Return to Rumsen Fizzlebrack in Tanaris.', '', '', '', '', 4338, 3466, 0, 0, 0, 0, 40, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 87, 0, 0, 0, 7, -7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);

-- Ragnaros Core don't exist on Cata
DELETE FROM item_template WHERE entry=17982;
-- Fix By MisiMouse

-- Iron Forge Portal In Tanaris DELETATION
DELETE FROM gameobject WHERE guid=182691;

-- Nogger Fogger Elixir
DELETE FROM npc_vendor WHERE entry IN (43418, 7564);
INSERT INTO npc_vendor (entry, item) VALUES (43418, 8529);
INSERT INTO npc_vendor (entry, item) VALUES (7564, 8529);
UPDATE creature_template SET npcflag=132 WHERE entry=43418;


-- 2011-02-05 11:47:19 ERROR: Creature (Entry: 13219) has different npcflag in difficulty 1 mode (Entry: 22682).
UPDATE creature_template SET npcflag='4224' WHERE entry='22682';


-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252327) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252346) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252375) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252454) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252461) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252468) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252540) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252587) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252610) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 252611) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 253561) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 253580) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 253585) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 253864) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 253867) does not exist but has a record in creature_addon
-- 2011-02-05 12:18:13 ERROR: Creature (GUID: 254500) does not exist but has a record in creature_addon
DELETE FROM creature_addon WHERE guid IN (252327, 252346, 252375, 252454, 252461, 252468, 252540, 252587, 252610, 252611, 253561, 253580, 253585, 253864, 253867, 254500);

-- 2011-02-05 12:06:32 ERROR: Creature (Entry: 27648) has different npcflag in difficulty 1 mode (Entry: 30911).
UPDATE creature_template SET npcflag='2' WHERE entry='30911';

-- Maginor Dumas <Master Mage>: Need flag for gossip + trainer + classtrainer + quest giver
UPDATE creature_template SET npcflag='51 ' WHERE entry='331'; 

-- Nogg <Apprentice Engineer>: Is note a NPC trainer and don't need to teach anything
DELETE FROM `npc_trainer` WHERE `entry`='3412';

-- Graham Van Talen <Apprentice Engineer>: Is not a NPC trainer and don't need to teach anything
DELETE FROM npc_trainer WHERE entry='4586';

-- Mathrengyl Bearwalker <Druid Trainer> Is a vendor this need flag: gossip + quest giver + trainer + classtrainer + vendor
UPDATE creature_template SET npcflag='179' WHERE entry='4217';

-- Zen'Balai <Druid Trainer> Is a vendor this need flag: gossip + trainer + classtrainer + vendor + vendor reagnant
UPDATE creature_template SET npcflag='2225' WHERE entry='13476';

-- Arathel Sunforge <Blacksmithing Trainer> Is a vendor this need flag: gossip + quest_giver + trainer + trainer_profession + vendor + repair
UPDATE creature_template SET npcflag='4307' WHERE entry='15400';

-- Master Chef Mouldier <Cooking Trainer & Supplies> Is a vendor this need flag: gossip + quest_giver + trainer + trainer_profession + vendor
UPDATE creature_template SET npcflag='211' WHERE entry='16253';

-- Sathiel <Trade Supplies> Is a vendor this need flag: gossip + quest_giver + vendor + vendor_reagnants + reapir
UPDATE creature_template SET npcflag='4224' WHERE entry='16261';

-- Sempstress Ambershine <Tailoring Trainer> Is a vendor this need flag: gossip + quest_giver + trainer + triner_profession + vendor + vendor_reagnants
UPDATE creature_template SET npcflag='209' WHERE entry='16366';

-- Rohok <Blacksmithing Trainer> Is a vendor this need flag: gossip + quest_giver + trainer + triner_profession + vendor
UPDATE creature_template SET npcflag='4307' WHERE entry='16583';

-- Apothecary Antonivich <Alchemy Trainer> Is a vendor this need flag: gossip + quest_giver + trainer + trainer_profession + vendor + vendor_reagnants + vendor_posion
UPDATE creature_template SET npcflag='3283' WHERE entry='16588';

-- Humphry <Blacksmithing Trainer> Is a vendor this need flag: gossip + trainer + trainer_profession + vendor + repair
UPDATE creature_template SET npcflag='4305' WHERE entry='16823';

-- Diktynna <Fishing Trainer & Supplies> Is a vendor this need flag: gossip + quest_giver + trainer + trainer_profession + vendor
UPDATE creature_template SET npcflag='211' WHERE entry='17101';

-- Artificer Daelo <Engineering Trainer> Is a vendor this need flag: gossip + trainer + trainer_profession + vendor
UPDATE creature_template SET npcflag='209' WHERE entry='17222';

-- Sathiel <Trade Supplies> Is a vendor this need flag: gossip + quest_giver + vendor + vendor_reagnants + reapir
UPDATE creature_template SET npcflag='4227' WHERE entry=16261;

-- Blacksmith Calypso <Blacksmithing Trainer & Supplies> Is a vendor this need flag: gossip + trainer + trainer_profession + vendor + reapir
UPDATE creature_template SET npcflag='4305' WHERE entry='17245';

-- "Cookie" McWeaksauce <Cooking Trainer & Supplies> Is a vendor this need flag: gossip + quest_giver + trainer + trainer_profession + vendor
UPDATE creature_template SET npcflag='211' WHERE entry='17246';

-- Zurjaya <Fishing Trainer> Is a vendor this need flag: gossip + quest_giver + trainer + trainer_profession + vendor
UPDATE creature_template SET npcflag='211' WHERE entry='18018';

-- Dalinna <Tailoring Trainer> Is a vendor this need flag: gossip + trainer + trainer_profession + vendor
UPDATE creature_template SET npcflag='209' WHERE entry='18749';

-- Kalaen <Jewelcrafting Trainer> Is a vendor this need flag: gossip + trainer + trainer_profession + vendor
UPDATE creature_template SET npcflag='209' WHERE entry='18751';

-- Botanist Tyniarrel <Herbalism Trainer & Supplies> Is a vendor this need flag: gossip + qtrainer + triner_profession + vendor + vendor_reagnants
UPDATE creature_template SET npcflag='209' WHERE entry='16367';

-- Ok, this spawn 400 erros on console cos basehp can't be 0 I set this to 1 to avoid the spawn until we have more information about this field
UPDATE creature_classlevelstats SET basehp3='1' WHERE basehp3='0';

-- Torallius the Pack Handler <Elekk Breeder> No Elekks Selled
DELETE FROM npc_vendor WHERE entry=17584;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES (17584, 0, 28481, 0, 0, 0);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES (17584, 0, 29743, 0, 0, 0);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES (17584, 0, 29744, 0, 0, 0);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES (17584, 0, 29745, 0, 0, 0);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES (17584, 0, 29746, 0, 0, 0);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES (17584, 0, 29747, 0, 0, 0);

-- Not Attackable Volatine Mutation
UPDATE creature_template SET npcflag='0' WHERE entry='16516';

-- Katoom the Angler <Fishing Trainer & Supplies> Is a vendor this need flag: gossip + quest_giver + trainer + trainer_profession + vendor
UPDATE `creature_template` SET `npcflag`='211' WHERE `entry`='14740';

-- Meilosh Is a vendor this need flag: gossip + quest giver + trainer + trainerproffesion + vendor
UPDATE `creature_template` SET `npcflag`='211' WHERE `entry`='11557';

-- Fix for the riding trainer spell costs
UPDATE `npc_trainer` SET `spellcost` = '5000000' WHERE `spell` = '54197';
UPDATE `npc_trainer` SET `spellcost` = '50000000' WHERE `spell` = '34091';
UPDATE `npc_trainer` SET `spellcost` = '50000000' WHERE `spell` = '90265';

-- http://www.wowhead.com/quest=8471
UPDATE `quest_template` SET `QuestFlags`='0'WHERE `QuestFlags` IN ('67125248');

-- This flag don't exis on TC in TC this is UNK5
-- http://www.wowhead.com/quest=24215
-- http://www.wowhead.com/quest=20441
-- http://www.wowhead.com/quest=25355
UPDATE `quest_template` SET `QuestFlags`='0'WHERE `QuestFlags` IN ('268566528');

-- ChangeSET-05






