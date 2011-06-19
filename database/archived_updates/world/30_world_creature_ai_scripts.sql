-- Some Creature Ai Scripts 
-- Syndicate Thief (2241)
DELETE FROM creature_ai_scripts WHERE creature_id=2241;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224101, 2241, 0, 0, 100, 1, 2000, 12000, 36200, 46300, 11, 6713, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Syndicate Thief - Disarm');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224102, 2241, 0, 0, 100, 1, 4800, 16600, 2000, 25200, 11, 744, 1, 32, 0, 0, 0, 0, 0, 0, 0, 0, 'Syndicate Thief - Poison');
-- Syndicate Spy (2242)
DELETE FROM creature_ai_scripts WHERE creature_id=2242;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224202, 2242, 9, 0, 100, 1, 0, 5, 1800, 9800, 11, 7159, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Syndicate Spy - Backstab');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224201, 2242, 1, 0, 100, 0, 1000, 1000, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Syndicate Spy - Sneak on Spawn');
-- Syndicate Sentry (2243)
DELETE FROM creature_ai_scripts WHERE creature_id=2243;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224301, 2243, 0, 0, 100, 1, 12000, 12000, 10700, 28600, 11, 11972, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Syndicate Sentry - Shield Bash');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224302, 2243, 0, 0, 100, 1, 35100, 35100, 30800, 39200, 11, 15062, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Syndicate Sentry - Shield Wall');
-- Syndicate Saboteur (2245)
DELETE FROM creature_ai_scripts WHERE creature_id=2245;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224502, 2245, 4, 0, 100, 0, 0, 0, 0, 0, 11, 6660, 1, 0, 23, 1, 0, 0, 0, 0, 0, 0, 'Syndicate Saboteur - Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224503, 2245, 9, 5, 100, 1, 5, 30, 2500, 5900, 11, 6660, 1, 0, 40, 2, 0, 0, 0, 0, 0, 0, 'Syndicate Saboteur - Shoot and Set Ranged Weapon Model (Phase 1)');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224507, 2245, 0, 0, 100, 1, 7400, 10200, 14500, 26900, 11, 6980, 1, 1, 40, 2, 0, 0, 0, 0, 0, 0, 'Syndicate Saboteur - Fire Shot and Set Ranged Weapon Model');
-- Syndicate Assassin (2246)
DELETE FROM creature_ai_scripts WHERE creature_id=2246;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224601, 2246, 1, 0, 100, 0, 1000, 1000, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Syndicate Assassin - Sneak on Spawn');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (224602, 2246, 0, 0, 100, 1, 9200, 17700, 8200, 30400, 11, 744, 1, 32, 0, 0, 0, 0, 0, 0, 0, 0, 'Syndicate Assassin - Poison');
-- Fix By Ari.












