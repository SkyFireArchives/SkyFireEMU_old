
-- Goblin SAY_EXEC_START_4
DELETE FROM script_texts WHERE entry = '-1609079';
INSERT INTO `script_texts` VALUES ('29032', '-1609079', 'C... cant we work this out somehow? ', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '1', 'special_surprise SAY_EXEC_START_4');

-- Goblin SAY_EXEC_PROG_8
DELETE FROM script_texts WHERE entry = '-1609080';
INSERT INTO `script_texts` VALUES ('29032', '-1609080', 'Alright, j... just let me... let me st... stand up.', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '25', 'special_surprise SAY_EXEC_PROG_8');

-- Goblin SAY_EXEC_NOREM_10
DELETE FROM script_texts WHERE entry = '-1609081';
INSERT INTO `script_texts` VALUES ('29032', '-1609081', 'You don\'t remember me, $N? I lost count of the number of jobs you and I ran back in the day on Kezan. Then I picked up a real bad Kaja\'Cola habit and you saved me! It was you who took me to Kalimdor to join the Steamwheedle Cartel. You were the only good goblin I knew.', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '1', 'special_surprise SAY_EXEC_NOREM_10');

-- Goblin SAY_EXEC_THINK_11
DELETE FROM script_texts WHERE entry = '-1609082';
INSERT INTO `script_texts` VALUES ('29032', '-1609082', 'That\'s how I ended up in the Argent Dawn, because I knew it\'s what you woulda done. How could this have happened to you? 
Remember the goblin you once were, $Gbrother:sister;! You were my best friend! Fight this!', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '1', 'special_surprise SAY_EXEC_THINK_11');

-- Goblin SAY_EXEC_LISTEN_5
DELETE FROM script_texts WHERE entry = '-1609083';
INSERT INTO `script_texts` VALUES ('29032', '-1609083', 'Listen to me, $N. You must fight against the Lich King\'s control. He is a monster that wants to see this world - our world - in ruin. Don\'t let him use you to accomplish his goals. You were once a hero and can be again. Fight, damn you! Fight his control!', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '5', 'special_surprise SAY_EXEC_LISTEN_5');

-- Goblin SAY_EXEC_TIME_11
DELETE FROM script_texts WHERE entry = '-1609084';
INSERT INTO `script_texts` VALUES ('29032', '-1609084', 'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Kezan, our beloved home. This world is worth saving!', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '18', 'special_surprise SAY_EXEC_TIME_11');

-- Worgen SAY_EXEC_NOREM_11
DELETE FROM script_texts WHERE entry = '-1609085';
INSERT INTO `script_texts` VALUES ('29032', '-1609085', 'You don\'t remember me? We were both servants of Arugal back in Silverpine Forest. We put up with his merciless torture for ages. It was you who saved me on that fateful night when we escaped Shadowfang Keep. ', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '1', 'special_surprise SAY_EXEC_NOREM_11');

-- Worgen SAY_EXEC_THINK_12
DELETE FROM script_texts WHERE entry = '-1609086';
INSERT INTO `script_texts` VALUES ('29032', '-1609086', 'Without you I would have died. YOU! The most noble worgen I ever knew. What have they done to you, $N? How could this have happened? Remember the worgen you once were, $Gbrother:sister;! You were our savior! Fight this! ', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '1', 'special_surprise SAY_EXEC_THINK_12');

-- Worgen SAY_EXEC_TIME_12
DELETE FROM script_texts WHERE entry = '-1609087';
INSERT INTO `script_texts` VALUES ('29032', '-1609087', 'There... There\'s no more time for me. I\'m done for. Finish me off, $N. Do it or they\'ll kill us both. $N... Remember Gilneas, our beloved home. This world is worth saving.', 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', '18', 'special_surprise SAY_EXEC_TIME_12');

-- Lord Harford Change Life, Faction and more
UPDATE `creature_template` SET `minlevel`='54', `maxlevel`='54', `faction_A`='7', `faction_H`='7', `unit_flags`='33536', `ScriptName`='npc_a_special_surprise' WHERE (`entry`='49355');

-- Gally Lumpstain
UPDATE `creature_template` SET `minlevel`='54', `maxlevel`='54', `faction_A`='7', `faction_H`='7', `unit_flags`='33536', `ScriptName`='npc_a_special_surprise' WHERE (`entry`='49356');