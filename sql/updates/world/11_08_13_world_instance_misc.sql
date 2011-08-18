-- Updates template with hp and more
UPDATE `creature_template` SET `difficulty_entry_1`=51350, `baseattacktime`=2000, `spell1`=0, `spell2`=0, `spell3`=0, `spell4`=0, `Health_mod`=348.12989 WHERE `entry`=47120; -- Argaloth 10
UPDATE `creature_template` SET `mindmg`=3000, `maxdmg`=4000, `attackpower`=0, `baseattacktime`=2000, `lootid`=51350, `Health_mod`=1044.38968, `ScriptName`='' WHERE `entry`=51350; -- Argaloth 25

-- Incomming loot for Argaloth 25
DELETE FROM `creature_loot_template` WHERE `entry`=51350;

-- Fixed spawn of Argaloth and thrash in both 10 and 25 mode.
UPDATE `creature` SET `spawnMask`=3 WHERE `id` IN (47120, 47901, 52427);
DELETE FROM `creature` WHERE `id`=51350;

-- Fixed crash when enter the instance
UPDATE `instance_template` SET `script`='instance_baradin_hold' WHERE `map`=757;