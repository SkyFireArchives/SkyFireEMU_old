--     //                         //
--    //      changeset_02       //
--   //       30.01.2011        //
--  //Night Elf Start Location //
-- //       Shadowglen        //

-- Ilthalaine (http://www.wowhead.com/npc=2079)
DELETE FROM creature WHERE id=2079;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType, npcflag, unit_flags, dynamicflags) VALUES (2079, 1, 1, 1, 0, 19, 10314.4, 829.402, 1326.41, 2.55502, 300, 0, 0, 86, 0, 0, 0, 0, 0, 0);

-- Young Nightsaber (http://www.wowhead.com/npc=2031)
UPDATE creature_template SET npcflag=0 WHERE entry=2031;

-- A Favor for Melithar (http://www.wowhead.com/quest=28734)
UPDATE quest_template SET PrevQuestId=28714 WHERE entry=28734;
UPDATE quest_template SET QuestFlags=0 WHERE entry=28734;

-- Demonic Thieves (http://www.wowhead.com/quest=28715)
-- Melithar's Stolen Bags
DELETE FROM gameobject_loot_template WHERE entry=195074; 
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES (195074, 46700, -100);
UPDATE gameobject_template SET data1=195074 WHERE entry=195074;



--   //      30.01.2011      //
--  // Human Start Location //
-- //      Northshire      //

-- Blackrock Battle Worg
UPDATE creature_template SET npcflag=0 WHERE entry=49871;

-- Blackrock Spy
UPDATE creature_template SET npcflag=0 WHERE entry=49874;

-- Brother Paxton
UPDATE creature_template SET npcflag=2 WHERE entry=951;

-- Fear No Evil
UPDATE quest_template SET ZoneOrSort=-261 WHERE entry=28806; -- HUNTER
UPDATE quest_template SET ZoneOrSort=-162 WHERE entry=28811; -- ROGUE
UPDATE quest_template SET ZoneOrSort=-81 WHERE entry=28813; -- WARRIOR
UPDATE quest_template SET ZoneOrSort=-141 WHERE entry=28809; -- PALADIN
UPDATE quest_template SET ZoneOrSort=-61 WHERE entry=28812; -- WARLOCK
UPDATE quest_template SET ZoneOrSort=-161 WHERE entry=28810; -- MAGE
UPDATE quest_template SET ZoneOrSort=-262 WHERE entry=28808; -- PRIEST

-- Blackrock Spy
UPDATE creature_template SET npcflag=0 WHERE entry=49874;

-- Goblin Assassin
UPDATE creature_template SET npcflag=0 WHERE entry=50039;

--   //      31.01.2011      //
--  // Gnome Start Location //
-- //      Gnomeregan      //



-- Crazed Leper Gnome (http://www.wowhead.com/npc=46363)
UPDATE creature_template SET npcflag=0 WHERE entry=46363;

-- QUEST: See to the Survivors (http://www.wowhead.com/quest=27671)
UPDATE `quest_template` SET `ReqCreatureOrGOCount1`=6, `ReqSpellCast1`=86264 WHERE `entry`=27671;

-- QUEST: Report to Carvo Blastbolt (http://www.wowhead.com/quest=28167)
UPDATE `quest_template` SET `PrevQuestId`=27670 WHERE `entry`=28167;

-- QUEST: Withdraw to the Loading Room! (http://www.wowhead.com/quest=28169)
UPDATE `quest_template` SET `PrevQuestId`=27671 WHERE `entry`=28169;

-- QUEST: Decontamination (http://www.wowhead.com/quest=27635)
UPDATE `quest_template` SET `PrevQuestId`=28169 WHERE `entry`=27635;




--   //      31.01.2011      //
--  //     Other Fixes      //


-- Chill of the Throne (http://www.wowhead.com/spell=69127)
DELETE FROM `spell_area` WHERE `spell`=69127;
-- Fix By  Sanctum32

-- Wrong flag, this flag don't exist on TC
-- http://www.wowhead.com/quest=931
UPDATE `quest_template` SET `QuestFlags`='0'WHERE `QuestFlags` IN ('67108864');
-- Fix By misimouse

-- Some Npc Flag Fix
UPDATE creature_template SET npcflag='83' WHERE `entry` IN 
('34714', '34713', '34712', '34711', '34710', '34708', '12032', '11557', '8126',
'21209', '12939', '11557', '7944', '7406'); 
-- By MisiMouse

-- Class trainer dalaran
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `Health_mod` = 2.358 WHERE `entry` = 50155;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `Health_mod` = 2.493 WHERE `entry` = 50160;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `Health_mod` = 2.493 WHERE `entry` = 50157;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `Health_mod` = 1.886 WHERE `entry` = 50156;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `Health_mod` = 2.358 WHERE `entry` = 50158;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `Health_mod` = 4.635 WHERE `entry` = 50163;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `Health_mod` = 3.184 WHERE `entry` = 50174;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `Health_mod` = 3.184 WHERE `entry` = 50171;

-- Tender And Feral Tender
UPDATE creature_template SET npcflag='0' WHERE `entry` IN (15271, 15294);

-- dublicate spawn
delete from creature where guid in (252610,253561,252454,253864,252327,253585,252461,253580,252346,254500,252375,252346,252611,253867,252468);

-- Beating them Back!
UPDATE `quest_template` SET `OfferRewardText`='You\'ve bought us a little time, $N, but we\'ve got even bigger problems to deal with now.' 
WHERE entry IN (28762,28763,28764,28765,28766,28767);
UPDATE `quest_template` SET `SkillOrClassMask`=-128, `NextQuestInChain`=`NextQuestID` WHERE `entry`=28757; -- mage
UPDATE `quest_template` SET `NextQuestInChain`=`NextQuestID` WHERE `entry` IN 
(
	28762, -- paladin
	28763, -- priest
	28764, -- rogue
	28765, -- warlock
	28766, -- warrior
	28767  -- hunter
);

-- Lions for Lambs
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, $N. You\'ve turned out to be quite an asset to this garrison. It\'s time for you to train!' 
WHERE entry IN (28759,28769,28770,28771,28772,28773,28774);
UPDATE `quest_template` SET `SkillOrClassMask`=-128, `NextQuestInChain`=`NextQuestID` WHERE `entry`=28769; -- mage
UPDATE `quest_template` SET `NextQuestInChain`=`NextQuestID` WHERE `entry` IN 
(
	28759, -- hunter
	28770, -- paladin
	28771, -- priest
	28772, -- rogue
	28773, -- warlock
	28774  -- warrior
);


-- Charging into Battle
UPDATE `quest_template` SET `OfferRewardText`='You\'re a quick learner, $N. Return to me as you grow stronger and I\'ll show you other combat techniques.', `ReqSpellCast1`=100  WHERE `entry`=26913;
-- Immolation
UPDATE `quest_template` SET `OfferRewardText`='I see you have already mastered Immolation! I look forward to instructing you in the future. Do not forget to return for further lessons as you grow in power.', `ReqSpellCast1`=348 WHERE `entry`=26914;
-- The Deepest Cut
UPDATE `quest_template` SET `OfferRewardText`='You\'ve caught on quickly, $N, and a quick mind will serve you well. Return to me as you grow in power and I will show you new techniques.'  WHERE `entry`=26915;
-- Mastering the Arcane
UPDATE `quest_template` SET `OfferRewardText`='Have you mastered the use of Arcane Missiles already? You are a quick study in the arcane arts and you have a promising future ahead. Don\'t forget to return to me for training as you grow in power.', `ReqSpellCast1`=5143 WHERE `entry`=26916;
-- The Hunter's Path
UPDATE `quest_template` SET `OfferRewardText`='I knew you would master Steady Shot quickly. I\'m looking forward to showing you other techniques as you get more experienced in the ways of the $C.', `ReqSpellCast1`=56641 WHERE `entry`=26917;
-- The Power of the Light
UPDATE `quest_template` SET `OfferRewardText`='You\'re a quick learner, $N. Return to me as you grow stronger and I\'ll teach you more about using the Light to vanquish your enemies and strengthen your allies.', `ReqSpellCast1`=20271 WHERE `entry`=26918;
-- Healing the Wounded
UPDATE `quest_template` SET `OfferRewardText`='You\'re a quick learner, $N, and the wounded are fortunate to have your aid. Return to me as you grow stronger and I\'ll teach you other spells.', `ReqSpellCast1`=2050 WHERE `entry`=26919;
UPDATE `quest_template` SET `NextQuestInChain`=`NextQuestID` WHERE `entry` IN 
(
	26913, -- Charging into Battle
	26914, -- Immolation
	26915, -- The Deepest Cut
	26916, -- Mastering the Arcane
	26917, -- The Hunter's Path
	26918, -- The Power of the Light
	26919 -- Healing the Wounded
);

-- Join the Battle!
UPDATE `quest_template` SET `OfferRewardText`='It\'s true, we were ambushed. I don\'t dare send any more soldiers out there and risk losing them too. I need a volunteer. Someone willing to risk their life!' 
WHERE `entry` IN (28780,28784,28785,28786,28787,28788,28789);
UPDATE `quest_template` SET `NextQuestInChain`=`NextQuestID` WHERE `entry` IN (28780,28784,28785,28786,28787,28788,28789);

-- They Sent Assassins
UPDATE `quest_template` SET `OfferRewardText`='That will teach those monsters! They\'ll think twice before taking another mercenary job for orcs.' 
WHERE `entry` IN (28791,28792,28793,28794,28795,28796,28797);
UPDATE `quest_template` SET `NextQuestInChain`=`NextQuestID` WHERE `entry` IN (28791,28792,28793,28794,28795,28796,28797);

-- The Rear is Clear
UPDATE `quest_template` SET `OfferRewardText`='With your help we have managed to secure the northern and western sectors of Northshire. We still have a rather large contingency of Blackrock orcs to the east and they\'ve begun burning down the forest!' WHERE `entry`=28817;
UPDATE `quest_template` SET `NextQuestInChain`=`NextQuestID` WHERE `entry`=28817;

-- Blackrock Invasion
UPDATE `quest_template` SET `OfferRewardText`='The Blackrock orcs will surely fall now that their main force has been defeated! Only one task remains.', `RequestItemsText`='Have you killed the rampaging orc hordes?' WHERE `entry`=26389;
UPDATE `quest_template` SET `NextQuestInChain`=`NextQuestID` WHERE `entry`=26389;

-- Ending the Invasion!
UPDATE `quest_template` SET `OfferRewardText`='With Kurtok slain we are safe once again from the orcish hordes. I will send peasants to the pass in an attempt to seal the passage so that no more orcs may come through into our territory.' WHERE `entry`=26390;
UPDATE `quest_template` SET `NextQuestInChain`=`NextQuestID` WHERE `entry`=26390;

-- Report to Goldshire
UPDATE `quest_template` SET `OfferRewardText`='Well, it says here that you\'ve been awarded Acting Deputy Status with the Stormwind Marshals. Congratulations.', `RequestItemsText`='You have word from McBride? Northshire is a garden compared to Elwynn Forest, but I wonder what Marshal McBride has to report.' WHERE `entry`=54;

-- Rest and Relaxation
UPDATE `quest_template` SET `OfferRewardText`='Rest and relaxation for the tired and cold -- that\'s our motto! Please, take a seat by the fire and rest your weary bones.' WHERE `entry`=2158;

-- Fear No Evil
-- some information still is missing here.
UPDATE `quest_template` SET `OfferRewardText`='I think you now understand the power of the Light. The Light giveth hope, brother and the Light taketh from the darkness! BLESSED BE THE LIGHT!' 
WHERE `entry` IN (28813,28806,28808,28809,28810,28811,28812);

-- Extinguishing Hope
UPDATE `quest_template` SET `OfferRewardText`='Bless your heart, $N. You truly are a hero of the Alliance! Though the land is completely incinerated and there is nothing left of the vineyard but ash and debris, I still might be able to recover. Right? How bad can it be?' WHERE `entry`=26391;















