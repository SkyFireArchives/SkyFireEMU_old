-- Fixed Mirror Image correct Trigger
-- by ZenitH

DELETE FROM `spell_linked_spell` WHERE entry = 55342;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(55342, 58832, 0, 'Mirror Image Trigger');