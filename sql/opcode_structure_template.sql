/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `clientopcodes`;
CREATE TABLE `clientopcodes` (
  `version` smallint(5) unsigned NOT NULL,
  `number` smallint(5) unsigned NOT NULL,
  `address` int(10) unsigned NOT NULL,
  `type` enum('cmsg','smsg','msg') NOT NULL,
  `clientType` enum('n','s','a','c') NOT NULL,
  PRIMARY KEY (`version`,`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

LOCK TABLES `clientopcodes` WRITE;
/*!40000 ALTER TABLE `clientopcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientopcodes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `diff`;
CREATE TABLE `diff` (
  `ver1` smallint(5) unsigned NOT NULL,
  `ver2` smallint(5) unsigned NOT NULL,
  `adr1` int(10) unsigned NOT NULL,
  `adr2` int(10) unsigned NOT NULL,
  `name1` varchar(70) DEFAULT NULL,
  `name2` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`ver1`,`ver2`,`adr1`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

LOCK TABLES `diff` WRITE;
/*!40000 ALTER TABLE `diff` DISABLE KEYS */;
/*!40000 ALTER TABLE `diff` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `emuopcodes`;
CREATE TABLE `emuopcodes` (
  `version` smallint(5) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `number` smallint(5) unsigned NOT NULL,
  `type` enum('smsg','cmsg','msg') NOT NULL,
  PRIMARY KEY (`version`,`name`),
  KEY `number` (`version`,`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

LOCK TABLES `emuopcodes` WRITE;
/*!40000 ALTER TABLE `emuopcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `emuopcodes` ENABLE KEYS */;
UNLOCK TABLES;
DELIMITER ;;
/*!50003 DROP PROCEDURE IF EXISTS `FindDuplicatedOpcodes` */;;
/*!50003 SET SESSION SQL_MODE="NO_AUTO_VALUE_ON_ZERO"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `FindDuplicatedOpcodes`(IN InVersion smallint(5) unsigned )
BEGIN
        IF InVersion = 0 THEN
            select max(version) into InVersion from emuopcodes;
        END IF;
        select * from emuopcodes o where version = InVersion and 
            (select count(*) from emuopcodes o2 where o.number = o2.number) > 1
             order by number;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `FindNotInClient` */;;
/*!50003 SET SESSION SQL_MODE="NO_AUTO_VALUE_ON_ZERO"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `FindNotInClient`(IN InVersion smallint(5) unsigned)
BEGIN
        IF InVersion = 0 OR InVersion = NULL THEN
            select max(version) into InVersion from emuopcodes;
        END IF;
        select * from emuopcodes where version = InVersion and
            number not in (select number from clientopcodes where version = InVersion);
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `FindUnhandledOpcodes` */;;
/*!50003 SET SESSION SQL_MODE="NO_AUTO_VALUE_ON_ZERO"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `FindUnhandledOpcodes`(IN InVersion smallint(5) unsigned)
BEGIN
        IF InVersion = 0 OR InVersion = NULL THEN
            select max(version) into InVersion from emuopcodes;
        END IF;
        select * from clientopcodes where version = InVersion and
            number not in (select number from emuopcodes where version = InVersion);
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

