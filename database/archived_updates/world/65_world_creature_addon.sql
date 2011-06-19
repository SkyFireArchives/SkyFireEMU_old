-- Creature Addons Which Are In Db But Withoud Creature Guid
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
-- Fix By Fabian.