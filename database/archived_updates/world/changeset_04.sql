--     //                         //
--    //      ChangeSET_04       //
--   //       04.02.2011        //
    

-- HEROS CALL BOARD   


DELETE FROM gameobject_questrelation WHERE id=206111;
-- Hero's Call: BadlANDs!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28579);
-- Hero's Call: Blasted LANDs!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28673);
-- Hero's Call: Burning Steppes!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28666);
-- Hero's Call: Deepholm!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 27727);
-- Hero's Call: Duskwood!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28564);
-- Hero's Call: Dustwallow Marsh!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28552);
-- Hero's Call: Eastern PlaguelANDs!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28578);
-- Hero's Call: Mount Hyjal!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 27726);
-- Hero's Call: Northern Stranglethorn Vale!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28699);
-- Hero's Call: Northrend!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28709);
-- Hero's Call: OutlAND!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28708);
-- Hero's Call: Redridge Mountains!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28563);
-- Hero's Call: Searing Gorge!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28582);
-- Hero's Call: Southern Barrens!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28551);
-- Hero's Call: Swamp of Sorrows!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28675);
-- Hero's Call: The Cape of Stranglethorn!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28702);
-- Hero's Call: Twilight HighlANDs!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28716);
-- Hero's Call: Uldum!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28558);
-- Hero's Call: Vashj'ir!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 27724);
-- Hero's Call: Western PlaguelANDs!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28576);
-- Hero's Call: Westfall!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206111, 28562);

                     
-- WARCHIEFS COMMAND BOARD 


DELETE FROM gameobject_questrelation WHERE id=206109;
-- Warchief's CommAND: Ashenvale!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28493);
-- Warchief's CommAND: Azshara!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28496);
-- Warchief's CommAND: Deepholm!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 27722);
-- Warchief's CommAND: Desolace!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28548);
-- Warchief's CommAND: Dustwallow Marsh!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28554);
-- Warchief's CommAND: Felwood!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28542);
-- Warchief's CommAND: Feralas!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28510);
-- Warchief's CommAND: Mount Hyjal!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 27721);
-- Warchief's CommAND: Northern Barrens!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28494);
-- Warchief's CommAND: Northrend!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28711);
-- Warchief's CommAND: OutlAND!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28705);
-- Warchief's CommAND: Silithus!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28527);
-- Warchief's CommAND: Southern Barrens!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28549);
-- Warchief's CommAND: Stonetalon Mountains!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28532);
-- Warchief's CommAND: Tanaris!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28509);
-- Warchief's CommAND: ThousAND Needles!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28504);
-- Warchief's CommAND: Twilight HighlANDs!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28717);
-- Warchief's CommAND: Uldum!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28557);
-- Warchief's CommAND: Un'Goro Crater!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28526);
-- Warchief's CommAND: Vashj'ir!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 27718);
-- Warchief's CommAND: Winterspring!
INSERT INTO gameobject_questrelation (id, quest) VALUES (206109, 28545);

-- 29 Startup Errors: FIX
UPDATE quest_template SET QuestFlags=8 WHERE QuestFlags=33554440;
-- Fix By MisiMouse

-- Autoacept flags in TC is 524288 no 17563648
-- http://www.wowhead.com/quest=14138
-- http://www.wowhead.com/quest=14091
-- http://www.wowhead.com/quest=24473
-- http://www.wowhead.com/quest=28142
UPDATE quest_template SET QuestFlags=524288 WHERE QuestFlags=17563648;
-- Fix By MisiMouse


-- PLATE MAIL
INSERT INTO npc_trainer (entry, spell, spellcost, reqlevel) VALUES (200002, 750, 15000, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqlevel) VALUES (200004, 750, 15000, 40);
DELETE FROM playercreateinfo_spell_custom WHERE Spell=750;
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 2, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 2, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 2, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 2, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (4, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (5, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (7, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 2, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 1, 750, 'Plate Mail', 1);
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 1, 750, 'Plate Mail', 1);

-- PET TRAINER NPC FLAG FIX (17)
UPDATE creature_template SET npcflag=17 WHERE subname LIKE '%Pet Trainer%';

-- PET TRAINERS NPC FLAG FIX (19)
UPDATE creature_template SET npcflag=19 WHERE subname LIKE '%Pet Trainer%' AND entry in (SELECT id FROM creature_questrelation);

-- CLASS TRAINERS NPC FLAG FIX (49)
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Warrior Trainer%';
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Rogue Trainer%';
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Mage Trainer%';
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Shaman Trainer%';
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Hunter Trainer%';
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Paladin Trainer%';
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Priest Trainer%';
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Druid Trainer%';
UPDATE creature_template SET npcflag=49 WHERE subname LIKE '%Warlock Trainer%';

-- CLASS TRAINERS NPC FLAG FIX (51)
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Warrior Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Rogue Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Mage Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Shaman Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Hunter Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Paladin Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Priest Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Druid Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=51 WHERE subname LIKE '%Warlock Trainer%' AND entry in (SELECT id FROM creature_questrelation);

-- Profession Trainer NPC FLAG FIX (81)
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Alchemy Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Blacksmithing Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Enchanting Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Engineering Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Herbalism Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Inscription Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Jewelcrafting Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Leatherworking Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Mining Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Skinning Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Tailoring Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Archaeology Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Cooking Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%First Aid Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Fishing Trainer%';
UPDATE creature_template SET npcflag=81 WHERE subname LIKE '%Riding Trainer%';

-- Proffesion Trainer NPC FLAG FIX (83)
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Alchemy Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Blacksmithing Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Enchanting Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Engineering Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Herbalism Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Inscription Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Jewelcrafting Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Leatherworking Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Mining Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Skinning Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Tailoring Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Archaeology Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Cooking Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%First Aid Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Fishing Trainer%' AND entry in (SELECT id FROM creature_questrelation);
UPDATE creature_template SET npcflag=83 WHERE subname LIKE '%Riding Trainer%' AND entry in (SELECT id FROM creature_questrelation);

