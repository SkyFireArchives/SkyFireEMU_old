UPDATE creature_template SET ScriptName='npc_ring_of_frost' WHERE entry='44199';

DELETE FROM spell_linked_spell WHERE spell_trigger='-82691';
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES (-82691, 91264, 0, 'Ring of frost immune');