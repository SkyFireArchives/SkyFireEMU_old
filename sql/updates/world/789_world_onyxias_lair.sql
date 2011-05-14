-- Onyxia eggs cooldown
UPDATE `gameobject_template` SET `data5` = 15 WHERE `entry` = 176511;
-- Onyxia Warder respawn
UPDATE `creature` SET `spawntimesecs`=1000000 WHERE `id`=12129;