
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
DROP TABLE IF EXISTS `player_factionchange_items`;
CREATE TABLE `player_factionchange_items` (
  `race_A` int(8) NOT NULL,
  `alliance_id` int(8) NOT NULL,
  `commentA` text,
  `race_H` int(8) NOT NULL,
  `horde_id` int(8) NOT NULL,
  `commentH` text,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `player_factionchange_items` WRITE;
/*!40000 ALTER TABLE `player_factionchange_items` DISABLE KEYS */;
INSERT INTO `player_factionchange_items` VALUES (0,15196,'Private\'s Tabard',0,15197,'Scout\'s Tabard'),(0,19032,'Stormpike Battle Tabard',0,19031,'Frostwolf Battle Tabard'),(0,19506,'Silverwing Battle Tabard',0,19505,'Warsong Battle Tabard'),(0,20132,'Arathor Battle Tabard',0,20131,'Battle Tabard of the Defilers'),(0,23999,'Honor Hold Tabard',0,24004,'Thrallmar Tabard'),(0,28234,'Medallion of the Alliance(115)',0,28240,'Medallion of the Horde(115)'),(0,28235,'Medallion of the Alliance(115)',0,28241,'Medallion of the Horde(115)'),(0,28236,'Medallion of the Alliance(115)',0,28242,'Medallion of the Horde(115)'),(0,28237,'Medallion of the Alliance(115)',0,28243,'Medallion of the Horde(115)'),(0,28238,'Medallion of the Alliance(115)',0,28239,'Medallion of the Horde(115)'),(0,28379,'Sergeant\'s Heavy Cape(123)',0,28378,'Sergeant\'s Heavy Cape(123)'),(0,28380,'Sergeant\'s Heavy Cloak(123)',0,28377,'Sergeant\'s Heavy Cloak(123)'),(0,28952,'Grand Marshal\'s Quickblade(115)',0,28926,'High Warlord\'s Quickblade(115)'),(0,28954,'Grand Marshal\'s Shanker(115)',0,28929,'High Warlord\'s Shanker(115)'),(0,28955,'Grand Marshal\'s Shiv(115)',0,28930,'High Warlord\'s Shiv(115)'),(0,29136,'Far Seer\'s Helm(115)',0,29135,'Earthcaller\'s Headdress(115)'),(0,29140,'Cloak of the Ancient Spirits(115)',0,29139,'Ceremonial Cover(115)'),(0,29142,'Kurenai Kilt(115)',0,29141,'Tempest Leggings(115)'),(0,29144,'Worg Hide Quiver(109)',0,29143,'Clefthoof Hide Quiver(109)'),(0,29146,'Band of Elemental Spirits(115)',0,29145,'Band of Ancestral Spirits(115)'),(0,29148,'Blackened Leather Spaulders(115)',0,29147,'Talbuk Hide Spaulders(115)'),(0,29153,'Blade of the Archmage(100)',0,29155,'Stormcaller(100)'),(0,29166,'Hellforged Halberd(115)',0,29167,'Blackened Spear(115)'),(0,29169,'Ring of Convalescence(115)',0,29168,'Ancestral Band(115)'),(0,30348,'Medallion of the Alliance(115)',0,30343,'Medallion of the Horde(115)'),(0,30349,'Medallion of the Alliance(115)',0,30346,'Medallion of the Horde(115)'),(0,30350,'Medallion of the Alliance(115)',0,30344,'Medallion of the Horde(115)'),(0,30351,'Medallion of the Alliance(115)',0,30345,'Medallion of the Horde(115)'),(0,30597,'Halaani Claymore(114)',0,30570,'Arkadian Claymore(114)'),(0,30599,'Avenging Blades(108)',0,30568,'The Sharp Cookie(108)'),(0,31774,'Kurenai Tabard',0,31773,'Mag\'har Tabard'),(0,37864,'Medallion of the Alliance(128)',0,37865,'Medallion of the Horde(128)'),(0,38453,'Shield of the Lion-hearted(166)',0,38452,'Bulwark of the Warchief(166)'),(0,38455,'Hammer of the Alliance Vanguard(166)',0,38454,'Warsong Punisher(166)'),(0,38459,'Orb of the Eastern Kingdoms(166)',0,38458,'Darkspear Orb(166)'),(0,38463,'Lordaeron\'s Resolve(166)',0,38462,'Warsong Stormshield(166)'),(0,38465,'Vanguard Soldier\'s Dagger(166)',0,38461,'Warsong Shanker(166)'),(0,38589,'Medallion of the Alliance(115)',0,38588,'Medallion of the Horde(115)'),(0,42123,'Medallion of the Alliance(200)',0,42122,'Medallion of the Horde(200)'),(0,42124,'Medallion of the Alliance(226)',0,42126,'Medallion of the Horde(226)'),(0,44413,'Mekgineer\'s Chopper',0,41508,'Mechano-hog'),(0,45011,'Stormwind Banner',0,45014,'Orgrimmar Banner'),(0,45018,'Ironforge Banner',0,45015,'Sen\'jin Banner'),(0,45019,'Gnomeregan Banner',0,45013,'Thunder Bluff Banner'),(0,45020,'Exodar Banner',0,45017,'Silvermoon City Banner'),(0,45021,'Darnassus Banner',0,45016,'Undercity Banner'),(0,45074,'Claymore of the Prophet(200)',0,45205,'Greatsword of the Sin\'dorei(200)'),(0,45075,'Ironforge Smasher(200)',0,45203,'Grimhorn Crusher(200)'),(0,45076,'Teldrassil Protector(200)',0,45204,'Axe of the Sen\'jin Protector(200)'),(0,45077,'Dagger of the Rising Moon(200)',0,45222,'Spinal Destroyer(200)'),(0,45078,'Dagger of Lunar Purity(200)',0,45214,'Scalpel of the Royal Apothecary(200)'),(0,45128,'Silvery Sylvan Stave(200)',0,45212,'Staff of Feral Furies(200)'),(0,45129,'Gnomeregan Bonechopper(200)',0,45208,'Blade of the Keening Banshee(200)'),(0,45130,'Blunderbuss of Khaz Modan(200)',0,45210,'Sen\'jin Beakblade Longrifle(200)'),(0,45131,'Jouster\'s Fury(200)',0,45219,'Jouster\'s Fury(200)'),(0,45152,'Pendant of Azure Dreams(200)',0,45223,'Razor\'s Edge Pendant(200)'),(0,45153,'Susurrating Shell Necklace(200)',0,45206,'Choker of Feral Fury(200)'),(0,45154,'Necklace of Valiant Blood(200)',0,45213,'Pendant of Emerald Crusader(200)'),(0,45155,'Choker of Spiral Focus(200)',0,45207,'Necklace of Stolen Skulls(200)'),(0,45156,'Sash of Shattering Hearts(200)',0,45209,'Sash of Trumpted Pride(200)'),(0,45159,'Treads of Nimble Evasion(200)',0,45220,'Treads of the Earnest Squire(200)'),(0,45160,'Girdle of Valorous Defeat(200)',0,45217,'Clinch of Savage Fury(200)'),(0,45163,'Stanchions of Unseatable Furor(200)',0,45218,'Blood-Caked Stompers(200)'),(0,45181,'Wrap of the Everliving Tree(200)',0,45211,'Waistguard of Equine Fury(200)'),(0,45182,'Gauntlets of Shattered Pride(200)',0,45216,'Gauntlets of Mending Touch(200)'),(0,45183,'Treads of the Glorious Spirit(200)',0,45221,'Treads of Whispering Dreams(200)'),(0,45184,'Cinch of Bonded Servitude(200)',0,45215,'Links of Unquenched Savagery(200)'),(0,45574,'Stormwind Tabard',0,45581,'Orgrimmar Tabard'),(0,45577,'Ironforge Tabard',0,45582,'Sen\'jin Tabard'),(0,45578,'Gnomeregan Tabard',0,45584,'Thunder Bluff Tabard'),(0,45579,'Darnassus Tabard',0,45583,'Undercity Tabard'),(0,45580,'Exodar Tabard',0,45585,'Silvermoon City Tabard'),(0,46817,'Silver Covenant Tabard',0,46818,'Sunreaver Tabard'),(0,46958,'Steel Bladebreaker(245)',0,47255,'Stygian Bladebreaker(245)'),(0,46959,'Band of the Violent Temperment(245)',0,47252,'Ring of the Violent Temperament(245)'),(0,46960,'Breastplate of Cruel Intent(245)',0,47251,'Cuirass of Cruel Intent(245)'),(0,46961,'Boneshatter Armplates(245)',0,47253,'Boneshatter Vambraces(245)'),(0,46962,'Chestplate of the Towering Monstrosity(245)',0,47254,'Hauberk of the Towering Monstrosity(245)'),(0,46963,'Crystal Plated Vanguard(245)',0,47260,'Forlorn Barrier(245)'),(0,46964,'Crystal Plated Vanguard(258)',0,47421,'Forlorn Barrier(258)'),(0,46965,'Breastplate of Cruel Intent(258)',0,47412,'Cuirass of Cruel Intent(258)'),(0,46966,'Band of the Violent Temperment(258)',0,47413,'Ring of the Violent Temperament(258)'),(0,46967,'Boneshatter Armplates(258)',0,47414,'Boneshatter Vambraces(258)'),(0,46968,'Chestplate of the Towering Monstrosity(258)',0,47415,'Hauberk of the Towering Monstrosity(258)'),(0,46969,'Steel Bladebreaker(258)',0,47416,'Stygian Bladebreaker(258)'),(0,46970,'Drape of the Untamed Predator(245)',0,47257,'Cloak of the Untamed Predator(245)'),(0,46971,'Drape of the Untamed Predator(258)',0,47418,'Cloak of the Untamed Predator(258)'),(0,46972,'Cord of the Tenebrous Mist(245)',0,47258,'Belt of the Tenebrous Mist(245)'),(0,46973,'Cord of the Tenebrous Mist(258)',0,47419,'Belt of the Tenebrous Mist(258)'),(0,46974,'Leggings of the Broken Beast(245)',0,47259,'Legwraps of the Broken Beast(245)'),(0,46975,'Leggings of the Broken Beast(258)',0,47420,'Legwraps of the Broken Beast(258)'),(0,46976,'Shawl of the Refreshing Winds(245)',0,47256,'Drape of the Refreshing Winds(245)'),(0,46977,'Shawl of the Refreshing Winds(258)',0,47417,'Drape of the Refreshing Winds(258)'),(0,46979,'Blade of Tarasque(245)',0,47261,'Barb of Tarasque(245)'),(0,46980,'Blade of Tarasque(258)',0,47422,'Barb of Tarasque(258)'),(0,46985,'Boots of the Courageous(245)',0,47263,'Sabatons of the Courageous(245)'),(0,46986,'Boots of the Courageous(258)',0,47424,'Sabatons of the Courageous(258)'),(0,46988,'Boots of the Unrelenting Storm(245)',0,47262,'Boots of the Harsh Winter(245)'),(0,46989,'Boots of the Unrelenting Storm(258)',0,47423,'Boots of the Harsh Winter(258)'),(0,46990,'Belt of the Ice Burrower(245)',0,47265,'Binding of the Ice Burrower(245)'),(0,46991,'Belt of the Ice Burrower(258)',0,47426,'Binding of the Ice Burrower(258)'),(0,46992,'Flowing Vestments of Ascent(245)',0,47264,'Flowing Robes of Ascent(245)'),(0,46993,'Flowing Vestments of Ascent(258)',0,47425,'Flowing Robes of Ascent(258)'),(0,46994,'Talonstrike(245)',0,47267,'Death\'s Head Crossbow(245)'),(0,46995,'Talonstrike(258)',0,47428,'Death\'s Head Crossbow(258)'),(0,46996,'Lionhead Slasher(245)',0,47266,'Blood Fury(245)'),(0,46997,'Dawnbreaker Greaves(245)',0,47269,'Dawnbreaker Sabatons(245)'),(0,46999,'Bloodbath Belt(245)',0,47268,'Bloodbath Girdle(245)'),(0,47000,'Cuirass of Calamitous Fate(245)',0,47270,'Vest of Calamitous Fate(245)'),(0,47001,'Lionhead Slasher(258)',0,47427,'Blood Fury(258)'),(0,47002,'Bloodbath Belt(258)',0,47429,'Bloodbath Girdle(258)'),(0,47004,'Cuirass of Calamitous Fate(258)',0,47431,'Vest of Calamitous Fate(258)'),(0,47041,'Solace of the Defeated(245)',0,47271,'Solace of the Fallen(245)'),(0,47042,'Pride of the Eredar(245)',0,47275,'Pride of the Demon Lord(245)'),(0,47043,'Charge of the Demon Lord(245)',0,47272,'Charge of the Eredar(245)'),(0,47051,'Leggings of the Soothing Touch(245)',0,47274,'Pants of the Soothing Touch(245)'),(0,47052,'Legguards of Feverish Dedication(245)',0,47273,'Legplates of Feverish Dedication(245)'),(0,47053,'Symbol of Transgression(245)',0,47276,'Talisman of Heedless Sins(245)'),(0,47054,'Band of Deplorable Violence(245)',0,47327,'Lurid Manifestation(245)'),(0,47055,'Bracers of the Autumn Willow(245)',0,47277,'Bindings of the Autumn Willow(245)'),(0,47056,'Bracers of Cloudy Omen(245)',0,47280,'Legplates of Feverish Dedication(245)'),(0,47057,'Legplates of Failing Light(245)',0,47279,'Leggings of Failing Light(245)'),(0,47059,'Solace of the Defeated(258)',0,47432,'Solace of the Fallen(258)'),(0,47060,'Charge of the Demon Lord(258)',0,47433,'Charge of the Eredar(258)'),(0,47061,'Legguards of Feverish Dedication(258)',0,47434,'Legplates of Feverish Dedication(258)'),(0,47062,'Leggings of the Soothing Touch(258)',0,47435,'Pants of the Soothing Touch(258)'),(0,47063,'Pride of the Eredar(258)',0,47436,'Pride of the Demon Lord(258)'),(0,47064,'Symbol of Transgression(258)',0,47437,'Talisman of Heedless Sins(258)'),(0,47066,'Bracers of the Autumn Willow(258)',0,47438,'Bindings of the Autumn Willow(258)'),(0,47067,'Legplates of Failing Light(258)',0,47440,'Leggings of Failing Light(258)'),(0,47068,'Bracers of Cloudy Omen(258)',0,47441,'Wristwraps of Cloudy Omen(258)'),(0,47069,'Justicebringer(245)',0,47285,'Dual-blade Butcher(245)'),(0,47070,'Ring of Callous Aggression(245)',0,47282,'Band of Callous Aggression(245)'),(0,47071,'Treads of the Icewalker(245)',0,47284,'Icewalker Treads(245)'),(0,47072,'Girdle of Bloodied Scars(245)',0,47283,'Belt of Bloodied Scars(245)'),(0,47073,'Bracers of the Untold Massacre(245)',0,47281,'Bracers of the Silent Massacre(245)'),(0,47074,'Bracers of the Untold Massacre(258)',0,47442,'Bracers of the Silent Massacre(258)'),(0,47075,'Ring of Callous Aggression(258)',0,47443,'Band of Callous Aggression(258)'),(0,47076,'Girdle of Bloodied Scars(258)',0,47444,'Belt of Bloodied Scars(258)'),(0,47077,'Treads of the Icewalker(258)',0,47445,'Icewalker Treads(258)'),(0,47078,'Justicebringer(258)',0,47446,'Dual-blade Butcher(258)'),(0,47079,'Bastion of Purity(245)',0,47287,'Bastion of Resolve(245)'),(0,47080,'Satrina\'s Impeding Scarab(245)',0,47290,'Juggernaut\'s Vitality(245)'),(0,47081,'Cord of Biting Cold(245)',0,47286,'Belt of Biting Cold(245)'),(0,47082,'Chestplate of the Frostborn Hero(245)',0,47288,'Chestplate of the Frostwolf Hero(245)'),(0,47083,'Legguards of Concealed Hatred(245)',0,47289,'Leggings of Concealed Hatred(245)'),(0,47084,'Cord of Biting Cold(258)',0,47447,'Belt of Biting Cold(258)'),(0,47085,'Bastion of Purity(258)',0,47448,'Bastion of Resolve(258)'),(0,47086,'Chestplate of the Frostborn Hero(258)',0,47449,'Chestplate of the Frostwolf Hero(258)'),(0,47087,'Legguards of Concealed Hatred(258)',0,47450,'Leggings of Concealed Hatred(258)'),(0,47088,'Satrina\'s Impeding Scarab(258)',0,47451,'Juggernaut\'s Vitality(258)'),(0,47089,'Cloak of Displacement(245)',0,47291,'Shroud of Displacement(245)'),(0,47090,'Boots of Tremoring Earth(245)',0,47295,'Sabatons of Tremoring Earth(245)'),(0,47092,'Boots of the Mourning Widow(245)',0,47293,'Sandals of the Mourning Widow(245)'),(0,47093,'Vambraces of the Broken Bond(245)',0,47294,'Bracers of the Broken Bond(245)'),(0,47094,'Vestments of the Shattered Fellowship(245)',0,47292,'Robes of the Shattered Fellowship(245)'),(0,47095,'Cloak of Displacement(258)',0,47452,'Shroud of Displacement(258)'),(0,47096,'Vestments of the Shattered Fellowship(258)',0,47453,'Robes of the Shattered Fellowship(258)'),(0,47097,'Boots of the Mourning Widow(258)',0,47454,'Sandals of the Mourning Widow(258)'),(0,47098,'Vambraces of the Broken Bond(258)',0,47455,'Bracers of the Broken Bond(258)'),(0,47099,'Boots of Tremoring Earth(258)',0,47456,'Sabatons of Tremoring Earth(258)'),(0,47104,'Twin Spike(245)',0,47300,'Gouge of the Frigid Heart(245)'),(0,47105,'The Executioner\'s Malice(245)',0,47297,'The Executioner\'s Vice(245)'),(0,47106,'Sabatons of Ruthless Judgment(245)',0,47296,'Greaves of Ruthless Judgment(245)'),(0,47107,'Belt of the Merciless Killer(245)',0,47299,'Belt of the Pitiless Killer(245)'),(0,47108,'Bracers of the Shieldmaiden(245)',0,47298,'Armguards of the Shieldmaiden(245)'),(0,47109,'Sabatons of Ruthless Judgment(258)',0,47457,'Greaves of Ruthless Judgment(258)'),(0,47110,'The Executioner\'s Malice(258)',0,47458,'The Executioner\'s Vice(258)'),(0,47111,'Bracers of the Shieldmaiden(258)',0,47459,'Armguards of the Shieldmaiden(258)'),(0,47112,'Belt of the Merciless Killer(258)',0,47460,'Belt of the Pitiless Killer(258)'),(0,47113,'Twin Spike(258)',0,47461,'Gouge of the Frigid Heart(258)'),(0,47114,'Lupine Longstaff(245)',0,47302,'Twin\'s Pact(245)'),(0,47115,'Death\'s Verdict(245)',0,47303,'Death\'s Choice(245)'),(0,47116,'The Arbiter\'s Muse(245)',0,47305,'Legionnaire\'s Gorget(245)'),(0,47121,'Legguards of Ascension(245)',0,47304,'Legplates of Ascension(245)'),(0,47126,'Skyweaver Robes(245)',0,47301,'Skyweaver Vestments(245)'),(0,47129,'Skyweaver Robes(258)',0,47462,'Skyweaver Vestments(258)'),(0,47130,'Lupine Longstaff(258)',0,47463,'Twin\'s Pact(258)'),(0,47131,'Death\'s Verdict(258)',0,47464,'Death\'s Choice(258)'),(0,47132,'Legguards of Ascension(258)',0,47465,'Legplates of Ascension(258)'),(0,47133,'The Arbiter\'s Muse(258)',0,47466,'Legionnaire\'s Gorget(258)'),(0,47138,'Chalice of Searing Light(245)',0,47309,'Mystifying Charm(245)'),(0,47139,'Wail of the Valkyr(245)',0,47307,'Cry of the Valkyr(245)'),(0,47140,'Cord of Pale Thorns(245)',0,47308,'Belt of Pale Thorns(245)'),(0,47141,'Bindings of Dark Essence(245)',0,47306,'Dark Essence Bindings(245)'),(0,47142,'Breastplate of the Frozen Lake(245)',0,47310,'Chestplate of the Frozen Lake(245)'),(0,47143,'Bindings of Dark Essence(258)',0,47467,'Dark Essence Bindings(258)'),(0,47144,'Wail of the Val\'kyr(258)',0,47468,'Cry of the Val\'kyr(258)'),(0,47145,'Cord of Pale Thorns(258)',0,47469,'Belt of Pale Thorns(258)'),(0,47146,'Chalice of Searing Light(258)',0,47470,'Mystifying Charm(258)'),(0,47147,'Breastplate of the Frozen Lake(258)',0,47471,'Chestplate of the Frozen Lake(258)'),(0,47148,'Stormpike Cleaver(245)',0,47314,'Hellscream Slicer(245)'),(0,47149,'Signet of the Traitor King(245)',0,47315,'Band of the Traitor King(245)'),(0,47150,'Greaves of the 7th Legion(245)',0,47312,'Greaves of the Saronite Citadel(245)'),(0,47151,'Bracers of Dark Determination(245)',0,47313,'Armbands of Dark Determination(245)'),(0,47152,'Belt of Deathly Dominion(245)',0,47311,'Waistguard of Deathly Dominion(245)'),(0,47153,'Belt of Deathly Dominion(258)',0,47472,'Waistguard of Deathly Dominion(258)'),(0,47154,'Greaves of the 7th Legion(258)',0,47473,'Greaves of the Saronite Citadel(258)'),(0,47155,'Bracers of Dark Determination(258)',0,47474,'Armbands of Dark Determination(258)'),(0,47156,'Stormpike Cleaver(258)',0,47475,'Hellscream Slicer(258)'),(0,47157,'Signet of the Traitor King(258)',0,47476,'Band of the Traitor King(258)'),(0,47182,'Reign of the Unliving(245)',0,47316,'Reign of the Dead(245)'),(0,47183,'Strength of the Nerub(245)',0,47320,'Might of the Nerub(245)'),(0,47184,'Legguards of the Lurking Threat(245)',0,47319,'Leggings of the Lurking Threat(245)'),(0,47186,'Legwraps of the Awakening(245)',0,47318,'Leggings of the Awakening(245)'),(0,47187,'Leggings of the Deepening Void(245)',0,47317,'Breeches of the Deepening Void(245)'),(0,47188,'Reign of the Unliving(258)',0,47477,'Reign of the Dead(258)'),(0,47189,'Leggings of the Deepening Void(258)',0,47478,'Breeches of the Deepening Void(258)'),(0,47190,'Legwraps of the Awakening(258)',0,47479,'Leggings of the Awakening(258)'),(0,47191,'Legguards of the Lurking Threat(258)',0,47480,'Leggings of the Lurking Threat(258)'),(0,47192,'Strength of the Nerub(258)',0,47481,'Might of the Nerub(258)'),(0,47193,'Misery\'s End(245)',0,47322,'Suffering\'s End(245)'),(0,47194,'Footpads of the Icy Floe(245)',0,47321,'Boots of the Icy Floe(245)'),(0,47195,'Belt of the Forgotten Martyr(245)',0,47323,'Girdle of the Forgotten Martyr(245)'),(0,47203,'Armbands of the Ashen Saint(245)',0,47324,'Bindings of the Ashen Saint(245)'),(0,47204,'Chestguard of Flowing Elements(245)',0,47325,'Cuirass of Flowing Elements(245)'),(0,47205,'Footpads of the Icy Floe(258)',0,47482,'Boots of the Icy Floe(258)'),(0,47206,'Misery\'s End(258)',0,47483,'Suffering\'s End(258)'),(0,47207,'Belt of the Forgotten Martyr(258)',0,47484,'Girdle of the Forgotten Martyr(258)'),(0,47208,'Armbands of the Ashen Saint(258)',0,47485,'Bindings of the Ashen Saint(258)'),(0,47209,'Chestguard of Flowing Elements(258)',0,47486,'Cuirass of Flowing Elements(258)'),(0,47223,'Ring of the Darkmender(245)',0,47278,'Circle of the Darkmender(245)'),(0,47224,'Ring of the Darkmender(258)',0,47439,'Circle of the Darkmender(258)'),(0,47225,'Maiden\'s Favor(245)',0,47328,'Maiden\'s Adoration(245)'),(0,47233,'Archon Glaive(245)',0,47329,'Hellion Glaive(245)'),(0,47234,'Gloves of Bitter Reprisal(245)',0,47330,'Gauntlets of Bitter Reprisal(245)'),(0,47235,'Gloves of the Lifeless Touch(245)',0,47326,'Handwraps of the Lifeless Touch(245)'),(0,47236,'Gloves of the Lifeless Touch(258)',0,47487,'Handwraps of the Lifeless Touch(258)'),(0,47237,'Band of Deplorable Violence(258)',0,47489,'Lurid Manifestation(258)'),(0,47238,'Maiden\'s Favor(258)',0,47490,'Maiden\'s Adoration(258)'),(0,47239,'Archon Glaive(258)',0,47491,'Hellion Glaive(258)'),(0,47240,'Gloves of Bitter Reprisal(258)',0,47492,'Gauntlets of Bitter Reprisal(258)'),(0,47506,'Silverwing Defender(258)',0,47513,'Orgrim\'s Deflector(258)'),(0,47515,'Decimation(258)',0,47516,'Fleshrender(258)'),(0,47517,'Blade of the Unbroken Covenant(258)',0,47518,'Mortalis(258)'),(0,47519,'Catastrophe(258)',0,47520,'Grievance(258)'),(0,47521,'BRK-1000(258)',0,47523,'Fezzik\'s Autocannon(258)'),(0,47524,'Clemency(258)',0,47525,'Sufferance(258)'),(0,47526,'Remorseless(258)',0,47528,'Cudgel of the Damned(258)'),(0,47545,'Vereesa\'s Dexterity(272)',0,47546,'Sylvanas\' Cunning(272)'),(0,47547,'Varian\'s Furor(272)',0,47548,'Garrosh\'s Rage(272)'),(0,47549,'Magni\'s Resolution(272)',0,47550,'Cairne\'s Endurance(272)'),(0,47552,'Jaina\'s Radiance(272)',0,47551,'Aethas\' Intensity(272)'),(0,47553,'Bolvar\'s Devotion(272)',0,47554,'Lady Liadrin\'s Conviction(272)'),(0,47570,'Saronite Swordbreakers(245)',0,47571,'Saronite Swordbreakers(245)'),(0,47572,'Titanium Spikeguards(245)',0,47573,'Titanium Spikeguards(245)'),(0,47574,'Sunforged Bracers(245)',0,47575,'Sunforged Bracers(245)'),(0,47576,'Crusader\'s Dragonscale Bracers(245)',0,47577,'Crusader\'s Dragonscale Bracers(245)'),(0,47578,'Carnivorous Band(232)',0,47854,'Gormok\'s Band(232)'),(0,47579,'Black Chitin Bracers(245)',0,47580,'Black Chitin Bracers(245)'),(0,47581,'Bracers of Swift Death(245)',0,47582,'Bracers of Swift Death(245)'),(0,47583,'Moonshadow Armguards(245)',0,47584,'Moonshadow Armguards(245)'),(0,47585,'Bejeweled Wizard\'s Bracers(245)',0,47586,'Bejeweled Wizard\'s Bracers(245)'),(0,47587,'Royal Moonshroud Bracers(245)',0,47588,'Royal Moonshroud Bracers(245)'),(0,47589,'Titanium Razorplate(245)',0,47590,'Titanium Razorplate(245)'),(0,47591,'Breastplate of the White Knight(245)',0,47592,'Breastplate of the White Knight(245)'),(0,47593,'Sunforged Breastplate(245)',0,47594,'Sunforged Breastplate(245)'),(0,47595,'Crusader\'s Dragonscale Breastplate(245)',0,47596,'Crusader\'s Dragonscale Breastplate(245)'),(0,47597,'Ensorcelled Nerubian Breastplate(245)',0,47598,'Ensorcelled Nerubian Breastplate(245)'),(0,47599,'Knightbane Carapace(245)',0,47600,'Knightbane Carapace(245)'),(0,47602,'Lunar Eclipse Chestguard(245)',0,47601,'Lunar Eclipse Chestguard(245)'),(0,47603,'Merlin\'s Robe(245)',0,47604,'Merlin\'s Robe(245)'),(0,47605,'Royal Moonshroud Robe(245)',0,47606,'Royal Moonshroud Robe(245)'),(0,47607,'Collar of Ceaseless Torment(232)',0,47849,'Collar of Unending Torment(232)'),(0,47608,'Acidmaw Boots(232)',0,47853,'Acidmaw Treads(232)'),(0,47609,'Gauntlets of Rising Anger(232)',0,47851,'Gauntlets of Mounting Anger(232)'),(0,47610,'Armbands of the Northern Stalker(232)',0,47850,'Bracers of the Northern Stalker(232)'),(0,47611,'Dreadscale Armguards(232)',0,47852,'Dreadscale Bracers(232)'),(0,47612,'Rod of Imprisoned Souls(232)',0,47856,'Scepter of Imprisoned Souls(232)'),(0,47613,'Shoulderpads of the Glacial Wilds(232)',0,47857,'Pauldrons of the Glacial Wilds(232)'),(0,47614,'Girdle of the Impaler(232)',0,47859,'Belt of the Impaler(232)'),(0,47615,'Belt of the Frozen Reach(232)',0,47858,'Girdle of the Frozen Reach(232)'),(0,47616,'Shoulderguards of the Spirit Walker(232)',0,47860,'Pauldrons of the Spirit Walker(232)'),(0,47617,'Icehowl Cinch(232)',0,47855,'Icehowl Binding(232)'),(0,47618,'Firestorm Ring(232)',0,47862,'Firestorm Band(232)'),(0,47619,'Amulet of Binding Elements(232)',0,47864,'Pendant of Binding Elements(232)'),(0,47620,'Leggings of the Demonic Messenger(232)',0,47865,'Legwraps of the Demonic Messenger(232)'),(0,47621,'Girdle of the Farseer(232)',0,47866,'Darkspear Ritual Binding(232)'),(0,47622,'Plans: Breastplate of the White Knight(85)',0,47640,'Plans: Breastplate of the White Knight(85)'),(0,47623,'Plans: Saronite Swordbreakers(85)',0,47641,'Plans: Saronite Swordbreakers(85)'),(0,47624,'Plans: Titanium Razorplate(85)',0,47644,'Plans: Titanium Razorplate(85)'),(0,47625,'Plans: Titanium Spikeguards(85)',0,47645,'Plans: Titanium Spikeguards(85)'),(0,47626,'Plans: Sunforged Breastplate(85)',0,47643,'Plans: Sunforged Breastplate(85)'),(0,47627,'Plans: Sunforged Bracers(85)',0,47642,'Plans: Sunforged Bracers(85)'),(0,47628,'Pattern: Ensorcelled Nerubian Breastplate(85)',0,47650,'Pattern: Ensorcelled Nerubian Breastplate(85)'),(0,47629,'Pattern: Black Chitin Bracers(85)',0,47646,'Pattern: Black Chitin Bracers(85)'),(0,47630,'Pattern: Crusader\'s Dragonscale Breastplate(85)',0,47649,'Pattern: Crusader\'s Dragonscale Breastplate(85)'),(0,47631,'Pattern: Crusader\'s Dragonscale Bracers(85)',0,47648,'Pattern: Crusader\'s Dragonscale Bracers(85)'),(0,47632,'Pattern: Lunar Eclipse Chestguard(85)',0,47652,'Pattern: Lunar Eclipse Chestguard(85)'),(0,47633,'Pattern: Moonshadow Armguards(85)',0,47653,'Pattern: Moonshadow Armguards(85)'),(0,47634,'Pattern: Knightbane Carapace(85)',0,47651,'Pattern: Knightbane Carapace(85)'),(0,47635,'Pattern: Bracers of Swift Death(85)',0,47647,'Pattern: Bracers of Swift Death(85)'),(0,47654,'Pattern: Bejeweled Wizard\'s Bracers(85)',0,47639,'Pattern: Bejeweled Wizard\'s Bracers(85)'),(0,47655,'Pattern: Merlin\'s Robe(85)',0,47638,'Pattern: Merlin\'s Robe(85)'),(0,47656,'Pattern: Royal Moonshroud Bracers(85)',0,47637,'Pattern: Royal Moonshroud Bracers(85)'),(0,47657,'Pattern: Royal Moonshroud Robe(85)',0,47636,'Pattern: Royal Moonshroud Robe(85)'),(0,47663,'Felspark Bindings(232)',0,47861,'Felspark Bracers(232)'),(0,47669,'Belt of the Winter Solstice(232)',0,47863,'Belt of the Bloodhoof Emissary(232)'),(0,47674,'Helm of Thunderous Rampage(245)',0,47675,'Faceplate of Thunderous Rampage(245)'),(0,47676,'Dirk of the Night Watch(232)',0,47871,'Orcish Deathblade(232)'),(0,47677,'Faceplate of the Honorbound(245)',0,47678,'Headplate of the Honorbound(245)'),(0,47679,'Endurance of the Infernal(232)',0,47872,'Fortitude of the Infernal(232)'),(0,47680,'Armguards of the Nether Lord(232)',0,47869,'Armplates of the Nether Lord(232)'),(0,47681,'Heaume of the Restless Watch(245)',0,47682,'Helm of the Restless Watch(245)'),(0,47683,'Sentinel Scouting Greaves(232)',0,47867,'Warsong Poacher\'s Greaves(232)'),(0,47685,'Helm of the Brooding Dragon(245)',0,47684,'Coif of the Brooding Dragon(245)'),(0,47686,'Helm of Inner Warmth(245)',0,47687,'Headguard of Inner Warmth(245)'),(0,47689,'Hood of Lethal Intent(245)',0,47688,'Mask of Lethal Intent(245)'),(0,47690,'Helm of Abundant Growth(245)',0,47691,'Mask of Abundant Growth(245)'),(0,47693,'Hood of Fiery Aftermath(245)',0,47692,'Hood of Smoldering Aftermath(245)'),(0,47694,'Helm of Clouded Sight(245)',0,47695,'Hood of Clouded Sight(245)'),(0,47697,'Pauldrons of Trembling Rage(245)',0,47696,'Shoulderplates of Trembling Rage(245)'),(0,47698,'Shoulderplates of Enduring Order(245)',0,47699,'Shoulderguards of Enduring Order(245)'),(0,47700,'Loop of the Twin Valkyr(232)',0,47888,'Band of the Twin Val\'kyr(232)'),(0,47702,'Pauldrons of the Cavalier(245)',0,47701,'Shoulderplates of the Cavalier(245)'),(0,47703,'Planestalker Signet(232)',0,47868,'Planestalker Band(232)'),(0,47704,'Epaulets of the Devourer(245)',0,47705,'Pauldrons of the Devourer(245)'),(0,47707,'Mantle of the Groundbreaker(245)',0,47706,'Shoulders of the Groundbreaker(245)'),(0,47708,'Duskstalker Shoulderpads(245)',0,47709,'Duskstalker Pauldrons(245)'),(0,47712,'Shoulders of the Fateful Accord(245)',0,47710,'Epaulets of the Fateful Accord(245)'),(0,47713,'Mantle of Catastrophic Emanation(245)',0,47714,'Pauldrons of Catastrophic Emanation(245)'),(0,47715,'Pauldrons of Revered Mortality(245)',0,47716,'Mantle of Revered Mortality(245)'),(0,47717,'Faceplate of the Silver Champion(232)',0,47876,'Sunreaver Champion\'s Faceplate(232)'),(0,47718,'Helm of the Silver Ranger(232)',0,47875,'Sunreaver Ranger\'s Helm(232)'),(0,47719,'Gloves of the Silver Assassin(232)',0,47878,'Sunreaver Assassin\'s Gloves(232)'),(0,47720,'Pauldrons of the Silver Defender(232)',0,47877,'Sunreaver Defender\'s Pauldrons(232)'),(0,47721,'Sandals of the Silver Magus(232)',0,47873,'Sunreaver Magus\' Sandals(232)'),(0,47724,'Blade of the Silver Disciple(232)',0,47874,'Sunreaver Disciple\'s Blade(232)'),(0,47725,'Victor\'s Call(232)',0,47881,'Vengeance of the Forsaken(232)'),(0,47726,'Talisman of Volatile Power(232)',0,47879,'Fetish of Volatile Power(232)'),(0,47727,'Fervor of the Frostborn(232)',0,47882,'Eitrigg\'s Oath(232)'),(0,47728,'Binding Light(232)',0,47880,'Binding Stone(232)'),(0,47736,'Icefall Blade(232)',0,47886,'Nemesis Blade(232)'),(0,47737,'Reckoning(232)',0,47884,'Edge of Agony(232)'),(0,47738,'Sabatons of the Lingering Vortex(232)',0,47885,'Greaves of the Lingering Vortex(232)'),(0,47739,'Armor of Shifting Shadows(232)',0,47887,'Vest of Shifting Shadows(232)'),(0,47740,'The Diplomat(232)',0,47883,'Widebarrel Flintlock(232)'),(0,47741,'Baelgun\'s Heavy Crossbow(232)',0,47907,'Darkmaw Crossbow(232)'),(0,47742,'Chalice of Benedictus(232)',0,47913,'Lightbane Focus(232)'),(0,47743,'Enlightenment(232)',0,47892,'Illumination(232)'),(0,47744,'Gloves of the Azure Prophet(232)',0,47893,'Sen\'jin Ritualist Gloves(232)'),(0,47745,'Gloves of Looming Shadow(232)',0,47889,'Looming Shadow Wraps(232)'),(0,47746,'Helm of the Snowy Grotto(232)',0,47891,'Helm of the High Mesa(232)'),(0,47747,'Darkbane Pendant(232)',0,47890,'Darkbane Amulet(232)'),(0,47748,'Khadgar\'s Hood of Conquest',0,47774,'Sunstrider\'s Hood of Conquest'),(0,47749,'Khadgar\'s Robe of Conquest',0,47776,'Sunstrider\'s Robe of Conquest'),(0,47750,'Khadgar\'s Leggings of Conquest',0,47775,'Sunstrider\'s Leggings of Conquest'),(0,47751,'Khadgar\'s Shoulderpads of Conquest',0,47777,'Sunstrider\'s Shoulderpads of Conquest'),(0,47752,'Khadgar\'s Gauntlets of Conquest',0,47773,'Sunstrider\'s Gauntlets of Conquest'),(0,47753,'Khadgar\'s Gauntlets of Triumph',0,47772,'Sunstrider\'s Gauntlets of Triumph'),(0,47754,'Khadgar\'s Hood of Triumph',0,47771,'Sunstrider\'s Hood of Triumph'),(0,47755,'Khadgar\'s Leggings of Triumph',0,47770,'Sunstrider\'s Leggings of Triumph'),(0,47756,'Khadgar\'s Robe of Triumph',0,47769,'Sunstrider\'s Robe of Triumph'),(0,47757,'Khadgar\'s Shoulderpads of Triumph',0,47768,'Sunstrider\'s Shoulderpads of Triumph'),(0,47758,'Khadgar\'s Shoulderpads of Triumph',0,47767,'Sunstrider\'s Shoulderpads of Triumph'),(0,47759,'Khadgar\'s Robe of Triumph',0,47766,'Sunstrider\'s Robe of Triumph'),(0,47760,'Khadgar\'s Leggings of Triumph',0,47765,'Sunstrider\'s Leggings of Triumph'),(0,47761,'Khadgar\'s Hood of Triumph',0,47764,'Sunstrider\'s Hood of Triumph'),(0,47762,'Khadgar\'s Gauntlets of Triumph',0,47763,'Sunstrider\'s Gauntlets of Triumph'),(0,47778,'Kel\'Thuzad\'s Hood of Triumph',0,47804,'Gul\'dan\'s Hood of Triumph'),(0,47779,'Kel\'Thuzad\'s Robe of Triumph',0,47806,'Gul\'dan\'s Robe of Triumph'),(0,47780,'Kel\'Thuzad\'s Leggings of Triumph',0,47805,'Gul\'dan\'s Leggings of Triumph'),(0,47781,'Kel\'Thuzad\'s Shoulderpads of Triumph',0,47807,'Gul\'dan\'s Shoulderpads of Triumph'),(0,47782,'Kel\'Thuzad\'s Gloves of Triumph',0,47803,'Gul\'dan\'s Gloves of Triumph'),(0,47783,'Kel\'Thuzad\'s Gloves of Conquest',0,47802,'Gul\'dan\'s Gloves of Conquest'),(0,47784,'Kel\'Thuzad\'s Hood of Conquest',0,47801,'Gul\'dan\'s Hood of Conquest'),(0,47785,'Kel\'Thuzad\'s Leggings of Conquest',0,47800,'Gul\'dan\'s Leggings of Conquest'),(0,47786,'Kel\'Thuzad\'s Robe of Conquest',0,47799,'Gul\'dan\'s Robe of Conquest'),(0,47787,'Kel\'Thuzad\'s Shoulderpads of Conquest',0,47798,'Gul\'dan\'s Shoulderpads of Conquest'),(0,47788,'Kel\'Thuzad\'s Gloves of Triumph',0,47797,'Gul\'dan\'s Gloves of Triumph'),(0,47789,'Kel\'Thuzad\'s Hood of Triumph',0,47796,'Gul\'dan\'s Hood of Triumph'),(0,47790,'Kel\'Thuzad\'s Leggings of Triumph',0,47795,'Gul\'dan\'s Leggings of Triumph'),(0,47791,'Kel\'Thuzad\'s Robe of Triumph',0,47794,'Gul\'dan\'s Robe of Triumph'),(0,47792,'Kel\'Thuzad\'s Shoulderpads of Triumph',0,47793,'Gul\'dan\'s Shoulderpads of Triumph'),(0,47808,'The Lion\'s Maw(232)',0,47898,'Frostblade Hatchet(232)'),(0,47809,'Argent Resolve(232)',0,47894,'Mace of the Earthborn Chieftain(232)'),(0,47810,'Crusader\'s Glory(232)',0,47899,'Ardent Guard(232)'),(0,47811,'Chestguard of the Warden(232)',0,47896,'Stoneskin Chestplate(232)'),(0,47812,'Vigilant Ward(232)',0,47895,'Pride of the Kor\'kron(232)'),(0,47813,'Helmet of the Crypt Lord(232)',0,47897,'Helm of the Crypt Lord(232)'),(0,47814,'Westfall Saber(232)',0,47903,'Forsaken Bonecarver(232)'),(0,47815,'Cold Convergence(232)',0,47900,'Perdition(232)'),(0,47816,'The Grinder(232)',0,47905,'Blackhorn Bludgeon(232)'),(0,47829,'Pauldrons of the Timeless Hunter(232)',0,47901,'Pauldrons of the Shadow Hunter(232)'),(0,47830,'Legplates of the Silver Hand(232)',0,47902,'Legplates of Redeemed Blood(232)'),(0,47832,'Spaulders of the Snow Bandit(232)',0,47904,'Shoulderpads of the Snow Bandit(232)'),(0,47834,'Fordragon Blades(232)',0,47911,'Anguish(232)'),(0,47835,'Bulwark of the Royal Guard(232)',0,47910,'Aegis of the Coliseum(232)'),(0,47836,'Legplates of the Immortal Spider(232)',0,47908,'Sunwalker Legguards(232)'),(0,47837,'Cinch of the Undying(232)',0,47909,'Belt of the Eternal(232)'),(0,47838,'Vestments of the Sleepless(232)',0,47906,'Robes of the Sleepless(232)'),(0,47914,'Velen\'s Cowl of Conquest',0,48068,'Zabra\'s Cowl of Conquest'),(0,47915,'Collar of Ceaseless Torment(245)',0,47988,'Collar of Unending Torment(245)'),(0,47916,'Armbands of the Northern Stalker(245)',0,47989,'Bracers of the Northern Stalker(245)'),(0,47917,'Gauntlets of Rising Anger(245)',0,47990,'Gauntlets of Mounting Anger(245)'),(0,47918,'Dreadscale Armguards(245)',0,47991,'Dreadscale Bracers(245)'),(0,47919,'Acidmaw Boots(245)',0,47992,'Acidmaw Treads(245)'),(0,47920,'Gormok\'s Band(245)',0,47993,'Carnivorous Band(245)'),(0,47921,'Icehowl Cinch(245)',0,47994,'Icehowl Binding(245)'),(0,47922,'Rod of Imprisoned Souls(245)',0,47995,'Scepter of Imprisoned Souls(245)'),(0,47923,'Shoulderpads of the Glacial Wilds(245)',0,47996,'Pauldrons of the Glacial Wilds(245)'),(0,47924,'Belt of the Frozen Reach(245)',0,47997,'Girdle of the Frozen Reach(245)'),(0,47925,'Girdle of the Impaler(245)',0,47998,'Belt of the Impaler(245)'),(0,47926,'Shoulderguards of the Spirit Walker(245)',0,47999,'Pauldrons of the Spirit Walker(245)'),(0,47927,'Felspark Bindings(245)',0,48000,'Felspark Bracers(245)'),(0,47928,'Firestorm Ring(245)',0,48001,'Firestorm Band(245)'),(0,47929,'Belt of the Winter Solstice(245)',0,48002,'Belt of the Bloodhoof Emissary(245)'),(0,47930,'Amulet of Binding Elements(245)',0,48003,'Pendant of Binding Elements(245)'),(0,47931,'Leggings of the Demonic Messenger(245)',0,48004,'Legwraps of the Demonic Messenger(245)'),(0,47932,'Girdle of the Farseer(245)',0,48005,'Darkspear Ritual Binding(245)'),(0,47933,'Sentinel Scouting Greaves(245)',0,48006,'Warsong Poacher\'s Greaves(245)'),(0,47934,'Planestalker Signet(245)',0,48007,'Planestalker Band(245)'),(0,47935,'Armguards of the Nether Lord(245)',0,48008,'Armplates of the Nether Lord(245)'),(0,47936,'Velen\'s Robe of Conquest',0,48070,'Zabra\'s Robe of Conquest'),(0,47938,'Dirk of the Night Watch(245)',0,48010,'Orcish Deathblade(245)'),(0,47939,'Endurance of the Infernal(245)',0,48011,'Fortitude of the Infernal(245)'),(0,47940,'Sandals of the Silver Magus(245)',0,48012,'Sunreaver Magus\' Sandals(245)'),(0,47941,'Blade of the Silver Disciple(245)',0,48013,'Sunreaver Disciple\'s Blade(245)'),(0,47942,'Helm of the Silver Ranger(245)',0,48014,'Sunreaver Ranger\'s Helm(245)'),(0,47943,'Faceplate of the Silver Champion(245)',0,48015,'Sunreaver Champion\'s Faceplate(245)'),(0,47944,'Pauldrons of the Silver Defender(245)',0,48016,'Sunreaver Defender\'s Pauldrons(245)'),(0,47945,'Gloves of the Silver Assassin(245)',0,48017,'Sunreaver Assassin\'s Gloves(245)'),(0,47946,'Talisman of Volatile Power(245)',0,48018,'Fetish of Volatile Power(245)'),(0,47947,'Binding Light(245)',0,48019,'Binding Stone(245)'),(0,47948,'Victor\'s Call(245)',0,48020,'Vengeance of the Forsaken(245)'),(0,47949,'Fervor of the Frostborn(245)',0,48021,'Eitrigg\'s Oath(245)'),(0,47950,'The Diplomat(245)',0,48022,'Widebarrel Flintlock(245)'),(0,47951,'Reckoning(245)',0,48023,'Edge of Agony(245)'),(0,47952,'Sabatons of the Lingering Vortex(245)',0,48024,'Greaves of the Lingering Vortex(245)'),(0,47953,'Icefall Blade(245)',0,48025,'Nemesis Blade(245)'),(0,47954,'Armor of Shifting Shadows(245)',0,48026,'Vest of Shifting Shadows(245)'),(0,47955,'Loop of the Twin Val\'kyr(245)',0,48027,'Band of the Twin Val\'kyr(245)'),(0,47956,'Gloves of Looming Shadow(245)',0,48028,'Looming Shadow Wraps(245)'),(0,47957,'Darkbane Pendant(245)',0,48030,'Darkbane Amulet(245)'),(0,47958,'Chalice of Benedictus(245)',0,48032,'Lightbane Focus(245)'),(0,47959,'Helm of the Snowy Grotto(245)',0,48034,'Helm of the High Mesa(245)'),(0,47960,'Enlightenment(245)',0,48036,'Illumination(245)'),(0,47961,'Gloves of the Azure Prophet(245)',0,48038,'Sen\'jin Ritualist Gloves(245)'),(0,47962,'Argent Resolve(245)',0,48039,'Mace of the Earthborn Chieftain(245)'),(0,47963,'Vigilant Ward(245)',0,48040,'Pride of the Kor\'kron(245)'),(0,47964,'Chestguard of the Warden(245)',0,48041,'Stoneskin Chestplate(245)'),(0,47965,'Headpiece of the Crypt Lord(245)',0,48042,'Helm of the Crypt Lord(245)'),(0,47966,'The Lion\'s Maw(245)',0,48043,'Frostblade Hatchet(245)'),(0,47967,'Crusader\'s Glory(245)',0,48044,'Ardent Guard(245)'),(0,47968,'Cold Convergence(245)',0,48045,'Perdition(245)'),(0,47969,'Pauldrons of the Timeless Hunter(245)',0,48046,'Pauldrons of the Shadow Hunter(245)'),(0,47970,'Legplates of the Silver Hand(245)',0,48047,'Legplates of the Redeemed Blood Knight(245)'),(0,47971,'Westfall Saber(245)',0,48048,'Forsaken Bonecarver(245)'),(0,47972,'Spaulders of the Snow Bandit(245)',0,48049,'Shoulderpads of the Snow Bandit(245)'),(0,47973,'The Grinder(245)',0,48050,'Blackhorn Bludgeon(245)'),(0,47974,'Vestments of the Sleepless(245)',0,48051,'Robes of the Sleepless(245)'),(0,47975,'Baelgun\'s Heavy Crossbow(245)',0,48052,'Darkmaw Crossbow(245)'),(0,47976,'Legplates of the Immortal Spider(245)',0,48053,'Sunwalker Legguards(245)'),(0,47977,'Cinch of the Undying(245)',0,48054,'Belt of the Eternal(245)'),(0,47978,'Bulwark of the Royal Guard(245)',0,48055,'Aegis of the Coliseum(245)'),(0,47979,'Fordragon Blades(245)',0,48056,'Anguish(245)'),(0,47980,'Velen\'s Leggings of Conquest',0,48069,'Zabra\'s Leggings of Conquest'),(0,47981,'Velen\'s Shoulderpads of Conquest',0,48071,'Zabra\'s Shoulderpads of Conquest'),(0,47982,'Velen\'s Gloves of Conquest',0,48067,'Zabra\'s Gloves of Conquest'),(0,47983,'Velen\'s Gloves of Triumph',0,48066,'Zabra\'s Gloves of Triumph'),(0,47984,'Velen\'s Cowl of Triumph',0,48065,'Zabra\'s Cowl of Triumph'),(0,47985,'Velen\'s Leggings of Triumph',0,48064,'Zabra\'s Leggings of Triumph'),(0,47986,'Velen\'s Robe of Triumph',0,48063,'Zabra\'s Robe of Triumph'),(0,47987,'Velen\'s Shoulderpads of Triumph',0,48062,'Zabra\'s Shoulderpads of Triumph'),(0,48029,'Velen\'s Shoulderpads of Triumph',0,48061,'Zabra\'s Shoulderpads of Triumph'),(0,48031,'Velen\'s Robe of Triumph',0,48060,'Zabra\'s Robe of Triumph'),(0,48033,'Velen\'s Leggings of Triumph',0,48059,'Zabra\'s Leggings of Triumph'),(0,48035,'Velen\'s Cowl of Triumph',0,48058,'Zabra\'s Cowl of Triumph'),(0,48037,'Velen\'s Gloves of Triumph',0,48057,'Zabra\'s Gloves of Triumph'),(0,48102,'Malfurion\'s Headpiece of Conquest',0,48154,'Runetotem\'s Headpiece of Conquest'),(0,48129,'Malfurion\'s Robe of Conquest',0,48156,'Runetotem\'s Robe of Conquest'),(0,48130,'Malfurion\'s Leggings of Conquest',0,48155,'Runetotem\'s Leggings of Conquest'),(0,48131,'Malfurion\'s Spaulders of Conquest',0,48157,'Runetotem\'s Spaulders of Conquest'),(0,48132,'Malfurion\'s Handguards of Conquest',0,48153,'Runetotem\'s Handguards of Conquest'),(0,48133,'Malfurion\'s Handguards of Triumph',0,48152,'Runetotem\'s Handguards of Triumph'),(0,48134,'Malfurion\'s Headpiece of Triumph',0,48151,'Runetotem\'s Headpiece of Triumph'),(0,48135,'Malfurion\'s Leggings of Triumph',0,48150,'Runetotem\'s Leggings of Triumph'),(0,48136,'Malfurion\'s Robe of Triumph',0,48149,'Runetotem\'s Robe of Triumph'),(0,48137,'Malfurion\'s Spaulders of Triumph',0,48148,'Runetotem\'s Spaulders of Triumph'),(0,48138,'Malfurion\'s Spaulders of Triumph',0,48147,'Runetotem\'s Spaulders of Triumph'),(0,48139,'Malfurion\'s Robe of Triumph',0,48146,'Runetotem\'s Robe of Triumph'),(0,48140,'Malfurion\'s Leggings of Triumph',0,48145,'Runetotem\'s Leggings of Triumph'),(0,48141,'Malfurion\'s Headpiece of Triumph',0,48144,'Runetotem\'s Headpiece of Triumph'),(0,48142,'Malfurion\'s Handguards of Triumph',0,48143,'Runetotem\'s Handguards of Triumph'),(0,48158,'Malfurion\'s Cover of Conquest',0,48184,'Runetotem\'s Cover of Conquest'),(0,48159,'Malfurion\'s Vestments of Conquest',0,48186,'Runetotem\'s Vestments of Conquest'),(0,48160,'Malfurion\'s Trousers of Conquest',0,48185,'Runetotem\'s Trousers of Conquest'),(0,48161,'Malfurion\'s Mantle of Conquest',0,48187,'Runetotem\'s Mantle of Conquest'),(0,48162,'Malfurion\'s Gloves of Conquest',0,48183,'Runetotem\'s Gloves of Conquest'),(0,48163,'Malfurion\'s Gloves of Triumph',0,48182,'Runetotem\'s Gloves of Triumph'),(0,48164,'Malfurion\'s Cover of Triumph',0,48181,'Runetotem\'s Cover of Triumph'),(0,48165,'Malfurion\'s Trousers of Triumph',0,48180,'Runetotem\'s Trousers of Triumph'),(0,48166,'Malfurion\'s Vestments of Triumph',0,48179,'Runetotem\'s Vestments of Triumph'),(0,48167,'Malfurion\'s Mantle of Triumph',0,48178,'Runetotem\'s Mantle of Triumph'),(0,48168,'Malfurion\'s Mantle of Triumph',0,48177,'Runetotem\'s Mantle of Triumph'),(0,48169,'Malfurion\'s Vestments of Triumph',0,48176,'Runetotem\'s Vestments of Triumph'),(0,48170,'Malfurion\'s Trousers of Triumph',0,48175,'Runetotem\'s Trousers of Triumph'),(0,48171,'Malfurion\'s Cover of Triumph',0,48174,'Runetotem\'s Cover of Triumph'),(0,48172,'Malfurion\'s Gloves of Triumph',0,48173,'Runetotem\'s Gloves of Triumph'),(0,48203,'Malfurion\'s Handgrips of Triumph',0,48202,'Runetotem\'s Handgrips of Triumph'),(0,48204,'Malfurion\'s Headguard of Triumph',0,48201,'Runetotem\'s Headguard of Triumph'),(0,48205,'Malfurion\'s Legguards of Triumph',0,48200,'Runetotem\'s Legguards of Triumph'),(0,48206,'Malfurion\'s Raiments of Triumph',0,48199,'Runetotem\'s Raiments of Triumph'),(0,48207,'Malfurion\'s Shoulderpads of Triumph',0,48198,'Runetotem\'s Shoulderpads of Triumph'),(0,48208,'Malfurion\'s Shoulderpads of Triumph',0,48197,'Runetotem\'s Shoulderpads of Triumph'),(0,48209,'Malfurion\'s Raiments of Triumph',0,48196,'Runetotem\'s Raiments of Triumph'),(0,48210,'Malfurion\'s Legguards of Triumph',0,48195,'Runetotem\'s Legguards of Triumph'),(0,48211,'Malfurion\'s Headguard of Triumph',0,48194,'Runetotem\'s Headguard of Triumph'),(0,48212,'Malfurion\'s Handgrips of Triumph',0,48193,'Runetotem\'s Handgrips of Triumph'),(0,48213,'Malfurion\'s Handgrips of Conquest',0,48192,'Runetotem\'s Handgrips of Conquest'),(0,48214,'Malfurion\'s Headguard of Conquest',0,48188,'Runetotem\'s Headguard of Conquest'),(0,48215,'Malfurion\'s Legguards of Conquest',0,48190,'Runetotem\'s Legguards of Conquest'),(0,48216,'Malfurion\'s Raiments of Conquest',0,48189,'Runetotem\'s Raiments of Conquest'),(0,48217,'Malfurion\'s Shoulderpads of Conquest',0,48191,'Runetotem\'s Shoulderpads of Conquest'),(0,48218,'VanCleef\'s Helmet of Conquest',0,48245,'Garona\'s Helmet of Conquest'),(0,48219,'VanCleef\'s Breastplate of Conquest',0,48243,'Garona\'s Breastplate of Conquest'),(0,48220,'VanCleef\'s Legplates of Conquest',0,48246,'Garona\'s Legplates of Conquest'),(0,48221,'VanCleef\'s Pauldrons of Conquest',0,48247,'Garona\'s Pauldrons of Conquest'),(0,48222,'VanCleef\'s Gauntlets of Conquest',0,48244,'Garona\'s Gauntlets of Conquest'),(0,48223,'VanCleef\'s Breastplate of Triumph',0,48242,'Garona\'s Breastplate of Triumph'),(0,48224,'VanCleef\'s Gauntlets of Triumph',0,48241,'Garona\'s Gauntlets of Triumph'),(0,48225,'VanCleef\'s Helmet of Triumph',0,48240,'Garona\'s Helmet of Triumph'),(0,48226,'VanCleef\'s Legplates of Triumph',0,48239,'Garona\'s Legplates of Triumph'),(0,48227,'VanCleef\'s Pauldrons of Triumph',0,48238,'Garona\'s Pauldrons of Triumph'),(0,48228,'VanCleef\'s Pauldrons of Triumph',0,48237,'Garona\'s Pauldrons of Triumph'),(0,48229,'VanCleef\'s Legplates of Triumph',0,48236,'Garona\'s Legplates of Triumph'),(0,48230,'VanCleef\'s Helmet of Triumph',0,48235,'Garona\'s Helmet of Triumph'),(0,48231,'VanCleef\'s Gauntlets of Triumph',0,48234,'Garona\'s Gauntlets of Triumph'),(0,48232,'VanCleef\'s Breastplate of Triumph',0,48233,'Garona\'s Breastplate of Triumph'),(0,48250,'Windrunner\'s Headpiece of Conquest',0,48277,'Windrunner\'s Headpiece of Conquest'),(0,48251,'Windrunner\'s Tunic of Conquest',0,48275,'Windrunner\'s Tunic of Conquest'),(0,48252,'Windrunner\'s Legguards of Conquest',0,48278,'Windrunner\'s Legguards of Conquest'),(0,48253,'Windrunner\'s Spaulders of Conquest',0,48279,'Windrunner\'s Spaulders of Conquest'),(0,48254,'Windrunner\'s Handguards of Conquest',0,48276,'Windrunner\'s Handguards of Conquest'),(0,48255,'Windrunner\'s Tunic of Triumph',0,48274,'Windrunner\'s Tunic of Triumph'),(0,48256,'Windrunner\'s Handguards of Triumph',0,48273,'Windrunner\'s Handguards of Triumph'),(0,48257,'Windrunner\'s Headpiece of Triumph',0,48272,'Windrunner\'s Headpiece of Triumph'),(0,48258,'Windrunner\'s Legguards of Triumph',0,48271,'Windrunner\'s Legguards of Triumph'),(0,48259,'Windrunner\'s Spaulders of Triumph',0,48270,'Windrunner\'s Spaulders of Triumph'),(0,48260,'Windrunner\'s Spaulders of Triumph',0,48269,'Windrunner\'s Spaulders of Triumph'),(0,48261,'Windrunner\'s Legguards of Triumph',0,48268,'Windrunner\'s Legguards of Triumph'),(0,48262,'Windrunner\'s Headpiece of Triumph',0,48267,'Windrunner\'s Headpiece of Triumph'),(0,48263,'Windrunner\'s Handguards of Triumph',0,48266,'Windrunner\'s Handguards of Triumph'),(0,48264,'Windrunner\'s Tunic of Triumph',0,48265,'Windrunner\'s Tunic of Triumph'),(0,48280,'Nobundo\'s Headpiece of Conquest',0,48297,'Thrall\'s Headpiece of Conquest'),(0,48281,'Nobundo\'s Tunic of Conquest',0,48295,'Thrall\'s Tunic of Conquest'),(0,48282,'Nobundo\'s Legguards of Conquest',0,48298,'Thrall\'s Legguards of Conquest'),(0,48283,'Nobundo\'s Spaulders of Conquest',0,48299,'Thrall\'s Spaulders of Conquest'),(0,48284,'Nobundo\'s Handguards of Conquest',0,48296,'Thrall\'s Handguards of Conquest'),(0,48285,'Nobundo\'s Tunic of Triumph',0,48300,'Thrall\'s Tunic of Triumph'),(0,48286,'Nobundo\'s Handguards of Triumph',0,48301,'Thrall\'s Handguards of Triumph'),(0,48287,'Nobundo\'s Headpiece of Triumph',0,48302,'Thrall\'s Headpiece of Triumph'),(0,48288,'Nobundo\'s Legguards of Triumph',0,48303,'Thrall\'s Legguards of Triumph'),(0,48289,'Nobundo\'s Spaulders of Triumph',0,48304,'Thrall\'s Spaulders of Triumph'),(0,48290,'Nobundo\'s Spaulders of Triumph',0,48309,'Thrall\'s Spaulders of Triumph'),(0,48291,'Nobundo\'s Legguards of Triumph',0,48308,'Thrall\'s Legguards of Triumph'),(0,48292,'Nobundo\'s Headpiece of Triumph',0,48307,'Thrall\'s Headpiece of Triumph'),(0,48293,'Nobundo\'s Handguards of Triumph',0,48306,'Thrall\'s Handguards of Triumph'),(0,48294,'Nobundo\'s Tunic of Triumph',0,48305,'Thrall\'s Tunic of Triumph'),(0,48310,'Nobundo\'s Hauberk of Conquest',0,48336,'Thrall\'s Hauberk of Conquest'),(0,48312,'Nobundo\'s Gloves of Conquest',0,48337,'Thrall\'s Gloves of Conquest'),(0,48313,'Nobundo\'s Helm of Conquest',0,48338,'Thrall\'s Helm of Conquest'),(0,48314,'Nobundo\'s Kilt of Conquest',0,48339,'Thrall\'s Kilt of Conquest'),(0,48315,'Nobundo\'s Shoulderpads of Conquest',0,48340,'Thrall\'s Shoulderpads of Conquest'),(0,48316,'Nobundo\'s Hauberk of Triumph',0,48335,'Thrall\'s Hauberk of Triumph'),(0,48317,'Nobundo\'s Gloves of Triumph',0,48334,'Thrall\'s Gloves of Triumph'),(0,48318,'Nobundo\'s Helm of Triumph',0,48333,'Thrall\'s Helm of Triumph'),(0,48319,'Nobundo\'s Kilt of Triumph',0,48332,'Thrall\'s Kilt of Triumph'),(0,48320,'Nobundo\'s Shoulderpads of Triumph',0,48331,'Thrall\'s Shoulderpads of Triumph'),(0,48321,'Nobundo\'s Shoulderpads of Triumph',0,48330,'Thrall\'s Shoulderpads of Triumph'),(0,48322,'Nobundo\'s Kilt of Triumph',0,48329,'Thrall\'s Kilt of Triumph'),(0,48323,'Nobundo\'s Helm of Triumph',0,48328,'Thrall\'s Helm of Triumph'),(0,48324,'Nobundo\'s Gloves of Triumph',0,48327,'Thrall\'s Gloves of Triumph'),(0,48325,'Nobundo\'s Hauberk of Triumph',0,48326,'Thrall\'s Hauberk of Triumph'),(0,48341,'Nobundo\'s Chestguard of Conquest',0,48366,'Thrall\'s Chestguard of Conquest'),(0,48342,'Nobundo\'s Grips of Conquest',0,48367,'Thrall\'s Grips of Conquest'),(0,48343,'Nobundo\'s Faceguard of Conquest',0,48368,'Thrall\'s Faceguard of Conquest'),(0,48344,'Nobundo\'s War-Kilt of Conquest',0,48369,'Thrall\'s War-Kilt of Conquest'),(0,48345,'Nobundo\'s Shoulderguards of Conquest',0,48370,'Thrall\'s Shoulderguards of Conquest'),(0,48346,'Nobundo\'s Chestguard of Triumph',0,48365,'Thrall\'s Chestguard of Triumph'),(0,48347,'Nobundo\'s Grips of Triumph',0,48364,'Thrall\'s Grips of Triumph'),(0,48348,'Nobundo\'s Faceguard of Triumph',0,48363,'Thrall\'s Faceguard of Triumph'),(0,48349,'Nobundo\'s War-Kilt of Triumph',0,48362,'Thrall\'s War-Kilt of Triumph'),(0,48350,'Nobundo\'s Shoulderguards of Triumph',0,48361,'Thrall\'s Shoulderguards of Triumph'),(0,48351,'Nobundo\'s Shoulderguards of Triumph',0,48360,'Thrall\'s Shoulderguards of Triumph'),(0,48352,'Nobundo\'s War-Kilt of Triumph',0,48359,'Thrall\'s War-Kilt of Triumph'),(0,48353,'Nobundo\'s Faceguard of Triumph',0,48358,'Thrall\'s Faceguard of Triumph'),(0,48354,'Nobundo\'s Grips of Triumph',0,48357,'Thrall\'s Grips of Triumph'),(0,48355,'Nobundo\'s Chestguard of Triumph',0,48356,'Thrall\'s Chestguard of Triumph'),(0,48356,'Thrall\'s Chestguard of Triumph',0,48385,'Wrynn\'s Battleplate of Triumph'),(0,48357,'Thrall\'s Grips of Triumph',0,48384,'Wrynn\'s Gauntlets of Triumph'),(0,48358,'Thrall\'s Faceguard of Triumph',0,48383,'Wrynn\'s Helmet of Triumph'),(0,48359,'Thrall\'s War-Kilt of Triumph',0,48382,'Wrynn\'s Legplates of Triumph'),(0,48360,'Thrall\'s Shoulderguards of Triumph',0,48381,'Wrynn\'s Shoulderplates of Triumph'),(0,48361,'Thrall\'s Shoulderguards of Triumph',0,48380,'Wrynn\'s Shoulderplates of Triumph'),(0,48362,'Thrall\'s War-Kilt of Triumph',0,48379,'Wrynn\'s Legplates of Triumph'),(0,48363,'Thrall\'s Faceguard of Triumph',0,48378,'Wrynn\'s Helmet of Triumph'),(0,48364,'Thrall\'s Grips of Triumph',0,48377,'Wrynn\'s Gauntlets of Triumph'),(0,48365,'Thrall\'s Chestguard of Triumph',0,48376,'Wrynn\'s Battleplate of Triumph'),(0,48366,'Thrall\'s Chestguard of Conquest',0,48372,'Wrynn\'s Battleplate of Conquest'),(0,48367,'Thrall\'s Grips of Conquest',0,48375,'Wrynn\'s Gauntlets of Conquest'),(0,48368,'Thrall\'s Faceguard of Conquest',0,48371,'Wrynn\'s Helmet of Conquest'),(0,48369,'Thrall\'s War-Kilt of Conquest',0,48373,'Wrynn\'s Legplates of Conquest'),(0,48370,'Thrall\'s Shoulderguards of Conquest',0,48374,'Wrynn\'s Shoulderplates of Conquest'),(0,48371,'Wrynn\'s Helmet of Conquest',0,48388,'Hellscream\'s Helmet of Conquest'),(0,48372,'Wrynn\'s Battleplate of Conquest',0,48386,'Hellscream\'s Battleplate of Conquest'),(0,48373,'Wrynn\'s Legplates of Conquest',0,48389,'Hellscream\'s Legplates of Conquest'),(0,48374,'Wrynn\'s Shoulderplates of Conquest',0,48390,'Hellscream\'s Shoulderplates of Conquest'),(0,48375,'Wrynn\'s Gauntlets of Conquest',0,48387,'Hellscream\'s Gauntlets of Conquest'),(0,48376,'Wrynn\'s Battleplate of Triumph',0,48391,'Hellscream\'s Battleplate of Triumph'),(0,48377,'Wrynn\'s Gauntlets of Triumph',0,48392,'Hellscream\'s Gauntlets of Triumph'),(0,48378,'Wrynn\'s Helmet of Triumph',0,48393,'Hellscream\'s Helmet of Triumph'),(0,48379,'Wrynn\'s Legplates of Triumph',0,48394,'Hellscream\'s Legplates of Triumph'),(0,48380,'Wrynn\'s Shoulderplates of Triumph',0,48395,'Hellscream\'s Shoulderplates of Triumph'),(0,48381,'Wrynn\'s Shoulderplates of Triumph',0,48400,'Hellscream\'s Shoulderplates of Triumph'),(0,48382,'Wrynn\'s Legplates of Triumph',0,48399,'Hellscream\'s Legplates of Triumph'),(0,48383,'Wrynn\'s Helmet of Triumph',0,48398,'Hellscream\'s Helmet of Triumph'),(0,48384,'Wrynn\'s Gauntlets of Triumph',0,48397,'Hellscream\'s Gauntlets of Triumph'),(0,48385,'Wrynn\'s Battleplate of Triumph',0,48396,'Hellscream\'s Battleplate of Triumph'),(0,48429,'Wrynn\'s Greathelm of Conquest',0,48458,'Hellscream\'s Greathelm of Conquest'),(0,48430,'Wrynn\'s Greathelm of Triumph',0,48463,'Hellscream\'s Greathelm of Triumph'),(0,48433,'Wrynn\'s Greathelm of Triumph',0,48468,'Hellscream\'s Greathelm of Triumph'),(0,48436,'Wrynn\'s Breastplate of Conquest',0,48456,'Hellscream\'s Breastplate of Conquest'),(0,48445,'Wrynn\'s Legguards of Conquest',0,48459,'Hellscream\'s Legguards of Conquest'),(0,48446,'Wrynn\'s Legguards of Triumph',0,48464,'Hellscream\'s Legguards of Triumph'),(0,48447,'Wrynn\'s Legguards of Triumph',0,48469,'Hellscream\'s Legguards of Triumph'),(0,48448,'Wrynn\'s Pauldrons of Conquest',0,48460,'Hellscream\'s Pauldrons of Conquest'),(0,48449,'Wrynn\'s Handguards of Conquest',0,48457,'Hellscream\'s Handguards of Conquest'),(0,48450,'Wrynn\'s Breastplate of Triumph',0,48461,'Hellscream\'s Breastplate of Triumph'),(0,48451,'Wrynn\'s Breastplate of Triumph',0,48466,'Hellscream\'s Breastplate of Triumph'),(0,48452,'Wrynn\'s Handguards of Triumph',0,48462,'Hellscream\'s Handguards of Triumph'),(0,48453,'Wrynn\'s Handguards of Triumph',0,48467,'Hellscream\'s Handguards of Triumph'),(0,48454,'Wrynn\'s Pauldrons of Triumph',0,48465,'Hellscream\'s Pauldrons of Triumph'),(0,48455,'Wrynn\'s Pauldrons of Triumph',0,48470,'Hellscream\'s Pauldrons of Triumph'),(0,48472,'Thassarian\'s Helmet of Conquest',0,48503,'Koltira\'s Helmet of Conquest'),(0,48474,'Thassarian\'s Battleplate of Conquest',0,48501,'Koltira\'s Battleplate of Conquest'),(0,48476,'Thassarian\'s Legplates of Conquest',0,48504,'Koltira\'s Legplates of Conquest'),(0,48478,'Thassarian\'s Shoulderplates of Conquest',0,48505,'Koltira\'s Shoulderplates of Conquest'),(0,48480,'Thassarian\'s Gauntlets of Conquest',0,48502,'Koltira\'s Gauntlets of Conquest'),(0,48481,'Thassarian\'s Battleplate of Triumph',0,48500,'Koltira\'s Battleplate of Triumph'),(0,48482,'Thassarian\'s Gauntlets of Triumph',0,48499,'Koltira\'s Gauntlets of Triumph'),(0,48483,'Thassarian\'s Helmet of Triumph',0,48498,'Koltira\'s Helmet of Triumph'),(0,48484,'Thassarian\'s Legplates of Triumph',0,48497,'Koltira\'s Legplates of Triumph'),(0,48485,'Thassarian\'s Shoulderplates of Triumph',0,48496,'Koltira\'s Shoulderplates of Triumph'),(0,48486,'Thassarian\'s Shoulderplates of Triumph',0,48495,'Koltira\'s Shoulderplates of Triumph'),(0,48487,'Thassarian\'s Legplates of Triumph',0,48494,'Koltira\'s Legplates of Triumph'),(0,48488,'Thassarian\'s Helmet of Triumph',0,48493,'Koltira\'s Helmet of Triumph'),(0,48489,'Thassarian\'s Gauntlets of Triumph',0,48492,'Koltira\'s Gauntlets of Triumph'),(0,48490,'Thassarian\'s Battleplate of Triumph',0,48491,'Koltira\'s Battleplate of Triumph'),(0,48529,'Thassarian\'s Faceguard of Conquest',0,48560,'Koltira\'s Faceguard of Conquest'),(0,48531,'Thassarian\'s Chestguard of Conquest',0,48558,'Koltira\'s Chestguard of Conquest'),(0,48533,'Thassarian\'s Legguards of Conquest',0,48561,'Koltira\'s Legguards of Conquest'),(0,48535,'Thassarian\'s Pauldrons of Conquest',0,48562,'Koltira\'s Pauldrons of Conquest'),(0,48537,'Thassarian\'s Handguards of Conquest',0,48559,'Koltira\'s Handguards of Conquest'),(0,48538,'Thassarian\'s Chestguard of Triumph',0,48557,'Koltira\'s Chestguard of Triumph'),(0,48539,'Thassarian\'s Handguards of Triumph',0,48556,'Koltira\'s Handguards of Triumph'),(0,48540,'Thassarian\'s Faceguard of Triumph',0,48555,'Koltira\'s Faceguard of Triumph'),(0,48541,'Thassarian\'s Legguards of Triumph',0,48554,'Koltira\'s Legguards of Triumph'),(0,48542,'Thassarian\'s Pauldrons of Triumph',0,48553,'Koltira\'s Pauldrons of Triumph'),(0,48543,'Thassarian\'s Pauldrons of Triumph',0,48552,'Koltira\'s Pauldrons of Triumph'),(0,48544,'Thassarian\'s Legguards of Triumph',0,48551,'Koltira\'s Legguards of Triumph'),(0,48545,'Thassarian\'s Faceguard of Triumph',0,48550,'Koltira\'s Faceguard of Triumph'),(0,48546,'Thassarian\'s Handguards of Triumph',0,48549,'Koltira\'s Handguards of Triumph'),(0,48547,'Thassarian\'s Chestguard of Triumph',0,48548,'Koltira\'s Chestguard of Triumph'),(0,48564,'Turalyon\'s Headpiece of Conquest',0,48597,'Liadrin\'s Headpiece of Conquest'),(0,48566,'Turalyon\'s Tunic of Conquest',0,48599,'Liadrin\'s Tunic of Conquest'),(0,48568,'Turalyon\'s Greaves of Conquest',0,48596,'Liadrin\'s Greaves of Conquest'),(0,48572,'Turalyon\'s Spaulders of Conquest',0,48595,'Liadrin\'s Spaulders of Conquest'),(0,48574,'Turalyon\'s Gloves of Conquest',0,48598,'Liadrin\'s Gloves of Conquest'),(0,48575,'Turalyon\'s Tunic of Triumph',0,48594,'Liadrin\'s Tunic of Triumph'),(0,48576,'Turalyon\'s Gloves of Triumph',0,48593,'Liadrin\'s Gloves of Triumph'),(0,48577,'Turalyon\'s Headpiece of Triumph',0,48592,'Liadrin\'s Headpiece of Triumph'),(0,48578,'Turalyon\'s Greaves of Triumph',0,48591,'Liadrin\'s Greaves of Triumph'),(0,48579,'Turalyon\'s Spaulders of Triumph',0,48590,'Liadrin\'s Spaulders of Triumph'),(0,48580,'Turalyon\'s Spaulders of Triumph',0,48585,'Liadrin\'s Spaulders of Triumph'),(0,48581,'Turalyon\'s Greaves of Triumph',0,48586,'Liadrin\'s Greaves of Triumph'),(0,48582,'Turalyon\'s Headpiece of Triumph',0,48587,'Liadrin\'s Headpiece of Triumph'),(0,48583,'Turalyon\'s Gloves of Triumph',0,48588,'Liadrin\'s Gloves of Triumph'),(0,48584,'Turalyon\'s Tunic of Triumph',0,48589,'Liadrin\'s Tunic of Triumph'),(0,48602,'Turalyon\'s Battleplate of Conquest',0,48631,'Liadrin\'s Battleplate of Conquest'),(0,48603,'Turalyon\'s Gauntlets of Conquest',0,48630,'Liadrin\'s Gauntlets of Conquest'),(0,48604,'Turalyon\'s Helm of Conquest',0,48629,'Liadrin\'s Helm of Conquest'),(0,48605,'Turalyon\'s Legplates of Conquest',0,48628,'Liadrin\'s Legplates of Conquest'),(0,48606,'Turalyon\'s Shoulderplates of Conquest',0,48627,'Liadrin\'s Shoulderplates of Conquest'),(0,48607,'Turalyon\'s Battleplate of Triumph',0,48626,'Liadrin\'s Battleplate of Triumph'),(0,48608,'Turalyon\'s Gauntlets of Triumph',0,48625,'Liadrin\'s Gauntlets of Triumph'),(0,48609,'Turalyon\'s Helm of Triumph',0,48624,'Liadrin\'s Helm of Triumph'),(0,48610,'Turalyon\'s Legplates of Triumph',0,48623,'Liadrin\'s Legplates of Triumph'),(0,48611,'Turalyon\'s Shoulderplates of Triumph',0,48622,'Liadrin\'s Shoulderplates of Triumph'),(0,48612,'Turalyon\'s Shoulderplates of Triumph',0,48621,'Liadrin\'s Shoulderplates of Triumph'),(0,48613,'Turalyon\'s Legplates of Triumph',0,48620,'Liadrin\'s Legplates of Triumph'),(0,48614,'Turalyon\'s Helm of Triumph',0,48619,'Liadrin\'s Helm of Triumph'),(0,48615,'Turalyon\'s Gauntlets of Triumph',0,48618,'Liadrin\'s Gauntlets of Triumph'),(0,48616,'Turalyon\'s Battleplate of Triumph',0,48617,'Liadrin\'s Battleplate of Triumph'),(0,48632,'Turalyon\'s Breastplate of Conquest',0,48652,'Liadrin\'s Breastplate of Conquest'),(0,48633,'Turalyon\'s Handguards of Conquest',0,48653,'Liadrin\'s Handguards of Conquest'),(0,48634,'Turalyon\'s Faceguard of Conquest',0,48654,'Liadrin\'s Faceguard of Conquest'),(0,48635,'Turalyon\'s Legguards of Conquest',0,48655,'Liadrin\'s Legguards of Conquest'),(0,48636,'Turalyon\'s Shoulderguards of Conquest',0,48656,'Liadrin\'s Shoulderguards of Conquest'),(0,48637,'Turalyon\'s Shoulderguards of Triumph',0,48661,'Liadrin\'s Shoulderguards of Triumph'),(0,48638,'Turalyon\'s Legguards of Triumph',0,48660,'Liadrin\'s Legguards of Triumph'),(0,48639,'Turalyon\'s Faceguard of Triumph',0,48659,'Liadrin\'s Faceguard of Triumph'),(0,48640,'Turalyon\'s Handguards of Triumph',0,48658,'Liadrin\'s Handguards of Triumph'),(0,48641,'Turalyon\'s Breastplate of Triumph',0,48657,'Liadrin\'s Breastplate of Triumph'),(0,48642,'Turalyon\'s Breastplate of Triumph',0,48651,'Liadrin\'s Breastplate of Triumph'),(0,48643,'Turalyon\'s Handguards of Triumph',0,48650,'Liadrin\'s Handguards of Triumph'),(0,48644,'Turalyon\'s Faceguard of Triumph',0,48649,'Liadrin\'s Faceguard of Triumph'),(0,48645,'Turalyon\'s Legguards of Triumph',0,48648,'Liadrin\'s Legguards of Triumph'),(0,48646,'Turalyon\'s Shoulderguards of Triumph',0,48647,'Liadrin\'s Shoulderguards of Triumph'),(0,48671,'Drape of Bitter Incantation(258)',0,48666,'Drape of the Sunreavers(258)'),(0,48672,'Shawl of Fervent Crusader(258)',0,48667,'Shawl of the Devout Crusader(258)'),(0,48673,'Cloak of the Silver Covenant(258)',0,48668,'Cloak of Serrated Blades(258)'),(0,48674,'Cloak of the Victorious Combatant(258)',0,48669,'Cloak of the Triumphant Combatant(258)'),(0,48675,'Cloak of the Unmoving Guardian(258)',0,48670,'Cloak of the Unflinching Guardian(258)'),(0,48708,'Spellstorm Blade(245)',0,48701,'Spellharvest(245)'),(0,48709,'Heartcrusher(245)',0,48693,'Heartsmasher(245)'),(0,48710,'Paragon\'s Breadth(245)',0,48705,'Attrition(245)'),(0,48711,'Rhok\'shalla, the Shadow\'s Bane(245)',0,48697,'Frenzystrike Longbow(245)'),(0,48712,'The Spinebreaker(245)',0,48703,'The Facebreaker(245)'),(0,48713,'Lothar\'s Edge(245)',0,48695,'Mor\'kosh, the Bloodreaver(245)'),(0,48714,'Honor of the Fallen(245)',0,48699,'Blood and Glory(245)'),(0,49052,'Tabard of Conquest(A)',0,49054,'Tabard of Conquest(H)'),(0,49231,'Boots of the Grieving Soul(232)',0,49232,'Sandals of the Grieving Soul(232)'),(0,49234,'Boots of the Grieving Soul(245)',0,49233,'Sandals of the Grieving Soul(245)'),(0,49235,'Boots of Tortured Space(232)',0,49236,'Sabatons of Tortured Space(232)'),(0,49238,'Boots of Tortured Space(245)',0,49237,'Sabatons of Tortured Space(245)'),(0,51377,'Medallion of the Alliance(264)',0,51378,'Medallion of the Horde(264)');
/*!40000 ALTER TABLE `player_factionchange_items` ENABLE KEYS */;
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

