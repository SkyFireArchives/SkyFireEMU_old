--    //      ChangeSET_06       //
--   //       07.02.2011        //

-- Dual Wield (http://www.wowhead.com/spell=674)
UPDATE npc_trainer SET spellcost=4000 WHERE Spell=674;
DELETE FROM playercreateinfo_spell WHERE Spell=674;
DELETE FROM playercreateinfo_spell_custom WHERE Spell=674;
-- (Warrior)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 1, 674, 'Dual Wield', 1); -- Human
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 1, 674, 'Dual Wield', 1); -- Orc
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 1, 674, 'Dual Wield', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (4, 1, 674, 'Dual Wield', 1); -- Night Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (5, 1, 674, 'Dual Wield', 1); -- Undead
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 1, 674, 'Dual Wield', 1); -- Tauren
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (7, 1, 674, 'Dual Wield', 1); -- Gnome
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 1, 674, 'Dual Wield', 1); -- Troll
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 1, 674, 'Dual Wield', 1); -- Goblin
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 1, 674, 'Dual Wield', 1); -- Blood Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 1, 674, 'Dual Wield', 1); -- Draenei
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (22, 1, 674, 'Dual Wield', 1); -- Worgen

-- (Hunter)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 3, 674, 'Dual Wield', 1); -- Human
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 3, 674, 'Dual Wield', 1); -- Orc
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 3, 674, 'Dual Wield', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (4, 3, 674, 'Dual Wield', 1); -- Night Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (5, 3, 674, 'Dual Wield', 1); -- Undead
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 3, 674, 'Dual Wield', 1); -- Tauren
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 3, 674, 'Dual Wield', 1); -- Troll
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 3, 674, 'Dual Wield', 1); -- Goblin
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 3, 674, 'Dual Wield', 1); -- Blood Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 3, 674, 'Dual Wield', 1); -- Draenei
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (22, 3, 674, 'Dual Wield', 1); -- Worgen

-- (Rogue)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 4, 674, 'Dual Wield', 1); -- Human
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 4, 674, 'Dual Wield', 1); -- Orc
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 4, 674, 'Dual Wield', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (4, 4, 674, 'Dual Wield', 1); -- Night Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (5, 4, 674, 'Dual Wield', 1); -- Undead
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (7, 4, 674, 'Dual Wield', 1); -- Gnome
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 4, 674, 'Dual Wield', 1); -- Troll
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 4, 674, 'Dual Wield', 1); -- Goblin
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 4, 674, 'Dual Wield', 1); -- Blood Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (22, 4, 674, 'Dual Wield', 1); -- Worgen

-- (Rogue)
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (1, 4, 674, 'Dual Wield'); -- Human
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (2, 4, 674, 'Dual Wield'); -- Orc
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (3, 4, 674, 'Dual Wield'); -- Dwarf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (4, 4, 674, 'Dual Wield'); -- Night Elf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (5, 4, 674, 'Dual Wield'); -- Undead
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (7, 4, 674, 'Dual Wield'); -- Gnome
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (8, 4, 674, 'Dual Wield'); -- Troll
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (9, 4, 674, 'Dual Wield'); -- Goblin
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (10, 4, 674, 'Dual Wield'); -- Blood Elf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (22, 4, 674, 'Dual Wield'); -- Worgen

-- (Death Knights)
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (1, 6, 674, 'Dual Wield'); -- Human
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (2, 6, 674, 'Dual Wield'); -- Orc
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (3, 6, 674, 'Dual Wield'); -- Dwarf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (4, 6, 674, 'Dual Wield'); -- Night Elf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (5, 6, 674, 'Dual Wield'); -- Undead
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (7, 6, 674, 'Dual Wield'); -- Gnome
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (6, 6, 674, 'Dual Wield'); -- Tauren
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (8, 6, 674, 'Dual Wield'); -- Troll
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (9, 6, 674, 'Dual Wield'); -- Goblin
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (10, 6, 674, 'Dual Wield'); -- Blood Elf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (11, 6, 674, 'Dual Wield'); -- Draenei
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (22, 6, 674, 'Dual Wield'); -- Worgen

