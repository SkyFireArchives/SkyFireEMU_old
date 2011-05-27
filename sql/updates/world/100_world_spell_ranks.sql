/*
Navicat MySQL Data Transfer

Source Server         : works
Source Server Version : 50510
Source Host           : localhost:3306
Source Database       : skyworld

Target Server Type    : MYSQL
Target Server Version : 50510
File Encoding         : 65001

Date: 2011-05-27 19:12:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `spell_ranks`
-- ----------------------------
DROP TABLE IF EXISTS `spell_ranks`;
CREATE TABLE `spell_ranks` (
  `first_spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`first_spell_id`,`rank`),
  UNIQUE KEY `spell_id` (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Rank Data';

-- ----------------------------
-- Records of spell_ranks
-- ----------------------------
