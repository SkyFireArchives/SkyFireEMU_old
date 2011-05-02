-- Changes the SpellFamilyMasks to bigint for cataclysm spell flags

ALTER TABLE `spell_proc_event` MODIFY COLUMN `SpellFamilyMask0` bigint;
ALTER TABLE `spell_proc_event` MODIFY COLUMN `SpellFamilyMask1` bigint;
ALTER TABLE `spell_proc_event` MODIFY COLUMN `SpellFamilyMask2` bigint;