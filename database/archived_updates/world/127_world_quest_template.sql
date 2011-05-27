-- [QUEST] Report to Marshal Bluewall (only ally)
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=9415 LIMIT 1;     

-- [QUEST] Stomp To My Beat
UPDATE `quest_template` SET `ReqSpellCast1`=79402 WHERE `entry`=26240 LIMIT 1;

-- [QUEST] Taking Part ([Object] Fertile Mound)
UPDATE `quest_template` SET `ReqCreatureOrGOId1`=195687, `ReqSpellCast1`=68355 WHERE `entry`=14311 LIMIT 1;

-- Fix By: TheHacker66