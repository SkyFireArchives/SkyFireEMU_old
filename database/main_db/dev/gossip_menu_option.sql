
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
DROP TABLE IF EXISTS `gossip_menu_option`;
CREATE TABLE `gossip_menu_option` (
  `menu_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `option_icon` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_text` text,
  `option_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `npc_option_npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  `action_menu_id` int(11) unsigned NOT NULL DEFAULT '0',
  `action_poi_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_script_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `box_coded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `box_money` int(11) unsigned NOT NULL DEFAULT '0',
  `box_text` text,
  PRIMARY KEY (`menu_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `gossip_menu_option` WRITE;
/*!40000 ALTER TABLE `gossip_menu_option` DISABLE KEYS */;
INSERT INTO `gossip_menu_option` VALUES (0,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,''),(0,1,1,'I want to browse your goods',3,128,0,0,0,0,0,''),(0,2,2,'I want to travel fast',4,8192,0,0,0,0,0,''),(0,3,3,'Train me!',5,16,0,0,0,0,0,''),(0,4,4,'Bring me back to life',6,16384,0,0,0,0,0,''),(0,5,4,'Bring me back to life',7,32768,0,0,0,0,0,''),(0,6,5,'Make this inn my home',8,65536,0,0,0,0,0,''),(0,7,6,'Show me my bank',9,131072,0,0,0,0,0,''),(0,8,7,'How do I form a guild?',10,262144,0,0,0,0,0,''),(0,9,8,'I want to create a guild crest',11,524288,0,0,0,0,0,''),(0,10,9,'I want to join the Battle Ground',12,1048576,0,0,0,0,0,''),(0,11,6,'Auction!',13,2097152,0,0,0,0,0,''),(0,12,0,'I\'d like to stable my pet here',14,4194304,0,0,0,0,0,''),(0,13,1,'I want to browse your goods',15,4096,0,0,0,0,0,''),(0,14,2,'I wish to unlearn my talents',16,16,0,0,0,0,0,''),(0,15,2,'I wish to unlearn my pet\'s skills',17,16,0,0,0,0,0,''),(0,16,2,'Purchase a Dual Talent Specialization',18,16,0,0,0,0,100000,'Are you sure you wish to purchase a Dual Talent Specialization?'),(0,17,0,'GOSSIP_OPTION_OUTDOORPVP',19,536870912,0,0,0,0,0,''),(421,7,0,'Herbalism',1,1,427,40,0,0,0,''),(21167,1,0,'How do the Argent Crusade riders fight?',1,1,21168,0,0,0,0,NULL),(421,6,0,'Fishing',1,1,443,46,0,0,0,''),(21000,1,0,'Where is Elder Pamuya?',1,1,21117,0,0,0,0,NULL),(21000,2,0,'Where is Elder Sardis?',1,1,21124,0,0,0,0,NULL),(421,5,0,'First Aid',1,1,426,45,0,0,0,''),(21001,1,0,'Where is Elder Lunaro?',1,1,21103,0,0,0,0,NULL),(21001,2,0,'Where is Elder Whurain?',1,1,21144,0,0,0,0,NULL),(21001,3,0,'Where is Elder Killas?',1,1,21102,0,0,0,0,NULL),(21001,4,0,'Where is Elder Tauros?',1,1,21139,0,0,0,0,NULL),(421,4,0,'Engineering',1,1,425,44,0,0,0,''),(21002,1,0,'Where is Elder Starsong?',1,1,21133,0,0,0,0,NULL),(421,3,0,'Enchanting',1,1,444,43,0,0,0,''),(21003,1,0,'Where is Elder Bladeswift?',1,1,21080,0,0,0,0,NULL),(21003,2,0,'Where is Elder Skygleam?',1,1,21127,0,0,0,0,NULL),(421,2,0,'Cooking',1,1,424,42,0,0,0,''),(21004,1,0,'Where is Elder Primestone?',1,1,21118,0,0,0,0,NULL),(21004,2,0,'Where is Elder Thunderhorn?',1,1,21141,0,0,0,0,NULL),(421,1,0,'Blacksmithing',1,1,423,41,0,0,0,''),(21005,1,0,'Where is Elder Bladeleaf?',1,1,21078,0,0,0,0,NULL),(21005,2,0,'Where is Elder Bronzebeard?',1,1,21084,0,0,0,0,NULL),(21005,3,0,'Where is Elder Hammershout?',1,1,21096,0,0,0,0,NULL),(21005,4,0,'Where is Elder Skygleam?',1,1,21127,0,0,0,0,NULL),(21005,5,0,'Where is Elder Starweave?',1,1,21134,0,0,0,0,NULL),(421,0,0,'Alchemy',1,1,422,40,0,0,0,''),(21006,1,0,'Where is Elder High Mountain?',1,1,21097,0,0,0,0,NULL),(21006,2,0,'Where is Elder Moonwarden?',1,1,21107,0,0,0,0,NULL),(21006,3,0,'Where is Elder Wheathoof?',1,1,21143,0,0,0,0,NULL),(21006,4,0,'Where is Elder Windtotem?',1,1,21147,0,0,0,0,NULL),(401,8,0,'Warrior',1,1,404,39,0,0,0,''),(21007,1,0,'Where is Elder Pamuya?',1,1,21117,0,0,0,0,NULL),(21007,2,0,'Where is Elder Wanikaya?',1,1,21142,0,0,0,0,NULL),(21007,3,0,'Where is Elder Sandrene?',1,1,21123,0,0,0,0,NULL),(21007,4,0,'Where is Elder Morthie?',1,1,21110,0,0,0,0,NULL),(401,7,0,'Warlock',1,1,409,38,0,0,0,''),(21008,1,0,'Where is Elder Nightwind?',1,1,21112,0,0,0,0,NULL),(21008,2,0,'Where is Elder Stonespire?',1,1,21137,0,0,0,0,NULL),(401,6,0,'Shaman',1,1,8164,37,0,0,0,''),(21009,1,0,'Where is Elder Bladeswift?',1,1,21080,0,0,0,0,NULL),(21009,2,0,'Where is Elder Hammershout?',1,1,21096,0,0,0,0,NULL),(21009,3,0,'Where is Elder Goldwell?',1,1,21092,0,0,0,0,NULL),(21009,4,0,'Where is Elder Ironband?',1,1,21100,0,0,0,0,NULL),(401,5,0,'Rogue',1,1,403,36,0,0,0,''),(21010,1,0,'Where is Elder Jarten?',1,1,21101,0,0,0,0,NULL),(21010,2,0,'Where is Elder Lunaro?',1,1,21103,0,0,0,0,NULL),(21010,3,0,'Where is Elder Whurain?',1,1,21144,0,0,0,0,NULL),(401,4,0,'Priest',1,1,406,35,0,0,0,''),(21011,1,0,'Where is Elder Darkhorn?',1,1,21012,0,0,0,0,NULL),(21011,2,0,'Where is Elder Graveborn?',1,1,21093,0,0,0,0,NULL),(21011,3,0,'Where is Elder Ironband?',1,1,21100,0,0,0,0,NULL),(21011,4,0,'Where is Elder Moonstrike?',1,1,21106,0,0,0,0,NULL),(21011,5,0,'Where is Elder Wheathoof?',1,1,21143,0,0,0,0,NULL),(401,3,0,'Paladin',1,1,407,35,0,0,0,''),(21012,1,0,'Where is Elder Darkcore?',1,1,21086,0,0,0,0,NULL),(21012,2,0,'Where is Elder Ironband?',1,1,21100,0,0,0,0,NULL),(21012,3,0,'Where is Elder Wheathoof?',1,1,21143,0,0,0,0,NULL),(21012,4,0,'Where is Elder Runetotem?',1,1,21122,0,0,0,0,NULL),(21012,5,0,'Where is Elder Windtotem?',1,1,21147,0,0,0,0,NULL),(401,2,0,'Mage',1,1,402,34,0,0,0,''),(21013,1,0,'Where is Elder Rumblerock?',1,1,21121,0,0,0,0,NULL),(401,1,0,'Hunter',1,1,408,33,0,0,0,''),(21014,1,0,'Where is Elder Ragetotem?',1,1,21119,0,0,0,0,NULL),(21014,2,0,'Where is Elder Skyseer?',1,1,21128,0,0,0,0,NULL),(21014,3,0,'Where is Elder Thunderhorn?',1,1,21141,0,0,0,0,NULL),(21014,4,0,'Where is Elder Wildmane?',1,1,21145,0,0,0,0,NULL),(401,0,0,'Druid',1,1,405,32,0,0,0,''),(21015,1,0,'Where is Elder Yurauk?',1,1,21149,0,0,0,0,NULL),(21015,2,0,'Where is Elder Stonebeard?',1,1,21135,0,0,0,0,NULL),(21015,3,0,'Where is Elder Muraco?',1,1,21111,0,0,0,0,NULL),(21015,4,0,'Where is Elder Graymane?',1,1,21094,0,0,0,0,NULL),(435,15,0,'Profession Trainer',1,1,421,0,0,0,0,''),(21016,1,0,'Where is Elder Snowcrown?',1,1,21130,0,0,0,0,NULL),(21016,2,0,'Where is Elder Windrun?',1,1,21146,0,0,0,0,NULL),(435,14,0,'Class Trainer',1,1,401,0,0,0,0,''),(21017,1,0,'Where is Elder Bronzebeard?',1,1,21084,0,0,0,0,NULL),(21017,2,0,'Where is Elder Ironband?',1,1,21100,0,0,0,0,NULL),(21017,3,0,'Where is Elder Silvervein?',1,1,21125,0,0,0,0,NULL),(435,12,0,'Barber',1,1,10011,30,0,0,0,''),(21018,1,0,'Where is Elder Darkcore?',1,1,21086,0,0,0,0,NULL),(21018,2,0,'Where is Elder Meadowrun?',1,1,21104,0,0,0,0,NULL),(21018,3,0,'Where is Elder Moonstrike?',1,1,21106,0,0,0,0,NULL),(21018,4,0,'Where is Elder Obsidian?',1,1,21115,0,0,0,0,NULL),(21018,5,0,'Where is Elder Snowcrown?',1,1,21130,0,0,0,0,NULL),(435,11,0,'Battlemaster',1,1,8222,29,0,0,0,''),(21019,1,0,'Where is Elder Ohanzee?',1,1,21116,0,0,0,0,NULL),(21019,2,0,'Where is Elder Stonebeard?',1,1,21135,0,0,0,0,NULL),(21019,3,0,'Where is Elder Fargal?',1,1,21090,0,0,0,0,NULL),(21019,4,0,'Where is Elder Killas?',1,1,21102,0,0,0,0,NULL),(21019,5,0,'Where is Elder Tauros?',1,1,21139,0,0,0,0,NULL),(21019,6,0,'Where is Elder Yurauk?',1,1,21149,0,0,0,0,NULL),(21019,7,0,'Where is Elder Thoim?',1,1,21140,0,0,0,0,NULL),(21020,1,0,'Where is Elder Mistwalker?',1,1,21105,0,0,0,0,NULL),(21020,2,0,'Where is Elder Morningdew?',1,1,21109,0,0,0,0,NULL),(21020,3,0,'Where is Elder Splitrock?',1,1,21131,0,0,0,0,NULL),(435,10,0,'Officers\' Lounge',1,1,5883,28,0,0,0,''),(21021,1,0,'Where is Elder Bladeswift?',1,1,21080,0,0,0,0,NULL),(21021,2,0,'Where is Elder Bronzebeard?',1,1,21084,0,0,0,0,NULL),(21021,3,0,'Where is Elder Rumblerock?',1,1,21121,0,0,0,0,NULL),(21021,4,0,'Where is Elder Stormbrow?',1,1,21138,0,0,0,0,NULL),(435,9,0,'Weapons Trainer',1,1,3721,27,0,0,0,''),(21022,1,0,'Where is Elder Bloodhoof?',1,1,21081,0,0,0,0,NULL),(21022,2,0,'Where is Elder Moonwarden?',1,1,21107,0,0,0,0,NULL),(21022,3,0,'Where is Elder Morningdew?',1,1,21109,0,0,0,0,NULL),(21022,4,0,'Where is Elder Runetotem?',1,1,21122,0,0,0,0,NULL),(21022,5,0,'Where is Elder Windtotem?',1,1,21147,0,0,0,0,NULL),(435,8,0,'Stable Master',1,1,4925,26,0,0,0,''),(21023,1,0,'Where is Elder Moonstrike?',1,1,21106,0,0,0,0,NULL),(435,7,0,'Locksmith',1,1,10260,25,0,0,0,''),(21024,1,0,'Where is Elder Arp?',1,1,21075,0,0,0,0,NULL),(21024,2,0,'Where is Elder Pamuya?',1,1,21117,0,0,0,0,NULL),(21024,3,0,'Where is Elder Sardis?',1,1,21124,0,0,0,0,NULL),(435,6,0,'Guild Master',1,1,383,24,0,0,0,''),(21025,1,0,'Where is Elder Bronzebeard?',1,1,21084,0,0,0,0,NULL),(21025,2,0,'Where is Elder Goldwell?',1,1,21092,0,0,0,0,NULL),(21025,3,0,'Where is Elder Morndeep?',1,1,21108,0,0,0,0,NULL),(21025,4,0,'Where is Elder Silvervein?',1,1,21125,0,0,0,0,NULL),(21025,5,0,'Where is Elder Stonefort?',1,1,21136,0,0,0,0,NULL),(435,5,0,'Gryphon Master',1,1,382,23,0,0,0,''),(21026,1,0,'Where is Elder Chogan\'gada?',1,1,21085,0,0,0,0,NULL),(21026,2,0,'Where is Elder Lunaro?',1,1,21103,0,0,0,0,NULL),(21026,3,0,'Where is Elder Whurain?',1,1,21144,0,0,0,0,NULL),(435,4,0,'The Inn',1,1,3126,22,0,0,0,''),(21027,1,0,'Where is Elder Ohanzee?',1,1,21116,0,0,0,0,NULL),(21027,2,0,'Where is Elder Tauros?',1,1,21139,0,0,0,0,NULL),(21027,3,0,'Where is Elder Nurgen?',1,1,21114,0,0,0,0,NULL),(21027,4,0,'Where is Elder Graymane?',1,1,21094,0,0,0,0,NULL),(435,3,0,'Deeprun Tram',1,1,3081,21,0,0,0,''),(21028,1,0,'Where is Elder Jarten?',1,1,21101,0,0,0,0,NULL),(21028,2,0,'Where is Elder Chogan\'gada?',1,1,21085,0,0,0,0,NULL),(21028,3,0,'Where is Elder Skywarden?',1,1,21129,0,0,0,0,NULL),(21028,4,0,'Where is Elder Beldak?',1,1,21076,0,0,0,0,NULL),(21028,5,0,'Where is Elder Killas?',1,1,21102,0,0,0,0,NULL),(21029,1,0,'Where is Elder Graveborn?',1,1,21093,0,0,0,0,NULL),(21029,2,0,'Where is Elder Moonstrike?',1,1,21106,0,0,0,0,NULL),(21029,3,0,'Where is Elder Snowcrown?',1,1,21130,0,0,0,0,NULL),(21029,4,0,'Where is Elder Windrun?',1,1,21146,0,0,0,0,NULL),(435,2,0,'Stormwind Harbor',1,1,9767,20,0,0,0,''),(21030,1,0,'Where is Elder Grimtotem?',1,1,21095,0,0,0,0,NULL),(21030,2,0,'Where is Elder Morningdew?',1,1,21109,0,0,0,0,NULL),(21030,3,0,'Where is Elder Splitrock?',1,1,21131,0,0,0,0,NULL),(21031,1,0,'Where is Elder Darkcore?',1,1,21086,0,0,0,0,NULL),(21031,2,0,'Where is Elder Graveborn?',1,1,21093,0,0,0,0,NULL),(21031,3,0,'Where is Elder Highpeak?',1,1,21098,0,0,0,0,NULL),(21031,4,0,'Where is Elder Meadowrun?',1,1,21104,0,0,0,0,NULL),(21031,5,0,'Where is Elder Obsidian?',1,1,21115,0,0,0,0,NULL),(21031,6,0,'Where is Elder Snowcrown?',1,1,21130,0,0,0,0,NULL),(21031,7,0,'Where is Elder Windrun?',1,1,21146,0,0,0,0,NULL),(435,1,0,'Bank of Stormwind',1,1,265,19,0,0,0,''),(21032,1,0,'Where is Elder Bloodhoof?',1,1,21081,0,0,0,0,NULL),(21032,2,0,'Where is Elder High Mountain?',1,1,21097,0,0,0,0,NULL),(21032,3,0,'Where is Elder Morningdew?',1,1,21109,0,0,0,0,NULL),(21032,4,0,'Where is Elder Runetotem?',1,1,21122,0,0,0,0,NULL),(21032,5,0,'Where is Elder Windtotem?',1,1,21147,0,0,0,0,NULL),(435,0,0,'Auction House',1,1,3102,18,0,0,0,''),(21033,1,0,'Where is Elder Ironband?',1,1,21100,0,0,0,0,NULL),(21034,1,0,'Where is Elder Grimtotem?',1,1,21095,0,0,0,0,NULL),(21034,2,0,'Where is Elder High Mountain?',1,1,21097,0,0,0,0,NULL),(21034,3,0,'Where is Elder Mistwalker?',1,1,21105,0,0,0,0,NULL),(21034,4,0,'Where is Elder Moonwarden?',1,1,21107,0,0,0,0,NULL),(21034,5,0,'Where is Elder Skyseer?',1,1,21128,0,0,0,0,NULL),(21034,6,0,'Where is Elder Windtotem?',1,1,21147,0,0,0,0,NULL),(21035,1,0,'Where is Elder Nurgen?',1,1,21114,0,0,0,0,NULL),(21035,2,0,'Where is Elder Thoim?',1,1,21140,0,0,0,0,NULL),(21035,3,0,'Where is Elder Skywarden?',1,1,21129,0,0,0,0,NULL),(21035,4,0,'Where is Elder Pamuya?',1,1,21117,0,0,0,0,NULL),(21035,5,0,'Where is Elder Whurain?',1,1,21144,0,0,0,0,NULL),(9776,0,0,'I\'d like to take a flight around Stormwind Harbor.',1,1,0,0,977600,0,0,NULL),(21036,1,0,'Where is Elder Ohanzee?',1,1,21116,0,0,0,0,NULL),(21036,2,0,'Where is Elder Stonebeard?',1,1,21135,0,0,0,0,NULL),(21036,3,0,'Where is Elder Fargal?',1,1,21090,0,0,0,0,NULL),(21036,4,0,'Where is Elder Killas?',1,1,21102,0,0,0,0,NULL),(21036,5,0,'Where is Elder Graymane?',1,1,21094,0,0,0,0,NULL),(21036,6,0,'Where is Elder Yurauk?',1,1,21149,0,0,0,0,NULL),(21037,1,0,'Where is Elder Brightspear?',1,1,21083,0,0,0,0,NULL),(21037,2,0,'Where is Elder Riversong?',1,1,21120,0,0,0,0,NULL),(21037,3,0,'Where is Elder Skygleam?',1,1,21127,0,0,0,0,NULL),(21037,4,0,'Where is Elder Starweave?',1,1,21134,0,0,0,0,NULL),(21037,5,0,'Where is Elder Stonespire?',1,1,21137,0,0,0,0,NULL),(9626,0,0,'Teleport me to Amber Ledge, please.',1,1,0,0,962600,0,0,''),(21038,1,0,'Where is Elder Igasho?',1,1,21099,0,0,0,0,NULL),(21038,2,0,'Where is Elder Arp?',1,1,21075,0,0,0,0,NULL),(21038,3,0,'Where is Elder Sardis?',1,1,21124,0,0,0,0,NULL),(21039,1,0,'Where is Elder Fargal?',1,1,21090,0,0,0,0,NULL),(21039,2,0,'Where is Elder Stonebeard?',1,1,21135,0,0,0,0,NULL),(21039,3,0,'Where is Elder Graymane?',1,1,21094,0,0,0,0,NULL),(21039,4,0,'Where is Elder Yurauk?',1,1,21149,0,0,0,0,NULL),(9472,1,2,'May I use a drake to fly elsewhere?',4,8192,0,0,0,0,0,''),(21040,1,0,'Where is Elder Graveborn?',1,1,21093,0,0,0,0,NULL),(21040,2,0,'Where is Elder Highpeak?',1,1,21098,0,0,0,0,NULL),(21040,3,0,'Where is Elder Moonstrike?',1,1,21106,0,0,0,0,NULL),(21041,1,0,'Where is Elder Stonebeard?',1,1,21135,0,0,0,0,NULL),(21041,2,0,'Where is Elder Muraco?',1,1,21111,0,0,0,0,NULL),(21041,3,0,'Where is Elder Yurauk?',1,1,21149,0,0,0,0,NULL),(9472,0,0,'I\'d like passage to the Transitus Shield.',1,1,0,0,947200,0,0,''),(21042,1,0,'Where is Elder Arp?',1,1,21075,0,0,0,0,NULL),(21042,2,0,'Where is Elder Sardis?',1,1,21124,0,0,0,0,NULL),(21042,3,0,'Where is Elder Bluewolf?',1,1,21082,0,0,0,0,NULL),(21043,1,0,'Where is Elder Bladesing?',1,1,21079,0,0,0,0,NULL),(21043,2,0,'Where is Elder Thunderhorn?',1,1,21141,0,0,0,0,NULL),(10616,0,0,'Mount the Hippogryph and prepare for battle!',1,1,0,0,1061600,0,0,NULL),(21044,1,0,'Where is Elder Dreamseer?',1,1,21089,0,0,0,0,NULL),(21044,2,0,'Where is Elder Skyseer?',1,1,21128,0,0,0,0,NULL),(21044,3,0,'Where is Elder Thunderhorn?',1,1,21141,0,0,0,0,NULL),(21044,4,0,'Where is Elder Wildmane?',1,1,21145,0,0,0,0,NULL),(21045,1,0,'Where is Elder Nightwind?',1,1,21112,0,0,0,0,NULL),(21045,2,0,'Where is Elder Skygleam?',1,1,21127,0,0,0,0,NULL),(21045,3,0,'Where is Elder Starweave?',1,1,21134,0,0,0,0,NULL),(21045,4,0,'Where is Elder Stonespire?',1,1,21137,0,0,0,0,NULL),(21046,1,0,'Where is Elder Dawnstrider?',1,1,21088,0,0,0,0,NULL),(21046,2,0,'Where is Elder Hammershout?',1,1,21096,0,0,0,0,NULL),(21046,3,0,'Where is Elder Stormbrow?',1,1,21138,0,0,0,0,NULL),(21046,4,0,'Where is Elder Winterhoof?',1,1,21148,0,0,0,0,NULL),(9182,1,0,'Wait, back up. What was that last thing you said?',1,1,9181,0,0,0,0,''),(21047,1,0,'Where is Elder Darkhorn?',1,1,21087,0,0,0,0,NULL),(21047,2,0,'Where is Elder High Mountain?',1,1,21097,0,0,0,0,NULL),(21047,3,0,'Where is Elder Moonwarden?',1,1,21107,0,0,0,0,NULL),(21047,4,0,'Where is Elder Windtotem?',1,1,21147,0,0,0,0,NULL),(21048,1,0,'Where is Elder Wanikaya?',1,1,21142,0,0,0,0,NULL),(21048,2,0,'Where is Elder Bluewolf?',1,1,21082,0,0,0,0,NULL),(21048,3,0,'Where is Elder Arp?',1,1,21075,0,0,0,0,NULL),(9182,0,0,'Thank you for telling me your story.',1,1,0,0,918200,0,0,''),(21049,1,0,'Where is Elder Arp?',1,1,21075,0,0,0,0,NULL),(21049,2,0,'Where is Elder Pamuya?',1,1,21117,0,0,0,0,NULL),(21049,3,0,'Where is Elder Igasho?',1,1,21099,0,0,0,0,NULL),(21049,4,0,'Where is Elder Northal?',1,1,21113,0,0,0,0,NULL),(21050,1,0,'Where is Elder Goldwell?',1,1,21092,0,0,0,0,NULL),(21050,2,0,'Where is Elder Ironband?',1,1,21100,0,0,0,0,NULL),(21051,1,0,'Where is Elder Starsong?',1,1,21133,0,0,0,0,NULL),(21051,2,0,'Where is Elder Stormbrow?',1,1,21138,0,0,0,0,NULL),(21051,3,0,'Where is Elder Winterhoof?',1,1,21148,0,0,0,0,NULL),(9181,1,0,'Wait, back up. What was that last thing you said?',1,1,9180,0,0,0,0,''),(21052,1,0,'Where is Elder Bladeleaf?',1,1,21078,0,0,0,0,NULL),(21052,2,0,'Where is Elder Bladeswift?',1,1,21080,0,0,0,0,NULL),(21052,3,0,'Where is Elder Nightwind?',1,1,21112,0,0,0,0,NULL),(21052,4,0,'Where is Elder Riversong?',1,1,21120,0,0,0,0,NULL),(9181,0,0,'Go on.',1,1,9182,0,0,0,0,''),(21053,1,0,'Where is Elder Dreamseer?',1,1,21089,0,0,0,0,NULL),(21053,2,0,'Where is Elder Morningdew?',1,1,21109,0,0,0,0,NULL),(21053,3,0,'Where is Elder Ragetotem?',1,1,21119,0,0,0,0,NULL),(21053,4,0,'Where is Elder Wildmane?',1,1,21145,0,0,0,0,NULL),(21054,1,0,'Where is Elder Morthie?',1,1,21110,0,0,0,0,NULL),(21054,2,0,'Where is Elder Thoim?',1,1,21140,0,0,0,0,NULL),(21054,3,0,'Where is Elder Nurgen?',1,1,21114,0,0,0,0,NULL),(21054,4,0,'Where is Elder Whurain?',1,1,21144,0,0,0,0,NULL),(21055,1,0,'Where is Elder Graveborn?',1,1,21093,0,0,0,0,NULL),(21055,2,0,'Where is Elder Farwhisper?',1,1,21091,0,0,0,0,NULL),(21055,3,0,'Where is Elder Meadowrun?',1,1,21104,0,0,0,0,NULL),(21055,4,0,'Where is Elder Moonstrike?',1,1,21106,0,0,0,0,NULL),(21055,5,0,'Where is Elder Windrun?',1,1,21146,0,0,0,0,NULL),(9180,1,0,'Wait, back up. What was that last thing you said?',1,1,9179,0,0,0,0,''),(21056,1,0,'Where is Elder Grimtotem?',1,1,21095,0,0,0,0,NULL),(21056,2,0,'Where is Elder Mistwalker?',1,1,21105,0,0,0,0,NULL),(9180,0,0,'Go on.',1,1,9181,0,0,0,0,''),(21057,1,0,'Where is Elder Starsong?',1,1,21133,0,0,0,0,NULL),(21057,2,0,'Where is Elder Winterhoof?',1,1,21148,0,0,0,0,NULL),(21058,1,0,'Where is Elder Bellowrage?',1,1,21077,0,0,0,0,NULL),(21058,2,0,'Where is Elder Starglade?',1,1,21132,0,0,0,0,NULL),(21058,3,0,'Where is Elder Skychaser?',1,1,21126,0,0,0,0,NULL),(21058,4,0,'Where is Elder Stormbrow?',1,1,21138,0,0,0,0,NULL),(21058,5,0,'Where is Elder Winterhoof?',1,1,21148,0,0,0,0,NULL),(21059,1,0,'Where is Elder Bladeswift?',1,1,21080,0,0,0,0,NULL),(21059,2,0,'Where is Elder Nightwind?',1,1,21112,0,0,0,0,NULL),(21059,3,0,'Where is Elder Riversong?',1,1,21120,0,0,0,0,NULL),(9179,1,0,'Wait, back up. What was that last thing you said?',1,1,9178,0,0,0,0,''),(21060,1,0,'Where is Elder Fargal?',1,1,21090,0,0,0,0,NULL),(21060,2,0,'Where is Elder Yurauk?',1,1,21149,0,0,0,0,NULL),(21060,3,0,'Where is Elder Muraco?',1,1,21111,0,0,0,0,NULL),(21060,4,0,'Where is Elder Graymane?',1,1,21094,0,0,0,0,NULL),(21060,5,0,'Where is Elder Tauros?',1,1,21139,0,0,0,0,NULL),(21060,6,0,'Where is Elder Ohanzee?',1,1,21116,0,0,0,0,NULL),(9179,0,0,'Go on.',1,1,9180,0,0,0,0,''),(21061,1,0,'Where is Elder Ironband?',1,1,21100,0,0,0,0,NULL),(21062,1,0,'Where is Elder Brightspear?',1,1,21083,0,0,0,0,NULL),(21062,2,0,'Where is Elder Nightwind?',1,1,21112,0,0,0,0,NULL),(21062,3,0,'Where is Elder Riversong?',1,1,21120,0,0,0,0,NULL),(21063,1,0,'Where is Elder Hammershout?',1,1,21096,0,0,0,0,NULL),(21063,2,0,'Where is Elder Rumblerock?',1,1,21121,0,0,0,0,NULL),(21063,3,0,'Where is Elder Skychaser?',1,1,21126,0,0,0,0,NULL),(21063,4,0,'Where is Elder Starsong?',1,1,21133,0,0,0,0,NULL),(9178,1,0,'Wait, back up. What was that last thing you said?',1,1,9177,0,0,0,0,''),(21064,1,0,'Where is Elder Lunaro?',1,1,21103,0,0,0,0,NULL),(21064,2,0,'Where is Elder Ohanzee?',1,1,21116,0,0,0,0,NULL),(21064,3,0,'Where is Elder Skywarden?',1,1,21129,0,0,0,0,NULL),(21064,4,0,'Where is Elder Beldak?',1,1,21076,0,0,0,0,NULL),(21064,5,0,'Where is Elder Killas?',1,1,21102,0,0,0,0,NULL),(21064,6,0,'Where is Elder Graymane?',1,1,21094,0,0,0,0,NULL),(21064,7,0,'Where is Elder Muraco?',1,1,21111,0,0,0,0,NULL),(9178,0,0,'Go on.',1,1,9179,0,0,0,0,''),(21065,1,0,'Where is Elder Nurgen?',1,1,21114,0,0,0,0,NULL),(21065,2,0,'Where is Elder Morthie?',1,1,21110,0,0,0,0,NULL),(21065,3,0,'Where is Elder Skywarden?',1,1,21129,0,0,0,0,NULL),(21065,4,0,'Where is Elder Whurain?',1,1,21144,0,0,0,0,NULL),(21066,1,0,'Where is Elder Bladesing?',1,1,21079,0,0,0,0,NULL),(21066,2,0,'Where is Elder Dreamseer?',1,1,21089,0,0,0,0,NULL),(21066,3,0,'Where is Elder Primestone?',1,1,21118,0,0,0,0,NULL),(21066,4,0,'Where is Elder Ragetotem?',1,1,21119,0,0,0,0,NULL),(21066,5,0,'Where is Elder Wildmane?',1,1,21145,0,0,0,0,NULL),(21067,1,0,'Where is Elder Sandrene?',1,1,21123,0,0,0,0,NULL),(21067,2,0,'Where is Elder Bluewolf?',1,1,21082,0,0,0,0,NULL),(21067,3,0,'Where is Elder Arp?',1,1,21075,0,0,0,0,NULL),(21067,4,0,'Where is Elder Pamuya?',1,1,21117,0,0,0,0,NULL),(9177,1,0,'Wait, back up. What was that last thing you said?',1,1,9176,0,0,0,0,''),(21068,1,0,'Where is Elder Bloodhoof?',1,1,21081,0,0,0,0,NULL),(21068,2,0,'Where is Elder Darkcore?',1,1,21086,0,0,0,0,NULL),(21068,3,0,'Where is Elder Darkhorn?',1,1,21087,0,0,0,0,NULL),(21068,4,0,'Where is Elder Ironband?',1,1,21100,0,0,0,0,NULL),(21068,5,0,'Where is Elder Windtotem?',1,1,21147,0,0,0,0,NULL),(9177,0,0,'Go on.',1,1,9178,0,0,0,0,''),(21069,1,0,'Where is Elder Jarten?',1,1,21101,0,0,0,0,NULL),(21069,2,0,'Where is Elder Chogan\'gada?',1,1,21085,0,0,0,0,NULL),(21069,3,0,'Where is Elder Lunaro?',1,1,21103,0,0,0,0,NULL),(21069,4,0,'Where is Elder Beldak?',1,1,21076,0,0,0,0,NULL),(21069,5,0,'Where is Elder Killas?',1,1,21102,0,0,0,0,NULL),(21070,1,0,'Where is Elder Dreamseer?',1,1,21089,0,0,0,0,NULL),(21070,2,0,'Where is Elder Ragetotem?',1,1,21119,0,0,0,0,NULL),(21070,3,0,'Where is Elder Skyseer?',1,1,21128,0,0,0,0,NULL),(21070,4,0,'Where is Elder Thunderhorn?',1,1,21141,0,0,0,0,NULL),(21071,1,0,'Where is Elder Farwhisper?',1,1,21091,0,0,0,0,NULL),(21071,2,0,'Where is Elder Meadowrun?',1,1,21104,0,0,0,0,NULL),(21071,3,0,'Where is Elder Moonstrike?',1,1,21106,0,0,0,0,NULL),(21071,4,0,'Where is Elder Snowcrown?',1,1,21130,0,0,0,0,NULL),(9176,1,0,'Wait, back up. What was that last thing you said?',1,1,9175,0,0,0,0,''),(21072,1,0,'Where is Elder Bloodhoof?',1,1,21081,0,0,0,0,NULL),(21072,2,0,'Where is Elder Darkhorn?',1,1,21087,0,0,0,0,NULL),(21072,3,0,'Where is Elder High Mountain?',1,1,21097,0,0,0,0,NULL),(21072,4,0,'Where is Elder Moonwarden?',1,1,21107,0,0,0,0,NULL),(21072,5,0,'Where is Elder Morningdew?',1,1,21109,0,0,0,0,NULL),(21072,6,0,'Where is Elder Wheathoof?',1,1,21143,0,0,0,0,NULL),(21072,7,0,'Where is Elder Runetotem?',1,1,21122,0,0,0,0,NULL),(9176,0,0,'Go on.',1,1,9177,0,0,0,0,''),(21073,1,0,'Where is Elder Rumblerock?',1,1,21121,0,0,0,0,NULL),(21073,2,0,'Where is Elder Skychaser?',1,1,21126,0,0,0,0,NULL),(21073,3,0,'Where is Elder Starglade?',1,1,21132,0,0,0,0,NULL),(21073,4,0,'Where is Elder Starsong?',1,1,21133,0,0,0,0,NULL),(21074,1,0,'Where is Elder Fargal?',1,1,21090,0,0,0,0,NULL),(21074,2,0,'Where is Elder Stonebeard?',1,1,21135,0,0,0,0,NULL),(21074,3,0,'Where is Elder Nurgen?',1,1,21114,0,0,0,0,NULL),(21074,4,0,'Where is Elder Muraco?',1,1,21111,0,0,0,0,NULL),(421,9,0,'Leatherworking',1,1,428,47,0,0,0,''),(9772,0,3,'I am here for training.',5,16,0,0,0,0,0,NULL),(21188,1,0,'How do the Argent Crusade riders fight?',1,1,21189,0,0,0,0,NULL),(9175,1,0,'Wait, back up. What was that last thing you said?',1,1,9174,0,0,0,0,''),(9175,0,0,'Go on.',1,1,9176,0,0,0,0,''),(9174,0,0,'Go on.',1,1,9175,0,0,0,0,''),(21194,0,0,'I\'d like to stable my pet here',14,4194304,0,0,0,0,0,NULL),(21195,0,5,'Make this inn my home',8,65536,0,0,0,0,0,NULL),(21195,1,1,'I want to browse your goods',3,128,0,0,0,0,0,NULL),(9171,1,0,'Tell me your story again, Fizzcrank.',1,1,9174,0,0,0,0,''),(9171,0,0,'Tell me what\'s going on out here, Fizzcrank.',1,1,9174,0,0,0,0,''),(5461,0,8,'I want to create a guild crest.',11,524288,0,0,0,0,0,''),(5461,1,7,'How do I form a guild?',10,262144,0,0,0,0,0,''),(9832,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(5266,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,''),(5266,1,0,'What can other weapon masters teach?',1,1,5265,0,0,0,0,''),(5265,0,0,'Axe',1,1,8592,0,0,0,0,''),(5265,1,0,'Bow',1,1,8593,0,0,0,0,''),(5265,2,0,'Crossbow',1,1,8594,0,0,0,0,''),(5265,3,0,'Dagger',1,1,8595,0,0,0,0,''),(5265,4,0,'Fist Weapon',1,1,8596,0,0,0,0,''),(5265,5,0,'Polearm',1,1,8599,0,0,0,0,''),(5265,6,0,'Sword',1,1,8601,0,0,0,0,''),(5265,7,0,'Thrown',1,1,8602,0,0,0,0,''),(1017,0,3,'Train me.',5,16,0,0,0,0,0,''),(4326,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(441,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(1624,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(8767,0,0,'Where is the zeppelin to Undercity right now?',1,1,8765,0,0,0,0,''),(8767,1,0,'Where is the zeppelin to Grom\'gol right now?',1,1,8764,0,0,0,0,''),(9478,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9478,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(9299,3,1,'I wish to buy from you.',3,128,0,0,0,0,0,''),(9784,0,2,'Show me where I can fly.',4,8192,0,0,0,0,0,''),(9498,2,1,'I would like to browse your goods, Illusia.',3,128,0,0,0,0,0,''),(10128,0,0,'Guide me to the Fortress Graveyard.',1,1,0,0,0,0,0,''),(10128,1,0,'Guide me to the Sunken Ring Graveyard.',1,1,0,0,0,0,0,''),(10128,2,0,'Guide me to the Broken Temple Graveyard.',1,1,0,0,0,0,0,''),(10128,3,0,'Guide me to the Westspark Graveyard.',1,1,0,0,0,0,0,''),(10128,4,0,'Guide me to the Eastspark Graveyard.',1,1,0,0,0,0,0,''),(10128,5,0,'Guide me back to the Alliance landing camp. ',1,1,0,0,0,0,0,''),(9831,0,3,'I\'m here for cooking training.',5,16,0,0,0,0,0,''),(6598,0,1,'Redeem Battleground Marks for Honor.',3,128,0,0,0,0,0,''),(8452,0,9,'I would like to go to the battleground.',12,1048576,0,0,0,0,0,''),(10118,0,3,'Train me.',5,16,0,0,0,0,0,''),(10131,0,0,'Take me to the Caverns of Time.',1,1,0,0,10131,0,0,''),(9833,1,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(8731,0,3,'I would like to train.',5,16,0,0,0,0,0,''),(7691,0,3,'Train me.',5,16,0,0,0,0,0,''),(8104,0,9,'I would like to go to the battleground.',12,1048576,0,0,0,0,0,''),(7243,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(7288,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(7440,0,7,'How do I form a guild?',10,262144,0,0,0,0,0,''),(7440,1,8,'I want to create a guild crest.',11,524288,0,0,0,0,0,''),(8218,0,9,'I would like to fight in an arena.',12,1048576,0,0,0,0,0,''),(7494,0,3,'I seek training as a Blacksmith.',5,16,0,0,0,0,0,''),(8494,1,7,'How do I form an arena team?',10,262144,0,0,0,0,0,''),(4132,0,3,'Train me.',5,16,0,0,0,0,0,''),(10605,0,9,'I would like to go to the battleground.',12,1048576,0,0,0,0,0,''),(2383,0,3,'I am interested in warlock training.',5,16,0,0,0,0,0,''),(4282,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(4609,0,3,'I submit myself for further training my master.',5,16,0,0,0,0,0,''),(5269,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,''),(5108,0,7,'How do I form a guild?',10,262144,0,0,0,0,0,''),(1120,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(9768,0,0,'I would like to whisper my secret code to you to receive Tyrael\'s Hilt.',1,1,0,0,0,0,0,''),(2383,1,0,'I wish to unlearn my talents.',16,16,0,0,0,0,0,''),(5108,1,8,'I want to create a guild crest.',11,524288,0,0,0,0,0,''),(5269,1,0,'What can other weapon masters teach?',1,1,0,0,0,0,0,''),(348,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(10598,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(421,8,0,'Inscription',1,1,10010,13,0,0,0,''),(8833,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(8833,2,1,'What do you have to eat, Celeste?',3,128,0,0,0,0,0,''),(9546,0,2,'Where would you like to fly to?',4,8192,0,0,0,0,0,''),(9894,0,3,'Train me.',5,16,0,0,0,0,0,''),(8991,1,0,'Official Explorers\' League business, McGoyver. Take me to the Explorers\' League Outpost!',1,1,0,0,0,0,0,''),(7818,0,3,'I would like to train.',5,16,0,0,0,0,0,''),(10350,0,3,'Train me.',5,16,0,0,0,0,0,''),(7484,0,7,'How do I form a guild?',10,262144,0,0,0,0,0,''),(9798,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(4304,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(9307,0,0,'I have something else to ask you about.',1,1,9046,0,0,0,0,''),(9073,1,0,'Goods & Gear',1,1,9076,0,0,0,0,''),(9075,0,0,'The Maiden\'s Fancy',1,1,9073,0,0,0,0,''),(9073,0,0,'Food & Drink',1,1,9075,0,0,0,0,''),(9074,2,0,'Goods & Gear',1,1,9076,0,0,0,0,''),(9074,0,0,'The Maiden\'s Fancy',1,1,9073,0,0,0,0,''),(7937,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(8784,0,1,'I\'d like a drink.',3,128,0,0,0,0,0,''),(8227,0,1,'Alright, muffin man, show me your muffins!',3,128,0,0,0,0,0,''),(8785,0,3,'I\'d love to learn more.',5,16,0,0,0,0,0,''),(8774,0,1,'Wait! I want some coffee!',3,128,0,0,0,0,0,''),(8531,0,1,'Show me what you have for sale.',3,128,0,0,0,0,0,''),(7947,0,1,'I\'ll... take a look.',3,128,0,0,0,0,0,''),(8591,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,''),(10606,0,9,'I would like to go to the battleground.',12,1048576,0,0,0,0,0,''),(7808,0,6,'I would like to check my deposit box.',9,131072,0,0,0,0,0,''),(8590,0,0,'Axe',1,1,8577,0,0,0,0,''),(7389,0,3,'I want to become a blacksmith.',5,16,0,0,0,0,0,''),(7384,0,3,'I wish to train as an alchemist, Daedal.',5,16,0,0,0,0,0,''),(7388,0,3,'Teach me how to cook, Cookie.',5,16,0,0,0,0,0,''),(7361,0,3,'Please teach me how to fish, Diktynna.',5,16,0,0,0,0,0,''),(7383,0,3,'I wish to learn about engineering, Daelo.',5,16,0,0,0,0,0,''),(7380,0,3,'I wish to learn all that you have to teach me about first aid, Fateema.',5,16,0,0,0,0,0,''),(10350,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(7361,1,1,'I wish to browse your wares, Diktynna.',3,128,0,0,0,0,0,''),(8784,1,0,'I hear you\'re quite the cook.',1,1,8785,0,0,0,0,''),(8591,1,0,'What can other weapon masters teach?',1,1,8590,0,0,0,0,''),(7388,1,1,'Let me browse your wares, Cookie.',3,128,0,0,0,0,0,''),(8590,1,0,'Bow',1,1,8572,0,0,0,0,''),(7383,1,1,'I wish to browse your wares, Daelo.',3,128,0,0,0,0,0,''),(7389,1,1,'Let me browse your wares, Calypso.',3,128,0,0,0,0,0,''),(7484,1,8,'I want to create a guild crest.',11,524288,0,0,0,0,0,''),(7468,2,0,'What can I do at an inn?',1,1,1221,0,0,0,0,''),(9733,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(8590,2,0,'Fist Weapon',1,1,8574,0,0,0,0,''),(8590,3,0,'Gun',1,1,8575,0,0,0,0,''),(8590,4,0,'Polearm',1,1,8579,0,0,0,0,''),(8590,5,0,'Staff',1,1,8580,0,0,0,0,''),(8590,6,0,'Thrown',1,1,8582,0,0,0,0,''),(9046,7,0,'What do you know about the magical gates at the Sunwell Plateau being brought down?',1,1,9307,0,0,0,0,''),(7882,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(7615,0,1,'I wish to buy from you.',3,128,0,0,0,0,0,''),(7855,0,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(7964,0,0,'Why don\'t you escape?',1,1,0,0,0,0,0,''),(8162,0,0,'Walk free, elder.  Bring the spirits back to your tribe.',1,1,0,0,0,0,0,''),(7855,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(5856,0,3,'Train me.',5,16,0,0,0,0,0,''),(6620,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(6620,2,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(6214,0,0,'When the Darkmoon Faire arrives, where will it be located?',1,1,6221,0,0,0,0,''),(1623,0,6,'I would like to check my deposit box.',9,131072,0,0,0,0,0,''),(8072,0,0,'Please take me to the master\'s lair.',1,1,0,0,0,0,0,''),(10614,1,0,'I am ready for the next challenge.',1,1,0,0,0,0,0,''),(9833,0,3,'Train me.',5,16,0,0,0,0,0,''),(9584,0,2,'Show me where I can fly.',4,8192,0,0,0,0,0,''),(8884,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(8884,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10139,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(10139,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(6475,0,9,'I would like to go to the battleground.',12,1048576,0,0,0,0,0,''),(3921,0,3,'I seek training as a druid.',5,16,0,0,0,0,0,''),(3921,1,0,'I wish to unlearn my talents.',16,16,0,0,0,0,0,''),(24,0,0,'Tell me a story, Skorn.',1,1,23,0,0,0,0,''),(83,0,4,'Return me to life.',6,16385,0,0,0,0,0,''),(342,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(342,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(347,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(348,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(441,4,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(681,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(685,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(1290,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(1290,3,0,'What can I do at an inn?',1,1,1221,0,0,0,0,''),(1290,4,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(1291,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(1291,2,0,'What can I do at an inn?',1,1,1221,0,0,0,0,''),(1291,3,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(1296,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(1296,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(1296,3,0,'What can I do at an inn?',1,1,1221,0,0,0,0,''),(2021,0,3,'I\'d like to train in cooking.',5,16,0,0,0,0,0,''),(2562,2,1,'Gubber, I don\'t have a fishing pole.',3,128,0,0,0,0,0,''),(2744,0,3,'Train me.',5,16,0,0,0,0,0,''),(4012,0,3,'I am a hunter and wish to train.',5,16,0,0,0,0,0,''),(4090,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(4126,0,3,'Train me.',5,16,0,0,0,0,0,''),(4174,0,3,'Train me.',5,16,0,0,0,0,0,''),(4185,0,3,'Train me.',5,16,0,0,0,0,0,''),(4209,0,3,'Train me.',5,16,0,0,0,0,0,''),(4267,0,3,'Train me.',5,16,0,0,0,0,0,''),(4301,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(4303,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(4305,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(4325,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(4342,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(4347,0,3,'Train me.',5,16,0,0,0,0,0,''),(4655,0,3,'I submit myself for further training my master.',5,16,0,0,0,0,0,''),(4684,0,3,'I require warrior training.',5,16,0,0,0,0,0,''),(4783,0,0,'How do I train my pet?',1,1,9789,0,0,0,0,''),(4783,1,0,'I wish to untrain my pet.',1,1,6520,0,0,0,0,''),(5272,0,0,'Axe',1,1,8577,0,0,0,0,''),(5272,1,0,'Crossbow',1,1,8571,0,0,0,0,''),(5272,2,0,'Gun',1,1,8575,0,0,0,0,''),(5272,3,0,'Mace',1,1,8578,0,0,0,0,''),(5272,4,0,'Polearm',1,1,8579,0,0,0,0,''),(5272,5,0,'Sword',1,1,8581,0,0,0,0,''),(5273,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,''),(5273,1,0,'What can other weapon masters teach?',1,1,5272,0,0,0,0,''),(5665,0,3,'Train me.',5,16,0,0,0,0,0,''),(5853,0,3,'Train me.',5,16,0,0,0,0,0,''),(5854,0,3,'Train me.',5,16,0,0,0,0,0,''),(5855,0,3,'Train me.',5,16,0,0,0,0,0,''),(6023,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(7450,0,1,'Show me what I\'ve earned the right to purchase.',3,128,0,0,0,0,0,''),(7467,0,3,'Teach me the ways of the spirits.',5,16,0,0,0,0,0,''),(7468,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(7468,4,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(7690,0,3,'Train me.',5,16,0,0,0,0,0,''),(7713,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(7842,0,3,'Train me.',5,16,0,0,0,0,0,''),(7896,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(7900,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(7938,0,2,'Show me where I can fly.',4,8192,0,0,0,0,0,''),(7949,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(9074,1,0,'Food & Drink',1,1,9075,0,0,0,0,''),(8105,0,9,'I would like to go to the battleground.',12,1048576,0,0,0,0,0,''),(8382,0,3,'Train me.',5,16,0,0,0,0,0,''),(8519,0,3,'Train me.',5,16,0,0,0,0,0,''),(8530,0,1,'Show me what you have for sale.',3,128,0,0,0,0,0,''),(8532,0,1,'Show me what you have for sale.',3,128,0,0,0,0,0,''),(8646,0,3,'Train me.',5,16,0,0,0,0,0,''),(8646,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(8664,0,1,'Show me what you have for sale.',3,128,0,0,0,0,0,''),(8866,0,3,'Train me.',5,16,0,0,0,0,0,''),(8867,0,3,'Train me.',5,16,0,0,0,0,0,''),(8868,0,3,'Train me.',5,16,0,0,0,0,0,''),(9061,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(9199,0,0,'Who are you?',1,1,0,0,0,0,0,''),(9199,1,0,'What brings you to the Sunwell?',1,1,0,0,0,0,0,''),(9218,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(9245,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9245,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(9299,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9415,0,0,'Clear me for the teleporter, I\'m ready to go!',1,1,0,0,0,0,0,''),(9427,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9427,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(9498,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9628,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9628,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(9683,0,2,'Do you think I could take a ride on one of those flying machines?',4,8192,0,0,0,0,0,''),(9783,0,2,'Show me where I can fly.',4,8192,0,0,0,0,0,''),(9821,0,0,'I\'d like to stable my pet here.',14,4194304,0,0,0,0,0,''),(9879,0,3,'Train me.',5,16,0,0,0,0,0,''),(9879,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(9986,0,3,'Train me.',5,16,0,0,0,0,0,''),(9892,0,3,'Train me.',5,16,0,0,0,0,0,''),(10114,0,3,'Train me.',5,16,0,0,0,0,0,''),(10280,0,2,'Show me where I can fly.',4,8192,0,0,0,0,0,''),(10351,0,3,'Train me.',5,16,0,0,0,0,0,''),(10351,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10359,0,3,'Train me.',5,16,0,0,0,0,0,''),(10359,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10360,0,3,'Train me.',5,16,0,0,0,0,0,''),(10360,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10361,0,3,'Train me.',5,16,0,0,0,0,0,''),(10361,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10362,0,3,'Train me.',5,16,0,0,0,0,0,''),(10362,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10364,0,3,'Train me.',5,16,0,0,0,0,0,''),(10364,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10365,0,3,'Train me.',5,16,0,0,0,0,0,''),(10365,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10417,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(10422,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(10423,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(10424,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(10615,0,3,'Train me.',5,16,0,0,0,0,0,''),(3921,2,0,'Learn about Dual Talent Specialization.',18,16,10371,0,0,0,0,''),(4281,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(4323,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(5124,4,0,'How many more supplies are needed for the next upgrade?',1,1,0,0,0,0,0,''),(6162,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(7139,0,0,'What is this place?',1,1,0,0,0,0,0,''),(7139,1,0,'Where is Medivh?',1,1,0,0,0,0,0,''),(7139,2,0,'How do you navigate the tower?',1,1,0,0,0,0,0,''),(7142,0,0,'Who is Midnight?',1,1,8170,0,0,0,0,''),(7495,0,0,'Watcher Leesa\'oh, why are you out here?',1,1,0,0,0,0,0,''),(7499,1,0,'We are ready to get you out of here, Thrall. Let\'s go!',1,1,0,0,0,0,0,''),(7499,0,0,'We are ready to get you out of here, Thrall. Let\'s go!',1,1,0,0,0,0,0,''),(7769,0,0,'I need a pack of incendiary bombs.',1,1,7770,0,0,0,0,''),(7830,0,0,'Taretha cannot see you, Thrall.',1,1,0,0,0,0,0,''),(7866,0,0,'Who is Talon King Ikiss?',1,1,7876,0,0,0,0,''),(7866,1,0,'Who are the Sethekk?',1,1,7874,0,0,0,0,''),(7866,2,0,'Where can I find the relics of Terokk?',1,1,0,0,0,0,0,''),(7866,3,0,'Who is this Terokk you keep mentioning?',1,1,7877,0,0,0,0,''),(7868,0,0,'I\'ll have you out of there in just a moment.',1,1,0,0,0,0,0,''),(7885,0,1,'I wish to browse your wares.',3,128,0,0,0,0,0,''),(7959,0,0,'I\'m ready to go to Durnholde Keep.',1,1,0,0,0,0,0,''),(7984,0,0,'Read on, if you dare...',1,1,7985,0,0,0,0,''),(7985,0,0,'Read on, if you dare...',1,1,7986,0,0,0,0,''),(7986,0,0,'Read on, if you dare...',1,1,7987,0,0,0,0,''),(7987,0,0,'Read on, if you dare...',1,1,7988,0,0,0,0,''),(7988,0,0,'Read on, if you dare...',1,1,7989,0,0,0,0,''),(7989,0,0,'Read on, if you dare...',1,1,7990,0,0,0,0,''),(8079,0,9,'I would like to go to the battleground.',12,1048576,0,0,0,0,0,''),(8088,0,0,'Sa\'at, I have lost the chrono-beacon and require another!',1,1,0,0,0,0,0,''),(8179,0,1,'What could you be selling?',3,128,0,0,0,0,0,''),(8354,0,0,'Control Orc Grunt',1,1,0,0,0,0,0,''),(8366,0,0,'Control Orc Wolf',1,1,0,0,0,0,0,''),(8545,0,1,'I won\'t challenge you, but I\'d like to see your wares.',3,128,0,0,0,0,0,''),(8870,0,0,'High Executor Anselm wants a report on the situation.',1,1,8869,0,0,0,0,''),(8879,0,0,'High Executor Anselm requests your report.',1,1,8878,0,0,0,0,''),(8894,1,0,'I need a riding bat to intercept the Alliance reinforcements.',1,1,0,0,0,0,0,''),(10371,0,0,'Purchase a Dual Talent Specialization.',1,1,10373,0,0,0,0,''),(10214,0,1,'How may I help you?',3,128,0,0,0,0,0,''),(700,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(4664,0,3,'I would like to train further in the ways of the Light.',5,16,0,0,0,0,0,''),(4172,0,3,'Train me.',5,16,0,0,0,0,0,''),(10210,0,3,'How do you fly in this cold climate?',5,16,0,0,0,0,0,''),(8982,0,0,'Um... what was that?',1,1,8983,0,0,0,0,''),(8802,0,3,'I would like to train.',5,16,0,0,0,0,0,''),(1721,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(4358,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(4115,0,3,'Train me.',5,16,0,0,0,0,0,''),(4361,0,3,'I would like to train.',5,16,0,0,0,0,0,''),(4004,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(10191,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(4650,0,3,'I require warrior training.',5,16,0,0,0,0,0,''),(10723,0,3,'I seek training to ride a steed.',5,16,0,0,0,0,0,''),(9777,0,3,'Please teach me.',5,16,0,0,0,0,0,''),(9990,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,''),(7260,0,3,'I would like to train further in the ways of the Light.',5,16,0,0,0,0,0,''),(6628,0,3,'I am interested in warlock training.',5,16,0,0,0,0,0,''),(523,0,3,'I require warrior training.',5,16,0,0,0,0,0,''),(4647,0,3,'I seek training in the ways of the Hunter.',5,16,0,0,0,0,0,''),(3644,0,3,'I seek more training in the priestly ways.',5,16,0,0,0,0,0,''),(590,0,0,'Can you give me directions?',1,1,589,0,0,0,0,''),(592,0,0,'Can you give me directions?',1,1,591,0,0,0,0,''),(593,0,3,'Train me.',5,16,0,0,0,0,0,''),(597,0,3,'Train me.',5,16,0,0,0,0,0,''),(1288,0,0,'How could the altar and the statues be related?',1,1,0,0,0,0,0,''),(6944,0,2,'Show me where I can fly.',4,8192,1288,0,0,0,0,''),(4341,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(4324,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(2783,0,3,'Train me.',5,16,0,0,0,0,0,''),(4270,0,3,'Train me.',5,16,0,0,0,0,0,''),(4140,0,3,'Train me.',5,16,0,0,0,0,0,''),(5962,0,1,'I wish to browse your wares.',3,128,0,0,0,0,0,''),(5967,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(4360,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(6498,0,9,'I wish to join the battle!',12,1048576,0,0,0,0,0,''),(4762,0,3,'I require training, Nissa.',5,16,0,0,0,0,0,''),(3201,0,3,'I require training.',5,16,0,0,0,0,0,''),(4359,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(4345,0,3,'Train me.',5,16,0,0,0,0,0,''),(4205,0,3,'Train me.',5,16,0,0,0,0,0,''),(4742,0,3,'I require training, Grimnur.',5,16,0,0,0,0,0,''),(4150,0,3,'Train me.',5,16,0,0,0,0,0,''),(4123,0,3,'Train me.',5,16,0,0,0,0,0,''),(6465,0,9,'I would like to go to the battleground.',12,1048576,0,0,0,0,0,''),(9075,1,0,'Goods & Gear',1,1,9076,0,0,0,0,''),(9537,0,0,'One of the cultists seems to have stumbled onto my blade and died... can I have a new disguise? I promise that I will be more careful this time.',1,1,0,0,0,0,0,''),(9804,0,1,'Show me what you have for sale.',3,128,0,0,0,0,0,''),(10418,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(10627,0,3,'I would like to train.',5,16,0,0,0,0,0,''),(10628,0,0,'OK...',1,1,10627,0,0,0,0,''),(9076,0,0,'The Maiden\'s Fancy',1,1,9073,0,0,0,0,''),(9076,1,0,'Food & Drink',1,1,9075,0,0,0,0,''),(7394,0,0,'What promotions do you have?',1,1,9197,0,0,0,0,''),(9197,0,0,'Heroes of Azeroth',1,1,9192,0,0,0,0,''),(9197,1,0,'Through the Dark Portal',1,1,9194,0,0,0,0,''),(9197,2,0,'Fires of Outland',1,1,9195,0,0,0,0,''),(9197,3,0,'March of the Legion',1,1,9196,0,0,0,0,''),(9197,4,0,'Servants of the Betrayer',1,1,9191,0,0,0,0,''),(9197,5,0,'Hunt for Illidan',1,1,9629,0,0,0,0,''),(9197,6,0,'Drums of War',1,1,9682,0,0,0,0,''),(9197,7,0,'Blood of Gladiators',1,1,10330,0,0,0,0,''),(9197,8,0,'Fields of Honor',1,1,10533,0,0,0,0,''),(9197,9,0,'Scourgewar',1,1,10810,0,0,0,0,''),(9197,10,0,'Wrathgate',1,1,11342,0,0,0,0,''),(9197,11,0,'Icecrown',1,1,11343,0,0,0,0,''),(9197,12,0,'Points Redemption',1,1,9193,0,0,0,0,''),(9192,0,0,'Red Tabard',1,1,0,0,0,0,0,''),(9192,1,0,'Hippogryph Hatchling',1,1,0,0,0,0,0,''),(9192,2,0,'Riding Turtle',1,1,0,0,0,0,0,''),(9192,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(9194,0,0,'Picnic Basket',1,1,0,0,0,0,0,''),(9194,1,0,'Baby Gorilla Pet',1,1,0,0,0,0,0,''),(9194,2,0,'Imp in a Ball',1,1,0,0,0,0,0,''),(9194,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(9195,0,0,'Goblin Gumbo Kettle',1,1,0,0,0,0,0,''),(9195,1,0,'Fishing Chair',1,1,0,0,0,0,0,''),(9195,2,0,'Spectral Tiger Mount',1,1,0,0,0,0,0,''),(9195,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(9196,0,0,'Paper Airplane',1,1,0,0,0,0,0,''),(9196,1,0,'Rocket Chicken',1,1,0,0,0,0,0,''),(9196,2,0,'Kite',1,1,0,0,0,0,0,''),(9196,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(9191,0,0,'X-51 Nether-Rocket Mount',1,1,0,0,0,0,0,''),(9191,1,0,'Pet Biscuit',1,1,0,0,0,0,0,''),(9191,2,0,'Goblin Weather Machine - Prototype 01-B',1,1,0,0,0,0,0,''),(9191,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(9629,0,0,'Path of Illidan',1,1,0,0,0,0,0,''),(9629,1,0,'Disco Ball',1,1,0,0,0,0,0,''),(9629,2,0,'Ethereal Summoner',1,1,0,0,0,0,0,''),(9629,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(9682,0,0,'Party G.R.E.N.A.D.E.',1,1,0,0,0,0,0,''),(9682,1,0,'Taunt Flag',1,1,0,0,0,0,0,''),(9682,2,0,'Bear Mount',1,1,0,0,0,0,0,''),(9682,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(10330,0,0,'Sandbox Tiger',1,1,0,0,0,0,0,''),(10330,1,0,'Epic Purple Shirt',1,1,0,0,0,0,0,''),(10330,2,0,'Foam Sword Rack',1,1,0,0,0,0,0,''),(10330,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(10533,0,0,'Path of Cenarius',1,1,0,0,0,0,0,''),(10533,1,0,'Ogre Pinata',1,1,0,0,0,0,0,''),(10533,2,0,'Magic Rooster Mount',1,1,0,0,0,0,0,''),(10533,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(10810,1,0,'Mini-Mount',1,1,0,0,0,0,0,''),(10810,2,0,'Tuskarr Kite',1,1,0,0,0,0,0,''),(10810,3,0,'Spectral Tiger Cub',1,1,0,0,0,0,0,''),(10810,4,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(11342,0,0,'Landro\'s Gift Box',1,1,0,0,0,0,0,''),(11342,1,0,'Instant Statue',1,1,0,0,0,0,0,''),(11342,2,0,'Blazing Hippogryph',1,1,0,0,0,0,0,''),(11342,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(11343,0,0,'Paint Bomb',1,1,0,0,0,0,0,''),(11343,1,0,'Portal Stone',1,1,0,0,0,0,0,''),(11343,2,0,'Rhino Mount',1,1,0,0,0,0,0,''),(11343,3,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(9193,0,0,'Blue Tabard',1,1,0,0,0,0,0,''),(9193,1,0,'Perpetual Purple Firework',1,1,0,0,0,0,0,''),(9193,2,0,'Ogre Costume',1,1,0,0,0,0,0,''),(9193,3,0,'Tabard of the Arcane',1,1,0,0,0,0,0,''),(9193,4,0,'Tabard of Brilliance',1,1,0,0,0,0,0,''),(9193,5,0,'Tabard of the Defender',1,1,0,0,0,0,0,''),(9193,6,0,'Tabard of Fury',1,1,0,0,0,0,0,''),(9193,7,0,'Tabard of Nature',1,1,0,0,0,0,0,''),(9193,8,0,'Tabard of the Void',1,1,0,0,0,0,0,''),(9193,9,0,'Landro\'s Pet Box',1,1,0,0,0,0,0,''),(9193,10,0,'What other promotions do you have?',1,1,9197,0,0,0,0,''),(4081,0,0,'Continue reading...',1,1,4082,0,0,0,0,''),(4082,0,0,'Continue reading...',1,1,4083,0,0,0,0,''),(5271,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,''),(5271,1,0,'What can other weapon masters teach?',1,1,5270,0,0,0,0,''),(5270,0,0,'Axe',1,1,8577,0,0,0,0,''),(5270,1,0,'Bow',1,1,8572,0,0,0,0,''),(5270,2,0,'Fist Weapon',1,1,8574,0,0,0,0,''),(5270,3,0,'Gun',1,1,8575,0,0,0,0,''),(5270,4,0,'Mace',1,1,8578,0,0,0,0,''),(5270,5,0,'Thrown',1,1,8582,0,0,0,0,''),(5275,1,0,'What can other weapon masters teach?',1,1,5274,0,0,0,0,''),(5274,0,0,'Bow',1,1,8583,0,0,0,0,''),(5274,1,0,'Crossbow',1,1,8584,0,0,0,0,''),(5274,2,0,'Dagger',1,1,8573,0,0,0,0,''),(5274,3,0,'Polearm',1,1,8579,0,0,0,0,''),(5274,4,0,'Staff',1,1,8580,0,0,0,0,''),(5274,5,0,'Sword',1,1,8581,0,0,0,0,''),(5274,6,0,'Thrown',1,1,8585,0,0,0,0,''),(5277,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,''),(5277,1,0,'What can other weapon masters teach?',1,1,5276,0,0,0,0,''),(5276,0,0,'Axe',1,1,8586,0,0,0,0,''),(5276,1,0,'Bow',1,1,8572,0,0,0,0,''),(5276,2,0,'Fist Weapon',1,1,8587,0,0,0,0,''),(5276,3,0,'Gun',1,1,8588,0,0,0,0,''),(5276,4,0,'Mace',1,1,8589,0,0,0,0,''),(5276,5,0,'Polearm',1,1,8579,0,0,0,0,''),(5276,6,0,'Staff',1,1,8580,0,0,0,0,''),(5276,7,0,'Sword',1,1,8581,0,0,0,0,''),(9668,0,0,'I\'m ready to begin. What is the first ingredient you require?',1,1,0,0,0,0,0,''),(9650,0,0,'Get out there and make those Scourge wish they were never reborn!',1,1,0,0,0,0,0,''),(10281,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(10024,0,0,'I\'m ready to fly to Sholazar Basin.',1,1,0,0,0,0,0,''),(6565,0,0,'I would like to enter the secret code to receive my Murloc pet.',1,1,0,0,0,0,0,''),(6565,1,0,'I would like to enter the secret code to receive my Murloc costume.',1,1,0,0,0,0,0,''),(6565,2,0,'I would like to enter the secret code to receive my Big Blizzard Bear.',1,1,0,0,0,0,0,''),(9283,0,0,'Who is Malygos?',1,1,9284,0,0,0,0,''),(9253,0,0,'What is the cause of this conflict?',1,1,9283,0,0,0,0,''),(9488,0,1,'Do you have any items I can test?',3,128,0,0,0,0,0,''),(421,10,0,'Mining',1,1,430,48,0,0,0,''),(421,11,0,'Skinning',1,1,431,47,0,0,0,''),(421,12,0,'Tailoring',1,1,432,49,0,0,0,''),(3506,0,0,'Bank',1,1,3507,0,0,0,0,''),(3506,1,0,'Gryphon Master',1,1,3508,0,0,0,0,''),(3506,2,0,'Guild Master',1,1,3509,0,0,0,0,''),(3506,3,0,'Inn',1,1,3510,1,0,0,0,''),(3506,4,0,'Stable Master',1,1,4924,17,0,0,0,''),(3506,5,0,'Class Trainer',1,1,3519,0,0,0,0,''),(3506,6,0,'Profession Trainer',1,1,3532,0,0,0,0,''),(3519,0,0,'Druid',1,1,3511,0,0,0,0,''),(3519,1,0,'Hunter',1,1,3512,0,0,0,0,''),(3519,2,0,'Mage',1,1,3514,2,0,0,0,''),(3519,3,0,'Paladin',1,1,3515,3,0,0,0,''),(3519,4,0,'Priest',1,1,3513,4,0,0,0,''),(3519,5,0,'Rogue',1,1,3516,5,0,0,0,''),(3519,6,0,'Shaman',1,1,8160,0,0,0,0,''),(3519,7,0,'Warlock',1,1,3518,6,0,0,0,''),(3519,8,0,'Warrior',1,1,3517,7,0,0,0,''),(3532,0,0,'Alchemy',1,1,3520,8,0,0,0,''),(3532,1,0,'Blacksmithing',1,1,3521,9,0,0,0,''),(3532,2,0,'Cooking',1,1,3522,10,0,0,0,''),(3532,3,0,'Enchanting',1,1,3523,0,0,0,0,''),(3532,4,0,'Engineering',1,1,3524,0,0,0,0,''),(3532,5,0,'First Aid',1,1,3525,11,0,0,0,''),(3532,6,0,'Fishing',1,1,3526,12,0,0,0,''),(3532,7,0,'Herbalism',1,1,3527,269,0,0,0,''),(3532,8,0,'Inscription',1,1,10010,13,0,0,0,''),(3532,9,0,'Leatherworking',1,1,3528,14,0,0,0,''),(3532,10,0,'Mining',1,1,3529,0,0,0,0,''),(3532,11,0,'Skinning',1,1,3530,15,0,0,0,''),(3532,12,0,'Tailoring',1,1,3531,16,0,0,0,''),(2121,0,0,'Auction House',1,1,2321,50,0,0,0,''),(2121,1,0,'Bank of Ironforge',1,1,2141,51,0,0,0,''),(2121,2,0,'Deeprun Tram',1,1,3082,52,0,0,0,''),(2121,3,0,'Gryphon Master',1,1,2142,53,0,0,0,''),(2121,4,0,'Guild Master',1,1,2143,54,0,0,0,''),(2121,5,0,'The Inn',1,1,2145,55,0,0,0,''),(2121,6,0,'Mailbox',1,1,2146,56,0,0,0,''),(2121,7,0,'Stable Master',1,1,4927,57,0,0,0,''),(2121,8,0,'Weapons Trainer',1,1,3723,58,0,0,0,''),(2121,9,0,'Battlemaster',1,1,8220,59,0,0,0,''),(2121,10,0,'Barber',1,1,10014,60,0,0,0,''),(2121,11,0,'Class Trainer',1,1,2144,0,0,0,0,''),(2121,12,0,'Profession Trainer',1,1,2168,0,0,0,0,''),(2144,0,0,'Hunter',1,1,2147,61,0,0,0,''),(2144,1,0,'Mage',1,1,2148,62,0,0,0,''),(2144,2,0,'Paladin',1,1,2150,62,0,0,0,''),(2144,3,0,'Priest',1,1,2149,62,0,0,0,''),(2144,4,0,'Rogue',1,1,2151,63,0,0,0,''),(2144,5,0,'Warlock',1,1,2152,64,0,0,0,''),(2144,6,0,'Warrior',1,1,2153,61,0,0,0,''),(2144,7,0,'Shaman',1,1,8643,65,0,0,0,''),(2168,0,0,'Alchemy',1,1,2161,66,0,0,0,''),(2168,1,0,'Blacksmithing',1,1,2162,67,0,0,0,''),(2168,2,0,'Cooking',1,1,2163,68,0,0,0,''),(2168,3,0,'Enchanting',1,1,2164,69,0,0,0,''),(2168,4,0,'Engineering',1,1,2165,401,0,0,0,''),(2168,5,0,'First Aid',1,1,2166,70,0,0,0,''),(2168,6,0,'Fishing',1,1,2167,71,0,0,0,''),(2168,7,0,'Herbalism',1,1,2169,70,0,0,0,''),(2168,8,0,'Inscription',1,1,10013,72,0,0,0,''),(2168,9,0,'Leatherworking',1,1,2170,73,0,0,0,''),(2168,10,0,'Mining',1,1,2172,74,0,0,0,''),(2168,11,0,'Skinning',1,1,2173,73,0,0,0,''),(2168,12,0,'Tailoring',1,1,2175,75,0,0,0,''),(3533,0,0,'Bank',1,1,3534,0,0,0,0,''),(3533,1,0,'Gryphon Master',1,1,3535,0,0,0,0,''),(3533,2,0,'Guild Master',1,1,3536,0,0,0,0,''),(3533,3,0,'The Inn',1,1,3537,76,0,0,0,''),(3533,4,0,'Stable Master',1,1,4926,77,0,0,0,''),(3533,5,0,'Class Trainer',1,1,3545,0,0,0,0,''),(3533,6,0,'Profession Trainer',1,1,3558,0,0,0,0,''),(3545,0,0,'Hunter',1,1,3538,78,0,0,0,''),(3545,1,0,'Mage',1,1,3539,79,0,0,0,''),(3545,2,0,'Paladin',1,1,3540,80,0,0,0,''),(3545,3,0,'Priest',1,1,3541,81,0,0,0,''),(3545,4,0,'Rogue',1,1,3542,82,0,0,0,''),(3545,5,0,'Warlock',1,1,3543,83,0,0,0,''),(3545,6,0,'Warrior',1,1,3544,84,0,0,0,''),(3558,0,0,'Alchemy',1,1,3546,0,0,0,0,''),(3558,1,0,'Blacksmithing',1,1,3547,85,0,0,0,''),(3558,2,0,'Cooking',1,1,3548,86,0,0,0,''),(3558,3,0,'Enchanting',1,1,3549,0,0,0,0,''),(3558,4,0,'Engineering',1,1,3550,0,0,0,0,''),(3558,5,0,'First Aid',1,1,3551,87,0,0,0,''),(3558,6,0,'Fishing',1,1,3552,88,0,0,0,''),(3558,7,0,'Herbalism',1,1,3553,0,0,0,0,''),(3558,8,0,'Inscription',1,1,10013,72,0,0,0,''),(3558,9,0,'Leatherworking',1,1,3554,0,0,0,0,''),(3558,10,0,'Mining',1,1,3555,402,0,0,0,''),(3558,11,0,'Skinning',1,1,3556,0,0,0,0,''),(3558,12,0,'Tailoring',1,1,3557,0,0,0,0,''),(10265,0,0,'Auction House',1,1,3101,89,0,0,0,''),(10265,1,0,'The Bank',1,1,2322,90,0,0,0,''),(10265,2,0,'Hippogryph Master',1,1,10266,91,0,0,0,''),(10265,3,0,'Guild Master',1,1,2324,92,0,0,0,''),(10265,4,0,'The Inn',1,1,2325,93,0,0,0,''),(10265,5,0,'Mailbox',1,1,2326,94,0,0,0,''),(10265,6,0,'Stable Master',1,1,4921,95,0,0,0,''),(10265,7,0,'Weapons Trainer',1,1,3722,96,0,0,0,''),(10265,8,0,'Battlemaster',1,1,8221,97,0,0,0,''),(10265,9,0,'Class Trainer',1,1,2343,0,0,0,0,''),(10265,10,0,'Profession Trainer',1,1,2351,0,0,0,0,''),(10265,11,0,'Lexicon of Power',1,1,10205,107,0,0,0,''),(2343,0,0,'Druid',1,1,2328,98,0,0,0,''),(2343,1,0,'Hunter',1,1,2327,99,0,0,0,''),(2343,2,0,'Mage',1,1,11422,265,0,0,0,''),(2343,3,0,'Paladin',1,1,11422,266,0,0,0,''),(2343,4,0,'Priest',1,1,2329,267,0,0,0,''),(2343,5,0,'Rogue',1,1,2341,100,0,0,0,''),(2343,6,0,'Warrior',1,1,2342,101,0,0,0,''),(2351,0,0,'Alchemy',1,1,2344,102,0,0,0,''),(2351,1,0,'Cooking',1,1,2345,103,0,0,0,''),(2351,2,0,'Enchanting',1,1,2347,104,0,0,0,''),(2351,3,0,'First Aid',1,1,2348,105,0,0,0,''),(2351,4,0,'Fishing',1,1,2349,106,0,0,0,''),(2351,5,0,'Herbalism',1,1,2350,268,0,0,0,''),(2351,6,0,'Inscription',1,1,10015,107,0,0,0,''),(2351,7,0,'Leatherworking',1,1,2354,108,0,0,0,''),(2351,8,0,'Skinning',1,1,2356,109,0,0,0,''),(2351,9,0,'Tailoring',1,1,2358,110,0,0,0,''),(3580,0,0,'The Bank',1,1,3560,0,0,0,0,''),(3580,1,0,'Rut\'theran Ferry',1,1,3561,0,0,0,0,''),(3580,2,0,'The Guild Master.',1,1,3562,0,0,0,0,''),(3580,3,0,'The Inn',1,1,3563,111,0,0,0,''),(3580,4,0,'Stable Master',1,1,4923,112,0,0,0,''),(3580,5,0,'Class Trainer',1,1,3564,0,0,0,0,''),(3580,6,0,'Profession Trainer',1,1,3572,0,0,0,0,''),(3564,0,0,'Druid',1,1,3565,113,0,0,0,''),(3564,1,0,'Hunter',1,1,3566,114,0,0,0,''),(3564,2,0,'Priest',1,1,3567,115,0,0,0,''),(3564,3,0,'Rogue',1,1,3568,116,0,0,0,''),(3564,4,0,'Warrior',1,1,3569,117,0,0,0,''),(3572,0,0,'Alchemy',1,1,3570,118,0,0,0,''),(3572,1,0,'Cooking',1,1,3571,119,0,0,0,''),(3572,2,0,'Enchanting',1,1,3573,120,0,0,0,''),(3572,3,0,'First Aid',1,1,3574,121,0,0,0,''),(3572,4,0,'Fishing',1,1,3575,0,0,0,0,''),(3572,5,0,'Herbalism',1,1,3576,122,0,0,0,''),(3572,6,0,'Inscription',1,1,10015,107,0,0,0,''),(3572,7,0,'Leatherworking',1,1,3577,123,0,0,0,''),(3572,8,0,'Skinning',1,1,3578,124,0,0,0,''),(3572,9,0,'Tailoring',1,1,3579,0,0,0,0,''),(7777,0,0,'Auction House',1,1,7778,190,0,0,0,''),(7777,1,0,'The Bank',1,1,7779,191,0,0,0,''),(7777,2,0,'Hippogryph Master',1,1,7780,192,0,0,0,''),(7777,3,0,'Guild Master',1,1,7781,193,0,0,0,''),(7777,4,0,'The Inn',1,1,7782,194,0,0,0,''),(7777,5,0,'Mailbox',1,1,7783,195,0,0,0,''),(7777,6,0,'Stable Master',1,1,7784,196,0,0,0,''),(7777,7,0,'Weapon Master',1,1,7785,197,0,0,0,''),(7777,8,0,'Battlemasters',1,1,7786,263,0,0,0,''),(7777,9,0,'Class Trainer',1,1,7787,0,0,0,0,''),(7777,10,0,'Profession Trainer',1,1,7788,0,0,0,0,''),(7786,0,0,'Arena Battlemaster',1,1,8226,264,0,0,0,''),(7787,0,0,'Druid',1,1,7789,198,0,0,0,''),(7787,1,0,'Hunter',1,1,7790,199,0,0,0,''),(7787,2,0,'Mage',1,1,7791,200,0,0,0,''),(7787,3,0,'Paladin',1,1,7792,201,0,0,0,''),(7787,4,0,'Priest',1,1,7793,202,0,0,0,''),(7787,5,0,'Shaman',1,1,7794,203,0,0,0,''),(7787,6,0,'Warrior',1,1,7795,204,0,0,0,''),(7788,0,0,'Alchemy',1,1,7796,205,0,0,0,''),(7788,1,0,'Blacksmithing',1,1,7797,206,0,0,0,''),(7788,2,0,'Enchanting',1,1,7798,207,0,0,0,''),(7788,3,0,'Engineering',1,1,7799,208,0,0,0,''),(7788,4,0,'First Aid',1,1,7800,209,0,0,0,''),(7788,5,0,'Fishing',1,1,7801,210,0,0,0,''),(7788,6,0,'Herbalism',1,1,7802,211,0,0,0,''),(7788,7,0,'Inscription',1,1,10016,212,0,0,0,''),(7788,8,0,'Jewelcrafting',1,1,7803,213,0,0,0,''),(7788,9,0,'Leatherworking',1,1,7804,214,0,0,0,''),(7788,10,0,'Mining',1,1,7805,215,0,0,0,''),(7788,11,0,'Skinning',1,1,7806,216,0,0,0,''),(7788,12,0,'Tailoring',1,1,7807,217,0,0,0,''),(7788,13,0,'Cooking',1,1,8399,218,0,0,0,''),(8129,0,0,'Bank',1,1,8130,0,0,0,0,''),(8129,1,0,'Hippogryph Master',1,1,8133,0,0,0,0,''),(8129,2,0,'Guild Master',1,1,8134,0,0,0,0,''),(8129,3,0,'Inn',1,1,8135,219,0,0,0,''),(8129,4,0,'Stable Master',1,1,8136,220,0,0,0,''),(8129,5,0,'Class Trainer',1,1,8137,0,0,0,0,''),(8129,6,0,'Profession Trainer',1,1,8138,0,0,0,0,''),(8137,0,0,'Druid',1,1,8139,0,0,0,0,''),(8137,1,0,'Hunter',1,1,8141,221,0,0,0,''),(8137,2,0,'Mage',1,1,8142,222,0,0,0,''),(8137,3,0,'Paladin',1,1,8143,223,0,0,0,''),(8137,4,0,'Priest',1,1,8144,224,0,0,0,''),(8137,5,0,'Shaman',1,1,8145,225,0,0,0,''),(8137,6,0,'Warrior',1,1,8146,226,0,0,0,''),(8138,0,0,'Alchemy',1,1,8147,227,0,0,0,''),(8138,1,0,'Blacksmithing',1,1,8148,228,0,0,0,''),(8138,2,0,'Cooking',1,1,8149,229,0,0,0,''),(8138,3,0,'Enchanting',1,1,8150,0,0,0,0,''),(8138,4,0,'Engineering',1,1,8151,230,0,0,0,''),(8138,5,0,'First Aid',1,1,8152,231,0,0,0,''),(8138,6,0,'Fishing',1,1,8153,232,0,0,0,''),(8138,7,0,'Herbalism',1,1,8154,233,0,0,0,''),(8138,8,0,'Inscription',1,1,10016,212,0,0,0,''),(8138,9,0,'Jewelcrafting',1,1,8159,0,0,0,0,''),(8138,10,0,'Leatherworking',1,1,8155,234,0,0,0,''),(8138,11,0,'Mining',1,1,8156,235,0,0,0,''),(8138,12,0,'Skinning',1,1,8157,236,0,0,0,''),(8138,13,0,'Tailoring',1,1,8158,237,0,0,0,''),(1951,0,0,'The bank',1,1,1901,176,0,0,0,''),(1951,1,0,'The wind rider master',1,1,1902,177,0,0,0,''),(1951,2,0,'The guild master',1,1,1903,178,0,0,0,''),(1951,3,0,'The inn',1,1,1904,179,0,0,0,''),(1951,4,0,'The mailbox',1,1,1905,180,0,0,0,''),(1951,5,0,'The auction house',1,1,2403,181,0,0,0,''),(1951,6,0,'The zeppelin master',1,1,9727,0,0,0,0,''),(1951,7,0,'The weapon master',1,1,3724,184,0,0,0,''),(1951,8,0,'The stable master',1,1,4902,185,0,0,0,''),(1951,9,0,'The officers\' lounge',1,1,5882,186,0,0,0,''),(1951,10,0,'The battlemaster',1,1,8224,187,0,0,0,''),(1951,11,0,'Barber',1,1,10018,188,0,0,0,''),(1951,12,0,'A class trainer',1,1,1949,0,0,0,0,''),(1951,13,0,'A profession trainer',1,1,1942,0,0,0,0,''),(1951,14,0,'Lexicon of Power',1,1,10205,189,0,0,0,''),(9727,0,0,'The eastern zeppelin tower',1,1,2481,182,0,0,0,''),(9727,1,0,'The western zeppelin tower',1,1,9726,183,0,0,0,''),(1949,0,0,'Hunter',1,1,1906,300,0,0,0,''),(1949,1,0,'Mage',1,1,1907,301,0,0,0,''),(1949,2,0,'Priest',1,1,1908,302,0,0,0,''),(1949,3,0,'Shaman',1,1,1909,303,0,0,0,''),(1949,4,0,'Rogue',1,1,1910,304,0,0,0,''),(1949,5,0,'Warlock',1,1,1911,305,0,0,0,''),(1949,6,0,'Warrior',1,1,1912,306,0,0,0,''),(1949,7,0,'Paladin',1,1,8644,303,0,0,0,''),(1942,0,0,'Alchemy',1,1,1845,307,0,0,0,''),(1942,1,0,'Blacksmithing',1,1,1846,308,0,0,0,''),(1942,2,0,'Cooking',1,1,1861,309,0,0,0,''),(1942,3,0,'Enchanting',1,1,1862,310,0,0,0,''),(1942,4,0,'Engineering',1,1,1981,311,0,0,0,''),(1942,5,0,'First Aid',1,1,1863,312,0,0,0,''),(1942,6,0,'Fishing',1,1,1864,313,0,0,0,''),(1942,7,0,'Herbalism',1,1,1865,314,0,0,0,''),(1942,8,0,'Inscription',1,1,10017,189,0,0,0,''),(1942,9,0,'Leatherworking',1,1,1866,316,0,0,0,''),(1942,10,0,'Mining',1,1,1868,315,0,0,0,''),(1942,11,0,'Skinning',1,1,1869,316,0,0,0,''),(1942,12,0,'Tailoring',1,1,1871,317,0,0,0,''),(3285,0,0,'The bank',1,1,3280,0,0,0,0,''),(3285,1,0,'The wind rider master',1,1,3281,0,0,0,0,''),(3285,2,0,'The inn',1,1,3282,403,0,0,0,''),(3285,3,0,'The stable master',1,1,4901,404,0,0,0,''),(3285,4,0,'A class trainer',1,1,3283,0,0,0,0,''),(3285,5,0,'A profession trainer',1,1,3284,0,0,0,0,''),(3283,0,0,'Hunter',1,1,3261,405,0,0,0,''),(3283,1,0,'Mage',1,1,3262,406,0,0,0,''),(3283,2,0,'Priest',1,1,3263,407,0,0,0,''),(3283,3,0,'Rogue',1,1,3264,408,0,0,0,''),(3283,4,0,'Shaman',1,1,3265,409,0,0,0,''),(3283,5,0,'Warlock',1,1,3266,410,0,0,0,''),(3283,6,0,'Warrior',1,1,3267,411,0,0,0,''),(3284,0,0,'Alchemy',1,1,3268,412,0,0,0,''),(3284,1,0,'Blacksmithing',1,1,3269,413,0,0,0,''),(3284,2,0,'Cooking',1,1,3270,0,0,0,0,''),(3284,3,0,'Enchanting',1,1,3271,0,0,0,0,''),(3284,4,0,'Engineering',1,1,3272,414,0,0,0,''),(3284,5,0,'First Aid',1,1,3273,415,0,0,0,''),(3284,6,0,'Fishing',1,1,3274,416,0,0,0,''),(3284,7,0,'Herbalism',1,1,3275,417,0,0,0,''),(3284,8,0,'Inscription',1,1,10017,189,0,0,0,''),(3284,9,0,'Leatherworking',1,1,3276,0,0,0,0,''),(3284,10,0,'Mining',1,1,3277,418,0,0,0,''),(3284,11,0,'Skinning',1,1,3278,0,0,0,0,''),(3284,12,0,'Tailoring',1,1,3279,0,0,0,0,''),(721,0,0,'The bank',1,1,743,275,0,0,0,''),(721,1,0,'The wind rider master',1,1,744,276,0,0,0,''),(721,2,0,'The guild master',1,1,742,277,0,0,0,''),(721,3,0,'The inn',1,1,2461,278,0,0,0,''),(721,4,0,'The mailbox',1,1,2462,279,0,0,0,''),(721,5,0,'The auction house',1,1,2463,280,0,0,0,''),(721,6,0,'The weapon master',1,1,3725,281,0,0,0,''),(721,7,0,'The stable master',1,1,4904,282,0,0,0,''),(721,8,0,'The battlemaster',1,1,8223,283,0,0,0,''),(721,9,0,'A class trainer',1,1,740,0,0,0,0,''),(721,10,0,'A profession trainer',1,1,751,0,0,0,0,''),(721,12,0,'The zeppelin master',1,1,10596,284,0,0,0,''),(740,0,0,'Druid',1,1,745,285,0,0,0,''),(740,1,0,'Hunter',1,1,746,286,0,0,0,''),(740,2,0,'Mage',1,1,747,287,0,0,0,''),(740,3,0,'Priest',1,1,748,287,0,0,0,''),(740,4,0,'Shaman',1,1,749,288,0,0,0,''),(740,5,0,'Warrior',1,1,750,286,0,0,0,''),(751,0,0,'Alchemy',1,1,780,289,0,0,0,''),(751,1,0,'Blacksmithing',1,1,781,290,0,0,0,''),(751,2,0,'Cooking',1,1,782,291,0,0,0,''),(751,3,0,'Enchanting',1,1,783,292,0,0,0,''),(751,4,0,'First Aid',1,1,784,293,0,0,0,''),(751,5,0,'Fishing',1,1,785,294,0,0,0,''),(751,6,0,'Herbalism',1,1,786,295,0,0,0,''),(751,7,0,'Inscription',1,1,10021,296,0,0,0,''),(751,8,0,'Leatherworking',1,1,787,297,0,0,0,''),(751,9,0,'Mining',1,1,788,298,0,0,0,''),(751,10,0,'Skinning',1,1,791,299,0,0,0,''),(751,11,0,'Tailoring',1,1,789,297,0,0,0,''),(3331,0,0,'The bank',1,1,3311,0,0,0,0,''),(3331,1,0,'The wind rider master',1,1,3312,0,0,0,0,''),(3331,2,0,'The inn',1,1,3313,419,0,0,0,''),(3331,3,0,'The stable master',1,1,4903,420,0,0,0,''),(3331,4,0,'A class trainer',1,1,3329,0,0,0,0,''),(3331,5,0,'A profession trainer',1,1,3330,0,0,0,0,''),(3329,0,0,'Druid',1,1,3314,421,0,0,0,''),(3329,1,0,'Hunter',1,1,3315,422,0,0,0,''),(3329,2,0,'Shaman',1,1,3316,423,0,0,0,''),(3329,3,0,'Warrior',1,1,3317,424,0,0,0,''),(3330,0,0,'Alchemy',1,1,3318,0,0,0,0,''),(3330,1,0,'Blacksmithing',1,1,3319,0,0,0,0,''),(3330,2,0,'Cooking',1,1,3320,425,0,0,0,''),(3330,3,0,'Enchanting',1,1,3321,0,0,0,0,''),(3330,4,0,'First Aid',1,1,3322,426,0,0,0,''),(3330,5,0,'Fishing',1,1,3323,427,0,0,0,''),(3330,6,0,'Herbalism',1,1,3324,0,0,0,0,''),(3330,7,0,'Inscription',1,1,10021,296,0,0,0,''),(3330,8,0,'Leatherworking',1,1,3325,428,0,0,0,''),(3330,9,0,'Mining',1,1,3326,0,0,0,0,''),(3330,10,0,'Skinning',1,1,3327,429,0,0,0,''),(3330,11,0,'Tailoring',1,1,3328,0,0,0,0,''),(10769,0,0,'The auction house',1,1,10737,318,0,0,0,''),(10769,1,0,'The bank',1,1,10738,319,0,0,0,''),(10769,2,0,'Barber',1,1,10739,320,0,0,0,''),(10769,3,0,'The bat handler',1,1,10740,321,0,0,0,''),(10769,4,0,'The battlemaster',1,1,10741,322,0,0,0,''),(10769,5,0,'The guild master',1,1,10748,323,0,0,0,''),(10769,6,0,'The inn',1,1,10750,324,0,0,0,''),(10769,7,0,'Locksmith',1,1,10753,325,0,0,0,''),(10769,8,0,'The mailbox',1,1,10755,326,0,0,0,''),(10769,9,0,'The stable master',1,1,10761,327,0,0,0,''),(10769,10,0,'The weapon master',1,1,10765,328,0,0,0,''),(10769,11,0,'The zeppelin master',1,1,10766,329,0,0,0,''),(10769,12,0,'A class trainer',1,1,10768,0,0,0,0,''),(10769,13,0,'A profession trainer',1,1,10767,0,0,0,0,''),(10768,0,0,'Mage',1,1,10754,331,0,0,0,''),(10768,1,0,'Paladin',1,1,10757,330,0,0,0,''),(10768,2,0,'Priest',1,1,10758,332,0,0,0,''),(10768,3,0,'Rogue',1,1,10759,333,0,0,0,''),(10768,4,0,'Warlock',1,1,10763,334,0,0,0,''),(10768,5,0,'Warrior',1,1,10764,335,0,0,0,''),(10767,0,0,'Alchemy',1,1,10736,336,0,0,0,''),(10767,1,0,'Blacksmithing',1,1,10742,337,0,0,0,''),(10767,2,0,'Cooking',1,1,10743,338,0,0,0,''),(10767,3,0,'Enchanting',1,1,10744,339,0,0,0,''),(10767,4,0,'Engineering',1,1,10745,340,0,0,0,''),(10767,5,0,'First Aid',1,1,10746,341,0,0,0,''),(10767,6,0,'Fishing',1,1,10747,342,0,0,0,''),(10767,7,0,'Herbalism',1,1,10749,343,0,0,0,''),(10767,8,0,'Inscription',1,1,10751,344,0,0,0,''),(10767,9,0,'Leatherworking',1,1,10752,345,0,0,0,''),(10767,10,0,'Mining',1,1,10756,347,0,0,0,''),(10767,11,0,'Skinning',1,1,10760,346,0,0,0,''),(10767,12,0,'Tailoring',1,1,10762,348,0,0,0,''),(3356,0,0,'The bank',1,1,3334,0,0,0,0,''),(3356,1,0,'The bat handler',1,1,3335,0,0,0,0,''),(3356,2,0,'The inn',1,1,3336,431,0,0,0,''),(3356,3,0,'The stable master',1,1,4905,432,0,0,0,''),(3356,4,0,'A class trainer',1,1,3354,0,0,0,0,''),(3356,5,0,'A profession trainer',1,1,3355,0,0,0,0,''),(3354,0,0,'Mage',1,1,3337,433,0,0,0,''),(3354,1,0,'Paladin',1,1,8166,0,0,0,0,''),(3354,2,0,'Priest',1,1,3338,434,0,0,0,''),(3354,3,0,'Rogue',1,1,3339,435,0,0,0,''),(3354,4,0,'Warlock',1,1,3340,436,0,0,0,''),(3354,5,0,'Warrior',1,1,3341,437,0,0,0,''),(3355,0,0,'Alchemy',1,1,3342,438,0,0,0,''),(3355,1,0,'Blacksmithing',1,1,3343,0,0,0,0,''),(3355,2,0,'Cooking',1,1,3344,0,0,0,0,''),(3355,3,0,'Enchanting',1,1,3345,439,0,0,0,''),(3355,4,0,'Engineering',1,1,3346,0,0,0,0,''),(3355,5,0,'First Aid',1,1,3347,440,0,0,0,''),(3355,6,0,'Fishing',1,1,3348,441,0,0,0,''),(3355,7,0,'Herbalism',1,1,3349,442,0,0,0,''),(3355,8,0,'Inscription',1,1,10822,344,0,0,0,''),(3355,9,0,'Leatherworking',1,1,3350,443,0,0,0,''),(3355,10,0,'Mining',1,1,3351,0,0,0,0,''),(3355,11,0,'Skinning',1,1,3352,444,0,0,0,''),(3355,12,0,'Tailoring',1,1,3353,445,0,0,0,''),(7633,0,0,'Auction House',1,1,7668,0,0,0,0,''),(7633,1,0,'The Bank',1,1,7639,0,0,0,0,''),(7633,2,0,'Dragonhawk Master',1,1,7640,353,0,0,0,''),(7633,3,0,'Guild Master',1,1,7641,354,0,0,0,''),(7633,4,0,'The Inn',1,1,7845,0,0,0,0,''),(7633,5,0,'Mailbox',1,1,7643,357,0,0,0,''),(7633,6,0,'Stable Master',1,1,7644,358,0,0,0,''),(7633,7,0,'Weapon Master',1,1,7645,359,0,0,0,''),(7633,8,0,'Battlemasters',1,1,7646,360,0,0,0,''),(7633,9,0,'Class Trainer',1,1,7649,0,0,0,0,''),(7633,10,0,'Profession Trainer',1,1,7667,0,0,0,0,''),(7633,11,0,'Mana Loom',1,1,8401,382,0,0,0,''),(7668,0,0,'To the west.',1,1,7634,349,0,0,0,''),(7668,1,0,'To the east.',1,1,7635,350,0,0,0,''),(7639,0,0,'The west.',1,1,7637,351,0,0,0,''),(7639,1,0,'The east.',1,1,7638,352,0,0,0,''),(7845,0,0,'The Silvermoon City Inn.',1,1,7642,355,0,0,0,''),(7845,1,0,'The Wayfarer\'s Rest tavern.',1,1,7844,356,0,0,0,''),(7649,0,0,'Druid',1,1,7647,361,0,0,0,''),(7649,1,0,'Hunter',1,1,7648,362,0,0,0,''),(7649,2,0,'Mage',1,1,7650,363,0,0,0,''),(7649,3,0,'Paladin',1,1,7651,364,0,0,0,''),(7649,4,0,'Priest',1,1,7652,365,0,0,0,''),(7649,5,0,'Rogue',1,1,7653,366,0,0,0,''),(7649,6,0,'Warlock',1,1,7654,367,0,0,0,''),(7667,0,0,'Alchemy',1,1,7655,368,0,0,0,''),(7667,1,0,'Blacksmithing',1,1,7656,369,0,0,0,''),(7667,2,0,'Cooking',1,1,7860,370,0,0,0,''),(7667,3,0,'Enchanting',1,1,7657,371,0,0,0,''),(7667,4,0,'Engineering',1,1,7658,372,0,0,0,''),(7667,5,0,'First Aid',1,1,7659,373,0,0,0,''),(7667,6,0,'Fishing',1,1,7660,374,0,0,0,''),(7667,7,0,'Herbalism',1,1,7661,375,0,0,0,''),(7667,8,0,'Inscription',1,1,10022,376,0,0,0,''),(7667,9,0,'Jewelcrafting',1,1,7662,377,0,0,0,''),(7667,10,0,'Leatherworking',1,1,7663,378,0,0,0,''),(7667,11,0,'Mining',1,1,7664,379,0,0,0,''),(7667,12,0,'Skinning',1,1,7665,380,0,0,0,''),(7667,13,0,'Tailoring',1,1,7666,381,0,0,0,''),(8185,0,0,'Dragonhawk Master',1,1,8184,353,0,0,0,''),(8185,1,0,'Guild Master',1,1,8186,0,0,0,0,''),(8185,2,0,'The Inn',1,1,8187,383,0,0,0,''),(8185,3,0,'Stable Master',1,1,8188,384,0,0,0,''),(8185,4,0,'Class Trainer',1,1,8196,0,0,0,0,''),(8185,5,0,'Profession Trainer',1,1,8205,0,0,0,0,''),(8196,0,0,'Druid',1,1,8189,0,0,0,0,''),(8196,1,0,'Hunter',1,1,8190,385,0,0,0,''),(8196,2,0,'Mage',1,1,8191,386,0,0,0,''),(8196,3,0,'Paladin',1,1,8192,387,0,0,0,''),(8196,4,0,'Priest',1,1,8193,388,0,0,0,''),(8196,5,0,'Rogue',1,1,8194,389,0,0,0,''),(8196,6,0,'Warlock',1,1,8195,390,0,0,0,''),(8205,0,0,'Alchemy',1,1,8197,391,0,0,0,''),(8205,1,0,'Blacksmithing',1,1,8198,392,0,0,0,''),(8205,2,0,'Cooking',1,1,8199,393,0,0,0,''),(8205,3,0,'Enchanting',1,1,8200,394,0,0,0,''),(8205,4,0,'Engineering',1,1,8201,0,0,0,0,''),(8205,5,0,'First Aid',1,1,8202,395,0,0,0,''),(8205,6,0,'Fishing',1,1,8203,0,0,0,0,''),(8205,7,0,'Herbalism',1,1,8204,396,0,0,0,''),(8205,8,0,'Inscription',1,1,10022,376,0,0,0,''),(8205,9,0,'Jewelcrafting',1,1,8208,397,0,0,0,''),(8205,10,0,'Leatherworking',1,1,8209,398,0,0,0,''),(8205,11,0,'Mining',1,1,8210,0,0,0,0,''),(8205,12,0,'Skinning',1,1,8211,399,0,0,0,''),(8205,13,0,'Tailoring',1,1,8212,400,0,0,0,''),(8282,0,0,'World\'s End Tavern',1,1,8329,240,0,0,0,''),(8282,1,0,'Bank',1,1,8315,0,0,0,0,''),(8282,2,0,'Inn',1,1,8317,0,0,0,0,''),(8282,3,0,'Flight Master',1,1,8319,243,0,0,0,''),(8282,4,0,'Mailbox',1,1,8320,0,0,0,0,''),(8282,5,0,'Stable Master',1,1,8321,0,0,0,0,''),(8282,6,0,'Battlemaster',1,1,8323,0,0,0,0,''),(8282,7,0,'Profession Trainer',1,1,8326,0,0,0,0,''),(8282,8,0,'Mana Loom',1,1,8402,256,0,0,0,''),(8282,9,0,'Alchemy Lab',1,1,8546,257,0,0,0,''),(8282,10,0,'Gem Merchant',1,1,8548,0,0,0,0,''),(8315,0,0,'Aldor Bank',1,1,8313,260,0,0,0,''),(8315,1,0,'Scryers Bank',1,1,8314,241,0,0,0,''),(8317,0,0,'Aldor Inn',1,1,8316,261,0,0,0,''),(8317,1,0,'Scryers Inn',1,1,8318,242,0,0,0,''),(8320,0,0,'Aldor Bank',1,1,8313,260,0,0,0,''),(8320,1,0,'Aldor Inn',1,1,8316,261,0,0,0,''),(8320,2,0,'Scryers Bank',1,1,8314,241,0,0,0,''),(8320,3,0,'Scryers Inn',1,1,8318,242,0,0,0,''),(8321,0,0,'Aldor Stable',1,1,8316,244,0,0,0,''),(8321,1,0,'Scryers Stable',1,1,8318,245,0,0,0,''),(8419,2,0,'Inn',1,1,8421,261,0,0,0,''),(8419,1,0,'Bank',1,1,8313,260,0,0,0,''),(8419,0,0,'World\'s End Tavern',1,1,8329,240,0,0,0,''),(8326,0,0,'Alchemy',1,1,8327,248,0,0,0,''),(8326,1,0,'Blacksmithing',1,1,8335,249,0,0,0,''),(8326,2,0,'Cooking',1,1,8328,250,0,0,0,''),(8326,3,0,'Enchanting',1,1,8330,251,0,0,0,''),(8326,4,0,'First Aid',1,1,8331,252,0,0,0,''),(8326,5,0,'Jewelcrafting',1,1,8332,253,0,0,0,''),(8326,6,0,'Leatherworking',1,1,8334,254,0,0,0,''),(8326,7,0,'Skinning',1,1,8333,255,0,0,0,''),(8548,0,0,'Aldor Gem Merchant',1,1,8547,259,0,0,0,''),(8548,1,0,'Scryer Gem Merchant',1,1,8549,258,0,0,0,''),(8357,0,0,'World\'s End Tavern',1,1,8358,240,0,0,0,''),(8357,1,0,'Bank',1,1,8359,241,0,0,0,''),(8357,2,0,'Inn',1,1,8360,242,0,0,0,''),(8357,3,0,'Flight Master',1,1,8361,243,0,0,0,''),(8357,4,0,'Mailbox',1,1,8363,242,0,0,0,''),(8357,5,0,'Stable Master',1,1,8364,245,0,0,0,''),(8357,6,0,'Battlemaster',1,1,8365,0,0,0,0,''),(8357,7,0,'Profession Trainer',1,1,8403,0,0,0,0,''),(8357,8,0,'Mana Loom',1,1,8550,256,0,0,0,''),(8357,9,0,'Alchemy Lab',1,1,8551,257,0,0,0,''),(8357,10,0,'Gem Merchant',1,1,8552,258,0,0,0,''),(8365,0,0,'Alliance Battlemasters',1,1,8408,246,0,0,0,''),(8365,1,0,'Horde Battlemasters',1,1,8409,247,0,0,0,''),(8403,0,0,'Alchemy',1,1,8411,248,0,0,0,''),(8403,1,0,'Blacksmithing',1,1,8412,249,0,0,0,''),(8403,2,0,'Cooking',1,1,8413,250,0,0,0,''),(8403,3,0,'Enchanting',1,1,8414,251,0,0,0,''),(8403,4,0,'First Aid',1,1,8415,252,0,0,0,''),(8403,5,0,'Jewelcrafting',1,1,8416,253,0,0,0,''),(8403,6,0,'Leatherworking',1,1,8417,254,0,0,0,''),(8403,7,0,'Skinning',1,1,8418,255,0,0,0,''),(8419,3,0,'Flight Master',1,1,8319,243,0,0,0,''),(8419,4,0,'Mailbox',1,1,8422,261,0,0,0,''),(8419,5,0,'Stable Master',1,1,8423,244,0,0,0,''),(8419,6,0,'Battlemaster',1,1,8323,0,0,0,0,''),(8419,7,0,'Profession Trainer',1,1,8424,0,0,0,0,''),(8419,8,0,'Mana Loom',1,1,8402,256,0,0,0,''),(8419,9,0,'Alchemy Lab',1,1,8546,257,0,0,0,''),(8419,10,0,'Gem Merchant',1,1,8547,259,0,0,0,''),(8323,0,0,'Alliance Battlemasters',1,1,8324,246,0,0,0,''),(8323,1,0,'Horde Battlemasters',1,1,8325,247,0,0,0,''),(8323,2,0,'Arena Battlemasters',1,1,9206,262,0,0,0,''),(8424,0,0,'Alchemy',1,1,8327,248,0,0,0,''),(8424,1,0,'Blacksmithing',1,1,8335,249,0,0,0,''),(8424,2,0,'Cooking',1,1,8328,250,0,0,0,''),(8424,3,0,'Enchanting',1,1,8425,251,0,0,0,''),(8424,4,0,'First Aid',1,1,8331,252,0,0,0,''),(8424,5,0,'Jewelcrafting',1,1,8426,253,0,0,0,''),(8424,6,0,'Leatherworking',1,1,8334,254,0,0,0,''),(8424,7,0,'Skinning',1,1,8333,255,0,0,0,''),(10043,0,0,'Arena',1,1,10057,0,0,0,0,''),(10043,1,0,'Auction House',1,1,10092,0,0,0,0,''),(10043,2,0,'Bank',1,1,10089,0,0,0,0,''),(10043,3,0,'Barber',1,1,10085,133,0,0,0,''),(10043,4,0,'Battlemasters',1,1,10058,0,0,0,0,''),(10043,5,0,'Capital Portals',1,1,10058,0,0,0,0,''),(10043,6,0,'Flight Master',1,1,10086,134,0,0,0,''),(10043,7,0,'Guild Master',1,1,10095,135,0,0,0,''),(10043,8,0,'Inn',1,1,10084,136,0,0,0,''),(10043,9,0,'Locksmith',1,1,10262,139,0,0,0,''),(10043,10,0,'Mailbox',1,1,10090,0,0,0,0,''),(10056,0,0,'The Alliance Quarter',1,1,10054,129,0,0,0,''),(10043,12,0,'Stable Master',1,1,10083,149,0,0,0,''),(10106,0,0,'Arena',1,1,10102,270,0,0,0,''),(10043,14,0,'Vendors',1,1,10173,0,0,0,0,''),(10055,0,0,'Eastern Sewer Entrance',1,1,10045,126,0,0,0,''),(10055,1,0,'Western Sewer Entrance',1,1,10044,127,0,0,0,''),(10055,2,0,'Well Entrance',1,1,10050,128,0,0,0,''),(10056,2,0,'The Violet Citadel',1,1,10052,141,0,0,0,''),(10056,3,0,'The Violet Hold',1,1,10051,142,0,0,0,''),(10056,4,0,'Sewers',1,1,10055,0,0,0,0,''),(10056,5,0,'Trade District',1,1,10062,143,0,0,0,''),(10056,6,0,'Krasus\' Landing',1,1,10091,140,0,0,0,''),(10056,7,0,'Antonidas Memorial',1,1,10049,144,0,0,0,''),(10056,8,0,'Runeweaver Square',1,1,10048,145,0,0,0,''),(10056,9,0,'The Eventide',1,1,10047,146,0,0,0,''),(10056,10,0,'Cemetery',1,1,10046,147,0,0,0,''),(10056,11,0,'Lexicon of Power',1,1,10205,148,0,0,0,''),(10057,0,0,'Eastern Sewer Entrance',1,1,10045,126,0,0,0,''),(10057,1,0,'Western Sewer Entrance',1,1,10044,127,0,0,0,''),(10057,2,0,'Well Entrance',1,1,10050,128,0,0,0,''),(10058,0,0,'The Alliance Quarter',1,1,10054,129,0,0,0,''),(10058,1,0,'The Horde Quarter',1,1,10053,130,0,0,0,''),(10078,0,0,'Alchemy',1,1,10077,151,0,0,0,''),(10078,1,0,'Blacksmithing',1,1,10076,152,0,0,0,''),(10078,2,0,'Cooking',1,1,10073,0,0,0,0,''),(10078,3,0,'Enchanting',1,1,10072,153,0,0,0,''),(10078,4,0,'Engineering',1,1,10071,154,0,0,0,''),(10078,5,0,'First Aid',1,1,10070,155,0,0,0,''),(10078,6,0,'Fishing',1,1,10069,156,0,0,0,''),(10078,7,0,'Herbalism',1,1,10068,157,0,0,0,''),(10078,8,0,'Inscription',1,1,10067,148,0,0,0,''),(10078,9,0,'Jewelcrafting',1,1,10066,158,0,0,0,''),(10078,10,0,'Leatherworking',1,1,10064,159,0,0,0,''),(10078,11,0,'Mining',1,1,10065,160,0,0,0,''),(10078,12,0,'Skinning',1,1,10064,161,0,0,0,''),(10078,13,0,'Tailoring',1,1,10063,162,0,0,0,''),(10082,1,0,'Class Trainer',1,1,10097,0,0,0,0,''),(10082,2,0,'Cold Weather Flying Trainer',1,1,10080,140,0,0,0,''),(10082,3,0,'Portal Trainer',1,1,10081,150,0,0,0,''),(10082,4,0,'Profession Trainer',1,1,10078,0,0,0,0,''),(10084,0,0,'Alliance Inn',1,1,10074,137,0,0,0,''),(10084,1,0,'Horde Inn',1,1,10075,138,0,0,0,''),(10089,0,0,'Northern Bank',1,1,10087,131,0,0,0,''),(10089,1,0,'Southern Bank',1,1,10088,132,0,0,0,''),(10089,2,0,'Sewers',1,1,10055,0,0,0,0,''),(10090,0,0,'Inn',1,1,10084,136,0,0,0,''),(10090,1,0,'Bank',1,1,10089,0,0,0,0,''),(10090,2,0,'Krasus\' Landing',1,1,10091,140,0,0,0,''),(10092,0,0,'The Alliance Quarter',1,1,10054,129,0,0,0,''),(10092,1,0,'The Horde Quarter',1,1,10053,130,0,0,0,''),(10097,0,0,'The Alliance Quarter',1,1,10054,129,0,0,0,''),(10097,1,0,'The Horde Quarter',1,1,10053,130,0,0,0,''),(10097,2,0,'The Horde Quarter',1,1,10053,130,0,0,0,''),(10168,0,0,'Melee Weapons',1,1,10151,172,0,0,0,''),(10168,1,0,'Ranged & Thrown Weapons',1,1,10150,173,0,0,0,''),(10168,2,0,'Staves & Wands',1,1,10149,174,0,0,0,''),(10170,0,0,'Cloth Armor',1,1,10166,163,0,0,0,''),(10170,1,0,'Leather Armor',1,1,10165,238,0,0,0,''),(10170,2,0,'Mail Armor',1,1,10164,238,0,0,0,''),(10170,3,0,'Plate Armor',1,1,10163,239,0,0,0,''),(10170,4,0,'Shields',1,1,10161,239,0,0,0,''),(10173,0,0,'Armor',1,1,10170,0,0,0,0,''),(10173,1,0,'Clothing',1,1,10167,163,0,0,0,''),(10173,2,0,'Emblem Gear',1,1,10160,0,0,0,0,''),(10173,3,0,'Flowers',1,1,10159,164,0,0,0,''),(10173,4,0,'Fruit',1,1,10158,165,0,0,0,''),(10173,5,0,'General Goods',1,1,10157,166,0,0,0,''),(10173,6,0,'Jewelry',1,1,10169,158,0,0,0,''),(10173,7,0,'Pet Supplies & Exotic Mounts',1,1,10155,167,0,0,0,''),(10173,8,0,'Pie, Pastry & Cakes',1,1,10154,168,0,0,0,''),(10173,9,0,'Reagents & Magical Goods',1,1,10156,169,0,0,0,''),(10173,10,0,'Toys',1,1,10152,170,0,0,0,''),(10173,11,0,'Trade Supplies',1,1,10153,166,0,0,0,''),(10173,12,0,'Trinkets, Relics & Off-hand Items',1,1,10162,171,0,0,0,''),(10173,13,0,'Weapons',1,1,10168,0,0,0,0,''),(10173,14,0,'Wine & Cheese',1,1,10148,175,0,0,0,''),(10262,0,0,'Eastern Sewer Entrance',1,1,10045,126,0,0,0,''),(10262,1,0,'Western Sewer Entrance',1,1,10044,127,0,0,0,''),(10262,2,0,'Well Entrance',1,1,10050,128,0,0,0,''),(10105,0,0,'Eastern Sewer Entrance',1,1,10103,126,0,0,0,''),(10105,1,0,'Western Sewer Entrance',1,1,10104,127,0,0,0,''),(10106,1,0,'Bank',1,1,10101,271,0,0,0,''),(10056,1,0,'The Horde Quarter',1,1,10053,130,0,0,0,''),(10105,2,0,'Sewer Tunnel',1,1,10099,273,0,0,0,''),(10106,2,0,'Inn',1,1,10100,272,0,0,0,''),(10084,2,0,'Sewers',1,1,10055,136,0,0,0,''),(10106,3,0,'Sewer Exits',1,1,10105,0,0,0,0,''),(10106,4,0,'Vendors',1,1,10098,274,0,0,0,''),(10043,11,0,'Points of Interest',1,1,10056,0,0,0,0,''),(10043,13,0,'Trainers',1,1,10082,0,0,0,0,''),(9480,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(699,0,6,'I would like to check my deposit box.',9,131072,0,0,0,0,0,''),(686,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(6500,0,9,'I wish to join the battle!',12,1048576,0,0,0,0,0,''),(4106,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(4107,0,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(4307,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(4348,0,3,'Train me.',5,16,0,0,0,0,0,''),(4127,0,3,'Train me.',5,16,0,0,0,0,0,''),(4206,0,3,'Train me.',5,16,0,0,0,0,0,''),(4350,0,3,'Train me.',5,16,0,0,0,0,0,''),(2781,0,3,'Train me.',5,16,0,0,0,0,0,''),(4145,0,3,'Train me.',5,16,0,0,0,0,0,''),(9453,0,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(8754,0,1,'I\'m interested in purchasing a new drake.',3,128,0,0,0,0,0,''),(8649,0,1,'What do you have for sale, Rumpus?',3,128,0,0,0,0,0,''),(8648,0,1,'What do you have for sale?',3,128,0,0,0,0,0,''),(8647,0,1,'Me want Gug fix armor. Maybe me buy someting.',3,128,0,0,0,0,0,''),(8558,0,2,'Show me where I can fly.',4,8192,0,0,0,0,0,''),(8387,0,1,'I wish to browse your wares.',3,128,0,0,0,0,0,''),(8623,0,1,'Show me your gryphons, Brunn.',3,128,0,0,0,0,0,''),(8622,0,3,'I seek training to ride a steed.',5,16,0,0,0,0,0,''),(11203,0,0,'With all due respect, your Highness, we can do this alone.',1,1,11204,0,0,0,0,''),(11204,0,0,'We do wish for you to stand down, your Highness.',1,1,11205,0,0,0,0,''),(11101,0,1,'I wish to browse your wares.',3,128,0,0,0,0,0,''),(10996,0,0,'Ormus, what happened to your eyes?',1,1,10997,0,0,0,0,''),(10910,0,0,'What is the Ashen Verdict?',1,1,10912,0,0,0,0,''),(10912,0,0,'How can I learn to work Primordial Saronite?',1,1,10911,0,0,0,0,''),(10943,0,0,'What would you have of me, my lady?',1,1,0,0,0,0,0,''),(11031,0,0,'Can you remove the sword?',1,1,0,0,0,0,0,''),(6597,0,1,'Redeem Battleground Marks for Honor.',3,128,0,0,0,0,0,''),(2404,0,6,'I would like to check my deposit box.',9,131072,0,0,0,0,0,''),(1630,0,0,'I\'m not a journeyman herbalist -- am I able to still assist you in your work?',1,1,1668,0,0,0,0,''),(4131,0,3,'Train me.',5,16,0,0,0,0,0,''),(4349,0,3,'Train me.',5,16,0,0,0,0,0,''),(4163,0,3,'Train me.',5,16,0,0,0,0,0,''),(1482,0,0,'Tell me more about these hippogryphs.',1,1,1481,0,0,0,0,''),(4302,0,2,'I need a ride.',4,8192,0,0,0,0,0,''),(1341,0,0,'What\'s an elf like you doing inside a cave like this?',1,1,1363,0,0,0,0,''),(1366,0,0,'What happened to him in the first place?  When I... encountered him, he was rather malicious.',1,1,1365,0,0,0,0,''),(1365,0,0,'I possess part of Eranikus\' essence.  What do you want with it... or with me?',1,1,1364,0,0,0,0,''),(1364,0,0,'I will consider what you have told me.',1,1,0,0,0,0,0,''),(7596,0,0,'I\'ve heard your name spoken only in whispers, mage.  Who are you?',1,1,8009,0,0,0,0,''),(8009,0,0,'Go on, please.',1,1,8010,0,0,0,0,''),(8010,0,0,'I see.',1,1,8011,0,0,0,0,''),(8011,0,0,'What did you do then?',1,1,8012,0,0,0,0,''),(8012,0,0,'What happened next?',1,1,8013,0,0,0,0,''),(8014,0,0,'There was something else I wanted to ask you.',1,1,7596,0,0,0,0,''),(9485,0,0,'What can you tell me about Loken and the iron dwarves?',1,1,0,0,0,0,0,''),(9564,0,0,'You mean the iceberg?',1,1,9565,0,0,0,0,''),(9565,0,0,'All this equipment just to examine ice?',1,1,9566,0,0,0,0,''),(9566,0,0,'It\'s just ice. Why all the fuss?',1,1,9567,0,0,0,0,''),(9567,0,0,'Rocket propelled warheads? Isn\'t that a bit aggressive?',1,1,9585,0,0,0,0,''),(9010,1,1,'Do you sell any of this stuff?',3,128,0,0,0,0,0,''),(10627,1,0,'Do you actually sell anything?',1,1,10628,0,0,0,0,''),(10628,1,3,'Fine, then how about some training?',5,16,0,0,0,0,0,''),(9733,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(8903,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9763,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(10417,1,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(10201,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9868,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9492,1,0,'Use the outhouse.',1,1,0,0,0,0,0,''),(2685,1,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(597,1,0,'I wish to unlearn Armorsmithing!',1,1,0,0,0,0,0,''),(593,1,0,'Tell me more about Forging Armor.',1,1,590,0,0,0,0,''),(9113,1,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(11031,1,0,'My lady, I think I hear Arthas coming. Whatever you\'re going to do, do it quickly.',1,1,0,0,0,0,0,''),(3185,1,1,'I would like to buy from you.',3,128,0,0,0,0,0,''),(4019,1,3,'I seek training to ride a steed.',5,16,0,0,0,0,0,''),(1403,1,1,'I\'d like to purchase more Tharlendris seeds.',3,128,0,0,0,0,0,''),(10723,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10025,1,0,'Take me to the ship.',1,1,0,0,0,0,0,''),(1341,1,0,'Do you know someone... or something, rather, by the name of Eranikus?',1,1,1366,0,0,0,0,''),(9484,1,1,'Show me what you have for sale, trapper.',3,128,0,0,0,0,0,''),(9763,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(10201,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(9866,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9868,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(344,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(349,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(840,2,0,'Hero, I have urgent business with Corporal Splithoof.',1,1,0,0,0,0,0,''),(593,2,0,'Tell me more about Forging Weapons.',1,1,592,0,0,0,0,''),(345,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(7949,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9113,2,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(1581,2,5,'Make this inn your home.',8,65536,0,0,0,0,0,''),(9866,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(344,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(349,3,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(345,3,1,'Let me browse your goods.',3,128,0,0,0,0,0,''),(1581,3,1,'I want to browse your goods.',3,128,4081,0,0,0,0,''),(9870,0,0,'I\'ve heard that vrykul women cannot fight at all. If you wish to prove me wrong, you can try.',1,1,0,0,0,0,0,''),(9878,0,0,'I have bad news for you Onu\'zun: I\'m gonna have to cut short your dreams!',1,1,0,0,0,0,0,''),(9869,0,0,'I challenge you to a duel, Scarlet scum!',1,1,0,0,0,0,0,''),(9875,0,0,'Sorry, Tinky, but I can\'t afford you as a distraction while I\'m doing what needs to be done here.',1,1,0,0,0,0,0,''),(10005,0,0,'Grasp the Eye of the Lich King and focus your will upon it to scry for important information.',1,1,0,0,0,0,0,''),(10008,0,0,'Waken the slumbering mjordin to see if it is really the ancient hero, Iskalder.',1,1,0,0,0,0,0,''),(10188,0,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(10129,0,0,'Guide me to the Fortress Graveyard.',1,1,0,0,0,0,0,''),(10129,1,0,'Guide me to the Sunken Ring Graveyard.',1,1,0,0,0,0,0,''),(10129,3,0,'Guide me to the Westspark Graveyard.',1,1,0,0,0,0,0,''),(10129,5,0,'Guide me back to the Horde landing camp. ',1,1,0,0,0,0,0,''),(8060,0,0,'YES!',1,1,8061,0,0,0,0,''),(8060,1,0,'NO!',1,1,0,0,806000,0,0,''),(21248,0,0,'Search the body for the pilot\'s emergency toolkit.',1,1,0,0,212481,0,0,''),(5275,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,NULL),(21249,0,0,'Shake Hands',1,1,0,0,21249,0,0,NULL),(10354,0,0,'Tell me about demolishers.',1,1,10353,0,0,0,0,''),(10354,1,1,'I want to browse your goods.',3,128,0,0,0,0,0,''),(10349,0,0,'What can these siege engines do?',1,1,10348,0,0,0,0,''),(7469,0,2,'I desire to travel by hippogryph.',4,8192,0,0,0,0,0,''),(7557,0,0,'Tell me about the Defenders.',1,1,7575,0,0,0,0,''),(10667,0,6,'I would like to check my deposit box.',9,131072,0,0,0,0,0,NULL),(10667,1,1,'Let me browse your goods.',3,128,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `gossip_menu_option` ENABLE KEYS */;
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

