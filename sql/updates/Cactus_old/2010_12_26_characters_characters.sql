ALTER TABLE `characters` ADD COLUMN `currentPetSlot` int(10) AFTER `deleteDate`;
ALTER TABLE `characters` ADD COLUMN `petSlotUsed` int(10) AFTER `currentPetSlot`;