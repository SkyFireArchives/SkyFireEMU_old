-- Baradin Hold

UPDATE `creature_template` SET `ScriptName` = 'boss_argaloth' WHERE `creature_template`.`entry` = 47120;
UPDATE `instance_template` SET `script` = 'instance_baradin_hold' WHERE `instance_template`.`map` = 757;