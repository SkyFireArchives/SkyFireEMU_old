-- Rider of Blood killcredit
UPDATE `creature_template` SET `KillCredit1`=31159 WHERE `entry`=31159 LIMIT 1;

-- Rider of Frost killcredit
UPDATE `creature_template` SET `KillCredit1`=31161 WHERE `entry`=31161 LIMIT 1;

-- Rider of Unholy killcredit
UPDATE `creature_template` SET `KillCredit1`=31160 WHERE `entry`=31160 LIMIT 1;

-- Efrem the Faithful not attackable (flag was 33024, 256 is ooc-not attackable)
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=30081 LIMIT 1;

-- King Bangalash
UPDATE `creature_template` SET `maxlevel`=29 WHERE `entry`=731 LIMIT 1;

-- [NPC]Daniel Roberts <Blacksmithing Supplies>
UPDATE `creature_template` SET `npcflag`=2176 WHERE `entry`=44181 LIMIT 1;

-- Fix By TheHacker66