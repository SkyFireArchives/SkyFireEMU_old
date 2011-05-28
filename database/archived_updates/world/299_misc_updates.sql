-- ----------------------------
-- Table structure for `guild_xp_for_level`
-- ----------------------------
DROP TABLE IF EXISTS `guild_xp_for_level`;
CREATE TABLE `guild_xp_for_level` (
  `lvl` int(11) NOT NULL,
  `xp_for_next_level` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `guild_rewards`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rewards`;
CREATE TABLE `guild_rewards` (
  `item_entry` int(11) NOT NULL,
  `price` int(11) NOT NULL, -- should be bigint, but that's once core switches to uint64 for prices
  `achievement` int(11) NOT NULL,
  `standing` int(11) NOT NULL,
  PRIMARY KEY  (`item_entry`),
  KEY `1` (`item_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Example records of guild_rewards
-- ----------------------------
INSERT INTO `guild_rewards` VALUES ('48691', '15000', '0', '4');

-- (13877) Blade Flurry
DELETE FROM `spell_proc_event` WHERE `entry` IN (13877);
INSERT INTO `spell_proc_event` VALUES (13877, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000014, 0x80000000, 0, 100, 0);

-- npc_ring_of_frost
UPDATE creature_template SET ScriptName='npc_ring_of_frost' WHERE entry='44199';

DELETE FROM spell_linked_spell WHERE spell_trigger='-82691';
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES (-82691, 91264, 0, 'Ring of frost immune');