-- (Death Knights)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 6, 674, 'Dual Wield', 1); -- Human
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 6, 674, 'Dual Wield', 1); -- Orc
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 6, 674, 'Dual Wield', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (4, 6, 674, 'Dual Wield', 1); -- Night Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (5, 6, 674, 'Dual Wield', 1); -- Undead
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 6, 674, 'Dual Wield', 1); -- Tauren
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (7, 6, 674, 'Dual Wield', 1); -- Gnome
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 6, 674, 'Dual Wield', 1); -- Troll
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 6, 674, 'Dual Wield', 1); -- Goblin
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 6, 674, 'Dual Wield', 1); -- Blood Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 6, 674, 'Dual Wield', 1); -- Draenei
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (22, 6, 674, 'Dual Wield', 1); -- Worgen

-- (Shaman)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 7, 674, 'Dual Wield', 1); -- Orc
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 7, 674, 'Dual Wield', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 7, 674, 'Dual Wield', 1); -- Tauren
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 7, 674, 'Dual Wield', 1); -- Troll
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 7, 674, 'Dual Wield', 1); -- Goblin
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 7, 674, 'Dual Wield', 1); -- Draenei




-- Mail (http://www.wowhead.com/spell=8737)
DELETE FROM playercreateinfo_spell_custom WHERE Spell=8737;
-- (Warrior)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 1, 8737, 'Mail', 1); -- Human
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 1, 8737, 'Mail', 1); -- Orc
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 1, 8737, 'Mail', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (4, 1, 8737, 'Mail', 1); -- Night Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (5, 1, 8737, 'Mail', 1); -- Undead
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 1, 8737, 'Mail', 1); -- Tauren
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (7, 1, 8737, 'Mail', 1); -- Gnome
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 1, 8737, 'Mail', 1); -- Troll
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 1, 8737, 'Mail', 1); -- Goblin
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 1, 8737, 'Mail', 1); -- Blood Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 1, 8737, 'Mail', 1); -- Draenei
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (22, 1, 8737, 'Mail', 1); -- Worgen

-- (Paladin)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 2, 8737, 'Mail', 1); -- Human
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 2, 8737, 'Mail', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 2, 8737, 'Mail', 1); -- Tauren
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 2, 8737, 'Mail', 1); -- Blood Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 2, 8737, 'Mail', 1); -- Draenei

-- (Hunter)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (1, 3, 8737, 'Mail', 1); -- Human
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 3, 8737, 'Mail', 1); -- Orc
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 3, 8737, 'Mail', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (4, 3, 8737, 'Mail', 1); -- Night Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (5, 3, 8737, 'Mail', 1); -- Undead
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 3, 8737, 'Mail', 1); -- Tauren
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 3, 8737, 'Mail', 1); -- Troll
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 3, 8737, 'Mail', 1); -- Goblin
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (10, 3, 8737, 'Mail', 1); -- Blood Elf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 3, 8737, 'Mail', 1); -- Draenei
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (22, 3, 8737, 'Mail', 1); -- Worgen

-- (Shaman)
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (2, 7, 8737, 'Mail', 1); -- Orc
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (3, 7, 8737, 'Mail', 1); -- Dwarf
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (6, 7, 8737, 'Mail', 1); -- Tauren
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (8, 7, 8737, 'Mail', 1); -- Troll
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (9, 7, 8737, 'Mail', 1); -- Goblin
INSERT INTO playercreateinfo_spell_custom (race, class, Spell, Note, Active) VALUES (11, 7, 8737, 'Mail', 1); -- Draenei


