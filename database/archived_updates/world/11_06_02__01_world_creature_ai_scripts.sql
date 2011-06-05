-- Vile Familiar
DELETE FROM creature_ai_scripts WHERE creature_id=3101;
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES 
(310111, 3101, 7, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Set Phase to 0 on Evade'),
(310110, 3101, 2, 7, 100, 0, 15, 0, 0, 0, 21, 1, 0, 0, 25, 0, 0, 0, 1, -47, 0, 0, 'Vile Familiar - Start Combat Movement and Flee at 15% HP (Phase 3)'),
(310109, 3101, 2, 0, 100, 0, 15, 0, 0, 0, 22, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Set Phase 3 at 15% HP'),
(310108, 3101, 3, 11, 100, 1, 100, 30, 100, 100, 23, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Set Phase 1 when Mana is above 30% (Phase 2)'),
(310107, 3101, 9, 13, 100, 0, 0, 5, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Start Combat Movement Below 5 Yards (Phase 1)'),
(310106, 3101, 9, 13, 100, 0, 5, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Prevent Combat Movement at 15 Yards (Phase 1)'),
(310105, 3101, 9, 13, 100, 0, 35, 80, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Start Combat Movement at 35 Yards (Phase 1)'),
(310104, 3101, 3, 13, 100, 0, 15, 0, 0, 0, 21, 1, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)'),
(310103, 3101, 9, 13, 100, 1, 0, 40, 4800, 6800, 11, 11921, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Cast Fireball (Phase 1)'),
(310102, 3101, 4, 0, 100, 0, 0, 0, 0, 0, 11, 11921, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Cast Fireball and Set Phase 1 on Aggro'),
(310101, 3101, 1, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 'Vile Familiar - Prevent Combat Movement and Set Phase to 0 on Spawn');