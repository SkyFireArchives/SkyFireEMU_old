DELETE FROM `spell_script_names` WHERE `spell_id` = 50334;
INSERT INTO `spell_script_names` VALUES
(50334, 'spell_dru_berserk');

UPDATE `creature_template` SET `flags_extra`=`flags_extra`|0x00008000,`npcflag`=`npcflag`&~0x10000000 WHERE `npcflag` & 0x10000000;
UPDATE `creature_template` SET `npcflag`=`npcflag`&~0x20000000 WHERE `npcflag` & 0x20000000;

UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName` LIKE 'guard_generic' AND (`spell1`=0 AND `spell2`=0);
UPDATE `creature_template` SET `ScriptName`='guard_generic' WHERE `ScriptName`='guard_stormwind' OR `ScriptName`='guard_orgrimmar';

UPDATE `command` SET `help` = 'Syntax: .reload all gossips\nReload gossip_menu, gossip_menu_option, gossip_scripts, points_of_interest tables.' WHERE `name` = 'reload all gossips';
UPDATE `command` SET `help` = 'Syntax: .reload all npc\nReload npc_option, npc_trainer, npc vendor, points of interest tables.' WHERE `name` = 'reload all npc';
DELETE FROM `command` WHERE `name` = 'reload npc_gossip';

DROP TABLE `npc_gossip`;