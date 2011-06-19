-- EVENT AI: (Blackrock Sergeant, Smolderthorn Assassin)
-- Blackrock Sergeant
DELETE FROM creature_ai_scripts WHERE creature_id=48201;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES (4820101, 48201, 0, 0, 100, 1, 6300, 12300, 6100, 11700, 11, 12170, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Sergeant - Revenge');
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES (4820102, 48201, 0, 0, 100, 1, 5200, 13800, 12200, 26800, 11, 3248, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Sergeant - Improved Blocking');
-- Smolderthorn Assassin
DELETE FROM creature_ai_scripts WHERE creature_id=48119;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES (4811901, 48119, 0, 0, 100, 1, 1300, 7300, 4800, 6100, 11, 7159, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Smolderthorn Assassin - Backstab');
-- Fix By Ari.
