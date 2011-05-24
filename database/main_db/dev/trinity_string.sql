
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
DROP TABLE IF EXISTS `trinity_string`;
CREATE TABLE `trinity_string` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `trinity_string` WRITE;
/*!40000 ALTER TABLE `trinity_string` DISABLE KEYS */;
INSERT INTO `trinity_string` VALUES (1,'You should select a character or a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'You should select a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'[SERVER] %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'|cffff0000[Event Message]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'There is no help for that command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'There is no such command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'There is no such subcommand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Command %s have subcommands:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Commands available to you:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Incorrect syntax.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Your account level is: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Active connections: %u (max: %u) Queued connections: %u (max: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Server uptime: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Player saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'All players saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'There are the following active GMs on this server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'There are no GMs currently logged in on this server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Cannot do that while flying.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Cannot do that in Battlegrounds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Target is flying you can\'t do that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'%s is flying command failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'You are not mounted so you can\'t dismount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Cannot do that while fighting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'You used it recently.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Password not changed (unknown error)!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'The password was changed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'The old password is wrong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Your account is now locked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Your account is now unlocked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,', rank ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,' [known]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,' [learn]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,' [passive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,' [talent]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,' (offline)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'You are: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'visible',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'invisible',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'done',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'You',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,' <unknown> ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'<error>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'<non-existing character>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'You must be at least level %u to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'You must be at least level %u and have item %s to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Hello! Ready for some training?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Invaid item count (%u) for item %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Mail can\'t have more %u item stacks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'The new passwords do not match',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Your password can\'t be longer than 16 characters (client limit), password not changed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Current Message of the day: \r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Using World DB: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Using script library: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'Using creature EventAI: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'Online players: %u (max: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'Up to %u expansion allowed now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Global notify: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'Map: %u (%s) Zone: %u (%s) Area: %u (%s) Phase: %u\nX: %f Y: %f Z: %f Orientation: %f\ngrid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,'%s is already being teleported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,'You can summon a player to your instance only if he is in your party with you as leader.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,'You cannot go to the player\'s instance because you are in a party now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,'You can go to the player\'s instance while not being in his party only if your GM mode is on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,'You can not go to player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'You can not summon player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'You are summoning %s%s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'You are being summoned by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,'You are teleporting %s%s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,'You are being teleported by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'Player (%s) does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,'Appearing at %s\'s location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,'%s is appearing to your location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,'Incorrect values.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,'No character selected.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,'%s is not in a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,'You changed HP of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,'%s changed your HP to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,'You changed MANA of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,'%s changed your MANA to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,'You changed ENERGY of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,'%s changed your ENERGY to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,'Current energy: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(125,'You changed rage of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(126,'%s changed your rage to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(127,'You changed level of %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,'GUID %i, faction is %i, flags is %i, npcflag is %i, DY flag is %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,'Wrong faction: %u (not found in factiontemplate.dbc).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,'You changed GUID=%i \'s Faction to %i, flags to %i, npcflag to %i, dyflag to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,'You changed the spellflatid=%i, val= %i, mark =%i to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,'%s changed your spellflatid=%i, val= %i, mark =%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,'%s has access to all taxi nodes now (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,'%s has no more access to all taxi nodes now (only visited accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,'%s has given you access to all taxi nodes (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,'%s has removed access to all taxi nodes (only visited still accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,'You set all speeds to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,'%s set all your speeds to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,'You set the speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,'%s set your speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,'You set the swim speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,'%s set your swim speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,'You set the backwards run speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,'%s set your backwards run speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'You set the fly speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,'%s set your fly speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,'You set the size %2.2f of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,'%s set your size to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,'There is no such mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,'You give a mount to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,'%s gave you a mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,'USER1: %i, ADD: %i, DIF: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,'You take all copper of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,'%s took you all of your copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,'You take %i copper from %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,'%s took %i copper from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,'You give %i copper to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,'%s gave you %i copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,'You hear sound %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,'USER2: %i, ADD: %i, RESULT: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,'Removed bit %i in field %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,'Set bit %i in field %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,'Teleport location table is empty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,'Teleport location not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,'Requires search parameter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,'There are no teleport locations matching your request.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,'Locations found are:\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,'Mail sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,'You try to hear sound %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,'You can\'t teleport self to self!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,'server console command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(173,'You changed runic power of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(174,'%s changed your runic power to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,'Liquid level: %f, ground: %f, type: %d, status: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,'No selection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,'Object GUID is: lowpart %u highpart %X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,'The name was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,'Error, name can only contain characters A-Z and a-z.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,'The subname was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,'Not yet implemented',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,'Item \'%i\' \'%s\' added to list with maxcount \'%i\' and incrtime \'%i\' and extendedcost \'%i\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,'Item \'%i\' not found in database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,'Item \'%i\' \'%s\' deleted from vendor list',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,'Item \'%i\' not found in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,'Spells of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,'Spells of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,'Talents of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,'Talents of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,'Your spells have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,'Your talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,'Unknown case \'%s\' for .resetall command. Type full correct case name.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,'Spells will reset for all players at login. Strongly recommend re-login!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,'Talents will reset for all players at login. Strongly recommend re-login!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,'Creature (GUID: %u) No waypoint found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,'Creature (GUID: %u) Last waypoint not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,'Creature (GUID: %u) No waypoint found - used \'wpguid\'. Now trying to find it by its position...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,'Creature (GUID: %u) No waypoints found - This is a MaNGOS db problem (single float).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(224,'Selected creature is ignored - provided GUID is used',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(226,'You must select a visual waypoint.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,'No visual waypoints found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,'Could not create visual waypoint with creatureID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,'All visual waypoints removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,'Could not create waypoint-creature with ID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,'No GUID provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,'No waypoint number provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,'Argument required for \'%s\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,'Waypoint %i added to GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,'Waypoint %d added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,'Waypoint changed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,'Waypoint %s modified.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,'WP export successfull.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,'No waypoints found inside the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,'File imported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,'Waypoint removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,'Warning: Could not delete WP from the world with ID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,'This happens if the waypoint is too far away from your char.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,'The WP is deleted from the database, but not from the world here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,'They will disappear after a server restart.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,'Waypoint %d: Info for creature: %s, GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,'Waittime: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,'Model %d: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,'Emote: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(250,'Spell: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,'Text%d (ID: %i): %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,'AIScript: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,'Forced rename for player %s will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,'Forced rename for player %s (GUID #%u) will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,'Waypoint-Creature (GUID: %u) Not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,'Could not find NPC...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,'Creature movement type set to \'%s\', waypoints removed (if any).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,'Creature movement type set to \'%s\', waypoints were not removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(259,'Incorrect value, use on or off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,'Value saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261,'Value saved, you may need to rejoin or clean your client cache.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(262,'Areatrigger ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(263,'Target map or coordinates is invalid (X: %f Y: %f MapId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(264,'Zone coordinates is invalid (X: %f Y: %f AreaId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(265,'Zone %u (%s) is part of instanceable map %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(266,'Nothing found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,'Object not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(268,'Creature not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(269,'Warning: Mob found more than once - you will be teleported to the first one found in DB.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,'Creature Removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,'Creature moved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(272,'Creature (GUID:%u) must be on the same map as player!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(273,'Game Object (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,'Game Object (GUID: %u) has references in not found creature %u GO list, can\'t be deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,'Game Object (GUID: %u) removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) turned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) moved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(278,'You must select a vendor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(279,'You must send id for item',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(280,'Vendor has too many items (max 128)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(281,'You can\'t kick self, logout instead',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(282,'Player %s kicked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(284,'Accepting Whisper: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(285,'Accepting Whisper: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(286,'Accepting Whisper: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(287,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(288,'Tickets count: %i show new tickets: %s\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(289,'New ticket from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(290,'Ticket of %s (Last updated: %s):\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(291,'New ticket show: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(292,'New ticket show: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(293,'Ticket %i doesn\'t exist',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(294,'All tickets deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(295,'Character %s ticket deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(296,'Ticket deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(297,'Spawn distance changed to: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(298,'Spawn time changed to: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(299,'The honor of %s was set to %u!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(300,'Your chat has been disabled for %u minutes. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(301,'You have disabled %s\'s chat for %u minutes. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(302,'Player\'s chat is already enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(303,'Your chat has been enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(304,'You have enabled %s\'s chat.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(305,'Faction %s (%u) reputation of %s was set to %5d!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(306,'The arena points of %s was set to %u!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(307,'No faction found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(308,'Faction %i unknown!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(309,'Invalid parameter %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(310,'delta must be between 0 and %d (inclusive)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,'%d - |cffffffff|Hfaction:%d|h[%s]|h|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(312,' [visible]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(313,' [at war]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(314,' [peace forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(315,' [hidden]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(316,' [invisible forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(317,' [inactive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(318,'Hated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(319,'Hostile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(320,'Unfriendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(321,'Neutral',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(322,'Friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(323,'Honored',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(324,'Revered',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(325,'Exalted',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(326,'Faction %s (%u) can\'nt have reputation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(327,' [no reputation]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(328,'Characters at account %s (Id: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(329,'  %s (GUID %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(330,'No players found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(331,'Extended item cost %u not exist',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(332,'GM mode is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(333,'GM mode is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(334,'GM Chat Badge is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(335,'GM Chat Badge is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(336,'You repair all %s\'s items.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(337,'All your items repaired by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(338,'You set waterwalk mode %s for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(339,'Your waterwalk mode %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(340,'%s is now following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(341,'%s is not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(342,'%s is now not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(343,'Creature (Entry: %u) cannot be tamed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(344,'You already have pet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(345,'Forced customize for player %s will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(346,'Forced customize for player %s (GUID #%u) will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(347,'TaxiNode ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(348,'Game Object (Entry: %u) have invalid data and can\'t be spawned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(400,'|cffff0000[System Message]:|rScripts reloaded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(401,'You change security level of account %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(402,'%s changed your security level to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(403,'You have low security level for this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(404,'Creature movement disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(405,'Creature movement enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(406,'Weather can\'t be changed for this zone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(407,'Weather system disabled at server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(408,'%s is banned for %s. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(409,'%s is banned permanently for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(410,'%s %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(411,'%s unbanned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(412,'There was an error removing the ban on %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(413,'Account not exist: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(414,'There is no such character.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(415,'There is no such IP in banlist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(416,'Account %s has never been banned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(417,'Ban history for account %s:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(418,'Ban Date: %s Bantime: %s Still active: %s  Reason: %s Set by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(419,'Inf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(420,'Never',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(421,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(422,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(423,'IP: %s\nBan Date: %s\nUnban Date: %s\nRemaining: %s\nReason: %s\nSet by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(424,'There is no matching IPban.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(425,'There is no matching account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(426,'There is no banned account owning a character matching this part.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(427,'The following IPs match your pattern:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(428,'The following accounts match your query:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(429,'You learned many spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(430,'You learned all spells for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(431,'You learned all talents for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(432,'You learned all languages.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(433,'You learned all craft skills and recipes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(434,'Could not find \'%s\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(435,'Invalid item id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(436,'No items found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(437,'Invalid gameobject id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(438,'Found items %u: %u ( inventory %u mail %u auction %u guild %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(439,'Found gameobjects %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(440,'Invalid creature id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(441,'Found creatures %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(442,'No area found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(443,'No item sets found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(444,'No skills found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(445,'No spells found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(446,'No quests found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(447,'No creatures found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(448,'No gameobjects found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(449,'Graveyard #%u doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(450,'Graveyard #%u already linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(451,'Graveyard #%u linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(452,'Graveyard #%u can\'t be linked to subzone or not existed zone #%u (internal error).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(454,'No faction in Graveyard with id= #%u , fix your DB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(455,'invalid team, please fix database',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(456,'any',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(457,'alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(458,'horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(459,'Graveyard #%u (faction: %s) is nearest from linked to zone #%u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(460,'Zone #%u doesn\'t have linked graveyards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(461,'Zone #%u doesn\'t have linked graveyards for faction: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(462,'Teleport location already exists!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(463,'Teleport location added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(464,'Teleport location NOT added: database error.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(465,'Teleport location deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(466,'No taxinodes found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(467,'Target unit has %d auras:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(468,'id: %d effmask: %d charges: %d stack: %d slot %d duration: %d maxduration: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(469,'Target unit has %d auras of type %d:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(470,'id: %d eff: %d amount: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(471,'Quest %u not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(472,'Quest %u started from item. For correct work, please, add item to inventory and start quest in normal way: .additem %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(473,'Quest removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(474,' [rewarded]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(475,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(476,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(477,'%s\'s Fly Mode %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(478,'Opcode %u sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(479,'Character loaded successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(480,'Failed to load the character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(481,'Character dumped successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(482,'Character dump failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(483,'Spell %u broken and not allowed to cast or learn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(484,'Skill %u (%s) for player %s set to %u and current maximum set to %u (without permanent (talent) bonuses).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(485,'Player %s must have skill %u (%s) before using this command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(486,'Invalid skill id (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(487,'You learned default GM spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(488,'You already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(489,'Target(%s) already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(490,'%s doesn\'t know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(491,'You already forgot that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(492,'All spell cooldowns removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(493,'Spell %u cooldown removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(494,'Command : Additem, itemId = %i, amount = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(495,'Command : Additemset, itemsetId = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(496,'Removed itemID = %i, amount = %i from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(497,'Cannot create item \'%i\' (amount: %i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(498,'You need to provide a guild name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(499,'Player not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(500,'Player already has a guild!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(501,'Guild not created! (already exists?)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(502,'No items from itemset \'%u\' found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(503,'The distance is: (3D) %f (2D) %f (Exact 3D) %f (Exact 2D) %f yards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(504,'Item \'%i\' \'%s\' Item Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(505,'Item \'%i\' doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(506,'Item \'%i\' \'%s\' Added to Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(507,'Item save failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(508,'%d - owner: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(509,'%d - sender: %s (guid: %u account: %u ) receiver: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(510,'%d - owner: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(511,'Wrong link type!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(512,'%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0:0|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(513,'%d - |cffffffff|Hquest:%d:%d|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(514,'%d - |cffffffff|Hcreature_entry:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(515,'%d - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(516,'%d - |cffffffff|Hgameobject_entry:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(517,'%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(518,'%d - |cffffffff|Hitemset:%d|h[%s %s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(519,'|cffffffff|Htele:%s|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(520,'%d - |cffffffff|Hspell:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(521,'%d - |cffffffff|Hskill:%d|h[%s %s]|h|r %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(522,'Game Object (Entry: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(523,'>> Game Object %s (GUID: %u) at %f %f %f. Orientation %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(524,'Selected object:\n|cffffffff|Hgameobject:%d|h[%s]|h|r GUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f\nPhasemask %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(525,'>> Add Game Object \'%i\' (%s) (GUID: %i) added at \'%f %f %f\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(526,'%s (lowguid: %u) movement generators stack:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(527,'   Idle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(528,'   Random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(529,'   Waypoint',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(530,'   Animal random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(531,'   Confused',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(532,'   Targeted to player %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(533,'   Targeted to creature %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(534,'   Targeted to <NULL>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(535,'   Home movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(536,'   Home movement used for player?!?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(537,'   Taxi flight',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(538,'   Unknown movement generator (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(539,'Player selected NPC\nGUID: %u.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(540,'Level: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(541,'Health (base): %u. (max): %u. (current): %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(542,'Field Flags: %u.\nDynamic Flags: %u.\nFaction Template: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(543,'Loot: %u Pickpocket: %u Skinning: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(544,'Position: %f %f %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(545,'*** Is a vendor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(546,'*** Is a trainer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(547,'InstanceID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(548,'Player%s %s (guid: %u) Account: %s (id: %u) Email: %s GMLevel: %u Last IP: %s Last login: %s Latency: %ums',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(549,'Race: %s Class: %s Played time: %s Level: %u Money: %ug%us%uc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(550,'Command .pinfo doesn\'t support \'rep\' option for offline players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(551,'%s has explored all zones now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(552,'%s has no more explored zones.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(553,'%s has explored all zones for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(554,'%s has hidden all zones from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(555,'Hover enabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(556,'Hover disabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(557,'%s level up you to (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(558,'%s level down you to (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(559,'%s reset your level progress.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(560,'The area has been set as explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(561,'The area has been set as not explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(562,'GUID=%i \'s updateIndex: %i, value:  %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(563,'You change GUID=%i \'s UpdateIndex: %i value to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(564,'The value index %u is too big to %u(count: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(565,'Set %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(566,'You Set %u Field:%u to uint32 Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(567,'Set %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(568,'You Set %u Field:%i to float Value: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(569,'Get %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(570,'The uint32 value of %u in %u is: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(571,'Get %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(572,'The float of %u value in %u is: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(573,'.Set32Bit:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(574,'You set Bit of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(575,'.Mod32Value:[OPCODE]:%u [VALUE]:%i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(576,'You modified the value of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(577,'You are now invisible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(578,'You are now visible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(579,'Selected player or creature not have victim.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(580,'Player %s learned all default spells for race/class and completed quests rewarded spells.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(581,'Found near gameobjects (distance %f): %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(582,'SpawnTime: Full:%s Remain:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(583,'%d - |cffffffff|Hgameevent:%d|h[%s]|h|r%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(584,'No event found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(585,'Event not exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(586,'Event %u: %s%s\nStart: %s End: %s Occurence: %s Length: %s\nNext state change: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(587,'Event %u already active!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(588,'Event %u not active!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(589,'   Point movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(590,'   Fear movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(591,'   Distract movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(592,'You have learned all spells in craft: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(593,'Currently Banned Accounts:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(594,'|    Account    |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(595,'Currently Banned IPs:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(596,'|      IP       |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(597,'Current gamemasters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(598,'|    Account    |  GM  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(599,'No gamemasters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(600,'The Alliance wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(601,'The Horde wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(602,'The battle for Warsong Gulch begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(603,'The battle for Warsong Gulch begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(604,'Let the battle for Warsong Gulch begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(605,'$n captured the Horde flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(606,'$n captured the Alliance flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(607,'The Horde flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(608,'The Alliance Flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(609,'The Alliance Flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(610,'The Horde flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(611,'The Horde flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(612,'The Alliance Flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(613,'The flags are now placed at their bases.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(614,'The Alliance flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(615,'The Horde flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(636,'The Battle for Eye of the Storm begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(637,'The Battle for Eye of the Storm begins in 30 seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(638,'The Battle for Eye of the Storm has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(650,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(651,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(652,'stables',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(653,'blacksmith',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(654,'farm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(655,'lumber mill',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(656,'mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(657,'The %s has taken the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(658,'$n has defended the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(659,'$n has assaulted the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(660,'$n claims the %s! If left unchallenged, the %s will control it in 1 minute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(661,'The Battle for Arathi Basin begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(662,'The Battle for Arathi Basin begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(663,'The Battle for Arathi Basin has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(664,'The Alliance has gathered $1776W resources, and is near victory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(665,'The Horde has gathered $1777W resources, and is near victory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(666,'After your recent battle in %s our best attempts to award you a Mark of Honor failed. Enclosed you will find the Mark of Honor we were not able to deliver to you at the time. Thanks for fighting in %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(667,'The Alliance has taken control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(668,'The Horde has taken control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(669,'The Alliance has taken control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(670,'The Horde has taken control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(671,'The Alliance has taken control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(672,'The Horde has taken control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(673,'The Alliance has taken control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(674,'The Horde has taken control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(675,'The Alliance has lost control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(676,'The Horde has lost control of the Mage Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(677,'The Alliance has lost control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(678,'The Horde has lost control of the Draenei Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(679,'The Alliance has lost control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(680,'The Horde has lost control of the Blood Elf Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(681,'The Alliance has lost control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(682,'The Horde has lost control of the Fel Reaver Ruins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(683,'%s has taken the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(684,'The Alliance have captured the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(685,'The Horde have captured the flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(686,'The flag has been dropped.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(687,'The flag has been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(700,'You must be level %u to form an arena team',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(701,'One minute until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(702,'Thirty seconds until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(703,'Fifteen seconds until the Arena battle begins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(704,'The Arena battle has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(705,'You must wait %s before speaking again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(706,'This item(s) have problems with equipping/storing in inventory.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(707,'%s wishes to not be disturbed and cannot receive whisper messages: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(708,'%s is Away from Keyboard: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(709,'Do not Disturb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(710,'Away from Keyboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(711,'Queue status for %s (Lvl: %u to %u)\nQueued alliances: %u (Need at least %u more)\nQueued hordes: %u (Need at least %u more)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(712,'|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] A: %u/%u, H: %u/%u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(713,'You must be level %u to join an arena team!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(715,'You don\'t meet Battleground level requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(717,'|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] Started!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(718,'|cffff0000[Arena Queue Announcer]:|r %s -- Joined : %ux%u : %u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(719,'|cffff0000[Arena Queue Announcer]:|r %s -- Exited : %ux%u : %u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(720,'Your group is too large for this battleground. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(721,'Your group is too large for this arena. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(722,'Your group has members not in your arena team. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(723,'Your group does not have enough players to join this match.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(724,'The Gold Team wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(725,'The Green Team wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(726,'There aren\'t enough players in this battleground. It will end soon unless some more players join to balance the fight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(727,'Your group has an offline member. Please remove him before joining.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(728,'Your group has players from the opposing faction. You can\'t join the battleground as a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(729,'Your group has players from different battleground brakets. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(730,'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(731,'Someone in your party is Deserter. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(732,'Someone in your party is already in three battleground queues. You cannot join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(733,'You cannot teleport to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(734,'You cannot summon players to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(735,'You must be in GM mode to teleport to a player in a battleground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(736,'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(737,'Arenas are set to 1v1 for debugging. So, don\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(738,'Arenas are set to normal playercount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(739,'Battlegrounds are set to 1v0 for debugging.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(740,'Battlegrounds are set to normal playercount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(741,'Flushing Arena points based on team ratings, this may take a few minutes. Please stand by...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(742,'Distributing arena points to players...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(743,'Finished setting arena points for online players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(744,'Modifying played count, arena points etc. for loaded arena teams, sending updated stats to online players...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(745,'Modification done.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(746,'Done flushing Arena points.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(750,'Not enough players. This game will close in %u mins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(751,'Not enough players. This game will close in %u seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(753,'The battle for Warsong Gulch begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(754,'The battle for Arathi Basin begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(755,'The battle for Eye of the Storm begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(356,'Current selected title for player %s reset as not known now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(355,'Title %u (%s) set as current seelcted title for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(354,'Title %u (%s) removed from known titles list for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(350,'%d (idx:%d) - [%s %s] %s %s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(351,'No titles found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(352,'Invalid title id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(353,'Title %u (%s) added to known titles list for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(349,'%d (idx:%d) - |cffffffff|Htitle:%d|h[%s %s]|h|r %s %s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(785,'Arena testing turned %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(786,'|cffff0000[Automatic]:|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(787,'|cffffff00[|c1f40af20Announce by|r |cffff0000%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(800,'Invalid name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(801,'You do not have enough gold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(802,'You do not have enough free slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(803,'Your partner does not have enough free bag slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(804,'You do not have permission to perform that function',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(805,'Unknown language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(806,'You don\'t know that language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(807,'Please provide character name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(808,'Player %s not found or offline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(809,'Account for character %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(810,'|Hplayer:$N|h[$N]|h has earned the achievement $a!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(811,'Guild Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(812,'Officer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(813,'Veteran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(814,'Member',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(815,'Initiate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(816,'Warning: You\'ve entered a no-fly zone and are about to be dismounted!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1000,'Exiting daemon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1001,'Account deleted: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1002,'Account %s NOT deleted (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1003,'Account %s NOT deleted (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1004,'Account created: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1005,'Account name can\'t be longer than 16 characters (client limit), account not created!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1006,'Account with this name already exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1007,'Account %s NOT created (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1008,'Account %s NOT created (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1009,'Player %s (Guid: %u) Account %s (Id: %u) deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1012,'-==================================================================-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1011,'|<Error>        | %20s |<Error>          |<Er>| <Error>   |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1010,'-[         Account][   Character][             IP][Map][Zone][Exp][GMLev]-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1014,'No online players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1100,'Account %s (Id: %u) have up to %u expansion allowed now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1101,'Message of the day changed to:\r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1102,'Message sent to %s: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1103,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1104,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1105,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1106,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1107,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1108,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1109,'%d - %s %s %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1110,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1111,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1112,'Failed to open file: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1113,'Account %s (%u) have max amount allowed characters (client limit)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1114,'Dump file have broken data!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1115,'Invalid character name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1116,'Invalid character guid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1117,'Character guid %u in use!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1118,'%d - guild: %s (guid: %u) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1119,'You must use male or female as gender.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1120,'You change gender of %s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1121,'Your gender changed to %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1122,'(%u/%u +perm %u +temp %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1123,'Not pet found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1124,'Wrong pet type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1125,'Your pet learned all talents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1126,'Your pet talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1127,'Talents of %s\'s pet reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1128,'%d - |cffffffff|Htaxinode:%u|h[%s %s]|h|r (Map:%u X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1129,'%d - %s %s (Map:%u X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1200,'You try to view cinemitic %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1201,'You try to view movie %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1300,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1301,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1302,'%s was destroyed by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1303,'The %s is under attack! If left unchecked, the %s will destroy it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1304,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1305,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1306,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1307,'The %s is under attack! If left unchecked, the %s will capture it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1308,'The %s has taken the %s! Its supplies will now be used for reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1309,'Irondeep Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1310,'Coldtooth Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1311,'Stormpike Aid Station',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1312,'Dun Baldar South Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1313,'Dun Baldar North Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1314,'Stormpike Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1315,'Icewing Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1316,'Stonehearth Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1317,'Stonehearth Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1318,'Snowfall Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1319,'Iceblood Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1320,'Iceblood Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1321,'Tower Point',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1322,'Frostwolf Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1323,'East Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1324,'West Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1325,'Frostwolf Relief Hut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1326,'The Battle for Alterac Valley begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1327,'The Battle for Alterac Valley begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1328,'The Battle for Alterac Valley has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1329,'The Alliance Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1330,'The Horde Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1331,'The Frostwolf General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1332,'The Stormpike General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1333,'The Battle for Alterac Valley begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2000,'|cff00ff00New ticket from|r|cffff00ff %s.|r |cff00ff00Ticket entry:|r|cffff00ff %d.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2001,'|cff00ff00Character|r|cffff00ff %s |r|cff00ff00edited his/her ticket:|r|cffff00ff %d.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2002,'|cff00ff00Character|r|cffff00ff %s |r|cff00ff00abandoned ticket entry:|r|cffff00ff %d.|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2003,'|cff00ff00Closed by|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2004,'|cff00ff00Deleted by|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2005,'Ticket not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2006,'Please close ticket before deleting it permanently.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2007,'Ticket %d is already assigned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2008,'%u Tickets succesfully reloaded from the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2009,'Showing list of open tickets.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2010,'Showing list of open tickets whose creator is online.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2011,'Showing list of closed tickets.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2012,'Invalid name specified. Name should be that of an online Gamemaster.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2013,'This ticket is already assigned to yourself. To unassign use .ticket unassign %d and then reassign.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2014,'Ticket %d is not assigned, you cannot unassign it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2015,'You cannot unassign tickets from staffmembers with a higher security level than yourself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2016,'Cannot close ticket %d, it is assigned to another GM.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2023,'|cff00ff00GM Comment|r: [%s]|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2018,'|cff00ff00Created by|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2019,'|cff00ff00Last change|r:|cff00ccff %s ago|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2020,'|cff00ff00Assigned to|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2021,'|cff00ff00Unassigned by|r:|cff00ccff %s|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2022,'|cff00ff00Ticket Message|r: [%s]|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2017,'|cffaaffaaTicket|r:|cffaaccff %d.|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2025,'|cff00ff00Created|r:|cff00ccff %s ago|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5000,'You froze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5001,'It might be amusing but no... you cant freeze yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5002,'Invalid input check the name of target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5003,'You unfroze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5004,'There are no frozen players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5005,'Following players are frozen on the server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5006,'- %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5007,'You must be in a raid group to enter this instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5009,'Sound %u Played to server',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5010,'linkGUID: %u, Entry: %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5011,'You can\'t teleport self to self!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5012,'No maps found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5013,'[Continent]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5014,'[Instance]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5015,'[Battleground]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5016,'[Arena]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5017,'[Raid reset time: %s]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5018,'[Heroic reset time: %s]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5019,'[Mountable]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6613,'|cfff00000[GM Announcement]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6614,'Notification to GM\'s - ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6615,'|cffffff00[|c1f40af20GM Announce by|r |cffff0000%s|cffffff00]:|r %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6616,'Silence is ON for %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7523,'WORLD: Denying connections.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7524,'WORLD: Accepting connections.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10001,'The Horde has taken The Overlook!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10002,'The Alliance has taken The Overlook!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10003,'The Horde has taken The Stadium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10004,'The Alliance has taken The Stadium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10005,'The Horde has taken Broken Hill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10006,'The Alliance has taken Broken Hill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10007,'The Horde lost The Overlook!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10008,'The Alliance lost The Overlook!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10009,'The Horde lost The Stadium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10010,'The Alliance lost The Stadium!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10011,'The Horde lost Broken Hill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10012,'The Alliance lost Broken Hill!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10013,'The Horde has taken the West Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10014,'The Alliance has taken the West Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10015,'The Horde has taken the East Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10016,'The Alliance has taken the East Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10017,'The Horde has captured the Twin Spire Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10018,'The Alliance has captured the Twin Spire Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10019,'The Horde lost the West Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10020,'The Alliance lost the West Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10021,'The Horde lost the East Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10022,'The Alliance lost the East Beacon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10023,'The Horde lost the Twin Spire Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10024,'The Alliance lost the Twin Spire Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10025,'The Horde has captured Halaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10026,'The Alliance has captured Halaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10027,'The Horde lost Halaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10028,'The Alliance lost Halaa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10029,'The Horde has taken a Spirit Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10030,'The Alliance has taken a Spirit Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10031,'The Horde lost a Spirit Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10032,'The Alliance lost a Spirit Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10033,'The Horde has taken the Northpass Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10034,'The Alliance has taken the Northpass Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10035,'The Horde has taken the Eastwall Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10036,'The Alliance has taken the Eastwall Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10037,'The Horde has taken the Crown Guard Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10038,'The Alliance has taken the Crown Guard Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10039,'The Horde has taken the Plaguewood Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10040,'The Alliance has taken the Plaguewood Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10041,'The Horde lost the Northpass Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10042,'The Alliance lost the Northpass Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10043,'The Horde lost the Eastwall Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10044,'The Alliance lost the Eastwall Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10045,'The Horde lost the Crown Guard Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10046,'The Alliance lost the Crown Guard Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10047,'The Horde lost the Plaguewood Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10048,'The Alliance lost the Plaguewood Tower!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10049,'The Horde has collected 200 silithyst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10050,'The Alliance has collected 200 silithyst!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10051,'Take me to Northpass Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10052,'Take me to Eastwall Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10053,'Take me to Crown Guard Tower.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10054,'Give me the flag, I\'ll take it to the central beacon for the glory of the Alliance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10055,'Give me the flag, I\'ll take it to the central beacon for the glory of the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11000,'|cffffff00[|c00077766Autobroadcast|cffffff00]: |cFFF222FF%s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11001,'You have not chosen -1 or the current realmID that you are on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5020,'Phasemask: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5021,'Armor: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10063,'The Alliance captured the titan portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10064,'The Horde captured the titan portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10061,'The %s was destroyed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10062,'Round 1 -  finished!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10059,'Let the battle for Strand of the Ancients begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10060,'The %s is under attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10058,'The battle for Strand of the Ancients begins in 30 seconds. Prepare yourselves!.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10056,'The battle for Strand of the Ancients begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10057,'The battle for Strand of the Ancients begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5022,'Granting ownership to first person that joins the channel \"%s\": Enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5008,'This instance is closed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5024,'Entry: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5025,'Type: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5026,'DisplayID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5027,'Name: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6604,'You cannot say, yell or emote until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6605,'You cannot whisper until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6606,'You cannot write to channels until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6607,'You cannot use auction until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6608,'You cannot write tickets until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6609,'You cannot trade until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6610,'You cannot trade with characters lower than level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6611,'You cannot send mail until you become level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6612,'You cannot send mail to characters lower than level %d.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2024,'|cff00ccff%s|r |cff00ff00Added comment|r: [%s]|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1013,'-[%16s][%12s][%15s][%3d][%4d][%d][%d]-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1015,'-======================== Characters Online =======================-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(747,'This Battleground has been disabled. You can\'t join the queue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(748,'Arenas have been disabled. You can\'t join the queue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,'Item \'%u\' (with extended cost %u) already in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(817,'Entry %u not found in creature_template table.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(818,'Entry %u not found in sCreatureStorage. Possible new line in creature_template, but you can not add new creatures without restarting. Only modifing is allowed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10065,'Round 2 of the Battle for the Strand of the Ancients begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10066,'Round 2 begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10067,'The chamber has been breached! The titan relic is vulnerable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10068,'The Alliance captured the South Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10069,'The Alliance captured the West Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10070,'The Alliance captured the East Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10071,'The Horde captured the South Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10072,'The Horde captured the West Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10073,'The Horde captured the East Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'One on more parameters have incorrect values',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1016,'| GUID       | Name                 | Account                      | Delete Date         |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1017,'| %10u | %20s | %15s (%10u) | %19s |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1018,'==========================================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1019,'No characters found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1020,'Restoring the following characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1021,'Deleting the following characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1022,'ERROR: You can only assign a new name if you have only selected a single character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1023,'Character \'%s\' (GUID: %u Account %u) can\'t be restored: account not exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1024,'Character \'%s\' (GUID: %u Account %u) can\'t be restored: account character list full!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1025,'Character \'%s\' (GUID: %u Account %u) can\'t be restored: new name already used!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1026,'GUID: %u Name: %s Account: %s (%u) Date: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5028,'Lootid: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1130,'Can\'t dump deleted characters,aborting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5029,'Result limit reached (max results: %d)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1131,'The following characters match your query:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1132,'Currently Banned Characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1133,'|   Character   |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(819,'City',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1205,'The battle will begin in two minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1206,'The battle will begin in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1208,'The battle has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1207,'The battle will begin in 30 seconds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1209,'the alliance keep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1210,'the horde keep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1211,'%s wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1212,'The west gate of %s is destroyed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1213,'The east gate of %s is destroyed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1214,'The south gate of %s is destroyed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1215,'The north gate of %s is destroyed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1216,'$n has assaulted the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1217,'$n has defended the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1218,'$n claims the %s! If left unchallenged, the %s will control it in 1 minute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1219,'The %s has taken the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1220,'Workshop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1221,'Docks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1222,'Refinery',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1223,'Quarry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1224,'Hangar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1134,'Sending tickets is allowed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1135,'Sending tickets is not allowed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5023,'Granting ownership to first person that joins the channel \"%s\": Disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1240,'The Horde flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1239,'The Horde flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1238,'The Alliance Flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1237,'The Alliance Flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1236,'The Horde flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1235,'$n captured the Alliance flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1234,'$n captured the Horde flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1233,'Let the battle for Twin Peaks begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1232,'The battle for Twin Peaks begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1231,'The battle for Twin Peaks begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1230,'The battle for Twin Peaks begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1241,'The Alliance Flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1242,'The flags are now placed at their bases.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1243,'The Alliance flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1244,'The Horde flag is now placed at its base.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `trinity_string` ENABLE KEYS */;
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

