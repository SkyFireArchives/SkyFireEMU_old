-- [EAI-NPC] Obsidian Eradicator
DELETE FROM creature_ai_scripts WHERE creature_id=15262;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES
(1526201, 15262, 1, 0, 100, 3, 0, 0, 500, 500, 17, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Obsidian Eradicator - Set Mana to 0 OOC'),
(1526202, 15262, 0, 0, 100, 3, 1000, 1000, 1000, 1000, 11, 25671, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Obsidian Eradicator - Periodic Cast Drain Mana'),
(1526203, 15262, 3, 0, 100, 3, 100, 99, 1000, 1000, 11, 26458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Obsidian Eradicator - Cast on 100% HP Shockblast'),
(1526204, 15262, 0, 0, 100, 3, 0, 0, 40000, 40000, 11, 20223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Obsidian Eradicator - Periodic Cast Magic Reflexion on Self');