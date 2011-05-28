-- Improved Cone of Cold, necessary for the above patch to work - it's a sorta hacky way, but I couldn't think of a better one (any advice/hint is highly appreciated)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`='120' AND `spell_effect`='83301';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`='120' AND `spell_effect`='83302';
INSERT INTO `spell_linked_spell` VALUES ('120', '83301', '1', 'Improved Cone of Cold trigger - rank 1');
INSERT INTO `spell_linked_spell` VALUES ('120', '83302', '1', 'Improved Cone of Cold trigger - rank 2');

-- Daybreak - Holy Paladin talent - fixes both Holy Shock proccing it and the exploit that allowed you to spam Holy Shock for the whole buff's duration
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20473' AND `spell_effect` = '-88819';
INSERT INTO `spell_linked_spell` VALUES ('20473', '-88819', '0', 'Holy Shock - removes Daybreak');