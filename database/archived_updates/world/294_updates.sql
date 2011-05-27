-- ***************** --
-- *  UPDATE PACK  * --
-- ***************** --
-- ***************** --
-- Vyrin Swiftwind <Innkeeper>
UPDATE creature_template SET subname='Innkeeper', ScriptName='npc_innkeeper', npcflag=npcflag|1|512|65536 WHERE entry=1156;

-- Vyrin Swiftwind <Innkeeper> (Vendor Items)
DELETE FROM npc_vendor WHERE entry=1156;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost) VALUES 
(1156,0,117,0,'0',0),
(1156,0,2287,0,'0',0),
(1156,0,3770,0,'0',0),
(1156,0,3771,0,'0',0),
(1156,0,4599,0,'0',0),
(1156,0,8952,0,'0',0),
(1156,0,159,0,'0',0),
(1156,0,1179,0,'0',0),
(1156,0,1205,0,'0',0),
(1156,0,1708,0,'0',0),
(1156,0,1645,0,'0',0),
(1156,0,8766,0,'0',0);

-- ***************** --
-- Rampaging Worgen
UPDATE creature_template SET faction_A='16', faction_H='16' WHERE entry IN 
(35660, 34884);

-- Rampaging Worgen (Loot)
DELETE FROM creature_loot_template WHERE entry=35660;
INSERT INTO creature_loot_template 
(entry, item, ChanceOrQuestChance) VALUES 
('35660', '46896', '-1');
-- Fix By Zamara

-- ***************** --
-- Priest - Power Word: Fortitude (BUFF)
DELETE FROM spell_scripts WHERE id=21562;
INSERT INTO spell_scripts 
(id, command, datalong, datalong2, dataint) VALUES 
(21562, 15, 79104, 1, 1);

-- ***************** --
-- Druid - Mark of the Wild (BUFF)
DELETE FROM spell_scripts WHERE id=1126;
INSERT INTO spell_scripts 
(id, command, datalong, datalong2, dataint) VALUES 
(1126, 15, 79060, 1, 1); 

-- ***************** --
-- Mage - Arcane Brilliance (BUFF)
DELETE FROM spell_scripts WHERE id=1459;
INSERT INTO spell_scripts 
(id, command, datalong, datalong2, dataint) VALUES 
(1459, 15, 79057, 1, 1); 

-- ***************** --
-- Battle-Worn Sword
UPDATE item_template SET spellid_1=51771 WHERE entry=38607;

-- ***************** --
-- Paladin - Blessing of Kings (BUFF)
DELETE FROM spell_scripts WHERE id=20217;
INSERT INTO spell_scripts
(id, command, datalong, datalong2, dataint) VALUES 
(20217, 15, 79062, 1, 1); 

-- ***************** --
-- Paladin - Blessing of Might (BUFF)
DELETE FROM spell_scripts WHERE id=19740;
INSERT INTO spell_scripts
(id, command, datalong, datalong2, dataint) VALUES 
(19740, 15, 79101, 1, 1); 

-- ***************** --
-- Priest - Shadow Protection (BUFF)
DELETE FROM spell_scripts WHERE id=27683;
INSERT INTO spell_scripts
(id, command, datalong, datalong2, dataint) VALUES 
(27683, 15, 79106, 1, 1);  

-- ***************** --
-- 'Requires Runeforge' problem Fix
UPDATE gameobject_template SET type=8, data0=1552, data1=10, data3=0 WHERE entry IN (191746, 191747, 191748);

-- ***************** --
-- Death Knight quests RequiredRaces
UPDATE quest_template SET RequiredRaces=0 WHERE entry IN 
(12593, 12619, 12842, 12848, 12636, 12641, 12657, 12850, 12670, 12678, 12680, 12679, 12733, 12687, 12711, 12679, 12698, 12700, 
12701, 12706, 12697, 12714, 12715, 12719, 12720, 12716, 12717, 12718, 12722, 12849, 12723, 12724, 12725, 12727, 12738, 12751, 
12754, 12755, 12756, 12757, 12778, 12779, 12800, 12801, 13165, 13166);

-- ***************** --
-- The Emblazoned Runeblade fix looting object
UPDATE gameobject_template SET flags=4 WHERE entry=190584;

-- ***************** --
-- Death Comes From On High quest fix
UPDATE quest_template SET ReqSpellCast1=51859, ReqSpellCast2=51859, ReqSpellCast3=51859, ReqSpellCast4=51859 WHERE entry=12641;

-- ***************** --
-- Eye of Acherus quest involvedrelation
UPDATE creature_involvedrelation SET id=25462 WHERE quest=12636;

-- ***************** --
-- Gothik the Harvester Quest Relation
UPDATE creature_questrelation SET id=28377 WHERE quest=12697;

-- ***************** --
-- Acherus Portal
UPDATE gameobject_template SET type=6, data0=43, data2=2, data3=53098, data4=1 WHERE entry=191539;
UPDATE gameobject_template SET type=6, data0=43, data2=2, data3=54699, data4=1 WHERE entry=191538;

DELETE FROM spell_target_position WHERE id IN (53098, 54699);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(53098, 609, 2399.07, -5635.15, 377.035, 3.70201),
(54699, 609, 2418.67, -5621.41, 420.644, 3.89597);

