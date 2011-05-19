
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
DROP TABLE IF EXISTS `pool_template`;
CREATE TABLE `pool_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Pool entry',
  `max_limit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Max number of objects (0) is no limit',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pool_template` WRITE;
/*!40000 ALTER TABLE `pool_template` DISABLE KEYS */;
INSERT INTO `pool_template` VALUES (1,1,''),(2,1,''),(3,1,''),(4,1,''),(5,1,''),(6,1,''),(7,1,''),(8,1,''),(9,1,''),(10,1,''),(11,1,''),(12,1,''),(13,1,''),(14,1,''),(15,1,''),(16,1,''),(17,1,''),(18,1,''),(19,1,''),(20,1,''),(21,1,''),(22,1,''),(23,1,''),(24,1,''),(25,1,''),(26,1,''),(27,1,''),(28,1,''),(29,1,''),(30,1,''),(31,1,''),(32,1,''),(33,1,''),(34,1,''),(35,1,''),(36,1,''),(37,1,''),(38,1,''),(39,1,''),(40,1,''),(41,1,''),(42,1,''),(43,1,''),(44,1,''),(45,1,''),(46,1,''),(47,1,''),(48,1,''),(49,1,''),(50,1,''),(51,1,''),(52,1,''),(53,1,''),(54,1,''),(55,1,''),(56,1,''),(57,1,''),(58,1,''),(59,1,''),(60,1,''),(61,1,''),(62,1,''),(63,1,''),(64,1,''),(65,1,''),(66,1,''),(67,1,''),(68,1,''),(69,1,''),(70,1,''),(71,1,''),(72,1,''),(73,1,''),(74,1,''),(75,1,''),(76,1,''),(77,1,''),(78,1,''),(79,1,''),(80,1,''),(81,1,''),(82,1,''),(83,1,''),(84,1,''),(85,1,''),(86,1,''),(87,1,''),(88,1,''),(89,1,''),(90,1,''),(91,1,''),(92,1,''),(93,1,''),(94,1,''),(95,1,''),(96,1,''),(97,1,''),(98,1,''),(99,1,''),(100,1,''),(101,1,''),(102,1,''),(103,1,''),(104,1,''),(105,1,''),(106,1,''),(107,1,''),(108,1,''),(109,1,''),(110,1,''),(111,1,''),(112,1,''),(113,1,''),(114,1,''),(115,1,''),(116,1,''),(117,1,''),(118,1,''),(119,1,''),(120,1,''),(121,1,''),(122,1,''),(123,1,''),(124,1,''),(125,1,''),(126,1,''),(127,1,''),(128,1,''),(129,1,''),(130,1,''),(131,1,''),(132,1,''),(133,1,''),(134,1,''),(135,1,''),(136,1,''),(137,1,''),(138,1,''),(139,1,''),(140,1,''),(141,1,''),(142,1,''),(143,1,''),(144,1,''),(145,1,''),(146,1,''),(147,1,''),(148,1,''),(149,1,''),(150,1,''),(151,1,''),(152,1,''),(153,1,''),(154,1,''),(155,1,''),(156,1,''),(157,1,''),(158,1,''),(159,1,''),(160,1,''),(161,1,''),(162,1,''),(163,1,''),(164,1,''),(165,1,''),(166,1,''),(167,1,''),(168,1,''),(169,1,''),(170,1,''),(171,1,''),(172,1,''),(173,1,''),(174,1,''),(175,1,''),(176,1,''),(177,1,''),(178,1,''),(179,1,''),(180,1,''),(181,1,''),(182,1,''),(183,1,''),(184,1,''),(185,1,''),(186,1,''),(187,1,''),(188,1,''),(189,1,''),(190,1,''),(191,1,''),(192,1,''),(193,1,''),(194,1,''),(195,1,''),(196,1,''),(197,1,''),(198,1,''),(199,1,''),(200,1,''),(201,1,''),(202,1,''),(203,1,''),(204,1,''),(205,1,''),(206,1,''),(207,1,''),(208,1,''),(209,1,''),(210,1,''),(211,1,''),(212,1,''),(213,1,''),(214,1,''),(215,1,''),(216,1,''),(217,1,''),(218,1,''),(219,1,''),(220,1,''),(221,1,''),(222,1,''),(223,1,''),(224,1,''),(225,1,''),(226,1,''),(227,1,''),(228,1,''),(229,1,''),(230,1,''),(231,1,''),(232,1,''),(233,1,''),(234,1,''),(235,1,''),(236,1,''),(237,1,''),(238,1,''),(239,1,''),(240,1,''),(241,1,''),(242,1,''),(243,1,''),(244,1,''),(245,1,''),(246,1,''),(247,1,''),(248,1,''),(249,1,''),(250,1,''),(251,1,''),(252,1,''),(253,1,''),(254,1,''),(255,1,''),(256,1,''),(257,1,''),(258,1,''),(259,1,''),(260,1,''),(261,1,''),(262,1,''),(263,1,''),(264,1,''),(265,1,''),(266,1,''),(267,1,''),(268,1,''),(269,1,''),(270,1,''),(271,1,''),(272,1,''),(273,1,''),(274,1,''),(275,1,''),(276,1,''),(277,1,''),(278,1,''),(279,1,''),(280,1,''),(281,1,''),(282,1,''),(283,1,''),(284,1,''),(285,1,''),(286,1,''),(287,1,''),(288,1,''),(289,1,''),(290,1,''),(291,1,''),(292,1,''),(293,1,''),(294,1,''),(295,1,''),(296,1,''),(297,1,''),(298,1,''),(299,1,''),(300,1,''),(301,1,''),(302,1,''),(303,1,''),(304,1,''),(305,1,''),(306,1,''),(307,1,''),(308,1,''),(309,1,''),(310,1,''),(311,1,''),(312,1,''),(313,1,''),(314,1,''),(315,1,''),(316,1,''),(317,1,''),(318,1,''),(319,1,''),(320,1,''),(321,1,''),(322,1,''),(323,1,''),(324,1,''),(325,1,''),(326,1,''),(327,1,''),(328,1,''),(329,1,''),(330,1,''),(331,1,''),(332,1,''),(333,1,''),(334,1,''),(335,1,''),(336,1,''),(337,1,''),(338,1,''),(339,1,''),(340,1,''),(341,1,''),(342,1,''),(343,1,''),(344,1,''),(345,1,''),(346,1,''),(347,1,''),(1000,1,'Fedfennel (472)'),(1001,1,'Gruff Swiftbite (100)'),(1002,1,' Thuros Lightfingers (61)'),(1003,1,'Or\'Kalar (2773)'),(1004,1,'Leprithus (572)'),(1005,1,'Vultros (462)'),(1006,1,'Foe Reaper 4000 (573)'),(1007,1,'Commander Felstrom (771)'),(1008,1,'Fenros (507)'),(1009,1,'Lord Malathrom (503)'),(1010,1,'Lupos (521)'),(1011,1,'Nefaru (534)'),(1012,1,'Chatter (616)'),(1013,1,'Kazon (584)'),(1014,1,'Ribchaser (14271)'),(1015,1,'Rohh the Silent (947)'),(1016,1,'Seeker Aqualon (14269)'),(1017,1,'Snarlflare (14272)'),(1018,1,'Squiddic (14270)'),(1019,1,'Gluggle (14487)'),(1020,1,'High Priestess Hai\'watna (11383)'),(1021,1,'Kurmokk (14491)'),(1022,1,'Lord Sakrasis (2541)'),(1023,1,'Rippa (14490)'),(1024,1,'Roloch (14488)'),(1025,1,'Scale Belly (1552)'),(1026,1,'Verifonix (14492)'),(1027,1,'Fingat (14446)'),(1028,1,'Gilmorian (14447)'),(1029,1,'Jade (1063)'),(1030,1,'Lord Captain Wyrmak (14445)'),(1031,1,'Lost One Chieftain (763)'),(1032,1,'Lost One Cook (1106)'),(1033,1,'Molt Thorn (14448)'),(1034,1,'Akubar the Seer (8298)'),(1035,1,'Clack the Reaver (8301)'),(1036,1,'Deatheye (8302)'),(1037,1,'Grunter (8303)'),(1038,1,'Magronos the Unyielding (8297)'),(1039,1,'Mojo the Twisted (8296)'),(1040,1,'Ravage (8300)'),(1041,1,'Spiteflayer (8299)'),(1042,1,'Teremus the Devourer (7846)'),(1043,1,'Deathmaw (10077)'),(1044,1,'Gorgon\'och (9604)'),(1045,1,'Gruklash (8979)'),(1046,1,'Hahk\'Zor (9602)'),(1048,1,'Malfunctioning Reaver (8981)'),(1049,1,'Terrorspark (10078)'),(1050,1,'Thauris Balgarr (8978)'),(1051,1,'Faulty War Golem (8279)'),(1052,1,'Highlord Mastrogonde (8282)'),(1053,1,'Rekk\'tilac (8277)'),(1054,1,'Scald (8281)'),(1055,1,'Slave Master Blackheart (8283)'),(1056,1,'7:XT (14224)'),(1057,1,'Barnabus (2753)'),(1058,1,'Broken Tooth (2850)'),(1059,1,'Rumbler (2752)'),(1060,1,'Shadowforge Commander (2744)'),(1061,1,'Siege Golem (2749)'),(1062,1,'War Golem (2751)'),(1063,1,'Zaricotl (2931)'),(1064,1,'Bjarn (1130)'),(1065,1,'Edan the Howler (1137)'),(1066,1,'Gibblewilt (8503)'),(1067,1,'Great Father Arctikus (1260)'),(1068,1,'Timber (1132)'),(1069,1,'Large Loch Crocolisk (2476)'),(1070,1,'Lord Condar (14268)'),(1071,1,'Gnawbone (14425)'),(1072,1,'Mirelow (14424)'),(5240,1,'Cobalt Grizzly Hills'),(5241,1,'Cobalt Grizzly Hills'),(5242,1,'Cobalt Grizzly Hills'),(5243,1,'Cobalt Grizzly Hills'),(5244,1,'Cobalt Dragonblight'),(5245,1,'Cobalt Dragonblight'),(5246,1,'Cobalt Dragonblight'),(5247,1,'Cobalt Dragonblight'),(5248,1,'Cobalt Dragonblight'),(5249,1,'Cobalt Dragonblight'),(5250,1,'Cobalt Dragonblight'),(5251,1,'Cobalt Dragonblight'),(5252,1,'Cobalt Dragonblight'),(5253,1,'Cobalt Dragonblight'),(5254,1,'Cobalt Dragonblight'),(5255,1,'Cobalt Dragonblight'),(5256,1,'ZulDrak'),(5257,1,'ZulDrak'),(5258,1,'ZulDrak'),(5259,1,'ZulDrak'),(5260,1,'ZulDrak'),(5261,1,'ZulDrak'),(5262,1,'ZulDrak'),(5263,1,'ZulDrak'),(5264,1,'ZulDrak'),(5265,1,'ZulDrak'),(5266,1,'ZulDrak'),(5267,1,'ZulDrak'),(5268,1,'ZulDrak'),(5269,1,'ZulDrak'),(5270,1,'ZulDrak'),(5271,1,'ZulDrak'),(5272,1,'ZulDrak'),(5273,1,'ZulDrak'),(5274,1,'ZulDrak'),(5275,1,'ZulDrak'),(5276,1,'ZulDrak'),(5277,1,'Cobalt Howling Fjord'),(5278,1,'Cobalt Howling Fjord'),(5279,1,'Cobalt Howling Fjord'),(5280,1,'Cobalt Howling Fjord'),(5281,1,'Cobalt Howling Fjord'),(5282,1,'Cobalt Howling Fjord'),(5283,1,'Cobalt Borean Tundra'),(5284,1,'Cobalt Borean Tundra'),(5285,1,'Cobalt Borean Tundra'),(5286,1,'Cobalt Borean Tundra'),(5287,1,'Cobalt Borean Tundra'),(5288,1,'Cobalt Borean Tundra'),(5289,1,'Cobalt Borean Tundra'),(5290,1,'Cobalt Borean Tundra'),(5291,1,'Cobalt Borean Tundra'),(5000,30,'Borean Tundra Mineral MASTER'),(5001,1,'Cobalt Borean Tundra'),(5002,1,'Cobalt Borean Tundra'),(5003,1,'Cobalt Borean Tundra'),(5004,1,'Cobalt Borean Tundra'),(5005,1,'Cobalt Borean Tundra'),(5006,1,'Cobalt Borean Tundra'),(5007,1,'Cobalt Borean Tundra'),(5008,1,'Cobalt Borean Tundra'),(5009,1,'Cobalt Borean Tundra'),(5010,1,'Cobalt Borean Tundra'),(5011,1,'Cobalt Borean Tundra'),(5012,1,'Cobalt Borean Tundra'),(5013,1,'Cobalt Borean Tundra'),(5014,1,'Cobalt Borean Tundra'),(5015,1,'Cobalt Borean Tundra'),(5016,1,'Cobalt Borean Tundra'),(5017,1,'Cobalt Borean Tundra'),(5018,1,'Cobalt Borean Tundra'),(5019,1,'Cobalt Borean Tundra'),(5020,1,'Cobalt Borean Tundra'),(5021,1,'Cobalt Borean Tundra'),(5022,1,'Cobalt Borean Tundra'),(5023,1,'Cobalt Borean Tundra'),(5024,1,'Cobalt Borean Tundra'),(5025,1,'Cobalt Borean Tundra'),(5026,1,'Cobalt Borean Tundra'),(5027,1,'Cobalt Borean Tundra'),(5028,1,'Cobalt Borean Tundra'),(5029,1,'Cobalt Borean Tundra'),(5030,1,'Cobalt Borean Tundra'),(5031,1,'Cobalt Borean Tundra'),(5032,1,'Cobalt Borean Tundra'),(5033,1,'Cobalt Borean Tundra'),(5034,1,'Cobalt Borean Tundra'),(5035,1,'Cobalt Borean Tundra'),(5036,1,'Cobalt Borean Tundra'),(5037,1,'Cobalt Borean Tundra'),(5038,1,'Cobalt Borean Tundra'),(5039,1,'Cobalt Borean Tundra'),(5040,1,'Cobalt Borean Tundra'),(5041,1,'Cobalt Borean Tundra'),(5042,1,'Cobalt Borean Tundra'),(5043,1,'Cobalt Borean Tundra'),(5044,1,'Cobalt Borean Tundra'),(5045,1,'Cobalt Borean Tundra'),(5046,1,'Cobalt Borean Tundra'),(5047,1,'Cobalt Borean Tundra'),(5048,1,'Cobalt Borean Tundra'),(5049,1,'Cobalt Borean Tundra'),(5050,1,'Cobalt Borean Tundra'),(5051,1,'Cobalt Borean Tundra'),(5052,1,'Cobalt Borean Tundra'),(5053,1,'Cobalt Borean Tundra'),(5054,1,'Cobalt Borean Tundra'),(5055,1,'Cobalt Borean Tundra'),(5056,1,'Cobalt Borean Tundra'),(5057,1,'Cobalt Borean Tundra'),(5058,1,'Cobalt Borean Tundra'),(5059,1,'Cobalt Borean Tundra'),(5060,1,'Cobalt Borean Tundra'),(5061,1,'Cobalt Borean Tundra'),(5062,1,'Cobalt Borean Tundra'),(5063,1,'Cobalt Borean Tundra'),(5064,1,'Cobalt Borean Tundra'),(5121,30,'Howling Fjord Mineral MASTER'),(5065,1,'Cobalt Howling Fjord'),(5066,1,'Cobalt Howling Fjord'),(5067,1,'Cobalt Howling Fjord'),(5068,1,'Cobalt Howling Fjord'),(5069,1,'Cobalt Howling Fjord'),(5070,1,'Cobalt Howling Fjord'),(5071,1,'Cobalt Howling Fjord'),(5072,1,'Cobalt Howling Fjord'),(5073,1,'Cobalt Howling Fjord'),(5074,1,'Cobalt Howling Fjord'),(5075,1,'Cobalt Howling Fjord'),(5076,1,'Cobalt Howling Fjord'),(5077,1,'Cobalt Howling Fjord'),(5078,1,'Cobalt Howling Fjord'),(5079,1,'Cobalt Howling Fjord'),(5080,1,'Cobalt Howling Fjord'),(5081,1,'Cobalt Howling Fjord'),(5082,1,'Cobalt Howling Fjord'),(5083,1,'Cobalt Howling Fjord'),(5084,1,'Cobalt Howling Fjord'),(5085,1,'Cobalt Howling Fjord'),(5086,1,'Cobalt Howling Fjord'),(5087,1,'Cobalt Howling Fjord'),(5088,1,'Cobalt Howling Fjord'),(5089,1,'Cobalt Howling Fjord'),(5090,1,'Cobalt Howling Fjord'),(5091,1,'Cobalt Howling Fjord'),(5092,1,'Cobalt Howling Fjord'),(5093,1,'Cobalt Howling Fjord'),(5094,1,'Cobalt Howling Fjord'),(5095,1,'Cobalt Howling Fjord'),(5096,1,'Cobalt Howling Fjord'),(5097,1,'Cobalt Howling Fjord'),(5098,1,'Cobalt Howling Fjord'),(5099,1,'Cobalt Howling Fjord'),(5100,1,'Cobalt Howling Fjord'),(5101,1,'Cobalt Howling Fjord'),(5102,1,'Cobalt Howling Fjord'),(5103,1,'Cobalt Howling Fjord'),(5104,1,'Cobalt Howling Fjord'),(5105,1,'Cobalt Howling Fjord'),(5106,1,'Cobalt Howling Fjord'),(5107,1,'Cobalt Howling Fjord'),(5108,1,'Cobalt Howling Fjord'),(5109,1,'Cobalt Howling Fjord'),(5110,1,'Cobalt Howling Fjord'),(5111,1,'Cobalt Howling Fjord'),(5112,1,'Cobalt Howling Fjord'),(5113,1,'Cobalt Howling Fjord'),(5114,1,'Cobalt Howling Fjord'),(5115,1,'Cobalt Howling Fjord'),(5116,1,'Cobalt Howling Fjord'),(5117,1,'Cobalt Howling Fjord'),(5118,1,'Cobalt Howling Fjord'),(5119,1,'Cobalt Howling Fjord'),(5120,1,'Cobalt Howling Fjord'),(5122,30,'Dragonblight Mineral MASTER'),(5123,1,'Cobalt Dragonblight'),(5124,1,'Cobalt Dragonblight'),(5125,1,'Cobalt Dragonblight'),(5126,1,'Cobalt Dragonblight'),(5127,1,'Cobalt Dragonblight'),(5128,1,'Cobalt Dragonblight'),(5129,1,'Cobalt Dragonblight'),(5130,1,'Cobalt Dragonblight'),(5131,1,'Cobalt Dragonblight'),(5132,1,'Cobalt Dragonblight'),(5133,1,'Cobalt Dragonblight'),(5134,1,'Cobalt Dragonblight'),(5135,1,'Cobalt Dragonblight'),(5136,1,'Cobalt Dragonblight'),(5137,1,'Cobalt Dragonblight'),(5138,1,'Cobalt Dragonblight'),(5139,1,'Cobalt Dragonblight'),(5140,1,'Cobalt Dragonblight'),(5141,1,'Cobalt Dragonblight'),(5142,1,'Cobalt Dragonblight'),(5143,1,'Cobalt Dragonblight'),(5144,1,'Cobalt Dragonblight'),(5145,1,'Cobalt Dragonblight'),(5146,1,'Cobalt Dragonblight'),(5147,1,'Cobalt Dragonblight'),(5148,1,'Cobalt Dragonblight'),(5149,1,'Cobalt Dragonblight'),(5150,1,'Cobalt Dragonblight'),(5151,1,'Cobalt Dragonblight'),(5152,1,'Cobalt Dragonblight'),(5153,1,'Cobalt Dragonblight'),(5154,1,'Cobalt Dragonblight'),(5155,1,'Cobalt Dragonblight'),(5156,1,'Cobalt Dragonblight'),(5157,1,'Cobalt Dragonblight'),(5158,1,'Cobalt Dragonblight'),(5159,1,'Cobalt Dragonblight'),(5160,1,'Cobalt Dragonblight'),(5161,1,'Cobalt Dragonblight'),(5162,1,'Cobalt Dragonblight'),(5163,1,'Cobalt Dragonblight'),(5164,1,'Cobalt Dragonblight'),(5165,1,'Cobalt Dragonblight'),(5166,1,'Cobalt Dragonblight'),(5167,1,'Cobalt Dragonblight'),(5168,1,'Cobalt Dragonblight'),(5169,1,'Cobalt Dragonblight'),(5170,1,'Cobalt Dragonblight'),(5171,1,'Cobalt Dragonblight'),(5172,1,'Cobalt Dragonblight'),(5173,1,'Cobalt Dragonblight'),(5174,1,'Cobalt Dragonblight'),(5175,1,'Cobalt Dragonblight'),(5176,1,'Cobalt Dragonblight'),(5177,1,'Cobalt Dragonblight'),(5178,1,'Cobalt Dragonblight'),(5179,1,'Cobalt Dragonblight'),(5180,1,'Cobalt Dragonblight'),(5239,1,'Cobalt Dragonblight'),(5181,20,'Grizzly Hills Mineral MASTER'),(5182,1,'Cobalt Grizzly Hills'),(5183,1,'Cobalt Grizzly Hills'),(5184,1,'Cobalt Grizzly Hills'),(5185,1,'Cobalt Grizzly Hills'),(5186,1,'Cobalt Grizzly Hills'),(5187,1,'Cobalt Grizzly Hills'),(5188,1,'Cobalt Grizzly Hills'),(5189,1,'Cobalt Grizzly Hills'),(5190,1,'Cobalt Grizzly Hills'),(5191,1,'Cobalt Grizzly Hills'),(5192,1,'Cobalt Grizzly Hills'),(5193,1,'Cobalt Grizzly Hills'),(5194,1,'Cobalt Grizzly Hills'),(5195,1,'Cobalt Grizzly Hills'),(5196,1,'Cobalt Grizzly Hills'),(5197,1,'Cobalt Grizzly Hills'),(5198,1,'Cobalt Grizzly Hills'),(5199,1,'Cobalt Grizzly Hills'),(5200,1,'Cobalt Grizzly Hills'),(5201,1,'Cobalt Grizzly Hills'),(5202,1,'Cobalt Grizzly Hills'),(5203,1,'Cobalt Grizzly Hills'),(5204,1,'Cobalt Grizzly Hills'),(5205,1,'Cobalt Grizzly Hills'),(5206,1,'Cobalt Grizzly Hills'),(5207,1,'Cobalt Grizzly Hills'),(5208,1,'Cobalt Grizzly Hills'),(5209,1,'Cobalt Grizzly Hills'),(5210,1,'Cobalt Grizzly Hills'),(5211,1,'Cobalt Grizzly Hills'),(5212,1,'Cobalt Grizzly Hills'),(5213,1,'Cobalt Grizzly Hills'),(5214,1,'Cobalt Grizzly Hills'),(5215,1,'Cobalt Grizzly Hills'),(5216,1,'Cobalt Grizzly Hills'),(2000,7,'Master Mineral Pool - Alterac Mountains (Inner Section)'),(2001,4,'Master Mineral Pool - Alterac Mountains (Outer Section)'),(2002,10,'Master Mineral Pool - Arathi Highlands (Main Section)'),(2003,4,'Master Mineral Pool - Arathi Highlands (Drywhisker Gorge)'),(2004,9,'Master Mineral Pool - Badlands'),(2005,8,'Master Mineral Pool - Blasted Lands'),(2006,4,'Master Mineral Pool - Blasted Lands (Garrison Armory) - Special Mineral GOs ONLY'),(2007,10,'Master Mineral Pool - Burning Steppes'),(2008,12,'Master Mineral Pool - Dun Morogh'),(2009,16,'Master Mineral Pool - Duskwood'),(2010,13,'Master Mineral Pool - Eastern Plaguelands'),(2011,32,'Master Mineral Pool - Elwynn Forest'),(2012,6,'Master Mineral Pool - Eversong Woods'),(2013,9,'Master Mineral Pool - Ghostlands'),(2014,5,'Master Mineral Pool - Hillsbrad Foothills (Main Section)'),(2015,5,'Master Mineral Pool - Hillsbrad Foothills (Higher Level Sections)'),(2016,4,'Master Mineral Pool - Hillsbrad Foothills (Azurelode Mine) - Special Mineral GOs ONLY'),(2017,2,'Master Mineral Pool - Isle of Quel\'Danas'),(2018,9,'Master Mineral Pool - Loch Modan'),(3000,1,'Spawn Point 1 - Alterac Mountains (Inner Section)'),(3001,1,'Spawn Point 2 - Alterac Mountains (Inner Section)'),(3002,1,'Spawn Point 3 - Alterac Mountains (Inner Section)'),(3003,1,'Spawn Point 4 - Alterac Mountains (Inner Section)'),(3004,1,'Spawn Point 5 - Alterac Mountains (Inner Section)'),(3005,1,'Spawn Point 6 - Alterac Mountains (Inner Section)'),(3006,1,'Spawn Point 7 - Alterac Mountains (Inner Section)'),(3007,1,'Spawn Point 8 - Alterac Mountains (Inner Section)'),(3008,1,'Spawn Point 9 - Alterac Mountains (Inner Section)'),(3009,1,'Spawn Point 10 - Alterac Mountains (Inner Section)'),(3010,1,'Spawn Point 11 - Alterac Mountains (Inner Section)'),(3011,1,'Spawn Point 12 - Alterac Mountains (Inner Section)'),(3012,1,'Spawn Point 13 - Alterac Mountains (Inner Section)'),(3013,1,'Spawn Point 14 - Alterac Mountains (Inner Section)'),(3014,1,'Spawn Point 15 - Alterac Mountains (Inner Section)'),(3015,1,'Spawn Point 16 - Alterac Mountains (Inner Section)'),(3016,1,'Spawn Point 17 - Alterac Mountains (Inner Section)'),(3017,1,'Spawn Point 18 - Alterac Mountains (Inner Section)'),(3018,1,'Spawn Point 19 - Alterac Mountains (Inner Section)'),(3019,1,'Spawn Point 20 - Alterac Mountains (Inner Section)'),(3020,1,'Spawn Point 21 - Alterac Mountains (Inner Section)'),(3021,1,'Spawn Point 22 - Alterac Mountains (Inner Section)'),(3022,1,'Spawn Point 23 - Alterac Mountains (Inner Section)'),(3023,1,'Spawn Point 24 - Alterac Mountains (Inner Section)'),(3024,1,'Spawn Point 25 - Alterac Mountains (Inner Section)'),(3025,1,'Spawn Point 26 - Alterac Mountains (Inner Section)'),(3026,1,'Spawn Point 27 - Alterac Mountains (Inner Section)'),(3027,1,'Spawn Point 28 - Alterac Mountains (Inner Section)'),(3028,1,'Spawn Point 29 - Alterac Mountains (Inner Section)'),(3029,1,'Spawn Point 30 - Alterac Mountains (Inner Section)'),(3030,1,'Spawn Point 31 - Alterac Mountains (Inner Section)'),(3031,1,'Spawn Point 32 - Alterac Mountains (Inner Section)'),(3032,1,'Spawn Point 33 - Alterac Mountains (Inner Section)'),(3033,1,'Spawn Point 34 - Alterac Mountains (Inner Section)'),(3034,1,'Spawn Point 35 - Alterac Mountains (Inner Section)'),(3035,1,'Spawn Point 36 - Alterac Mountains (Inner Section)'),(3036,1,'Spawn Point 37 - Alterac Mountains (Inner Section)'),(3037,1,'Spawn Point 38 - Alterac Mountains (Inner Section)'),(3038,1,'Spawn Point 39 - Alterac Mountains (Inner Section)'),(3039,1,'Spawn Point 40 - Alterac Mountains (Inner Section)'),(3040,1,'Spawn Point 41 - Alterac Mountains (Inner Section)'),(3041,1,'Spawn Point 42 - Alterac Mountains (Inner Section)'),(3042,1,'Spawn Point 43 - Alterac Mountains (Inner Section)'),(3043,1,'Spawn Point 44 - Alterac Mountains (Inner Section)'),(3044,1,'Spawn Point 45 - Alterac Mountains (Inner Section)'),(3045,1,'Spawn Point 46 - Alterac Mountains (Inner Section)'),(3046,1,'Spawn Point 47 - Alterac Mountains (Inner Section)'),(3047,1,'Spawn Point 48 - Alterac Mountains (Inner Section)'),(3048,1,'Spawn Point 49 - Alterac Mountains (Inner Section)'),(3049,1,'Spawn Point 50 - Alterac Mountains (Inner Section)'),(3050,1,'Spawn Point 51 - Alterac Mountains (Inner Section)'),(3051,1,'Spawn Point 52 - Alterac Mountains (Inner Section)'),(3052,1,'Spawn Point 53 - Alterac Mountains (Inner Section)'),(3053,1,'Spawn Point 54 - Alterac Mountains (Inner Section)'),(3054,1,'Spawn Point 55 - Alterac Mountains (Inner Section)'),(3055,1,'Spawn Point 56 - Alterac Mountains (Inner Section)'),(3056,1,'Spawn Point 57 - Alterac Mountains (Inner Section)'),(3057,1,'Spawn Point 58 - Alterac Mountains (Inner Section)'),(3058,1,'Spawn Point 59 - Alterac Mountains (Inner Section)'),(3059,1,'Spawn Point 60 - Alterac Mountains (Inner Section)'),(3060,1,'Spawn Point 61 - Alterac Mountains (Inner Section)'),(3061,1,'Spawn Point 62 - Alterac Mountains (Inner Section)'),(3062,1,'Spawn Point 63 - Alterac Mountains (Inner Section)'),(3063,1,'Spawn Point 64 - Alterac Mountains (Inner Section)'),(3064,1,'Spawn Point 65 - Alterac Mountains (Inner Section)'),(3065,1,'Spawn Point 66 - Alterac Mountains (Inner Section)'),(3066,1,'Spawn Point 67 - Alterac Mountains (Inner Section)'),(3067,1,'Spawn Point 68 - Alterac Mountains (Inner Section)'),(3068,1,'Spawn Point 69 - Alterac Mountains (Inner Section)'),(3069,1,'Spawn Point 70 - Alterac Mountains (Inner Section)'),(3070,1,'Spawn Point 71 - Alterac Mountains (Inner Section)'),(3071,1,'Spawn Point 72 - Alterac Mountains (Inner Section)'),(3072,1,'Spawn Point 73 - Alterac Mountains (Inner Section)'),(3073,1,'Spawn Point 74 - Alterac Mountains (Inner Section)'),(3074,1,'Spawn Point 75 - Alterac Mountains (Inner Section)'),(3075,1,'Spawn Point 76 - Alterac Mountains (Inner Section)'),(3076,1,'Spawn Point 77 - Alterac Mountains (Inner Section)'),(3077,1,'Spawn Point 78 - Alterac Mountains (Inner Section)'),(3078,1,'Spawn Point 79 - Alterac Mountains (Inner Section)'),(3079,1,'Spawn Point 80 - Alterac Mountains (Inner Section)'),(3080,1,'Spawn Point 81 - Alterac Mountains (Inner Section)'),(3081,1,'Spawn Point 82 - Alterac Mountains (Inner Section)'),(3121,1,'Spawn Point 122 - Alterac Mountains (Inner Section)'),(3122,1,'Spawn Point 123 - Alterac Mountains (Inner Section)'),(3123,1,'Spawn Point 124 - Alterac Mountains (Inner Section)'),(3124,1,'Spawn Point 125 - Alterac Mountains (Inner Section)'),(3125,1,'Spawn Point 126 - Alterac Mountains (Inner Section)'),(3126,1,'Spawn Point 127 - Alterac Mountains (Inner Section)'),(3127,1,'Spawn Point 128 - Alterac Mountains (Inner Section)'),(3128,1,'Spawn Point 129 - Alterac Mountains (Inner Section)'),(3129,1,'Spawn Point 130 - Alterac Mountains (Inner Section)'),(3130,1,'Spawn Point 131 - Alterac Mountains (Inner Section)'),(3131,1,'Spawn Point 132 - Alterac Mountains (Inner Section)'),(3132,1,'Spawn Point 133 - Alterac Mountains (Inner Section)'),(3154,1,'Spawn Point 155 - Alterac Mountains (Inner Section)'),(3161,1,'Spawn Point 162 - Alterac Mountains (Inner Section)'),(3082,1,'Spawn Point 83 - Alterac Mountains (Outer Section)'),(3083,1,'Spawn Point 84 - Alterac Mountains (Outer Section)'),(3084,1,'Spawn Point 85 - Alterac Mountains (Outer Section)'),(3085,1,'Spawn Point 86 - Alterac Mountains (Outer Section)'),(3086,1,'Spawn Point 87 - Alterac Mountains (Outer Section)'),(3087,1,'Spawn Point 88 - Alterac Mountains (Outer Section)'),(3088,1,'Spawn Point 89 - Alterac Mountains (Outer Section)'),(3089,1,'Spawn Point 90 - Alterac Mountains (Outer Section)'),(3090,1,'Spawn Point 91 - Alterac Mountains (Outer Section)'),(3091,1,'Spawn Point 92 - Alterac Mountains (Outer Section)'),(3092,1,'Spawn Point 93 - Alterac Mountains (Outer Section)'),(3093,1,'Spawn Point 94 - Alterac Mountains (Outer Section)'),(3094,1,'Spawn Point 95 - Alterac Mountains (Outer Section)'),(3095,1,'Spawn Point 96 - Alterac Mountains (Outer Section)'),(3096,1,'Spawn Point 97 - Alterac Mountains (Outer Section)'),(3097,1,'Spawn Point 98 - Alterac Mountains (Outer Section)'),(3098,1,'Spawn Point 99 - Alterac Mountains (Outer Section)'),(3099,1,'Spawn Point 100 - Alterac Mountains (Outer Section)'),(3100,1,'Spawn Point 101 - Alterac Mountains (Outer Section)'),(3101,1,'Spawn Point 102 - Alterac Mountains (Outer Section)'),(3102,1,'Spawn Point 103 - Alterac Mountains (Outer Section)'),(3103,1,'Spawn Point 104 - Alterac Mountains (Outer Section)'),(3104,1,'Spawn Point 105 - Alterac Mountains (Outer Section)'),(3105,1,'Spawn Point 106 - Alterac Mountains (Outer Section)'),(3106,1,'Spawn Point 107 - Alterac Mountains (Outer Section)'),(3107,1,'Spawn Point 108 - Alterac Mountains (Outer Section)'),(3108,1,'Spawn Point 109 - Alterac Mountains (Outer Section)'),(3109,1,'Spawn Point 110 - Alterac Mountains (Outer Section)'),(3110,1,'Spawn Point 111 - Alterac Mountains (Outer Section)'),(3111,1,'Spawn Point 112 - Alterac Mountains (Outer Section)'),(3112,1,'Spawn Point 113 - Alterac Mountains (Outer Section)'),(3113,1,'Spawn Point 114 - Alterac Mountains (Outer Section)'),(3114,1,'Spawn Point 115 - Alterac Mountains (Outer Section)'),(3115,1,'Spawn Point 116 - Alterac Mountains (Outer Section)'),(3116,1,'Spawn Point 117 - Alterac Mountains (Outer Section)'),(3117,1,'Spawn Point 118 - Alterac Mountains (Outer Section)'),(3118,1,'Spawn Point 119 - Alterac Mountains (Outer Section)'),(3119,1,'Spawn Point 120 - Alterac Mountains (Outer Section)'),(3120,1,'Spawn Point 121 - Alterac Mountains (Outer Section)'),(3133,1,'Spawn Point 134 - Alterac Mountains (Outer Section)'),(3134,1,'Spawn Point 135 - Alterac Mountains (Outer Section)'),(3135,1,'Spawn Point 136 - Alterac Mountains (Outer Section)'),(3136,1,'Spawn Point 137 - Alterac Mountains (Outer Section)'),(3137,1,'Spawn Point 138 - Alterac Mountains (Outer Section)'),(3138,1,'Spawn Point 139 - Alterac Mountains (Outer Section)'),(3139,1,'Spawn Point 140 - Alterac Mountains (Outer Section)'),(3140,1,'Spawn Point 141 - Alterac Mountains (Outer Section)'),(3141,1,'Spawn Point 142 - Alterac Mountains (Outer Section)'),(3142,1,'Spawn Point 143 - Alterac Mountains (Outer Section)'),(3143,1,'Spawn Point 144 - Alterac Mountains (Outer Section)'),(3144,1,'Spawn Point 145 - Alterac Mountains (Outer Section)'),(3145,1,'Spawn Point 146 - Alterac Mountains (Outer Section)'),(3146,1,'Spawn Point 147 - Alterac Mountains (Outer Section)'),(3147,1,'Spawn Point 148 - Alterac Mountains (Outer Section)'),(3148,1,'Spawn Point 149 - Alterac Mountains (Outer Section)'),(3149,1,'Spawn Point 150 - Alterac Mountains (Outer Section)'),(3150,1,'Spawn Point 151 - Alterac Mountains (Outer Section)'),(3151,1,'Spawn Point 152 - Alterac Mountains (Outer Section)'),(3152,1,'Spawn Point 153 - Alterac Mountains (Outer Section)'),(3153,1,'Spawn Point 154 - Alterac Mountains (Outer Section)'),(3155,1,'Spawn Point 156 - Alterac Mountains (Outer Section)'),(3156,1,'Spawn Point 157 - Alterac Mountains (Outer Section)'),(3157,1,'Spawn Point 158 - Alterac Mountains (Outer Section)'),(3158,1,'Spawn Point 159 - Alterac Mountains (Outer Section)'),(3159,1,'Spawn Point 160 - Alterac Mountains (Outer Section)'),(3160,1,'Spawn Point 161 - Alterac Mountains (Outer Section)'),(3200,1,'Spawn Point 1 - Arathi Highlands'),(3201,1,'Spawn Point 2 - Arathi Highlands'),(3202,1,'Spawn Point 3 - Arathi Highlands'),(3203,1,'Spawn Point 4 - Arathi Highlands'),(3204,1,'Spawn Point 5 - Arathi Highlands'),(3205,1,'Spawn Point 6 - Arathi Highlands'),(3206,1,'Spawn Point 7 - Arathi Highlands'),(3207,1,'Spawn Point 8 - Arathi Highlands'),(3208,1,'Spawn Point 9 - Arathi Highlands'),(3209,1,'Spawn Point 10 - Arathi Highlands'),(3210,1,'Spawn Point 11 - Arathi Highlands'),(3211,1,'Spawn Point 12 - Arathi Highlands'),(3212,1,'Spawn Point 13 - Arathi Highlands'),(3213,1,'Spawn Point 14 - Arathi Highlands'),(3214,1,'Spawn Point 15 - Arathi Highlands'),(3215,1,'Spawn Point 16 - Arathi Highlands'),(3216,1,'Spawn Point 17 - Arathi Highlands'),(3217,1,'Spawn Point 18 - Arathi Highlands'),(3218,1,'Spawn Point 19 - Arathi Highlands'),(3219,1,'Spawn Point 20 - Arathi Highlands'),(3220,1,'Spawn Point 21 - Arathi Highlands'),(3221,1,'Spawn Point 22 - Arathi Highlands'),(3222,1,'Spawn Point 23 - Arathi Highlands'),(3223,1,'Spawn Point 24 - Arathi Highlands'),(3224,1,'Spawn Point 25 - Arathi Highlands'),(3225,1,'Spawn Point 26 - Arathi Highlands'),(3226,1,'Spawn Point 27 - Arathi Highlands'),(3227,1,'Spawn Point 28 - Arathi Highlands'),(3228,1,'Spawn Point 29 - Arathi Highlands'),(3229,1,'Spawn Point 30 - Arathi Highlands'),(3230,1,'Spawn Point 31 - Arathi Highlands'),(3231,1,'Spawn Point 32 - Arathi Highlands'),(3232,1,'Spawn Point 33 - Arathi Highlands'),(3233,1,'Spawn Point 34 - Arathi Highlands'),(3234,1,'Spawn Point 35 - Arathi Highlands'),(3235,1,'Spawn Point 36 - Arathi Highlands'),(3236,1,'Spawn Point 37 - Arathi Highlands'),(3237,1,'Spawn Point 38 - Arathi Highlands'),(3238,1,'Spawn Point 39 - Arathi Highlands'),(3239,1,'Spawn Point 40 - Arathi Highlands'),(3240,1,'Spawn Point 41 - Arathi Highlands'),(3241,1,'Spawn Point 42 - Arathi Highlands'),(3242,1,'Spawn Point 43 - Arathi Highlands'),(3243,1,'Spawn Point 44 - Arathi Highlands'),(3244,1,'Spawn Point 45 - Arathi Highlands'),(3245,1,'Spawn Point 46 - Arathi Highlands'),(3246,1,'Spawn Point 47 - Arathi Highlands'),(3247,1,'Spawn Point 48 - Arathi Highlands'),(3248,1,'Spawn Point 49 - Arathi Highlands'),(3249,1,'Spawn Point 50 - Arathi Highlands'),(3250,1,'Spawn Point 51 - Arathi Highlands'),(3251,1,'Spawn Point 52 - Arathi Highlands'),(3252,1,'Spawn Point 53 - Arathi Highlands'),(3253,1,'Spawn Point 54 - Arathi Highlands'),(3254,1,'Spawn Point 55 - Arathi Highlands'),(3255,1,'Spawn Point 56 - Arathi Highlands'),(3256,1,'Spawn Point 57 - Arathi Highlands'),(3257,1,'Spawn Point 58 - Arathi Highlands'),(3258,1,'Spawn Point 59 - Arathi Highlands'),(3259,1,'Spawn Point 60 - Arathi Highlands'),(3260,1,'Spawn Point 61 - Arathi Highlands'),(3261,1,'Spawn Point 62 - Arathi Highlands'),(3262,1,'Spawn Point 63 - Arathi Highlands'),(3263,1,'Spawn Point 64 - Arathi Highlands'),(3264,1,'Spawn Point 65 - Arathi Highlands'),(3265,1,'Spawn Point 66 - Arathi Highlands'),(3266,1,'Spawn Point 67 - Arathi Highlands'),(3267,1,'Spawn Point 68 - Arathi Highlands'),(3268,1,'Spawn Point 69 - Arathi Highlands'),(3269,1,'Spawn Point 70 - Arathi Highlands'),(3270,1,'Spawn Point 71 - Arathi Highlands'),(3271,1,'Spawn Point 72 - Arathi Highlands'),(3272,1,'Spawn Point 73 - Arathi Highlands'),(3273,1,'Spawn Point 74 - Arathi Highlands'),(3274,1,'Spawn Point 75 - Arathi Highlands'),(3275,1,'Spawn Point 76 - Arathi Highlands'),(3276,1,'Spawn Point 77 - Arathi Highlands'),(3277,1,'Spawn Point 78 - Arathi Highlands'),(3278,1,'Spawn Point 79 - Arathi Highlands'),(3279,1,'Spawn Point 80 - Arathi Highlands'),(3280,1,'Spawn Point 81 - Arathi Highlands'),(3281,1,'Spawn Point 82 - Arathi Highlands'),(3282,1,'Spawn Point 83 - Arathi Highlands'),(3283,1,'Spawn Point 84 - Arathi Highlands'),(3284,1,'Spawn Point 85 - Arathi Highlands'),(3285,1,'Spawn Point 86 - Arathi Highlands'),(3286,1,'Spawn Point 87 - Arathi Highlands'),(3287,1,'Spawn Point 88 - Arathi Highlands'),(3288,1,'Spawn Point 89 - Arathi Highlands'),(3289,1,'Spawn Point 90 - Arathi Highlands'),(3290,1,'Spawn Point 91 - Arathi Highlands'),(3291,1,'Spawn Point 92 - Arathi Highlands'),(3292,1,'Spawn Point 93 - Arathi Highlands'),(3293,1,'Spawn Point 94 - Arathi Highlands'),(3294,1,'Spawn Point 95 - Arathi Highlands'),(3295,1,'Spawn Point 96 - Arathi Highlands'),(3296,1,'Spawn Point 97 - Arathi Highlands'),(3297,1,'Spawn Point 98 - Arathi Highlands'),(3298,1,'Spawn Point 99 - Arathi Highlands'),(3299,1,'Spawn Point 100 - Arathi Highlands'),(3300,1,'Spawn Point 101 - Arathi Highlands'),(3301,1,'Spawn Point 102 - Arathi Highlands'),(3302,1,'Spawn Point 103 - Arathi Highlands'),(3303,1,'Spawn Point 104 - Arathi Highlands'),(3304,1,'Spawn Point 105 - Arathi Highlands'),(3305,1,'Spawn Point 106 - Arathi Highlands'),(3306,1,'Spawn Point 107 - Arathi Highlands'),(3307,1,'Spawn Point 108 - Arathi Highlands'),(3308,1,'Spawn Point 109 - Arathi Highlands'),(3309,1,'Spawn Point 110 - Arathi Highlands'),(3310,1,'Spawn Point 111 - Arathi Highlands'),(3311,1,'Spawn Point 112 - Arathi Highlands'),(3312,1,'Spawn Point 113 - Arathi Highlands'),(3313,1,'Spawn Point 114 - Arathi Highlands'),(3314,1,'Spawn Point 115 - Arathi Highlands'),(3315,1,'Spawn Point 116 - Arathi Highlands'),(3316,1,'Spawn Point 117 - Arathi Highlands'),(3317,1,'Spawn Point 118 - Arathi Highlands'),(3318,1,'Spawn Point 119 - Arathi Highlands'),(3319,1,'Spawn Point 120 - Arathi Highlands'),(3320,1,'Spawn Point 121 - Arathi Highlands'),(3321,1,'Spawn Point 122 - Arathi Highlands'),(3322,1,'Spawn Point 123 - Arathi Highlands'),(3323,1,'Spawn Point 124 - Arathi Highlands'),(3324,1,'Spawn Point 125 - Arathi Highlands'),(3325,1,'Spawn Point 126 - Arathi Highlands'),(3326,1,'Spawn Point 127 - Arathi Highlands'),(3327,1,'Spawn Point 128 - Arathi Highlands'),(3328,1,'Spawn Point 129 - Arathi Highlands'),(3329,1,'Spawn Point 130 - Arathi Highlands'),(3330,1,'Spawn Point 131 - Arathi Highlands'),(3331,1,'Spawn Point 132 - Arathi Highlands'),(3332,1,'Spawn Point 133 - Arathi Highlands'),(3333,1,'Spawn Point 134 - Arathi Highlands'),(3334,1,'Spawn Point 135 - Arathi Highlands'),(3335,1,'Spawn Point 136 - Arathi Highlands'),(3336,1,'Spawn Point 137 - Arathi Highlands'),(3337,1,'Spawn Point 138 - Arathi Highlands'),(3338,1,'Spawn Point 139 - Arathi Highlands'),(3339,1,'Spawn Point 140 - Arathi Highlands'),(3340,1,'Spawn Point 141 - Arathi Highlands'),(3341,1,'Spawn Point 142 - Arathi Highlands'),(3342,1,'Spawn Point 143 - Arathi Highlands'),(3343,1,'Spawn Point 144 - Arathi Highlands'),(3344,1,'Spawn Point 145 - Arathi Highlands'),(3345,1,'Spawn Point 146 - Arathi Highlands'),(3346,1,'Spawn Point 147 - Arathi Highlands'),(3347,1,'Spawn Point 148 - Arathi Highlands'),(3348,1,'Spawn Point 149 - Arathi Highlands'),(3349,1,'Spawn Point 150 - Arathi Highlands'),(3350,1,'Spawn Point 151 - Arathi Highlands'),(3351,1,'Spawn Point 152 - Arathi Highlands'),(3352,1,'Spawn Point 153 - Arathi Highlands'),(3353,1,'Spawn Point 154 - Arathi Highlands'),(3354,1,'Spawn Point 155 - Arathi Highlands'),(3355,1,'Spawn Point 156 - Arathi Highlands'),(3356,1,'Spawn Point 157 - Arathi Highlands'),(3357,1,'Spawn Point 158 - Arathi Highlands'),(3358,1,'Spawn Point 159 - Arathi Highlands'),(3359,1,'Spawn Point 160 - Arathi Highlands'),(3360,1,'Spawn Point 161 - Arathi Highlands'),(3361,1,'Spawn Point 162 - Arathi Highlands'),(3362,1,'Spawn Point 163 - Arathi Highlands'),(3363,1,'Spawn Point 164 - Arathi Highlands'),(3364,1,'Spawn Point 165 - Arathi Highlands'),(3365,1,'Spawn Point 166 - Arathi Highlands'),(3366,1,'Spawn Point 167 - Arathi Highlands'),(3367,1,'Spawn Point 168 - Arathi Highlands'),(3368,1,'Spawn Point 169 - Arathi Highlands'),(3369,1,'Spawn Point 170 - Arathi Highlands'),(3370,1,'Spawn Point 171 - Arathi Highlands'),(3371,1,'Spawn Point 172 - Arathi Highlands'),(3372,1,'Spawn Point 173 - Arathi Highlands'),(3373,1,'Spawn Point 174 - Arathi Highlands'),(3374,1,'Spawn Point 175 - Arathi Highlands'),(3375,1,'Spawn Point 176 - Arathi Highlands'),(3376,1,'Spawn Point 177 - Arathi Highlands'),(3377,1,'Spawn Point 178 - Arathi Highlands'),(3378,1,'Spawn Point 179 - Arathi Highlands'),(3379,1,'Spawn Point 180 - Arathi Highlands'),(3380,1,'Spawn Point 181 - Arathi Highlands'),(3381,1,'Spawn Point 182 - Arathi Highlands'),(3382,1,'Spawn Point 183 - Arathi Highlands'),(3383,1,'Spawn Point 184 - Arathi Highlands'),(3384,1,'Spawn Point 185 - Arathi Highlands'),(3385,1,'Spawn Point 186 - Arathi Highlands'),(3386,1,'Spawn Point 187 - Arathi Highlands'),(3387,1,'Spawn Point 188 - Arathi Highlands'),(3388,1,'Spawn Point 189 - Arathi Highlands'),(3389,1,'Spawn Point 190 - Arathi Highlands'),(3390,1,'Spawn Point 191 - Arathi Highlands'),(3391,1,'Spawn Point 192 - Arathi Highlands'),(3392,1,'Spawn Point 193 - Arathi Highlands'),(3393,1,'Spawn Point 194 - Arathi Highlands'),(3394,1,'Spawn Point 195 - Arathi Highlands'),(3395,1,'Spawn Point 196 - Arathi Highlands'),(3396,1,'Spawn Point 197 - Arathi Highlands'),(3397,1,'Spawn Point 198 - Arathi Highlands'),(3398,1,'Spawn Point 199 - Arathi Highlands'),(3399,1,'Spawn Point 200 - Arathi Highlands'),(3400,1,'Spawn Point 201 - Arathi Highlands'),(3401,1,'Spawn Point 202 - Arathi Highlands'),(3402,1,'Spawn Point 203 - Arathi Highlands'),(3403,1,'Spawn Point 204 - Arathi Highlands'),(3404,1,'Spawn Point 205 - Arathi Highlands'),(3405,1,'Spawn Point 206 - Arathi Highlands'),(3406,1,'Spawn Point 207 - Arathi Highlands'),(3407,1,'Spawn Point 208 - Arathi Highlands'),(3408,1,'Spawn Point 209 - Arathi Highlands'),(3409,1,'Spawn Point 210 - Arathi Highlands'),(3410,1,'Spawn Point 211 - Arathi Highlands'),(3411,1,'Spawn Point 212 - Arathi Highlands'),(3412,1,'Spawn Point 213 - Arathi Highlands'),(3413,1,'Spawn Point 214 - Arathi Highlands'),(3414,1,'Spawn Point 215 - Arathi Highlands'),(3415,1,'Spawn Point 216 - Arathi Highlands'),(3416,1,'Spawn Point 217 - Arathi Highlands'),(3417,1,'Spawn Point 218 - Arathi Highlands'),(3418,1,'Spawn Point 219 - Arathi Highlands'),(3419,1,'Spawn Point 220 - Arathi Highlands'),(3420,1,'Spawn Point 221 - Arathi Highlands'),(3421,1,'Spawn Point 222 - Arathi Highlands'),(3422,1,'Spawn Point 223 - Arathi Highlands'),(3423,1,'Spawn Point 224 - Arathi Highlands'),(3424,1,'Spawn Point 225 - Arathi Highlands'),(3425,1,'Spawn Point 226 - Arathi Highlands'),(3426,1,'Spawn Point 227 - Arathi Highlands'),(3427,1,'Spawn Point 228 - Arathi Highlands'),(3428,1,'Spawn Point 229 - Arathi Highlands'),(3429,1,'Spawn Point 230 - Arathi Highlands'),(3430,1,'Spawn Point 231 - Arathi Highlands'),(3431,1,'Spawn Point 232 - Arathi Highlands'),(3432,1,'Spawn Point 233 - Arathi Highlands'),(3433,1,'Spawn Point 234 - Arathi Highlands'),(3434,1,'Spawn Point 235 - Arathi Highlands'),(3435,1,'Spawn Point 236 - Arathi Highlands'),(3436,1,'Spawn Point 237 - Arathi Highlands'),(3437,1,'Spawn Point 238 - Arathi Highlands'),(3438,1,'Spawn Point 239 - Arathi Highlands'),(3439,1,'Spawn Point 240 - Arathi Highlands'),(3440,1,'Spawn Point 241 - Arathi Highlands'),(3441,1,'Spawn Point 242 - Arathi Highlands'),(3442,1,'Spawn Point 243 - Arathi Highlands'),(3443,1,'Spawn Point 244 - Arathi Highlands'),(3444,1,'Spawn Point 245 - Arathi Highlands'),(3445,1,'Spawn Point 246 - Arathi Highlands'),(3446,1,'Spawn Point 247 - Arathi Highlands'),(3447,1,'Spawn Point 248 - Arathi Highlands'),(3448,1,'Spawn Point 249 - Arathi Highlands'),(3449,1,'Spawn Point 250 - Arathi Highlands'),(3450,1,'Spawn Point 251 - Arathi Highlands'),(3451,1,'Spawn Point 252 - Arathi Highlands'),(3452,1,'Spawn Point 253 - Arathi Highlands'),(3453,1,'Spawn Point 254 - Arathi Highlands'),(3454,1,'Spawn Point 255 - Arathi Highlands'),(3455,1,'Spawn Point 256 - Arathi Highlands'),(3456,1,'Spawn Point 257 - Arathi Highlands'),(3457,1,'Spawn Point 258 - Arathi Highlands'),(3458,1,'Spawn Point 259 - Arathi Highlands'),(3459,1,'Spawn Point 260 - Arathi Highlands'),(3460,1,'Spawn Point 261 - Arathi Highlands'),(3461,1,'Spawn Point 262 - Arathi Highlands'),(3462,1,'Spawn Point 263 - Arathi Highlands'),(3463,1,'Spawn Point 264 - Arathi Highlands'),(3464,1,'Spawn Point 265 - Arathi Highlands'),(3465,1,'Spawn Point 266 - Arathi Highlands'),(3466,1,'Spawn Point 267 - Arathi Highlands'),(3467,1,'Spawn Point 268 - Arathi Highlands'),(3468,1,'Spawn Point 269 - Arathi Highlands'),(3469,1,'Spawn Point 270 - Arathi Highlands'),(3470,1,'Spawn Point 271 - Arathi Highlands'),(3471,1,'Spawn Point 272 - Arathi Highlands'),(3472,1,'Spawn Point 273 - Arathi Highlands'),(3473,1,'Spawn Point 274 - Arathi Highlands'),(3474,1,'Spawn Point 275 - Arathi Highlands'),(3475,1,'Spawn Point 276 - Arathi Highlands'),(3476,1,'Spawn Point 277 - Arathi Highlands'),(3477,1,'Spawn Point 278 - Arathi Highlands'),(3478,1,'Spawn Point 279 - Arathi Highlands'),(3479,1,'Spawn Point 280 - Arathi Highlands'),(3480,1,'Spawn Point 281 - Arathi Highlands'),(3481,1,'Spawn Point 282 - Arathi Highlands'),(3482,1,'Spawn Point 283 - Arathi Highlands'),(3483,1,'Spawn Point 284 - Arathi Highlands'),(3484,1,'Spawn Point 285 - Arathi Highlands'),(3485,1,'Spawn Point 286 - Arathi Highlands'),(3486,1,'Spawn Point 287 - Arathi Highlands'),(3487,1,'Spawn Point 288 - Arathi Highlands'),(3488,1,'Spawn Point 289 - Arathi Highlands'),(3489,1,'Spawn Point 290 - Arathi Highlands'),(3490,1,'Spawn Point 291 - Arathi Highlands'),(3491,1,'Spawn Point 292 - Arathi Highlands'),(3492,1,'Spawn Point 293 - Arathi Highlands'),(3493,1,'Spawn Point 294 - Arathi Highlands'),(3494,1,'Spawn Point 295 - Arathi Highlands'),(3495,1,'Spawn Point 296 - Arathi Highlands'),(3496,1,'Spawn Point 297 - Arathi Highlands'),(3497,1,'Spawn Point 298 - Arathi Highlands'),(3498,1,'Spawn Point 299 - Arathi Highlands'),(3499,1,'Spawn Point 300 - Arathi Highlands'),(3500,1,'Spawn Point 301 - Arathi Highlands'),(3501,1,'Spawn Point 302 - Arathi Highlands'),(3502,1,'Spawn Point 303 - Arathi Highlands'),(3503,1,'Spawn Point 304 - Arathi Highlands'),(3504,1,'Spawn Point 305 - Arathi Highlands'),(3505,1,'Spawn Point 306 - Arathi Highlands'),(3506,1,'Spawn Point 307 - Arathi Highlands'),(3507,1,'Spawn Point 308 - Arathi Highlands'),(3508,1,'Spawn Point 309 - Arathi Highlands'),(3509,1,'Spawn Point 310 - Arathi Highlands'),(3510,1,'Spawn Point 311 - Arathi Highlands'),(3511,1,'Spawn Point 312 - Arathi Highlands'),(3512,1,'Spawn Point 313 - Arathi Highlands'),(3513,1,'Spawn Point 314 - Arathi Highlands'),(3514,1,'Spawn Point 315 - Arathi Highlands'),(3515,1,'Spawn Point 316 - Arathi Highlands'),(3516,1,'Spawn Point 317- Arathi Highlands'),(3517,1,'Spawn Point 318 - Arathi Highlands'),(3518,1,'Spawn Point 319 - Arathi Highlands'),(3519,1,'Spawn Point 320 - Arathi Highlands'),(3520,1,'Spawn Point 321 - Arathi Highlands'),(3521,1,'Spawn Point 322 - Arathi Highlands'),(3522,1,'Spawn Point 323 - Arathi Highlands'),(3600,1,'Spawn Point 1 - Badlands'),(3601,1,'Spawn Point 2 - Badlands'),(3602,1,'Spawn Point 3 - Badlands'),(3603,1,'Spawn Point 4 - Badlands'),(3604,1,'Spawn Point 5 - Badlands'),(3605,1,'Spawn Point 6 - Badlands'),(3606,1,'Spawn Point 7 - Badlands'),(3607,1,'Spawn Point 8 - Badlands'),(3608,1,'Spawn Point 9 - Badlands'),(3609,1,'Spawn Point 10 - Badlands'),(3610,1,'Spawn Point 11 - Badlands'),(3611,1,'Spawn Point 12 - Badlands'),(3612,1,'Spawn Point 13 - Badlands'),(3613,1,'Spawn Point 14 - Badlands'),(3614,1,'Spawn Point 15 - Badlands'),(3615,1,'Spawn Point 16 - Badlands'),(3616,1,'Spawn Point 17 - Badlands'),(3617,1,'Spawn Point 18 - Badlands'),(3618,1,'Spawn Point 19 - Badlands'),(3619,1,'Spawn Point 20 - Badlands'),(3620,1,'Spawn Point 21 - Badlands'),(3621,1,'Spawn Point 22 - Badlands'),(3622,1,'Spawn Point 23 - Badlands'),(3623,1,'Spawn Point 24 - Badlands'),(3624,1,'Spawn Point 25 - Badlands'),(3625,1,'Spawn Point 26 - Badlands'),(3626,1,'Spawn Point 27 - Badlands'),(3627,1,'Spawn Point 28 - Badlands'),(3628,1,'Spawn Point 29 - Badlands'),(3629,1,'Spawn Point 30 - Badlands'),(3630,1,'Spawn Point 31 - Badlands'),(3631,1,'Spawn Point 32 - Badlands'),(3632,1,'Spawn Point 33 - Badlands'),(3633,1,'Spawn Point 34 - Badlands'),(3634,1,'Spawn Point 35 - Badlands'),(3635,1,'Spawn Point 36 - Badlands'),(3636,1,'Spawn Point 37 - Badlands'),(3637,1,'Spawn Point 38 - Badlands'),(3638,1,'Spawn Point 39 - Badlands'),(3639,1,'Spawn Point 40 - Badlands'),(3640,1,'Spawn Point 41 - Badlands'),(3641,1,'Spawn Point 42 - Badlands'),(3642,1,'Spawn Point 43 - Badlands'),(3643,1,'Spawn Point 44 - Badlands'),(3644,1,'Spawn Point 45 - Badlands'),(3645,1,'Spawn Point 46 - Badlands'),(3646,1,'Spawn Point 47 - Badlands'),(3647,1,'Spawn Point 48 - Badlands'),(3648,1,'Spawn Point 49 - Badlands'),(3649,1,'Spawn Point 50 - Badlands'),(3650,1,'Spawn Point 51 - Badlands'),(3651,1,'Spawn Point 52 - Badlands'),(3652,1,'Spawn Point 53 - Badlands'),(3653,1,'Spawn Point 54 - Badlands'),(3654,1,'Spawn Point 55 - Badlands'),(3655,1,'Spawn Point 56 - Badlands'),(3656,1,'Spawn Point 57 - Badlands'),(3657,1,'Spawn Point 58 - Badlands'),(3658,1,'Spawn Point 59 - Badlands'),(3659,1,'Spawn Point 60 - Badlands'),(3660,1,'Spawn Point 61 - Badlands'),(3661,1,'Spawn Point 62 - Badlands'),(3662,1,'Spawn Point 63 - Badlands'),(3663,1,'Spawn Point 64 - Badlands'),(3664,1,'Spawn Point 65 - Badlands'),(3665,1,'Spawn Point 66 - Badlands'),(3666,1,'Spawn Point 67 - Badlands'),(3667,1,'Spawn Point 68 - Badlands'),(3668,1,'Spawn Point 69 - Badlands'),(3669,1,'Spawn Point 70 - Badlands'),(3670,1,'Spawn Point 71 - Badlands'),(3671,1,'Spawn Point 72 - Badlands'),(3672,1,'Spawn Point 73 - Badlands'),(3673,1,'Spawn Point 74 - Badlands'),(3674,1,'Spawn Point 75 - Badlands'),(3675,1,'Spawn Point 76 - Badlands'),(3676,1,'Spawn Point 77 - Badlands'),(3677,1,'Spawn Point 78 - Badlands'),(3678,1,'Spawn Point 79 - Badlands'),(3679,1,'Spawn Point 80 - Badlands'),(3680,1,'Spawn Point 81 - Badlands'),(3681,1,'Spawn Point 82 - Badlands'),(3682,1,'Spawn Point 83 - Badlands'),(3683,1,'Spawn Point 84 - Badlands'),(3684,1,'Spawn Point 85 - Badlands'),(3685,1,'Spawn Point 86 - Badlands'),(3686,1,'Spawn Point 87 - Badlands'),(3687,1,'Spawn Point 88 - Badlands'),(3688,1,'Spawn Point 89 - Badlands'),(3689,1,'Spawn Point 90 - Badlands'),(3690,1,'Spawn Point 91 - Badlands'),(3691,1,'Spawn Point 92 - Badlands'),(3692,1,'Spawn Point 93 - Badlands'),(3693,1,'Spawn Point 94 - Badlands'),(3694,1,'Spawn Point 95 - Badlands'),(3695,1,'Spawn Point 96 - Badlands'),(3696,1,'Spawn Point 97 - Badlands'),(3697,1,'Spawn Point 98 - Badlands'),(3698,1,'Spawn Point 99 - Badlands'),(3699,1,'Spawn Point 100 - Badlands'),(3700,1,'Spawn Point 101 - Badlands'),(3701,1,'Spawn Point 102 - Badlands'),(3702,1,'Spawn Point 103 - Badlands'),(3703,1,'Spawn Point 104 - Badlands'),(3704,1,'Spawn Point 105 - Badlands'),(3705,1,'Spawn Point 106 - Badlands'),(3706,1,'Spawn Point 107 - Badlands'),(3707,1,'Spawn Point 108 - Badlands'),(3708,1,'Spawn Point 109 - Badlands'),(3709,1,'Spawn Point 110 - Badlands'),(3710,1,'Spawn Point 111 - Badlands'),(3711,1,'Spawn Point 112 - Badlands'),(3712,1,'Spawn Point 113 - Badlands'),(3713,1,'Spawn Point 114 - Badlands'),(3714,1,'Spawn Point 115 - Badlands'),(3715,1,'Spawn Point 116 - Badlands'),(3716,1,'Spawn Point 117 - Badlands'),(3717,1,'Spawn Point 118 - Badlands'),(3718,1,'Spawn Point 119 - Badlands'),(3719,1,'Spawn Point 120 - Badlands'),(3720,1,'Spawn Point 121 - Badlands'),(3721,1,'Spawn Point 122 - Badlands'),(3722,1,'Spawn Point 123 - Badlands'),(3723,1,'Spawn Point 124 - Badlands'),(3724,1,'Spawn Point 125 - Badlands'),(3725,1,'Spawn Point 126 - Badlands'),(3726,1,'Spawn Point 127 - Badlands'),(3727,1,'Spawn Point 128 - Badlands'),(3728,1,'Spawn Point 129 - Badlands'),(3729,1,'Spawn Point 130 - Badlands'),(3730,1,'Spawn Point 131 - Badlands'),(3731,1,'Spawn Point 132 - Badlands'),(3732,1,'Spawn Point 133 - Badlands'),(3733,1,'Spawn Point 134 - Badlands'),(3734,1,'Spawn Point 135 - Badlands'),(3735,1,'Spawn Point 136 - Badlands'),(3736,1,'Spawn Point 137 - Badlands'),(3737,1,'Spawn Point 138 - Badlands'),(3738,1,'Spawn Point 139 - Badlands'),(3739,1,'Spawn Point 140 - Badlands'),(3740,1,'Spawn Point 141 - Badlands'),(3741,1,'Spawn Point 142 - Badlands'),(3742,1,'Spawn Point 143 - Badlands'),(3743,1,'Spawn Point 144 - Badlands'),(3744,1,'Spawn Point 145 - Badlands'),(3745,1,'Spawn Point 146 - Badlands'),(3746,1,'Spawn Point 147 - Badlands'),(3747,1,'Spawn Point 148 - Badlands'),(3748,1,'Spawn Point 149 - Badlands'),(3749,1,'Spawn Point 150 - Badlands'),(3750,1,'Spawn Point 151 - Badlands'),(3751,1,'Spawn Point 152 - Badlands'),(3752,1,'Spawn Point 153 - Badlands'),(3753,1,'Spawn Point 154 - Badlands'),(3754,1,'Spawn Point 155 - Badlands'),(3755,1,'Spawn Point 156 - Badlands'),(3756,1,'Spawn Point 157 - Badlands'),(3900,1,'Spawn Point 1 - Blasted Lands'),(3901,1,'Spawn Point 2 - Blasted Lands'),(3902,1,'Spawn Point 3 - Blasted Lands'),(3903,1,'Spawn Point 4 - Blasted Lands'),(3904,1,'Spawn Point 5 - Blasted Lands'),(3905,1,'Spawn Point 6 - Blasted Lands'),(3906,1,'Spawn Point 7 - Blasted Lands'),(3907,1,'Spawn Point 8 - Blasted Lands'),(3908,1,'Spawn Point 9 - Blasted Lands'),(3909,1,'Spawn Point 10 - Blasted Lands'),(3910,1,'Spawn Point 11 - Blasted Lands'),(3911,1,'Spawn Point 12 - Blasted Lands'),(3912,1,'Spawn Point 13 - Blasted Lands'),(3913,1,'Spawn Point 14 - Blasted Lands'),(3914,1,'Spawn Point 15 - Blasted Lands'),(3915,1,'Spawn Point 16 - Blasted Lands'),(3916,1,'Spawn Point 17 - Blasted Lands'),(3917,1,'Spawn Point 18 - Blasted Lands'),(3918,1,'Spawn Point 19 - Blasted Lands'),(3919,1,'Spawn Point 20 - Blasted Lands'),(3920,1,'Spawn Point 21 - Blasted Lands'),(3921,1,'Spawn Point 22 - Blasted Lands'),(3922,1,'Spawn Point 23 - Blasted Lands'),(3923,1,'Spawn Point 24 - Blasted Lands'),(3924,1,'Spawn Point 25 - Blasted Lands'),(3925,1,'Spawn Point 26 - Blasted Lands'),(3926,1,'Spawn Point 27 - Blasted Lands'),(3927,1,'Spawn Point 28 - Blasted Lands'),(3928,1,'Spawn Point 29 - Blasted Lands'),(3929,1,'Spawn Point 30 - Blasted Lands'),(3930,1,'Spawn Point 31 - Blasted Lands'),(3931,1,'Spawn Point 32 - Blasted Lands'),(3932,1,'Spawn Point 33 - Blasted Lands'),(3933,1,'Spawn Point 34 - Blasted Lands'),(3934,1,'Spawn Point 35 - Blasted Lands'),(3935,1,'Spawn Point 36 - Blasted Lands'),(3936,1,'Spawn Point 37 - Blasted Lands'),(3937,1,'Spawn Point 38 - Blasted Lands'),(3938,1,'Spawn Point 39 - Blasted Lands'),(3939,1,'Spawn Point 40 - Blasted Lands'),(3940,1,'Spawn Point 41 - Blasted Lands'),(3941,1,'Spawn Point 42 - Blasted Lands'),(3942,1,'Spawn Point 43 - Blasted Lands'),(3943,1,'Spawn Point 44 - Blasted Lands'),(3944,1,'Spawn Point 45 - Blasted Lands'),(3945,1,'Spawn Point 46 - Blasted Lands'),(3946,1,'Spawn Point 47 - Blasted Lands'),(3947,1,'Spawn Point 48 - Blasted Lands'),(3948,1,'Spawn Point 49 - Blasted Lands'),(3949,1,'Spawn Point 50 - Blasted Lands'),(3950,1,'Spawn Point 51 - Blasted Lands'),(3951,1,'Spawn Point 52 - Blasted Lands'),(3952,1,'Spawn Point 53 - Blasted Lands'),(3953,1,'Spawn Point 54 - Blasted Lands'),(3954,1,'Spawn Point 55 - Blasted Lands'),(3955,1,'Spawn Point 56 - Blasted Lands'),(3956,1,'Spawn Point 57 - Blasted Lands'),(3957,1,'Spawn Point 58 - Blasted Lands'),(3958,1,'Spawn Point 59 - Blasted Lands'),(3959,1,'Spawn Point 60 - Blasted Lands'),(3960,1,'Spawn Point 61 - Blasted Lands'),(3961,1,'Spawn Point 62 - Blasted Lands'),(3962,1,'Spawn Point 63 - Blasted Lands'),(3963,1,'Spawn Point 64 - Blasted Lands'),(3964,1,'Spawn Point 65 - Blasted Lands'),(3965,1,'Spawn Point 66 - Blasted Lands'),(3966,1,'Spawn Point 67 - Blasted Lands'),(3967,1,'Spawn Point 68 - Blasted Lands'),(3968,1,'Spawn Point 69 - Blasted Lands'),(3969,1,'Spawn Point 70 - Blasted Lands'),(3970,1,'Spawn Point 71 - Blasted Lands'),(3971,1,'Spawn Point 72 - Blasted Lands'),(3972,1,'Spawn Point 73 - Blasted Lands'),(3973,1,'Spawn Point 74 - Blasted Lands'),(3974,1,'Spawn Point 75 - Blasted Lands'),(3975,1,'Spawn Point 76 - Blasted Lands'),(3976,1,'Spawn Point 77 - Blasted Lands'),(3977,1,'Spawn Point 78 - Blasted Lands'),(3978,1,'Spawn Point 79 - Blasted Lands'),(3979,1,'Spawn Point 80 - Blasted Lands'),(3980,1,'Spawn Point 81 - Blasted Lands'),(3981,1,'Spawn Point 82 - Blasted Lands'),(3982,1,'Spawn Point 83 - Blasted Lands'),(3983,1,'Spawn Point 84 - Blasted Lands'),(3984,1,'Spawn Point 85 - Blasted Lands'),(3985,1,'Spawn Point 86 - Blasted Lands'),(3986,1,'Spawn Point 87 - Blasted Lands'),(3987,1,'Spawn Point 88 - Blasted Lands'),(3988,1,'Spawn Point 89 - Blasted Lands'),(3989,1,'Spawn Point 90 - Blasted Lands'),(3990,1,'Spawn Point 91 - Blasted Lands'),(3991,1,'Spawn Point 92 - Blasted Lands'),(3992,1,'Spawn Point 93 - Blasted Lands'),(3993,1,'Spawn Point 94 - Blasted Lands'),(3994,1,'Spawn Point 95 - Blasted Lands'),(3995,1,'Spawn Point 96 - Blasted Lands'),(3996,1,'Spawn Point 97 - Blasted Lands'),(3997,1,'Spawn Point 98 - Blasted Lands'),(3998,1,'Spawn Point 99 - Blasted Lands'),(3999,1,'Spawn Point 100 - Blasted Lands'),(4000,1,'Spawn Point 101 - Blasted Lands'),(4001,1,'Spawn Point 102 - Blasted Lands'),(4002,1,'Spawn Point 103 - Blasted Lands'),(4003,1,'Spawn Point 104 - Blasted Lands'),(4004,1,'Spawn Point 105 - Blasted Lands'),(4005,1,'Spawn Point 106 - Blasted Lands'),(4006,1,'Spawn Point 107 - Blasted Lands'),(4007,1,'Spawn Point 108 - Blasted Lands'),(4008,1,'Spawn Point 109 - Blasted Lands'),(4009,1,'Spawn Point 110 - Blasted Lands'),(4010,1,'Spawn Point 111 - Blasted Lands'),(4011,1,'Spawn Point 112 - Blasted Lands'),(4012,1,'Spawn Point 113 - Blasted Lands'),(4013,1,'Spawn Point 114 - Blasted Lands'),(4014,1,'Spawn Point 115 - Blasted Lands'),(4015,1,'Spawn Point 116 - Blasted Lands'),(4016,1,'Spawn Point 117 - Blasted Lands'),(4017,1,'Spawn Point 118 - Blasted Lands'),(4018,1,'Spawn Point 119 - Blasted Lands'),(4019,1,'Spawn Point 120 - Blasted Lands'),(4020,1,'Spawn Point 121 - Blasted Lands'),(4100,1,'Spawn Point 1 - Burning Steppes'),(4101,1,'Spawn Point 2 - Burning Steppes'),(4102,1,'Spawn Point 3 - Burning Steppes'),(4103,1,'Spawn Point 4 - Burning Steppes'),(4104,1,'Spawn Point 5 - Burning Steppes'),(4105,1,'Spawn Point 6 - Burning Steppes'),(4106,1,'Spawn Point 7 - Burning Steppes'),(4107,1,'Spawn Point 8 - Burning Steppes'),(4108,1,'Spawn Point 9 - Burning Steppes'),(4109,1,'Spawn Point 10 - Burning Steppes'),(4110,1,'Spawn Point 11 - Burning Steppes'),(4111,1,'Spawn Point 12 - Burning Steppes'),(4112,1,'Spawn Point 13 - Burning Steppes'),(4113,1,'Spawn Point 14 - Burning Steppes'),(4114,1,'Spawn Point 15 - Burning Steppes'),(4115,1,'Spawn Point 16 - Burning Steppes'),(4116,1,'Spawn Point 17 - Burning Steppes'),(4117,1,'Spawn Point 18 - Burning Steppes'),(4118,1,'Spawn Point 19 - Burning Steppes'),(4119,1,'Spawn Point 20 - Burning Steppes'),(4120,1,'Spawn Point 21 - Burning Steppes'),(4121,1,'Spawn Point 22 - Burning Steppes'),(4122,1,'Spawn Point 23 - Burning Steppes'),(4123,1,'Spawn Point 24 - Burning Steppes'),(4124,1,'Spawn Point 25 - Burning Steppes'),(4125,1,'Spawn Point 26 - Burning Steppes'),(4126,1,'Spawn Point 27 - Burning Steppes'),(4127,1,'Spawn Point 28 - Burning Steppes'),(4128,1,'Spawn Point 29 - Burning Steppes'),(4129,1,'Spawn Point 30 - Burning Steppes'),(4130,1,'Spawn Point 31 - Burning Steppes'),(4131,1,'Spawn Point 32 - Burning Steppes'),(4132,1,'Spawn Point 33 - Burning Steppes'),(4133,1,'Spawn Point 34 - Burning Steppes'),(4134,1,'Spawn Point 35 - Burning Steppes'),(4135,1,'Spawn Point 36 - Burning Steppes'),(4136,1,'Spawn Point 37 - Burning Steppes'),(4137,1,'Spawn Point 38 - Burning Steppes'),(4138,1,'Spawn Point 39 - Burning Steppes'),(4139,1,'Spawn Point 40 - Burning Steppes'),(4140,1,'Spawn Point 41 - Burning Steppes'),(4141,1,'Spawn Point 42 - Burning Steppes'),(4142,1,'Spawn Point 43 - Burning Steppes'),(4143,1,'Spawn Point 44 - Burning Steppes'),(4144,1,'Spawn Point 45 - Burning Steppes'),(4145,1,'Spawn Point 46 - Burning Steppes'),(4146,1,'Spawn Point 47 - Burning Steppes'),(4147,1,'Spawn Point 48 - Burning Steppes'),(4148,1,'Spawn Point 49 - Burning Steppes'),(4149,1,'Spawn Point 50 - Burning Steppes'),(4150,1,'Spawn Point 51 - Burning Steppes'),(4151,1,'Spawn Point 52 - Burning Steppes'),(4152,1,'Spawn Point 53 - Burning Steppes'),(4153,1,'Spawn Point 54 - Burning Steppes'),(4154,1,'Spawn Point 55 - Burning Steppes'),(4155,1,'Spawn Point 56 - Burning Steppes'),(4156,1,'Spawn Point 57 - Burning Steppes'),(4157,1,'Spawn Point 58 - Burning Steppes'),(4158,1,'Spawn Point 59 - Burning Steppes'),(4159,1,'Spawn Point 60 - Burning Steppes'),(4160,1,'Spawn Point 61 - Burning Steppes'),(4161,1,'Spawn Point 62 - Burning Steppes'),(4162,1,'Spawn Point 63 - Burning Steppes'),(4163,1,'Spawn Point 64 - Burning Steppes'),(4164,1,'Spawn Point 65 - Burning Steppes'),(4165,1,'Spawn Point 66 - Burning Steppes'),(4166,1,'Spawn Point 67 - Burning Steppes'),(4167,1,'Spawn Point 68 - Burning Steppes'),(4168,1,'Spawn Point 69 - Burning Steppes'),(4169,1,'Spawn Point 70 - Burning Steppes'),(4170,1,'Spawn Point 71 - Burning Steppes'),(4171,1,'Spawn Point 72 - Burning Steppes'),(4172,1,'Spawn Point 73 - Burning Steppes'),(4173,1,'Spawn Point 74 - Burning Steppes'),(4174,1,'Spawn Point 75 - Burning Steppes'),(4175,1,'Spawn Point 76 - Burning Steppes'),(4176,1,'Spawn Point 77 - Burning Steppes'),(4177,1,'Spawn Point 78 - Burning Steppes'),(4178,1,'Spawn Point 79 - Burning Steppes'),(4179,1,'Spawn Point 80 - Burning Steppes'),(4180,1,'Spawn Point 81 - Burning Steppes'),(4181,1,'Spawn Point 82 - Burning Steppes'),(4182,1,'Spawn Point 83 - Burning Steppes'),(4183,1,'Spawn Point 84 - Burning Steppes'),(4184,1,'Spawn Point 85 - Burning Steppes'),(4185,1,'Spawn Point 86 - Burning Steppes'),(4186,1,'Spawn Point 87 - Burning Steppes'),(4187,1,'Spawn Point 88 - Burning Steppes'),(4188,1,'Spawn Point 89 - Burning Steppes'),(4189,1,'Spawn Point 90 - Burning Steppes'),(4190,1,'Spawn Point 91 - Burning Steppes'),(4191,1,'Spawn Point 92 - Burning Steppes'),(4192,1,'Spawn Point 93 - Burning Steppes'),(4193,1,'Spawn Point 94 - Burning Steppes'),(4194,1,'Spawn Point 95 - Burning Steppes'),(4195,1,'Spawn Point 96 - Burning Steppes'),(4196,1,'Spawn Point 97 - Burning Steppes'),(4197,1,'Spawn Point 98 - Burning Steppes'),(4198,1,'Spawn Point 99 - Burning Steppes'),(4199,1,'Spawn Point 100 - Burning Steppes'),(4200,1,'Spawn Point 101 - Burning Steppes'),(4201,1,'Spawn Point 102 - Burning Steppes'),(4202,1,'Spawn Point 103 - Burning Steppes'),(4203,1,'Spawn Point 104 - Burning Steppes'),(4204,1,'Spawn Point 105 - Burning Steppes'),(4205,1,'Spawn Point 106 - Burning Steppes'),(4206,1,'Spawn Point 107 - Burning Steppes'),(4207,1,'Spawn Point 108 - Burning Steppes'),(4208,1,'Spawn Point 109 - Burning Steppes'),(4209,1,'Spawn Point 110 - Burning Steppes'),(4210,1,'Spawn Point 111 - Burning Steppes'),(4211,1,'Spawn Point 112 - Burning Steppes'),(4212,1,'Spawn Point 113 - Burning Steppes'),(4213,1,'Spawn Point 114 - Burning Steppes'),(4214,1,'Spawn Point 115 - Burning Steppes'),(4215,1,'Spawn Point 116 - Burning Steppes'),(4216,1,'Spawn Point 117 - Burning Steppes'),(4217,1,'Spawn Point 118 - Burning Steppes'),(4218,1,'Spawn Point 119 - Burning Steppes'),(4219,1,'Spawn Point 120 - Burning Steppes'),(4220,1,'Spawn Point 121 - Burning Steppes'),(4221,1,'Spawn Point 122 - Burning Steppes'),(4222,1,'Spawn Point 123 - Burning Steppes'),(4223,1,'Spawn Point 124 - Burning Steppes'),(4224,1,'Spawn Point 125 - Burning Steppes'),(4225,1,'Spawn Point 126 - Burning Steppes'),(4226,1,'Spawn Point 127 - Burning Steppes'),(4227,1,'Spawn Point 128 - Burning Steppes'),(4228,1,'Spawn Point 129 - Burning Steppes'),(4229,1,'Spawn Point 130 - Burning Steppes'),(4230,1,'Spawn Point 131 - Burning Steppes'),(4231,1,'Spawn Point 132 - Burning Steppes'),(4232,1,'Spawn Point 133 - Burning Steppes'),(4233,1,'Spawn Point 134 - Burning Steppes'),(4234,1,'Spawn Point 135 - Burning Steppes'),(4235,1,'Spawn Point 136 - Burning Steppes'),(4236,1,'Spawn Point 137 - Burning Steppes'),(4237,1,'Spawn Point 138 - Burning Steppes'),(4238,1,'Spawn Point 139 - Burning Steppes'),(4239,1,'Spawn Point 140 - Burning Steppes'),(4240,1,'Spawn Point 141 - Burning Steppes'),(4241,1,'Spawn Point 142 - Burning Steppes'),(4242,1,'Spawn Point 143 - Burning Steppes'),(4243,1,'Spawn Point 144 - Burning Steppes'),(4244,1,'Spawn Point 145 - Burning Steppes'),(4245,1,'Spawn Point 146 - Burning Steppes'),(4246,1,'Spawn Point 147 - Burning Steppes'),(4247,1,'Spawn Point 148 - Burning Steppes'),(4248,1,'Spawn Point 149 - Burning Steppes'),(4249,1,'Spawn Point 150 - Burning Steppes'),(4250,1,'Spawn Point 151 - Burning Steppes'),(4251,1,'Spawn Point 152 - Burning Steppes'),(4252,1,'Spawn Point 153 - Burning Steppes'),(4253,1,'Spawn Point 154 - Burning Steppes'),(4254,1,'Spawn Point 155 - Burning Steppes'),(4255,1,'Spawn Point 156 - Burning Steppes'),(4256,1,'Spawn Point 157 - Burning Steppes'),(4257,1,'Spawn Point 158 - Burning Steppes'),(4258,1,'Spawn Point 159 - Burning Steppes'),(4259,1,'Spawn Point 160 - Burning Steppes'),(4260,1,'Spawn Point 161 - Burning Steppes'),(4261,1,'Spawn Point 162 - Burning Steppes'),(4262,1,'Spawn Point 163 - Burning Steppes'),(4263,1,'Spawn Point 164 - Burning Steppes'),(4264,1,'Spawn Point 165 - Burning Steppes'),(4265,1,'Spawn Point 166 - Burning Steppes'),(4266,1,'Spawn Point 167 - Burning Steppes'),(4267,1,'Spawn Point 168 - Burning Steppes'),(4268,1,'Spawn Point 169 - Burning Steppes'),(4269,1,'Spawn Point 170 - Burning Steppes'),(4270,1,'Spawn Point 171 - Burning Steppes'),(4271,1,'Spawn Point 172 - Burning Steppes'),(4272,1,'Spawn Point 173 - Burning Steppes'),(4273,1,'Spawn Point 174 - Burning Steppes'),(4274,1,'Spawn Point 175 - Burning Steppes'),(4275,1,'Spawn Point 176 - Burning Steppes'),(4276,1,'Spawn Point 177 - Burning Steppes'),(4277,1,'Spawn Point 178 - Burning Steppes'),(4278,1,'Spawn Point 179 - Burning Steppes'),(4279,1,'Spawn Point 180 - Burning Steppes'),(4280,1,'Spawn Point 181 - Burning Steppes'),(4281,1,'Spawn Point 182 - Burning Steppes'),(4282,1,'Spawn Point 183 - Burning Steppes'),(4283,1,'Spawn Point 184 - Burning Steppes'),(4284,1,'Spawn Point 185 - Burning Steppes'),(4285,1,'Spawn Point 186 - Burning Steppes'),(4286,1,'Spawn Point 187 - Burning Steppes'),(4287,1,'Spawn Point 188 - Burning Steppes'),(4288,1,'Spawn Point 189 - Burning Steppes'),(4289,1,'Spawn Point 190 - Burning Steppes'),(4290,1,'Spawn Point 191 - Burning Steppes'),(4291,1,'Spawn Point 192 - Burning Steppes'),(4292,1,'Spawn Point 193 - Burning Steppes'),(4293,1,'Spawn Point 194 - Burning Steppes'),(4294,1,'Spawn Point 195 - Burning Steppes'),(4295,1,'Spawn Point 196 - Burning Steppes'),(4296,1,'Spawn Point 197 - Burning Steppes'),(4297,1,'Spawn Point 198 - Burning Steppes'),(4298,1,'Spawn Point 199 - Burning Steppes'),(4299,1,'Spawn Point 200 - Burning Steppes'),(4300,1,'Spawn Point 201 - Burning Steppes'),(4301,1,'Spawn Point 202 - Burning Steppes'),(4302,1,'Spawn Point 203 - Burning Steppes'),(4303,1,'Spawn Point 204 - Burning Steppes'),(4304,1,'Spawn Point 205 - Burning Steppes'),(4305,1,'Spawn Point 206 - Burning Steppes'),(4306,1,'Spawn Point 207 - Burning Steppes'),(4307,1,'Spawn Point 208 - Burning Steppes'),(4308,1,'Spawn Point 209 - Burning Steppes'),(4309,1,'Spawn Point 210 - Burning Steppes'),(4310,1,'Spawn Point 211 - Burning Steppes'),(4311,1,'Spawn Point 212 - Burning Steppes'),(4312,1,'Spawn Point 213 - Burning Steppes'),(4313,1,'Spawn Point 214 - Burning Steppes'),(4314,1,'Spawn Point 215 - Burning Steppes'),(4315,1,'Spawn Point 216 - Burning Steppes'),(4316,1,'Spawn Point 217 - Burning Steppes'),(4317,1,'Spawn Point 218 - Burning Steppes'),(4318,1,'Spawn Point 219 - Burning Steppes'),(4319,1,'Spawn Point 220 - Burning Steppes'),(4320,1,'Spawn Point 221 - Burning Steppes'),(4321,1,'Spawn Point 222 - Burning Steppes'),(4322,1,'Spawn Point 223 - Burning Steppes'),(4323,1,'Spawn Point 224 - Burning Steppes'),(4324,1,'Spawn Point 225 - Burning Steppes'),(4325,1,'Spawn Point 226 - Burning Steppes'),(4326,1,'Spawn Point 227 - Burning Steppes'),(4327,1,'Spawn Point 228 - Burning Steppes'),(4328,1,'Spawn Point 229 - Burning Steppes'),(4329,1,'Spawn Point 230 - Burning Steppes'),(4330,1,'Spawn Point 231 - Burning Steppes'),(4331,1,'Spawn Point 232 - Burning Steppes'),(4332,1,'Spawn Point 233 - Burning Steppes'),(4333,1,'Spawn Point 234 - Burning Steppes'),(4334,1,'Spawn Point 235 - Burning Steppes'),(4335,1,'Spawn Point 236 - Burning Steppes'),(4336,1,'Spawn Point 237 - Burning Steppes'),(4337,1,'Spawn Point 238 - Burning Steppes'),(4338,1,'Spawn Point 239 - Burning Steppes'),(4339,1,'Spawn Point 240 - Burning Steppes'),(4400,1,'Spawn Point 1 - Duskwood'),(4401,1,'Spawn Point 2 - Duskwood'),(4402,1,'Spawn Point 3 - Duskwood'),(4403,1,'Spawn Point 4 - Duskwood'),(4404,1,'Spawn Point 5 - Duskwood'),(4405,1,'Spawn Point 6 - Duskwood'),(4406,1,'Spawn Point 7 - Duskwood'),(4407,1,'Spawn Point 8 - Duskwood'),(4408,1,'Spawn Point 9 - Duskwood'),(4409,1,'Spawn Point 10 - Duskwood'),(4410,1,'Spawn Point 11 - Duskwood'),(4411,1,'Spawn Point 12 - Duskwood'),(4412,1,'Spawn Point 13 - Duskwood'),(4413,1,'Spawn Point 14 - Duskwood'),(4414,1,'Spawn Point 15 - Duskwood'),(4415,1,'Spawn Point 16 - Duskwood'),(4416,1,'Spawn Point 17 - Duskwood'),(4417,1,'Spawn Point 18 - Duskwood'),(4418,1,'Spawn Point 19 - Duskwood'),(4419,1,'Spawn Point 20 - Duskwood'),(4420,1,'Spawn Point 21 - Duskwood'),(4421,1,'Spawn Point 22 - Duskwood'),(4422,1,'Spawn Point 23 - Duskwood'),(4423,1,'Spawn Point 24 - Duskwood'),(4424,1,'Spawn Point 25 - Duskwood'),(4425,1,'Spawn Point 26 - Duskwood'),(4426,1,'Spawn Point 27 - Duskwood'),(4427,1,'Spawn Point 28 - Duskwood'),(4428,1,'Spawn Point 29 - Duskwood'),(4429,1,'Spawn Point 30 - Duskwood'),(4430,1,'Spawn Point 31 - Duskwood'),(4431,1,'Spawn Point 32 - Duskwood'),(4432,1,'Spawn Point 33 - Duskwood'),(4433,1,'Spawn Point 34 - Duskwood'),(4434,1,'Spawn Point 35 - Duskwood'),(4435,1,'Spawn Point 36 - Duskwood'),(4436,1,'Spawn Point 37 - Duskwood'),(4437,1,'Spawn Point 38 - Duskwood'),(4438,1,'Spawn Point 39 - Duskwood'),(4439,1,'Spawn Point 40 - Duskwood'),(4440,1,'Spawn Point 41 - Duskwood'),(4441,1,'Spawn Point 42 - Duskwood'),(4442,1,'Spawn Point 43 - Duskwood'),(4443,1,'Spawn Point 44 - Duskwood'),(4444,1,'Spawn Point 45 - Duskwood'),(4445,1,'Spawn Point 46 - Duskwood'),(4446,1,'Spawn Point 47 - Duskwood'),(4447,1,'Spawn Point 48 - Duskwood'),(4448,1,'Spawn Point 49 - Duskwood'),(4449,1,'Spawn Point 50 - Duskwood'),(4450,1,'Spawn Point 51 - Duskwood'),(4451,1,'Spawn Point 52 - Duskwood'),(4452,1,'Spawn Point 53 - Duskwood'),(4453,1,'Spawn Point 54 - Duskwood'),(4454,1,'Spawn Point 55 - Duskwood'),(4455,1,'Spawn Point 56 - Duskwood'),(4456,1,'Spawn Point 57 - Duskwood'),(4457,1,'Spawn Point 58 - Duskwood'),(4458,1,'Spawn Point 59 - Duskwood'),(4459,1,'Spawn Point 60 - Duskwood'),(4460,1,'Spawn Point 61 - Duskwood'),(4461,1,'Spawn Point 62 - Duskwood'),(4462,1,'Spawn Point 63 - Duskwood'),(4463,1,'Spawn Point 64 - Duskwood'),(4464,1,'Spawn Point 65 - Duskwood'),(4465,1,'Spawn Point 66 - Duskwood'),(4466,1,'Spawn Point 67 - Duskwood'),(4467,1,'Spawn Point 68 - Duskwood'),(4468,1,'Spawn Point 69 - Duskwood'),(4469,1,'Spawn Point 70 - Duskwood'),(4470,1,'Spawn Point 71 - Duskwood'),(4471,1,'Spawn Point 72 - Duskwood'),(4472,1,'Spawn Point 73 - Duskwood'),(4473,1,'Spawn Point 74 - Duskwood'),(4474,1,'Spawn Point 75 - Duskwood'),(4475,1,'Spawn Point 76 - Duskwood'),(4476,1,'Spawn Point 77 - Duskwood'),(4477,1,'Spawn Point 78 - Duskwood'),(4478,1,'Spawn Point 79 - Duskwood'),(4479,1,'Spawn Point 80 - Duskwood'),(4480,1,'Spawn Point 81 - Duskwood'),(4481,1,'Spawn Point 82 - Duskwood'),(4482,1,'Spawn Point 83 - Duskwood'),(4483,1,'Spawn Point 84 - Duskwood'),(4484,1,'Spawn Point 85 - Duskwood'),(4485,1,'Spawn Point 86 - Duskwood'),(4486,1,'Spawn Point 87 - Duskwood'),(4487,1,'Spawn Point 88 - Duskwood'),(4488,1,'Spawn Point 89 - Duskwood'),(4489,1,'Spawn Point 90 - Duskwood'),(4490,1,'Spawn Point 91 - Duskwood'),(4491,1,'Spawn Point 92 - Duskwood'),(4492,1,'Spawn Point 93 - Duskwood'),(4493,1,'Spawn Point 94 - Duskwood'),(4494,1,'Spawn Point 95 - Duskwood'),(4495,1,'Spawn Point 96 - Duskwood'),(4496,1,'Spawn Point 97 - Duskwood'),(4497,1,'Spawn Point 98 - Duskwood'),(4498,1,'Spawn Point 99 - Duskwood'),(4499,1,'Spawn Point 100 - Duskwood'),(4500,1,'Spawn Point 101 - Duskwood'),(4501,1,'Spawn Point 102 - Duskwood'),(4502,1,'Spawn Point 103 - Duskwood'),(4503,1,'Spawn Point 104 - Duskwood'),(4504,1,'Spawn Point 105 - Duskwood'),(4505,1,'Spawn Point 106 - Duskwood'),(4506,1,'Spawn Point 107 - Duskwood'),(4507,1,'Spawn Point 108 - Duskwood'),(4508,1,'Spawn Point 109 - Duskwood'),(4509,1,'Spawn Point 110 - Duskwood'),(4510,1,'Spawn Point 111 - Duskwood'),(4511,1,'Spawn Point 112 - Duskwood'),(4512,1,'Spawn Point 113 - Duskwood'),(4600,1,'Spawn Point 1 - Eastern Plaguelands'),(4601,1,'Spawn Point 2 - Eastern Plaguelands'),(4602,1,'Spawn Point 3 - Eastern Plaguelands'),(4603,1,'Spawn Point 4 - Eastern Plaguelands'),(4604,1,'Spawn Point 5 - Eastern Plaguelands'),(4605,1,'Spawn Point 6 - Eastern Plaguelands'),(4606,1,'Spawn Point 7 - Eastern Plaguelands'),(4607,1,'Spawn Point 8 - Eastern Plaguelands'),(4608,1,'Spawn Point 9 - Eastern Plaguelands'),(4609,1,'Spawn Point 10 - Eastern Plaguelands'),(4610,1,'Spawn Point 11 - Eastern Plaguelands'),(4611,1,'Spawn Point 12 - Eastern Plaguelands'),(4612,1,'Spawn Point 13 - Eastern Plaguelands'),(4613,1,'Spawn Point 14 - Eastern Plaguelands'),(4614,1,'Spawn Point 15 - Eastern Plaguelands'),(4615,1,'Spawn Point 16 - Eastern Plaguelands'),(4616,1,'Spawn Point 17 - Eastern Plaguelands'),(4617,1,'Spawn Point 18 - Eastern Plaguelands'),(4618,1,'Spawn Point 19 - Eastern Plaguelands'),(4619,1,'Spawn Point 20 - Eastern Plaguelands'),(4620,1,'Spawn Point 21 - Eastern Plaguelands'),(4621,1,'Spawn Point 22 - Eastern Plaguelands'),(4622,1,'Spawn Point 23 - Eastern Plaguelands'),(4623,1,'Spawn Point 24 - Eastern Plaguelands'),(4624,1,'Spawn Point 25 - Eastern Plaguelands'),(4625,1,'Spawn Point 26 - Eastern Plaguelands'),(4626,1,'Spawn Point 27 - Eastern Plaguelands'),(4627,1,'Spawn Point 28 - Eastern Plaguelands'),(4628,1,'Spawn Point 29 - Eastern Plaguelands'),(4629,1,'Spawn Point 30 - Eastern Plaguelands'),(4630,1,'Spawn Point 31 - Eastern Plaguelands'),(4631,1,'Spawn Point 32 - Eastern Plaguelands'),(4632,1,'Spawn Point 33 - Eastern Plaguelands'),(4633,1,'Spawn Point 34 - Eastern Plaguelands'),(4634,1,'Spawn Point 35 - Eastern Plaguelands'),(4635,1,'Spawn Point 36 - Eastern Plaguelands'),(4636,1,'Spawn Point 37 - Eastern Plaguelands'),(4637,1,'Spawn Point 38 - Eastern Plaguelands'),(4638,1,'Spawn Point 39 - Eastern Plaguelands'),(4639,1,'Spawn Point 40 - Eastern Plaguelands'),(4640,1,'Spawn Point 41 - Eastern Plaguelands'),(4641,1,'Spawn Point 42 - Eastern Plaguelands'),(4642,1,'Spawn Point 43 - Eastern Plaguelands'),(4643,1,'Spawn Point 44 - Eastern Plaguelands'),(4644,1,'Spawn Point 45 - Eastern Plaguelands'),(4645,1,'Spawn Point 46 - Eastern Plaguelands'),(4646,1,'Spawn Point 47 - Eastern Plaguelands'),(4647,1,'Spawn Point 48 - Eastern Plaguelands'),(4648,1,'Spawn Point 49 - Eastern Plaguelands'),(4649,1,'Spawn Point 50 - Eastern Plaguelands'),(4650,1,'Spawn Point 51 - Eastern Plaguelands'),(4651,1,'Spawn Point 52 - Eastern Plaguelands'),(4652,1,'Spawn Point 53 - Eastern Plaguelands'),(4653,1,'Spawn Point 54 - Eastern Plaguelands'),(4654,1,'Spawn Point 55 - Eastern Plaguelands'),(4655,1,'Spawn Point 56 - Eastern Plaguelands'),(4656,1,'Spawn Point 57 - Eastern Plaguelands'),(4657,1,'Spawn Point 58 - Eastern Plaguelands'),(4658,1,'Spawn Point 59 - Eastern Plaguelands'),(4659,1,'Spawn Point 60 - Eastern Plaguelands'),(4660,1,'Spawn Point 61 - Eastern Plaguelands'),(4661,1,'Spawn Point 62 - Eastern Plaguelands'),(4662,1,'Spawn Point 63 - Eastern Plaguelands'),(4663,1,'Spawn Point 64 - Eastern Plaguelands'),(4664,1,'Spawn Point 65 - Eastern Plaguelands'),(4665,1,'Spawn Point 66 - Eastern Plaguelands'),(4666,1,'Spawn Point 67 - Eastern Plaguelands'),(4667,1,'Spawn Point 68 - Eastern Plaguelands'),(4668,1,'Spawn Point 69 - Eastern Plaguelands'),(4669,1,'Spawn Point 70 - Eastern Plaguelands'),(4670,1,'Spawn Point 71 - Eastern Plaguelands'),(4671,1,'Spawn Point 72 - Eastern Plaguelands'),(4672,1,'Spawn Point 73 - Eastern Plaguelands'),(4673,1,'Spawn Point 74 - Eastern Plaguelands'),(4674,1,'Spawn Point 75 - Eastern Plaguelands'),(4675,1,'Spawn Point 76 - Eastern Plaguelands'),(4676,1,'Spawn Point 77 - Eastern Plaguelands'),(4700,1,'Spawn Point 1 - Ghostlands'),(4701,1,'Spawn Point 2 - Ghostlands'),(4702,1,'Spawn Point 3 - Ghostlands'),(4703,1,'Spawn Point 4 - Ghostlands'),(4704,1,'Spawn Point 5 - Ghostlands'),(4705,1,'Spawn Point 6 - Ghostlands'),(4706,1,'Spawn Point 7 - Ghostlands'),(4707,1,'Spawn Point 8 - Ghostlands'),(4708,1,'Spawn Point 9 - Ghostlands'),(4709,1,'Spawn Point 10 - Ghostlands'),(4710,1,'Spawn Point 11 - Ghostlands'),(4711,1,'Spawn Point 12 - Ghostlands'),(4712,1,'Spawn Point 13 - Ghostlands'),(4713,1,'Spawn Point 14 - Ghostlands'),(4714,1,'Spawn Point 15 - Ghostlands'),(4715,1,'Spawn Point 16 - Ghostlands'),(4716,1,'Spawn Point 17 - Ghostlands'),(4717,1,'Spawn Point 18 - Ghostlands'),(4718,1,'Spawn Point 19 - Ghostlands'),(4719,1,'Spawn Point 20 - Ghostlands'),(4720,1,'Spawn Point 21 - Ghostlands'),(4721,1,'Spawn Point 22 - Ghostlands'),(4722,1,'Spawn Point 23 - Ghostlands'),(4723,1,'Spawn Point 24 - Ghostlands'),(4724,1,'Spawn Point 25 - Ghostlands'),(4725,1,'Spawn Point 26 - Ghostlands'),(4726,1,'Spawn Point 27 - Ghostlands'),(4727,1,'Spawn Point 28 - Ghostlands'),(4728,1,'Spawn Point 29 - Ghostlands'),(4729,1,'Spawn Point 30 - Ghostlands'),(4730,1,'Spawn Point 31 - Ghostlands'),(4731,1,'Spawn Point 32 - Ghostlands'),(4732,1,'Spawn Point 33 - Ghostlands'),(4733,1,'Spawn Point 34 - Ghostlands'),(4734,1,'Spawn Point 35 - Ghostlands'),(4735,1,'Spawn Point 36 - Ghostlands'),(4736,1,'Spawn Point 37 - Ghostlands'),(4737,1,'Spawn Point 38 - Ghostlands'),(4738,1,'Spawn Point 39 - Ghostlands'),(4739,1,'Spawn Point 40 - Ghostlands'),(4750,1,'Spawn Point 1 - Hillsbrad Foothills'),(4751,1,'Spawn Point 2 - Hillsbrad Foothills'),(4752,1,'Spawn Point 3 - Hillsbrad Foothills'),(4753,1,'Spawn Point 4 - Hillsbrad Foothills'),(4754,1,'Spawn Point 5 - Hillsbrad Foothills'),(4755,1,'Spawn Point 6 - Hillsbrad Foothills'),(4756,1,'Spawn Point 7 - Hillsbrad Foothills'),(4757,1,'Spawn Point 8 - Hillsbrad Foothills'),(4758,1,'Spawn Point 9 - Hillsbrad Foothills'),(4759,1,'Spawn Point 10 - Hillsbrad Foothills'),(4760,1,'Spawn Point 11 - Hillsbrad Foothills'),(4761,1,'Spawn Point 12 - Hillsbrad Foothills'),(4762,1,'Spawn Point 13 - Hillsbrad Foothills'),(4763,1,'Spawn Point 14 - Hillsbrad Foothills'),(4764,1,'Spawn Point 15 - Hillsbrad Foothills'),(4765,1,'Spawn Point 16 - Hillsbrad Foothills'),(4766,1,'Spawn Point 17 - Hillsbrad Foothills'),(4767,1,'Spawn Point 18 - Hillsbrad Foothills'),(4768,1,'Spawn Point 19 - Hillsbrad Foothills'),(4769,1,'Spawn Point 20 - Hillsbrad Foothills'),(4770,1,'Spawn Point 21 - Hillsbrad Foothills'),(4771,1,'Spawn Point 22 - Hillsbrad Foothills'),(4772,1,'Spawn Point 23 - Hillsbrad Foothills'),(4773,1,'Spawn Point 24 - Hillsbrad Foothills'),(4774,1,'Spawn Point 25 - Hillsbrad Foothills'),(4775,1,'Spawn Point 26 - Hillsbrad Foothills'),(4776,1,'Spawn Point 27 - Hillsbrad Foothills'),(4777,1,'Spawn Point 28 - Hillsbrad Foothills'),(4778,1,'Spawn Point 29 - Hillsbrad Foothills'),(4779,1,'Spawn Point 30 - Hillsbrad Foothills'),(4780,1,'Spawn Point 31 - Hillsbrad Foothills'),(4781,1,'Spawn Point 32 - Hillsbrad Foothills'),(4782,1,'Spawn Point 33 - Hillsbrad Foothills'),(4783,1,'Spawn Point 34 - Hillsbrad Foothills'),(4784,1,'Spawn Point 35 - Hillsbrad Foothills'),(4785,1,'Spawn Point 36 - Hillsbrad Foothills'),(4786,1,'Spawn Point 37 - Hillsbrad Foothills'),(4787,1,'Spawn Point 38 - Hillsbrad Foothills'),(4788,1,'Spawn Point 39 - Hillsbrad Foothills'),(4789,1,'Spawn Point 40 - Hillsbrad Foothills'),(4790,1,'Spawn Point 41 - Hillsbrad Foothills'),(4791,1,'Spawn Point 42 - Hillsbrad Foothills'),(4792,1,'Spawn Point 43 - Hillsbrad Foothills'),(4793,1,'Spawn Point 44 - Hillsbrad Foothills'),(4794,1,'Spawn Point 45 - Hillsbrad Foothills'),(4795,1,'Spawn Point 46 - Hillsbrad Foothills'),(4796,1,'Spawn Point 47 - Hillsbrad Foothills'),(4797,1,'Spawn Point 48 - Hillsbrad Foothills'),(4798,1,'Spawn Point 49 - Hillsbrad Foothills'),(4799,1,'Spawn Point 50 - Hillsbrad Foothills'),(4800,1,'Spawn Point 51 - Hillsbrad Foothills'),(4801,1,'Spawn Point 52 - Hillsbrad Foothills'),(4802,1,'Spawn Point 53 - Hillsbrad Foothills'),(4803,1,'Spawn Point 54 - Hillsbrad Foothills'),(4804,1,'Spawn Point 55 - Hillsbrad Foothills'),(4805,1,'Spawn Point 56 - Hillsbrad Foothills'),(4806,1,'Spawn Point 57 - Hillsbrad Foothills'),(4807,1,'Spawn Point 58 - Hillsbrad Foothills'),(4808,1,'Spawn Point 59 - Hillsbrad Foothills'),(4809,1,'Spawn Point 60 - Hillsbrad Foothills'),(4810,1,'Spawn Point 61 - Hillsbrad Foothills'),(4811,1,'Spawn Point 62 - Hillsbrad Foothills'),(4812,1,'Spawn Point 63 - Hillsbrad Foothills'),(4813,1,'Spawn Point 64 - Hillsbrad Foothills'),(4814,1,'Spawn Point 65 - Hillsbrad Foothills'),(4815,1,'Spawn Point 66 - Hillsbrad Foothills'),(4816,1,'Spawn Point 67 - Hillsbrad Foothills'),(4817,1,'Spawn Point 68 - Hillsbrad Foothills'),(4818,1,'Spawn Point 69 - Hillsbrad Foothills'),(4819,1,'Spawn Point 70 - Hillsbrad Foothills'),(4820,1,'Spawn Point 71 - Hillsbrad Foothills'),(4821,1,'Spawn Point 72 - Hillsbrad Foothills'),(4822,1,'Spawn Point 73 - Hillsbrad Foothills'),(4823,1,'Spawn Point 74 - Hillsbrad Foothills'),(4824,1,'Spawn Point 75 - Hillsbrad Foothills'),(4825,1,'Spawn Point 76 - Hillsbrad Foothills'),(4826,1,'Spawn Point 77 - Hillsbrad Foothills'),(4827,1,'Spawn Point 78 - Hillsbrad Foothills'),(4828,1,'Spawn Point 79 - Hillsbrad Foothills'),(4829,1,'Spawn Point 80 - Hillsbrad Foothills'),(4830,1,'Spawn Point 81 - Hillsbrad Foothills'),(4831,1,'Spawn Point 82 - Hillsbrad Foothills'),(4832,1,'Spawn Point 83 - Hillsbrad Foothills'),(4833,1,'Spawn Point 84 - Hillsbrad Foothills'),(4834,1,'Spawn Point 85 - Hillsbrad Foothills'),(4835,1,'Spawn Point 86 - Hillsbrad Foothills'),(4836,1,'Spawn Point 87 - Hillsbrad Foothills'),(4837,1,'Spawn Point 88 - Hillsbrad Foothills'),(4838,1,'Spawn Point 89 - Hillsbrad Foothills'),(4839,1,'Spawn Point 90 - Hillsbrad Foothills'),(4840,1,'Spawn Point 91 - Hillsbrad Foothills'),(4841,1,'Spawn Point 92 - Hillsbrad Foothills'),(4842,1,'Spawn Point 93 - Hillsbrad Foothills'),(4843,1,'Spawn Point 94 - Hillsbrad Foothills'),(4844,1,'Spawn Point 95 - Hillsbrad Foothills'),(4845,1,'Spawn Point 96 - Hillsbrad Foothills'),(4846,1,'Spawn Point 97 - Hillsbrad Foothills'),(4847,1,'Spawn Point 98 - Hillsbrad Foothills'),(4870,1,'Spawn Point 1 - Isle of Quel\'Danas'),(4871,1,'Spawn Point 2 - Isle of Quel\'Danas'),(4872,1,'Spawn Point 3 - Isle of Quel\'Danas'),(4873,1,'Spawn Point 4 - Isle of Quel\'Danas'),(4874,1,'Spawn Point 5 - Isle of Quel\'Danas'),(4875,1,'Spawn Point 6 - Isle of Quel\'Danas'),(4880,1,'Spawn Point 1 - Loch Modan'),(4881,1,'Spawn Point 2 - Loch Modan'),(4882,1,'Spawn Point 3 - Loch Modan'),(4883,1,'Spawn Point 4 - Loch Modan'),(4884,1,'Spawn Point 5 - Loch Modan'),(4885,1,'Spawn Point 6 - Loch Modan'),(4886,1,'Spawn Point 7 - Loch Modan'),(4887,1,'Spawn Point 8 - Loch Modan'),(4888,1,'Spawn Point 9 - Loch Modan'),(4889,1,'Spawn Point 10 - Loch Modan'),(4890,1,'Spawn Point 11 - Loch Modan'),(4891,1,'Spawn Point 12 - Loch Modan'),(4892,1,'Spawn Point 13 - Loch Modan'),(4893,1,'Spawn Point 14 - Loch Modan'),(4894,1,'Spawn Point 15 - Loch Modan'),(4895,1,'Spawn Point 16 - Loch Modan'),(4896,1,'Spawn Point 17 - Loch Modan'),(4897,1,'Spawn Point 18 - Loch Modan'),(4898,1,'Spawn Point 19 - Loch Modan'),(4899,1,'Spawn Point 20 - Loch Modan'),(4900,1,'Spawn Point 21 - Loch Modan'),(4901,1,'Spawn Point 22 - Loch Modan'),(4902,1,'Spawn Point 23 - Loch Modan'),(4903,1,'Spawn Point 24 - Loch Modan'),(4904,1,'Spawn Point 25 - Loch Modan'),(4905,1,'Spawn Point 26 - Loch Modan'),(4906,1,'Spawn Point 27 - Loch Modan'),(4907,1,'Spawn Point 28 - Loch Modan'),(4908,1,'Spawn Point 29 - Loch Modan'),(4909,1,'Spawn Point 30 - Loch Modan'),(4910,1,'Spawn Point 31 - Loch Modan'),(4911,1,'Spawn Point 32 - Loch Modan'),(4912,1,'Spawn Point 33 - Loch Modan'),(4913,1,'Spawn Point 34 - Loch Modan'),(4914,1,'Spawn Point 35 - Loch Modan'),(4915,1,'Spawn Point 36 - Loch Modan'),(4916,1,'Spawn Point 37 - Loch Modan'),(4917,1,'Spawn Point 38 - Loch Modan'),(4918,1,'Spawn Point 39 - Loch Modan'),(4919,1,'Spawn Point 40 - Loch Modan'),(4920,1,'Spawn Point 41 - Loch Modan'),(4921,1,'Spawn Point 42 - Loch Modan'),(4922,1,'Spawn Point 43 - Loch Modan'),(4923,1,'Spawn Point 44 - Loch Modan'),(4924,1,'Spawn Point 45 - Loch Modan'),(4925,1,'Spawn Point 46 - Loch Modan'),(4926,1,'Spawn Point 47 - Loch Modan'),(4927,1,'Spawn Point 48 - Loch Modan'),(4928,1,'Spawn Point 49 - Loch Modan'),(4929,1,'Spawn Point 50 - Loch Modan'),(4930,1,'Spawn Point 51 - Loch Modan'),(4931,1,'Spawn Point 52 - Loch Modan'),(4932,1,'Spawn Point 53 - Loch Modan'),(4933,1,'Spawn Point 54 - Loch Modan'),(4934,1,'Spawn Point 55 - Loch Modan'),(4935,1,'Spawn Point 56 - Loch Modan'),(4936,1,'Spawn Point 57 - Loch Modan'),(4937,1,'Spawn Point 58 - Loch Modan'),(4938,1,'Spawn Point 59 - Loch Modan'),(4939,1,'Spawn Point 60 - Loch Modan'),(4940,1,'Spawn Point 61 - Loch Modan'),(4941,1,'Spawn Point 62 - Loch Modan'),(4942,1,'Spawn Point 63 - Loch Modan'),(4943,1,'Spawn Point 64 - Loch Modan'),(4944,1,'Spawn Point 65 - Loch Modan'),(4945,1,'Spawn Point 66 - Loch Modan'),(4946,1,'Spawn Point 67 - Loch Modan'),(4947,1,'Spawn Point 68 - Loch Modan'),(4948,1,'Spawn Point 69 - Loch Modan'),(4949,1,'Spawn Point 70 - Loch Modan'),(4950,1,'Spawn Point 71 - Loch Modan'),(4951,1,'Spawn Point 72 - Loch Modan'),(4952,1,'Spawn Point 73 - Loch Modan'),(4953,1,'Spawn Point 74 - Loch Modan'),(4954,1,'Spawn Point 75 - Loch Modan'),(4955,1,'Spawn Point 76 - Loch Modan'),(4956,1,'Spawn Point 77 - Loch Modan'),(4957,1,'Spawn Point 78 - Loch Modan'),(4958,1,'Spawn Point 79 - Loch Modan'),(4959,1,'Spawn Point 80 - Loch Modan'),(4960,1,'Spawn Point 81 - Loch Modan'),(4961,1,'Spawn Point 82 - Loch Modan'),(4962,1,'Spawn Point 83 - Loch Modan'),(4963,1,'Spawn Point 84 - Loch Modan'),(4964,1,'Spawn Point 85 - Loch Modan'),(4965,1,'Spawn Point 86 - Loch Modan'),(4966,1,'Spawn Point 87 - Loch Modan'),(4967,1,'Spawn Point 88 - Loch Modan'),(4968,1,'Spawn Point 89 - Loch Modan'),(4969,1,'Spawn Point 90 - Loch Modan'),(4970,1,'Spawn Point 91 - Loch Modan'),(4971,1,'Spawn Point 92 - Loch Modan'),(4972,1,'Spawn Point 93 - Loch Modan'),(4973,1,'Spawn Point 94 - Loch Modan'),(4974,1,'Spawn Point 95 - Loch Modan'),(4975,1,'Spawn Point 96 - Loch Modan'),(4976,1,'Spawn Point 97 - Loch Modan'),(4977,1,'Spawn Point 98 - Loch Modan'),(4978,1,'Spawn Point 99 - Loch Modan'),(4979,1,'Spawn Point 100 - Loch Modan'),(4980,1,'Spawn Point 101 - Loch Modan'),(4981,1,'Spawn Point 102 - Loch Modan'),(4982,1,'Spawn Point 103 - Loch Modan'),(4983,1,'Spawn Point 104 - Loch Modan'),(4984,1,'Spawn Point 105 - Loch Modan'),(4985,1,'Spawn Point 106 - Loch Modan'),(4986,1,'Spawn Point 107 - Loch Modan'),(4987,1,'Spawn Point 108 - Loch Modan'),(4988,1,'Spawn Point 109 - Loch Modan'),(4989,1,'Spawn Point 110 - Loch Modan'),(4990,1,'Spawn Point 111 - Loch Modan'),(4991,1,'Spawn Point 112 - Loch Modan'),(4992,1,'Spawn Point 113 - Loch Modan'),(1500,1,'Auchenai Crypts - Group 1'),(1501,1,'Auchenai Crypts - Group 2'),(1502,1,'Auchenai Crypts - Group 3'),(1503,1,'Auchenai Crypts - Group 4'),(1504,1,'Auchenai Crypts - Group 5'),(1505,1,'Auchenai Crypts - Group 6'),(1506,1,'Auchenai Crypts - Group 7'),(1507,1,'Auchenai Crypts - Group 8'),(1508,1,'Auchenai Crypts - Group 9'),(1509,1,'Auchenai Crypts - Group 10'),(60000,1,'Gondria (33776)'),(60001,1,'loquenahak (32517)'),(50000,5,'Raised Mud type 10 (190779)'),(50001,1,'Raised Mud type 3 (190778)'),(50002,15,'Tin Vein - Westfall'),(60002,1,'Vyragosa (32630)'),(5292,1,'Sholazar Basin mineral, node 1'),(5293,1,'Sholazar Basin mineral, node 2'),(5294,1,'Sholazar Basin mineral, node 3'),(5295,1,'Sholazar Basin mineral, node 4'),(5296,1,'Sholazar Basin mineral, node 5'),(5297,1,'Sholazar Basin mineral, node 6'),(5298,1,'Sholazar Basin mineral, node 7'),(5299,1,'Sholazar Basin mineral, node 8'),(5300,1,'Sholazar Basin mineral, node 9'),(5301,1,'Sholazar Basin mineral, node 10'),(5302,1,'Sholazar Basin mineral, node 11'),(5303,1,'Sholazar Basin mineral, node 12'),(5304,1,'Sholazar Basin mineral, node 13'),(5305,1,'Sholazar Basin mineral, node 14'),(5306,1,'Sholazar Basin mineral, node 15'),(5307,1,'Sholazar Basin mineral, node 16'),(5308,1,'Sholazar Basin mineral, node 17'),(5309,1,'Sholazar Basin mineral, node 18'),(5310,1,'Sholazar Basin mineral, node 19'),(5311,1,'Sholazar Basin mineral, node 20'),(5312,1,'Sholazar Basin mineral, node 21'),(5313,1,'Sholazar Basin mineral, node 22'),(5314,1,'Sholazar Basin mineral, node 23'),(5315,1,'Sholazar Basin mineral, node 24'),(5316,1,'Sholazar Basin mineral, node 25'),(5317,1,'Sholazar Basin mineral, node 26'),(5318,1,'Sholazar Basin mineral, node 27'),(5319,1,'Sholazar Basin mineral, node 28'),(5320,1,'Sholazar Basin mineral, node 29'),(5321,1,'Sholazar Basin mineral, node 30'),(5322,1,'Sholazar Basin mineral, node 31'),(5323,1,'Sholazar Basin mineral, node 32'),(5324,1,'Sholazar Basin mineral, node 33'),(5325,1,'Sholazar Basin mineral, node 34'),(5326,1,'Sholazar Basin mineral, node 35'),(5327,1,'Sholazar Basin mineral, node 36'),(5328,1,'Sholazar Basin mineral, node 37'),(5329,1,'Sholazar Basin mineral, node 38'),(5330,1,'Sholazar Basin mineral, node 39'),(5331,1,'Sholazar Basin mineral, node 40'),(5332,1,'Sholazar Basin mineral, node 41'),(5333,1,'Sholazar Basin mineral, node 42'),(5334,1,'Sholazar Basin mineral, node 43'),(5335,1,'Sholazar Basin mineral, node 44'),(5336,1,'Sholazar Basin mineral, node 45'),(5337,1,'Sholazar Basin mineral, node 46'),(5338,1,'Sholazar Basin mineral, node 47'),(5339,1,'Sholazar Basin mineral, node 48'),(5340,1,'Sholazar Basin mineral, node 49'),(5341,1,'Sholazar Basin mineral, node 50'),(5342,1,'Sholazar Basin mineral, node 51'),(5343,1,'Sholazar Basin mineral, node 52'),(5344,1,'Sholazar Basin mineral, node 53'),(5345,1,'Sholazar Basin mineral, node 54'),(5346,1,'Sholazar Basin mineral, node 55'),(5347,1,'Sholazar Basin mineral, node 56'),(5348,1,'Sholazar Basin mineral, node 57'),(5349,1,'Sholazar Basin mineral, node 58'),(5350,1,'Sholazar Basin mineral, node 59'),(5351,1,'Sholazar Basin mineral, node 60'),(5352,1,'Sholazar Basin mineral, node 61'),(5353,1,'Sholazar Basin mineral, node 62'),(5354,1,'Sholazar Basin mineral, node 63'),(5355,1,'Sholazar Basin mineral, node 64'),(5356,1,'Sholazar Basin mineral, node 65'),(5357,1,'Sholazar Basin mineral, node 66'),(5358,1,'Sholazar Basin mineral, node 67'),(5359,1,'Sholazar Basin mineral, node 68'),(5360,1,'Sholazar Basin mineral, node 69'),(5361,1,'Sholazar Basin mineral, node 70'),(5362,1,'Sholazar Basin mineral, node 71'),(5363,1,'Sholazar Basin mineral, node 72'),(5364,1,'Sholazar Basin mineral, node 73'),(5365,1,'Sholazar Basin mineral, node 74'),(5366,1,'Sholazar Basin mineral, node 75'),(5367,1,'Sholazar Basin mineral, node 76'),(5368,1,'Sholazar Basin mineral, node 77'),(5369,1,'Sholazar Basin mineral, node 78'),(5370,1,'Sholazar Basin mineral, node 79'),(5371,1,'Sholazar Basin mineral, node 80'),(5372,1,'Sholazar Basin mineral, node 81'),(5373,1,'Sholazar Basin mineral, node 82'),(5374,1,'Sholazar Basin mineral, node 83'),(5375,1,'Sholazar Basin mineral, node 84'),(899,20,'MASTER Minerals Sholazar Basin zone 3711'),(5376,1,'Storm Peaks mineral, node 1'),(5377,1,'Storm Peaks mineral, node 2'),(5378,1,'Storm Peaks mineral, node 3'),(5379,1,'Storm Peaks mineral, node 4'),(5380,1,'Storm Peaks mineral, node 5'),(5381,1,'Storm Peaks mineral, node 6'),(5382,1,'Storm Peaks mineral, node 7'),(5383,1,'Storm Peaks mineral, node 8'),(5384,1,'Storm Peaks mineral, node 9'),(5385,1,'Storm Peaks mineral, node 10'),(5386,1,'Storm Peaks mineral, node 11'),(5387,1,'Storm Peaks mineral, node 12'),(5388,1,'Storm Peaks mineral, node 13'),(5389,1,'Storm Peaks mineral, node 14'),(5390,1,'Storm Peaks mineral, node 15'),(5391,1,'Storm Peaks mineral, node 16'),(5392,1,'Storm Peaks mineral, node 17'),(5393,1,'Storm Peaks mineral, node 18'),(5394,1,'Storm Peaks mineral, node 19'),(5395,1,'Storm Peaks mineral, node 20'),(5396,1,'Storm Peaks mineral, node 21'),(5397,1,'Storm Peaks mineral, node 22'),(5398,1,'Storm Peaks mineral, node 23'),(5399,1,'Storm Peaks mineral, node 24'),(5400,1,'Storm Peaks mineral, node 25'),(5401,1,'Storm Peaks mineral, node 26'),(5402,1,'Storm Peaks mineral, node 27'),(5403,1,'Storm Peaks mineral, node 28'),(5404,1,'Storm Peaks mineral, node 29'),(5405,1,'Storm Peaks mineral, node 30'),(5406,1,'Storm Peaks mineral, node 31'),(5407,1,'Storm Peaks mineral, node 32'),(5408,1,'Storm Peaks mineral, node 33'),(5409,1,'Storm Peaks mineral, node 34'),(5410,1,'Storm Peaks mineral, node 35'),(5411,1,'Storm Peaks mineral, node 36'),(5412,1,'Storm Peaks mineral, node 37'),(5413,1,'Storm Peaks mineral, node 38'),(5414,1,'Storm Peaks mineral, node 39'),(5415,1,'Storm Peaks mineral, node 40'),(5416,1,'Storm Peaks mineral, node 41'),(5417,1,'Storm Peaks mineral, node 42'),(5418,1,'Storm Peaks mineral, node 43'),(5419,1,'Storm Peaks mineral, node 44'),(5420,1,'Storm Peaks mineral, node 45'),(5421,1,'Storm Peaks mineral, node 46'),(5422,1,'Storm Peaks mineral, node 47'),(5423,1,'Storm Peaks mineral, node 48'),(5424,1,'Storm Peaks mineral, node 49'),(5425,1,'Storm Peaks mineral, node 50'),(5426,1,'Storm Peaks mineral, node 51'),(5427,1,'Storm Peaks mineral, node 52'),(5428,1,'Storm Peaks mineral, node 53'),(5429,1,'Storm Peaks mineral, node 54'),(5430,1,'Storm Peaks mineral, node 55'),(5431,1,'Storm Peaks mineral, node 56'),(5432,1,'Storm Peaks mineral, node 57'),(5433,1,'Storm Peaks mineral, node 58'),(5434,1,'Storm Peaks mineral, node 59'),(5435,1,'Storm Peaks mineral, node 60'),(5436,1,'Storm Peaks mineral, node 61'),(5437,1,'Storm Peaks mineral, node 62'),(5438,1,'Storm Peaks mineral, node 63'),(5439,1,'Storm Peaks mineral, node 64'),(5440,1,'Storm Peaks mineral, node 65'),(5441,1,'Storm Peaks mineral, node 66'),(5442,1,'Storm Peaks mineral, node 67'),(5443,1,'Storm Peaks mineral, node 68'),(5444,1,'Storm Peaks mineral, node 69'),(5445,1,'Storm Peaks mineral, node 70'),(5446,1,'Storm Peaks mineral, node 71'),(5447,1,'Storm Peaks mineral, node 72'),(898,20,'MASTER Minerals Storm Peaks zone 67'),(5448,1,'Icecrown mineral, node 1'),(5449,1,'Icecrown mineral, node 2'),(5450,1,'Icecrown mineral, node 3'),(5451,1,'Icecrown mineral, node 4'),(5452,1,'Icecrown mineral, node 5'),(5453,1,'Icecrown mineral, node 6'),(5454,1,'Icecrown mineral, node 7'),(5455,1,'Icecrown mineral, node 8'),(5456,1,'Icecrown mineral, node 9'),(5457,1,'Icecrown mineral, node 10'),(5458,1,'Icecrown mineral, node 11'),(5459,1,'Icecrown mineral, node 12'),(5460,1,'Icecrown mineral, node 13'),(5461,1,'Icecrown mineral, node 14'),(5462,1,'Icecrown mineral, node 15'),(5463,1,'Icecrown mineral, node 16'),(5464,1,'Icecrown mineral, node 17'),(5465,1,'Icecrown mineral, node 18'),(5466,1,'Icecrown mineral, node 19'),(5467,1,'Icecrown mineral, node 20'),(5468,1,'Icecrown mineral, node 21'),(5469,1,'Icecrown mineral, node 22'),(5470,1,'Icecrown mineral, node 23'),(5471,1,'Icecrown mineral, node 24'),(5472,1,'Icecrown mineral, node 25'),(5473,1,'Icecrown mineral, node 26'),(5474,1,'Icecrown mineral, node 27'),(5475,1,'Icecrown mineral, node 28'),(5476,1,'Icecrown mineral, node 29'),(5477,1,'Icecrown mineral, node 30'),(5478,1,'Icecrown mineral, node 31'),(5479,1,'Icecrown mineral, node 32'),(5480,1,'Icecrown mineral, node 33'),(5481,1,'Icecrown mineral, node 34'),(5482,1,'Icecrown mineral, node 35'),(5483,1,'Icecrown mineral, node 36'),(5484,1,'Icecrown mineral, node 37'),(5485,1,'Icecrown mineral, node 38'),(5486,1,'Icecrown mineral, node 39'),(5487,1,'Icecrown mineral, node 40'),(5488,1,'Icecrown mineral, node 41'),(5489,1,'Icecrown mineral, node 42'),(5490,1,'Icecrown mineral, node 43'),(5491,1,'Icecrown mineral, node 44'),(5492,1,'Icecrown mineral, node 45'),(5493,1,'Icecrown mineral, node 46'),(5494,1,'Icecrown mineral, node 47'),(5495,1,'Icecrown mineral, node 48'),(5496,1,'Icecrown mineral, node 49'),(5497,1,'Icecrown mineral, node 50'),(5498,1,'Icecrown mineral, node 51'),(5499,1,'Icecrown mineral, node 52'),(5500,1,'Icecrown mineral, node 53'),(5501,1,'Icecrown mineral, node 54'),(5502,1,'Icecrown mineral, node 55'),(5503,1,'Icecrown mineral, node 56'),(5504,1,'Icecrown mineral, node 57'),(5505,1,'Icecrown mineral, node 58'),(5506,1,'Icecrown mineral, node 59'),(5507,1,'Icecrown mineral, node 60'),(5508,1,'Icecrown mineral, node 61'),(5509,1,'Icecrown mineral, node 62'),(5510,1,'Icecrown mineral, node 63'),(5511,1,'Icecrown mineral, node 64'),(5512,1,'Icecrown mineral, node 65'),(5513,1,'Icecrown mineral, node 66'),(5514,1,'Icecrown mineral, node 67'),(5515,1,'Icecrown mineral, node 68'),(5516,1,'Icecrown mineral, node 69'),(5517,1,'Icecrown mineral, node 70'),(5518,1,'Icecrown mineral, node 71'),(5519,1,'Icecrown mineral, node 72'),(5520,1,'Icecrown mineral, node 73'),(5521,1,'Icecrown mineral, node 74'),(5522,1,'Icecrown mineral, node 75'),(5523,1,'Icecrown mineral, node 76'),(5524,1,'Icecrown mineral, node 77'),(5525,1,'Icecrown mineral, node 78'),(5526,1,'Icecrown mineral, node 79'),(5527,1,'Icecrown mineral, node 80'),(5528,1,'Icecrown mineral, node 81'),(5529,1,'Icecrown mineral, node 82'),(5530,1,'Icecrown mineral, node 83'),(5531,1,'Icecrown mineral, node 84'),(5532,1,'Icecrown mineral, node 85'),(5533,1,'Icecrown mineral, node 86'),(5534,1,'Icecrown mineral, node 87'),(5535,1,'Icecrown mineral, node 88'),(5536,1,'Icecrown mineral, node 89'),(5537,1,'Icecrown mineral, node 90'),(5538,1,'Icecrown mineral, node 91'),(5539,1,'Icecrown mineral, node 92'),(5540,1,'Icecrown mineral, node 93'),(5541,1,'Icecrown mineral, node 94'),(5542,1,'Icecrown mineral, node 95'),(5543,1,'Icecrown mineral, node 96'),(5544,1,'Icecrown mineral, node 97'),(5545,1,'Icecrown mineral, node 98'),(5546,1,'Icecrown mineral, node 99'),(5547,1,'Icecrown mineral, node 100'),(5548,1,'Icecrown mineral, node 101'),(5549,1,'Icecrown mineral, node 102'),(5550,1,'Icecrown mineral, node 103'),(5551,1,'Icecrown mineral, node 104'),(5552,1,'Icecrown mineral, node 105'),(5553,1,'Icecrown mineral, node 106'),(5554,1,'Icecrown mineral, node 107'),(5555,1,'Icecrown mineral, node 108'),(5556,1,'Icecrown mineral, node 109'),(5557,1,'Icecrown mineral, node 110'),(5558,1,'Icecrown mineral, node 111'),(5559,1,'Icecrown mineral, node 112'),(5560,1,'Icecrown mineral, node 113'),(5561,1,'Icecrown mineral, node 114'),(5562,1,'Icecrown mineral, node 115'),(5563,1,'Icecrown mineral, node 116'),(5564,1,'Icecrown mineral, node 117'),(5565,1,'Icecrown mineral, node 118'),(5566,1,'Icecrown mineral, node 119'),(5567,1,'Icecrown mineral, node 120'),(5568,1,'Icecrown mineral, node 121'),(5569,1,'Icecrown mineral, node 122'),(5570,1,'Icecrown mineral, node 123'),(5571,1,'Icecrown mineral, node 124'),(5572,1,'Icecrown mineral, node 125'),(5573,1,'Icecrown mineral, node 126'),(5574,1,'Icecrown mineral, node 127'),(5575,1,'Icecrown mineral, node 128'),(5576,1,'Icecrown mineral, node 129'),(5577,1,'Icecrown mineral, node 130'),(5578,1,'Icecrown mineral, node 131'),(5579,1,'Icecrown mineral, node 132'),(5580,1,'Icecrown mineral, node 133'),(5581,1,'Icecrown mineral, node 134'),(5582,1,'Icecrown mineral, node 135'),(5583,1,'Icecrown mineral, node 136'),(5584,1,'Icecrown mineral, node 137'),(5585,1,'Icecrown mineral, node 138'),(5586,1,'Icecrown mineral, node 139'),(5587,1,'Icecrown mineral, node 140'),(5588,1,'Icecrown mineral, node 141'),(5589,1,'Icecrown mineral, node 142'),(5590,1,'Icecrown mineral, node 143'),(5591,1,'Icecrown mineral, node 144'),(5592,1,'Icecrown mineral, node 145'),(5593,1,'Icecrown mineral, node 146'),(5594,1,'Icecrown mineral, node 147'),(5595,1,'Icecrown mineral, node 148'),(5596,1,'Icecrown mineral, node 149'),(5597,1,'Icecrown mineral, node 150'),(5598,1,'Icecrown mineral, node 151'),(5599,1,'Icecrown mineral, node 152'),(5600,1,'Icecrown mineral, node 153'),(5601,1,'Icecrown mineral, node 154'),(5602,1,'Icecrown mineral, node 155'),(5603,1,'Icecrown mineral, node 156'),(5604,1,'Icecrown mineral, node 157'),(5605,1,'Icecrown mineral, node 158'),(5606,1,'Icecrown mineral, node 159'),(5607,1,'Icecrown mineral, node 160'),(5608,1,'Icecrown mineral, node 161'),(5609,1,'Icecrown mineral, node 162'),(5610,1,'Icecrown mineral, node 163'),(5611,1,'Icecrown mineral, node 164'),(5612,1,'Icecrown mineral, node 165'),(5613,1,'Icecrown mineral, node 166'),(5614,1,'Icecrown mineral, node 167'),(5615,1,'Icecrown mineral, node 168'),(5616,1,'Icecrown mineral, node 169'),(897,20,'MASTER Minerals Icecrown zone 210'),(5617,1,'Wintergrasp mineral, node 1'),(5618,1,'Wintergrasp mineral, node 2'),(5619,1,'Wintergrasp mineral, node 3'),(5620,1,'Wintergrasp mineral, node 4'),(5621,1,'Wintergrasp mineral, node 5'),(5622,1,'Wintergrasp mineral, node 6'),(5623,1,'Wintergrasp mineral, node 7'),(5624,1,'Wintergrasp mineral, node 8'),(5625,1,'Wintergrasp mineral, node 9'),(5626,1,'Wintergrasp mineral, node 10'),(5627,1,'Wintergrasp mineral, node 11'),(5628,1,'Wintergrasp mineral, node 12'),(5629,1,'Wintergrasp mineral, node 13'),(5630,1,'Wintergrasp mineral, node 14'),(5631,1,'Wintergrasp mineral, node 15'),(5632,1,'Wintergrasp mineral, node 16'),(5633,1,'Wintergrasp mineral, node 17'),(5634,1,'Wintergrasp mineral, node 18'),(5635,1,'Wintergrasp mineral, node 19'),(5636,1,'Wintergrasp mineral, node 20'),(5637,1,'Wintergrasp mineral, node 21'),(5638,1,'Wintergrasp mineral, node 22'),(5639,1,'Wintergrasp mineral, node 23'),(5640,1,'Wintergrasp mineral, node 24'),(5641,1,'Wintergrasp mineral, node 25'),(5642,1,'Wintergrasp mineral, node 26'),(5643,1,'Wintergrasp mineral, node 27'),(5644,1,'Wintergrasp mineral, node 28'),(5645,1,'Wintergrasp mineral, node 29'),(5646,1,'Wintergrasp mineral, node 30'),(5647,1,'Wintergrasp mineral, node 31'),(5648,1,'Wintergrasp mineral, node 32'),(5649,1,'Wintergrasp mineral, node 33'),(5650,1,'Wintergrasp mineral, node 34'),(5651,1,'Wintergrasp mineral, node 35'),(5652,1,'Wintergrasp mineral, node 36'),(5653,1,'Wintergrasp mineral, node 37'),(5654,1,'Wintergrasp mineral, node 38'),(5655,1,'Wintergrasp mineral, node 39'),(5656,1,'Wintergrasp mineral, node 40'),(5657,1,'Wintergrasp mineral, node 41'),(5658,1,'Wintergrasp mineral, node 42'),(5659,1,'Wintergrasp mineral, node 43'),(5660,1,'Wintergrasp mineral, node 44'),(5661,1,'Wintergrasp mineral, node 45'),(896,20,'MASTER Minerals Wintergrasp zone 4197'),(999,15,'MASTER Herbs Dun Morogh zone 1'),(998,15,'MASTER Herbs Badlands zone 3'),(997,15,'MASTER Herbs Blasted Lands zone 4'),(996,15,'MASTER Herbs Swamp of Sorrows zone 8'),(995,15,'MASTER Herbs Duskwood zone 10'),(994,15,'MASTER Herbs Wetlands zone 11'),(993,15,'MASTER Herbs Elwynn Forest zone 12'),(992,15,'MASTER Herbs Durotar zone 14'),(991,15,'MASTER Herbs Dustwallow Marsh zone 15'),(990,15,'MASTER Herbs Azshara zone 16'),(988,15,'MASTER Herbs Stranglethorn Vale zone 33'),(987,15,'MASTER Herbs Borean Tundra zone 3537'),(986,15,'MASTER Herbs Howling Fjord zone 495'),(985,15,'MASTER Herbs Dragonblight zone 65'),(984,15,'MASTER Herbs Grizzly Hills zone 394'),(983,15,'MASTER Herbs Zul\'drak zone 66'),(982,15,'MASTER Herbs Sholazar Basin zone 3711'),(981,15,'MASTER Herbs Storm Peaks zone 67'),(980,15,'MASTER Herbs Icecrown zone 210'),(979,15,'MASTER Herbs Wintergrasp zone 4197'),(978,15,'MASTER Herbs Blade\'s Edge Mountains zone 3522'),(977,15,'MASTER Herbs Terokkar Forest zone 3519'),(976,15,'MASTER Herbs Shadowmoon Valley zone 3520'),(975,15,'MASTER Herbs Zangarmarsh zone 3521'),(974,15,'MASTER Herbs Netherstorm zone 3523'),(973,15,'MASTER Herbs Nagrand zone 3518'),(972,15,'MASTER Herbs Hellfire Peninsula zone 3483'),(971,15,'MASTER Herbs Azuremyst Isle zone 3524'),(970,15,'MASTER Herbs Eversong Woods zone 3430'),(969,15,'MASTER Herbs Ghostlands zone 3433'),(968,15,'MASTER Herbs Eastern Plaguelands zone 139'),(967,15,'MASTER Herbs Winterspring zone 618'),(966,15,'MASTER Herbs Un\'Goro Crater zone 490'),(965,15,'MASTER Herbs Hinterlands zone 47'),(964,15,'MASTER Herbs Feralas zone 357'),(963,15,'MASTER Herbs Tanaris zone 440'),(962,15,'MASTER Herbs Thousand Needles zone 400'),(961,15,'MASTER Herbs Darkshore zone 148'),(960,15,'MASTER Herbs Ashenvale zone 331'),(959,15,'MASTER Herbs Arathi Highlands zone 45'),(958,15,'MASTER Herbs Hillsbrad Foothills zone 267'),(957,15,'MASTER Herbs Teldrassil zone 141'),(956,15,'MASTER Herbs Silverpine Forest zone 130'),(955,15,'MASTER Herbs Mulgore zone 215'),(954,15,'MASTER Herbs Western Plaguelands zone 28'),(953,15,'MASTER Herbs Tirisfal Glades zone 85'),(952,15,'MASTER Herbs Loch Modan zone 38'),(951,15,'MASTER Herbs Westfall zone 40'),(950,15,'MASTER Herbs Redridge Mountains zone 44'),(949,15,'MASTER Herbs Stonetalon Mountains zone 406'),(948,15,'MASTER Herbs Silithus zone 1377'),(947,15,'MASTER Herbs Searing Gorge zone 51'),(202481,1,'Meshlok the Harvester (12237)'),(50047,18,'Injured Stormwind Infantry');
/*!40000 ALTER TABLE `pool_template` ENABLE KEYS */;
UNLOCK TABLES;
DELIMITER ;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CharExtraLevelHPMP` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mrhooha`@`%`*/ /*!50003 PROCEDURE `sp_CharExtraLevelHPMP`()
BEGIN
  
  DECLARE intMaxHP           INT   DEFAULT 65535000; 
  DECLARE intMaxMana         INT   DEFAULT 65535000;   
  DECLARE sngHPInc           FLOAT DEFAULT 0.001;    
  DECLARE sngManaInc         FLOAT DEFAULT 0.001;    
  DECLARE intStartLvl        INT   DEFAULT 80;      
  DECLARE intFinishLvl       INT   DEFAULT 85;     
  
  DECLARE intRecordDone      INT   DEFAULT 0;
  DECLARE intClass           INT   DEFAULT 0;
  DECLARE intLevel           INT   DEFAULT 0;
  DECLARE intCurrHP          INT   DEFAULT 0;
  DECLARE intCurrMana        INT   DEFAULT 0;
  
  DECLARE curPlayerStat  CURSOR FOR SELECT `class`, `level`, `basehp`, `basemana` FROM player_classlevelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;
  
  OPEN curPlayerStat;
  
  REPEAT
    
    FETCH curPlayerStat INTO intClass, intLevel, intCurrHP, intCurrMana;
    
    IF intLevel = intStartLvl THEN
       REPEAT
         
         SET intLevel = intLevel + 1;
         
         DELETE FROM player_classlevelstats WHERE `class` = intClass AND `level` = intLevel;
         
         IF (ROUND(intCurrHP * (1 + sngHPInc) + 200)) <= intMaxHP THEN
           SET intCurrHP = ROUND(intCurrHP * (1 + sngHPInc) + 200);
         ELSE
           SET intCurrHP = intMaxHP;  
         END IF;
         
         IF (ROUND(intCurrMana * (1 + sngManaInc) + 200)) <= intMaxMana THEN
           SET intCurrMana = ROUND(intCurrMana * (1 + sngManaInc) + 200);
         ELSE
           SET intCurrMana = intMaxMana;
         END IF;
         
         INSERT INTO player_classlevelstats
         (`class`, `level`, `basehp`, `basemana`)
         VALUES
         (intClass, intLevel, intCurrHP, intCurrMana);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;
  
  CLOSE curPlayerStat;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CharExtraLevelStats` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mrhooha`@`%`*/ /*!50003 PROCEDURE `sp_CharExtraLevelStats`()
BEGIN
  
  DECLARE intMaxStats        INT   DEFAULT 2556541;    
  DECLARE sngStatsInc        FLOAT DEFAULT 0.00000000001;    
  DECLARE intStartLvl        INT   DEFAULT 80;      
  DECLARE intFinishLvl       INT   DEFAULT 85;     
  
  DECLARE intRecordDone      INT   DEFAULT 0;
  DECLARE intRace            INT   DEFAULT 0;
  DECLARE intClass           INT   DEFAULT 0;
  DECLARE intLevel           INT   DEFAULT 0;
  DECLARE intCurrSTR         INT   DEFAULT 0;
  DECLARE intCurrAGI         INT   DEFAULT 0;
  DECLARE intCurrSTA         INT   DEFAULT 0;
  DECLARE intCurrINT         INT   DEFAULT 0;
  DECLARE intCurrSPI         INT   DEFAULT 0;
  
  DECLARE curPlayerStat  CURSOR FOR SELECT `race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM player_levelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;
  
  OPEN curPlayerStat;
  
  REPEAT
    
    FETCH curPlayerStat INTO intRace, intClass, intLevel, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI;
    
    IF intLevel = intStartLvl THEN
       REPEAT
         
         SET intLevel = intLevel + 1;
         
         DELETE FROM player_levelstats WHERE `race` = intRace AND `class` = intClass AND `level` = intLevel;
         
         IF (ROUND(intCurrSTR * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSTR = ROUND(intCurrSTR * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTR = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrAGI * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrAGI = ROUND(intCurrAGI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrAGI = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrSTA * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSTA = ROUND(intCurrSTA * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTA = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrINT * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrINT = ROUND(intCurrINT * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrINT = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrSPI * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSPI = ROUND(intCurrSPI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSPI = intMaxStats;
         END IF;
         
         INSERT INTO player_levelstats
         (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
         VALUES
         (intRace, intClass, intLevel, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;
  
  CLOSE curPlayerStat;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_loot` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_loot`(IN loot_type VARCHAR(10),IN loot_entry INT(10),IN item_entry INT(10))
BEGIN
	IF loot_entry IS NOT NULL OR item_entry IS NOT NULL THEN
		CASE UCASE(loot_type)
			WHEN 'FISH' THEN BEGIN
				DELETE FROM `fishing_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'NPC' THEN BEGIN
				DELETE FROM `creature_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'GO' THEN BEGIN
				DELETE FROM `gameobject_loot_template` WHERE `entry`=IFNUofcLL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'ITEM' THEN BEGIN
				DELETE FROM `item_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'DISENCH' THEN BEGIN
				DELETE FROM `disenchant_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'PROSPECT' THEN BEGIN
				DELETE FROM `propspecting_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'MILL' THEN BEGIN
				DELETE FROM `millling_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'PICKPOCKET' THEN BEGIN
				DELETE FROM `pickpocketing_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'SKIN' THEN BEGIN
				DELETE FROM `skinning_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'QUEST' THEN BEGIN
				DELETE FROM `quest_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'REF' THEN BEGIN
				IF loot_entry IS NOT NULL THEN
					DELETE FROM `creature_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `disenchant_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `fishing_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `gameobject_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `item_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `mail_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `milling_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `pickpocketing_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `prospecting_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `skinning_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `spell_loot_template` WHERE `mincountOrRef`=-loot_entry;
				END IF;
				
				DELETE FROM `reference_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			ELSE CALL INVALID_LOOT_TYPE;
		END CASE;
	ELSE 
		CALL MUST_PROVIDE_ENTRY_OR_ITEM;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_npc_trainer` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_npc_trainer`(IN npc_entry INT(10), IN spell_id INT(10))
BEGIN
	IF spell_id IS NOT NULL OR npc_entry IS NOT NULL THEN
		DELETE FROM `npc_trainer` WHERE `entry`=IFNULL(npc_entry,`entry`) AND `spell`=IFNULL(spell_id,`spell`);
	ELSE 
		CALL MUST_PROVIDE_ENTRY_OR_SPELL;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_npc_vendor` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_npc_vendor`(IN npc_entry INT(10), IN item_entry INT(10))
BEGIN
	IF item_entry IS NOT NULL OR npc_entry IS NOT NULL THEN
		DELETE FROM `npc_vendor` WHERE `entry`=IFNULL(npc_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
	ELSE
		CALL MUST_PROVIDE_ENTRY_OR_ITEM;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_questgiver` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_questgiver`(IN qg_type VARCHAR(10),IN qg_entry INT(10), IN quest_entry INT(10))
BEGIN
	IF qg_entry IS NOT NULL OR quest_entry IS NOT NULL THEN
		CASE UCASE(qg_type)
			WHEN 'NPC' THEN BEGIN
				DELETE FROM `creature_questrelation` WHERE `id`=IFNULL(qg_entry,`id`) AND `quest`=IFNULL(quest_entry,`quest`);
			END;
			WHEN 'GO' THEN BEGIN
				DELETE FROM `gameobject_questrelation` WHERE `id`=IFNULL(qg_entry,`id`) AND `quest`=IFNULL(quest_entry,`quest`);
			END;
			ELSE CALL INVALID_ENTRY_TYPE;
		END CASE;
	ELSE CALL MUST_PROVIDE_ENTRY_OR_QUEST;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_questtaker` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_questtaker`(IN qt_type VARCHAR(10),IN qt_entry INT(10), IN quest_entry INT(10))
BEGIN
	IF qt_entry IS NOT NULL OR quest_entry IS NOT NULL THEN
		CASE UCASE(qt_type)
			WHEN 'NPC' THEN BEGIN
				DELETE FROM `creature_involvedrelation` WHERE `id`=IFNULL(qt_entry,`id`) AND `quest`=IFNULL(quest_entry,`quest`);
			END;
			WHEN 'GO' THEN BEGIN
				DELETE FROM `gameobject_involvedrelation` WHERE `id`=IFNULL(qt_entry,`id`) AND `quest`=IFNULL(quest_entry,`quest`);
			END;
			ELSE CALL INVALID_ENTRY_TYPE;
		END CASE;
	ELSE CALL MUST_PROVIDE_ENTRY_OR_QUEST;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_script` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_script`(IN script_type VARCHAR(10), IN script_id INT(10))
BEGIN
	CASE UCASE(script_type)
		WHEN 'EAI' THEN BEGIN
			DELETE FROM `creature_ai_scripts` WHERE `id`=script_id;
		END;
		WHEN 'GO' THEN BEGIN
			DELETE FROM `gameobject_scripts` WHERE `id`=script_id;
		END;
		WHEN 'GOSSIP' THEN BEGIN
			DELETE FROM `gossip_scripts` WHERE `id`=script_id;
		END;
		WHEN 'Q_START' THEN BEGIN
			DELETE FROM `quest_start_scripts` WHERE `id`=script_id;
		END;
		WHEN 'Q_END' THEN BEGIN
			DELETE FROM `quest_end_scripts` WHERE `id`=script_id;
		END;
		WHEN 'SPELL' THEN BEGIN
			DELETE FROM `spell_scripts` WHERE `id`=script_id;
		END;
		WHEN 'WP' THEN BEGIN
			DELETE FROM `waypoint_scripts` WHERE `id`=script_id;
		END;
		ELSE CALL INVALID_SCRIPT_TYPE;
	END CASE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_script_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_script_bylist`(IN script_type VARCHAR(10), IN script_id_list LONGTEXT)
BEGIN
	CALL `sp_set_entry_list` (script_id_list,null);
	CASE UCASE(script_type)
		WHEN 'EAI' THEN BEGIN
			DELETE FROM `creature_ai_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'GO' THEN BEGIN
			DELETE FROM `gameobject_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'GOSSIP' THEN BEGIN
			DELETE FROM `gossip_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'Q_START' THEN BEGIN
			DELETE FROM `quest_start_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'Q_END' THEN BEGIN
			DELETE FROM `quest_end_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'SPELL' THEN BEGIN
			DELETE FROM `spell_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'WP' THEN BEGIN
			DELETE FROM `waypoint_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		ELSE CALL INVALID_SCRIPT_TYPE;
	END CASE;
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spawn` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spawn`(IN spawn_type VARCHAR(10),IN spawn_guid INT(10), IN spawn_entry INT(10))
BEGIN
	IF spawn_guid IS NOT NULL OR spawn_entry IS NOT NULL THEN
		CASE UCASE(spawn_type)
			WHEN 'NPC' THEN BEGIN
				DELETE FROM `creature` WHERE `guid`=IFNULL(spawn_guid,`guid`) AND `id`=IFNULL(spawn_entry,`id`);
				DELETE FROM `game_event_creature` WHERE `guid`=IFNULL(spawn_guid,-1);
			END;
			WHEN 'GO' THEN BEGIN
				DELETE FROM `gameobject` WHERE `guid`=IFNULL(spawn_guid,`guid`) AND `id`=IFNULL(spawn_entry,`id`);
				DELETE FROM `game_event_gameobject` WHERE `guid`=IFNULL(spawn_guid,-1);
			END;
			ELSE CALL INVALID_SPAWN_TYPE;
		END CASE;
	ELSE 
		CALL MUST_PROVIDE_GUID_OR_ENTRY;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spell_area` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spell_area`(IN spell_id INT(10), IN area_id INT(10))
BEGIN
 
	IF spell_id IS NOT NULL OR area_id IS NOT NULL THEN
		DELETE FROM `spell_area` WHERE `spell`=IFNULL(spell_id,`spell`) AND `area`=IFNULL(area_id,`area`);
	ELSE
		CALL MUST_PROVIDE_SPELL_OR_AREA;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spell_position` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spell_position`(IN spell_id INT(10))
BEGIN
	DELETE FROM `spell_target_position` WHERE `id`=spell_id;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spell_position_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spell_position_bylist`(IN spell_list LONGTEXT)
BEGIN
	CALL `sp_set_entry_list` (spell_list,null);
	DELETE FROM `spell_target_position` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spell_target` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spell_target`(IN spell_id INT(10),IN target_entry INT(10))
BEGIN
	IF spell_id IS NOT NULL OR target_entry IS NOT NULL THEN
		DELETE FROM `spell_script_target` WHERE `entry`=IFNULL(spell_id,`entry`) AND `targetEntry`=IFNULL(target_entry,`targetEntry`);
	ELSE
		CALL MUST_PROVIDE_SPELL_OR_TARGET;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_cleanup_loot` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_cleanup_loot`()
BEGIN
CREATE TABLE `Loot_temp` (
    `lootid` INT(8) UNSIGNED NOT NULL PRIMARY KEY DEFAULT '0'
);
INSERT IGNORE INTO `Loot_temp` SELECT `entry` FROM `item_template`;
DELETE FROM `prospecting_loot_template` WHERE `entry` NOT IN (SELECT `lootid` FROM `Loot_temp`);
DELETE FROM `Loot_temp`;
INSERT IGNORE INTO `Loot_temp` SELECT `skinloot` FROM `creature_template` WHERE skinloot>0;
DELETE FROM `skinning_loot_template` WHERE `entry` NOT IN (SELECT `lootid` FROM `Loot_temp`);
DELETE FROM `Loot_temp`;
INSERT IGNORE INTO `Loot_temp` SELECT `lootid` FROM `creature_template` WHERE lootid>0;
DELETE FROM `creature_loot_template` WHERE `entry` NOT IN (SELECT `lootid` FROM `Loot_temp`);
DELETE FROM `Loot_temp`;
DROP TABLE `Loot_temp`;
DELETE FROM `disenchant_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `disenchant_loot_template` WHERE `entry` NOT IN (SELECT `disenchantid` FROM `item_template`);
DELETE FROM `pickpocketing_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `prospecting_loot_template` WHERE `entry` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `prospecting_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `mail_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_cleanup_reference_loot` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_cleanup_reference_loot`()
BEGIN
CREATE TABLE `RL_temp` (
    `ref_id` INT(8) UNSIGNED NOT NULL PRIMARY KEY DEFAULT '0'
);
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `gameobject_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `item_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `creature_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `spell_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `prospecting_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `milling_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `mail_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `reference_loot_template` WHERE `mincountOrRef`<0;
DELETE FROM `reference_loot_template` WHERE `entry` NOT IN (SELECT `ref_id` FROM `RL_temp`);
DROP TABLE `RL_temp`;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_cleanup_world` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_cleanup_world`()
BEGIN
DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `creature` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM areatrigger_involvedrelation WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `battlemaster_entry` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `battlemaster_entry` WHERE `bg_template` NOT IN (SELECT `id` FROM `battleground_template`);
UPDATE `creature` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`) AND `equipment_id`!=0;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_formations` WHERE leaderGUID NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_formations` WHERE memberGUID NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_involvedrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `creature_linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_questrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `creature_template_addon` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `game_event_creature_quest` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `game_event_creature_quest` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `game_event_creature_quest` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_gameobject_quest` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `game_event_gameobject_quest` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `game_event_gameobject_quest` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_npc_gossip` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_model_equip` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_battleground_holiday` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_condition` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_creature` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_gameobject` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_npc_vendor` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `game_event_npc_vendor` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_npcflag` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_pool` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_prerequisite` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_prerequisite` WHERE `prerequisite_event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_quest_condition` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_quest_condition` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `item_required_target` WHERE `targetEntry` NOT IN (SELECT `entry` FROM `creature_template`) AND `type` IN (1,2);
DELETE FROM `mail_level_reward` WHERE `senderEntry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_spellclick_spells` WHERE `quest_start` NOT IN (SELECT `entry` FROM `quest_template`) AND `quest_start`<>0;
DELETE FROM `npc_spellclick_spells` WHERE `quest_end` NOT IN (SELECT `entry` FROM `quest_template`) AND `quest_end`<>0;
DELETE FROM `npc_trainer` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_vendor` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_vendor` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `pet_levelstats` WHERE `creature_entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `quest_end_scripts` WHERE `id` NOT IN (SELECT `CompleteScript` FROM `quest_template`);
DELETE FROM `quest_start_scripts` WHERE `id` NOT IN (SELECT `StartScript` FROM `quest_template`);
DELETE FROM `spell_script_target` WHERE `targetEntry` NOT IN (SELECT `entry` FROM `creature_template`) AND `type` IN (1,2,3) AND `targetEntry`!=0;
DELETE FROM `spell_script_target` WHERE `targetEntry` NOT IN (SELECT `entry` FROM `gameobject_template`) AND `type`=0 AND `targetEntry`!=0;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_reguid_alter_tables` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_reguid_alter_tables`()
BEGIN
            CREATE TABLE `creature_temp` (
  `guid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
  `map` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `spawnMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  `phaseMask` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
  `modelid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `equipment_id` MEDIUMINT(9) NOT NULL DEFAULT '0',
  `position_x` FLOAT NOT NULL DEFAULT '0',
  `position_y` FLOAT NOT NULL DEFAULT '0',
  `position_z` FLOAT NOT NULL DEFAULT '0',
  `orientation` FLOAT NOT NULL DEFAULT '0',
  `spawntimesecs` INT(10) UNSIGNED NOT NULL DEFAULT '120',
  `spawndist` FLOAT NOT NULL DEFAULT '5',
  `currentwaypoint` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `curhealth` INT(10) UNSIGNED NOT NULL DEFAULT '1',
  `curmana` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `DeathState` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `MovementType` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `old_guid` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_map` (`map`),
  KEY `idx_id` (`id`)
) ENGINE=MYISAM AUTO_INCREMENT=250001 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature System';
        ALTER TABLE `creature_addon` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_formations` ADD COLUMN `new_guid_leader` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_formations` ADD COLUMN `new_guid_member` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_linked_respawn` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_linked_respawn` ADD COLUMN `new_linked_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_creature` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `pool_creature` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_model_equip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npc_gossip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npc_vendor` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npcflag` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `npc_gossip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_re_guid` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_re_guid`(IN new_base_guid INT(10))
BEGIN
    CALL `sp_dev_reguid_alter_tables`();
    SET @s = CONCAT("ALTER TABLE `creature_temp` AUTO_INCREMENT=",new_base_guid,";");
    PREPARE STM FROM @s;
    EXECUTE STM;
    INSERT INTO `creature_temp` (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType,old_guid)
    SELECT id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType,guid FROM `creature` ORDER BY `id` ASC;
    UPDATE `creature_temp` SET guid = old_guid WHERE `old_guid`>250000;    
		UPDATE game_event_npc_gossip p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_npc_vendor p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_npcflag p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE npc_gossip p
                INNER JOIN creature_temp pp
                ON p.npc_guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_model_equip p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_addon p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_formations p
                INNER JOIN creature_temp pp
                ON p.leaderGUID = pp.old_guid
                SET p.new_guid_leader = pp.guid;
                UPDATE creature_formations p
                INNER JOIN creature_temp pp
                ON p.memberGUID = pp.old_guid
                SET p.new_guid_member = pp.guid;
                UPDATE creature_linked_respawn p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_linked_respawn p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_linked_guid = pp.guid;
                UPDATE game_event_creature p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE pool_creature p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                ALTER TABLE `creature_temp` DROP COLUMN `old_guid`;
                DROP TABLE `creature`;
                RENAME TABLE `creature_temp` TO `creature`;
                ALTER TABLE game_event_npc_gossip DISABLE KEYS;
                UPDATE `game_event_npc_gossip` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npc_gossip` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npc_gossip ENABLE KEYS;
                ALTER TABLE game_event_npc_vendor DISABLE KEYS;
                UPDATE `game_event_npc_vendor` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npc_vendor` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npc_vendor ENABLE KEYS;
                ALTER TABLE game_event_npcflag DISABLE KEYS;
                UPDATE `game_event_npcflag` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npcflag` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npcflag ENABLE KEYS;
                ALTER TABLE `npc_gossip` DROP PRIMARY KEY;
                UPDATE `npc_gossip` SET `npc_guid`=`new_guid`;      
                SELECT npc_guid,new_guid FROM npc_gossip;  
                ALTER TABLE `npc_gossip` DROP COLUMN `new_guid`;
                ALTER TABLE `npc_gossip` ADD PRIMARY KEY(`npc_guid`);
                ALTER TABLE game_event_model_equip DISABLE KEYS;
                UPDATE `game_event_model_equip` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_model_equip` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_model_equip ENABLE KEYS;
                ALTER TABLE `creature_addon` DROP PRIMARY KEY;
                UPDATE `creature_addon` SET `guid`=`new_guid`;        
                ALTER TABLE `creature_addon` DROP COLUMN `new_guid`;
                ALTER TABLE `creature_addon` ADD PRIMARY KEY(`guid`);
                ALTER TABLE creature_formations DISABLE KEYS;
                UPDATE `creature_formations` SET leaderGUID = new_guid_leader;
                ALTER TABLE `creature_formations` DROP COLUMN `new_guid_leader`;
                UPDATE `creature_formations` SET memberGUID = new_guid_member;
                ALTER TABLE `creature_formations` DROP COLUMN `new_guid_member`;
                ALTER TABLE creature_formations ENABLE KEYS;
                ALTER TABLE `creature_linked_respawn` DROP PRIMARY KEY;
                UPDATE `creature_linked_respawn` SET guid = new_guid;
                ALTER TABLE `creature_linked_respawn` DROP COLUMN `new_guid`;
                UPDATE `creature_linked_respawn` SET linkedGuid = new_linked_guid;
                ALTER TABLE `creature_linked_respawn` DROP COLUMN `new_linked_guid`;
                ALTER TABLE `creature_linked_respawn` ADD PRIMARY KEY(`guid`);
                ALTER TABLE `game_event_creature` DROP PRIMARY KEY;
                UPDATE `game_event_creature` SET guid = new_guid;
                ALTER TABLE `game_event_creature` DROP COLUMN `new_guid`;
                ALTER TABLE `game_event_creature` ADD PRIMARY KEY(`guid`);
                ALTER TABLE pool_creature DISABLE KEYS;
                UPDATE `pool_creature` SET guid = new_guid;
                ALTER TABLE `pool_creature` DROP COLUMN `new_guid`;
                ALTER TABLE pool_creature ENABLE KEYS;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_cast_onspawn` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_cast_onspawn`(IN npc_entry INT(10), spell_id MEDIUMINT(6))
BEGIN
    CALL `sp_error_entry`('NPC',npc_entry);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=npc_entry; 
    
    CALL `sp_eai_select_id`(npc_entry,@event_id);
    
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,npc_entry,11,0,100,0,0,0,0,0,11,spell_id,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: NPC cast spell on self');
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_inverse_phase_mask` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_inverse_phase_mask`(IN max_phase INT, IN phase_list VARCHAR(255))
BEGIN
DECLARE max_phase_mask INT;
DECLARE phase_yes INT;
DECLARE inverse_phase_mask INT;
CALL `sp_eai_table_phase_mask`();
CALL `sp_set_entry_list`(phase_list);
SET max_phase_mask = (SELECT SUM(phase_mask) FROM phase_mask WHERE phaseID <= max_phase);
SET phase_yes = (SELECT SUM(phase_mask) FROM phase_mask WHERE phaseID IN (SELECT `value` FROM tdb_entry_list));
SET inverse_phase_mask = (max_phase_mask - phase_yes);
DROP TABLE `tdb_entry_list`;
DROP TABLE `phase_mask`;
IF inverse_phase_mask < 0 THEN
SELECT "PhaseID is bigger then maximum phase entered" AS `inverse_phase_mask`;
ELSE IF phase_list="0" THEN
SELECT 0 AS `inverse_phase_mask`;
ELSE
SELECT inverse_phase_mask;
END IF;
END IF;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_kill_ondeath` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_kill_ondeath`(IN npc_entry INT(10), trigger_id INT(10))
BEGIN
    CALL `sp_error_entry`('NPC',npc_entry);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=npc_entry; 
    
    CALL `sp_eai_select_id`(npc_entry, @event_id);
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,npc_entry,6,0,100,0,0,0,0,0,33,trigger_id,6,0,23,1,0,0,0,0,0,0, 'Stored procedures eAI: quest - kill trigger on NPC death');
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_quest_credit_on_spellhit` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_quest_credit_on_spellhit`(IN npc_entry INT(10), spell_id MEDIUMINT(6), trigger_id INT(10), despawn_time INT(10))
BEGIN
    CALL `sp_error_entry`('NPC',npc_entry);
    CALL `sp_error_trigger` (trigger_id);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=npc_entry; 
    
        CALL `sp_eai_select_id` (npc_entry, @event_id);
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,npc_entry,8,0,100,1,spell_ID,-1,0,0,33,trigger_ID,6,0,23,1,0,0,0,0,0,0, 'Stored procedures eAI: quest - kill trigger on spellcast');
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id+1,npc_entry,1,1,100,0,despawn_time,despawn_time,despawn_time,despawn_time,41,0,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: despawn after defined time');
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_select_id` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_select_id`(IN npc_entry INT(10), OUT event_id INT(10))
BEGIN
	CALL `sp_error_entry`('NPC',npc_entry);
	SET event_id = (SELECT MAX(id)+1 FROM `creature_ai_scripts` WHERE `creature_id`=npc_entry);
    DELETE FROM `creature_ai_scripts` WHERE `creature_id`=npc_entry AND `comment` LIKE "Stored procedures eAI%";
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_spawn_spellhit` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_spawn_spellhit`(IN npc_entry INT(10),IN spell_id MEDIUMINT(6),IN spawn_id INT(10),IN despawn_time INT(10))
BEGIN
    CALL `sp_error_entry`('NPC',npc_entry);
    CALL `sp_error_entry`('NPC',spawn_id);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=npc_entry; 
    CALL `sp_eai_select_id`(npc_entry,@event_id); 
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,npc_entry,8,0,100,1,spell_id,-1,0,0,32,spawn_id,6,0,41,0,0,0,0,0,0,0, 'Stored procedures eAI: quest - summon mob on spellcast');
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id+1,spawn_id,1,1,100,0,despawn_time,despawn_time,despawn_time,despawn_time,41,0,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: despawn after defined time');
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_table_phase_mask` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_table_phase_mask`()
BEGIN
 
CREATE TABLE `phase_mask`(
`phaseID` INT(2) NOT NULL DEFAULT '0' ,
`phase_mask` INT(11) UNSIGNED NOT NULL DEFAULT '0' ,
PRIMARY KEY (`phaseID`));
INSERT INTO phase_mask VALUES
(0,1),
(1,2),
(2,4),
(3,8),
(4,16),
(5,32),
(6,64),
(7,128),
(8,256),
(9,512),
(10,1024),
(11,2048),
(12,4096),
(13,8192),
(14,16384),
(15,32768),
(16,65536),
(17,131072),
(18,262144),
(19,524288),
(20,1048576),
(21,2097152),
(22,4194304),
(23,8388608),
(24,16777216),
(25,33554432),
(26,67108864),
(27,134217728),
(28,268435456),
(29,536870912),
(30,1073741824),
(31,2147483648);
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_error_entry` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_error_entry`(IN entry_type VARCHAR(10), IN e_entry INT(10))
BEGIN
	DECLARE check_entry INT;
	CASE UPPER(entry_type)
		WHEN 'NPC' THEN
			SET check_entry = (SELECT COUNT(`entry`) FROM `creature_template` WHERE `entry`=e_entry);
		WHEN 'GO' THEN
			SET check_entry = (SELECT COUNT(`entry`) FROM `gameobject_template` WHERE `entry`=e_entry);
		WHEN 'ITEM' THEN
			SET check_entry = (SELECT COUNT(`entry`) FROM `item_template` WHERE `entry`=e_entry);
		WHEN 'QUEST' THEN
			SET check_entry = (SELECT COUNT(`entry`) FROM `quest_template` WHERE `entry`=e_entry);
		ELSE
			CALL INCORRECT_ENTRY_TYPE;
	END CASE;
	
	IF check_entry=0 THEN
		CALL INCORRECT_ENTRY;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_error_guid` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_error_guid`(IN guid_type VARCHAR(10),IN npc_or_go_guid INT(10))
BEGIN
	DECLARE check_guid INT;
	CASE UPPER(guid_type)
		WHEN 'NPC' THEN
			SET check_guid = (SELECT COUNT(`guid`) FROM `creature` WHERE `guid`=npc_or_go_guid);
		WHEN 'GO' THEN
			SET check_guid = (SELECT COUNT(`guid`) FROM `gameobject` WHERE `entry`=npc_or_go_entry);
		ELSE
			CALL INCORRECT_GUID_TYPE;
	END CASE;
	
	IF check_guid=0 THEN
		CALL INCORRECT_CREATURE_OR_GO_GUID;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_error_trigger` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_error_trigger`(IN trigger_entry INT)
BEGIN
    DECLARE Check_trigger INT;
    SET Check_trigger = (SELECT COUNT(ReqCreatureOrGOId1) FROM `quest_template` WHERE `ReqCreatureOrGOId1`= trigger_entry)
    + (SELECT COUNT(ReqCreatureOrGOId2) FROM `quest_template` WHERE `ReqCreatureOrGOId2`= trigger_entry)
    + (SELECT COUNT(ReqCreatureOrGOId3) FROM `quest_template` WHERE `ReqCreatureOrGOId3`= trigger_entry)
    + (SELECT COUNT(ReqCreatureOrGOId4) FROM `quest_template` WHERE `ReqCreatureOrGOId4`= trigger_entry);
    IF Check_trigger = 0 THEN
        CALL NO_QUEST_WITH_REQUIREMENT();
    END IF;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_go_lootid` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_get_go_lootid`(IN gobjID MEDIUMINT(6),OUT gobjLootID INT(10))
BEGIN
        CALL `sp_error_entry`('GO',gobjID);
        SELECT `data1` FROM `gameobject_template` WHERE `entry`=gobjID AND `type`=3 INTO gobjLootID;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_npc_diffentry` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_get_npc_diffentry`(IN normalEntry MEDIUMINT(5),IN difficulty TINYINT(1),OUT output MEDIUMINT(8))
BEGIN
    CALL `sp_error_entry`('NPC',normalEntry);
    CASE difficulty
        WHEN 1 THEN BEGIN 
            SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        WHEN 2 THEN BEGIN 
            SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        WHEN 3 THEN BEGIN 
            SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        ELSE CALL INVALID_DIFFICULTY();
    END CASE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_ref_id` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_get_ref_id`(IN refType VARCHAR(10),OUT reference MEDIUMINT(5))
BEGIN
    CASE UCASE(refType)
        WHEN 'SKIN' THEN BEGIN
            SET @Low :=00000;
            SET @High :=1000;
        END;
        WHEN 'ITEM' THEN BEGIN
            SET @Low :=10000;
            SET @High :=10999;
        END;
        WHEN 'FISH' THEN BEGIN
            SET @Low :=11000;
            SET @High :=11799;
        END;
        WHEN 'MILL' THEN BEGIN
            SET @Low :=11800;
            SET @High :=11999;
        END;
        WHEN 'RAID_GOBJ' THEN BEGIN
            SET @Low :=12000;
            SET @High :=12899;
        END;
        WHEN 'MINE' THEN BEGIN
            SET @Low :=12900;
            SET @High :=12999;
        END;
        WHEN 'PROSPECT' THEN BEGIN
            SET @Low :=13000;
            SET @High :=13999;
        END;
        WHEN 'WORLD' THEN BEGIN
            SET @Low :=14000;
            SET @High :=29000;
        END;
        WHEN 'RAID_CRE' THEN BEGIN
            SET @Low :=34000;
            SET @High :=34999;
        END;
        WHEN 'DUNGEON' THEN BEGIN
            SET @Low :=35000;
            SET @High :=35999;
        END;
        ELSE CALL INVALID_REFERENCE_TYPE;
    END CASE;
    SET reference :=1+(SELECT `entry` FROM `reference_loot_template` WHERE `entry` BETWEEN @Low AND @High ORDER BY `entry` DESC LIMIT 1);
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_PetExtraLevelStats` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mrhooha`@`%`*/ /*!50003 PROCEDURE `sp_PetExtraLevelStats`()
BEGIN
  
  DECLARE intMaxHP       INT   DEFAULT 6553500;
  DECLARE intMaxMana     INT   DEFAULT 6553500;
  DECLARE intMaxArmor    INT   DEFAULT 6553500;
  DECLARE intMaxStats    INT   DEFAULT 100000;
  DECLARE sngHPInc       FLOAT DEFAULT 0.05;    
  DECLARE sngManaInc     FLOAT DEFAULT 0.05;    
  DECLARE sngArmorInc    FLOAT DEFAULT 0.05;    
  DECLARE sngStatsInc    FLOAT DEFAULT 0.015;    
  DECLARE intStartLvl    INT   DEFAULT 80;      
  DECLARE intFinishLvl   INT   DEFAULT 85;      
  
  DECLARE intRecordDone  INT   DEFAULT 0;
  DECLARE intCreature    INT   DEFAULT 0;
  DECLARE intLevel       INT   DEFAULT 0;
  DECLARE intClass       INT   DEFAULT 0;
  DECLARE intCurrHP      INT   DEFAULT 0;
  DECLARE intCurrMana    INT   DEFAULT 0;
  DECLARE intCurrArmor   INT   DEFAULT 0;
  DECLARE intCurrSTR     INT   DEFAULT 0;
  DECLARE intCurrAGI     INT   DEFAULT 0;
  DECLARE intCurrSTA     INT   DEFAULT 0;
  DECLARE intCurrINT     INT   DEFAULT 0;
  DECLARE intCurrSPI     INT   DEFAULT 0;
  
  DECLARE curPetStat  CURSOR FOR SELECT `creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi` FROM pet_levelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;
  
  OPEN curPetStat;
  
  REPEAT
    
    FETCH curPetStat INTO intCreature, intLevel, intCurrHP, intCurrMana, intCurrArmor, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI;
    
    IF intLevel = intStartLvl THEN
       REPEAT
         
         SET intLevel = intLevel + 1;
         
         DELETE FROM pet_levelstats WHERE `creature_entry` = intCreature AND `level` = intLevel;
         
         IF (ROUND(intCurrHP * (1 + sngHPInc) + 1)) <= intMaxHP THEN
           SET intCurrHP = ROUND(intCurrHP * (1 + sngHPInc) + 100);
         ELSE
           SET intCurrHP = intMaxHP;  
         END IF;
         
         IF (ROUND(intCurrMana * (1 + sngManaInc) + 1)) <= intMaxMana THEN
           SET intCurrMana = ROUND(intCurrMana * (1 + sngManaInc) + 100);
         ELSE
           SET intCurrMana = intMaxMana;
         END IF;
         
         IF (ROUND(intCurrArmor * (1 + sngArmorInc) + 1)) <= intMaxArmor THEN
           SET intCurrArmor = ROUND(intCurrArmor * (1 + sngArmorInc) + 800);
         ELSE
           SET intCurrArmor = intMaxArmor;
         END IF;
         
         IF (ROUND(intCurrSTR * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSTR = ROUND(intCurrSTR * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTR = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrAGI * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrAGI = ROUND(intCurrAGI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrAGI = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrSTA * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSTA = ROUND(intCurrSTA * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTA = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrINT * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrINT = ROUND(intCurrINT * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrINT = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrSPI * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSPI = ROUND(intCurrSPI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSPI = intMaxStats;
         END IF;
         
         INSERT INTO pet_levelstats
         (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`)
         VALUES
         (intCreature, intLevel, intCurrHP, intCurrMana, intCurrArmor, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;
  
  CLOSE curPetStat;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_entry_list` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_entry_list`(IN input LONGTEXT,IN appendExisting BIT)
BEGIN
    DECLARE cur_position INT DEFAULT 1;
    DECLARE remainder TEXT;
    DECLARE cur_string VARCHAR(10);
    DECLARE entry_count MEDIUMINT;
    IF appendExisting IS NULL OR appendExisting IS FALSE THEN
	CREATE TABLE `tdb_entry_list` (`value` INT NOT NULL PRIMARY KEY) ENGINE=MYISAM;
    END IF;
    SET remainder = input;
    WHILE CHAR_LENGTH(remainder) > 0 AND cur_position > 0 DO
        SET cur_position = INSTR(remainder, ',');
        IF cur_position = 0 THEN
            SET cur_string = remainder;
        ELSE
            SET cur_string = LEFT(remainder, cur_position-1);
        END IF;
        IF TRIM(cur_string) != '' AND(SELECT COUNT(*) FROM `tdb_entry_list` WHERE `value`=cur_string)=0 THEN
            INSERT INTO `tdb_entry_list` VALUES (cur_string);
        END IF;
        SET remainder = SUBSTRING(remainder, cur_position+1);
    END WHILE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_item_money` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_item_money`(IN item_entry INT, IN min_money INT, IN max_money INT)
BEGIN
CALL sp_error_entry('ITEM',item_entry);
UPDATE item_template SET minMoneyLoot=min_money, maxMoneyLoot=max_money WHERE entry = item_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_item_money_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_item_money_bylist`(IN item_entry TEXT, IN min_money INT, IN max_money INT)
BEGIN
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('ITEM',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE item_template SET minMoneyLoot=min_money, maxMoneyLoot=max_money WHERE entry = item_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_aggro` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_aggro`(IN creature_entry INT(10),IN on_off BOOLEAN)
BEGIN
	CALL `sp_error_entry`('NPC',creature_entry);
	IF on_off = 1 THEN
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry`= creature_entry;
	ELSE 
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`= creature_entry;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_aggro_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_aggro_bylist`(IN entry_list LONGTEXT,IN on_off BOOLEAN)
BEGIN
	CALL `sp_set_entry_list` (entry_list,null);
	IF on_off = 1 THEN
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	ELSE 
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	END IF;
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_attackable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_attackable`(IN npc_entry INT, IN on_off BOOLEAN)
BEGIN
CALL sp_error_entry('NPC',npc_entry);
IF on_off = 1 THEN
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256 WHERE `entry`= npc_entry;
END IF;
IF on_off = 0 THEN
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`= npc_entry;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_attackable_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_attackable_bylist`(IN npc_entry TEXT, IN on_off BOOLEAN)
BEGIN
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
IF on_off = 1 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
IF on_off = 0 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_civilian` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_civilian`(IN npc_entry INT(10), IN on_off BOOLEAN)
BEGIN
CALL sp_error_entry('NPC',npc_entry);
IF on_off = 1 THEN
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`= npc_entry;
ELSEIF on_off = 0 THEN
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry`= npc_entry;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_civilian_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_civilian_bylist`(IN npc_entry TEXT, IN on_off BOOLEAN)
BEGIN
  
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
IF on_off = 1 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
IF on_off = 0 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_deadquest` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_deadquest`(IN npc_entry INT(10))
BEGIN
	DECLARE check_addon_exists INT;
	CALL `sp_error_entry`('NPC',npc_entry);
	UPDATE `creature` SET `MovementType`=0,`spawndist`=0,`Deathstate`=0 WHERE `id`=npc_entry;
	UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=npc_entry;
    
	
	SET check_addon_exists = (SELECT COUNT(`entry`) FROM `creature_template_addon` WHERE `entry`=npc_entry);
	IF check_addon_exists > 0 THEN 
		UPDATE `creature_template_addon` SET `bytes1`=7 WHERE `entry`=npc_entry;
	ELSE 
		INSERT INTO `creature_template_addon` VALUES (npc_entry,0,0,7,0,0, '');
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_faction` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_faction`(IN npc_entry INT(10), factionA INT(10), factionH INT(10))
BEGIN
	CALL `sp_error_entry`('NPC',npc_entry);
	UPDATE `creature_template` SET `faction_A`=IFNULL(factionA,`faction_A`),`faction_H`=IFNULL(factionH,`faction_A`) WHERE `entry`=npc_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_faction_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_faction_bylist`(IN entry_list LONGTEXT, factionA INT(10), factionH INT(10))
BEGIN
	CALL `sp_set_entry_list` (entry_list,null);
	UPDATE `creature_template` SET `faction_A`=IFNULL(factionA,`faction_A`),`faction_H`=IFNULL(factionH,`faction_A`) WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootable`(IN npc_entry INT(10), IN on_off BOOLEAN)
BEGIN
CALL sp_error_entry('NPC',npc_entry);
IF on_off = 1 THEN
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~1 WHERE `entry`= npc_entry;
ELSEIF on_off = 0 THEN
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|1 WHERE `entry`= npc_entry;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootable_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootable_bylist`(IN npc_entry TEXT, IN on_off BOOLEAN)
BEGIN
  
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
IF on_off = 1 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~1 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
IF on_off = 0 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|1 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootid` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootid`(IN npcEntry MEDIUMINT(5),IN lootID MEDIUMINT(5))
BEGIN    
    CALL `sp_error_entry`('NPC',npcEntry);
    UPDATE `creature_template` SET `lootid`=IFNULL(lootID,npcEntry) WHERE `entry`=npcEntry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootid_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootid_bylist`(IN entryList LONGTEXT,IN lootID MEDIUMINT(5))
BEGIN    
    CALL `sp_set_entry_list` (entryList,null);
    UPDATE `creature_template` SET `lootid`=IFNULL(lootID,`entry`) WHERE `entry` IN (SELECT DISTINCT * FROM `tdb_entry_list`);
    
    DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootid_bytable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootid_bytable`(IN lootID MEDIUMINT(5))
BEGIN    
    UPDATE `creature_template` SET `lootid`=IFNULL(lootID,`entry`) WHERE `entry` IN (SELECT DISTINCT * FROM `tdb_entry_list`);
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_path` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_path`(IN npc_guid INT(10),OUT path INT(10))
BEGIN
	CALL `sp_error_guid`('NPC',npc_guid);
	
	SELECT npc_guid*10 INTO path;
	UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid`=npc_guid;
	IF (SELECT COUNT(*) FROM `creature_addon` WHERE `guid`=npc_guid) > 0 THEN
		UPDATE `creature_addon` SET `path_id`=path WHERE `guid`=npc_guid;
	ELSE
		INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (npc_guid,path);
	END IF;
	
	DELETE FROM `waypoint_data` WHERE `id`=path;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_selectable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_selectable`(IN npc_entry INT(10),IN on_off BOOLEAN)
BEGIN
	CALL `sp_error_entry`('NPC',npc_entry);
	IF on_off=1 THEN
		UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry`=npc_entry;
	ELSE
		UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`=npc_entry;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_selectable_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_selectable_bylist`(IN entry_list LONGTEXT,IN on_off BOOLEAN)
BEGIN
	CALL `sp_set_entry_list` (entry_list,null);
	IF on_off=1 THEN
		UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	ELSE
		UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	END IF;
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_targetable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_targetable`(IN npc_entry INT(10), IN on_off BOOLEAN)
BEGIN
CALL sp_error_entry('NPC',npc_entry);
IF on_off = 1 THEN
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry`= npc_entry;
ELSEIF on_off = 0 THEN
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`= npc_entry;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_targetable_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_targetable_bylist`(IN npc_entry TEXT, IN on_off BOOLEAN)
BEGIN
  
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
IF on_off = 1 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
IF on_off = 0 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`=  min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_trigger` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_trigger`(IN npc_entry INT(10),IN on_off BOOLEAN)
BEGIN
	CALL `sp_error_entry`('NPC',npc_entry);
	IF on_off=1 THEN
		UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id`=npc_entry;
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`unit_flags`=`unit_flags`|33554432  WHERE `entry`=npc_entry;        
	ELSE
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2,`unit_flags`=`unit_flags`&~33554432  WHERE `entry`=npc_entry; 
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_trigger_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_trigger_bylist`(IN entry_list LONGTEXT,IN on_off BOOLEAN)
BEGIN
	CALL `sp_set_entry_list` (entry_list,null);
	IF on_off=1 THEN
		UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`unit_flags`=`unit_flags`|33554432  WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);        
	ELSE
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2,`unit_flags`=`unit_flags`&~33554432  WHERE `entry` IN (SELECT * FROM `tdb_entry_list`); 
	END IF;
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_quest_level` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_quest_level`(IN quest_entry INT(10), IN quest_level INT(10))
BEGIN
CALL `sp_error_entry`('QUEST',quest_entry);
UPDATE `quest_template` SET `MinLevel`= quest_level WHERE `entry`= quest_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_quest_next` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_quest_next`(IN quest_entry INT(10), IN next_quest INT(10))
BEGIN
CALL `sp_error_entry`('QUEST',quest_entry);
UPDATE `quest_template` SET `NextQuestId`= next_quest WHERE `entry`= quest_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_quest_previous` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_quest_previous`(IN quest_entry INT(10), IN prev_quest INT(10))
BEGIN
CALL `sp_error_entry`('QUEST',quest_entry);
UPDATE `quest_template` SET `PrevQuestId`= prev_quest WHERE `entry`= quest_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_spell_target` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_spell_target`(IN target_type VARCHAR(10),IN target_entry INT(11),IN spell_id INT(11))
BEGIN
    CASE UCASE(target_type)
        WHEN 'GO' THEN BEGIN
	    IF target_entry > 0 THEN 
		CALL `sp_error_entry`('GO',target_entry); 
	    END IF;
            DELETE FROM `spell_script_target` WHERE `entry`=spell_id;
            INSERT INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES (spell_id,0,target_entry);
        END;
        WHEN 'NPC' THEN BEGIN
	    IF target_entry > 0 THEN 
		CALL `sp_error_entry`('NPC',target_entry); 
	    END IF;
            DELETE FROM `spell_script_target` WHERE `entry`=spell_id;
            INSERT INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES (spell_id,1,target_entry);
        END;
        WHEN 'DEAD_NPC' THEN BEGIN
	    CALL `sp_error_entry`('NPC',target_entry);
            DELETE FROM `spell_script_target` WHERE `entry`=spell_id;
            INSERT INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES (spell_id,2,target_entry);
        END;
        WHEN 'MINION' THEN BEGIN
	    CALL `sp_error_entry`('NPC',target_entry);
            DELETE FROM `spell_script_target` WHERE `entry`=spell_id;
            INSERT INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES (spell_id,3,target_entry);
        END;
        ELSE CALL INCORRECT_TARGET_TYPE;
    END CASE;
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

