-- Prepare For Takeoff

DELETE FROM gameobject_template WHERE entry = 204587;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `flags`, `questItem1`, `data0`, `data1`, `data6`, `WDBVerified`) VALUES ('204587', '3', '9651', 'Narkk`s Handbombs', 'Opening', '4', '59524', '43', '204587', '0', '13329');
DELETE FROM gameobject_loot_template WHERE entry = 204587;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('204587', '59524', '-100');
DELETE FROM gameobject WHERE id = 204587;
INSERT INTO `gameobject` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `state`) VALUES ('204587', '-14335.7', '429.439', '6.62573', '3.37761', '0.993045', '-0.117736', '300', '1');

-- Fix By dernise

-- The Mosh'ogg Bounty

DELETE FROM gameobject_template WHERE entry = 204087;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `flags`, `questItem1`, `data0`, `data1`, `data6`, `WDBVerified`) VALUES ('204087', '3', '5743', 'Mosh\'Ogg Bounty', 'Opening', '4', '58205', '43', '204087', '0', '13329');
DELETE FROM gameobject_loot_template WHERE entry = 204087;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('204087', '58205', '-100');
DELETE FROM gameobject WHERE id = 204087;
INSERT INTO `gameobject` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation2`, `rotation3`, `spawntimesecs`, `state`) VALUES ('204087', '-12497', '-1012.37', '56.0768', '1.13053', '0.53564', '0.844446', '300', '1');

-- Fix By dernise