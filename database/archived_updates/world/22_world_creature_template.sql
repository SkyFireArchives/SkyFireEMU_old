-- Fixed startup errors related to not same npcflag on difficulty
-- Frostwolf Stable Master <Stable Master> (Difficulty 1)
UPDATE `creature_template` SET `npcflag`=4194306 WHERE `entry`=22551;
-- Frostwolf Stable Master <Stable Master> (Difficulty 2)
UPDATE `creature_template` SET `npcflag`=4194306 WHERE `entry`=31991;

-- Stormpike Stable Master <Stable Master> (Difficulty 1)
UPDATE `creature_template` SET `npcflag`=4194306 WHERE `entry`=22577;
-- Stormpike Stable Master <Stable Master> (Difficulty 2)
UPDATE `creature_template` SET `npcflag`=4194306 WHERE `entry`=32105;
-- Fix By Ari.
