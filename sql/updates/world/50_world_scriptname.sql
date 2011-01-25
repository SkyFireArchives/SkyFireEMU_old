-- ScriptName for Captured Frog
UPDATE `item_template` SET `ScriptName`= 'item_captured_frog' WHERE `entry`=53510;

UPDATE `creature_template` SET `ScriptName`='npc_hidden_cultist' WHERE `entry` IN (25828,25248,25827);

UPDATE `creature_template` SET `ScriptName`='npc_daegarn' WHERE `entry`=24151;
