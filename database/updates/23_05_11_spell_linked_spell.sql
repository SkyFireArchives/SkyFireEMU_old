-- Warior's Charge stun trigger 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 100;

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(100, 96273, 1, 'Warrior - Charge Stun');
