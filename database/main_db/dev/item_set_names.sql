
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
DROP TABLE IF EXISTS `item_set_names`;
CREATE TABLE `item_set_names` (
  `entry` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `InventoryType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `WDBVerified` smallint(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `item_set_names` WRITE;
/*!40000 ALTER TABLE `item_set_names` DISABLE KEYS */;
INSERT INTO `item_set_names` VALUES (6473,'Armor of the Fang',5,13329),(6833,'White Tuxedo Shirt',4,13329),(6835,'Black Tuxedo Pants',7,13329),(7948,'Girdle of Thero-Shan',6,13329),(7949,'Leggings of Thero-Shan',7,13329),(7950,'Armor of Thero-Shan',5,13329),(7951,'Hands of Thero-Shan',10,13329),(7952,'Boots of Thero-Shan',8,13329),(7953,'Mask of Thero-Shan',1,13329),(10328,'Scarlet Chestpiece',5,13329),(10329,'Scarlet Belt',6,13329),(10330,'Scarlet Leggings',7,13329),(10331,'Scarlet Gauntlets',10,13329),(10332,'Scarlet Boots',8,13329),(10333,'Scarlet Wristguards',9,13329),(10399,'Blackened Defias Armor',5,13329),(10400,'Blackened Defias Leggings',7,13329),(10401,'Blackened Defias Gloves',10,13329),(10402,'Blackened Defias Boots',8,13329),(10403,'Blackened Defias Belt',6,13329),(10410,'Leggings of the Fang',7,13329),(10411,'Footpads of the Fang',8,13329),(10412,'Belt of the Fang',6,13329),(10413,'Gloves of the Fang',10,13329),(11726,'Savage Gladiator Chain',5,13329),(11728,'Savage Gladiator Leggings',7,13329),(11729,'Savage Gladiator Helm',1,13329),(11730,'Savage Gladiator Grips',10,13329),(11731,'Savage Gladiator Greaves',8,13329),(12422,'Imperial Plate Chest',5,13329),(12424,'Imperial Plate Belt',6,13329),(12425,'Imperial Plate Bracers',9,13329),(12426,'Imperial Plate Boots',8,13329),(12427,'Imperial Plate Helm',1,13329),(12428,'Imperial Plate Shoulders',3,13329),(12429,'Imperial Plate Leggings',7,13329),(12939,'Dal\'Rend\'s Tribal Guardian',22,13329),(12940,'Dal\'Rend\'s Sacred Charge',21,13329),(13183,'Venomspitter',13,13329),(13218,'Fang of the Crystal Spider',13,13329),(13388,'The Postmaster\'s Tunic',5,13329),(13389,'The Postmaster\'s Trousers',7,13329),(13390,'The Postmaster\'s Band',1,13329),(13391,'The Postmaster\'s Treads',8,13329),(13392,'The Postmaster\'s Seal',11,13329),(14611,'Bloodmail Hauberk',5,13329),(14612,'Bloodmail Legguards',7,13329),(14614,'Bloodmail Belt',6,13329),(14615,'Bloodmail Gauntlets',10,13329),(14616,'Bloodmail Boots',8,13329),(14620,'Deathbone Girdle',6,13329),(14621,'Deathbone Sabatons',8,13329),(14622,'Deathbone Gauntlets',10,13329),(14623,'Deathbone Legguards',7,13329),(14624,'Deathbone Chestplate',5,13329),(14626,'Necropile Robe',20,13329),(14629,'Necropile Cuffs',9,13329),(14631,'Necropile Boots',8,13329),(14632,'Necropile Leggings',7,13329),(14633,'Necropile Mantle',3,13329),(14636,'Cadaverous Belt',6,13329),(14637,'Cadaverous Armor',5,13329),(14638,'Cadaverous Leggings',7,13329),(14640,'Cadaverous Gloves',10,13329),(14641,'Cadaverous Walkers',8,13329),(15045,'Green Dragonscale Breastplate',5,13329),(15046,'Green Dragonscale Leggings',7,13329),(15048,'Blue Dragonscale Breastplate',5,13329),(15049,'Blue Dragonscale Shoulders',3,13329),(15050,'Black Dragonscale Breastplate',5,13329),(15051,'Black Dragonscale Shoulders',3,13329),(15052,'Black Dragonscale Leggings',7,13329),(15053,'Volcanic Breastplate',5,13329),(15054,'Volcanic Leggings',7,13329),(15055,'Volcanic Shoulders',3,13329),(15056,'Stormshroud Armor',5,13329),(15057,'Stormshroud Pants',7,13329),(15058,'Stormshroud Shoulders',3,13329),(15062,'Devilsaur Leggings',7,13329),(15063,'Devilsaur Gauntlets',10,13329),(15066,'Ironfeather Breastplate',5,13329),(15067,'Ironfeather Shoulders',3,13329),(16369,'Knight-Lieutenant\'s Silk Boots',8,13329),(16391,'Knight-Lieutenant\'s Silk Gloves',10,13329),(16392,'Knight-Lieutenant\'s Leather Boots',8,13329),(16393,'Knight-Lieutenant\'s Dragonhide Footwraps',8,13329),(16396,'Knight-Lieutenant\'s Leather Gauntlets',10,13329),(16397,'Knight-Lieutenant\'s Dragonhide Gloves',10,13329),(16401,'Knight-Lieutenant\'s Chain Boots',8,13329),(16403,'Knight-Lieutenant\'s Chain Gauntlets',10,13329),(16405,'Knight-Lieutenant\'s Plate Boots',8,13329),(16406,'Knight-Lieutenant\'s Plate Gauntlets',10,13329),(16409,'Knight-Lieutenant\'s Lamellar Sabatons',8,13329),(16410,'Knight-Lieutenant\'s Lamellar Gauntlets',10,13329),(16413,'Knight-Captain\'s Silk Raiment',20,13329),(16414,'Knight-Captain\'s Silk Leggings',7,13329),(16415,'Lieutenant Commander\'s Silk Spaulders',3,13329),(16416,'Lieutenant Commander\'s Crown',1,13329),(16417,'Knight-Captain\'s Leather Armor',5,13329),(16418,'Lieutenant Commander\'s Leather Veil',1,13329),(16419,'Knight-Captain\'s Leather Legguards',7,13329),(16420,'Lieutenant Commander\'s Leather Spaulders',3,13329),(16421,'Knight-Captain\'s Dragonhide Tunic',5,13329),(16422,'Knight-Captain\'s Dragonhide Leggings',7,13329),(16423,'Lieutenant Commander\'s Dragonhide Epaulets',3,13329),(16424,'Lieutenant Commander\'s Dragonhide Shroud',1,13329),(16425,'Knight-Captain\'s Chain Hauberk',5,13329),(16426,'Knight-Captain\'s Chain Leggings',7,13329),(16427,'Lieutenant Commander\'s Chain Pauldrons',3,13329),(16428,'Lieutenant Commander\'s Chain Helmet',1,13329),(16429,'Lieutenant Commander\'s Plate Helm',1,13329),(16430,'Knight-Captain\'s Plate Chestguard',5,13329),(16431,'Knight-Captain\'s Plate Leggings',7,13329),(16432,'Lieutenant Commander\'s Plate Pauldrons',3,13329),(16433,'Knight-Captain\'s Lamellar Breastplate',5,13329),(16434,'Lieutenant Commander\'s Lamellar Headguard',1,13329),(16435,'Knight-Captain\'s Lamellar Leggings',7,13329),(16436,'Lieutenant Commander\'s Lamellar Shoulders',3,13329),(16437,'Marshal\'s Silk Footwraps',8,13329),(16440,'Marshal\'s Silk Gloves',10,13329),(16441,'Field Marshal\'s Coronet',1,13329),(16442,'Marshal\'s Silk Leggings',7,13329),(16443,'Field Marshal\'s Silk Vestments',20,13329),(16444,'Field Marshal\'s Silk Spaulders',3,13329),(16446,'Marshal\'s Leather Footguards',8,13329),(16448,'Marshal\'s Dragonhide Gauntlets',10,13329),(16449,'Field Marshal\'s Dragonhide Spaulders',3,13329),(16450,'Marshal\'s Dragonhide Legguards',7,13329),(16451,'Field Marshal\'s Dragonhide Helmet',1,13329),(16452,'Field Marshal\'s Dragonhide Breastplate',5,13329),(16453,'Field Marshal\'s Leather Chestpiece',5,13329),(16454,'Marshal\'s Leather Handgrips',10,13329),(16455,'Field Marshal\'s Leather Mask',1,13329),(16456,'Marshal\'s Leather Leggings',7,13329),(16457,'Field Marshal\'s Leather Epaulets',3,13329),(16459,'Marshal\'s Dragonhide Boots',8,13329),(16462,'Marshal\'s Chain Boots',8,13329),(16463,'Marshal\'s Chain Grips',10,13329),(16465,'Field Marshal\'s Chain Helm',1,13329),(16466,'Field Marshal\'s Chain Breastplate',5,13329),(16467,'Marshal\'s Chain Legguards',7,13329),(16468,'Field Marshal\'s Chain Spaulders',3,13329),(16471,'Marshal\'s Lamellar Gloves',10,13329),(16472,'Marshal\'s Lamellar Boots',8,13329),(16473,'Field Marshal\'s Lamellar Chestplate',5,13329),(16474,'Field Marshal\'s Lamellar Faceguard',1,13329),(16475,'Marshal\'s Lamellar Legplates',7,13329),(16476,'Field Marshal\'s Lamellar Pauldrons',3,13329),(16477,'Field Marshal\'s Plate Armor',5,13329),(16478,'Field Marshal\'s Plate Helm',1,13329),(16479,'Marshal\'s Plate Legguards',7,13329),(16480,'Field Marshal\'s Plate Shoulderguards',3,13329),(16483,'Marshal\'s Plate Boots',8,13329),(16484,'Marshal\'s Plate Gauntlets',10,13329),(16485,'Blood Guard\'s Silk Footwraps',8,13329),(16487,'Blood Guard\'s Silk Gloves',10,13329),(16489,'Champion\'s Silk Hood',1,13329),(16490,'Legionnaire\'s Silk Pants',7,13329),(16491,'Legionnaire\'s Silk Robes',20,13329),(16492,'Champion\'s Silk Shoulderpads',3,13329),(16494,'Blood Guard\'s Dragonhide Boots',8,13329),(16496,'Blood Guard\'s Dragonhide Gauntlets',10,13329),(16498,'Blood Guard\'s Leather Treads',8,13329),(16499,'Blood Guard\'s Leather Vices',10,13329),(16501,'Champion\'s Dragonhide Spaulders',3,13329),(16502,'Legionnaire\'s Dragonhide Trousers',7,13329),(16503,'Champion\'s Dragonhide Helm',1,13329),(16504,'Legionnaire\'s Dragonhide Breastplate',5,13329),(16505,'Legionnaire\'s Leather Hauberk',5,13329),(16506,'Champion\'s Leather Headguard',1,13329),(16507,'Champion\'s Leather Mantle',3,13329),(16508,'Legionnaire\'s Leather Leggings',7,13329),(16509,'Blood Guard\'s Plate Boots',8,13329),(16510,'Blood Guard\'s Plate Gloves',10,13329),(16513,'Legionnaire\'s Plate Armor',5,13329),(16514,'Champion\'s Plate Headguard',1,13329),(16515,'Legionnaire\'s Plate Legguards',7,13329),(16516,'Champion\'s Plate Pauldrons',3,13329),(16518,'Blood Guard\'s Mail Walkers',8,13329),(16519,'Blood Guard\'s Mail Grips',10,13329),(16521,'Champion\'s Mail Helm',1,13329),(16522,'Legionnaire\'s Mail Chestpiece',5,13329),(16523,'Legionnaire\'s Mail Leggings',7,13329),(16524,'Champion\'s Mail Shoulders',3,13329),(16525,'Legionnaire\'s Chain Breastplate',5,13329),(16526,'Champion\'s Chain Headguard',1,13329),(16527,'Legionnaire\'s Chain Leggings',7,13329),(16528,'Champion\'s Chain Pauldrons',3,13329),(16530,'Blood Guard\'s Chain Gauntlets',10,13329),(16531,'Blood Guard\'s Chain Boots',8,13329),(16533,'Warlord\'s Silk Cowl',1,13329),(16534,'General\'s Silk Trousers',7,13329),(16535,'Warlord\'s Silk Raiment',20,13329),(16536,'Warlord\'s Silk Amice',3,13329),(16539,'General\'s Silk Boots',8,13329),(16540,'General\'s Silk Handguards',10,13329),(16541,'Warlord\'s Plate Armor',5,13329),(16542,'Warlord\'s Plate Headpiece',1,13329),(16543,'General\'s Plate Leggings',7,13329),(16544,'Warlord\'s Plate Shoulders',3,13329),(16545,'General\'s Plate Boots',8,13329),(16548,'General\'s Plate Gauntlets',10,13329),(16549,'Warlord\'s Dragonhide Hauberk',5,13329),(16550,'Warlord\'s Dragonhide Helmet',1,13329),(16551,'Warlord\'s Dragonhide Epaulets',3,13329),(16552,'General\'s Dragonhide Leggings',7,13329),(16554,'General\'s Dragonhide Boots',8,13329),(16555,'General\'s Dragonhide Gloves',10,13329),(16558,'General\'s Leather Treads',8,13329),(16560,'General\'s Leather Mitts',10,13329),(16561,'Warlord\'s Leather Helm',1,13329),(16562,'Warlord\'s Leather Spaulders',3,13329),(16563,'Warlord\'s Leather Breastplate',5,13329),(16564,'General\'s Leather Legguards',7,13329),(16565,'Warlord\'s Chain Chestpiece',5,13329),(16566,'Warlord\'s Chain Helmet',1,13329),(16567,'General\'s Chain Legguards',7,13329),(16568,'Warlord\'s Chain Shoulders',3,13329),(16569,'General\'s Chain Boots',8,13329),(16571,'General\'s Chain Gloves',10,13329),(16573,'General\'s Mail Boots',8,13329),(16574,'General\'s Mail Gauntlets',10,13329),(16577,'Warlord\'s Mail Armor',5,13329),(16578,'Warlord\'s Mail Helm',1,13329),(16579,'General\'s Mail Leggings',7,13329),(16580,'Warlord\'s Mail Spaulders',3,13329),(16666,'Vest of Elements',5,13329),(16667,'Coif of Elements',1,13329),(16668,'Kilt of Elements',7,13329),(16669,'Pauldrons of Elements',3,13329),(16670,'Boots of Elements',8,13329),(16671,'Bindings of Elements',9,13329),(16672,'Gauntlets of Elements',10,13329),(16673,'Cord of Elements',6,13329),(16674,'Beaststalker\'s Tunic',5,13329),(16675,'Beaststalker\'s Boots',8,13329),(16676,'Beaststalker\'s Gloves',10,13329),(16677,'Beaststalker\'s Cap',1,13329),(16678,'Beaststalker\'s Pants',7,13329),(16679,'Beaststalker\'s Mantle',3,13329),(16680,'Beaststalker\'s Belt',6,13329),(16681,'Beaststalker\'s Bindings',9,13329),(16682,'Magister\'s Boots',8,13329),(16683,'Magister\'s Bindings',9,13329),(16684,'Magister\'s Gloves',10,13329),(16685,'Magister\'s Belt',6,13329),(16686,'Magister\'s Crown',1,13329),(16687,'Magister\'s Leggings',7,13329),(16688,'Magister\'s Robes',20,13329),(16689,'Magister\'s Mantle',3,13329),(16690,'Devout Robe',20,13329),(16691,'Devout Sandals',8,13329),(16692,'Devout Gloves',10,13329),(16693,'Devout Crown',1,13329),(16694,'Devout Skirt',7,13329),(16695,'Devout Mantle',3,13329),(16696,'Devout Belt',6,13329),(16697,'Devout Bracers',9,13329),(16698,'Dreadmist Mask',1,13329),(16699,'Dreadmist Leggings',7,13329),(16700,'Dreadmist Robe',20,13329),(16701,'Dreadmist Mantle',3,13329),(16702,'Dreadmist Belt',6,13329),(16703,'Dreadmist Bracers',9,13329),(16704,'Dreadmist Sandals',8,13329),(16705,'Dreadmist Wraps',10,13329),(16706,'Wildheart Vest',5,13329),(16707,'Shadowcraft Cap',1,13329),(16708,'Shadowcraft Spaulders',3,13329),(16709,'Shadowcraft Pants',7,13329),(16710,'Shadowcraft Bracers',9,13329),(16711,'Shadowcraft Boots',8,13329),(16712,'Shadowcraft Gloves',10,13329),(16713,'Shadowcraft Belt',6,13329),(16714,'Wildheart Bracers',9,13329),(16715,'Wildheart Boots',8,13329),(16716,'Wildheart Belt',6,13329),(16717,'Wildheart Gloves',10,13329),(16718,'Wildheart Spaulders',3,13329),(16719,'Wildheart Kilt',7,13329),(16720,'Wildheart Cowl',1,13329),(16721,'Shadowcraft Tunic',5,13329),(16722,'Lightforge Bracers',9,13329),(16723,'Lightforge Belt',6,13329),(16724,'Lightforge Gauntlets',10,13329),(16725,'Lightforge Boots',8,13329),(16726,'Lightforge Breastplate',5,13329),(16727,'Lightforge Helm',1,13329),(16728,'Lightforge Legplates',7,13329),(16729,'Lightforge Spaulders',3,13329),(16730,'Breastplate of Valor',5,13329),(16731,'Helm of Valor',1,13329),(16732,'Legplates of Valor',7,13329),(16733,'Spaulders of Valor',3,13329),(16734,'Boots of Valor',8,13329),(16735,'Bracers of Valor',9,13329),(16736,'Belt of Valor',6,13329),(16737,'Gauntlets of Valor',10,13329),(16795,'Arcanist Crown',1,13329),(16796,'Arcanist Leggings',7,13329),(16797,'Arcanist Mantle',3,13329),(16798,'Arcanist Robes',20,13329),(16799,'Arcanist Bindings',9,13329),(16800,'Arcanist Boots',8,13329),(16801,'Arcanist Gloves',10,13329),(16802,'Arcanist Belt',6,13329),(16803,'Felheart Slippers',8,13329),(16804,'Felheart Bracers',9,13329),(16805,'Felheart Gloves',10,13329),(16806,'Felheart Belt',6,13329),(16807,'Felheart Shoulder Pads',3,13329),(16808,'Felheart Horns',1,13329),(16809,'Felheart Robes',20,13329),(16810,'Felheart Pants',7,13329),(16811,'Boots of Prophecy',8,13329),(16812,'Gloves of Prophecy',10,13329),(16813,'Circlet of Prophecy',1,13329),(16814,'Pants of Prophecy',7,13329),(16815,'Robes of Prophecy',20,13329),(16816,'Mantle of Prophecy',3,13329),(16817,'Girdle of Prophecy',6,13329),(16818,'Netherwind Belt',6,13329),(16819,'Vambraces of Prophecy',9,13329),(16820,'Nightslayer Chestpiece',5,13329),(16821,'Nightslayer Cover',1,13329),(16822,'Nightslayer Pants',7,13329),(16823,'Nightslayer Shoulder Pads',3,13329),(16824,'Nightslayer Boots',8,13329),(16825,'Nightslayer Bracelets',9,13329),(16826,'Nightslayer Gloves',10,13329),(16827,'Nightslayer Belt',6,13329),(16828,'Cenarion Belt',6,13329),(16829,'Cenarion Boots',8,13329),(16830,'Cenarion Bracers',9,13329),(16831,'Cenarion Gloves',10,13329),(16832,'Bloodfang Spaulders',3,13329),(16833,'Cenarion Vestments',20,13329),(16834,'Cenarion Helm',1,13329),(16835,'Cenarion Leggings',7,13329),(16836,'Cenarion Spaulders',3,13329),(16837,'Earthfury Boots',8,13329),(16838,'Earthfury Belt',6,13329),(16839,'Earthfury Gauntlets',10,13329),(16840,'Earthfury Bracers',9,13329),(16841,'Earthfury Vestments',20,13329),(16842,'Earthfury Helmet',1,13329),(16843,'Earthfury Legguards',7,13329),(16844,'Earthfury Epaulets',3,13329),(16845,'Giantstalker\'s Breastplate',5,13329),(16846,'Giantstalker\'s Helmet',1,13329),(16847,'Giantstalker\'s Leggings',7,13329),(16848,'Giantstalker\'s Epaulets',3,13329),(16849,'Giantstalker\'s Boots',8,13329),(16850,'Giantstalker\'s Bracers',9,13329),(16851,'Giantstalker\'s Belt',6,13329),(16852,'Giantstalker\'s Gloves',10,13329),(16853,'Lawbringer Chestguard',5,13329),(16854,'Lawbringer Helm',1,13329),(16855,'Lawbringer Legplates',7,13329),(16856,'Lawbringer Spaulders',3,13329),(16857,'Lawbringer Bracers',9,13329),(16858,'Lawbringer Belt',6,13329),(16859,'Lawbringer Boots',8,13329),(16860,'Lawbringer Gauntlets',10,13329),(16861,'Bracers of Might',9,13329),(16862,'Sabatons of Might',8,13329),(16863,'Gauntlets of Might',10,13329),(16864,'Belt of Might',6,13329),(16865,'Breastplate of Might',5,13329),(16866,'Helm of Might',1,13329),(16867,'Legplates of Might',7,13329),(16868,'Pauldrons of Might',3,13329),(16897,'Stormrage Chestguard',5,13329),(16898,'Stormrage Boots',8,13329),(16899,'Stormrage Handguards',10,13329),(16900,'Stormrage Cover',1,13329),(16901,'Stormrage Legguards',7,13329),(16902,'Stormrage Pauldrons',3,13329),(16903,'Stormrage Belt',6,13329),(16904,'Stormrage Bracers',9,13329),(16905,'Bloodfang Chestpiece',5,13329),(16906,'Bloodfang Boots',8,13329),(16907,'Bloodfang Gloves',10,13329),(16908,'Bloodfang Hood',1,13329),(16909,'Bloodfang Pants',7,13329),(16910,'Bloodfang Belt',6,13329),(16911,'Bloodfang Bracers',9,13329),(16912,'Netherwind Boots',8,13329),(16913,'Netherwind Gloves',10,13329),(16914,'Netherwind Crown',1,13329),(16915,'Netherwind Pants',7,13329),(16916,'Netherwind Robes',20,13329),(16917,'Netherwind Mantle',3,13329),(16918,'Netherwind Bindings',9,13329),(16919,'Boots of Transcendence',8,13329),(16920,'Handguards of Transcendence',10,13329),(16921,'Halo of Transcendence',1,13329),(16922,'Leggings of Transcendence',7,13329),(16923,'Robes of Transcendence',20,13329),(16924,'Pauldrons of Transcendence',3,13329),(16925,'Belt of Transcendence',6,13329),(16926,'Bindings of Transcendence',9,13329),(16927,'Nemesis Boots',8,13329),(16928,'Nemesis Gloves',10,13329),(16929,'Nemesis Skullcap',1,13329),(16930,'Nemesis Leggings',7,13329),(16931,'Nemesis Robes',20,13329),(16932,'Nemesis Spaulders',3,13329),(16933,'Nemesis Belt',6,13329),(16934,'Nemesis Bracers',9,13329),(16935,'Dragonstalker\'s Bracers',9,13329),(16936,'Dragonstalker\'s Belt',6,13329),(16937,'Dragonstalker\'s Spaulders',3,13329),(16938,'Dragonstalker\'s Legguards',7,13329),(16939,'Dragonstalker\'s Helm',1,13329),(16940,'Dragonstalker\'s Gauntlets',10,13329),(16941,'Dragonstalker\'s Greaves',8,13329),(16942,'Dragonstalker\'s Breastplate',5,13329),(16943,'Bracers of Ten Storms',9,13329),(16944,'Belt of Ten Storms',6,13329),(16945,'Epaulets of Ten Storms',3,13329),(16946,'Legplates of Ten Storms',7,13329),(16947,'Helmet of Ten Storms',1,13329),(16948,'Gauntlets of Ten Storms',10,13329),(16949,'Greaves of Ten Storms',8,13329),(16950,'Breastplate of Ten Storms',5,13329),(16951,'Judgement Bindings',9,13329),(16952,'Judgement Belt',6,13329),(16953,'Judgement Spaulders',3,13329),(16954,'Judgement Legplates',7,13329),(16955,'Judgement Crown',1,13329),(16956,'Judgement Gauntlets',10,13329),(16957,'Judgement Sabatons',8,13329),(16958,'Judgement Breastplate',5,13329),(16959,'Bracelets of Wrath',9,13329),(16960,'Waistband of Wrath',6,13329),(16961,'Pauldrons of Wrath',3,13329),(16962,'Legplates of Wrath',7,13329),(16963,'Helm of Wrath',1,13329),(16964,'Gauntlets of Wrath',10,13329),(16965,'Sabatons of Wrath',8,13329),(16966,'Breastplate of Wrath',5,13329),(16984,'Black Dragonscale Boots',8,13329),(17064,'Shard of the Scale',12,13329),(17082,'Shard of the Flame',12,13329),(17562,'Knight-Lieutenant\'s Dreadweave Boots',8,13329),(17564,'Knight-Lieutenant\'s Dreadweave Gloves',10,13329),(17566,'Lieutenant Commander\'s Headguard',1,13329),(17567,'Knight-Captain\'s Dreadweave Leggings',7,13329),(17568,'Knight-Captain\'s Dreadweave Robe',20,13329),(17569,'Lieutenant Commander\'s Dreadweave Mantle',3,13329),(17570,'Champion\'s Dreadweave Hood',1,13329),(17571,'Legionnaire\'s Dreadweave Leggings',7,13329),(17572,'Legionnaire\'s Dreadweave Robe',20,13329),(17573,'Champion\'s Dreadweave Shoulders',3,13329),(17576,'Blood Guard\'s Dreadweave Boots',8,13329),(17577,'Blood Guard\'s Dreadweave Gloves',10,13329),(17578,'Field Marshal\'s Coronal',1,13329),(17579,'Marshal\'s Dreadweave Leggings',7,13329),(17580,'Field Marshal\'s Dreadweave Shoulders',3,13329),(17581,'Field Marshal\'s Dreadweave Robe',20,13329),(17583,'Marshal\'s Dreadweave Boots',8,13329),(17584,'Marshal\'s Dreadweave Gloves',10,13329),(17586,'General\'s Dreadweave Boots',8,13329),(17588,'General\'s Dreadweave Gloves',10,13329),(17590,'Warlord\'s Dreadweave Mantle',3,13329),(17591,'Warlord\'s Dreadweave Hood',1,13329),(17592,'Warlord\'s Dreadweave Robe',20,13329),(17593,'General\'s Dreadweave Pants',7,13329),(17594,'Knight-Lieutenant\'s Satin Boots',8,13329),(17596,'Knight-Lieutenant\'s Satin Gloves',10,13329),(17598,'Lieutenant Commander\'s Diadem',1,13329),(17599,'Knight-Captain\'s Satin Leggings',7,13329),(17600,'Knight-Captain\'s Satin Robes',20,13329),(17601,'Lieutenant Commander\'s Satin Amice',3,13329),(17602,'Field Marshal\'s Headdress',1,13329),(17603,'Marshal\'s Satin Pants',7,13329),(17604,'Field Marshal\'s Satin Mantle',3,13329),(17605,'Field Marshal\'s Satin Vestments',20,13329),(17607,'Marshal\'s Satin Sandals',8,13329),(17608,'Marshal\'s Satin Gloves',10,13329),(17610,'Champion\'s Satin Cowl',1,13329),(17611,'Legionnaire\'s Satin Trousers',7,13329),(17612,'Legionnaire\'s Satin Vestments',20,13329),(17613,'Champion\'s Satin Shoulderpads',3,13329),(17616,'Blood Guard\'s Satin Boots',8,13329),(17617,'Blood Guard\'s Satin Gloves',10,13329),(17618,'General\'s Satin Boots',8,13329),(17620,'General\'s Satin Gloves',10,13329),(17622,'Warlord\'s Satin Mantle',3,13329),(17623,'Warlord\'s Satin Cowl',1,13329),(17624,'Warlord\'s Satin Robes',20,13329),(17625,'General\'s Satin Leggings',7,13329),(18202,'Eskhandar\'s Left Claw',22,13329),(18203,'Eskhandar\'s Right Claw',21,13329),(19577,'Rage of Mugamba',2,13329),(19588,'Hero\'s Brand',2,13329),(19594,'The All-Seeing Eye of Zuldazar',2,13329),(19601,'Jewel of Kajaro',2,13329),(19605,'Kezan\'s Unstoppable Taint',2,13329),(19609,'Unmarred Vision of Voodress',2,13329),(19613,'Pristine Enchanted South Seas Kelp',2,13329),(19617,'Zandalarian Shadow Mastery Talisman',2,13329),(19621,'Maelstrom\'s Wrath',2,13329),(19682,'Bloodvine Vest',5,13329),(19683,'Bloodvine Leggings',7,13329),(19684,'Bloodvine Boots',8,13329),(19685,'Primal Batskin Jerkin',5,13329),(19686,'Primal Batskin Gloves',10,13329),(19687,'Primal Batskin Bracers',9,13329),(19688,'Blood Tiger Breastplate',5,13329),(19689,'Blood Tiger Shoulders',3,13329),(19690,'Bloodsoul Breastplate',5,13329),(19691,'Bloodsoul Shoulders',3,13329),(19692,'Bloodsoul Gauntlets',10,13329),(19693,'Darksoul Breastplate',5,13329),(19694,'Darksoul Leggings',7,13329),(19695,'Darksoul Shoulders',3,13329),(19822,'Zandalar Vindicator\'s Breastplate',5,13329),(19823,'Zandalar Vindicator\'s Belt',6,13329),(19824,'Zandalar Vindicator\'s Armguards',9,13329),(19825,'Zandalar Freethinker\'s Breastplate',5,13329),(19826,'Zandalar Freethinker\'s Belt',6,13329),(19827,'Zandalar Freethinker\'s Armguards',9,13329),(19828,'Zandalar Augur\'s Hauberk',5,13329),(19829,'Zandalar Augur\'s Belt',6,13329),(19830,'Zandalar Augur\'s Bracers',9,13329),(19831,'Zandalar Predator\'s Mantle',3,13329),(19832,'Zandalar Predator\'s Belt',6,13329),(19833,'Zandalar Predator\'s Bracers',9,13329),(19834,'Zandalar Madcap\'s Tunic',5,13329),(19835,'Zandalar Madcap\'s Mantle',3,13329),(19836,'Zandalar Madcap\'s Bracers',9,13329),(19838,'Zandalar Haruspex\'s Tunic',5,13329),(19839,'Zandalar Haruspex\'s Belt',6,13329),(19840,'Zandalar Haruspex\'s Bracers',9,13329),(19841,'Zandalar Confessor\'s Mantle',3,13329),(19842,'Zandalar Confessor\'s Bindings',6,13329),(19843,'Zandalar Confessor\'s Wraps',9,13329),(19845,'Zandalar Illusionist\'s Mantle',3,13329),(19846,'Zandalar Illusionist\'s Wraps',9,13329),(19848,'Zandalar Demoniac\'s Wraps',9,13329),(19849,'Zandalar Demoniac\'s Mantle',3,13329),(19863,'Primalist\'s Seal',11,13329),(19865,'Warblade of the Hakkari',21,13329),(19866,'Warblade of the Hakkari',22,13329),(19873,'Overlord\'s Crimson Band',11,13329),(19893,'Zanzil\'s Seal',11,13329),(19896,'Thekal\'s Grasp',21,13329),(19898,'Seal of Jin',11,13329),(19905,'Zanzil\'s Band',11,13329),(19910,'Arlokk\'s Grasp',22,13329),(19912,'Overlord\'s Onyx Band',11,13329),(19920,'Primalist\'s Band',11,13329),(19925,'Band of Jin',11,13329),(19951,'Gri\'lek\'s Charm of Might',12,13329),(19952,'Gri\'lek\'s Charm of Valor',12,13329),(19953,'Renataki\'s Charm of Beasts',12,13329),(19954,'Renataki\'s Charm of Trickery',12,13329),(19955,'Wushoolay\'s Charm of Nature',12,13329),(19956,'Wushoolay\'s Charm of Spirits',12,13329),(19957,'Hazza\'rah\'s Charm of Destruction',12,13329),(19958,'Hazza\'rah\'s Charm of Healing',12,13329),(19959,'Hazza\'rah\'s Charm of Magic',12,13329),(20033,'Zandalar Demoniac\'s Robe',20,13329),(20034,'Zandalar Illusionist\'s Robe',20,13329),(20041,'Highlander\'s Plate Girdle',6,13329),(20042,'Highlander\'s Lamellar Girdle',6,13329),(20043,'Highlander\'s Chain Girdle',6,13329),(20044,'Highlander\'s Mail Girdle',6,13329),(20045,'Highlander\'s Leather Girdle',6,13329),(20046,'Highlander\'s Lizardhide Girdle',6,13329),(20047,'Highlander\'s Cloth Girdle',6,13329),(20048,'Highlander\'s Plate Greaves',8,13329),(20049,'Highlander\'s Lamellar Greaves',8,13329),(20050,'Highlander\'s Chain Greaves',8,13329),(20051,'Highlander\'s Mail Greaves',8,13329),(20052,'Highlander\'s Leather Boots',8,13329),(20053,'Highlander\'s Lizardhide Boots',8,13329),(20054,'Highlander\'s Cloth Boots',8,13329),(20055,'Highlander\'s Chain Pauldrons',3,13329),(20056,'Highlander\'s Mail Pauldrons',3,13329),(20057,'Highlander\'s Plate Spaulders',3,13329),(20058,'Highlander\'s Lamellar Spaulders',3,13329),(20059,'Highlander\'s Leather Shoulders',3,13329),(20060,'Highlander\'s Lizardhide Shoulders',3,13329),(20061,'Highlander\'s Epaulets',3,13329),(20150,'Defiler\'s Chain Girdle',6,13329),(20154,'Defiler\'s Chain Greaves',8,13329),(20158,'Defiler\'s Chain Pauldrons',3,13329),(20159,'Defiler\'s Cloth Boots',8,13329),(20163,'Defiler\'s Cloth Girdle',6,13329),(20167,'Defiler\'s Lizardhide Boots',8,13329),(20171,'Defiler\'s Lizardhide Girdle',6,13329),(20175,'Defiler\'s Lizardhide Shoulders',3,13329),(20176,'Defiler\'s Epaulets',3,13329),(20177,'Defiler\'s Lamellar Girdle',6,13329),(20181,'Defiler\'s Lamellar Greaves',8,13329),(20184,'Defiler\'s Lamellar Spaulders',3,13329),(20186,'Defiler\'s Leather Boots',8,13329),(20190,'Defiler\'s Leather Girdle',6,13329),(20194,'Defiler\'s Leather Shoulders',3,13329),(20195,'Defiler\'s Mail Girdle',6,13329),(20199,'Defiler\'s Mail Greaves',8,13329),(20203,'Defiler\'s Mail Pauldrons',3,13329),(20204,'Defiler\'s Plate Girdle',6,13329),(20208,'Defiler\'s Plate Greaves',8,13329),(20212,'Defiler\'s Plate Spaulders',3,13329),(20295,'Blue Dragonscale Leggings',7,13329),(20296,'Green Dragonscale Gauntlets',10,13329),(20406,'Twilight Cultist Mantle',3,13329),(20407,'Twilight Cultist Robe',20,13329),(20408,'Twilight Cultist Cowl',1,13329),(21278,'Stormshroud Gloves',10,13329),(21329,'Conqueror\'s Crown',1,13329),(21330,'Conqueror\'s Spaulders',3,13329),(21331,'Conqueror\'s Breastplate',5,13329),(21332,'Conqueror\'s Legguards',7,13329),(21333,'Conqueror\'s Greaves',8,13329),(21334,'Doomcaller\'s Robes',20,13329),(21335,'Doomcaller\'s Mantle',3,13329),(21336,'Doomcaller\'s Trousers',7,13329),(21337,'Doomcaller\'s Circlet',1,13329),(21338,'Doomcaller\'s Footwraps',8,13329),(21343,'Enigma Robes',20,13329),(21344,'Enigma Boots',8,13329),(21345,'Enigma Shoulderpads',3,13329),(21346,'Enigma Leggings',7,13329),(21347,'Enigma Circlet',1,13329),(21348,'Tiara of the Oracle',1,13329),(21349,'Footwraps of the Oracle',8,13329),(21350,'Mantle of the Oracle',3,13329),(21351,'Vestments of the Oracle',20,13329),(21352,'Trousers of the Oracle',7,13329),(21353,'Genesis Helm',1,13329),(21354,'Genesis Shoulderpads',3,13329),(21355,'Genesis Boots',8,13329),(21356,'Genesis Trousers',7,13329),(21357,'Genesis Vest',5,13329),(21359,'Deathdealer\'s Boots',8,13329),(21360,'Deathdealer\'s Helm',1,13329),(21361,'Deathdealer\'s Spaulders',3,13329),(21362,'Deathdealer\'s Leggings',7,13329),(21364,'Deathdealer\'s Vest',5,13329),(21365,'Striker\'s Footguards',8,13329),(21366,'Striker\'s Diadem',1,13329),(21367,'Striker\'s Pauldrons',3,13329),(21368,'Striker\'s Leggings',7,13329),(21370,'Striker\'s Hauberk',5,13329),(21372,'Stormcaller\'s Diadem',1,13329),(21373,'Stormcaller\'s Footguards',8,13329),(21374,'Stormcaller\'s Hauberk',5,13329),(21375,'Stormcaller\'s Leggings',7,13329),(21376,'Stormcaller\'s Pauldrons',3,13329),(21387,'Avenger\'s Crown',1,13329),(21388,'Avenger\'s Greaves',8,13329),(21389,'Avenger\'s Breastplate',5,13329),(21390,'Avenger\'s Legguards',7,13329),(21391,'Avenger\'s Pauldrons',3,13329),(21392,'Sickle of Unyielding Strength',13,13329),(21393,'Signet of Unyielding Strength',11,13329),(21394,'Drape of Unyielding Strength',16,13329),(21395,'Blade of Eternal Justice',13,13329),(21396,'Ring of Eternal Justice',11,13329),(21397,'Cape of Eternal Justice',16,13329),(21398,'Hammer of the Gathering Storm',21,13329),(21399,'Ring of the Gathering Storm',11,13329),(21400,'Cloak of the Gathering Storm',16,13329),(21401,'Scythe of the Unseen Path',13,13329),(21402,'Signet of the Unseen Path',11,13329),(21403,'Cloak of the Unseen Path',16,13329),(21404,'Dagger of Veiled Shadows',13,13329),(21405,'Band of Veiled Shadows',11,13329),(21406,'Cloak of Veiled Shadows',16,13329),(21407,'Mace of Unending Life',17,13329),(21408,'Band of Unending Life',11,13329),(21409,'Cloak of Unending Life',16,13329),(21410,'Gavel of Infinite Wisdom',21,13329),(21411,'Ring of Infinite Wisdom',11,13329),(21412,'Shroud of Infinite Wisdom',16,13329),(21413,'Blade of Vaulted Secrets',21,13329),(21414,'Band of Vaulted Secrets',11,13329),(21415,'Drape of Vaulted Secrets',16,13329),(21416,'Kris of Unspoken Names',21,13329),(21417,'Ring of Unspoken Names',11,13329),(21418,'Shroud of Unspoken Names',16,13329),(21524,'Red Winter Hat',1,13329),(21525,'Green Winter Hat',1,13329),(21846,'Spellfire Belt',6,13329),(21847,'Spellfire Gloves',10,13329),(21848,'Spellfire Robe',20,13329),(21849,'Netherweave Bracers',9,13329),(21850,'Netherweave Belt',6,13329),(21851,'Netherweave Gloves',10,13329),(21852,'Netherweave Pants',7,13329),(21853,'Netherweave Boots',8,13329),(21854,'Netherweave Robe',20,13329),(21855,'Netherweave Tunic',5,13329),(21859,'Imbued Netherweave Pants',7,13329),(21860,'Imbued Netherweave Boots',8,13329),(21861,'Imbued Netherweave Robe',20,13329),(21862,'Imbued Netherweave Tunic',5,13329),(21863,'Soulcloth Gloves',10,13329),(21864,'Soulcloth Shoulders',3,13329),(21865,'Soulcloth Vest',5,13329),(21866,'Arcanoweave Bracers',9,13329),(21867,'Arcanoweave Boots',8,13329),(21868,'Arcanoweave Robe',20,13329),(21869,'Frozen Shadoweave Shoulders',3,13329),(21870,'Frozen Shadoweave Boots',8,13329),(21871,'Frozen Shadoweave Robe',20,13329),(21873,'Primal Mooncloth Belt',6,13329),(21874,'Primal Mooncloth Shoulders',3,13329),(21875,'Primal Mooncloth Robe',20,13329),(21994,'Belt of Heroism',6,13329),(21995,'Boots of Heroism',8,13329),(21996,'Bracers of Heroism',9,13329),(21997,'Breastplate of Heroism',5,13329),(21998,'Gauntlets of Heroism',10,13329),(21999,'Helm of Heroism',1,13329),(22000,'Legplates of Heroism',7,13329),(22001,'Spaulders of Heroism',3,13329),(22002,'Darkmantle Belt',6,13329),(22003,'Darkmantle Boots',8,13329),(22004,'Darkmantle Bracers',9,13329),(22005,'Darkmantle Cap',1,13329),(22006,'Darkmantle Gloves',10,13329),(22007,'Darkmantle Pants',7,13329),(22008,'Darkmantle Spaulders',3,13329),(22009,'Darkmantle Tunic',5,13329),(22010,'Beastmaster\'s Belt',6,13329),(22011,'Beastmaster\'s Bindings',9,13329),(22013,'Beastmaster\'s Cap',1,13329),(22015,'Beastmaster\'s Gloves',10,13329),(22016,'Beastmaster\'s Mantle',3,13329),(22017,'Beastmaster\'s Pants',7,13329),(22060,'Beastmaster\'s Tunic',5,13329),(22061,'Beastmaster\'s Boots',8,13329),(22062,'Sorcerer\'s Belt',6,13329),(22063,'Sorcerer\'s Bindings',9,13329),(22064,'Sorcerer\'s Boots',8,13329),(22065,'Sorcerer\'s Crown',1,13329),(22066,'Sorcerer\'s Gloves',10,13329),(22067,'Sorcerer\'s Leggings',7,13329),(22068,'Sorcerer\'s Mantle',3,13329),(22069,'Sorcerer\'s Robes',20,13329),(22070,'Deathmist Belt',6,13329),(22071,'Deathmist Bracers',9,13329),(22072,'Deathmist Leggings',7,13329),(22073,'Deathmist Mantle',3,13329),(22074,'Deathmist Mask',1,13329),(22075,'Deathmist Robe',20,13329),(22076,'Deathmist Sandals',8,13329),(22077,'Deathmist Wraps',10,13329),(22078,'Virtuous Belt',6,13329),(22079,'Virtuous Bracers',9,13329),(22080,'Virtuous Crown',1,13329),(22081,'Virtuous Gloves',10,13329),(22082,'Virtuous Mantle',3,13329),(22083,'Virtuous Robe',20,13329),(22084,'Virtuous Sandals',8,13329),(22085,'Virtuous Skirt',7,13329),(22086,'Soulforge Belt',6,13329),(22087,'Soulforge Boots',8,13329),(22088,'Soulforge Bracers',9,13329),(22089,'Soulforge Breastplate',5,13329),(22090,'Soulforge Gauntlets',10,13329),(22091,'Soulforge Helm',1,13329),(22092,'Soulforge Legplates',7,13329),(22093,'Soulforge Spaulders',3,13329),(22095,'Bindings of The Five Thunders',9,13329),(22096,'Boots of The Five Thunders',8,13329),(22097,'Coif of The Five Thunders',1,13329),(22098,'Cord of The Five Thunders',6,13329),(22099,'Gauntlets of The Five Thunders',10,13329),(22100,'Kilt of The Five Thunders',7,13329),(22101,'Pauldrons of The Five Thunders',3,13329),(22102,'Vest of The Five Thunders',5,13329),(22106,'Feralheart Belt',6,13329),(22107,'Feralheart Boots',8,13329),(22108,'Feralheart Bracers',9,13329),(22109,'Feralheart Cowl',1,13329),(22110,'Feralheart Gloves',10,13329),(22111,'Feralheart Kilt',7,13329),(22112,'Feralheart Spaulders',3,13329),(22113,'Feralheart Vest',5,13329),(22301,'Ironweave Robe',20,13329),(22302,'Ironweave Cowl',1,13329),(22303,'Ironweave Pants',7,13329),(22304,'Ironweave Gloves',10,13329),(22305,'Ironweave Mantle',3,13329),(22306,'Ironweave Belt',6,13329),(22311,'Ironweave Boots',8,13329),(22313,'Ironweave Bracers',9,13329),(22416,'Dreadnaught Breastplate',5,13329),(22417,'Dreadnaught Legplates',7,13329),(22418,'Dreadnaught Helmet',1,13329),(22419,'Dreadnaught Pauldrons',3,13329),(22420,'Dreadnaught Sabatons',8,13329),(22421,'Dreadnaught Gauntlets',10,13329),(22422,'Dreadnaught Waistguard',6,13329),(22423,'Dreadnaught Bracers',9,13329),(22424,'Redemption Wristguards',9,13329),(22425,'Redemption Tunic',5,13329),(22426,'Redemption Handguards',10,13329),(22427,'Redemption Legguards',7,13329),(22428,'Redemption Headpiece',1,13329),(22429,'Redemption Spaulders',3,13329),(22430,'Redemption Boots',8,13329),(22431,'Redemption Girdle',6,13329),(22436,'Cryptstalker Tunic',5,13329),(22437,'Cryptstalker Legguards',7,13329),(22438,'Cryptstalker Headpiece',1,13329),(22439,'Cryptstalker Spaulders',3,13329),(22440,'Cryptstalker Boots',8,13329),(22441,'Cryptstalker Handguards',10,13329),(22442,'Cryptstalker Girdle',6,13329),(22443,'Cryptstalker Wristguards',9,13329),(22464,'Earthshatter Tunic',5,13329),(22465,'Earthshatter Legguards',7,13329),(22466,'Earthshatter Headpiece',1,13329),(22467,'Earthshatter Spaulders',3,13329),(22468,'Earthshatter Boots',8,13329),(22469,'Earthshatter Handguards',10,13329),(22470,'Earthshatter Girdle',6,13329),(22471,'Earthshatter Wristguards',9,13329),(22476,'Bonescythe Breastplate',5,13329),(22477,'Bonescythe Legplates',7,13329),(22478,'Bonescythe Helmet',1,13329),(22479,'Bonescythe Pauldrons',3,13329),(22480,'Bonescythe Sabatons',8,13329),(22481,'Bonescythe Gauntlets',10,13329),(22482,'Bonescythe Waistguard',6,13329),(22483,'Bonescythe Bracers',9,13329),(22488,'Dreamwalker Tunic',5,13329),(22489,'Dreamwalker Legguards',7,13329),(22490,'Dreamwalker Headpiece',1,13329),(22491,'Dreamwalker Spaulders',3,13329),(22492,'Dreamwalker Boots',8,13329),(22493,'Dreamwalker Handguards',10,13329),(22494,'Dreamwalker Girdle',6,13329),(22495,'Dreamwalker Wristguards',9,13329),(22496,'Frostfire Robe',20,13329),(22497,'Frostfire Leggings',7,13329),(22498,'Frostfire Circlet',1,13329),(22499,'Frostfire Shoulderpads',3,13329),(22500,'Frostfire Sandals',8,13329),(22501,'Frostfire Gloves',10,13329),(22502,'Frostfire Belt',6,13329),(22503,'Frostfire Bindings',9,13329),(22504,'Plagueheart Robe',20,13329),(22505,'Plagueheart Leggings',7,13329),(22506,'Plagueheart Circlet',1,13329),(22507,'Plagueheart Shoulderpads',3,13329),(22508,'Plagueheart Sandals',8,13329),(22509,'Plagueheart Gloves',10,13329),(22510,'Plagueheart Belt',6,13329),(22511,'Plagueheart Bindings',9,13329),(22512,'Robe of Faith',20,13329),(22513,'Leggings of Faith',7,13329),(22514,'Circlet of Faith',1,13329),(22515,'Shoulderpads of Faith',3,13329),(22516,'Sandals of Faith',8,13329),(22517,'Gloves of Faith',10,13329),(22518,'Belt of Faith',6,13329),(22519,'Bindings of Faith',9,13329),(22843,'Blood Guard\'s Chain Greaves',8,13329),(22852,'Blood Guard\'s Dragonhide Treads',8,13329),(22855,'Blood Guard\'s Dreadweave Walkers',8,13329),(22856,'Blood Guard\'s Leather Walkers',8,13329),(22857,'Blood Guard\'s Mail Greaves',8,13329),(22858,'Blood Guard\'s Plate Greaves',8,13329),(22859,'Blood Guard\'s Satin Walkers',8,13329),(22860,'Blood Guard\'s Silk Walkers',8,13329),(22862,'Blood Guard\'s Chain Vices',10,13329),(22863,'Blood Guard\'s Dragonhide Grips',10,13329),(22864,'Blood Guard\'s Leather Grips',10,13329),(22865,'Blood Guard\'s Dreadweave Handwraps',10,13329),(22867,'Blood Guard\'s Mail Vices',10,13329),(22868,'Blood Guard\'s Plate Gauntlets',10,13329),(22869,'Blood Guard\'s Satin Handwraps',10,13329),(22870,'Blood Guard\'s Silk Handwraps',10,13329),(22872,'Legionnaire\'s Plate Hauberk',5,13329),(22873,'Legionnaire\'s Plate Leggings',7,13329),(22874,'Legionnaire\'s Chain Hauberk',5,13329),(22875,'Legionnaire\'s Chain Legguards',7,13329),(22876,'Legionnaire\'s Mail Hauberk',5,13329),(22877,'Legionnaire\'s Dragonhide Chestpiece',5,13329),(22878,'Legionnaire\'s Dragonhide Leggings',7,13329),(22879,'Legionnaire\'s Leather Chestpiece',5,13329),(22880,'Legionnaire\'s Leather Legguards',7,13329),(22881,'Legionnaire\'s Dreadweave Legguards',7,13329),(22882,'Legionnaire\'s Satin Legguards',7,13329),(22883,'Legionnaire\'s Silk Legguards',7,13329),(22884,'Legionnaire\'s Dreadweave Tunic',20,13329),(22885,'Legionnaire\'s Satin Tunic',20,13329),(22886,'Legionnaire\'s Silk Tunic',20,13329),(22887,'Legionnaire\'s Mail Legguards',7,13329),(23059,'Ring of the Dreadnaught',11,13329),(23060,'Bonescythe Ring',11,13329),(23061,'Ring of Faith',11,13329),(23062,'Frostfire Ring',11,13329),(23063,'Plagueheart Ring',11,13329),(23064,'Ring of the Dreamwalker',11,13329),(23065,'Ring of the Earthshatterer',11,13329),(23066,'Ring of Redemption',11,13329),(23067,'Ring of the Cryptstalker',11,13329),(23078,'Gauntlets of Undead Slaying',10,13329),(23081,'Handwraps of Undead Slaying',10,13329),(23082,'Handguards of Undead Slaying',10,13329),(23084,'Gloves of Undead Cleansing',10,13329),(23085,'Robe of Undead Cleansing',20,13329),(23087,'Breastplate of Undead Slaying',5,13329),(23088,'Chestguard of Undead Slaying',5,13329),(23089,'Tunic of Undead Slaying',5,13329),(23090,'Bracers of Undead Slaying',9,13329),(23091,'Bracers of Undead Cleansing',9,13329),(23092,'Wristguards of Undead Slaying',9,13329),(23093,'Wristwraps of Undead Slaying',9,13329),(23243,'Champion\'s Plate Shoulders',3,13329),(23244,'Champion\'s Plate Helm',1,13329),(23251,'Champion\'s Chain Helm',1,13329),(23252,'Champion\'s Chain Shoulders',3,13329),(23253,'Champion\'s Dragonhide Headguard',1,13329),(23254,'Champion\'s Dragonhide Shoulders',3,13329),(23255,'Champion\'s Dreadweave Cowl',1,13329),(23256,'Champion\'s Dreadweave Spaulders',3,13329),(23257,'Champion\'s Leather Helm',1,13329),(23258,'Champion\'s Leather Shoulders',3,13329),(23259,'Champion\'s Mail Headguard',1,13329),(23260,'Champion\'s Mail Pauldrons',3,13329),(23261,'Champion\'s Satin Hood',1,13329),(23262,'Champion\'s Satin Mantle',3,13329),(23263,'Champion\'s Silk Cowl',1,13329),(23264,'Champion\'s Silk Mantle',3,13329),(23272,'Knight-Captain\'s Lamellar Breastplate',5,13329),(23273,'Knight-Captain\'s Lamellar Leggings',7,13329),(23274,'Knight-Lieutenant\'s Lamellar Gauntlets',10,13329),(23275,'Knight-Lieutenant\'s Lamellar Sabatons',8,13329),(23276,'Lieutenant Commander\'s Lamellar Headguard',1,13329),(23277,'Lieutenant Commander\'s Lamellar Shoulders',3,13329),(23278,'Knight-Lieutenant\'s Chain Greaves',8,13329),(23279,'Knight-Lieutenant\'s Chain Vices',10,13329),(23280,'Knight-Lieutenant\'s Dragonhide Grips',10,13329),(23281,'Knight-Lieutenant\'s Dragonhide Treads',8,13329),(23282,'Knight-Lieutenant\'s Dreadweave Handwraps',10,13329),(23283,'Knight-Lieutenant\'s Dreadweave Walkers',8,13329),(23284,'Knight-Lieutenant\'s Leather Grips',10,13329),(23285,'Knight-Lieutenant\'s Leather Walkers',8,13329),(23286,'Knight-Lieutenant\'s Plate Gauntlets',10,13329),(23287,'Knight-Lieutenant\'s Plate Greaves',8,13329),(23288,'Knight-Lieutenant\'s Satin Handwraps',10,13329),(23289,'Knight-Lieutenant\'s Satin Walkers',8,13329),(23290,'Knight-Lieutenant\'s Silk Handwraps',10,13329),(23291,'Knight-Lieutenant\'s Silk Walkers',8,13329),(23292,'Knight-Captain\'s Chain Hauberk',5,13329),(23293,'Knight-Captain\'s Chain Legguards',7,13329),(23294,'Knight-Captain\'s Dragonhide Chestpiece',5,13329),(23295,'Knight-Captain\'s Dragonhide Leggings',7,13329),(23296,'Knight-Captain\'s Dreadweave Legguards',7,13329),(23297,'Knight-Captain\'s Dreadweave Tunic',20,13329),(23298,'Knight-Captain\'s Leather Chestpiece',5,13329),(23299,'Knight-Captain\'s Leather Legguards',7,13329),(23300,'Knight-Captain\'s Plate Hauberk',5,13329),(23301,'Knight-Captain\'s Plate Leggings',7,13329),(23302,'Knight-Captain\'s Satin Legguards',7,13329),(23303,'Knight-Captain\'s Satin Tunic',20,13329),(23304,'Knight-Captain\'s Silk Legguards',7,13329),(23305,'Knight-Captain\'s Silk Tunic',20,13329),(23306,'Lieutenant Commander\'s Chain Helm',1,13329),(23307,'Lieutenant Commander\'s Chain Shoulders',3,13329),(23308,'Lieutenant Commander\'s Dragonhide Headguard',1,13329),(23309,'Lieutenant Commander\'s Dragonhide Shoulders',3,13329),(23310,'Lieutenant Commander\'s Dreadweave Cowl',1,13329),(23311,'Lieutenant Commander\'s Dreadweave Spaulders',3,13329),(23312,'Lieutenant Commander\'s Leather Helm',1,13329),(23313,'Lieutenant Commander\'s Leather Shoulders',3,13329),(23314,'Lieutenant Commander\'s Plate Helmet',1,13329),(23315,'Lieutenant Commander\'s Plate Shoulders',3,13329),(23316,'Lieutenant Commander\'s Satin Hood',1,13329),(23317,'Lieutenant Commander\'s Satin Mantle',3,13329),(23318,'Lieutenant Commander\'s Silk Cowl',1,13329),(23319,'Lieutenant Commander\'s Silk Mantle',3,13329),(23324,'Mantle of the Fire Festival',3,13329),(23482,'Fel Iron Plate Gloves',10,13329),(23484,'Fel Iron Plate Belt',6,13329),(23487,'Fel Iron Plate Boots',8,13329),(23488,'Fel Iron Plate Pants',7,13329),(23489,'Fel Iron Breastplate',5,13329),(23490,'Fel Iron Chain Tunic',5,13329),(23491,'Fel Iron Chain Gloves',10,13329),(23493,'Fel Iron Chain Coif',1,13329),(23494,'Fel Iron Chain Bracers',9,13329),(23506,'Adamantite Plate Bracers',9,13329),(23507,'Adamantite Breastplate',5,13329),(23508,'Adamantite Plate Gloves',10,13329),(23509,'Enchanted Adamantite Breastplate',5,13329),(23510,'Enchanted Adamantite Belt',6,13329),(23511,'Enchanted Adamantite Boots',8,13329),(23512,'Enchanted Adamantite Leggings',7,13329),(23513,'Flamebane Breastplate',5,13329),(23514,'Flamebane Gloves',10,13329),(23515,'Flamebane Bracers',9,13329),(23516,'Flamebane Helm',1,13329),(23517,'Felsteel Gloves',10,13329),(23518,'Felsteel Leggings',7,13329),(23519,'Felsteel Helm',1,13329),(23520,'Ragesteel Gloves',10,13329),(23521,'Ragesteel Helm',1,13329),(23522,'Ragesteel Breastplate',5,13329),(23523,'Khorium Pants',7,13329),(23524,'Khorium Belt',6,13329),(23525,'Khorium Boots',8,13329),(24249,'Unyielding Bracers',9,13329),(24255,'Unyielding Girdle',6,13329),(24261,'Whitemend Pants',7,13329),(24262,'Spellstrike Pants',7,13329),(24263,'Battlecast Pants',7,13329),(24264,'Whitemend Hood',1,13329),(24266,'Spellstrike Hood',1,13329),(24267,'Battlecast Hood',1,13329),(24544,'Gladiator\'s Plate Chestpiece',5,13329),(24545,'Gladiator\'s Plate Helm',1,13329),(24546,'Gladiator\'s Plate Shoulders',3,13329),(24547,'Gladiator\'s Plate Legguards',7,13329),(24549,'Gladiator\'s Plate Gauntlets',10,13329),(24552,'Gladiator\'s Dreadweave Robe',20,13329),(24553,'Gladiator\'s Dreadweave Hood',1,13329),(24554,'Gladiator\'s Dreadweave Mantle',3,13329),(24555,'Gladiator\'s Dreadweave Leggings',7,13329),(24556,'Gladiator\'s Dreadweave Gloves',10,13329),(25654,'Felscale Gloves',10,13329),(25655,'Felscale Boots',8,13329),(25656,'Felscale Pants',7,13329),(25657,'Felscale Breastplate',5,13329),(25659,'Scaled Draenic Boots',8,13329),(25660,'Scaled Draenic Vest',5,13329),(25661,'Scaled Draenic Gloves',10,13329),(25662,'Scaled Draenic Pants',7,13329),(25668,'Thick Draenic Boots',8,13329),(25669,'Thick Draenic Gloves',10,13329),(25670,'Thick Draenic Pants',7,13329),(25671,'Thick Draenic Vest',5,13329),(25673,'Wild Draenish Boots',8,13329),(25674,'Wild Draenish Gloves',10,13329),(25675,'Wild Draenish Leggings',7,13329),(25676,'Wild Draenish Vest',5,13329),(25685,'Fel Leather Gloves',10,13329),(25686,'Fel Leather Boots',8,13329),(25687,'Fel Leather Leggings',7,13329),(25689,'Heavy Clefthoof Vest',5,13329),(25690,'Heavy Clefthoof Leggings',7,13329),(25691,'Heavy Clefthoof Boots',8,13329),(25692,'Netherfury Leggings',7,13329),(25693,'Netherfury Boots',8,13329),(25694,'Netherfury Belt',6,13329),(25695,'Felstalker Belt',6,13329),(25696,'Felstalker Breastplate',5,13329),(25697,'Felstalker Bracers',9,13329),(25830,'Gladiator\'s Leather Helm',1,13329),(25831,'Gladiator\'s Leather Tunic',5,13329),(25832,'Gladiator\'s Leather Spaulders',3,13329),(25833,'Gladiator\'s Leather Legguards',7,13329),(25834,'Gladiator\'s Leather Gloves',10,13329),(25854,'Gladiator\'s Silk Amice',3,13329),(25855,'Gladiator\'s Silk Cowl',1,13329),(25856,'Gladiator\'s Silk Raiment',20,13329),(25857,'Gladiator\'s Silk Handguards',10,13329),(25858,'Gladiator\'s Silk Trousers',7,13329),(25997,'Gladiator\'s Linked Armor',5,13329),(25998,'Gladiator\'s Linked Helm',1,13329),(25999,'Gladiator\'s Linked Spaulders',3,13329),(26000,'Gladiator\'s Linked Gauntlets',10,13329),(26001,'Gladiator\'s Linked Leggings',7,13329),(27465,'Mana-Etched Gloves',10,13329),(27468,'Moonglade Handwraps',10,13329),(27469,'Gladiator\'s Mail Armor',5,13329),(27470,'Gladiator\'s Mail Gauntlets',10,13329),(27471,'Gladiator\'s Mail Helm',1,13329),(27472,'Gladiator\'s Mail Leggings',7,13329),(27473,'Gladiator\'s Mail Spaulders',3,13329),(27474,'Beast Lord Handguards',10,13329),(27475,'Gauntlets of the Bold',10,13329),(27497,'Doomplate Gauntlets',10,13329),(27508,'Incanter\'s Gloves',10,13329),(27509,'Handgrips of Assassination',10,13329),(27510,'Tidefury Gauntlets',10,13329),(27528,'Gauntlets of Desolation',10,13329),(27531,'Wastewalker Gloves',10,13329),(27535,'Gauntlets of the Righteous',10,13329),(27536,'Hallowed Handwraps',10,13329),(27537,'Gloves of Oblivion',10,13329),(27702,'Gladiator\'s Lamellar Chestpiece',5,13329),(27703,'Gladiator\'s Lamellar Gauntlets',10,13329),(27704,'Gladiator\'s Lamellar Helm',1,13329),(27705,'Gladiator\'s Lamellar Legguards',7,13329),(27706,'Gladiator\'s Lamellar Shoulders',3,13329),(27707,'Gladiator\'s Satin Gloves',10,13329),(27708,'Gladiator\'s Satin Hood',1,13329),(27709,'Gladiator\'s Satin Leggings',7,13329),(27710,'Gladiator\'s Satin Mantle',3,13329),(27711,'Gladiator\'s Satin Robe',20,13329),(27713,'Pauldrons of Desolation',3,13329),(27737,'Moonglade Shoulders',3,13329),(27738,'Incanter\'s Pauldrons',3,13329),(27739,'Spaulders of the Righteous',3,13329),(27771,'Doomplate Shoulderguards',3,13329),(27775,'Hallowed Pauldrons',3,13329),(27776,'Shoulderpads of Assassination',3,13329),(27778,'Spaulders of Oblivion',3,13329),(27796,'Mana-Etched Spaulders',3,13329),(27797,'Wastewalker Shoulderpads',3,13329),(27801,'Beast Lord Mantle',3,13329),(27802,'Tidefury Shoulderguards',3,13329),(27803,'Shoulderguards of the Bold',3,13329),(27837,'Wastewalker Leggings',7,13329),(27838,'Incanter\'s Trousers',7,13329),(27839,'Legplates of the Righteous',7,13329),(27870,'Doomplate Legguards',7,13329),(27873,'Moonglade Pants',7,13329),(27874,'Beast Lord Leggings',7,13329),(27875,'Hallowed Trousers',7,13329),(27879,'Gladiator\'s Scaled Chestpiece',5,13329),(27880,'Gladiator\'s Scaled Gauntlets',10,13329),(27881,'Gladiator\'s Scaled Helm',1,13329),(27882,'Gladiator\'s Scaled Legguards',7,13329),(27883,'Gladiator\'s Scaled Shoulders',3,13329),(27907,'Mana-Etched Pantaloons',7,13329),(27908,'Leggings of Assassination',7,13329),(27909,'Tidefury Kilt',7,13329),(27936,'Greaves of Desolation',7,13329),(27948,'Trousers of Oblivion',7,13329),(27977,'Legplates of the Bold',7,13329),(28126,'Gladiator\'s Dragonhide Gloves',10,13329),(28127,'Gladiator\'s Dragonhide Helm',1,13329),(28128,'Gladiator\'s Dragonhide Legguards',7,13329),(28129,'Gladiator\'s Dragonhide Spaulders',3,13329),(28130,'Gladiator\'s Dragonhide Tunic',5,13329),(28136,'Gladiator\'s Wyrmhide Gloves',10,13329),(28137,'Gladiator\'s Wyrmhide Helm',1,13329),(28138,'Gladiator\'s Wyrmhide Legguards',7,13329),(28139,'Gladiator\'s Wyrmhide Spaulders',3,13329),(28140,'Gladiator\'s Wyrmhide Tunic',5,13329),(28189,'Latro\'s Shifting Sword',13,13329),(28191,'Mana-Etched Vestments',20,13329),(28192,'Helm of Desolation',1,13329),(28193,'Mana-Etched Crown',1,13329),(28202,'Moonglade Robe',20,13329),(28203,'Breastplate of the Righteous',5,13329),(28204,'Tunic of Assassination',5,13329),(28205,'Breastplate of the Bold',5,13329),(28224,'Wastewalker Helm',1,13329),(28225,'Doomplate Warhelm',1,13329),(28228,'Beast Lord Cuirass',5,13329),(28229,'Incanter\'s Robe',20,13329),(28230,'Hallowed Garments',20,13329),(28231,'Tidefury Chestpiece',5,13329),(28232,'Robe of Oblivion',20,13329),(28264,'Wastewalker Tunic',5,13329),(28275,'Beast Lord Helm',1,13329),(28278,'Incanter\'s Cowl',1,13329),(28285,'Helm of the Righteous',1,13329),(28331,'Gladiator\'s Chain Helm',1,13329),(28332,'Gladiator\'s Chain Leggings',7,13329),(28333,'Gladiator\'s Chain Spaulders',3,13329),(28334,'Gladiator\'s Chain Armor',5,13329),(28335,'Gladiator\'s Chain Gauntlets',10,13329),(28348,'Moonglade Cowl',1,13329),(28349,'Tidefury Helm',1,13329),(28350,'Warhelm of the Bold',1,13329),(28401,'Hauberk of Desolation',5,13329),(28403,'Doomplate Chestguard',5,13329),(28413,'Hallowed Crown',1,13329),(28414,'Helm of Assassination',1,13329),(28415,'Hood of Oblivion',1,13329),(28613,'Grand Marshal\'s Chain Armor',5,13329),(28614,'Grand Marshal\'s Chain Gauntlets',10,13329),(28615,'Grand Marshal\'s Chain Helm',1,13329),(28616,'Grand Marshal\'s Chain Leggings',7,13329),(28617,'Grand Marshal\'s Chain Spaulders',3,13329),(28618,'Grand Marshal\'s Dragonhide Gloves',10,13329),(28619,'Grand Marshal\'s Dragonhide Helm',1,13329),(28620,'Grand Marshal\'s Dragonhide Legguards',7,13329),(28622,'Grand Marshal\'s Dragonhide Spaulders',3,13329),(28623,'Grand Marshal\'s Dragonhide Tunic',5,13329),(28624,'Grand Marshal\'s Dreadweave Gloves',10,13329),(28625,'Grand Marshal\'s Dreadweave Hood',1,13329),(28626,'Grand Marshal\'s Dreadweave Leggings',7,13329),(28627,'Grand Marshal\'s Dreadweave Mantle',3,13329),(28628,'Grand Marshal\'s Dreadweave Robe',20,13329),(28679,'Grand Marshal\'s Lamellar Chestpiece',5,13329),(28680,'Grand Marshal\'s Lamellar Gauntlets',10,13329),(28681,'Grand Marshal\'s Lamellar Helm',1,13329),(28683,'Grand Marshal\'s Lamellar Shoulders',3,13329),(28684,'Grand Marshal\'s Leather Gloves',10,13329),(28685,'Grand Marshal\'s Leather Helm',1,13329),(28686,'Grand Marshal\'s Leather Legguards',7,13329),(28687,'Grand Marshal\'s Leather Spaulders',3,13329),(28688,'Grand Marshal\'s Leather Tunic',5,13329),(28689,'Grand Marshal\'s Linked Armor',5,13329),(28690,'Grand Marshal\'s Linked Gauntlets',10,13329),(28691,'Grand Marshal\'s Linked Helm',1,13329),(28692,'Grand Marshal\'s Linked Leggings',7,13329),(28693,'Grand Marshal\'s Linked Spaulders',3,13329),(28694,'Grand Marshal\'s Mail Armor',5,13329),(28695,'Grand Marshal\'s Mail Gauntlets',10,13329),(28696,'Grand Marshal\'s Mail Helm',1,13329),(28697,'Grand Marshal\'s Mail Leggings',7,13329),(28698,'Grand Marshal\'s Mail Spaulders',3,13329),(28699,'Grand Marshal\'s Plate Chestpiece',5,13329),(28700,'Grand Marshal\'s Plate Gauntlets',10,13329),(28701,'Grand Marshal\'s Plate Helm',1,13329),(28702,'Grand Marshal\'s Plate Legguards',7,13329),(28703,'Grand Marshal\'s Plate Shoulders',3,13329),(28704,'Grand Marshal\'s Satin Gloves',10,13329),(28705,'Grand Marshal\'s Satin Hood',1,13329),(28706,'Grand Marshal\'s Satin Leggings',7,13329),(28707,'Grand Marshal\'s Satin Mantle',3,13329),(28708,'Grand Marshal\'s Satin Robe',20,13329),(28709,'Grand Marshal\'s Scaled Chestpiece',5,13329),(28710,'Grand Marshal\'s Scaled Gauntlets',10,13329),(28711,'Grand Marshal\'s Scaled Helm',1,13329),(28712,'Grand Marshal\'s Scaled Legguards',7,13329),(28713,'Grand Marshal\'s Scaled Shoulders',3,13329),(28714,'Grand Marshal\'s Silk Amice',3,13329),(28715,'Grand Marshal\'s Silk Cowl',1,13329),(28716,'Grand Marshal\'s Silk Handguards',10,13329),(28717,'Grand Marshal\'s Silk Raiment',20,13329),(28718,'Grand Marshal\'s Silk Trousers',7,13329),(28719,'Grand Marshal\'s Wyrmhide Gloves',10,13329),(28720,'Grand Marshal\'s Wyrmhide Helm',1,13329),(28721,'Grand Marshal\'s Wyrmhide Legguards',7,13329),(28722,'Grand Marshal\'s Wyrmhide Spaulders',3,13329),(28723,'Grand Marshal\'s Wyrmhide Tunic',5,13329),(28724,'Grand Marshal\'s Lamellar Legguards',7,13329),(28805,'High Warlord\'s Chain Armor',5,13329),(28806,'High Warlord\'s Chain Gauntlets',10,13329),(28807,'High Warlord\'s Chain Helm',1,13329),(28808,'High Warlord\'s Chain Leggings',7,13329),(28809,'High Warlord\'s Chain Spaulders',3,13329),(28811,'High Warlord\'s Dragonhide Gloves',10,13329),(28812,'High Warlord\'s Dragonhide Helm',1,13329),(28813,'High Warlord\'s Dragonhide Legguards',7,13329),(28814,'High Warlord\'s Dragonhide Spaulders',3,13329),(28815,'High Warlord\'s Dragonhide Tunic',5,13329),(28817,'High Warlord\'s Dreadweave Gloves',10,13329),(28818,'High Warlord\'s Dreadweave Hood',1,13329),(28819,'High Warlord\'s Dreadweave Leggings',7,13329),(28820,'High Warlord\'s Dreadweave Mantle',3,13329),(28821,'High Warlord\'s Dreadweave Robe',20,13329),(28831,'High Warlord\'s Lamellar Chestpiece',5,13329),(28832,'High Warlord\'s Lamellar Gauntlets',10,13329),(28833,'High Warlord\'s Lamellar Helm',1,13329),(28834,'High Warlord\'s Lamellar Legguards',7,13329),(28835,'High Warlord\'s Lamellar Shoulders',3,13329),(28836,'High Warlord\'s Leather Gloves',10,13329),(28837,'High Warlord\'s Leather Helm',1,13329),(28838,'High Warlord\'s Leather Legguards',7,13329),(28839,'High Warlord\'s Leather Spaulders',3,13329),(28840,'High Warlord\'s Leather Tunic',5,13329),(28841,'High Warlord\'s Linked Armor',5,13329),(28842,'High Warlord\'s Linked Gauntlets',10,13329),(28843,'High Warlord\'s Linked Helm',1,13329),(28844,'High Warlord\'s Linked Leggings',7,13329),(28845,'High Warlord\'s Linked Spaulders',3,13329),(28846,'High Warlord\'s Mail Armor',5,13329),(28847,'High Warlord\'s Mail Gauntlets',10,13329),(28848,'High Warlord\'s Mail Helm',1,13329),(28849,'High Warlord\'s Mail Leggings',7,13329),(28850,'High Warlord\'s Mail Spaulders',3,13329),(28851,'High Warlord\'s Plate Chestpiece',5,13329),(28852,'High Warlord\'s Plate Gauntlets',10,13329),(28853,'High Warlord\'s Plate Helm',1,13329),(28854,'High Warlord\'s Plate Legguards',7,13329),(28855,'High Warlord\'s Plate Shoulders',3,13329),(28856,'High Warlord\'s Satin Gloves',10,13329),(28857,'High Warlord\'s Satin Hood',1,13329),(28858,'High Warlord\'s Satin Leggings',7,13329),(28859,'High Warlord\'s Satin Mantle',3,13329),(28860,'High Warlord\'s Satin Robe',20,13329),(28861,'High Warlord\'s Scaled Chestpiece',5,13329),(28862,'High Warlord\'s Scaled Gauntlets',10,13329),(28863,'High Warlord\'s Scaled Helm',1,13329),(28864,'High Warlord\'s Scaled Legguards',7,13329),(28865,'High Warlord\'s Scaled Shoulders',3,13329),(28866,'High Warlord\'s Silk Amice',3,13329),(28867,'High Warlord\'s Silk Cowl',1,13329),(28868,'High Warlord\'s Silk Handguards',10,13329),(28869,'High Warlord\'s Silk Raiment',20,13329),(28870,'High Warlord\'s Silk Trousers',7,13329),(28871,'High Warlord\'s Wyrmhide Gloves',10,13329),(28872,'High Warlord\'s Wyrmhide Helm',1,13329),(28873,'High Warlord\'s Wyrmhide Legguards',7,13329),(28874,'High Warlord\'s Wyrmhide Spaulders',3,13329),(28875,'High Warlord\'s Wyrmhide Tunic',5,13329),(28963,'Voidheart Crown',1,13329),(28964,'Voidheart Robe',20,13329),(28966,'Voidheart Leggings',7,13329),(28967,'Voidheart Mantle',3,13329),(28968,'Voidheart Gloves',10,13329),(29011,'Warbringer Greathelm',1,13329),(29012,'Warbringer Chestguard',5,13329),(29015,'Warbringer Legguards',7,13329),(29016,'Warbringer Shoulderguards',3,13329),(29017,'Warbringer Handguards',10,13329),(29019,'Warbringer Breastplate',5,13329),(29020,'Warbringer Gauntlets',10,13329),(29021,'Warbringer Battle-Helm',1,13329),(29022,'Warbringer Greaves',7,13329),(29023,'Warbringer Shoulderplates',3,13329),(29028,'Cyclone Headdress',1,13329),(29029,'Cyclone Hauberk',5,13329),(29030,'Cyclone Kilt',7,13329),(29031,'Cyclone Shoulderpads',3,13329),(29032,'Cyclone Gloves',10,13329),(29033,'Cyclone Chestguard',5,13329),(29034,'Cyclone Handguards',10,13329),(29035,'Cyclone Faceguard',1,13329),(29036,'Cyclone Legguards',7,13329),(29037,'Cyclone Shoulderguards',3,13329),(29038,'Cyclone Breastplate',5,13329),(29039,'Cyclone Gauntlets',10,13329),(29040,'Cyclone Helm',1,13329),(29042,'Cyclone War-Kilt',7,13329),(29043,'Cyclone Shoulderplates',3,13329),(29044,'Netherblade Facemask',1,13329),(29045,'Netherblade Chestpiece',5,13329),(29046,'Netherblade Breeches',7,13329),(29047,'Netherblade Shoulderpads',3,13329),(29048,'Netherblade Gloves',10,13329),(29049,'Light-Collar of the Incarnate',1,13329),(29050,'Robes of the Incarnate',20,13329),(29053,'Trousers of the Incarnate',7,13329),(29054,'Light-Mantle of the Incarnate',3,13329),(29055,'Handwraps of the Incarnate',10,13329),(29056,'Shroud of the Incarnate',20,13329),(29057,'Gloves of the Incarnate',10,13329),(29058,'Soul-Collar of the Incarnate',1,13329),(29059,'Leggings of the Incarnate',7,13329),(29060,'Soul-Mantle of the Incarnate',3,13329),(29061,'Justicar Diadem',1,13329),(29062,'Justicar Chestpiece',5,13329),(29063,'Justicar Leggings',7,13329),(29064,'Justicar Pauldrons',3,13329),(29065,'Justicar Gloves',10,13329),(29066,'Justicar Chestguard',5,13329),(29067,'Justicar Handguards',10,13329),(29068,'Justicar Faceguard',1,13329),(29069,'Justicar Legguards',7,13329),(29070,'Justicar Shoulderguards',3,13329),(29071,'Justicar Breastplate',5,13329),(29072,'Justicar Gauntlets',10,13329),(29073,'Justicar Crown',1,13329),(29074,'Justicar Greaves',7,13329),(29075,'Justicar Shoulderplates',3,13329),(29076,'Collar of the Aldor',1,13329),(29077,'Vestments of the Aldor',20,13329),(29078,'Legwraps of the Aldor',7,13329),(29079,'Pauldrons of the Aldor',3,13329),(29080,'Gloves of the Aldor',10,13329),(29081,'Demon Stalker Greathelm',1,13329),(29082,'Demon Stalker Harness',5,13329),(29083,'Demon Stalker Greaves',7,13329),(29084,'Demon Stalker Shoulderguards',3,13329),(29085,'Demon Stalker Gauntlets',10,13329),(29086,'Crown of Malorne',1,13329),(29087,'Chestguard of Malorne',5,13329),(29088,'Legguards of Malorne',7,13329),(29089,'Shoulderguards of Malorne',3,13329),(29090,'Handguards of Malorne',10,13329),(29091,'Chestpiece of Malorne',5,13329),(29092,'Gloves of Malorne',10,13329),(29093,'Antlers of Malorne',1,13329),(29094,'Britches of Malorne',7,13329),(29095,'Pauldrons of Malorne',3,13329),(29096,'Breastplate of Malorne',5,13329),(29097,'Gauntlets of Malorne',10,13329),(29098,'Stag-Helm of Malorne',1,13329),(29099,'Greaves of Malorne',7,13329),(29100,'Mantle of Malorne',3,13329),(29515,'Ebon Netherscale Breastplate',5,13329),(29516,'Ebon Netherscale Belt',6,13329),(29517,'Ebon Netherscale Bracers',9,13329),(29519,'Netherstrike Breastplate',5,13329),(29520,'Netherstrike Belt',6,13329),(29521,'Netherstrike Bracers',9,13329),(29522,'Windhawk Hauberk',5,13329),(29523,'Windhawk Bracers',9,13329),(29524,'Windhawk Belt',6,13329),(29525,'Primalstrike Vest',5,13329),(29526,'Primalstrike Belt',6,13329),(29527,'Primalstrike Bracers',9,13329),(29594,'Knight-Lieutenant\'s Mail Greaves',8,13329),(29595,'Knight-Lieutenant\'s Mail Vices',10,13329),(29596,'Knight-Captain\'s Mail Hauberk',5,13329),(29597,'Knight-Captain\'s Mail Legguards',7,13329),(29598,'Lieutenant Commander\'s Mail Headguard',1,13329),(29599,'Lieutenant Commander\'s Mail Pauldrons',3,13329),(29600,'Blood Guard\'s Lamellar Gauntlets',10,13329),(29601,'Blood Guard\'s Lamellar Sabatons',8,13329),(29602,'Legionnaire\'s Lamellar Breastplate',5,13329),(29603,'Legionnaire\'s Lamellar Leggings',7,13329),(29604,'Champion\'s Lamellar Headguard',1,13329),(29605,'Champion\'s Lamellar Shoulders',3,13329),(29606,'Marshal\'s Mail Boots',8,13329),(29607,'Marshal\'s Mail Gauntlets',10,13329),(29608,'Marshal\'s Mail Leggings',7,13329),(29609,'Field Marshal\'s Mail Armor',5,13329),(29610,'Field Marshal\'s Mail Helm',1,13329),(29611,'Field Marshal\'s Mail Spaulders',3,13329),(29612,'General\'s Lamellar Boots',8,13329),(29613,'General\'s Lamellar Gloves',10,13329),(29614,'General\'s Lamellar Legplates',7,13329),(29615,'Warlord\'s Lamellar Chestplate',5,13329),(29616,'Warlord\'s Lamellar Faceguard',1,13329),(29617,'Warlord\'s Lamellar Pauldrons',3,13329),(30113,'Destroyer Chestguard',5,13329),(30114,'Destroyer Handguards',10,13329),(30115,'Destroyer Greathelm',1,13329),(30116,'Destroyer Legguards',7,13329),(30117,'Destroyer Shoulderguards',3,13329),(30118,'Destroyer Breastplate',5,13329),(30119,'Destroyer Gauntlets',10,13329),(30120,'Destroyer Battle-Helm',1,13329),(30121,'Destroyer Greaves',7,13329),(30122,'Destroyer Shoulderblades',3,13329),(30123,'Crystalforge Chestguard',5,13329),(30124,'Crystalforge Handguards',10,13329),(30125,'Crystalforge Faceguard',1,13329),(30126,'Crystalforge Legguards',7,13329),(30127,'Crystalforge Shoulderguards',3,13329),(30129,'Crystalforge Breastplate',5,13329),(30130,'Crystalforge Gauntlets',10,13329),(30131,'Crystalforge War-Helm',1,13329),(30132,'Crystalforge Greaves',7,13329),(30133,'Crystalforge Shoulderbraces',3,13329),(30134,'Crystalforge Chestpiece',5,13329),(30135,'Crystalforge Gloves',10,13329),(30136,'Crystalforge Greathelm',1,13329),(30137,'Crystalforge Leggings',7,13329),(30138,'Crystalforge Pauldrons',3,13329),(30139,'Rift Stalker Hauberk',5,13329),(30140,'Rift Stalker Gauntlets',10,13329),(30141,'Rift Stalker Helm',1,13329),(30142,'Rift Stalker Leggings',7,13329),(30143,'Rift Stalker Mantle',3,13329),(30144,'Deathmantle Chestguard',5,13329),(30145,'Deathmantle Handguards',10,13329),(30146,'Deathmantle Helm',1,13329),(30148,'Deathmantle Legguards',7,13329),(30149,'Deathmantle Shoulderpads',3,13329),(30150,'Vestments of the Avatar',20,13329),(30151,'Gloves of the Avatar',10,13329),(30152,'Cowl of the Avatar',1,13329),(30153,'Breeches of the Avatar',7,13329),(30154,'Mantle of the Avatar',3,13329),(30159,'Shroud of the Avatar',20,13329),(30160,'Handguards of the Avatar',10,13329),(30161,'Hood of the Avatar',1,13329),(30162,'Leggings of the Avatar',7,13329),(30163,'Wings of the Avatar',3,13329),(30164,'Cataclysm Chestguard',5,13329),(30165,'Cataclysm Gloves',10,13329),(30166,'Cataclysm Headguard',1,13329),(30167,'Cataclysm Legguards',7,13329),(30168,'Cataclysm Shoulderguards',3,13329),(30169,'Cataclysm Chestpiece',5,13329),(30170,'Cataclysm Handgrips',10,13329),(30171,'Cataclysm Headpiece',1,13329),(30172,'Cataclysm Leggings',7,13329),(30173,'Cataclysm Shoulderpads',3,13329),(30185,'Cataclysm Chestplate',5,13329),(30186,'Gladiator\'s Felweave Amice',3,13329),(30187,'Gladiator\'s Felweave Cowl',1,13329),(30188,'Gladiator\'s Felweave Handguards',10,13329),(30189,'Cataclysm Gauntlets',10,13329),(30190,'Cataclysm Helm',1,13329),(30192,'Cataclysm Legplates',7,13329),(30194,'Cataclysm Shoulderplates',3,13329),(30196,'Robes of Tirisfal',20,13329),(30200,'Gladiator\'s Felweave Raiment',20,13329),(30201,'Gladiator\'s Felweave Trousers',7,13329),(30205,'Gloves of Tirisfal',10,13329),(30206,'Cowl of Tirisfal',1,13329),(30207,'Leggings of Tirisfal',7,13329),(30210,'Mantle of Tirisfal',3,13329),(30211,'Gloves of the Corruptor',10,13329),(30212,'Hood of the Corruptor',1,13329),(30213,'Leggings of the Corruptor',7,13329),(30214,'Robe of the Corruptor',20,13329),(30215,'Mantle of the Corruptor',3,13329),(30216,'Nordrassil Chestguard',5,13329),(30217,'Nordrassil Gloves',10,13329),(30219,'Nordrassil Headguard',1,13329),(30220,'Nordrassil Life-Kilt',7,13329),(30221,'Nordrassil Life-Mantle',3,13329),(30222,'Nordrassil Chestplate',5,13329),(30223,'Nordrassil Handgrips',10,13329),(30228,'Nordrassil Headdress',1,13329),(30229,'Nordrassil Feral-Kilt',7,13329),(30230,'Nordrassil Feral-Mantle',3,13329),(30231,'Nordrassil Chestpiece',5,13329),(30232,'Nordrassil Gauntlets',10,13329),(30233,'Nordrassil Headpiece',1,13329),(30234,'Nordrassil Wrath-Kilt',7,13329),(30235,'Nordrassil Wrath-Mantle',3,13329),(30969,'Onslaught Gauntlets',10,13329),(30970,'Onslaught Handguards',10,13329),(30972,'Onslaught Battle-Helm',1,13329),(30974,'Onslaught Greathelm',1,13329),(30975,'Onslaught Breastplate',5,13329),(30976,'Onslaught Chestguard',5,13329),(30977,'Onslaught Greaves',7,13329),(30978,'Onslaught Legguards',7,13329),(30979,'Onslaught Shoulderblades',3,13329),(30980,'Onslaught Shoulderguards',3,13329),(30982,'Lightbringer Gauntlets',10,13329),(30983,'Lightbringer Gloves',10,13329),(30985,'Lightbringer Handguards',10,13329),(30987,'Lightbringer Faceguard',1,13329),(30988,'Lightbringer Greathelm',1,13329),(30989,'Lightbringer War-Helm',1,13329),(30990,'Lightbringer Breastplate',5,13329),(30991,'Lightbringer Chestguard',5,13329),(30992,'Lightbringer Chestpiece',5,13329),(30993,'Lightbringer Greaves',7,13329),(30994,'Lightbringer Leggings',7,13329),(30995,'Lightbringer Legguards',7,13329),(30996,'Lightbringer Pauldrons',3,13329),(30997,'Lightbringer Shoulderbraces',3,13329),(30998,'Lightbringer Shoulderguards',3,13329),(31001,'Gronnstalker\'s Gloves',10,13329),(31003,'Gronnstalker\'s Helmet',1,13329),(31004,'Gronnstalker\'s Chestguard',5,13329),(31005,'Gronnstalker\'s Leggings',7,13329),(31006,'Gronnstalker\'s Spaulders',3,13329),(31007,'Skyshatter Gloves',10,13329),(31008,'Skyshatter Gauntlets',10,13329),(31011,'Skyshatter Grips',10,13329),(31012,'Skyshatter Helmet',1,13329),(31014,'Skyshatter Headguard',1,13329),(31015,'Skyshatter Cover',1,13329),(31016,'Skyshatter Chestguard',20,13329),(31017,'Skyshatter Breastplate',20,13329),(31018,'Skyshatter Tunic',20,13329),(31019,'Skyshatter Leggings',7,13329),(31020,'Skyshatter Legguards',7,13329),(31021,'Skyshatter Pants',7,13329),(31022,'Skyshatter Shoulderpads',3,13329),(31023,'Skyshatter Mantle',3,13329),(31024,'Skyshatter Pauldrons',3,13329),(31026,'Slayer\'s Handguards',10,13329),(31027,'Slayer\'s Helm',1,13329),(31028,'Slayer\'s Chestguard',5,13329),(31029,'Slayer\'s Legguards',7,13329),(31030,'Slayer\'s Shoulderpads',3,13329),(31032,'Thunderheart Gloves',10,13329),(31034,'Thunderheart Gauntlets',10,13329),(31035,'Thunderheart Handguards',10,13329),(31037,'Thunderheart Helmet',1,13329),(31039,'Thunderheart Cover',1,13329),(31040,'Thunderheart Headguard',1,13329),(31041,'Thunderheart Tunic',20,13329),(31042,'Thunderheart Chestguard',20,13329),(31043,'Thunderheart Vest',20,13329),(31044,'Thunderheart Leggings',7,13329),(31045,'Thunderheart Legguards',7,13329),(31046,'Thunderheart Pants',7,13329),(31047,'Thunderheart Spaulders',3,13329),(31048,'Thunderheart Pauldrons',3,13329),(31049,'Thunderheart Shoulderpads',3,13329),(31050,'Gloves of the Malefic',10,13329),(31051,'Hood of the Malefic',1,13329),(31052,'Robe of the Malefic',20,13329),(31053,'Leggings of the Malefic',7,13329),(31054,'Mantle of the Malefic',3,13329),(31055,'Gloves of the Tempest',10,13329),(31056,'Cowl of the Tempest',1,13329),(31057,'Robes of the Tempest',20,13329),(31058,'Leggings of the Tempest',7,13329),(31059,'Mantle of the Tempest',3,13329),(31060,'Gloves of Absolution',10,13329),(31061,'Handguards of Absolution',10,13329),(31063,'Cowl of Absolution',1,13329),(31064,'Hood of Absolution',1,13329),(31065,'Shroud of Absolution',20,13329),(31066,'Vestments of Absolution',20,13329),(31067,'Leggings of Absolution',7,13329),(31068,'Breeches of Absolution',7,13329),(31069,'Mantle of Absolution',3,13329),(31070,'Shoulderpads of Absolution',3,13329),(31338,'Charlotte\'s Ivy',2,13329),(31339,'Lola\'s Eve',11,13329),(31375,'Gladiator\'s Kodohide Gloves',10,13329),(31376,'Gladiator\'s Kodohide Helm',1,13329),(31377,'Gladiator\'s Kodohide Legguards',7,13329),(31378,'Gladiator\'s Kodohide Spaulders',3,13329),(31379,'Gladiator\'s Kodohide Tunic',5,13329),(31396,'Gladiator\'s Ringmail Armor',5,13329),(31397,'Gladiator\'s Ringmail Gauntlets',10,13329),(31400,'Gladiator\'s Ringmail Helm',1,13329),(31406,'Gladiator\'s Ringmail Leggings',7,13329),(31407,'Gladiator\'s Ringmail Spaulders',3,13329),(31409,'Gladiator\'s Mooncloth Gloves',10,13329),(31410,'Gladiator\'s Mooncloth Hood',1,13329),(31411,'Gladiator\'s Mooncloth Leggings',7,13329),(31412,'Gladiator\'s Mooncloth Mantle',3,13329),(31413,'Gladiator\'s Mooncloth Robe',20,13329),(31584,'High Warlord\'s Kodohide Gloves',10,13329),(31585,'High Warlord\'s Kodohide Helm',1,13329),(31586,'High Warlord\'s Kodohide Legguards',7,13329),(31587,'High Warlord\'s Kodohide Spaulders',3,13329),(31588,'High Warlord\'s Kodohide Tunic',5,13329),(31589,'Grand Marshal\'s Kodohide Gloves',10,13329),(31590,'Grand Marshal\'s Kodohide Helm',1,13329),(31591,'Grand Marshal\'s Kodohide Legguards',7,13329),(31592,'Grand Marshal\'s Kodohide Spaulders',3,13329),(31593,'Grand Marshal\'s Kodohide Tunic',5,13329),(31613,'Gladiator\'s Ornamented Chestguard',5,13329),(31614,'Gladiator\'s Ornamented Gloves',10,13329),(31616,'Gladiator\'s Ornamented Headcover',1,13329),(31618,'Gladiator\'s Ornamented Legplates',7,13329),(31619,'Gladiator\'s Ornamented Spaulders',3,13329),(31620,'Grand Marshal\'s Mooncloth Mitts',10,13329),(31621,'High Warlord\'s Mooncloth Mitts',10,13329),(31622,'Grand Marshal\'s Mooncloth Cowl',1,13329),(31623,'Grand Marshal\'s Mooncloth Legguards',7,13329),(31624,'Grand Marshal\'s Mooncloth Shoulderpads',3,13329),(31625,'Grand Marshal\'s Mooncloth Vestments',20,13329),(31626,'High Warlord\'s Mooncloth Cowl',1,13329),(31627,'High Warlord\'s Mooncloth Legguards',7,13329),(31628,'High Warlord\'s Mooncloth Shoulderpads',3,13329),(31629,'High Warlord\'s Mooncloth Vestments',20,13329),(31630,'Grand Marshal\'s Ornamented Chestplate',5,13329),(31631,'Grand Marshal\'s Ornamented Gloves',10,13329),(31632,'Grand Marshal\'s Ornamented Headguard',1,13329),(31633,'Grand Marshal\'s Ornamented Leggings',7,13329),(31634,'Grand Marshal\'s Ornamented Spaulders',3,13329),(31635,'High Warlord\'s Ornamented Chestplate',5,13329),(31636,'High Warlord\'s Ornamented Gloves',10,13329),(31637,'High Warlord\'s Ornamented Headguard',1,13329),(31638,'High Warlord\'s Ornamented Leggings',7,13329),(31639,'High Warlord\'s Ornamented Spaulders',3,13329),(31640,'Grand Marshal\'s Ringmail Chestguard',5,13329),(31641,'Grand Marshal\'s Ringmail Gloves',10,13329),(31642,'Grand Marshal\'s Ringmail Headpiece',1,13329),(31643,'Grand Marshal\'s Ringmail Legguards',7,13329),(31644,'Grand Marshal\'s Ringmail Shoulders',3,13329),(31646,'High Warlord\'s Ringmail Chestguard',5,13329),(31647,'High Warlord\'s Ringmail Gloves',10,13329),(31648,'High Warlord\'s Ringmail Headpiece',1,13329),(31649,'High Warlord\'s Ringmail Legguards',7,13329),(31650,'High Warlord\'s Ringmail Shoulderpads',3,13329),(32837,'Warglaive of Azzinoth',21,13329),(32838,'Warglaive of Azzinoth',22,13329),(32945,'Fist of Molten Fury',22,13329),(32946,'Claw of Molten Fury',21,13329),(33173,'Ragesteel Shoulders',3,13329),(33862,'Brewfest Regalia',20,13329),(33863,'Brewfest Dress',20,13329),(33864,'Brown Brewfest Hat',1,13329),(33868,'Brewfest Boots',8,13329),(33966,'Brewfest Slippers',8,13329),(33967,'Green Brewfest Hat',1,13329),(33968,'Blue Brewfest Hat',1,13329),(33969,'Purple Brewfest Hat',1,13329),(34085,'Red Winter Clothes',20,13329),(34086,'Winter Boots',8,13329),(34087,'Green Winter Clothes',20,13329),(34431,'Lightbringer Bands',9,13329),(34432,'Lightbringer Bracers',9,13329),(34433,'Lightbringer Wristguards',9,13329),(34434,'Bracers of Absolution',9,13329),(34435,'Cuffs of Absolution',9,13329),(34436,'Bracers of the Malefic',9,13329),(34437,'Skyshatter Bands',9,13329),(34438,'Skyshatter Bracers',9,13329),(34439,'Skyshatter Wristguards',9,13329),(34441,'Onslaught Bracers',9,13329),(34442,'Onslaught Wristguards',9,13329),(34443,'Gronnstalker\'s Bracers',9,13329),(34444,'Thunderheart Wristguards',9,13329),(34445,'Thunderheart Bracers',9,13329),(34446,'Thunderheart Bands',9,13329),(34447,'Bracers of the Tempest',9,13329),(34448,'Slayer\'s Bracers',9,13329),(34485,'Lightbringer Girdle',6,13329),(34487,'Lightbringer Belt',6,13329),(34488,'Lightbringer Waistguard',6,13329),(34527,'Belt of Absolution',6,13329),(34528,'Cord of Absolution',6,13329),(34541,'Belt of the Malefic',6,13329),(34542,'Skyshatter Cord',6,13329),(34543,'Skyshatter Belt',6,13329),(34545,'Skyshatter Girdle',6,13329),(34546,'Onslaught Belt',6,13329),(34547,'Onslaught Waistguard',6,13329),(34549,'Gronnstalker\'s Belt',6,13329),(34554,'Thunderheart Belt',6,13329),(34555,'Thunderheart Cord',6,13329),(34556,'Thunderheart Waistguard',6,13329),(34557,'Belt of the Tempest',6,13329),(34558,'Slayer\'s Belt',6,13329),(34559,'Lightbringer Treads',8,13329),(34560,'Lightbringer Stompers',8,13329),(34561,'Lightbringer Boots',8,13329),(34562,'Boots of Absolution',8,13329),(34563,'Treads of Absolution',8,13329),(34564,'Boots of the Malefic',8,13329),(34565,'Skyshatter Boots',8,13329),(34566,'Skyshatter Treads',8,13329),(34567,'Skyshatter Greaves',8,13329),(34568,'Onslaught Boots',8,13329),(34569,'Onslaught Treads',8,13329),(34570,'Gronnstalker\'s Boots',8,13329),(34571,'Thunderheart Boots',8,13329),(34572,'Thunderheart Footwraps',8,13329),(34573,'Thunderheart Treads',8,13329),(34574,'Boots of the Tempest',8,13329),(34575,'Slayer\'s Boots',8,13329),(34683,'Sandals of Summer',8,13329),(34685,'Vestment of Summer',20,13329),(34703,'Latro\'s Dancing Blade',13,13329),(35328,'Dreadweave Gloves',10,13329),(35329,'Dreadweave Hood',1,13329),(35330,'Dreadweave Leggings',7,13329),(35331,'Dreadweave Mantle',3,13329),(35332,'Dreadweave Robe',20,13329),(35333,'Mooncloth Cowl',1,13329),(35334,'Mooncloth Legguards',7,13329),(35335,'Mooncloth Mitts',10,13329),(35336,'Mooncloth Shoulderpads',3,13329),(35337,'Mooncloth Vestments',20,13329),(35338,'Satin Gloves',10,13329),(35339,'Satin Hood',1,13329),(35340,'Satin Leggings',7,13329),(35341,'Satin Mantle',3,13329),(35342,'Satin Robe',20,13329),(35343,'Evoker\'s Silk Amice',3,13329),(35344,'Evoker\'s Silk Cowl',1,13329),(35345,'Evoker\'s Silk Handguards',10,13329),(35346,'Evoker\'s Silk Raiment',20,13329),(35347,'Evoker\'s Silk Trousers',7,13329),(35356,'Dragonhide Gloves',10,13329),(35357,'Dragonhide Helm',1,13329),(35358,'Dragonhide Legguards',7,13329),(35359,'Dragonhide Spaulders',3,13329),(35360,'Dragonhide Robe',20,13329),(35361,'Kodohide Gloves',10,13329),(35362,'Kodohide Helm',1,13329),(35363,'Kodohide Legguards',7,13329),(35364,'Kodohide Spaulders',3,13329),(35365,'Kodohide Robe',20,13329),(35366,'Opportunist\'s Leather Gloves',10,13329),(35367,'Opportunist\'s Leather Helm',1,13329),(35368,'Opportunist\'s Leather Legguards',7,13329),(35369,'Opportunist\'s Leather Spaulders',3,13329),(35370,'Opportunist\'s Leather Tunic',5,13329),(35371,'Wyrmhide Gloves',10,13329),(35372,'Wyrmhide Helm',1,13329),(35373,'Wyrmhide Legguards',7,13329),(35374,'Wyrmhide Spaulders',3,13329),(35375,'Wyrmhide Robe',20,13329),(35376,'Stalker\'s Chain Armor',20,13329),(35377,'Stalker\'s Chain Gauntlets',10,13329),(35378,'Stalker\'s Chain Helm',1,13329),(35379,'Stalker\'s Chain Leggings',7,13329),(35380,'Stalker\'s Chain Spaulders',3,13329),(35381,'Seer\'s Linked Armor',20,13329),(35382,'Seer\'s Linked Gauntlets',10,13329),(35383,'Seer\'s Linked Helm',1,13329),(35384,'Seer\'s Linked Leggings',7,13329),(35385,'Seer\'s Linked Spaulders',3,13329),(35386,'Seer\'s Mail Armor',20,13329),(35387,'Seer\'s Mail Gauntlets',10,13329),(35388,'Seer\'s Mail Helm',1,13329),(35389,'Seer\'s Mail Leggings',7,13329),(35390,'Seer\'s Mail Spaulders',3,13329),(35391,'Seer\'s Ringmail Chestguard',20,13329),(35392,'Seer\'s Ringmail Gloves',10,13329),(35393,'Seer\'s Ringmail Headpiece',1,13329),(35394,'Seer\'s Ringmail Legguards',7,13329),(35395,'Seer\'s Ringmail Shoulderpads',3,13329),(35402,'Crusader\'s Ornamented Chestplate',5,13329),(35403,'Crusader\'s Ornamented Gloves',10,13329),(35404,'Crusader\'s Ornamented Headguard',1,13329),(35405,'Crusader\'s Ornamented Leggings',7,13329),(35406,'Crusader\'s Ornamented Spaulders',3,13329),(35407,'Savage Plate Chestpiece',5,13329),(35408,'Savage Plate Gauntlets',10,13329),(35409,'Savage Plate Helm',1,13329),(35410,'Savage Plate Legguards',7,13329),(35411,'Savage Plate Shoulders',3,13329),(35412,'Crusader\'s Scaled Chestpiece',5,13329),(35413,'Crusader\'s Scaled Gauntlets',10,13329),(35414,'Crusader\'s Scaled Helm',1,13329),(35415,'Crusader\'s Scaled Legguards',7,13329),(35416,'Crusader\'s Scaled Shoulders',3,13329),(37758,'Raine\'s Choker of Combustion',2,13329),(37821,'Raine\'s Signet of Blasting',11,13329),(38400,'Arctic Chestpiece',5,13329),(38401,'Arctic Leggings',7,13329),(38402,'Arctic Shoulderpads',3,13329),(38403,'Arctic Gloves',10,13329),(38404,'Arctic Boots',8,13329),(38405,'Arctic Belt',6,13329),(38406,'Iceborne Belt',6,13329),(38407,'Iceborne Boots',8,13329),(38408,'Iceborne Chestguard',5,13329),(38409,'Iceborne Gloves',10,13329),(38410,'Iceborne Leggings',7,13329),(38411,'Iceborne Shoulderpads',3,13329),(38412,'Frostscale Belt',6,13329),(38413,'Frostscale Boots',8,13329),(38414,'Frostscale Chestguard',5,13329),(38415,'Frostscale Gloves',10,13329),(38416,'Frostscale Leggings',7,13329),(38417,'Nerubian Shoulders',3,13329),(38418,'Nerubian Belt',6,13329),(38419,'Nerubian Boots',8,13329),(38420,'Nerubian Chestguard',5,13329),(38421,'Nerubian Gloves',10,13329),(38422,'Nerubian Legguards',7,13329),(38424,'Frostscale Shoulders',3,13329),(38433,'Arctic Wristguards',9,13329),(38434,'Iceborne Wristguards',9,13329),(38435,'Nerubian Bracers',9,13329),(38436,'Frostscale Bracers',9,13329),(38437,'Arctic Helm',1,13329),(38438,'Iceborne Helm',1,13329),(38439,'Nerubian Helm',1,13329),(38440,'Frostscale Helm',1,13329),(40440,'Brutal Gladiator\'s Dreadplate Chestpiece',5,13329),(40441,'Brutal Gladiator\'s Dreadplate Gauntlets',10,13329),(40442,'Brutal Gladiator\'s Dreadplate Helm',1,13329),(40443,'Brutal Gladiator\'s Dreadplate Legguards',7,13329),(40444,'Brutal Gladiator\'s Dreadplate Shoulders',3,13329),(41347,'Savage Saronite Legplates',7,13329),(41348,'Savage Saronite Walkers',8,13329),(41349,'Savage Saronite Gauntlets',10,13329),(41350,'Savage Saronite Skullshield',1,13329),(41351,'Savage Saronite Pauldrons',3,13329),(41352,'Savage Saronite Waistguard',6,13329),(41353,'Savage Saronite Hauberk',5,13329),(41354,'Savage Saronite Bracers',9,13329),(41512,'Frostwoven Wristwraps',9,13329),(41513,'Frostwoven Shoulders',3,13329),(41515,'Frostwoven Robe',20,13329),(41516,'Frostsavage Gloves',10,13329),(41519,'Frostwoven Leggings',7,13329),(41520,'Frostwoven Boots',8,13329),(41521,'Frostwoven Cowl',1,13329),(41522,'Frostwoven Belt',6,13329),(41543,'Duskweave Belt',6,13329),(41544,'Duskweave Boots',8,13329),(41545,'Duskweave Gloves',10,13329),(41546,'Duskweave Cowl',1,13329),(41548,'Duskweave Leggings',7,13329),(41549,'Duskweave Robe',20,13329),(41550,'Duskweave Shoulders',3,13329),(41551,'Duskweave Wristwraps',9,13329),(42708,'Gladiator\'s Satin Gloves',10,13329),(42709,'Gladiator\'s Satin Hood',1,13329),(42710,'Gladiator\'s Satin Leggings',7,13329),(42711,'Gladiator\'s Satin Mantle',3,13329),(42712,'Gladiator\'s Satin Robe',20,13329),(42723,'Ornate Saronite Bracers',9,13329),(42724,'Ornate Saronite Gauntlets',10,13329),(42725,'Ornate Saronite Hauberk',5,13329),(42726,'Ornate Saronite Legplates',7,13329),(42727,'Ornate Saronite Pauldrons',3,13329),(42728,'Ornate Saronite Skullshield',1,13329),(42729,'Ornate Saronite Waistguard',6,13329),(42730,'Ornate Saronite Walkers',8,13329),(43068,'Blessed Spaulders of Undead Slaying',3,13329),(43069,'Blessed Breastplate of Undead Slaying',5,13329),(43070,'Blessed Gauntlets of Undead Slaying',10,13329),(43071,'Blessed Legplates of Undead Slaying',7,13329),(43072,'Blessed Robe of Undead Cleansing',20,13329),(43073,'Blessed Gloves of Undead Cleansing',10,13329),(43074,'Blessed Mantle of Undead Cleansing',3,13329),(43075,'Blessed Trousers of Undead Cleansing',7,13329),(43076,'Blessed Tunic of Undead Slaying',5,13329),(43077,'Blessed Shoulderpads of Undead Slaying',3,13329),(43078,'Blessed Grips of Undead Slaying',10,13329),(43079,'Blessed Leggings of Undead Slaying',7,13329),(43080,'Blessed Hauberk of Undead Slaying',5,13329),(43081,'Blessed Pauldrons of Undead Slaying',3,13329),(43082,'Blessed Handguards of Undead Slaying',10,13329),(43083,'Blessed Greaves of Undead Slaying',7,13329),(43260,'Eviscerator\'s Facemask',1,13329),(43261,'Overcast Headguard',1,13329),(43262,'Overcast Spaulders',3,13329),(43263,'Overcast Chestguard',5,13329),(43264,'Overcast Bracers',9,13329),(43265,'Overcast Handwraps',10,13329),(43266,'Overcast Belt',6,13329),(43271,'Overcast Leggings',7,13329),(43273,'Overcast Boots',8,13329),(43433,'Eviscerator\'s Shoulderpads',3,13329),(43434,'Eviscerator\'s Chestguard',5,13329),(43435,'Eviscerator\'s Bindings',9,13329),(43436,'Eviscerator\'s Gauntlets',10,13329),(43437,'Eviscerator\'s Waistguard',6,13329),(43438,'Eviscerator\'s Legguards',7,13329),(43439,'Eviscerator\'s Treads',8,13329),(43442,'Swiftarrow Belt',6,13329),(43443,'Swiftarrow Boots',8,13329),(43444,'Swiftarrow Bracers',9,13329),(43445,'Swiftarrow Hauberk',5,13329),(43446,'Swiftarrow Gauntlets',10,13329),(43447,'Swiftarrow Helm',1,13329),(43448,'Swiftarrow Leggings',7,13329),(43449,'Swiftarrow Shoulderguards',3,13329),(43450,'Stormhide Belt',6,13329),(43451,'Stormhide Stompers',8,13329),(43452,'Stormhide Wristguards',9,13329),(43453,'Stormhide Hauberk',5,13329),(43454,'Stormhide Grips',10,13329),(43455,'Stormhide Crown',1,13329),(43456,'Stormhide Legguards',7,13329),(43457,'Stormhide Shoulders',3,13329),(43727,'Bonescythe Breastplate',5,13329),(43728,'Bonescythe Gauntlets',10,13329),(43729,'Bonescythe Helmet',1,13329),(43730,'Bonescythe Legplates',7,13329),(43731,'Bonescythe Pauldrons',3,13329),(43732,'Circlet of Faith',1,13329),(43733,'Crown of Faith',1,13329),(43734,'Cryptstalker Handguards',10,13329),(43735,'Cryptstalker Headpiece',1,13329),(43736,'Cryptstalker Legguards',7,13329),(43737,'Cryptstalker Spaulders',3,13329),(43738,'Cryptstalker Tunic',5,13329),(43739,'Dreadnaught Battleplate',5,13329),(43740,'Dreadnaught Breastplate',5,13329),(43741,'Dreadnaught Gauntlets',10,13329),(43742,'Dreadnaught Greathelm',1,13329),(43743,'Dreadnaught Handguards',10,13329),(43744,'Dreadnaught Helmet',1,13329),(43745,'Dreadnaught Legguards',7,13329),(43746,'Dreadnaught Legplates',7,13329),(43747,'Dreadnaught Pauldrons',3,13329),(43748,'Dreadnaught Shoulderplates',3,13329),(43749,'Dreamwalker Cover',1,13329),(43750,'Dreamwalker Gloves',10,13329),(43751,'Dreamwalker Handgrips',10,13329),(43752,'Dreamwalker Handguards',10,13329),(43753,'Dreamwalker Headguard',1,13329),(43754,'Dreamwalker Headpiece',1,13329),(43755,'Dreamwalker Leggings',7,13329),(43756,'Dreamwalker Legguards',7,13329),(43757,'Dreamwalker Mantle',3,13329),(43758,'Dreamwalker Shoulderpads',3,13329),(43759,'Dreamwalker Spaulders',3,13329),(43760,'Dreamwalker Trousers',7,13329),(43761,'Dreamwalker Vestments',20,13329),(43762,'Earthshatter Chestguard',5,13329),(43763,'Earthshatter Faceguard',1,13329),(43764,'Earthshatter Gloves',10,13329),(43765,'Earthshatter Grips',10,13329),(43766,'Earthshatter Handguards',10,13329),(43767,'Earthshatter Hauberk',5,13329),(43768,'Earthshatter Headpiece',1,13329),(43769,'Earthshatter Helm',1,13329),(43770,'Earthshatter Kilt',7,13329),(43771,'Earthshatter Legguards',7,13329),(43772,'Earthshatter Shoulderguards',3,13329),(43773,'Earthshatter Shoulderpads',3,13329),(43774,'Earthshatter Spaulders',3,13329),(43775,'Earthshatter Tunic',5,13329),(43776,'Earthshatter War-Kilt',7,13329),(43777,'Frostfire Circlet',1,13329),(43778,'Frostfire Gloves',10,13329),(43779,'Frostfire Leggings',7,13329),(43780,'Frostfire Robe',20,13329),(43781,'Frostfire Shoulderpads',3,13329),(43782,'Gloves of Faith',10,13329),(43783,'Handwraps of Faith',10,13329),(43784,'Leggings of Faith',7,13329),(43785,'Mantle of Faith',3,13329),(43786,'Pants of Faith',7,13329),(43787,'Plagueheart Circlet',1,13329),(43788,'Plagueheart Gloves',10,13329),(43789,'Plagueheart Leggings',7,13329),(43790,'Plagueheart Robe',20,13329),(43791,'Plagueheart Shoulderpads',3,13329),(43792,'Raiments of Faith',20,13329),(43793,'Redemption Breastplate',5,13329),(43794,'Redemption Chestpiece',5,13329),(43795,'Redemption Faceguard',1,13329),(43796,'Redemption Gauntlets',10,13329),(43797,'Redemption Gloves',10,13329),(43798,'Redemption Greaves',7,13329),(43799,'Redemption Handguards',10,13329),(43800,'Redemption Headpiece',1,13329),(43801,'Redemption Helm',1,13329),(43802,'Redemption Legguards',7,13329),(43803,'Redemption Legplates',7,13329),(43804,'Redemption Shoulderguards',3,13329),(43805,'Redemption Shoulderplates',3,13329),(43806,'Redemption Spaulders',3,13329),(43807,'Redemption Tunic',5,13329),(43808,'Robe of Faith',20,13329),(43809,'Scourgeborne Battleplate',5,13329),(43810,'Shoulderpads of Faith',3,13329),(43811,'Scourgeborne Chestguard',5,13329),(43812,'Scourgeborne Faceguard',1,13329),(43813,'Scourgeborne Gauntlets',10,13329),(43814,'Scourgeborne Handguards',10,13329),(43815,'Scourgeborne Helmet',1,13329),(43816,'Scourgeborne Legguards',7,13329),(43817,'Scourgeborne Legplates',7,13329),(43818,'Scourgeborne Pauldrons',3,13329),(43819,'Scourgeborne Shoulderplates',3,13329),(43820,'Dreamwalker Robe',20,13329),(43822,'Dreamwalker Raiments',20,13329),(43969,'Frostsavage Belt',6,13329),(43970,'Frostsavage Boots',8,13329),(43971,'Frostsavage Cowl',1,13329),(43972,'Frostsavage Robe',20,13329),(43973,'Frostsavage Shoulders',3,13329),(43974,'Frostsavage Bracers',9,13329),(43975,'Frostsavage Leggings',7,13329),(44211,'Frostwoven Gloves',10,13329),(45350,'Nightsong Cover',1,13329),(46213,'Aegis Battleplate',5,13329),(46214,'Aegis Breastplate',5,13329),(46215,'Aegis Faceguard',1,13329),(46216,'Aegis Gauntlets',10,13329),(46217,'Aegis Gloves',10,13329),(46218,'Aegis Greaves',7,13329),(46219,'Aegis Handguards',10,13329),(46220,'Aegis Headpiece',1,13329),(46221,'Aegis Helm',1,13329),(46222,'Aegis Legguards',7,13329),(46224,'Aegis Legplates',7,13329),(46225,'Aegis Shoulderguards',3,13329),(46226,'Aegis Shoulderplates',3,13329),(46227,'Aegis Spaulders',3,13329),(46228,'Aegis Tunic',5,13329),(46230,'Circlet of Sanctification',1,13329),(46231,'Cowl of Sanctification',1,13329),(46232,'Darkruned Battleplate',5,13329),(46233,'Darkruned Chestguard',5,13329),(46234,'Darkruned Faceguard',1,13329),(46235,'Darkruned Gauntlets',10,13329),(46236,'Darkruned Handguards',10,13329),(46237,'Darkruned Helmet',1,13329),(46238,'Darkruned Legguards',7,13329),(46239,'Darkruned Legplates',7,13329),(46240,'Darkruned Pauldrons',3,13329),(46241,'Darkruned Shoulderplates',3,13329),(46242,'Deathbringer Gloves',10,13329),(46243,'Deathbringer Hood',1,13329),(46244,'Deathbringer Leggings',7,13329),(46245,'Deathbringer Robe',20,13329),(46246,'Deathbringer Shoulderpads',3,13329),(46247,'Gloves of Sanctification',10,13329),(46248,'Handwraps of Sanctification',10,13329),(46249,'Kirin Tor Gauntlets',10,13329),(46250,'Kirin Tor Hood',1,13329),(46251,'Kirin Tor Leggings',7,13329),(46252,'Kirin Tor Shoulderpads',3,13329),(46253,'Kirin Tor Tunic',20,13329),(46254,'Leggings of Sanctification',7,13329),(46255,'Mantle of Sanctification',3,13329),(46256,'Pants of Sanctification',7,13329),(46257,'Raiments of Sanctification',20,13329),(46258,'Robe of Sanctification',20,13329),(46259,'Shoulderpads of Sanctification',3,13329),(46260,'Nightsong Handgrips',10,13329),(46261,'Nightsong Handguards',10,13329),(46262,'Nightsong Headguard',1,13329),(46263,'Nightsong Headpiece',1,13329),(46264,'Nightsong Leggings',7,13329),(46265,'Nightsong Legguards',7,13329),(46266,'Nightsong Mantle',3,13329),(46267,'Nightsong Raiments',20,13329),(46268,'Nightsong Robe',20,13329),(46269,'Nightsong Shoulderpads',3,13329),(46270,'Nightsong Spaulders',3,13329),(46271,'Nightsong Trousers',7,13329),(46272,'Nightsong Vestments',20,13329),(46273,'Scourgestalker Handguards',10,13329),(46274,'Scourgestalker Headpiece',1,13329),(46275,'Scourgestalker Legguards',7,13329),(46276,'Scourgestalker Spaulders',3,13329),(46277,'Scourgestalker Tunic',5,13329),(46278,'Siegebreaker Battleplate',5,13329),(46279,'Siegebreaker Breastplate',5,13329),(46280,'Siegebreaker Gauntlets',10,13329),(46281,'Siegebreaker Greathelm',1,13329),(46282,'Siegebreaker Helmet',1,13329),(46283,'Siegebreaker Handguards',10,13329),(46284,'Siegebreaker Legguards',7,13329),(46285,'Siegebreaker Legplates',7,13329),(46286,'Siegebreaker Pauldrons',3,13329),(46287,'Siegebreaker Shoulderplates',3,13329),(46288,'Terrorblade Breastplate',5,13329),(46289,'Terrorblade Gauntlets',10,13329),(46290,'Terrorblade Helmet',1,13329),(46291,'Terrorblade Legplates',7,13329),(46292,'Terrorblade Pauldrons',3,13329),(46293,'Worldbreaker Chestguard',20,13329),(46294,'Worldbreaker Faceguard',1,13329),(46295,'Worldbreaker Gloves',10,13329),(46296,'Worldbreaker Grips',10,13329),(46297,'Worldbreaker Handguards',10,13329),(46298,'Worldbreaker Hauberk',20,13329),(46299,'Worldbreaker Headpiece',1,13329),(46300,'Worldbreaker Helm',1,13329),(46301,'Worldbreaker Kilt',7,13329),(46302,'Worldbreaker Legguards',7,13329),(46303,'Worldbreaker Shoulderguards',3,13329),(46304,'Worldbreaker Shoulderpads',3,13329),(46305,'Worldbreaker Spaulders',3,13329),(46306,'Worldbreaker Tunic',20,13329),(46307,'Worldbreaker War-Kilt',7,13329),(46309,'Nightsong Gloves',10,13329),(47163,'[UNUSED]Cool Shades',1,13329),(47164,'[UNUSED]Cool Shades',1,13329),(47166,'[UNUSED]Dress',20,13329),(48725,'Khadgar\'s Gauntlets ',10,13329),(48726,'Khadgar\'s Hood ',1,13329),(48727,'Khadgar\'s Leggings ',7,13329),(48728,'Khadgar\'s Robe ',20,13329),(48729,'Khadgar\'s Shoulderpads ',3,13329),(48730,'Sunstrider\'s Gauntlets ',10,13329),(48731,'Sunstrider\'s Hood ',1,13329),(48732,'Sunstrider\'s Leggings ',7,13329),(48733,'Sunstrider\'s Robe ',20,13329),(48734,'Sunstrider\'s Shoulderpads ',3,13329),(48735,'Gul\'dan\'s Gloves ',10,13329),(48736,'Gul\'dan\'s Hood ',1,13329),(48737,'Gul\'dan\'s Leggings ',7,13329),(48738,'Gul\'dan\'s Robe ',20,13329),(48739,'Gul\'dan\'s Shoulderpads ',3,13329),(48740,'Kel\'Thuzad\'s Gloves ',10,13329),(48741,'Kel\'Thuzad\'s Hood ',1,13329),(48742,'Kel\'Thuzad\'s Leggings ',7,13329),(48743,'Kel\'Thuzad\'s Robe ',20,13329),(48744,'Kel\'Thuzad\'s Shoulderpads ',3,13329),(48745,'Velen\'s Cowl ',1,13329),(48746,'Velen\'s Gloves ',10,13329),(48747,'Velen\'s Leggings ',7,13329),(48748,'Velen\'s Robe ',20,13329),(48749,'Velen\'s Shoulderpads ',3,13329),(48750,'Zabra\'s Cowl ',1,13329),(48751,'Zabra\'s Gloves ',10,13329),(48752,'Zabra\'s Leggings ',7,13329),(48753,'Zabra\'s Robe ',20,13329),(48754,'Zabra\'s Shoulderpads ',3,13329),(48755,'Velen\'s Circlet ',1,13329),(48756,'Velen\'s Handwraps ',10,13329),(48757,'Velen\'s Mantle ',3,13329),(48758,'Velen\'s Pants ',7,13329),(48759,'Velen\'s Raiments ',20,13329),(48760,'Zabra\'s Circlet ',1,13329),(48761,'Zabra\'s Handwraps ',10,13329),(48762,'Zabra\'s Mantle ',3,13329),(48763,'Zabra\'s Pants ',7,13329),(48764,'Zabra\'s Raiments ',20,13329),(48769,'Runetotem\'s Handguards ',10,13329),(48770,'Runetotem\'s Headpiece ',1,13329),(48771,'Runetotem\'s Leggings ',7,13329),(48772,'Runetotem\'s Robe ',20,13329),(48773,'Runetotem\'s Spaulders ',3,13329),(48774,'Malfurion\'s Handguards ',10,13329),(48775,'Malfurion\'s Headpiece ',1,13329),(48776,'Malfurion\'s Leggings ',7,13329),(48777,'Malfurion\'s Robe ',20,13329),(48778,'Malfurion\'s Spaulders ',3,13329),(48781,'Runetotem\'s Cover ',1,13329),(48782,'Runetotem\'s Gloves ',10,13329),(48783,'Runetotem\'s Mantle ',3,13329),(48784,'Runetotem\'s Trousers ',7,13329),(48785,'Runetotem\'s Vestments ',20,13329),(48786,'Malfurion\'s Cover ',1,13329),(48787,'Malfurion\'s Gloves ',10,13329),(48788,'Malfurion\'s Mantle ',3,13329),(48789,'Malfurion\'s Trousers ',7,13329),(48790,'Malfurion\'s Vestments ',20,13329),(48794,'Runetotem\'s Handgrips ',10,13329),(48795,'Runetotem\'s Headguard ',1,13329),(48796,'Runetotem\'s Legguards ',7,13329),(48797,'Runetotem\'s Raiments ',20,13329),(48798,'Runetotem\'s Shoulderpads ',3,13329),(48799,'Malfurion\'s Handgrips ',10,13329),(48800,'Malfurion\'s Headguard ',1,13329),(48801,'Malfurion\'s Legguards ',7,13329),(48802,'Malfurion\'s Raiments ',20,13329),(48803,'Malfurion\'s Shoulderpads ',3,13329),(48804,'Garona\'s Breastplate ',5,13329),(48805,'Garona\'s Gauntlets ',10,13329),(48806,'Garona\'s Helmet ',1,13329),(48807,'Garona\'s Legplates ',7,13329),(48808,'Garona\'s Pauldrons ',3,13329),(48809,'VanCleef\'s Breastplate ',5,13329),(48810,'VanCleef\'s Gauntlets ',10,13329),(48811,'VanCleef\'s Helmet ',1,13329),(48812,'VanCleef\'s Legplates ',7,13329),(48813,'VanCleef\'s Pauldrons ',3,13329),(48814,'Windrunner\'s Handguards ',10,13329),(48815,'Windrunner\'s Headpiece ',1,13329),(48816,'Windrunner\'s Legguards ',7,13329),(48817,'Windrunner\'s Spaulders ',3,13329),(48818,'Windrunner\'s Tunic ',5,13329),(48819,'Windrunner\'s Handguards ',10,13329),(48820,'Windrunner\'s Headpiece ',1,13329),(48821,'Windrunner\'s Legguards ',7,13329),(48822,'Windrunner\'s Spaulders ',3,13329),(48823,'Windrunner\'s Tunic ',5,13329),(48824,'Nobundo\'s Handguards ',10,13329),(48825,'Nobundo\'s Headpiece ',1,13329),(48826,'Nobundo\'s Legguards ',7,13329),(48827,'Nobundo\'s Spaulders ',3,13329),(48828,'Nobundo\'s Tunic ',5,13329),(48829,'Thrall\'s Handguards ',10,13329),(48830,'Thrall\'s Headpiece ',1,13329),(48831,'Thrall\'s Legguards ',7,13329),(48832,'Thrall\'s Spaulders ',3,13329),(48833,'Thrall\'s Tunic ',5,13329),(48836,'Nobundo\'s Gloves ',10,13329),(48837,'Nobundo\'s Hauberk ',5,13329),(48838,'Nobundo\'s Helm ',1,13329),(48839,'Nobundo\'s Kilt ',7,13329),(48840,'Nobundo\'s Shoulderpads ',3,13329),(48841,'Thrall\'s Gloves ',10,13329),(48842,'Thrall\'s Hauberk ',5,13329),(48843,'Thrall\'s Helm ',1,13329),(48844,'Thrall\'s Kilt ',7,13329),(48845,'Thrall\'s Shoulderpads ',3,13329),(48846,'Nobundo\'s Chestguard ',5,13329),(48847,'Nobundo\'s Faceguard ',1,13329),(48848,'Nobundo\'s Grips ',10,13329),(48849,'Nobundo\'s Shoulderguards ',3,13329),(48850,'Nobundo\'s War-Kilt ',7,13329),(48851,'Thrall\'s Chestguard ',5,13329),(48852,'Thrall\'s Faceguard ',1,13329),(48853,'Thrall\'s Grips ',10,13329),(48854,'Thrall\'s Shoulderguards ',3,13329),(48855,'Thrall\'s War-Kilt ',7,13329),(48860,'Hellscream\'s Battleplate ',5,13329),(48861,'Hellscream\'s Gauntlets ',10,13329),(48862,'Hellscream\'s Helmet ',1,13329),(48863,'Hellscream\'s Legplates ',7,13329),(48864,'Hellscream\'s Shoulderplates ',3,13329),(48865,'Wrynn\'s Battleplate ',5,13329),(48866,'Wrynn\'s Gauntlets ',10,13329),(48867,'Wrynn\'s Helmet ',1,13329),(48868,'Wrynn\'s Legplates ',7,13329),(48869,'Wrynn\'s Shoulderplates ',3,13329),(48870,'Hellscream\'s Breastplate ',5,13329),(48871,'Hellscream\'s Greathelm ',1,13329),(48872,'Hellscream\'s Handguards ',10,13329),(48873,'Hellscream\'s Legguards ',7,13329),(48874,'Hellscream\'s Pauldrons ',3,13329),(48875,'Wrynn\'s Breastplate ',5,13329),(48876,'Wrynn\'s Greathelm ',1,13329),(48877,'Wrynn\'s Handguards ',10,13329),(48878,'Wrynn\'s Legguards ',7,13329),(48879,'Wrynn\'s Pauldrons ',3,13329),(48880,'Koltira\'s Battleplate ',5,13329),(48881,'Koltira\'s Gauntlets ',10,13329),(48882,'Koltira\'s Helmet ',1,13329),(48883,'Koltira\'s Legplates ',7,13329),(48884,'Koltira\'s Shoulderplates ',3,13329),(48885,'Thassarian\'s Battleplate ',5,13329),(48886,'Thassarian\'s Gauntlets ',10,13329),(48887,'Thassarian\'s Helmet ',1,13329),(48888,'Thassarian\'s Legplates ',7,13329),(48889,'Thassarian\'s Shoulderplates ',3,13329),(48890,'Koltira\'s Chestguard ',5,13329),(48891,'Koltira\'s Faceguard ',1,13329),(48892,'Koltira\'s Handguards ',10,13329),(48893,'Koltira\'s Legguards ',7,13329),(48894,'Koltira\'s Pauldrons ',3,13329),(48895,'Thassarian\'s Chestguard ',5,13329),(48896,'Thassarian\'s Faceguard ',1,13329),(48897,'Thassarian\'s Handguards ',10,13329),(48898,'Thassarian\'s Legguards ',7,13329),(48899,'Thassarian\'s Pauldrons ',3,13329),(48900,'Turalyon\'s Tunic ',5,13329),(48901,'Turalyon\'s Spaulders ',3,13329),(48902,'Turalyon\'s Headpiece ',1,13329),(48903,'Turalyon\'s Greaves ',7,13329),(48904,'Turalyon\'s Gloves ',10,13329),(48905,'Liadrin\'s Tunic ',5,13329),(48906,'Liadrin\'s Spaulders ',3,13329),(48907,'Liadrin\'s Headpiece ',1,13329),(48908,'Liadrin\'s Greaves ',7,13329),(48909,'Liadrin\'s Gloves ',10,13329),(48910,'Liadrin\'s Battleplate ',5,13329),(48911,'Liadrin\'s Gauntlets ',10,13329),(48912,'Liadrin\'s Helm ',1,13329),(48913,'Liadrin\'s Legplates ',7,13329),(48914,'Liadrin\'s Shoulderplates ',3,13329),(48915,'Turalyon\'s Battleplate ',5,13329),(48916,'Turalyon\'s Gauntlets ',10,13329),(48917,'Turalyon\'s Helm ',1,13329),(48918,'Turalyon\'s Legplates ',7,13329),(48919,'Turalyon\'s Shoulderplates ',3,13329),(48922,'Liadrin\'s Breastplate ',5,13329),(48923,'Liadrin\'s Faceguard ',1,13329),(48924,'Liadrin\'s Handguards ',10,13329),(48925,'Liadrin\'s Legguards ',7,13329),(48926,'Liadrin\'s Shoulderguards ',3,13329),(48927,'Turalyon\'s Breastplate ',5,13329),(48928,'Turalyon\'s Faceguard ',1,13329),(48929,'Turalyon\'s Handguards ',10,13329),(48930,'Turalyon\'s Legguards ',7,13329),(48931,'Turalyon\'s Shoulderguards ',3,13329),(49310,'Purified Shard of the Scale',12,13329),(49463,'Purified Shard of the Flame',12,13329),(49464,'Shiny Shard of the Flame',12,13329),(49488,'Shiny Shard of the Scale',12,13329),(51682,'Scourgelord Shoulderplates',3,13329),(51683,'Scourgelord Legplates',7,13329),(51684,'Scourgelord Helmet',1,13329),(51685,'Scourgelord Gauntlets',10,13329),(51686,'Scourgelord Battleplate',5,13329),(51687,'Scourgelord Chestguard',5,13329),(51688,'Scourgelord Handguards',10,13329),(51689,'Scourgelord Faceguard',1,13329),(51690,'Scourgelord Legguards',7,13329),(51691,'Scourgelord Pauldrons',3,13329),(51692,'Lasherweave Pauldrons',3,13329),(51693,'Lasherweave Legplates',7,13329),(51694,'Lasherweave Helmet',1,13329),(51695,'Lasherweave Gauntlets',10,13329),(51696,'Lasherweave Robes',20,13329),(51697,'Lasherweave Raiment',20,13329),(51698,'Lasherweave Handgrips',10,13329),(51699,'Lasherweave Headguard',1,13329),(51700,'Lasherweave Legguards',7,13329),(51701,'Lasherweave Shoulderpads',3,13329),(51702,'Lasherweave Vestment',20,13329),(51703,'Lasherweave Gloves',10,13329),(51704,'Lasherweave Cover',1,13329),(51705,'Lasherweave Trousers',7,13329),(51706,'Lasherweave Mantle',3,13329),(51707,'Ahn\'Kahar Blood Hunter\'s Tunic',5,13329),(51708,'Ahn\'Kahar Blood Hunter\'s Spaulders',3,13329),(51709,'Ahn\'Kahar Blood Hunter\'s Legguards',7,13329),(51710,'Ahn\'Kahar Blood Hunter\'s Headpiece',1,13329),(51711,'Ahn\'Kahar Blood Hunter\'s Handguards',10,13329),(51712,'Bloodmage Shoulderpads',3,13329),(51713,'Bloodmage Robe',20,13329),(51714,'Bloodmage Leggings',7,13329),(51715,'Bloodmage Hood',1,13329),(51716,'Bloodmage Gloves',10,13329),(51717,'Lightsworn Battleplate',5,13329),(51718,'Lightsworn Gauntlets',10,13329),(51719,'Lightsworn Helmet',1,13329),(51720,'Lightsworn Legplates',7,13329),(51721,'Lightsworn Shoulderplates',3,13329),(51722,'Lightsworn Tunic',5,13329),(51723,'Lightsworn Gloves',10,13329),(51724,'Lightsworn Headpiece',1,13329),(51725,'Lightsworn Greaves',7,13329),(51726,'Lightsworn Spaulders',3,13329),(51727,'Lightsworn Chestguard',5,13329),(51728,'Lightsworn Handguards',10,13329),(51729,'Lightsworn Faceguard',1,13329),(51730,'Lightsworn Legguards',7,13329),(51731,'Lightsworn Shoulderguards',3,13329),(51732,'Crimson Acolyte Leggings',7,13329),(51733,'Crimson Acolyte Robe',20,13329),(51734,'Crimson Acolyte Shoulderpads',3,13329),(51735,'Crimson Acolyte Gloves',10,13329),(51736,'Crimson Acolyte Hood',1,13329),(51737,'Crimson Acolyte Cowl',1,13329),(51738,'Crimson Acolyte Handwraps',10,13329),(51739,'Crimson Acolyte Mantle',3,13329),(51740,'Crimson Acolyte Raiments',20,13329),(51741,'Crimson Acolyte Pants',7,13329),(51742,'Shadowblade Gauntlets',10,13329),(51743,'Shadowblade Breastplate',5,13329),(51744,'Shadowblade Legplates',7,13329),(51745,'Shadowblade Helmet',1,13329),(51746,'Shadowblade Pauldrons',3,13329),(51747,'Frost Witch\'s Tunic',5,13329),(51748,'Frost Witch\'s Handguards',10,13329),(51749,'Frost Witch\'s Headpiece',1,13329),(51750,'Frost Witch\'s Legguards',7,13329),(51751,'Frost Witch\'s Spaulders',3,13329),(51752,'Frost Witch\'s Chestguard',5,13329),(51753,'Frost Witch\'s Grips',10,13329),(51754,'Frost Witch\'s Faceguard',1,13329),(51755,'Frost Witch\'s War-Kilt',7,13329),(51756,'Frost Witch\'s Shoulderguards',3,13329),(51757,'Frost Witch\'s Hauberk',5,13329),(51758,'Frost Witch\'s Gloves',10,13329),(51759,'Frost Witch\'s Helm',1,13329),(51760,'Frost Witch\'s Kilt',7,13329),(51761,'Frost Witch\'s Shoulderpads',3,13329),(51762,'Dark Coven Shoulderpads',3,13329),(51763,'Dark Coven Robe',20,13329),(51764,'Dark Coven Leggings',7,13329),(51765,'Dark Coven Hood',1,13329),(51766,'Dark Coven Gloves',10,13329),(51767,'Ymirjar Lord\'s Shoulderplates',3,13329),(51768,'Ymirjar Lord\'s Legplates',7,13329),(51769,'Ymirjar Lord\'s Helmet',1,13329),(51770,'Ymirjar Lord\'s Gauntlets',10,13329),(51771,'Ymirjar Lord\'s Battleplate',5,13329),(51772,'Ymirjar Lord\'s Breastplate',5,13329),(51773,'Ymirjar Lord\'s Handguards',10,13329),(51774,'Ymirjar Lord\'s Greathelm',1,13329),(51775,'Ymirjar Lord\'s Legguards',7,13329),(51776,'Ymirjar Lord\'s Pauldrons',3,13329),(54471,'Deathsilk Belt',6,13329),(54472,'Deathsilk Leggings',7,13329),(54473,'Deathsilk Bracers',9,13329),(54474,'Deathsilk Shoulders',3,13329),(54475,'Deathsilk Robe',20,13329),(54476,'Deathsilk Cowl',1,13329),(54477,'Deathsilk Boots',8,13329),(54478,'Deathsilk Gloves',10,13329),(54479,'Spiritmend Shoulders',3,13329),(54480,'Spiritmend Bracers',9,13329),(54481,'Spiritmend Belt',6,13329),(54482,'Spiritmend Boots',8,13329),(54483,'Spiritmend Leggings',7,13329),(54484,'Spiritmend Gloves',10,13329),(54485,'Spiritmend Cowl',1,13329),(54486,'Spiritmend Robe',20,13329),(56481,'Tsunami Bracers',9,13329),(56482,'Tsunami Belt',6,13329),(56483,'Darkbrand Bracers',9,13329),(56484,'Darkbrand Gloves',10,13329),(56490,'Tsunami Gloves',10,13329),(56491,'Darkbrand Boots',8,13329),(56494,'Tsunami Boots',8,13329),(56495,'Darkbrand Shoulders',3,13329),(56498,'Tsunami Shoulders',3,13329),(56499,'Darkbrand Belt',6,13329),(56504,'Tsunami Chestguard',5,13329),(56505,'Darkbrand Helm',1,13329),(56508,'Tsunami Leggings',7,13329),(56509,'Darkbrand Chestguard',5,13329),(56512,'Tsunami Helm',1,13329),(56513,'Darkbrand Leggings',7,13329),(60243,'Firelord\'s Hood',1,13329),(60244,'Firelord\'s Robes',20,13329),(60245,'Firelord\'s Leggings',7,13329),(60246,'Firelord\'s Mantle',3,13329),(60247,'Firelord\'s Gloves',10,13329),(60248,'Shadowflame Handwraps',10,13329),(60249,'Shadowflame Hood',1,13329),(60250,'Shadowflame Leggings',7,13329),(60251,'Shadowflame Robes',20,13329),(60252,'Shadowflame Mantle',3,13329),(60253,'Mercurial Shoulderwraps',3,13329),(60254,'Mercurial Vestment',20,13329),(60255,'Mercurial Leggings',7,13329),(60256,'Mercurial Hood',1,13329),(60257,'Mercurial Gloves',10,13329),(60258,'Mercurial Cowl',1,13329),(60259,'Mercurial Robes',20,13329),(60261,'Mercurial Legwraps',7,13329),(60262,'Mercurial Mantle',3,13329),(60275,'Mercurial Handwraps',10,13329),(60276,'Stormrider\'s Robes',20,13329),(60277,'Stormrider\'s Helm',1,13329),(60278,'Stormrider\'s Legwraps',7,13329),(60279,'Stormrider\'s Mantle',3,13329),(60280,'Stormrider\'s Handwraps',10,13329),(60281,'Stormrider\'s Vestment',20,13329),(60282,'Stormrider\'s Cover',1,13329),(60283,'Stormrider\'s Leggings',7,13329),(60284,'Stormrider\'s Shoulderwraps',3,13329),(60285,'Stormrider\'s Gloves',10,13329),(60286,'Stormrider\'s Headpiece',1,13329),(60287,'Stormrider\'s Raiment',20,13329),(60288,'Stormrider\'s Legguards',7,13329),(60289,'Stormrider\'s Spaulders',3,13329),(60290,'Stormrider\'s Grips',10,13329),(60298,'Wind Dancer\'s Gloves',10,13329),(60299,'Wind Dancer\'s Helmet',1,13329),(60300,'Wind Dancer\'s Legguards',7,13329),(60301,'Wind Dancer\'s Tunic',5,13329),(60302,'Wind Dancer\'s Spaulders',3,13329),(60303,'Lightning-Charged Headguard',1,13329),(60304,'Lightning-Charged Tunic',5,13329),(60305,'Lightning-Charged Legguards',7,13329),(60306,'Lightning-Charged Spaulders',3,13329),(60307,'Lightning-Charged Gloves',10,13329),(60308,'Faceguard of the Raging Elements',1,13329),(60309,'Tunic of the Raging Elements',5,13329),(60310,'Legwraps of the Raging Elements',7,13329),(60311,'Mantle of the Raging Elements',3,13329),(60312,'Handwraps of the Raging Elements',10,13329),(60313,'Hauberk of the Raging Elements',5,13329),(60314,'Gloves of the Raging Elements',10,13329),(60315,'Headpiece of the Raging Elements',1,13329),(60316,'Kilt of the Raging Elements',7,13329),(60317,'Shoulderwraps of the Raging Elements',3,13329),(60318,'Cuirass of the Raging Elements',5,13329),(60319,'Grips of the Raging Elements',10,13329),(60320,'Helmet of the Raging Elements',1,13329),(60321,'Legguards of the Raging Elements',7,13329),(60322,'Spaulders of the Raging Elements',3,13329),(60323,'Earthen Battleplate',5,13329),(60324,'Earthen Legplates',7,13329),(60325,'Earthen Helmet',1,13329),(60326,'Earthen Gauntlets',10,13329),(60327,'Earthen Pauldrons',3,13329),(60328,'Earthen Faceguard',1,13329),(60329,'Earthen Chestguard',5,13329),(60330,'Earthen Legguards',7,13329),(60331,'Earthen Shoulderguards',3,13329),(60332,'Earthen Handguards',10,13329),(60339,'Magma Plated Battleplate',5,13329),(60340,'Magma Plated Gauntlets',10,13329),(60341,'Magma Plated Helmet',1,13329),(60342,'Magma Plated Legplates',7,13329),(60343,'Magma Plated Pauldrons',3,13329),(60344,'Reinforced Sapphirium Battleplate',5,13329),(60345,'Reinforced Sapphirium Gauntlets',10,13329),(60346,'Reinforced Sapphirium Helmet',1,13329),(60347,'Reinforced Sapphirium Legplates',7,13329),(60348,'Reinforced Sapphirium Pauldrons',3,13329),(60349,'Magma Plated Chestguard',5,13329),(60350,'Magma Plated Handguards',10,13329),(60351,'Magma Plated Faceguard',1,13329),(60352,'Magma Plated Legguards',7,13329),(60353,'Magma Plated Shoulderguards',3,13329),(60354,'Reinforced Sapphirium Chestguard',5,13329),(60355,'Reinforced Sapphirium Handguards',10,13329),(60356,'Reinforced Sapphirium Faceguard',1,13329),(60357,'Reinforced Sapphirium Legguards',7,13329),(60358,'Reinforced Sapphirium Shoulderguards',3,13329),(60359,'Reinforced Sapphirium Headguard',1,13329),(60360,'Reinforced Sapphirium Breastplate',5,13329),(60361,'Reinforced Sapphirium Greaves',7,13329),(60362,'Reinforced Sapphirium Mantle',3,13329),(60363,'Reinforced Sapphirium Gloves',10,13329),(63537,'Claws of Torment',21,13329),(63538,'Claws of Agony',22,13329),(64923,'Gladiator\'s Wyrmhide Spaulders',3,13329),(64924,'Gladiator\'s Wyrmhide Robes',20,13329),(64925,'Gladiator\'s Wyrmhide Legguards',7,13329),(64926,'Gladiator\'s Wyrmhide Helm',1,13329),(64927,'Gladiator\'s Wyrmhide Gloves',10,13329),(64928,'Gladiator\'s Silk Trousers',7,13329),(64929,'Gladiator\'s Silk Robe',20,13329),(64930,'Gladiator\'s Silk Handguards',10,13329),(64931,'Gladiator\'s Silk Cowl',1,13329),(64932,'Gladiator\'s Silk Amice',3,13329),(64933,'Gladiator\'s Scaled Shoulders',3,13329),(64934,'Gladiator\'s Scaled Legguards',7,13329),(64935,'Gladiator\'s Scaled Helm',1,13329),(64936,'Gladiator\'s Scaled Gauntlets',10,13329),(64937,'Gladiator\'s Scaled Chestpiece',5,13329),(64938,'Gladiator\'s Satin Robe',20,13329),(64939,'Gladiator\'s Satin Mantle',3,13329),(64940,'Gladiator\'s Satin Leggings',7,13329),(64941,'Gladiator\'s Satin Hood',1,13329),(64942,'Gladiator\'s Satin Gloves',10,13329),(64943,'Gladiator\'s Plate Shoulders',3,13329),(64944,'Gladiator\'s Plate Legguards',7,13329),(64945,'Gladiator\'s Plate Helm',1,13329),(64946,'Gladiator\'s Plate Gauntlets',10,13329),(64947,'Gladiator\'s Plate Chestpiece',5,13329),(64948,'Gladiator\'s Ornamented Spaulders',3,13329),(64949,'Gladiator\'s Ornamented Legplates',7,13329),(64950,'Gladiator\'s Ornamented Headcover',1,13329),(64951,'Gladiator\'s Ornamented Gloves',10,13329),(64952,'Gladiator\'s Ornamented Chestguard',5,13329),(64953,'Gladiator\'s Mooncloth Robe',20,13329),(64954,'Gladiator\'s Mooncloth Mantle',3,13329),(64955,'Gladiator\'s Mooncloth Leggings',7,13329),(64956,'Gladiator\'s Mooncloth Helm',1,13329),(64957,'Gladiator\'s Mooncloth Gloves',10,13329),(64958,'Gladiator\'s Linked Spaulders',3,13329),(64959,'Gladiator\'s Linked Leggings',7,13329),(64960,'Gladiator\'s Linked Helm',1,13329),(64961,'Gladiator\'s Linked Gauntlets',10,13329),(64962,'Gladiator\'s Linked Armor',5,13329),(64963,'Gladiator\'s Leather Tunic',5,13329),(64964,'Gladiator\'s Leather Spaulders',3,13329),(64965,'Gladiator\'s Leather Legguards',7,13329),(64966,'Gladiator\'s Leather Helm',1,13329),(64967,'Gladiator\'s Leather Gloves',10,13329),(64968,'Gladiator\'s Kodohide Spaulders',3,13329),(64969,'Gladiator\'s Kodohide Robes',20,13329),(64970,'Gladiator\'s Kodohide Legguards',7,13329),(64971,'Gladiator\'s Kodohide Helm',1,13329),(64972,'Gladiator\'s Kodohide Gloves',10,13329),(64973,'Gladiator\'s Felweave Trousers',7,13329),(64974,'Gladiator\'s Felweave Raiment',20,13329),(64975,'Gladiator\'s Felweave Handguards',10,13329),(64976,'Gladiator\'s Felweave Cowl',1,13329),(64977,'Gladiator\'s Felweave Amice',3,13329),(64978,'Gladiator\'s Dreadplate Shoulders',3,13329),(64979,'Gladiator\'s Dreadplate Legguards',7,13329),(64980,'Gladiator\'s Dreadplate Helm',1,13329),(64981,'Gladiator\'s Dreadplate Gauntlets',10,13329),(64982,'Gladiator\'s Dreadplate Chestpiece',5,13329),(64983,'Gladiator\'s Dragonhide Spaulders',3,13329),(64984,'Gladiator\'s Dragonhide Robes',20,13329),(64985,'Gladiator\'s Dragonhide Legguards',7,13329),(64986,'Gladiator\'s Dragonhide Helm',1,13329),(64987,'Gladiator\'s Dragonhide Gloves',10,13329),(64988,'Gladiator\'s Chain Spaulders',3,13329),(64989,'Gladiator\'s Chain Leggings',7,13329),(64990,'Gladiator\'s Chain Helm',1,13329),(64991,'Gladiator\'s Chain Gauntlets',10,13329),(64992,'Gladiator\'s Chain Armor',5,13329),(65147,'Gladiator\'s Ringmail Spaulders',3,13329),(65148,'Gladiator\'s Ringmail Leggings',7,13329),(65149,'Gladiator\'s Ringmail Helm',1,13329),(65150,'Gladiator\'s Ringmail Gauntlets',10,13329),(65151,'Gladiator\'s Ringmail Armor',5,13329),(65152,'Gladiator\'s Mail Spaulders',3,13329),(65153,'Gladiator\'s Mail Leggings',7,13329),(65154,'Gladiator\'s Mail Helm',1,13329),(65155,'Gladiator\'s Mail Gauntlets',10,13329),(65156,'Gladiator\'s Mail Armor',5,13329),(42722,'',0,1),(42721,'',0,1),(42720,'',0,1),(42719,'',0,1),(42718,'',0,1),(42717,'',0,1),(42716,'',0,1),(42715,'',0,1),(42714,'',0,1),(42713,'',0,1),(42707,'',0,1),(42706,'',0,1),(42705,'',0,1),(42704,'',0,1),(42703,'',0,1),(42699,'',0,1),(42698,'',0,1),(42697,'',0,1),(42696,'',0,1),(42695,'',0,1),(42694,'',0,1),(42693,'',0,1),(42692,'',0,1),(42691,'',0,1),(42690,'',0,1),(42689,'',0,1),(42688,'',0,1),(42687,'',0,1),(42686,'',0,1),(42685,'',0,1),(42684,'',0,1),(42683,'',0,1),(42682,'',0,1),(42681,'',0,1),(42680,'',0,1),(42678,'',0,1),(42677,'',0,1),(42676,'',0,1),(42675,'',0,1),(42674,'',0,1),(42673,'',0,1),(42672,'',0,1),(42671,'',0,1),(42670,'',0,1),(42669,'',0,1),(42668,'',0,1),(42667,'',0,1),(42666,'',0,1),(42665,'',0,1),(42664,'',0,1),(42663,'',0,1),(42662,'',0,1),(42661,'',0,1),(42660,'',0,1),(42659,'',0,1),(42658,'',0,1),(42657,'',0,1),(42656,'',0,1),(42655,'',0,1),(42654,'',0,1),(42639,'',0,1),(42638,'',0,1),(42637,'',0,1),(42636,'',0,1),(42635,'',0,1),(42634,'',0,1),(42633,'',0,1),(42632,'',0,1),(42631,'',0,1),(42630,'',0,1),(42629,'',0,1),(42628,'',0,1),(42627,'',0,1),(42626,'',0,1),(42625,'',0,1);
/*!40000 ALTER TABLE `item_set_names` ENABLE KEYS */;
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

