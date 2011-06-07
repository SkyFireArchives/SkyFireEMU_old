UPDATE `spell_proc_event` SET `cooldown` = 2 WHERE `entry` = 49222;
DELETE FROM `spell_dbc` WHERE `id` = 100000;
INSERT INTO `spell_dbc` VALUES (100000,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,-1,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,'Bone Shield cooldown - serverside spell');