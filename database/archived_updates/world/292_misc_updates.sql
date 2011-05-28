-- (13877) Blade Flurry
DELETE FROM `spell_proc_event` WHERE `entry` IN (13877);
INSERT INTO `spell_proc_event` VALUES (13877, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000014, 0x80000000, 0, 100, 0);

-- Fingers of frost update.
UPDATE creature_template SET ScriptName='npc_ring_of_frost' WHERE entry='44199';

DELETE FROM spell_linked_spell WHERE spell_trigger='-82691';
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES (-82691, 91264, 0, 'Ring of frost immune');
-- Commands
REPLACE INTO `command` VALUES ('lookup npc', '3', 'Syntax: .lookup npc $namepart\r\n\r\nLooks up a npc by $namepart, and returns all matches with their npc ID\'s.');
REPLACE INTO `command` VALUES ('opcode', '4', 'Syntax: .opcode is a developer function not intended for use only for opcode research.');