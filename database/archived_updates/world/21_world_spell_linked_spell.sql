-- Threat Reduction Added To Shaman Spell Wind Shear 
DELETE FROM spell_linked_spell WHERE spell_trigger=57994;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(57994, 38328, 0, 'Wind Shear');
-- Fix By Ari