-- ***************** --
-- Some Spell Credits
DELETE FROM spell_scripts WHERE id IN (44997,45030,49625,49634,53343,53341); 
INSERT INTO spell_scripts
(id,effIndex,delay,command,datalong,datalong2,dataint,x,y,z,o) VALUES  
(44997,0,0,15,45009,1,1,0,0,0,0), -- Converting Sentry 
(45030,1,0,15,45088,1,1,0,0,0,0), -- Impale Emissary 
(49625,0,0,15,43106,1,1,0,0,0,0), -- Brave's Flare 
(49634,0,0,15,43068,1,1,0,0,0,0), -- Sergeant's Flare 
(53343,1,0,15,54586,1,1,0,0,0,0), -- Rune of Razorice 
(53341,1,0,15,54586,1,1,0,0,0,0); -- Rune of Cinderglacier

-- ***************** --
-- * QUEST - DATA  * --
-- ***************** --
-- ***************** --
-- In Service Of The Lich King (QUEST DATA)
UPDATE quest_template SET 
NextQuestId=0, 
NextQuestInChain=12619,
OfferRewardText='You have heard the call of the Lich King, death knight. Now is the time to answer your master.', 
WDBVerified=13623
WHERE entry=12593;

-- ***************** --
-- The Emblazoned Runeblade (QUEST DATA)
UPDATE quest_template SET 
PrevQuestId=12593, 
NextQuestId=0, 
NextQuestInChain=12842, 
OfferRewardText='Well done, $N. You have successfully created your first runebladed weapon. With it you will sow the seeds of chaos and destruction! In your wake will be a bloodied field of battle, littered with the corpses of all that would dare oppose the Scourge.', 
RequestItemsText='The runeblade is an extension of your being. A death knight cannot battle without a runeblade.', 
WDBVerified=13623
WHERE entry=12619;

-- ***************** --
-- Runeforging: Preparation For Battle (QUEST DATA)
UPDATE quest_template SET 
PrevQuestId=12619, 
NextQuestId=0, 
NextQuestInChain=12848, 
OfferRewardText='Remember these words, death knight: The Runeforge is a Scourge instrument. It exists only in Acherus, Naxxramas and the heart of Icecrown! You may only emblazon your weaponry at a Runeforge.$B$BReturn often and emblazon all of your weapons. A death knight must be prepared for all that would dare oppose $g him:her;!', 
RequestItemsText='Do not waste time, $N. We are on the brink of apocalypse!', 
EndText='Weapon emblazoned', 
CompletedText='Return to Instructor Razuvious at the Heart of Acherus in Ebon Hold.', 
WDBVerified=13623 
WHERE entry=12842;

-- ***************** --
-- The Endless Hunger (QUEST DATA)
UPDATE quest_template SET 
PrevQuestId=12842, 
NextQuestId=0, 
NextQuestInChain=12636, 
OfferRewardText='As expected, my chosen knight has triumphed! You are ready, $N.', 
RequestItemsText='Two lives, one key... Do not fail me, $N.', 
EndText='', 
CompletedText='Return to Instructor Razuvious at the Heart of Acherus in Ebon Hold.', 
WDBVerified=13623 
WHERE entry=12848;

-- ***************** --
-- The Eye Of Acherus (QUEST DATA)
UPDATE quest_template SET 
PrevQuestId=12848, 
NextQuestId=0, 
NextQuestInChain=12641, 
OfferRewardText='The time to spill the blood of our enemies approaches. You must first learn what it is that you seek to destroy, before rushing headlong into battle. It is what separates a death knight from a mindless ghoul.$B$BI will grant you sight beyond sight, my champion. You will use the eye of Acherus to steal our enemies\' secrets. ', 
WDBVerified=13623 
WHERE entry=12636;

-- ***************** --
-- Death Comes From On High (QUEST DATA)
UPDATE quest_template SET 
PrevQuestId=12636, 
NextQuestId=0, 
NextQuestInChain=12657, 
OfferRewardText='They prepare for battle - as expected - but there is something else. I sense an old enemy. An enemy that I destroyed long ago...$B$BIt matters not. We will send the full might of the Scourge against them before they have a chance to evacuate their homes and put in place their defenses.', 
RequestItemsText='Our assault upon the Scarlet Crusade will become legend.', 
EndText='', 
CompletedText='Return to The Lich King in Ebon Hold.', 
WDBVerified=13623 
WHERE entry=12641;

-- ***************** --
-- The Might Of The Scourge (QUEST DATA)
UPDATE quest_template SET 
PrevQuestId=12641, 
NextQuestId=0, 
NextQuestInChain=12850, 
OfferRewardText='The horns of war will soon echo across this land, waking the dead and calling forth the Scourge war machine. Woe unto those that would stand in our way!$B$BYou and your brethren will lead the charge, $N. When next I look upon the Scarlet lands, my sights will be obscured by the legions of Acherus. The march upon New Avalon begins now.', 
WDBVerified=13623 
WHERE entry=12657;

-- ***************** --
-- Report To Scourge Commander Thalanor (QUEST DATA)
UPDATE quest_template SET 
PrevQuestId=12657, 
NextQuestId=0, 
NextQuestInChain=12670,
OfferRewardText='The war has begun, death knight! I shall place you upon my finest gryphon and deliver you to Death\'s Breach. Chaos, death, destruction! You will herald in all of this and more!', 
WDBVerified=13623 
WHERE entry=12850;