-- NPC Trainer For Mail
DELETE FROM npc_trainer WHERE spell=8737;
-- (Shaman)
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3030, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3031, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3032, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3066, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3173, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3344, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3403, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (13417, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17212, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17219, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17520, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (20407, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (23127, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (35786, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (36521, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (38515, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (43464, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (44393, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (44394, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (44740, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (45029, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (45718, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49808, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49900, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49964, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50011, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50019, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50022, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50130, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50153, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50174, 8737, 15000, 0, 0, 40);

-- (Hunter)
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (1231, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3065, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3171, 8737, 15000, 0, 0, 4);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3352, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3601, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (4146, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5116, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5117, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5515, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (16270, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17110, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3039, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5115, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5516, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (16673, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (4205, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3040, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5517, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (16672, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3407, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (1404, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (35758, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (36518, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (36629, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (38122, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (38467, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (38798, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (39100, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (39116, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (39214, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (43011, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (43277, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (44247, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (44249, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (44743, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (45023, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (45713, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (46983, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (47767, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (47788, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (48618, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49806, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49894, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49927, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49946, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49958, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50004, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50007, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50032, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50144, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50157, 8737, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50497, 8737, 15000, 0, 0, 40);

-- NPC Trainer For Plate Mail
DELETE FROM npc_trainer WHERE spell=750;
-- (Warrior)
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (913, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (914, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (1229, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (1901, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (2131, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3042, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3043, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3063, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3169, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3353, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3354, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (3598, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (4087, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (4089, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (4593, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (4594, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (4595, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5114, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5479, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5480, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (45709, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (7315, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (36651, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (38518, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (38793, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (43009, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (43012, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (44723, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (45019, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (46667, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49736, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49781, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49902, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49923, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49955, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50006, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50018, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50025, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50033, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50149, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50155, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50500, 750, 15000, 0, 0, 40);

-- (Paladin)
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (927, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (928, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (1232, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5147, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5148, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5149, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5491, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (5492, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (16275, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (16679, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (16680, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (16681, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (16761, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17483, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17509, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (17844, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (20406, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (23128, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (35281, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (43001, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (43013, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (43795, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (44725, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49741, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49793, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (49954, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50012, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50023, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50035, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50150, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (50160, 750, 15000, 0, 0, 40);
INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) VALUES (8664, 750, 15000, 0, 0, 40);

-- Attack
-- (Warrior)
DELETE FROM playercreateinfo_spell WHERE Spell IN (8386, 6603, 88163) AND class=1;
-- (88163)
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (1, 1, 88163, 'Warrior Attack'); -- Human
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (2, 1, 88163, 'Warrior Attack'); -- Orc
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (3, 1, 88163, 'Warrior Attack'); -- Dwarf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (4, 1, 88163, 'Warrior Attack'); -- Night Elf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (5, 1, 88163, 'Warrior Attack'); -- Undead
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (6, 1, 88163, 'Warrior Attack'); -- Tauren
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (7, 1, 88163, 'Warrior Attack'); -- Gnome
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (8, 1, 88163, 'Warrior Attack'); -- Troll
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (9, 1, 88163, 'Warrior Attack'); -- Goblin
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (10, 1, 88163, 'Warrior Attack'); -- Blood Elf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (11, 1, 88163, 'Warrior Attack'); -- Draenei
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (22, 1, 88163, 'Warrior Attack'); -- Worgen
-- (6603)
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (1, 1, 6603, 'Warrior Attack'); -- Human
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (2, 1, 6603, 'Warrior Attack'); -- Orc
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (3, 1, 6603, 'Warrior Attack'); -- Dwarf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (4, 1, 6603, 'Warrior Attack'); -- Night Elf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (5, 1, 6603, 'Warrior Attack'); -- Undead
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (6, 1, 6603, 'Warrior Attack'); -- Tauren
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (7, 1, 6603, 'Warrior Attack'); -- Gnome
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (8, 1, 6603, 'Warrior Attack'); -- Troll
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (9, 1, 6603, 'Warrior Attack'); -- Goblin
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (10, 1, 6603, 'Warrior Attack'); -- Blood Elf
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (11, 1, 6603, 'Warrior Attack'); -- Draenei
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (22, 1, 6603, 'Warrior Attack'); -- Worgen


-- Etched Crystal
DELETE FROM page_text WHERE entry=2875;
INSERT INTO page_text (entry, text) VALUES (2875, 'Ari: Text Is Missing! ');

-- Commander Springvale Heroic Entry
UPDATE creature_template SET difficulty_entry_1=49710 WHERE entry=4278;

-- http://www.wowhead.com/item=63445
-- http://www.wowhead.com/item=63446
-- http://www.wowhead.com/item=63447
-- http://www.wowhead.com/item=63448
-- http://www.wowhead.com/item=63449
-- This items is a loot from creature 49710 I set for this NPC cos can't be 0, the creature_loot_template entry for this creature is 49710.
UPDATE creature_loot_template SET entry='49710' WHERE entry= '0' AND item IN ('63445', '63446', '63447', '63448', '63449');
-- By Misimouse

-- 2011-02-06 15:08:42 ERROR: Table 'gameobject_loot_template' entry 189980 item 26912: item entry not listed in item_template - skipped
-- 2011-02-06 15:08:42 ERROR: Table 'gameobject_loot_template' entry 189981 item 26912: item entry not listed in item_template - skipped
-- 2011-02-06 15:08:42 ERROR: Table 'gameobject_loot_template' entry 195036 item 26912: item entry not listed in item_template - skipped
-- http://www.wowhead.com/item=26912
-- This item calling "71 TEST Green Druid Head" seems to be a test item (not sure) like we don't have any information abut his item I delete it.
DELETE FROM gameobject_loot_template WHERE item='26912';
-- By Misimouse


-- This loot have maxcount=0 but is mincountOrRef=1 maxcount need to be 1 at least.
-- http://www.wowhead.com/npc=20221
-- http://www.wowhead.com/item=28550
-- 2011-02-06 14:35:56 ERROR: Table 'creature_loot_template' entry 20221 item 28550: max count (0) less that min count (1) - skipped
DELETE FROM creature_loot_template WHERE (entry=20221) AND (item=28550);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (20221, 28550, -45, 1, 0, 1, 1);

-- http://www.wowhead.com/npc=2751
-- http://www.wowhead.com/item=9848
-- 2011-02-06 14:35:57 ERROR: Table 'creature_loot_template' entry 2751 item 9848: max count (0) less that min count (1) - skipped
DELETE FROM creature_loot_template WHERE (entry=2751) AND (item=9848);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (2751, 9848, 11.5, 1, 0, 1, 1);

-- http://www.wowhead.com/npc=3840
-- http://www.wowhead.com/item=6552
-- 2011-02-06 14:35:57 ERROR: Table 'creature_loot_template' entry 3840 item 6552: max count (0) less that min count (1) - skipped
DELETE FROM creature_loot_template WHERE (entry=3840) AND (item=6552);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) VALUES (3840, 6552, 0.05, 1, 0, 1, 1);
-- By Misimouse

-- GnomeElevator
-- GnomeElevator01
DELETE FROM gameobject_template WHERE (entry=205079);
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, AIName, ScriptName, WDBVerified) VALUES (205079, 11, 807, 'GnomeElevator01', '', '', '', 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);
-- GnomeElevator02
DELETE FROM gameobject_template WHERE (entry=205080);
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, unk1, faction, flags, size, questItem1, questItem2, questItem3, questItem4, questItem5, questItem6, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, AIName, ScriptName, WDBVerified) VALUES (205080, 11, 808, 'GnomeElevator02', '', '', '', 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);

-- Mottled Boar (http://www.wowhead.com/npc=3098)
UPDATE creature_template SET npcflag=0 WHERE entry=3098;

-- Mana Wyrm (http://www.wowhead.com/npc=15274)
UPDATE creature_template SET npcflag=0 WHERE entry=15274;


-- DB Error Fixes:
-- Doctor Gregory Victor <Trauma Surgeon> (http://www.wowhead.com/npc=12920)
UPDATE creature_template SET npcflag=3 WHERE entry=12920;

-- Weaver Aoa <Tailoring Trainer> (http://www.wowhead.com/npc=33684)
UPDATE creature_template SET npcflag=209 WHERE entry=33684;

-- Dremm <Skinning Trainer> (http://www.wowhead.com/npc=33683)
UPDATE creature_template SET npcflag=209 WHERE entry=33683;

-- Fono <Mining Trainer> (http://www.wowhead.com/npc=33682)
UPDATE creature_template SET npcflag=209 WHERE entry=33682;

-- Korim <Leatherworking Trainer> (http://www.wowhead.com/npc=33681)
UPDATE creature_template SET npcflag=209 WHERE entry=33681;

-- Nemiha <Jewelcrafting Trainer> (http://www.wowhead.com/npc=33680)
UPDATE creature_template SET npcflag=209 WHERE entry=33680;

-- Recorder Lidio <Inscription Trainer> (http://www.wowhead.com/npc=33679)
UPDATE creature_template SET npcflag=209 WHERE entry=33679;

-- Jijia <Herbalism Trainer> (http://www.wowhead.com/npc=33678)
UPDATE creature_template SET npcflag=209 WHERE entry=33678;

-- Technician Mihila <Engineering Trainer> (http://www.wowhead.com/npc=33677)
UPDATE creature_template SET npcflag=209 WHERE entry=33677;

-- Zurii <Enchanting Trainer> (http://www.wowhead.com/npc=33676)
UPDATE creature_template SET npcflag=209 WHERE entry=33676;

-- Onodo <Blacksmithing Trainer> (http://www.wowhead.com/npc=33675)
UPDATE creature_template SET npcflag=209 WHERE entry=33675;

-- Alchemist Kanhu <Alchemy Trainer> (http://www.wowhead.com/npc=33674)
UPDATE creature_template SET npcflag=209 WHERE entry=33674;

-- Hanlir <Mining Trainer> (http://www.wowhead.com/npc=33640)
UPDATE creature_template SET npcflag=209 WHERE entry=33640;

-- Botanist Alaenra <Herbalism Trainer> (http://www.wowhead.com/npc=33639)
UPDATE creature_template SET npcflag=209 WHERE entry=33639;

-- Scribe Lanloer <Inscription Trainer> (http://www.wowhead.com/npc=33638)
UPDATE creature_template SET npcflag=209 WHERE entry=33638;

-- Kirembri Silvermane <Jewelcrafting Trainer> (http://www.wowhead.com/npc=33637)
UPDATE creature_template SET npcflag=209 WHERE entry=33637;

-- Miralisse <Tailoring Trainer> (http://www.wowhead.com/npc=33636)
UPDATE creature_template SET npcflag=209 WHERE entry=33636;

-- Daenril <Leatherworking Trainer> (http://www.wowhead.com/npc=33635)
UPDATE creature_template SET npcflag=209 WHERE entry=33635;

-- Engineer Sinbei <Engineering Trainer> (http://www.wowhead.com/npc=33634)
UPDATE creature_template SET npcflag=209 WHERE entry=33634;

-- Enchantress Andiala <Enchanting Trainer> (http://www.wowhead.com/npc=33633)
UPDATE creature_template SET npcflag=209 WHERE entry=33633;

-- Barien <Blacksmithing Trainer> (http://www.wowhead.com/npc=33631)
UPDATE creature_template SET npcflag=209 WHERE entry=33631;

-- Aelthin <Alchemy Trainer> (http://www.wowhead.com/npc=33630)
UPDATE creature_template SET npcflag=209 WHERE entry=33630;

-- Marcia Chase <Fishing Trainer & Supplies> (http://www.wowhead.com/npc=28742)
UPDATE creature_template SET npcflag=723 WHERE entry=28742;

-- Timothy Jones <Jewelcrafting Trainer> (http://www.wowhead.com/npc=28701)
UPDATE creature_template SET npcflag=211 WHERE entry=28701;

-- Tink Brightbolt <Inscription Trainer> (http://www.wowhead.com/npc=26995)
UPDATE creature_template SET npcflag=2257 WHERE entry=26995;

-- Adelene Sunlance <Inscription Trainer> (http://www.wowhead.com/npc=26977)
UPDATE creature_template SET npcflag=209 WHERE entry=26977;

-- Booker Kells <Inscription Trainer> (http://www.wowhead.com/npc=26959)
UPDATE creature_template SET npcflag=2257 WHERE entry=26959;

-- Mindri Dinkles <Inscription Trainer> (http://www.wowhead.com/npc=26916)
UPDATE creature_template SET npcflag=2257 WHERE entry=26916;

-- Anchorite Yazmina <First Aid Trainer> (http://www.wowhead.com/npc=23734)
UPDATE creature_template SET npcflag=80 WHERE entry=23734;

-- Asarnan <Enchanting Trainer> (http://www.wowhead.com/npc=19540)
UPDATE creature_template SET npcflag=209 WHERE entry=19540;

-- Jazdalaad <Jewelcrafting Trainer> (http://www.wowhead.com/npc=19539)
UPDATE creature_template SET npcflag=209 WHERE entry=19539;

-- Juno Dufrain <Fishing Trainer> (http://www.wowhead.com/npc=18911)
UPDATE creature_template SET npcflag=209 WHERE entry=18911;

-- Alchemist Gribble <Alchemy Trainer> (http://www.wowhead.com/npc=18802)
UPDATE creature_template SET npcflag=3283 WHERE entry=18802;

-- Lebowski <Engineering Trainer> (http://www.wowhead.com/npc=18775)
UPDATE creature_template SET npcflag=209 WHERE entry=18775;

-- Tatiana <Jewelcrafting Trainer> (http://www.wowhead.com/npc=18774)
UPDATE creature_template SET npcflag=209 WHERE entry=18774;

-- Johan Barnes <Enchanting Trainer> (http://www.wowhead.com/npc=18773)
UPDATE creature_template SET npcflag=209 WHERE entry=18773;

-- Hama <Tailoring Trainer> (http://www.wowhead.com/npc=18772)
UPDATE creature_template SET npcflag=209 WHERE entry=18772;

-- Brumman <Leatherworking Trainer> (http://www.wowhead.com/npc=18771)
UPDATE creature_template SET npcflag=209 WHERE entry=18771;

-- Barim Spilthoof <Leatherworking Trainer> (http://www.wowhead.com/npc=18754)
UPDATE creature_template SET npcflag=209 WHERE entry=18754;

-- Felannia <Enchanting Trainer> (http://www.wowhead.com/npc=18753)
UPDATE creature_template SET npcflag=209 WHERE entry=18753;

-- Zebig <Engineering Trainer> (http://www.wowhead.com/npc=18752)
UPDATE creature_template SET npcflag=209 WHERE entry=18752;

-- Achivement Criterias:
DELETE FROM achievement_criteria_data WHERE criteria_id IN 
(13261, 13260, 12579, 5511, 5510, 5509, 5508, 5507, 5503, 5502, 5501, 5500, 5499, 5495, 5494, 5493, 5492, 3882, 3829, 3828, 3827, 3826, 1823, 1822, 1821, 1820);
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (13261, 20, 628, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (13260, 20, 628, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (12579, 20, 628, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5511, 20, 607, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5510, 20, 566, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5509, 20, 489, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5508, 20, 529, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5507, 20, 30, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5503, 20, 607, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5502, 20, 566, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5501, 20, 489, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5500, 20, 30, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5499, 20, 529, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5495, 20, 571, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5494, 20, 530, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5493, 20, 1, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (5492, 20, 0, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (3882, 5, 48890, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (3829, 5, 26274, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (3828, 5, 26273, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (3827, 5, 26272, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (3826, 5, 26157, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (1823, 20, 489, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (1822, 20, 566, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (1821, 20, 30, 0, '');
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES (1820, 20, 529, 0, '');

-- Deletation Of Unused Achivement Criteria.
DELETE FROM achievement_criteria_data WHERE criteria_id=15362 AND type=0;







-- Spell Loot Template
DELETE FROM spell_loot_template WHERE entry IN
(48247, 57844, 58160, 58165, 58168, 58172, 59480, 59487, 59491, 59502, 59503, 59504, 60445, 60893, 61177, 61288, 61500, 61898, 64051, 64202, 69412);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (48247, 37168, 100, 1, 0, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (57844, 36784, 1, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (57844, 36783, 10, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (57844, 36782, 89, 1, 1, 1, 3);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58160, 24479, 5, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58160, 24478, 8, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58160, 24477, 100, 1, 0, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58160, 13926, 3, 1, 1, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58165, 13926, 1, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58165, 7974, 45, 1, 1, 1, 2);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58165, 7971, 1, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58165, 5504, 22, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58165, 5500, 4, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58165, 4655, 27, 1, 1, 1, 2);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58168, 5504, 45, 1, 1, 1, 2);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58168, 5503, 25, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58168, 5500, 2, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58168, 5498, 2, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58168, 4611, 26, 1, 1, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58172, 5504, 25, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58172, 5503, 50, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58172, 5500, 1, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58172, 5498, 3, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (58172, 4611, 21, 1, 1, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59480, 44142, 100, 1, 0, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59487, 44161, 100, 1, 0, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59491, 44163, 100, 1, 0, 1, 1);
 
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19227, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19230, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19231, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19232, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19233, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19234, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19235, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19236, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19268, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19269, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19270, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19271, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19272, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19273, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19274, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19275, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19276, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19278, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19279, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19280, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19281, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19282, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19283, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19284, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19258, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19259, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19260, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19261, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19262, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19263, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19264, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59502, 19265, 0, 1, 1, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31882, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31889, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31888, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31885, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31884, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31887, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31886, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31883, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31901, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31909, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31908, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31904, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31903, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31906, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31905, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31902, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31910, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31918, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31917, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31913, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31912, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31916, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31915, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31911, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31892, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31900, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31899, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31895, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31894, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31898, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31896, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59503, 31893, 0, 1, 1, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44277, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44278, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44279, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44280, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44281, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44282, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44284, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44285, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44268, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44269, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44270, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44271, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44272, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44273, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44274, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44275, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44260, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44261, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44262, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44263, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44264, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44265, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44266, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44267, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44286, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44287, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44288, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44289, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44290, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44291, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44292, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (59504, 44293, 0, 1, 1, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60445, 11025, 100, 1, 1, -11025, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 44331, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 44330, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 44329, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 44328, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 44327, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 44325, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 40212, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 40211, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 40109, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 40097, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 40087, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (60893, 40077, 0, 1, 1, 1, 3);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61177, 44315, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61177, 43466, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61177, 43464, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61177, 43146, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61177, 43145, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61177, 37098, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61177, 37094, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61177, 37092, 0, 1, 1, 1, 3);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 39349, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 38682, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 37118, 0, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 2290, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 2289, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 1712, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 1711, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 1478, 0, 1, 1, 1, 3);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61288, 1477, 0, 1, 1, 1, 3);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61500, 36909, 0, 1, 1, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (61898, 15924, -100, 1, 0, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (64051, 45854, 100, 1, 0, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (64202, 36782, 100, 1, 0, 3, 5);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (64202, 36783, 50, 1, 1, 1, 1);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (64202, 36784, 5, 1, 1, 1, 1);

INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (69412, 34054, 0, 1, 1, 7, 17);
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (69412, 34055, 0, 1, 1, 2, 6);

-- ChangeSET-06