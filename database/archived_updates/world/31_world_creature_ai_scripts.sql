-- Some Creature Ai Scripts
-- Bjarn (1130)
DELETE FROM creature_ai_scripts WHERE creature_id=1130;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES (113001, 1130, 0, 0, 100, 1, 4000, 4000, 50200, 50200, 11, 3130, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bjarn - Ice Claw');
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES (113002, 1130, 0, 0, 100, 1, 2200, 2200, 15000, 24000, 11, 3147, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bjarn - Rend Flesh');
-- Dark Iron Spy (6123)
DELETE FROM creature_ai_scripts WHERE creature_id=6123;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES (612301, 6123, 0, 0, 100, 1, 4000, 6000, 7000, 9000, 11, 14873, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Spy - Sinister Strike');
-- Fix By Ari.
