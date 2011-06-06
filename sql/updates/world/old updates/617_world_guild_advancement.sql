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