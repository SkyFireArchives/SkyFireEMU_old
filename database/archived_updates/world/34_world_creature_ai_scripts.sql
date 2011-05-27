-- Arkkoran Oracle
DELETE FROM creature_ai_scripts WHERE creature_id=6138;
-- Lightning Shield
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_chance, action1_type, action1_param1, comment) VALUES (613801, 6138, 4, 100, 11, 12550, 'Arkkoran Oracle - Lightning Shield on Aggro');
-- Shock
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_chance, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, comment) VALUES (613802, 6138, 0, 100, 3000, 5000, 4000, 7000, 11, 11824, 1, 'Arkkoran Oracle - Shock');
-- Healing Weave
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_chance, event_param1, action1_type, action1_param1, comment) VALUES (613803, 6138, 2, 100, 50, 11, 11986, 'Arkkoran Oracle - Healing Wave at 50% HP');
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_chance, event_param1, action1_type, action1_param1, comment) VALUES (613804, 6138, 2, 100, 15, 11, 11986, 'Arkkoran Oracle - Healing Wave at 15% HP');
-- Fix By Ari.