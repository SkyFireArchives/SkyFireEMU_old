# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.1.41
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2010-12-06 14:34:50
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping structure for table auth.account
DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `username` varchar(32) NOT NULL DEFAULT '',
  `sha_pass_hash` varchar(40) NOT NULL DEFAULT '',
  `sessionkey` longtext,
  `v` longtext,
  `s` longtext,
  `email` text,
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_ip` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `failed_logins` int(11) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online` tinyint(4) NOT NULL DEFAULT '0',
  `expansion` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `mutetime` bigint(40) unsigned NOT NULL DEFAULT '0',
  `locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recruiter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Account System';

# Dumping data for table auth.account: 6 rows
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`, `username`, `sha_pass_hash`, `sessionkey`, `v`, `s`, `email`, `joindate`, `last_ip`, `failed_logins`, `locked`, `last_login`, `online`, `expansion`, `mutetime`, `locale`, `recruiter`) VALUES
	(1, 'ADMINISTRATOR', 'A34B29541B87B7E4823683CE6C7BF6AE68BEAAAC', '573EF0FE02C46EC277EC5E6C6648C68ADD851C9C179E160EC81BEA2E70C8D3A8FE4BB6D209F61E46', '4CE24CBDB5B2E709DB65C3973B0D9A5ECBAF47299CE151A0DA68520AAB6C3F4E', '8B89CF327DE104BE4D9CDFE7C96BE8AECA0F5768695973C75CB79F5E39CEB84B', NULL, '2010-12-06 14:29:32', '127.0.0.1', 0, 0, '2010-12-06 14:33:07', 0, 3, 0, 0, 0),
	(2, 'GAMEMASTER', '7841E21831D7C6BC0B57FBE7151EB82BD65EA1F9', NULL, NULL, NULL, NULL, '2010-12-06 14:29:46', '127.0.0.1', 0, 0, '0000-00-00 00:00:00', 0, 3, 0, 0, 0),
	(3, 'DEVELOPER', '82FA3BF31780E4CAAAC18DB6BC2940EA7D37B2ED', NULL, NULL, NULL, NULL, '2010-12-06 14:29:58', '127.0.0.1', 0, 0, '0000-00-00 00:00:00', 0, 3, 0, 0, 0),
	(4, 'MODERATOR', 'A7F5FBFF0B4EEC2D6B6E78E38E8312E64D700008', NULL, NULL, NULL, NULL, '2010-12-06 14:30:17', '127.0.0.1', 0, 0, '0000-00-00 00:00:00', 0, 3, 0, 0, 0),
	(5, 'PLAYER', '3CE8A96D17C5AE88A30681024E86279F1A38C041', NULL, NULL, NULL, NULL, '2010-12-06 14:30:23', '127.0.0.1', 0, 0, '0000-00-00 00:00:00', 0, 3, 0, 0, 0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;


# Dumping structure for table auth.account_access
DROP TABLE IF EXISTS `account_access`;
CREATE TABLE IF NOT EXISTS `account_access` (
  `id` int(11) unsigned NOT NULL,
  `gmlevel` tinyint(3) unsigned NOT NULL,
  `RealmID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`RealmID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

# Dumping data for table auth.account_access: 0 rows
/*!40000 ALTER TABLE `account_access` DISABLE KEYS */;
INSERT INTO `account_access` (`id`, `gmlevel`, `RealmID`) VALUES
	(1, 4, -1),
	(2, 3, -1),
	(3, 2, -1),
	(4, 1, -1);
/*!40000 ALTER TABLE `account_access` ENABLE KEYS */;


# Dumping structure for table auth.account_banned
DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE IF NOT EXISTS `account_banned` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `bandate` bigint(40) NOT NULL DEFAULT '0',
  `unbandate` bigint(40) NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Ban List';

# Dumping data for table auth.account_banned: 0 rows
/*!40000 ALTER TABLE `account_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_banned` ENABLE KEYS */;


# Dumping structure for table auth.ip_banned
DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE IF NOT EXISTS `ip_banned` (
  `ip` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `bandate` bigint(40) NOT NULL,
  `unbandate` bigint(40) NOT NULL,
  `bannedby` varchar(50) NOT NULL DEFAULT '[Console]',
  `banreason` varchar(255) NOT NULL DEFAULT 'no reason',
  PRIMARY KEY (`ip`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Banned IPs';

# Dumping data for table auth.ip_banned: 0 rows
/*!40000 ALTER TABLE `ip_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_banned` ENABLE KEYS */;


# Dumping structure for table auth.logs
DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `time` int(14) NOT NULL,
  `realm` int(4) NOT NULL,
  `type` int(4) NOT NULL,
  `string` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

# Dumping data for table auth.logs: 0 rows
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


# Dumping structure for table auth.realmcharacters
DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE IF NOT EXISTS `realmcharacters` (
  `realmid` int(11) unsigned NOT NULL DEFAULT '0',
  `acctid` bigint(20) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`realmid`,`acctid`),
  KEY `acctid` (`acctid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm Character Tracker';

# Dumping data for table auth.realmcharacters: 6 rows
/*!40000 ALTER TABLE `realmcharacters` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmcharacters` ENABLE KEYS */;


# Dumping structure for table auth.realmlist
DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE IF NOT EXISTS `realmlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(32) NOT NULL DEFAULT '127.0.0.1',
  `port` int(11) NOT NULL DEFAULT '8085',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `color` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `timezone` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `population` float unsigned NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  `gamebuild` int(11) unsigned NOT NULL DEFAULT '13623',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

# Dumping data for table auth.realmlist: 1 rows
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
INSERT INTO `realmlist` (`id`, `name`, `address`, `port`, `icon`, `color`, `timezone`, `allowedSecurityLevel`, `population`, `gamebuild`) VALUES
	(1, 'SkyFireEMU', '127.0.0.1', 8085, 0, 0, 1, 0, 0, 13623);
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;


# Dumping structure for table auth.uptime
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE IF NOT EXISTS `uptime` (
  `realmid` int(11) unsigned NOT NULL,
  `starttime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startstring` varchar(64) NOT NULL DEFAULT '',
  `uptime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `maxplayers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `revision` varchar(255) NOT NULL DEFAULT 'Trinitycore',
  PRIMARY KEY (`realmid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';

# Dumping data for table auth.uptime: 2 rows
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
