
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
DROP TABLE IF EXISTS `playercreateinfo_spell`;
CREATE TABLE `playercreateinfo_spell` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`race`,`class`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `playercreateinfo_spell` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_spell` DISABLE KEYS */;
INSERT INTO `playercreateinfo_spell` VALUES (11,1,88161,'Strike'),(1,1,81,'Dodge'),(1,1,107,'Block'),(1,1,196,'One-Handed Axes'),(1,1,198,'One-Handed Maces'),(1,1,201,'One-Handed Swords'),(1,1,203,'Unarmed'),(1,1,204,'Defense'),(1,1,522,'SPELLDEFENSE (DND)'),(11,7,29932,'Language Draenei'),(1,1,1843,'Disarm'),(1,1,2382,'Generic'),(1,1,2457,'Battle Stance'),(1,1,2479,'Honorless Target'),(1,1,3050,'Detect'),(1,1,3365,'Opening'),(1,1,5301,'Defensive State (DND)'),(1,1,6233,'Closing'),(1,1,6246,'Closing'),(1,1,6247,'Opening'),(1,1,6477,'Opening'),(1,1,6478,'Opening'),(1,1,7266,'Duel'),(1,1,7267,'Grovel'),(1,1,7355,'Stuck'),(22,1,6603,'Warrior Attack'),(1,1,8737,'Mail'),(1,1,9077,'Leather'),(1,1,9078,'Cloth'),(1,1,9116,'Shields'),(1,1,9125,'Generic'),(1,1,20597,'Sword Specialization'),(1,1,20598,'The Human Spirit'),(1,1,20599,'Diplomacy'),(1,1,20864,'Mace Specialization'),(1,1,21651,'Opening'),(1,1,21652,'Closing'),(1,1,22027,'Remove Insignia'),(1,1,22810,'Opening - No Text'),(1,1,32215,'Victorious State'),(1,1,45927,'Summon Friend'),(6,2,20551,'Nature Resistance'),(1,1,59752,'Every Man for Himself'),(1,1,61437,'Opening'),(1,2,81,'Dodge'),(1,2,107,'Block'),(1,2,198,'One-Handed Maces'),(1,2,199,'Two-Handed Maces'),(1,2,203,'Unarmed'),(1,2,204,'Defense'),(1,2,522,'SPELLDEFENSE (DND)'),(3,7,3050,'Detect'),(11,6,29932,'Language Draenei'),(1,2,1843,'Disarm'),(1,2,2382,'Generic'),(1,2,2479,'Honorless Target'),(1,2,3050,'Detect'),(1,2,3365,'Opening'),(1,2,6233,'Closing'),(1,2,6246,'Closing'),(1,2,6247,'Opening'),(1,2,6477,'Opening'),(1,2,6478,'Opening'),(1,2,6603,'Attack'),(1,2,7266,'Duel'),(1,2,7267,'Grovel'),(1,2,7355,'Stuck'),(1,2,8386,'Attacking'),(1,2,8737,'Mail'),(1,2,9077,'Leather'),(1,2,9078,'Cloth'),(1,2,9116,'Shields'),(1,2,9125,'Generic'),(2,8,3050,'Detect'),(1,2,20597,'Sword Specialization'),(1,2,20598,'The Human Spirit'),(1,2,20599,'Diplomacy'),(1,2,20864,'Mace Specialization'),(1,2,21651,'Opening'),(1,2,21652,'Closing'),(1,2,22027,'Remove Insignia'),(1,2,22810,'Opening - No Text'),(1,2,27762,'Relic - Libram'),(1,2,45927,'Summon Friend'),(6,2,670,'Language Taurahe'),(1,2,59752,'Every Man for Himself'),(1,2,61437,'Opening'),(1,4,81,'Dodge'),(1,4,203,'Unarmed'),(1,4,204,'Defense'),(1,4,522,'SPELLDEFENSE (DND)'),(11,5,29932,'Language Draenei'),(1,4,1180,'Daggers'),(1,4,1843,'Disarm'),(1,3,3050,'Detect'),(1,4,2382,'Generic'),(1,4,2479,'Honorless Target'),(1,4,2567,'Thrown'),(1,4,2764,'Throw'),(1,4,3050,'Detect'),(1,4,3365,'Opening'),(1,4,6233,'Closing'),(1,4,6246,'Closing'),(1,4,6247,'Opening'),(1,4,6477,'Opening'),(1,4,6478,'Opening'),(1,4,6603,'Attack'),(1,4,7266,'Duel'),(1,4,7267,'Grovel'),(1,4,7355,'Stuck'),(1,4,8386,'Attacking'),(1,4,9077,'Leather'),(1,4,9078,'Cloth'),(1,4,9125,'Generic'),(1,4,16092,'Defensive State (DND)'),(1,4,20597,'Sword Specialization'),(1,4,20598,'The Human Spirit'),(1,4,20599,'Diplomacy'),(1,4,20864,'Mace Specialization'),(1,4,21651,'Opening'),(1,4,21652,'Closing'),(1,4,22027,'Remove Insignia'),(1,4,22810,'Opening - No Text'),(1,4,45927,'Summon Friend'),(1,4,59752,'Every Man for Himself'),(1,4,61437,'Opening'),(1,5,81,'Dodge'),(1,5,198,'One-Handed Maces'),(1,5,203,'Unarmed'),(1,5,204,'Defense'),(1,5,522,'SPELLDEFENSE (DND)'),(1,5,585,'Smite'),(11,3,29932,'Language Draenei'),(1,5,1843,'Disarm'),(1,5,2382,'Generic'),(1,5,2479,'Honorless Target'),(1,5,3050,'Detect'),(1,5,3365,'Opening'),(1,5,5009,'Wands'),(1,5,5019,'Shoot'),(1,5,6233,'Closing'),(1,5,6246,'Closing'),(1,5,6247,'Opening'),(1,5,6477,'Opening'),(1,5,6478,'Opening'),(1,5,6603,'Attack'),(1,5,7266,'Duel'),(1,5,7267,'Grovel'),(1,5,7355,'Stuck'),(1,5,8386,'Attacking'),(1,5,9078,'Cloth'),(1,5,9125,'Generic'),(1,5,20597,'Sword Specialization'),(1,5,20598,'The Human Spirit'),(1,5,20599,'Diplomacy'),(1,5,20864,'Mace Specialization'),(1,5,21651,'Opening'),(1,5,21652,'Closing'),(1,5,22027,'Remove Insignia'),(1,5,22810,'Opening - No Text'),(1,5,45927,'Summon Friend'),(5,3,203,'Unarmed'),(1,5,59752,'Every Man for Himself'),(1,5,61437,'Opening'),(1,6,81,'Dodge'),(1,6,196,'One-Handed Axes'),(1,6,197,'Two-Handed Axes'),(1,6,200,'Polearms'),(1,6,201,'One-Handed Swords'),(1,6,202,'Two-Handed Swords'),(1,6,203,'Unarmed'),(1,6,204,'Defense'),(1,6,522,'SPELLDEFENSE (DND)'),(11,2,29932,'Language Draenei'),(1,6,750,'Plate Mail'),(1,6,1843,'Disarm'),(1,6,2382,'Generic'),(1,6,2479,'Honorless Target'),(1,6,3050,'Detect'),(1,6,3127,'Parry'),(1,6,3275,'Linen Bandage'),(1,6,3276,'Heavy Linen Bandage'),(1,6,3277,'Wool Bandage'),(1,6,3278,'Heavy Wool Bandage'),(1,6,3365,'Opening'),(1,6,6233,'Closing'),(1,6,6246,'Closing'),(1,6,6247,'Opening'),(1,6,6477,'Opening'),(1,6,6478,'Opening'),(1,6,6603,'Attack'),(1,6,7266,'Duel'),(1,6,7267,'Grovel'),(1,6,7355,'Stuck'),(1,6,7928,'Silk Bandage'),(1,6,7929,'Heavy Silk Bandage'),(1,6,7934,'Anti-Venom'),(1,6,8386,'Attacking'),(1,6,8737,'Mail'),(1,6,9077,'Leather'),(1,6,9078,'Cloth'),(1,6,9125,'Generic'),(1,6,10840,'Mageweave Bandage'),(1,6,10841,'Heavy Mageweave Bandage'),(1,6,10846,'First Aid'),(1,6,18629,'Runecloth Bandage'),(1,6,18630,'Heavy Runecloth Bandage'),(1,6,20597,'Sword Specialization'),(1,6,20598,'The Human Spirit'),(1,6,20599,'Diplomacy'),(1,6,20864,'Mace Specialization'),(1,6,21651,'Opening'),(1,6,21652,'Closing'),(1,6,22027,'Remove Insignia'),(1,6,22810,'Opening - No Text'),(1,6,33391,'Journeyman Riding'),(1,6,45462,'Plague Strike'),(1,6,45477,'Icy Touch'),(1,6,45902,'Blood Strike'),(1,6,45903,'Offensive State (DND)'),(1,6,45927,'Summon Friend'),(1,6,47541,'Death Coil'),(1,6,48266,'Blood Presence'),(1,6,49410,'Forceful Deflection'),(1,6,49576,'Death Grip'),(1,6,52665,'Relic - Sigil'),(5,3,76249,'Weapon Skills'),(1,6,59752,'Every Man for Himself'),(1,6,59879,'Blood Plague'),(1,6,59921,'Frost Fever'),(1,6,61437,'Opening'),(1,6,61455,'Runic Focus'),(1,8,81,'Dodge'),(1,8,133,'Fireball'),(22,4,16092,'Defensive State (DND)'),(1,8,203,'Unarmed'),(1,8,204,'Defense'),(1,8,227,'Staves'),(1,8,522,'SPELLDEFENSE (DND)'),(11,1,29932,'Language Draenei'),(1,8,1843,'Disarm'),(1,8,2382,'Generic'),(1,8,2479,'Honorless Target'),(1,8,3050,'Detect'),(1,8,3365,'Opening'),(1,8,5009,'Wands'),(1,8,5019,'Shoot'),(1,8,6233,'Closing'),(1,8,6246,'Closing'),(1,8,6247,'Opening'),(1,8,6477,'Opening'),(1,8,6478,'Opening'),(1,8,6603,'Attack'),(1,8,7266,'Duel'),(1,8,7267,'Grovel'),(1,8,7355,'Stuck'),(1,8,8386,'Attacking'),(1,8,9078,'Cloth'),(1,8,9125,'Generic'),(1,8,20597,'Sword Specialization'),(1,8,20598,'The Human Spirit'),(1,8,20599,'Diplomacy'),(1,8,20864,'Mace Specialization'),(1,8,21651,'Opening'),(1,8,21652,'Closing'),(1,8,22027,'Remove Insignia'),(1,8,22810,'Opening - No Text'),(1,8,45927,'Summon Friend'),(5,3,76250,'Armor Skills'),(1,8,59752,'Every Man for Himself'),(1,8,61437,'Opening'),(1,9,81,'Dodge'),(1,9,203,'Unarmed'),(1,9,204,'Defense'),(1,9,522,'SPELLDEFENSE (DND)'),(1,9,1180,'Daggers'),(1,9,1843,'Disarm'),(1,9,2382,'Generic'),(1,9,2479,'Honorless Target'),(1,9,3050,'Detect'),(1,9,3365,'Opening'),(1,9,5009,'Wands'),(1,9,5019,'Shoot'),(1,9,6233,'Closing'),(1,9,6246,'Closing'),(1,9,6247,'Opening'),(1,9,6477,'Opening'),(1,9,6478,'Opening'),(1,9,6603,'Attack'),(1,9,7266,'Duel'),(1,9,7267,'Grovel'),(1,9,7355,'Stuck'),(1,9,8386,'Attacking'),(1,9,9078,'Cloth'),(1,9,9125,'Generic'),(1,9,20597,'Sword Specialization'),(1,9,20598,'The Human Spirit'),(1,9,20599,'Diplomacy'),(1,9,20864,'Mace Specialization'),(1,9,21651,'Opening'),(1,9,21652,'Closing'),(1,9,22027,'Remove Insignia'),(1,9,22810,'Opening - No Text'),(1,9,45927,'Summon Friend'),(5,9,58284,'Chaos Bolt Passive'),(22,9,203,'Unarmed'),(1,9,59752,'Every Man for Himself'),(1,9,61437,'Opening'),(10,1,88161,'Strike'),(2,1,81,'Dodge'),(2,1,107,'Block'),(2,1,196,'One-Handed Axes'),(2,1,197,'Two-Handed Axes'),(2,1,201,'One-Handed Swords'),(2,1,203,'Unarmed'),(2,1,204,'Defense'),(2,1,522,'SPELLDEFENSE (DND)'),(4,11,671,'Language Darnassian'),(2,1,1843,'Disarm'),(2,1,2382,'Generic'),(2,1,2457,'Battle Stance'),(2,1,2479,'Honorless Target'),(2,1,3050,'Detect'),(2,1,3365,'Opening'),(2,1,5301,'Defensive State (DND)'),(2,1,6233,'Closing'),(2,1,6246,'Closing'),(2,1,6247,'Opening'),(2,1,6477,'Opening'),(2,1,6478,'Opening'),(2,1,7266,'Duel'),(2,1,7267,'Grovel'),(2,1,7355,'Stuck'),(11,1,6603,'Warrior Attack'),(2,1,8737,'Mail'),(2,1,9077,'Leather'),(2,1,9078,'Cloth'),(2,1,9116,'Shields'),(2,1,9125,'Generic'),(2,1,20572,'Blood Fury'),(2,1,20573,'Hardiness'),(2,1,20574,'Axe Specialization'),(2,1,21563,'Command'),(2,1,21651,'Opening'),(2,1,21652,'Closing'),(2,1,22027,'Remove Insignia'),(2,1,22810,'Opening - No Text'),(2,1,32215,'Victorious State'),(2,1,45927,'Summon Friend'),(2,1,61437,'Opening'),(2,3,81,'Dodge'),(2,3,196,'One-Handed Axes'),(2,3,203,'Unarmed'),(2,3,204,'Defense'),(2,3,264,'Bows'),(2,3,522,'SPELLDEFENSE (DND)'),(2,3,1843,'Disarm'),(2,3,2382,'Generic'),(2,3,2479,'Honorless Target'),(22,3,13358,'Defensive State (DND)'),(2,3,3050,'Detect'),(2,3,3365,'Opening'),(2,3,6233,'Closing'),(2,3,6246,'Closing'),(2,3,6247,'Opening'),(2,3,6477,'Opening'),(2,3,6478,'Opening'),(2,3,6603,'Attack'),(2,3,7266,'Duel'),(2,3,7267,'Grovel'),(2,3,7355,'Stuck'),(2,3,8386,'Attacking'),(2,3,9077,'Leather'),(2,3,9078,'Cloth'),(2,3,9125,'Generic'),(2,3,13358,'Defensive State (DND)'),(2,3,20572,'Blood Fury'),(2,3,20573,'Hardiness'),(2,3,20574,'Axe Specialization'),(2,3,20576,'Command'),(2,3,21651,'Opening'),(2,3,21652,'Closing'),(2,3,22027,'Remove Insignia'),(2,3,22810,'Opening - No Text'),(2,3,24949,'Defensive State 2 (DND)'),(2,3,34082,'Advantaged State (DND)'),(2,3,45927,'Summon Friend'),(2,3,61437,'Opening'),(2,4,81,'Dodge'),(2,4,203,'Unarmed'),(2,4,204,'Defense'),(2,4,522,'SPELLDEFENSE (DND)'),(4,8,671,'Language Darnassian'),(2,4,1180,'Daggers'),(2,4,1843,'Disarm'),(2,4,2382,'Generic'),(2,4,2479,'Honorless Target'),(2,4,2567,'Thrown'),(2,4,2764,'Throw'),(2,4,3050,'Detect'),(2,4,3365,'Opening'),(2,4,6233,'Closing'),(2,4,6246,'Closing'),(2,4,6247,'Opening'),(2,4,6477,'Opening'),(2,4,6478,'Opening'),(2,4,6603,'Attack'),(2,4,7266,'Duel'),(2,4,7267,'Grovel'),(2,4,7355,'Stuck'),(2,4,8386,'Attacking'),(2,4,9077,'Leather'),(2,4,9078,'Cloth'),(2,4,9125,'Generic'),(2,4,16092,'Defensive State (DND)'),(2,4,20572,'Blood Fury'),(2,4,20573,'Hardiness'),(2,4,20574,'Axe Specialization'),(2,4,21563,'Command'),(2,4,21651,'Opening'),(2,4,21652,'Closing'),(2,4,22027,'Remove Insignia'),(2,4,22810,'Opening - No Text'),(2,4,45927,'Summon Friend'),(2,4,61437,'Opening'),(2,6,81,'Dodge'),(2,6,196,'One-Handed Axes'),(2,6,197,'Two-Handed Axes'),(2,6,200,'Polearms'),(2,6,201,'One-Handed Swords'),(2,6,202,'Two-Handed Swords'),(2,6,203,'Unarmed'),(2,6,204,'Defense'),(2,6,522,'SPELLDEFENSE (DND)'),(2,6,750,'Plate Mail'),(2,6,1843,'Disarm'),(2,6,2382,'Generic'),(2,6,2479,'Honorless Target'),(2,6,3050,'Detect'),(2,6,3127,'Parry'),(2,6,3275,'Linen Bandage'),(2,6,3276,'Heavy Linen Bandage'),(2,6,3277,'Wool Bandage'),(2,6,3278,'Heavy Wool Bandage'),(2,6,3365,'Opening'),(2,6,6233,'Closing'),(2,6,6246,'Closing'),(2,6,6247,'Opening'),(2,6,6477,'Opening'),(2,6,6478,'Opening'),(2,6,6603,'Attack'),(2,6,7266,'Duel'),(2,6,7267,'Grovel'),(2,6,7355,'Stuck'),(2,6,7928,'Silk Bandage'),(2,6,7929,'Heavy Silk Bandage'),(2,6,7934,'Anti-Venom'),(2,6,8386,'Attacking'),(2,6,8737,'Mail'),(2,6,9077,'Leather'),(2,6,9078,'Cloth'),(2,6,9125,'Generic'),(2,6,10840,'Mageweave Bandage'),(2,6,10841,'Heavy Mageweave Bandage'),(2,6,10846,'First Aid'),(2,6,18629,'Runecloth Bandage'),(2,6,18630,'Heavy Runecloth Bandage'),(2,6,20572,'Blood Fury'),(2,6,20573,'Hardiness'),(2,6,20574,'Axe Specialization'),(2,6,21651,'Opening'),(2,6,21652,'Closing'),(2,6,22027,'Remove Insignia'),(2,6,22810,'Opening - No Text'),(2,6,33391,'Journeyman Riding'),(2,6,45462,'Plague Strike'),(2,6,45477,'Icy Touch'),(2,6,45902,'Blood Strike'),(2,6,45903,'Offensive State (DND)'),(2,6,45927,'Summon Friend'),(2,6,47541,'Death Coil'),(2,6,48266,'Blood Presence'),(2,6,49410,'Forceful Deflection'),(2,6,49576,'Death Grip'),(2,6,52665,'Relic - Sigil'),(2,6,54562,'Command'),(2,6,59879,'Blood Plague'),(2,6,59921,'Frost Fever'),(2,6,61437,'Opening'),(2,6,61455,'Runic Focus'),(2,7,81,'Dodge'),(2,7,107,'Block'),(2,7,198,'One-Handed Maces'),(2,7,203,'Unarmed'),(2,7,204,'Defense'),(2,7,227,'Staves'),(22,1,5301,'Defensive State (DND)'),(2,7,403,'Lightning Bolt'),(2,7,522,'SPELLDEFENSE (DND)'),(4,6,671,'Language Darnassian'),(2,7,1843,'Disarm'),(2,7,2382,'Generic'),(2,7,2479,'Honorless Target'),(2,7,3050,'Detect'),(2,7,3365,'Opening'),(2,7,6233,'Closing'),(2,7,6246,'Closing'),(2,7,6247,'Opening'),(2,7,6477,'Opening'),(2,7,6478,'Opening'),(2,7,6603,'Attack'),(2,7,7266,'Duel'),(2,7,7267,'Grovel'),(2,7,7355,'Stuck'),(2,7,8386,'Attacking'),(2,7,9077,'Leather'),(2,7,9078,'Cloth'),(2,7,9116,'Shields'),(2,7,9125,'Generic'),(2,7,20573,'Hardiness'),(2,7,20574,'Axe Specialization'),(2,7,21563,'Command'),(2,7,21651,'Opening'),(2,7,21652,'Closing'),(2,7,22027,'Remove Insignia'),(2,7,22810,'Opening - No Text'),(2,7,27763,'Relic - Totem'),(2,7,33697,'Blood Fury'),(2,7,45927,'Summon Friend'),(2,7,61437,'Opening'),(2,9,81,'Dodge'),(2,9,203,'Unarmed'),(2,9,204,'Defense'),(2,9,522,'SPELLDEFENSE (DND)'),(2,9,1180,'Daggers'),(2,9,1843,'Disarm'),(2,9,2382,'Generic'),(2,9,2479,'Honorless Target'),(2,9,3050,'Detect'),(2,9,3365,'Opening'),(2,9,5009,'Wands'),(2,9,5019,'Shoot'),(2,9,6233,'Closing'),(2,9,6246,'Closing'),(2,9,6247,'Opening'),(2,9,6477,'Opening'),(2,9,6478,'Opening'),(2,9,6603,'Attack'),(2,9,7266,'Duel'),(2,9,7267,'Grovel'),(2,9,7355,'Stuck'),(2,9,8386,'Attacking'),(2,9,9078,'Cloth'),(2,9,9125,'Generic'),(2,9,20573,'Hardiness'),(2,9,20574,'Axe Specialization'),(2,9,20575,'Command'),(2,9,21651,'Opening'),(2,9,21652,'Closing'),(2,9,22027,'Remove Insignia'),(2,9,22810,'Opening - No Text'),(2,9,33702,'Blood Fury'),(2,9,45927,'Summon Friend'),(2,9,58284,'Chaos Bolt Passive'),(2,9,61437,'Opening'),(9,1,88161,'Strike'),(3,1,81,'Dodge'),(3,1,107,'Block'),(3,1,196,'One-Handed Axes'),(3,1,197,'Two-Handed Axes'),(3,1,198,'One-Handed Maces'),(3,1,203,'Unarmed'),(3,1,204,'Defense'),(3,1,522,'SPELLDEFENSE (DND)'),(4,5,671,'Language Darnassian'),(3,1,1843,'Disarm'),(3,1,2382,'Generic'),(3,1,2457,'Battle Stance'),(3,1,2479,'Honorless Target'),(3,1,2481,'Find Treasure'),(3,1,3050,'Detect'),(3,1,3365,'Opening'),(3,1,5301,'Defensive State (DND)'),(3,1,6233,'Closing'),(3,1,6246,'Closing'),(3,1,6247,'Opening'),(3,1,6477,'Opening'),(3,1,6478,'Opening'),(3,1,7266,'Duel'),(3,1,7267,'Grovel'),(3,1,7355,'Stuck'),(10,1,6603,'Warrior Attack'),(3,1,8737,'Mail'),(3,1,9077,'Leather'),(3,1,9078,'Cloth'),(3,1,9116,'Shields'),(3,1,9125,'Generic'),(3,1,20594,'Stoneform'),(3,1,20595,'Gun Specialization'),(3,1,20596,'Frost Resistance'),(3,1,21651,'Opening'),(3,1,21652,'Closing'),(3,1,22027,'Remove Insignia'),(3,1,22810,'Opening - No Text'),(3,1,32215,'Victorious State'),(3,1,45927,'Summon Friend'),(3,1,59224,'Mace Specialization'),(3,1,61437,'Opening'),(3,2,81,'Dodge'),(3,2,107,'Block'),(3,2,198,'One-Handed Maces'),(3,2,199,'Two-Handed Maces'),(3,2,203,'Unarmed'),(3,2,204,'Defense'),(3,2,522,'SPELLDEFENSE (DND)'),(10,1,5301,'Defensive State (DND)'),(4,4,671,'Language Darnassian'),(3,2,1843,'Disarm'),(3,2,2382,'Generic'),(3,2,2479,'Honorless Target'),(3,2,2481,'Find Treasure'),(3,2,3050,'Detect'),(3,2,3365,'Opening'),(3,2,6233,'Closing'),(3,2,6246,'Closing'),(3,2,6247,'Opening'),(3,2,6477,'Opening'),(3,2,6478,'Opening'),(3,2,6603,'Attack'),(3,2,7266,'Duel'),(3,2,7267,'Grovel'),(3,2,7355,'Stuck'),(3,2,8386,'Attacking'),(3,2,8737,'Mail'),(3,2,9077,'Leather'),(3,2,9078,'Cloth'),(3,2,9116,'Shields'),(3,2,9125,'Generic'),(3,2,20594,'Stoneform'),(3,2,20595,'Gun Specialization'),(3,2,20596,'Frost Resistance'),(3,2,21651,'Opening'),(3,2,21652,'Closing'),(3,2,22027,'Remove Insignia'),(3,2,22810,'Opening - No Text'),(3,2,27762,'Relic - Libram'),(3,2,45927,'Summon Friend'),(3,2,59224,'Mace Specialization'),(3,2,61437,'Opening'),(3,3,81,'Dodge'),(3,3,196,'One-Handed Axes'),(3,3,203,'Unarmed'),(3,3,204,'Defense'),(3,3,266,'Guns'),(3,3,522,'SPELLDEFENSE (DND)'),(4,3,671,'Language Darnassian'),(3,3,1843,'Disarm'),(3,3,2382,'Generic'),(3,3,2479,'Honorless Target'),(3,3,2481,'Find Treasure'),(9,3,13358,'Defensive State (DND)'),(3,3,3050,'Detect'),(3,3,3365,'Opening'),(3,3,6233,'Closing'),(3,3,6246,'Closing'),(3,3,6247,'Opening'),(3,3,6477,'Opening'),(3,3,6478,'Opening'),(3,3,6603,'Attack'),(3,3,7266,'Duel'),(3,3,7267,'Grovel'),(3,3,7355,'Stuck'),(3,3,8386,'Attacking'),(3,3,9077,'Leather'),(3,3,9078,'Cloth'),(3,3,9125,'Generic'),(3,3,13358,'Defensive State (DND)'),(3,3,20594,'Stoneform'),(3,3,20595,'Gun Specialization'),(3,3,20596,'Frost Resistance'),(3,3,21651,'Opening'),(3,3,21652,'Closing'),(3,3,22027,'Remove Insignia'),(3,3,22810,'Opening - No Text'),(3,3,24949,'Defensive State 2 (DND)'),(3,3,34082,'Advantaged State (DND)'),(3,3,45927,'Summon Friend'),(3,3,59224,'Mace Specialization'),(3,3,61437,'Opening'),(3,4,81,'Dodge'),(3,4,203,'Unarmed'),(3,4,204,'Defense'),(3,4,522,'SPELLDEFENSE (DND)'),(4,1,671,'Language Darnassian'),(10,9,669,'Language Orcish'),(3,4,1180,'Daggers'),(3,4,1843,'Disarm'),(3,4,2382,'Generic'),(3,4,2479,'Honorless Target'),(3,4,2481,'Find Treasure'),(3,4,2567,'Thrown'),(3,4,2764,'Throw'),(3,4,3050,'Detect'),(3,4,3365,'Opening'),(3,4,6233,'Closing'),(3,4,6246,'Closing'),(3,4,6247,'Opening'),(3,4,6477,'Opening'),(3,4,6478,'Opening'),(3,4,6603,'Attack'),(3,4,7266,'Duel'),(3,4,7267,'Grovel'),(3,4,7355,'Stuck'),(3,4,8386,'Attacking'),(3,4,9077,'Leather'),(3,4,9078,'Cloth'),(3,4,9125,'Generic'),(3,4,16092,'Defensive State (DND)'),(3,4,20594,'Stoneform'),(3,4,20595,'Gun Specialization'),(3,4,20596,'Frost Resistance'),(3,4,21651,'Opening'),(3,4,21652,'Closing'),(3,4,22027,'Remove Insignia'),(3,4,22810,'Opening - No Text'),(3,4,45927,'Summon Friend'),(3,4,59224,'Mace Specialization'),(3,4,61437,'Opening'),(3,5,81,'Dodge'),(3,5,198,'One-Handed Maces'),(3,5,203,'Unarmed'),(3,5,204,'Defense'),(3,5,522,'SPELLDEFENSE (DND)'),(3,5,585,'Smite'),(10,8,669,'Language Orcish'),(10,6,669,'Language Orcish'),(3,5,1843,'Disarm'),(5,3,13358,'Defensive State (DND)'),(3,5,2382,'Generic'),(3,5,2479,'Honorless Target'),(3,5,2481,'Find Treasure'),(3,5,3050,'Detect'),(3,5,3365,'Opening'),(3,5,5009,'Wands'),(3,5,5019,'Shoot'),(3,5,6233,'Closing'),(3,5,6246,'Closing'),(3,5,6247,'Opening'),(3,5,6477,'Opening'),(3,5,6478,'Opening'),(3,5,6603,'Attack'),(3,5,7266,'Duel'),(3,5,7267,'Grovel'),(3,5,7355,'Stuck'),(3,5,8386,'Attacking'),(3,5,9078,'Cloth'),(3,5,9125,'Generic'),(3,5,20594,'Stoneform'),(3,5,20595,'Gun Specialization'),(3,5,20596,'Frost Resistance'),(3,5,21651,'Opening'),(3,5,21652,'Closing'),(3,5,22027,'Remove Insignia'),(3,5,22810,'Opening - No Text'),(3,5,45927,'Summon Friend'),(3,5,59224,'Mace Specialization'),(3,5,61437,'Opening'),(3,6,81,'Dodge'),(3,6,196,'One-Handed Axes'),(3,6,197,'Two-Handed Axes'),(3,6,200,'Polearms'),(3,6,201,'One-Handed Swords'),(3,6,202,'Two-Handed Swords'),(3,6,203,'Unarmed'),(3,6,204,'Defense'),(3,6,522,'SPELLDEFENSE (DND)'),(10,5,669,'Language Orcish'),(10,4,669,'Language Orcish'),(3,6,750,'Plate Mail'),(3,6,1843,'Disarm'),(3,6,2382,'Generic'),(3,6,2479,'Honorless Target'),(3,6,2481,'Find Treasure'),(3,6,3050,'Detect'),(3,6,3127,'Parry'),(3,6,3275,'Linen Bandage'),(3,6,3276,'Heavy Linen Bandage'),(3,6,3277,'Wool Bandage'),(3,6,3278,'Heavy Wool Bandage'),(3,6,3365,'Opening'),(3,6,6233,'Closing'),(3,6,6246,'Closing'),(3,6,6247,'Opening'),(3,6,6477,'Opening'),(3,6,6478,'Opening'),(3,6,6603,'Attack'),(3,6,7266,'Duel'),(3,6,7267,'Grovel'),(3,6,7355,'Stuck'),(3,6,7928,'Silk Bandage'),(3,6,7929,'Heavy Silk Bandage'),(3,6,7934,'Anti-Venom'),(3,6,8386,'Attacking'),(3,6,8737,'Mail'),(3,6,9077,'Leather'),(3,6,9078,'Cloth'),(3,6,9125,'Generic'),(3,6,10840,'Mageweave Bandage'),(3,6,10841,'Heavy Mageweave Bandage'),(3,6,10846,'First Aid'),(3,6,18629,'Runecloth Bandage'),(3,6,18630,'Heavy Runecloth Bandage'),(3,6,20594,'Stoneform'),(3,6,20595,'Gun Specialization'),(3,6,20596,'Frost Resistance'),(3,6,21651,'Opening'),(3,6,21652,'Closing'),(3,6,22027,'Remove Insignia'),(3,6,22810,'Opening - No Text'),(3,6,33391,'Journeyman Riding'),(3,6,45462,'Plague Strike'),(3,6,45477,'Icy Touch'),(3,6,45902,'Blood Strike'),(3,6,45903,'Offensive State (DND)'),(3,6,45927,'Summon Friend'),(3,6,47541,'Death Coil'),(3,6,48266,'Blood Presence'),(3,6,49410,'Forceful Deflection'),(3,6,49576,'Death Grip'),(3,6,52665,'Relic - Sigil'),(3,6,59224,'Mace Specialization'),(3,6,59879,'Blood Plague'),(3,6,59921,'Frost Fever'),(3,6,61437,'Opening'),(3,6,61455,'Runic Focus'),(8,1,88161,'Strike'),(4,1,81,'Dodge'),(4,1,107,'Block'),(4,1,198,'One-Handed Maces'),(4,1,201,'One-Handed Swords'),(4,1,203,'Unarmed'),(4,1,204,'Defense'),(4,1,522,'SPELLDEFENSE (DND)'),(10,3,669,'Language Orcish'),(10,2,669,'Language Orcish'),(4,1,1180,'Daggers'),(4,1,1843,'Disarm'),(4,1,2382,'Generic'),(4,1,2457,'Battle Stance'),(4,1,2479,'Honorless Target'),(4,1,3050,'Detect'),(4,1,3365,'Opening'),(4,1,5301,'Defensive State (DND)'),(4,1,6233,'Closing'),(4,1,6246,'Closing'),(4,1,6247,'Opening'),(4,1,6477,'Opening'),(4,1,6478,'Opening'),(4,1,7266,'Duel'),(4,1,7267,'Grovel'),(4,1,7355,'Stuck'),(9,1,6603,'Warrior Attack'),(4,1,8737,'Mail'),(4,1,9077,'Leather'),(4,1,9078,'Cloth'),(4,1,9116,'Shields'),(4,1,9125,'Generic'),(4,1,20582,'Quickness'),(4,1,20583,'Nature Resistance'),(4,1,20585,'Wisp Spirit'),(4,1,21651,'Opening'),(4,1,21652,'Closing'),(4,1,22027,'Remove Insignia'),(4,1,22810,'Opening - No Text'),(4,1,32215,'Victorious State'),(4,1,45927,'Summon Friend'),(4,1,58984,'Shadowmelt'),(4,1,61437,'Opening'),(4,3,81,'Dodge'),(4,3,203,'Unarmed'),(4,3,204,'Defense'),(4,3,264,'Bows'),(4,3,522,'SPELLDEFENSE (DND)'),(10,1,669,'Language Orcish'),(9,9,669,'Language Orcish'),(4,3,1180,'Daggers'),(4,3,1843,'Disarm'),(4,3,2382,'Generic'),(4,3,2479,'Honorless Target'),(4,3,3050,'Detect'),(4,3,3365,'Opening'),(4,3,6233,'Closing'),(4,3,6246,'Closing'),(4,3,6247,'Opening'),(4,3,6477,'Opening'),(4,3,6478,'Opening'),(4,3,6603,'Attack'),(4,3,7266,'Duel'),(4,3,7267,'Grovel'),(4,3,7355,'Stuck'),(4,3,8386,'Attacking'),(4,3,9077,'Leather'),(4,3,9078,'Cloth'),(4,3,9125,'Generic'),(4,3,13358,'Defensive State (DND)'),(4,3,20582,'Quickness'),(4,3,20583,'Nature Resistance'),(4,3,20585,'Wisp Spirit'),(4,3,21651,'Opening'),(4,3,21652,'Closing'),(4,3,22027,'Remove Insignia'),(4,3,22810,'Opening - No Text'),(4,3,24949,'Defensive State 2 (DND)'),(4,3,34082,'Advantaged State (DND)'),(4,3,45927,'Summon Friend'),(4,3,58984,'Shadowmelt'),(4,3,61437,'Opening'),(4,4,81,'Dodge'),(4,4,203,'Unarmed'),(4,4,204,'Defense'),(4,4,522,'SPELLDEFENSE (DND)'),(9,8,669,'Language Orcish'),(9,7,669,'Language Orcish'),(4,4,1180,'Daggers'),(4,4,1843,'Disarm'),(1,3,13358,'Defensive State (DND)'),(4,4,2382,'Generic'),(4,4,2479,'Honorless Target'),(4,4,2567,'Thrown'),(4,4,2764,'Throw'),(4,4,3050,'Detect'),(4,4,3365,'Opening'),(4,4,6233,'Closing'),(4,4,6246,'Closing'),(4,4,6247,'Opening'),(4,4,6477,'Opening'),(4,4,6478,'Opening'),(4,4,6603,'Attack'),(4,4,7266,'Duel'),(4,4,7267,'Grovel'),(4,4,7355,'Stuck'),(4,4,8386,'Attacking'),(4,4,9077,'Leather'),(4,4,9078,'Cloth'),(4,4,9125,'Generic'),(4,4,16092,'Defensive State (DND)'),(4,4,20582,'Quickness'),(4,4,20583,'Nature Resistance'),(4,4,20585,'Wisp Spirit'),(4,4,21651,'Opening'),(4,4,21652,'Closing'),(4,4,22027,'Remove Insignia'),(4,4,22810,'Opening - No Text'),(4,4,45927,'Summon Friend'),(4,4,58984,'Shadowmelt'),(4,4,61437,'Opening'),(4,5,81,'Dodge'),(4,5,198,'One-Handed Maces'),(4,5,203,'Unarmed'),(4,5,204,'Defense'),(4,5,522,'SPELLDEFENSE (DND)'),(4,5,585,'Smite'),(9,6,669,'Language Orcish'),(9,5,669,'Language Orcish'),(4,5,1843,'Disarm'),(22,11,6233,'Closing'),(4,5,2382,'Generic'),(4,5,2479,'Honorless Target'),(4,5,3050,'Detect'),(4,5,3365,'Opening'),(4,5,5009,'Wands'),(4,5,5019,'Shoot'),(4,5,6233,'Closing'),(4,5,6246,'Closing'),(4,5,6247,'Opening'),(4,5,6477,'Opening'),(4,5,6478,'Opening'),(4,5,6603,'Attack'),(4,5,7266,'Duel'),(4,5,7267,'Grovel'),(4,5,7355,'Stuck'),(4,5,8386,'Attacking'),(4,5,9078,'Cloth'),(4,5,9125,'Generic'),(4,5,20582,'Quickness'),(4,5,20583,'Nature Resistance'),(4,5,20585,'Wisp Spirit'),(4,5,21651,'Opening'),(4,5,21652,'Closing'),(4,5,22027,'Remove Insignia'),(4,5,22810,'Opening - No Text'),(4,5,45927,'Summon Friend'),(4,5,58984,'Shadowmelt'),(4,5,61437,'Opening'),(4,6,81,'Dodge'),(4,6,196,'One-Handed Axes'),(4,6,197,'Two-Handed Axes'),(4,6,200,'Polearms'),(4,6,201,'One-Handed Swords'),(4,6,202,'Two-Handed Swords'),(4,6,203,'Unarmed'),(4,6,204,'Defense'),(4,6,522,'SPELLDEFENSE (DND)'),(9,4,669,'Language Orcish'),(9,3,669,'Language Orcish'),(4,6,750,'Plate Mail'),(4,6,1843,'Disarm'),(4,6,2382,'Generic'),(4,6,2479,'Honorless Target'),(4,6,3050,'Detect'),(4,6,3127,'Parry'),(4,6,3275,'Linen Bandage'),(4,6,3276,'Heavy Linen Bandage'),(4,6,3277,'Wool Bandage'),(4,6,3278,'Heavy Wool Bandage'),(4,6,3365,'Opening'),(4,6,6233,'Closing'),(4,6,6246,'Closing'),(4,6,6247,'Opening'),(4,6,6477,'Opening'),(4,6,6478,'Opening'),(4,6,6603,'Attack'),(4,6,7266,'Duel'),(4,6,7267,'Grovel'),(4,6,7355,'Stuck'),(4,6,7928,'Silk Bandage'),(4,6,7929,'Heavy Silk Bandage'),(4,6,7934,'Anti-Venom'),(4,6,8386,'Attacking'),(4,6,8737,'Mail'),(4,6,9077,'Leather'),(4,6,9078,'Cloth'),(4,6,9125,'Generic'),(4,6,10840,'Mageweave Bandage'),(4,6,10841,'Heavy Mageweave Bandage'),(4,6,10846,'First Aid'),(4,6,18629,'Runecloth Bandage'),(4,6,18630,'Heavy Runecloth Bandage'),(4,6,20582,'Quickness'),(4,6,20583,'Nature Resistance'),(4,6,20585,'Wisp Spirit'),(4,6,21651,'Opening'),(4,6,21652,'Closing'),(4,6,22027,'Remove Insignia'),(4,6,22810,'Opening - No Text'),(4,6,33391,'Journeyman Riding'),(4,6,45462,'Plague Strike'),(4,6,45477,'Icy Touch'),(4,6,45902,'Blood Strike'),(4,6,45903,'Offensive State (DND)'),(4,6,45927,'Summon Friend'),(4,6,47541,'Death Coil'),(4,6,48266,'Blood Presence'),(4,6,49410,'Forceful Deflection'),(4,6,49576,'Death Grip'),(4,6,52665,'Relic - Sigil'),(4,6,58984,'Shadowmeld'),(4,6,59879,'Blood Plague'),(4,6,59921,'Frost Fever'),(4,6,61437,'Opening'),(4,6,61455,'Runic Focus'),(4,11,81,'Dodge'),(4,11,203,'Unarmed'),(4,11,204,'Defense'),(4,11,227,'Staves'),(4,11,522,'SPELLDEFENSE (DND)'),(9,1,669,'Language Orcish'),(8,11,669,'Language Orcish'),(4,11,1180,'Daggers'),(4,11,1843,'Disarm'),(4,11,2382,'Generic'),(4,11,2479,'Honorless Target'),(4,11,3050,'Detect'),(4,11,3365,'Opening'),(4,11,5176,'Wrath'),(22,11,21652,'Closing'),(4,11,6233,'Closing'),(4,11,6246,'Closing'),(4,11,6247,'Opening'),(4,11,6477,'Opening'),(4,11,6478,'Opening'),(4,11,6603,'Attack'),(4,11,7266,'Duel'),(4,11,7267,'Grovel'),(4,11,7355,'Stuck'),(4,11,8386,'Attacking'),(4,11,9077,'Leather'),(4,11,9078,'Cloth'),(4,11,9125,'Generic'),(4,11,20582,'Quickness'),(4,11,20583,'Nature Resistance'),(4,11,20585,'Wisp Spirit'),(4,11,21651,'Opening'),(4,11,21652,'Closing'),(4,11,22027,'Remove Insignia'),(4,11,22810,'Opening - No Text'),(4,11,27764,'Relic - Idol'),(4,11,45927,'Summon Friend'),(4,11,58984,'Shadowmelt'),(4,11,61437,'Opening'),(7,1,88161,'Strike'),(5,1,81,'Dodge'),(5,1,107,'Block'),(5,1,201,'One-Handed Swords'),(4,1,202,'Two-Handed Swords'),(5,1,203,'Unarmed'),(5,1,204,'Defense'),(5,1,522,'SPELLDEFENSE (DND)'),(8,9,669,'Language Orcish'),(5,1,1180,'Daggers'),(5,1,1843,'Disarm'),(5,1,2382,'Generic'),(5,1,2457,'Battle Stance'),(5,1,2479,'Honorless Target'),(5,1,3050,'Detect'),(5,1,3365,'Opening'),(5,1,5227,'Underwater Breathing'),(5,1,5301,'Defensive State (DND)'),(5,1,6233,'Closing'),(5,1,6246,'Closing'),(5,1,6247,'Opening'),(5,1,6477,'Opening'),(5,1,6478,'Opening'),(5,1,7266,'Duel'),(5,1,7267,'Grovel'),(5,1,7355,'Stuck'),(5,1,7744,'Will of the Forsaken'),(8,1,6603,'Warrior Attack'),(5,1,8737,'Mail'),(5,1,9077,'Leather'),(5,1,9078,'Cloth'),(5,1,9116,'Shields'),(5,1,9125,'Generic'),(8,8,669,'Language Orcish'),(5,1,20577,'Cannibalize'),(5,1,20579,'Shadow Resistance'),(5,1,21651,'Opening'),(5,1,21652,'Closing'),(5,1,22027,'Remove Insignia'),(5,1,22810,'Opening - No Text'),(5,1,32215,'Victorious State'),(5,1,45927,'Summon Friend'),(5,1,61437,'Opening'),(5,4,81,'Dodge'),(5,4,203,'Unarmed'),(5,4,204,'Defense'),(5,4,522,'SPELLDEFENSE (DND)'),(8,7,669,'Language Orcish'),(5,4,1180,'Daggers'),(5,4,1843,'Disarm'),(22,11,6246,'Closing'),(5,4,2382,'Generic'),(5,4,2479,'Honorless Target'),(5,4,2567,'Thrown'),(5,4,2764,'Throw'),(5,4,3050,'Detect'),(5,4,3365,'Opening'),(5,4,5227,'Underwater Breathing'),(5,4,6233,'Closing'),(5,4,6246,'Closing'),(5,4,6247,'Opening'),(5,4,6477,'Opening'),(5,4,6478,'Opening'),(5,4,6603,'Attack'),(5,4,7266,'Duel'),(5,4,7267,'Grovel'),(5,4,7355,'Stuck'),(5,4,7744,'Will of the Forsaken'),(5,4,8386,'Attacking'),(5,4,9077,'Leather'),(5,4,9078,'Cloth'),(5,4,9125,'Generic'),(5,4,16092,'Defensive State (DND)'),(8,6,669,'Language Orcish'),(5,4,20577,'Cannibalize'),(5,4,20579,'Shadow Resistance'),(5,4,21651,'Opening'),(5,4,21652,'Closing'),(5,4,22027,'Remove Insignia'),(5,4,22810,'Opening - No Text'),(5,4,45927,'Summon Friend'),(5,4,61437,'Opening'),(5,5,81,'Dodge'),(5,5,198,'One-Handed Maces'),(5,5,203,'Unarmed'),(5,5,204,'Defense'),(5,5,522,'SPELLDEFENSE (DND)'),(5,5,585,'Smite'),(8,5,669,'Language Orcish'),(5,5,1843,'Disarm'),(22,9,6246,'Closing'),(5,5,2382,'Generic'),(5,5,2479,'Honorless Target'),(5,5,3050,'Detect'),(5,5,3365,'Opening'),(5,5,5009,'Wands'),(5,5,5019,'Shoot'),(5,5,5227,'Underwater Breathing'),(5,5,6233,'Closing'),(5,5,6246,'Closing'),(5,5,6247,'Opening'),(5,5,6477,'Opening'),(5,5,6478,'Opening'),(5,5,6603,'Attack'),(5,5,7266,'Duel'),(5,5,7267,'Grovel'),(5,5,7355,'Stuck'),(5,5,7744,'Will of the Forsaken'),(5,5,8386,'Attacking'),(5,5,9078,'Cloth'),(5,5,9125,'Generic'),(8,4,669,'Language Orcish'),(5,5,20577,'Cannibalize'),(5,5,20579,'Shadow Resistance'),(5,5,21651,'Opening'),(5,5,21652,'Closing'),(5,5,22027,'Remove Insignia'),(5,5,22810,'Opening - No Text'),(5,5,45927,'Summon Friend'),(5,5,61437,'Opening'),(5,6,81,'Dodge'),(5,6,196,'One-Handed Axes'),(5,6,197,'Two-Handed Axes'),(5,6,200,'Polearms'),(5,6,201,'One-Handed Swords'),(5,6,202,'Two-Handed Swords'),(5,6,203,'Unarmed'),(5,6,204,'Defense'),(5,6,522,'SPELLDEFENSE (DND)'),(8,3,669,'Language Orcish'),(5,6,750,'Plate Mail'),(5,6,1843,'Disarm'),(5,6,2382,'Generic'),(5,6,2479,'Honorless Target'),(5,6,3050,'Detect'),(5,6,3127,'Parry'),(5,6,3275,'Linen Bandage'),(5,6,3276,'Heavy Linen Bandage'),(5,6,3277,'Wool Bandage'),(5,6,3278,'Heavy Wool Bandage'),(5,6,3365,'Opening'),(5,6,5227,'Underwater Breathing'),(5,6,6233,'Closing'),(5,6,6246,'Closing'),(5,6,6247,'Opening'),(5,6,6477,'Opening'),(5,6,6478,'Opening'),(5,6,6603,'Attack'),(5,6,7266,'Duel'),(5,6,7267,'Grovel'),(5,6,7355,'Stuck'),(5,6,7744,'Will of the Forsaken'),(5,6,7928,'Silk Bandage'),(5,6,7929,'Heavy Silk Bandage'),(5,6,7934,'Anti-Venom'),(5,6,8386,'Attacking'),(5,6,8737,'Mail'),(5,6,9077,'Leather'),(5,6,9078,'Cloth'),(5,6,9125,'Generic'),(5,6,10840,'Mageweave Bandage'),(5,6,10841,'Heavy Mageweave Bandage'),(5,6,10846,'First Aid'),(8,1,669,'Language Orcish'),(5,6,18629,'Runecloth Bandage'),(5,6,18630,'Heavy Runecloth Bandage'),(5,6,20577,'Cannibalize'),(5,6,20579,'Shadow Resistance'),(5,6,21651,'Opening'),(5,6,21652,'Closing'),(5,6,22027,'Remove Insignia'),(5,6,22810,'Opening - No Text'),(5,6,33391,'Journeyman Riding'),(5,6,45462,'Plague Strike'),(5,6,45477,'Icy Touch'),(5,6,45902,'Blood Strike'),(5,6,45903,'Offensive State (DND)'),(5,6,45927,'Summon Friend'),(5,6,47541,'Death Coil'),(5,6,48266,'Blood Presence'),(5,6,49410,'Forceful Deflection'),(5,6,49576,'Death Grip'),(5,6,52665,'Relic - Sigil'),(5,6,59879,'Blood Plague'),(5,6,59921,'Frost Fever'),(5,6,61437,'Opening'),(5,6,61455,'Runic Focus'),(5,8,81,'Dodge'),(5,8,133,'Fireball'),(22,9,6233,'Closing'),(5,8,203,'Unarmed'),(5,8,204,'Defense'),(5,8,227,'Staves'),(5,8,522,'SPELLDEFENSE (DND)'),(6,11,669,'Language Orcish'),(5,8,1843,'Disarm'),(5,8,2382,'Generic'),(5,8,2479,'Honorless Target'),(5,8,3050,'Detect'),(5,8,3365,'Opening'),(5,8,5009,'Wands'),(5,8,5019,'Shoot'),(5,8,5227,'Underwater Breathing'),(5,8,6233,'Closing'),(5,8,6246,'Closing'),(5,8,6247,'Opening'),(5,8,6477,'Opening'),(5,8,6478,'Opening'),(5,8,6603,'Attack'),(5,8,7266,'Duel'),(5,8,7267,'Grovel'),(5,8,7355,'Stuck'),(5,8,7744,'Will of the Forsaken'),(5,8,8386,'Attacking'),(5,8,9078,'Cloth'),(5,8,9125,'Generic'),(6,7,669,'Language Orcish'),(5,8,20577,'Cannibalize'),(5,8,20579,'Shadow Resistance'),(5,8,21651,'Opening'),(5,8,21652,'Closing'),(5,8,22027,'Remove Insignia'),(5,8,22810,'Opening - No Text'),(5,8,45927,'Summon Friend'),(5,8,61437,'Opening'),(5,9,81,'Dodge'),(5,9,203,'Unarmed'),(5,9,204,'Defense'),(5,9,522,'SPELLDEFENSE (DND)'),(6,6,669,'Language Orcish'),(22,9,21652,'Closing'),(5,9,1180,'Daggers'),(5,9,1843,'Disarm'),(5,9,2382,'Generic'),(5,9,2479,'Honorless Target'),(5,9,3050,'Detect'),(5,9,3365,'Opening'),(5,9,5009,'Wands'),(5,9,5019,'Shoot'),(5,9,5227,'Underwater Breathing'),(5,9,6233,'Closing'),(5,9,6246,'Closing'),(5,9,6247,'Opening'),(5,9,6477,'Opening'),(5,9,6478,'Opening'),(5,9,6603,'Attack'),(5,9,7266,'Duel'),(5,9,7267,'Grovel'),(5,9,7355,'Stuck'),(5,9,7744,'Will of the Forsaken'),(5,9,8386,'Attacking'),(5,9,9078,'Cloth'),(5,9,9125,'Generic'),(6,5,669,'Language Orcish'),(5,9,20577,'Cannibalize'),(5,9,20579,'Shadow Resistance'),(5,9,21651,'Opening'),(5,9,21652,'Closing'),(5,9,22027,'Remove Insignia'),(5,9,22810,'Opening - No Text'),(5,9,45927,'Summon Friend'),(1,9,58284,'Chaos Bolt Passive'),(5,9,61437,'Opening'),(6,1,88161,'Strike'),(6,1,81,'Dodge'),(6,1,107,'Block'),(6,1,196,'One-Handed Axes'),(6,1,198,'One-Handed Maces'),(6,1,199,'Two-Handed Maces'),(6,1,203,'Unarmed'),(6,1,204,'Defense'),(6,1,522,'SPELLDEFENSE (DND)'),(6,3,669,'Language Orcish'),(6,2,669,'Language Orcish'),(6,1,1843,'Disarm'),(6,1,2382,'Generic'),(6,1,2457,'Battle Stance'),(6,1,2479,'Honorless Target'),(6,1,3050,'Detect'),(6,1,3365,'Opening'),(6,1,5301,'Defensive State (DND)'),(6,1,6233,'Closing'),(6,1,6246,'Closing'),(6,1,6247,'Opening'),(6,1,6477,'Opening'),(6,1,6478,'Opening'),(6,1,7266,'Duel'),(6,1,7267,'Grovel'),(6,1,7355,'Stuck'),(7,1,6603,'Warrior Attack'),(6,1,8737,'Mail'),(6,1,9077,'Leather'),(6,1,9078,'Cloth'),(6,1,9116,'Shields'),(6,1,9125,'Generic'),(6,1,20549,'War Stomp'),(6,1,20550,'Endurance'),(6,1,20551,'Nature Resistance'),(6,1,20552,'Cultivation'),(6,1,21651,'Opening'),(6,1,21652,'Closing'),(6,1,22027,'Remove Insignia'),(6,1,22810,'Opening - No Text'),(6,1,32215,'Victorious State'),(6,1,45927,'Summon Friend'),(6,1,61437,'Opening'),(6,3,81,'Dodge'),(6,3,196,'One-Handed Axes'),(6,3,203,'Unarmed'),(6,3,204,'Defense'),(6,3,266,'Guns'),(6,3,522,'SPELLDEFENSE (DND)'),(6,1,669,'Language Orcish'),(5,9,669,'Language Orcish'),(6,3,1843,'Disarm'),(6,3,2382,'Generic'),(6,3,2479,'Honorless Target'),(22,8,6233,'Closing'),(6,3,3050,'Detect'),(6,3,3365,'Opening'),(6,3,6233,'Closing'),(6,3,6246,'Closing'),(6,3,6247,'Opening'),(6,3,6477,'Opening'),(6,3,6478,'Opening'),(6,3,6603,'Attack'),(6,3,7266,'Duel'),(6,3,7267,'Grovel'),(6,3,7355,'Stuck'),(6,3,8386,'Attacking'),(6,3,9077,'Leather'),(6,3,9078,'Cloth'),(6,3,9125,'Generic'),(6,3,13358,'Defensive State (DND)'),(6,3,20549,'War Stomp'),(6,3,20550,'Endurance'),(6,3,20551,'Nature Resistance'),(6,3,20552,'Cultivation'),(6,3,21651,'Opening'),(6,3,21652,'Closing'),(6,3,22027,'Remove Insignia'),(6,3,22810,'Opening - No Text'),(6,3,24949,'Defensive State 2 (DND)'),(6,3,34082,'Advantaged State (DND)'),(6,3,45927,'Summon Friend'),(6,3,61437,'Opening'),(6,6,81,'Dodge'),(6,6,196,'One-Handed Axes'),(6,6,197,'Two-Handed Axes'),(6,6,200,'Polearms'),(6,6,201,'One-Handed Swords'),(6,6,202,'Two-Handed Swords'),(6,6,203,'Unarmed'),(6,6,204,'Defense'),(6,6,522,'SPELLDEFENSE (DND)'),(5,8,669,'Language Orcish'),(5,6,669,'Language Orcish'),(6,6,750,'Plate Mail'),(6,6,1843,'Disarm'),(6,6,2382,'Generic'),(6,6,2479,'Honorless Target'),(6,6,3050,'Detect'),(6,6,3127,'Parry'),(6,6,3275,'Linen Bandage'),(6,6,3276,'Heavy Linen Bandage'),(6,6,3277,'Wool Bandage'),(6,6,3278,'Heavy Wool Bandage'),(6,6,3365,'Opening'),(6,6,6233,'Closing'),(6,6,6246,'Closing'),(6,6,6247,'Opening'),(6,6,6477,'Opening'),(6,6,6478,'Opening'),(6,6,6603,'Attack'),(6,6,7266,'Duel'),(6,6,7267,'Grovel'),(6,6,7355,'Stuck'),(6,6,7928,'Silk Bandage'),(6,6,7929,'Heavy Silk Bandage'),(6,6,7934,'Anti-Venom'),(6,6,8386,'Attacking'),(6,6,8737,'Mail'),(6,6,9077,'Leather'),(6,6,9078,'Cloth'),(6,6,9125,'Generic'),(6,6,10840,'Mageweave Bandage'),(6,6,10841,'Heavy Mageweave Bandage'),(6,6,10846,'First Aid'),(6,6,18629,'Runecloth Bandage'),(6,6,18630,'Heavy Runecloth Bandage'),(6,6,20549,'War Stomp'),(6,6,20550,'Endurance'),(6,6,20551,'Nature Resistance'),(6,6,20552,'Cultivation'),(6,6,21651,'Opening'),(6,6,21652,'Closing'),(6,6,22027,'Remove Insignia'),(6,6,22810,'Opening - No Text'),(6,6,33391,'Journeyman Riding'),(6,6,45462,'Plague Strike'),(6,6,45477,'Icy Touch'),(6,6,45902,'Blood Strike'),(6,6,45903,'Offensive State (DND)'),(6,6,45927,'Summon Friend'),(6,6,47541,'Death Coil'),(6,6,48266,'Blood Presence'),(6,6,49410,'Forceful Deflection'),(6,6,49576,'Death Grip'),(6,6,52665,'Relic - Sigil'),(6,6,59879,'Blood Plague'),(6,6,59921,'Frost Fever'),(6,6,61437,'Opening'),(6,6,61455,'Runic Focus'),(6,7,81,'Dodge'),(6,7,107,'Block'),(6,7,198,'One-Handed Maces'),(6,7,203,'Unarmed'),(6,7,204,'Defense'),(6,7,227,'Staves'),(22,8,6246,'Closing'),(6,7,403,'Lightning Bolt'),(6,7,522,'SPELLDEFENSE (DND)'),(5,5,669,'Language Orcish'),(5,4,669,'Language Orcish'),(6,7,1843,'Disarm'),(6,7,2382,'Generic'),(6,7,2479,'Honorless Target'),(6,7,3050,'Detect'),(6,7,3365,'Opening'),(6,7,6233,'Closing'),(6,7,6246,'Closing'),(6,7,6247,'Opening'),(6,7,6477,'Opening'),(6,7,6478,'Opening'),(6,7,6603,'Attack'),(6,7,7266,'Duel'),(6,7,7267,'Grovel'),(6,7,7355,'Stuck'),(6,7,8386,'Attacking'),(6,7,9077,'Leather'),(6,7,9078,'Cloth'),(6,7,9116,'Shields'),(6,7,9125,'Generic'),(6,7,20549,'War Stomp'),(6,7,20550,'Endurance'),(6,7,20551,'Nature Resistance'),(6,7,20552,'Cultivation'),(6,7,21651,'Opening'),(6,7,21652,'Closing'),(6,7,22027,'Remove Insignia'),(6,7,22810,'Opening - No Text'),(6,7,27763,'Relic - Totem'),(6,7,45927,'Summon Friend'),(6,7,61437,'Opening'),(6,11,81,'Dodge'),(6,11,198,'One-Handed Maces'),(6,11,203,'Unarmed'),(6,11,204,'Defense'),(6,11,227,'Staves'),(6,11,522,'SPELLDEFENSE (DND)'),(5,3,669,'Language Orcish'),(5,1,669,'Language Orcish'),(6,11,1843,'Disarm'),(6,11,2382,'Generic'),(6,11,2479,'Honorless Target'),(6,11,3050,'Detect'),(6,11,3365,'Opening'),(6,11,5176,'Wrath'),(22,8,21652,'Closing'),(6,11,6233,'Closing'),(6,11,6246,'Closing'),(6,11,6247,'Opening'),(6,11,6477,'Opening'),(6,11,6478,'Opening'),(6,11,6603,'Attack'),(6,11,7266,'Duel'),(6,11,7267,'Grovel'),(6,11,7355,'Stuck'),(6,11,8386,'Attacking'),(6,11,9077,'Leather'),(6,11,9078,'Cloth'),(6,11,9125,'Generic'),(6,11,20549,'War Stomp'),(6,11,20550,'Endurance'),(6,11,20551,'Nature Resistance'),(6,11,20552,'Cultivation'),(6,11,21651,'Opening'),(6,11,21652,'Closing'),(6,11,22027,'Remove Insignia'),(6,11,22810,'Opening - No Text'),(6,11,27764,'Relic - Idol'),(6,11,45927,'Summon Friend'),(6,11,61437,'Opening'),(5,1,88161,'Strike'),(7,1,81,'Dodge'),(7,1,107,'Block'),(7,1,198,'One-Handed Maces'),(7,1,201,'One-Handed Swords'),(7,1,203,'Unarmed'),(7,1,204,'Defense'),(7,1,522,'SPELLDEFENSE (DND)'),(2,9,669,'Language Orcish'),(7,1,1180,'Daggers'),(7,1,1843,'Disarm'),(7,1,2382,'Generic'),(7,1,2457,'Battle Stance'),(7,1,2479,'Honorless Target'),(7,1,3050,'Detect'),(7,1,3365,'Opening'),(7,1,5301,'Defensive State (DND)'),(7,1,6233,'Closing'),(7,1,6246,'Closing'),(7,1,6247,'Opening'),(7,1,6477,'Opening'),(7,1,6478,'Opening'),(7,1,7266,'Duel'),(7,1,7267,'Grovel'),(2,8,669,'Language Orcish'),(7,1,7355,'Stuck'),(6,1,6603,'Warrior Attack'),(7,1,8737,'Mail'),(7,1,9077,'Leather'),(7,1,9078,'Cloth'),(7,1,9116,'Shields'),(7,1,9125,'Generic'),(7,1,20589,'Escape Artist'),(7,1,20591,'Expansive Mind'),(7,1,20592,'Arcane Resistance'),(7,1,20593,'Engineering Specialization'),(7,1,21651,'Opening'),(7,1,21652,'Closing'),(7,1,22027,'Remove Insignia'),(7,1,22810,'Opening - No Text'),(7,1,32215,'Victorious State'),(7,1,45927,'Summon Friend'),(7,1,61437,'Opening'),(7,4,81,'Dodge'),(7,4,203,'Unarmed'),(7,4,204,'Defense'),(7,4,522,'SPELLDEFENSE (DND)'),(2,7,669,'Language Orcish'),(7,4,1180,'Daggers'),(7,4,1843,'Disarm'),(22,6,6246,'Closing'),(7,4,2382,'Generic'),(7,4,2479,'Honorless Target'),(7,4,2567,'Thrown'),(7,4,2764,'Throw'),(7,4,3050,'Detect'),(7,4,3365,'Opening'),(7,4,6233,'Closing'),(7,4,6246,'Closing'),(7,4,6247,'Opening'),(7,4,6477,'Opening'),(7,4,6478,'Opening'),(7,4,6603,'Attack'),(7,4,7266,'Duel'),(7,4,7267,'Grovel'),(2,6,669,'Language Orcish'),(7,4,7355,'Stuck'),(7,4,8386,'Attacking'),(7,4,9077,'Leather'),(7,4,9078,'Cloth'),(7,4,9125,'Generic'),(7,4,16092,'Defensive State (DND)'),(7,4,20589,'Escape Artist'),(7,4,20591,'Expansive Mind'),(7,4,20592,'Arcane Resistance'),(7,4,20593,'Engineering Specialization'),(7,4,21651,'Opening'),(7,4,21652,'Closing'),(7,4,22027,'Remove Insignia'),(7,4,22810,'Opening - No Text'),(7,4,45927,'Summon Friend'),(7,4,61437,'Opening'),(7,6,81,'Dodge'),(7,6,196,'One-Handed Axes'),(7,6,197,'Two-Handed Axes'),(7,6,200,'Polearms'),(7,6,201,'One-Handed Swords'),(7,6,202,'Two-Handed Swords'),(7,6,203,'Unarmed'),(7,6,204,'Defense'),(7,6,522,'SPELLDEFENSE (DND)'),(2,4,669,'Language Orcish'),(7,6,750,'Plate Mail'),(7,6,1843,'Disarm'),(7,6,2382,'Generic'),(7,6,2479,'Honorless Target'),(7,6,3050,'Detect'),(7,6,3127,'Parry'),(7,6,3275,'Linen Bandage'),(7,6,3276,'Heavy Linen Bandage'),(7,6,3277,'Wool Bandage'),(7,6,3278,'Heavy Wool Bandage'),(7,6,3365,'Opening'),(7,6,6233,'Closing'),(7,6,6246,'Closing'),(7,6,6247,'Opening'),(7,6,6477,'Opening'),(7,6,6478,'Opening'),(7,6,6603,'Attack'),(7,6,7266,'Duel'),(7,6,7267,'Grovel'),(2,3,669,'Language Orcish'),(7,6,7355,'Stuck'),(7,6,7928,'Silk Bandage'),(7,6,7929,'Heavy Silk Bandage'),(7,6,7934,'Anti-Venom'),(7,6,8386,'Attacking'),(7,6,8737,'Mail'),(7,6,9077,'Leather'),(7,6,9078,'Cloth'),(7,6,9125,'Generic'),(7,6,10840,'Mageweave Bandage'),(7,6,10841,'Heavy Mageweave Bandage'),(7,6,10846,'First Aid'),(7,6,18629,'Runecloth Bandage'),(7,6,18630,'Heavy Runecloth Bandage'),(7,6,20589,'Escape Artist'),(7,6,20591,'Expansive Mind'),(7,6,20592,'Arcane Resistance'),(7,6,20593,'Engineering Specialization'),(7,6,21651,'Opening'),(7,6,21652,'Closing'),(7,6,22027,'Remove Insignia'),(7,6,22810,'Opening - No Text'),(7,6,33391,'Journeyman Riding'),(7,6,45462,'Plague Strike'),(7,6,45477,'Icy Touch'),(7,6,45902,'Blood Strike'),(7,6,45903,'Offensive State (DND)'),(7,6,45927,'Summon Friend'),(7,6,47541,'Death Coil'),(7,6,48266,'Blood Presence'),(7,6,49410,'Forceful Deflection'),(7,6,49576,'Death Grip'),(7,6,52665,'Relic - Sigil'),(7,6,59879,'Blood Plague'),(7,6,59921,'Frost Fever'),(7,6,61437,'Opening'),(7,6,61455,'Runic Focus'),(7,8,81,'Dodge'),(7,8,133,'Fireball'),(22,6,21652,'Closing'),(7,8,203,'Unarmed'),(7,8,204,'Defense'),(7,8,227,'Staves'),(7,8,522,'SPELLDEFENSE (DND)'),(2,1,669,'Language Orcish'),(7,8,1843,'Disarm'),(7,8,2382,'Generic'),(7,8,2479,'Honorless Target'),(7,8,3050,'Detect'),(7,8,3365,'Opening'),(7,8,5009,'Wands'),(7,8,5019,'Shoot'),(7,8,6233,'Closing'),(7,8,6246,'Closing'),(7,8,6247,'Opening'),(7,8,6477,'Opening'),(7,8,6478,'Opening'),(7,8,6603,'Attack'),(7,8,7266,'Duel'),(7,8,7267,'Grovel'),(22,11,668,'Language Common'),(7,8,7355,'Stuck'),(7,8,8386,'Attacking'),(7,8,9078,'Cloth'),(7,8,9125,'Generic'),(7,8,20589,'Escape Artist'),(7,8,20591,'Expansive Mind'),(7,8,20592,'Arcane Resistance'),(7,8,20593,'Engineering Specialization'),(7,8,21651,'Opening'),(7,8,21652,'Closing'),(7,8,22027,'Remove Insignia'),(7,8,22810,'Opening - No Text'),(7,8,45927,'Summon Friend'),(7,8,61437,'Opening'),(7,9,81,'Dodge'),(7,9,203,'Unarmed'),(7,9,204,'Defense'),(7,9,522,'SPELLDEFENSE (DND)'),(22,9,668,'Language Common'),(22,6,6233,'Closing'),(7,9,1180,'Daggers'),(7,9,1843,'Disarm'),(7,9,2382,'Generic'),(7,9,2479,'Honorless Target'),(7,9,3050,'Detect'),(7,9,3365,'Opening'),(7,9,5009,'Wands'),(7,9,5019,'Shoot'),(7,9,6233,'Closing'),(7,9,6246,'Closing'),(7,9,6247,'Opening'),(7,9,6477,'Opening'),(7,9,6478,'Opening'),(7,9,6603,'Attack'),(7,9,7266,'Duel'),(7,9,7267,'Grovel'),(22,8,668,'Language Common'),(7,9,7355,'Stuck'),(7,9,8386,'Attacking'),(7,9,9078,'Cloth'),(7,9,9125,'Generic'),(7,9,20589,'Escape Artist'),(7,9,20591,'Expansive Mind'),(7,9,20592,'Arcane Resistance'),(7,9,20593,'Engineering Specialization'),(7,9,21651,'Opening'),(7,9,21652,'Closing'),(7,9,22027,'Remove Insignia'),(7,9,22810,'Opening - No Text'),(7,9,45927,'Summon Friend'),(7,9,61437,'Opening'),(4,1,88161,'Strike'),(8,1,81,'Dodge'),(8,1,107,'Block'),(8,1,196,'One-Handed Axes'),(8,1,203,'Unarmed'),(8,1,204,'Defense'),(8,1,522,'SPELLDEFENSE (DND)'),(22,6,668,'Language Common'),(8,1,1180,'Daggers'),(8,1,1843,'Disarm'),(8,1,2382,'Generic'),(8,1,2457,'Battle Stance'),(8,1,2479,'Honorless Target'),(8,1,2567,'Thrown'),(8,1,2764,'Throw'),(8,1,3050,'Detect'),(8,1,3365,'Opening'),(8,1,5301,'Defensive State (DND)'),(8,1,6233,'Closing'),(8,1,6246,'Closing'),(8,1,6247,'Opening'),(8,1,6477,'Opening'),(8,1,6478,'Opening'),(8,1,7266,'Duel'),(8,1,7267,'Grovel'),(22,5,668,'Language Common'),(8,1,7355,'Stuck'),(5,1,6603,'Warrior Attack'),(8,1,8737,'Mail'),(8,1,9077,'Leather'),(8,1,9078,'Cloth'),(8,1,9116,'Shields'),(8,1,9125,'Generic'),(8,1,20555,'Regeneration'),(8,1,20557,'Beast Slaying'),(8,1,20558,'Throwing Specialization'),(8,1,21651,'Opening'),(8,1,21652,'Closing'),(8,1,22027,'Remove Insignia'),(8,1,22810,'Opening - No Text'),(8,1,26290,'Bow Specialization'),(8,1,26297,'Berserking'),(8,1,32215,'Victorious State'),(8,1,45927,'Summon Friend'),(8,1,58943,'Da Voodoo Shuffle'),(8,1,61437,'Opening'),(8,3,81,'Dodge'),(8,3,196,'One-Handed Axes'),(8,3,203,'Unarmed'),(8,3,204,'Defense'),(8,3,264,'Bows'),(8,3,522,'SPELLDEFENSE (DND)'),(22,4,668,'Language Common'),(8,3,1843,'Disarm'),(8,3,2382,'Generic'),(8,3,2479,'Honorless Target'),(22,5,21652,'Closing'),(8,3,3050,'Detect'),(8,3,3365,'Opening'),(8,3,6233,'Closing'),(8,3,6246,'Closing'),(8,3,6247,'Opening'),(8,3,6477,'Opening'),(8,3,6478,'Opening'),(8,3,6603,'Attack'),(8,3,7266,'Duel'),(8,3,7267,'Grovel'),(22,3,668,'Language Common'),(8,3,7355,'Stuck'),(8,3,8386,'Attacking'),(8,3,9077,'Leather'),(8,3,9078,'Cloth'),(8,3,9125,'Generic'),(8,3,13358,'Defensive State (DND)'),(8,3,26297,'Berserking'),(8,3,20555,'Regeneration'),(8,3,20557,'Beast Slaying'),(8,3,20558,'Throwing Specialization'),(8,3,21651,'Opening'),(8,3,21652,'Closing'),(8,3,22027,'Remove Insignia'),(8,3,22810,'Opening - No Text'),(8,3,24949,'Defensive State 2 (DND)'),(8,3,26290,'Bow Specialization'),(8,3,34082,'Advantaged State (DND)'),(8,3,45927,'Summon Friend'),(8,3,58943,'Da Voodoo Shuffle'),(8,3,61437,'Opening'),(8,4,81,'Dodge'),(8,4,203,'Unarmed'),(8,4,204,'Defense'),(8,4,522,'SPELLDEFENSE (DND)'),(22,1,668,'Language Common'),(8,4,1180,'Daggers'),(8,4,1843,'Disarm'),(22,5,6246,'Closing'),(8,4,2382,'Generic'),(8,4,2479,'Honorless Target'),(8,4,2567,'Thrown'),(8,4,2764,'Throw'),(8,4,3050,'Detect'),(8,4,3365,'Opening'),(8,4,6233,'Closing'),(8,4,6246,'Closing'),(8,4,6247,'Opening'),(8,4,6477,'Opening'),(8,4,6478,'Opening'),(8,4,6603,'Attack'),(8,4,7266,'Duel'),(8,4,7267,'Grovel'),(11,8,668,'Language Common'),(8,4,7355,'Stuck'),(8,4,8386,'Attacking'),(8,4,9077,'Leather'),(8,4,9078,'Cloth'),(8,4,9125,'Generic'),(8,4,16092,'Defensive State (DND)'),(8,4,20555,'Regeneration'),(8,4,20557,'Beast Slaying'),(8,4,20558,'Throwing Specialization'),(8,4,21651,'Opening'),(8,4,21652,'Closing'),(8,4,22027,'Remove Insignia'),(8,4,22810,'Opening - No Text'),(8,4,26290,'Bow Specialization'),(8,4,26297,'Berserking'),(8,4,45927,'Summon Friend'),(8,4,58943,'Da Voodoo Shuffle'),(8,4,61437,'Opening'),(8,5,81,'Dodge'),(8,5,198,'One-Handed Maces'),(8,5,203,'Unarmed'),(8,5,204,'Defense'),(8,5,522,'SPELLDEFENSE (DND)'),(8,5,585,'Smite'),(11,7,668,'Language Common'),(8,5,1843,'Disarm'),(22,5,6233,'Closing'),(8,5,2382,'Generic'),(8,5,2479,'Honorless Target'),(8,5,3050,'Detect'),(8,5,3365,'Opening'),(8,5,5009,'Wands'),(8,5,5019,'Shoot'),(8,5,6233,'Closing'),(8,5,6246,'Closing'),(8,5,6247,'Opening'),(8,5,6477,'Opening'),(8,5,6478,'Opening'),(8,5,6603,'Attack'),(8,5,7266,'Duel'),(8,5,7267,'Grovel'),(11,6,668,'Language Common'),(8,5,7355,'Stuck'),(8,5,8386,'Attacking'),(8,5,9078,'Cloth'),(8,5,9125,'Generic'),(8,5,26297,'Berserking'),(8,5,20555,'Regeneration'),(8,5,20557,'Beast Slaying'),(8,5,20558,'Throwing Specialization'),(8,5,21651,'Opening'),(8,5,21652,'Closing'),(8,5,22027,'Remove Insignia'),(8,5,22810,'Opening - No Text'),(8,5,26290,'Bow Specialization'),(8,5,45927,'Summon Friend'),(8,5,58943,'Da Voodoo Shuffle'),(8,5,61437,'Opening'),(8,6,81,'Dodge'),(8,6,196,'One-Handed Axes'),(8,6,197,'Two-Handed Axes'),(8,6,200,'Polearms'),(8,6,201,'One-Handed Swords'),(8,6,202,'Two-Handed Swords'),(8,6,203,'Unarmed'),(8,6,204,'Defense'),(8,6,522,'SPELLDEFENSE (DND)'),(11,5,668,'Language Common'),(8,6,750,'Plate Mail'),(8,6,1843,'Disarm'),(8,6,2382,'Generic'),(8,6,2479,'Honorless Target'),(8,6,3050,'Detect'),(8,6,3127,'Parry'),(8,6,3275,'Linen Bandage'),(8,6,3276,'Heavy Linen Bandage'),(8,6,3277,'Wool Bandage'),(8,6,3278,'Heavy Wool Bandage'),(8,6,3365,'Opening'),(8,6,6233,'Closing'),(8,6,6246,'Closing'),(8,6,6247,'Opening'),(8,6,6477,'Opening'),(8,6,6478,'Opening'),(8,6,6603,'Attack'),(8,6,7266,'Duel'),(8,6,7267,'Grovel'),(11,3,668,'Language Common'),(8,6,7355,'Stuck'),(8,6,7928,'Silk Bandage'),(8,6,7929,'Heavy Silk Bandage'),(8,6,7934,'Anti-Venom'),(8,6,8386,'Attacking'),(8,6,8737,'Mail'),(8,6,9077,'Leather'),(8,6,9078,'Cloth'),(8,6,9125,'Generic'),(8,6,10840,'Mageweave Bandage'),(8,6,10841,'Heavy Mageweave Bandage'),(8,6,10846,'First Aid'),(8,6,18629,'Runecloth Bandage'),(8,6,18630,'Heavy Runecloth Bandage'),(8,6,20555,'Regeneration'),(8,6,20557,'Beast Slaying'),(8,6,20558,'Throwing Specialization'),(8,6,21651,'Opening'),(8,6,21652,'Closing'),(8,6,22027,'Remove Insignia'),(8,6,22810,'Opening - No Text'),(8,6,26290,'Bow Specialization'),(8,6,33391,'Journeyman Riding'),(8,6,45462,'Plague Strike'),(8,6,45477,'Icy Touch'),(8,6,45902,'Blood Strike'),(8,6,45903,'Offensive State (DND)'),(8,6,45927,'Summon Friend'),(8,6,47541,'Death Coil'),(8,6,48266,'Blood Presence'),(8,6,49410,'Forceful Deflection'),(8,6,49576,'Death Grip'),(8,6,26297,'Berserking'),(8,6,52665,'Relic - Sigil'),(8,6,58943,'Da Voodoo Shuffle'),(8,6,59879,'Blood Plague'),(8,6,59921,'Frost Fever'),(8,6,61437,'Opening'),(8,6,61455,'Runic Focus'),(8,7,81,'Dodge'),(8,7,107,'Block'),(8,7,198,'One-Handed Maces'),(8,7,203,'Unarmed'),(8,7,204,'Defense'),(8,7,227,'Staves'),(22,4,21652,'Closing'),(8,7,403,'Lightning Bolt'),(8,7,522,'SPELLDEFENSE (DND)'),(11,2,668,'Language Common'),(8,7,1843,'Disarm'),(8,7,2382,'Generic'),(8,7,2479,'Honorless Target'),(8,7,3050,'Detect'),(8,7,3365,'Opening'),(8,7,6233,'Closing'),(8,7,6246,'Closing'),(8,7,6247,'Opening'),(8,7,6477,'Opening'),(8,7,6478,'Opening'),(8,7,6603,'Attack'),(8,7,7266,'Duel'),(8,7,7267,'Grovel'),(11,1,668,'Language Common'),(8,7,7355,'Stuck'),(8,7,8386,'Attacking'),(8,7,9077,'Leather'),(8,7,9078,'Cloth'),(8,7,9116,'Shields'),(8,7,9125,'Generic'),(8,7,26297,'Berserking'),(8,7,20555,'Regeneration'),(8,7,20557,'Beast Slaying'),(8,7,20558,'Throwing Specialization'),(8,7,21651,'Opening'),(8,7,21652,'Closing'),(8,7,22027,'Remove Insignia'),(8,7,22810,'Opening - No Text'),(8,7,26290,'Bow Specialization'),(8,7,27763,'Relic - Totem'),(8,7,45927,'Summon Friend'),(8,7,58943,'Da Voodoo Shuffle'),(8,7,61437,'Opening'),(8,8,81,'Dodge'),(8,8,133,'Fireball'),(22,4,6233,'Closing'),(8,8,203,'Unarmed'),(8,8,204,'Defense'),(8,8,227,'Staves'),(8,8,522,'SPELLDEFENSE (DND)'),(7,9,668,'Language Common'),(8,8,1843,'Disarm'),(8,8,2382,'Generic'),(8,8,2479,'Honorless Target'),(8,8,3050,'Detect'),(8,8,3365,'Opening'),(8,8,5009,'Wands'),(8,8,5019,'Shoot'),(8,8,6233,'Closing'),(8,8,6246,'Closing'),(8,8,6247,'Opening'),(8,8,6477,'Opening'),(8,8,6478,'Opening'),(8,8,6603,'Attack'),(8,8,7266,'Duel'),(8,8,7267,'Grovel'),(7,8,668,'Language Common'),(8,8,7355,'Stuck'),(8,8,8386,'Attacking'),(8,8,9078,'Cloth'),(8,8,9125,'Generic'),(8,8,26297,'Berserking'),(8,8,20555,'Regeneration'),(8,8,20557,'Beast Slaying'),(8,8,20558,'Throwing Specialization'),(8,8,21651,'Opening'),(8,8,21652,'Closing'),(8,8,22027,'Remove Insignia'),(8,8,22810,'Opening - No Text'),(8,8,26290,'Bow Specialization'),(8,8,45927,'Summon Friend'),(8,8,58943,'Da Voodoo Shuffle'),(8,8,61437,'Opening'),(10,2,81,'Dodge'),(10,2,107,'Block'),(10,2,201,'One-Handed Swords'),(10,2,202,'Two-Handed Swords'),(10,2,203,'Unarmed'),(10,2,204,'Defense'),(10,2,522,'SPELLDEFENSE (DND)'),(22,4,6246,'Closing'),(7,6,668,'Language Common'),(7,5,668,'Language Common'),(10,2,822,'Magic Resistance'),(10,2,2382,'Generic'),(10,2,2479,'Honorless Target'),(10,2,3050,'Detect'),(10,2,3365,'Opening'),(10,2,6233,'Closing'),(10,2,6246,'Closing'),(10,2,6247,'Opening'),(10,2,6477,'Opening'),(10,2,6478,'Opening'),(10,2,6603,'Attack'),(10,2,7266,'Duel'),(10,2,7267,'Grovel'),(10,2,7355,'Stuck'),(10,2,8386,'Attacking'),(10,2,8737,'Mail'),(10,2,9077,'Leather'),(10,2,9078,'Cloth'),(10,2,9116,'Shields'),(10,2,9125,'Generic'),(22,3,6233,'Closing'),(10,2,21651,'Opening'),(10,2,21652,'Closing'),(10,2,22027,'Remove Insignia'),(10,2,22810,'Opening - No Text'),(10,2,27762,'Relic - Libram'),(10,2,28730,'Arcane Torrent'),(10,2,28877,'Arcane Affinity'),(10,3,81,'Dodge'),(10,3,203,'Unarmed'),(10,3,204,'Defense'),(10,3,264,'Bows'),(10,3,522,'SPELLDEFENSE (DND)'),(7,4,668,'Language Common'),(7,1,668,'Language Common'),(10,3,822,'Magic Resistance'),(10,3,1180,'Daggers'),(10,3,2382,'Generic'),(10,3,2479,'Honorless Target'),(22,3,6246,'Closing'),(10,3,3050,'Detect'),(10,3,3365,'Opening'),(10,3,6233,'Closing'),(10,3,6246,'Closing'),(10,3,6247,'Opening'),(10,3,6477,'Opening'),(10,3,6478,'Opening'),(10,3,6603,'Attack'),(10,3,7266,'Duel'),(10,3,7267,'Grovel'),(10,3,7355,'Stuck'),(10,3,8386,'Attacking'),(10,3,9077,'Leather'),(10,3,9078,'Cloth'),(10,3,9125,'Generic'),(10,3,13358,'Defensive State (DND)'),(10,3,21651,'Opening'),(10,3,21652,'Closing'),(10,3,22027,'Remove Insignia'),(10,3,22810,'Opening - No Text'),(10,3,24949,'Defensive State 2 (DND)'),(10,3,80483,'Arcane Torrent'),(10,3,28877,'Arcane Affinity'),(10,3,34082,'Advantaged State (DND)'),(10,4,81,'Dodge'),(10,4,203,'Unarmed'),(10,4,204,'Defense'),(10,4,522,'SPELLDEFENSE (DND)'),(4,11,668,'Language Common'),(4,8,668,'Language Common'),(10,4,822,'Magic Resistance'),(10,4,1180,'Daggers'),(22,3,21652,'Closing'),(10,4,2382,'Generic'),(10,4,2479,'Honorless Target'),(10,4,2567,'Thrown'),(10,4,2764,'Throw'),(10,4,3050,'Detect'),(10,4,3365,'Opening'),(10,4,6233,'Closing'),(10,4,6246,'Closing'),(10,4,6247,'Opening'),(10,4,6477,'Opening'),(10,4,6478,'Opening'),(10,4,6603,'Attack'),(10,4,7266,'Duel'),(10,4,7267,'Grovel'),(10,4,7355,'Stuck'),(10,4,8386,'Attacking'),(10,4,9077,'Leather'),(10,4,9078,'Cloth'),(10,4,9125,'Generic'),(10,4,16092,'Defensive State (DND)'),(10,4,21651,'Opening'),(10,4,21652,'Closing'),(10,4,22027,'Remove Insignia'),(10,4,22810,'Opening - No Text'),(10,4,25046,'Arcane Torrent'),(10,4,28877,'Arcane Affinity'),(10,5,81,'Dodge'),(10,5,198,'One-Handed Maces'),(10,5,203,'Unarmed'),(10,5,204,'Defense'),(10,5,522,'SPELLDEFENSE (DND)'),(10,5,585,'Smite'),(4,6,668,'Language Common'),(4,5,668,'Language Common'),(10,5,822,'Magic Resistance'),(22,1,6233,'Closing'),(10,5,2382,'Generic'),(10,5,2479,'Honorless Target'),(10,5,3050,'Detect'),(10,5,3365,'Opening'),(10,5,5009,'Wands'),(10,5,5019,'Shoot'),(10,5,6233,'Closing'),(10,5,6246,'Closing'),(10,5,6247,'Opening'),(10,5,6477,'Opening'),(10,5,6478,'Opening'),(10,5,6603,'Attack'),(10,5,7266,'Duel'),(10,5,7267,'Grovel'),(10,5,7355,'Stuck'),(10,5,8386,'Attacking'),(10,5,9078,'Cloth'),(10,5,9125,'Generic'),(10,5,21651,'Opening'),(10,5,21652,'Closing'),(10,5,22027,'Remove Insignia'),(10,5,22810,'Opening - No Text'),(10,5,28730,'Arcane Torrent'),(10,5,28877,'Arcane Affinity'),(10,6,81,'Dodge'),(10,6,196,'One-Handed Axes'),(10,6,197,'Two-Handed Axes'),(10,6,200,'Polearms'),(10,6,201,'One-Handed Swords'),(10,6,202,'Two-Handed Swords'),(10,6,203,'Unarmed'),(10,6,204,'Defense'),(10,6,522,'SPELLDEFENSE (DND)'),(4,4,668,'Language Common'),(10,6,750,'Plate Mail'),(4,3,668,'Language Common'),(10,6,822,'Magic Resistance'),(10,6,1843,'Disarm'),(10,6,2382,'Generic'),(10,6,2479,'Honorless Target'),(10,6,3050,'Detect'),(10,6,3127,'Parry'),(10,6,3275,'Linen Bandage'),(10,6,3276,'Heavy Linen Bandage'),(10,6,3277,'Wool Bandage'),(10,6,3278,'Heavy Wool Bandage'),(10,6,3365,'Opening'),(10,6,6233,'Closing'),(10,6,6246,'Closing'),(10,6,6247,'Opening'),(10,6,6477,'Opening'),(10,6,6478,'Opening'),(10,6,6603,'Attack'),(10,6,7266,'Duel'),(10,6,7267,'Grovel'),(10,6,7355,'Stuck'),(10,6,7928,'Silk Bandage'),(10,6,7929,'Heavy Silk Bandage'),(10,6,7934,'Anti-Venom'),(10,6,8386,'Attacking'),(10,6,8737,'Mail'),(10,6,9077,'Leather'),(10,6,9078,'Cloth'),(10,6,9125,'Generic'),(10,6,10840,'Mageweave Bandage'),(10,6,10841,'Heavy Mageweave Bandage'),(10,6,10846,'First Aid'),(10,6,18629,'Runecloth Bandage'),(10,6,18630,'Heavy Runecloth Bandage'),(10,6,21651,'Opening'),(10,6,21652,'Closing'),(10,6,22027,'Remove Insignia'),(10,6,22810,'Opening - No Text'),(10,6,28877,'Arcane Affinity'),(10,6,33391,'Journeyman Riding'),(10,6,45462,'Plague Strike'),(10,6,45477,'Icy Touch'),(10,6,45902,'Blood Strike'),(10,6,45903,'Offensive State (DND)'),(10,6,45927,'Summon Friend'),(10,6,47541,'Death Coil'),(10,6,48266,'Blood Presence'),(10,6,49410,'Forceful Deflection'),(10,6,49576,'Death Grip'),(10,6,50613,'Arcane Torrent'),(10,6,52665,'Relic - Sigil'),(10,6,59879,'Blood Plague'),(10,6,59921,'Frost Fever'),(10,6,61437,'Opening'),(10,6,61455,'Runic Focus'),(10,8,81,'Dodge'),(10,8,133,'Fireball'),(22,1,6246,'Closing'),(10,8,203,'Unarmed'),(10,8,204,'Defense'),(10,8,227,'Staves'),(10,8,522,'SPELLDEFENSE (DND)'),(4,1,668,'Language Common'),(3,9,668,'Language Common'),(10,8,822,'Magic Resistance'),(10,8,2382,'Generic'),(10,8,2479,'Honorless Target'),(10,8,3050,'Detect'),(10,8,3365,'Opening'),(10,8,5009,'Wands'),(10,8,5019,'Shoot'),(10,8,6233,'Closing'),(10,8,6246,'Closing'),(10,8,6247,'Opening'),(10,8,6477,'Opening'),(10,8,6478,'Opening'),(10,8,6603,'Attack'),(10,8,7266,'Duel'),(10,8,7267,'Grovel'),(10,8,7355,'Stuck'),(10,8,8386,'Attacking'),(10,8,9078,'Cloth'),(10,8,9125,'Generic'),(10,8,21651,'Opening'),(10,8,21652,'Closing'),(10,8,22027,'Remove Insignia'),(10,8,22810,'Opening - No Text'),(10,8,28730,'Arcane Torrent'),(10,8,28877,'Arcane Affinity'),(10,9,81,'Dodge'),(10,9,203,'Unarmed'),(10,9,204,'Defense'),(10,9,522,'SPELLDEFENSE (DND)'),(3,8,668,'Language Common'),(22,1,21652,'Closing'),(3,7,668,'Language Common'),(10,9,822,'Magic Resistance'),(10,9,1180,'Daggers'),(10,9,2382,'Generic'),(10,9,2479,'Honorless Target'),(10,9,3050,'Detect'),(10,9,3365,'Opening'),(10,9,5009,'Wands'),(10,9,5019,'Shoot'),(10,9,6233,'Closing'),(10,9,6246,'Closing'),(10,9,6247,'Opening'),(10,9,6477,'Opening'),(10,9,6478,'Opening'),(10,9,6603,'Attack'),(10,9,7266,'Duel'),(10,9,7267,'Grovel'),(10,9,7355,'Stuck'),(10,9,8386,'Attacking'),(10,9,9078,'Cloth'),(10,9,9125,'Generic'),(10,9,21651,'Opening'),(10,9,21652,'Closing'),(10,9,22027,'Remove Insignia'),(10,9,22810,'Opening - No Text'),(10,9,28730,'Arcane Torrent'),(10,9,28877,'Arcane Affinity'),(3,1,88161,'Strike'),(11,1,81,'Dodge'),(11,1,107,'Block'),(11,1,198,'One-Handed Maces'),(11,1,201,'One-Handed Swords'),(1,1,202,'Two-Handed Swords'),(11,1,203,'Unarmed'),(11,1,204,'Defense'),(11,1,522,'SPELLDEFENSE (DND)'),(3,6,668,'Language Common'),(11,1,1843,'Disarm'),(11,1,2382,'Generic'),(11,1,2457,'Battle Stance'),(11,1,2479,'Honorless Target'),(11,1,3050,'Detect'),(11,1,3365,'Opening'),(11,1,5301,'Defensive State (DND)'),(11,1,6233,'Closing'),(11,1,6246,'Closing'),(11,1,6247,'Opening'),(11,1,6477,'Opening'),(11,1,6478,'Opening'),(11,1,6562,'Heroic Presence'),(11,1,7266,'Duel'),(11,1,7267,'Grovel'),(11,1,7355,'Stuck'),(4,1,6603,'Warrior Attack'),(11,1,8737,'Mail'),(11,1,9077,'Leather'),(11,1,9078,'Cloth'),(11,1,9116,'Shields'),(11,1,9125,'Generic'),(11,1,21651,'Opening'),(11,1,21652,'Closing'),(11,1,22027,'Remove Insignia'),(11,1,22810,'Opening - No Text'),(11,1,28875,'Gemcutting'),(11,1,28880,'Gift of the Naaru'),(3,5,668,'Language Common'),(11,1,32215,'Victorious State'),(11,1,45927,'Summon Friend'),(11,1,61437,'Opening'),(11,2,81,'Dodge'),(11,2,107,'Block'),(11,2,198,'One-Handed Maces'),(11,2,199,'Two-Handed Maces'),(11,2,203,'Unarmed'),(11,2,204,'Defense'),(11,2,522,'SPELLDEFENSE (DND)'),(10,1,6233,'Closing'),(3,4,668,'Language Common'),(11,2,1843,'Disarm'),(11,2,2382,'Generic'),(11,2,2479,'Honorless Target'),(11,2,3050,'Detect'),(11,2,3365,'Opening'),(11,2,6233,'Closing'),(11,2,6246,'Closing'),(11,2,6247,'Opening'),(11,2,6477,'Opening'),(11,2,6478,'Opening'),(11,2,6562,'Heroic Presence'),(11,2,6603,'Attack'),(11,2,7266,'Duel'),(11,2,7267,'Grovel'),(11,2,7355,'Stuck'),(11,2,8386,'Attacking'),(11,2,8737,'Mail'),(11,2,9077,'Leather'),(11,2,9078,'Cloth'),(11,2,9116,'Shields'),(11,2,9125,'Generic'),(10,1,21652,'Closing'),(11,2,21651,'Opening'),(11,2,21652,'Closing'),(11,2,22027,'Remove Insignia'),(11,2,22810,'Opening - No Text'),(11,2,27762,'Relic - Libram'),(11,2,28875,'Gemcutting'),(3,3,668,'Language Common'),(11,2,45927,'Summon Friend'),(11,8,59541,'Shadow Resistance'),(11,2,59542,'Gift of the Naaru'),(11,2,61437,'Opening'),(11,3,81,'Dodge'),(11,3,201,'One-Handed Swords'),(11,3,203,'Unarmed'),(11,3,204,'Defense'),(11,3,522,'SPELLDEFENSE (DND)'),(3,2,668,'Language Common'),(11,3,1843,'Disarm'),(11,3,2382,'Generic'),(11,3,2479,'Honorless Target'),(10,1,6246,'Closing'),(11,3,3050,'Detect'),(11,3,3365,'Opening'),(11,3,5011,'Crossbows'),(11,3,6233,'Closing'),(11,3,6246,'Closing'),(11,3,6247,'Opening'),(11,3,6477,'Opening'),(11,3,6478,'Opening'),(11,3,6562,'Heroic Presence'),(11,3,6603,'Attack'),(11,3,7266,'Duel'),(11,3,7267,'Grovel'),(11,3,7355,'Stuck'),(11,3,8386,'Attacking'),(11,3,9077,'Leather'),(11,3,9078,'Cloth'),(11,3,9125,'Generic'),(11,3,13358,'Defensive State (DND)'),(11,3,21651,'Opening'),(11,3,21652,'Closing'),(11,3,22027,'Remove Insignia'),(11,3,22810,'Opening - No Text'),(11,3,24949,'Defensive State 2 (DND)'),(11,3,28875,'Gemcutting'),(3,1,668,'Language Common'),(11,3,34082,'Advantaged State (DND)'),(11,3,45927,'Summon Friend'),(11,7,59540,'Shadow Resistance'),(11,3,59543,'Gift of the Naaru'),(11,3,61437,'Opening'),(11,5,81,'Dodge'),(11,5,198,'One-Handed Maces'),(11,5,203,'Unarmed'),(11,5,204,'Defense'),(11,5,522,'SPELLDEFENSE (DND)'),(11,5,585,'Smite'),(1,9,668,'Language Common'),(11,5,1843,'Disarm'),(9,3,6246,'Closing'),(11,5,2382,'Generic'),(11,5,2479,'Honorless Target'),(11,5,3050,'Detect'),(11,5,3365,'Opening'),(11,5,5009,'Wands'),(11,5,5019,'Shoot'),(11,5,6233,'Closing'),(11,5,6246,'Closing'),(11,5,6247,'Opening'),(11,5,6477,'Opening'),(11,5,6478,'Opening'),(11,5,6603,'Attack'),(11,5,7266,'Duel'),(11,5,7267,'Grovel'),(11,5,7355,'Stuck'),(11,5,8386,'Attacking'),(11,5,9078,'Cloth'),(11,5,9125,'Generic'),(11,5,21651,'Opening'),(11,5,21652,'Closing'),(11,5,22027,'Remove Insignia'),(11,5,22810,'Opening - No Text'),(11,5,28875,'Gemcutting'),(11,5,28878,'Inspiring Presence'),(1,8,668,'Language Common'),(11,5,45927,'Summon Friend'),(11,6,59539,'Shadow Resistance'),(11,5,59544,'Gift of the Naaru'),(11,5,61437,'Opening'),(11,6,81,'Dodge'),(11,6,196,'One-Handed Axes'),(11,6,197,'Two-Handed Axes'),(11,6,200,'Polearms'),(11,6,201,'One-Handed Swords'),(11,6,202,'Two-Handed Swords'),(11,6,203,'Unarmed'),(11,6,204,'Defense'),(11,6,522,'SPELLDEFENSE (DND)'),(1,6,668,'Language Common'),(11,6,750,'Plate Mail'),(11,6,1843,'Disarm'),(11,6,2382,'Generic'),(11,6,2479,'Honorless Target'),(11,6,3050,'Detect'),(11,6,3127,'Parry'),(11,6,3275,'Linen Bandage'),(11,6,3276,'Heavy Linen Bandage'),(11,6,3277,'Wool Bandage'),(11,6,3278,'Heavy Wool Bandage'),(11,6,3365,'Opening'),(11,6,6233,'Closing'),(11,6,6246,'Closing'),(11,6,6247,'Opening'),(11,6,6477,'Opening'),(11,6,6478,'Opening'),(11,6,6562,'Heroic Presence'),(11,6,6603,'Attack'),(11,6,7266,'Duel'),(11,6,7267,'Grovel'),(11,6,7355,'Stuck'),(11,6,7928,'Silk Bandage'),(11,6,7929,'Heavy Silk Bandage'),(11,6,7934,'Anti-Venom'),(11,6,8386,'Attacking'),(11,6,8737,'Mail'),(11,6,9077,'Leather'),(11,6,9078,'Cloth'),(11,6,9125,'Generic'),(11,6,10840,'Mageweave Bandage'),(11,6,10841,'Heavy Mageweave Bandage'),(11,6,10846,'First Aid'),(11,6,18629,'Runecloth Bandage'),(11,6,18630,'Heavy Runecloth Bandage'),(11,6,21651,'Opening'),(11,6,21652,'Closing'),(11,6,22027,'Remove Insignia'),(11,6,22810,'Opening - No Text'),(11,6,28875,'Gemcutting'),(1,5,668,'Language Common'),(11,6,33391,'Journeyman Riding'),(11,6,45462,'Plague Strike'),(11,6,45477,'Icy Touch'),(11,6,45902,'Blood Strike'),(11,6,45903,'Offensive State (DND)'),(11,6,45927,'Summon Friend'),(11,6,47541,'Death Coil'),(11,6,48266,'Blood Presence'),(11,6,49410,'Forceful Deflection'),(11,6,49576,'Death Grip'),(11,6,52665,'Relic - Sigil'),(11,5,59538,'Shadow Resistance'),(11,3,59536,'Shadow Resistance'),(11,6,59545,'Gift of the Naaru'),(11,6,59879,'Blood Plague'),(11,6,59921,'Frost Fever'),(11,6,61437,'Opening'),(11,6,61455,'Runic Focus'),(11,7,81,'Dodge'),(11,7,107,'Block'),(11,7,198,'One-Handed Maces'),(11,7,203,'Unarmed'),(11,7,204,'Defense'),(11,7,227,'Staves'),(9,3,6233,'Closing'),(11,7,403,'Lightning Bolt'),(11,7,522,'SPELLDEFENSE (DND)'),(1,4,668,'Language Common'),(11,7,1843,'Disarm'),(11,7,2382,'Generic'),(11,7,2479,'Honorless Target'),(11,7,3050,'Detect'),(11,7,3365,'Opening'),(11,7,6233,'Closing'),(11,7,6246,'Closing'),(11,7,6247,'Opening'),(11,7,6477,'Opening'),(11,7,6478,'Opening'),(11,7,6603,'Attack'),(11,7,7266,'Duel'),(11,7,7267,'Grovel'),(11,7,7355,'Stuck'),(11,7,8386,'Attacking'),(11,7,9077,'Leather'),(11,7,9078,'Cloth'),(11,7,9116,'Shields'),(11,7,9125,'Generic'),(11,7,21651,'Opening'),(11,7,21652,'Closing'),(11,7,22027,'Remove Insignia'),(11,7,22810,'Opening - No Text'),(11,7,27763,'Relic - Totem'),(11,7,28875,'Gemcutting'),(11,7,28878,'Inspiring Presence'),(1,3,668,'Language Common'),(11,7,45927,'Summon Friend'),(11,2,59535,'Shadow Resistance'),(11,7,59547,'Gift of the Naaru'),(11,7,61437,'Opening'),(11,8,81,'Dodge'),(11,8,133,'Fireball'),(9,3,21652,'Closing'),(11,8,203,'Unarmed'),(11,8,204,'Defense'),(11,8,227,'Staves'),(11,8,522,'SPELLDEFENSE (DND)'),(1,2,668,'Language Common'),(11,8,1843,'Disarm'),(11,8,2382,'Generic'),(11,8,2479,'Honorless Target'),(11,8,3050,'Detect'),(11,8,3365,'Opening'),(11,8,5009,'Wands'),(11,8,5019,'Shoot'),(11,8,6233,'Closing'),(11,8,6246,'Closing'),(11,8,6247,'Opening'),(11,8,6477,'Opening'),(11,8,6478,'Opening'),(11,8,6603,'Attack'),(11,8,7266,'Duel'),(11,8,7267,'Grovel'),(11,8,7355,'Stuck'),(11,8,8386,'Attacking'),(11,8,9078,'Cloth'),(11,8,9125,'Generic'),(11,8,21651,'Opening'),(11,8,21652,'Closing'),(11,8,22027,'Remove Insignia'),(11,8,22810,'Opening - No Text'),(11,8,28875,'Gemcutting'),(11,8,28878,'Inspiring Presence'),(1,1,668,'Language Common'),(11,8,45927,'Summon Friend'),(11,1,59221,'Shadow Resistance'),(11,8,59548,'Gift of the Naaru'),(11,8,61437,'Opening'),(7,9,58284,'Chaos Bolt Passive'),(10,9,58284,'Chaos Bolt Passive'),(11,2,60091,'Judgement Anti-Parry/Dodge Passive'),(10,2,60091,'Judgement Anti-Parry/Dodge Passive'),(3,2,60091,'Judgement Anti-Parry/Dodge Passive'),(1,2,60091,'Judgement Anti-Parry/Dodge Passive'),(5,1,202,'Two-Handed Swords'),(7,1,202,'Two-Handed Swords'),(8,1,202,'Two-Handed Swords'),(11,1,202,'Two-Handed Swords'),(2,3,197,'Two-Handed Axes'),(3,3,197,'Two-Handed Axes'),(4,3,197,'Two-Handed Axes'),(6,3,197,'Two-Handed Axes'),(8,3,197,'Two-Handed Axes'),(10,3,197,'Two-Handed Axes'),(11,3,197,'Two-Handed Axes'),(1,5,227,'Staves'),(3,5,227,'Staves'),(4,5,227,'Staves'),(5,5,227,'Staves'),(8,5,227,'Staves'),(10,5,227,'Staves'),(11,5,227,'Staves'),(1,9,227,'Staves'),(2,9,227,'Staves'),(5,9,227,'Staves'),(7,9,227,'Staves'),(10,9,227,'Staves'),(10,1,76268,'Armor Skills'),(10,1,76290,'Weapon Skills'),(10,1,203,'Unarmed'),(10,1,202,'Two-Handed Swords'),(10,1,199,'Two-Handed Maces'),(10,1,197,'Two-Handed Axes'),(10,1,2567,'Thrown'),(10,1,2764,'Throw'),(10,1,3018,'Shoot'),(10,1,200,'Polearms'),(10,1,201,'One-Handed Swords'),(10,1,198,'One-Handed Maces'),(10,1,196,'One-Handed Axes'),(10,1,266,'Guns'),(10,1,5011,'Crossbows'),(10,1,264,'Bows'),(9,1,76268,'Armor Skills'),(9,1,76290,'Weapon Skills'),(9,1,203,'Unarmed'),(9,1,202,'Two-Handed Swords'),(9,1,199,'Two-Handed Maces'),(9,1,197,'Two-Handed Axes'),(9,1,2567,'Thrown'),(9,1,2764,'Throw'),(9,1,227,'Staves'),(9,1,3018,'Shoot'),(9,1,201,'One-Handed Swords'),(9,1,198,'One-Handed Maces'),(9,1,196,'One-Handed Axes'),(9,1,266,'Guns'),(9,1,15590,'Fist Weapons'),(9,1,81,'Dodge'),(9,1,204,'Defense'),(9,1,1180,'Daggers'),(9,1,5011,'Crossbows'),(9,1,264,'Bows'),(6,2,20552,'Cultivation'),(5,3,7744,'Will of the Forsaken'),(5,3,5227,'Underwater Breathing'),(5,3,20579,'Shadow Resistance'),(5,3,20577,'Cannibalize'),(4,8,20585,'Wisp Spirit'),(4,8,58984,'Shadowmeld'),(4,8,20582,'Quickness'),(4,8,20583,'Nature Resistance'),(3,7,20594,'Stoneform'),(3,8,20594,'Stoneform'),(3,9,20594,'Stoneform'),(3,9,59224,'Mace Specialization'),(3,8,59224,'Mace Specialization'),(3,9,20595,'Gun Specialization'),(3,8,20595,'Gun Specialization'),(3,7,20595,'Gun Specialization'),(3,9,20596,'Frost Resistance'),(3,8,20596,'Frost Resistance'),(3,9,92682,'Explorer'),(3,8,92682,'Explorer'),(9,5,69042,'Time is Money'),(9,8,69070,'Rocket Jump'),(9,7,69070,'Rocket Jump'),(9,6,69070,'Rocket Jump'),(9,9,69045,'Better Living Through Chemistry'),(9,1,69041,'Rocket Barrage'),(9,5,69070,'Rocket Jump'),(9,4,69070,'Rocket Jump'),(9,3,69070,'Rocket Jump'),(9,1,69070,'Rocket Jump'),(9,9,69041,'Rocket Barrage'),(9,8,69041,'Rocket Barrage'),(9,7,69041,'Rocket Barrage'),(9,6,69041,'Rocket Barrage'),(9,5,69041,'Rocket Barrage'),(9,4,69041,'Rocket Barrage'),(9,3,69041,'Rocket Barrage'),(9,8,69045,'Better Living Through Chemistry'),(9,6,69045,'Better Living Through Chemistry'),(9,3,69045,'Better Living Through Chemistry'),(9,1,69045,'Better Living Through Chemistry'),(9,9,69044,'Best Deals Anywhere'),(9,8,69044,'Best Deals Anywhere'),(9,7,69044,'Best Deals Anywhere'),(9,6,69044,'Best Deals Anywhere'),(9,5,69044,'Best Deals Anywhere'),(9,4,69044,'Best Deals Anywhere'),(9,3,69044,'Best Deals Anywhere'),(9,1,69044,'Best Deals Anywhere'),(8,9,20558,'Throwing Specialization'),(8,9,20555,'Regeneration'),(8,9,58943,'Da Voodoo Shuffle'),(8,9,26290,'Bow Specialization'),(8,9,26297,'Berserking'),(7,1,7340,'Language Gnomish'),(22,11,69270,'Language Gilnean'),(22,9,69270,'Language Gilnean'),(22,8,69270,'Language Gilnean'),(3,1,672,'Language Dwarven'),(9,4,69045,'Better Living Through Chemistry'),(22,6,69270,'Language Gilnean'),(22,5,69270,'Language Gilnean'),(22,3,69270,'Language Gilnean'),(22,1,69270,'Language Gilnean'),(3,9,672,'Language Dwarven'),(3,8,672,'Language Dwarven'),(3,7,672,'Language Dwarven'),(3,6,672,'Language Dwarven'),(3,5,672,'Language Dwarven'),(3,4,672,'Language Dwarven'),(3,3,672,'Language Dwarven'),(11,8,29932,'Language Draenei'),(10,1,822,'Magic Resistance'),(10,1,28730,'Arcane Torrent'),(10,1,28877,'Arcane Affinity'),(9,9,69042,'Time is Money'),(9,8,69042,'Time is Money'),(9,7,69042,'Time is Money'),(4,8,8386,'Attacking'),(3,8,8386,'Attacking'),(3,7,8386,'Attacking'),(2,8,8386,'Attacking'),(1,3,8386,'Attacking'),(22,11,6603,'Attack'),(9,5,69045,'Better Living Through Chemistry'),(22,8,6603,'Attack'),(22,6,6603,'Attack'),(22,5,6603,'Attack'),(22,4,6603,'Attack'),(22,3,6603,'Attack'),(3,1,6603,'Warrior Attack'),(9,3,6603,'Attack'),(8,11,6603,'Attack'),(7,5,6603,'Attack'),(6,5,6603,'Attack'),(6,2,6603,'Attack'),(5,3,6603,'Attack'),(4,8,6603,'Attack'),(3,8,6603,'Attack'),(3,7,6603,'Attack'),(2,8,6603,'Attack'),(1,3,6603,'Attack'),(22,11,2382,'Generic'),(22,9,2382,'Generic'),(22,8,2382,'Generic'),(22,6,2382,'Generic'),(22,5,2382,'Generic'),(6,1,670,'Language Taurahe'),(5,9,17737,'Language Gutterspeak'),(5,8,17737,'Language Gutterspeak'),(5,6,17737,'Language Gutterspeak'),(5,5,17737,'Language Gutterspeak'),(5,4,17737,'Language Gutterspeak'),(5,3,17737,'Language Gutterspeak'),(5,1,17737,'Language Gutterspeak'),(9,9,69269,'Language Goblin'),(9,8,69269,'Language Goblin'),(9,7,69269,'Language Goblin'),(9,6,69269,'Language Goblin'),(9,5,69269,'Language Goblin'),(9,4,69269,'Language Goblin'),(9,3,69269,'Language Goblin'),(9,1,69269,'Language Goblin'),(7,9,7340,'Language Gnomish'),(7,8,7340,'Language Gnomish'),(7,6,7340,'Language Gnomish'),(7,5,7340,'Language Gnomish'),(22,9,76299,'Weapon Skills'),(7,4,7340,'Language Gnomish'),(8,9,20557,'Beast Slaying'),(8,11,20558,'Throwing Specialization'),(8,11,20555,'Regeneration'),(8,11,58943,'Da Voodoo Shuffle'),(8,11,26290,'Bow Specialization'),(8,11,26297,'Berserking'),(8,11,20557,'Beast Slaying'),(7,5,20591,'Expansive Mind'),(7,5,20589,'Escape Artist'),(7,5,20593,'Engineering Specialization'),(7,5,20592,'Arcane Resistance'),(7,9,92680,'Shortblade Specialization'),(7,8,92680,'Shortblade Specialization'),(7,6,92680,'Shortblade Specialization'),(7,5,92680,'Shortblade Specialization'),(7,4,92680,'Shortblade Specialization'),(7,1,92680,'Shortblade Specialization'),(6,5,20549,'War Stomp'),(4,8,9125,'Generic'),(3,9,9125,'Generic'),(3,8,9125,'Generic'),(3,7,9125,'Generic'),(2,8,9125,'Generic'),(1,3,9125,'Generic'),(8,11,7341,'Language Troll'),(8,8,7341,'Language Troll'),(8,7,7341,'Language Troll'),(8,6,7341,'Language Troll'),(8,5,7341,'Language Troll'),(8,4,7341,'Language Troll'),(8,3,7341,'Language Troll'),(8,1,7341,'Language Troll'),(10,9,813,'Language Thalassian'),(10,8,813,'Language Thalassian'),(10,6,813,'Language Thalassian'),(10,5,813,'Language Thalassian'),(10,4,813,'Language Thalassian'),(10,3,813,'Language Thalassian'),(10,2,813,'Language Thalassian'),(6,11,670,'Language Taurahe'),(10,1,813,'Language Thalassian'),(22,1,2382,'Generic'),(9,9,2382,'Generic'),(9,7,2382,'Generic'),(9,6,2382,'Generic'),(9,5,2382,'Generic'),(9,4,2382,'Generic'),(9,3,2382,'Generic'),(9,1,2382,'Generic'),(8,9,2382,'Generic'),(7,5,2382,'Generic'),(6,5,2382,'Generic'),(6,2,2382,'Generic'),(5,3,2382,'Generic'),(4,8,2382,'Generic'),(3,9,2382,'Generic'),(3,8,2382,'Generic'),(3,7,2382,'Generic'),(2,8,2382,'Generic'),(1,3,2382,'Generic'),(22,11,9125,'Generic'),(22,9,9125,'Generic'),(22,8,9125,'Generic'),(22,6,9125,'Generic'),(22,5,9125,'Generic'),(22,4,9125,'Generic'),(22,3,9125,'Generic'),(22,1,9125,'Generic'),(9,9,9125,'Generic'),(9,8,9125,'Generic'),(9,7,9125,'Generic'),(9,6,9125,'Generic'),(9,5,9125,'Generic'),(9,3,9125,'Generic'),(9,1,9125,'Generic'),(8,11,9125,'Generic'),(8,9,9125,'Generic'),(7,5,9125,'Generic'),(6,5,9125,'Generic'),(6,2,9125,'Generic'),(8,11,21652,'Closing'),(8,11,6246,'Closing'),(8,11,6233,'Closing'),(7,5,6233,'Closing'),(7,5,6246,'Closing'),(7,5,21652,'Closing'),(6,5,6246,'Closing'),(6,5,21652,'Closing'),(6,5,6233,'Closing'),(6,2,21652,'Closing'),(6,2,6246,'Closing'),(6,2,6233,'Closing'),(5,3,6233,'Closing'),(5,3,6246,'Closing'),(4,8,6233,'Closing'),(4,8,6246,'Closing'),(4,8,21652,'Closing'),(3,8,6233,'Closing'),(3,8,6246,'Closing'),(3,8,21652,'Closing'),(3,7,6233,'Closing'),(3,7,6246,'Closing'),(3,7,21652,'Closing'),(2,8,21652,'Closing'),(2,8,6246,'Closing'),(2,8,6233,'Closing'),(1,3,21652,'Closing'),(22,4,2382,'Generic'),(22,6,8386,'Attacking'),(22,5,8386,'Attacking'),(22,4,8386,'Attacking'),(22,3,8386,'Attacking'),(2,1,6603,'Warrior Attack'),(9,3,8386,'Attacking'),(8,11,8386,'Attacking'),(7,5,8386,'Attacking'),(6,5,8386,'Attacking'),(9,7,76296,'Weapon Skills'),(9,7,203,'Unarmed'),(9,7,199,'Two-Handed Maces'),(9,7,197,'Two-Handed Axes'),(9,7,227,'Staves'),(9,7,198,'One-Handed Maces'),(9,7,196,'One-Handed Axes'),(9,7,15590,'Fist Weapons'),(9,7,81,'Dodge'),(9,7,204,'Defense'),(9,7,1180,'Daggers'),(9,7,107,'Block'),(3,7,76272,'Armor Skills'),(3,7,76296,'Weapon Skills'),(3,7,203,'Unarmed'),(3,7,199,'Two-Handed Maces'),(3,7,197,'Two-Handed Axes'),(3,7,227,'Staves'),(3,7,198,'One-Handed Maces'),(3,7,196,'One-Handed Axes'),(3,7,107,'Block'),(22,6,76282,'Armor Skills'),(22,6,76292,'Weapon Skills'),(22,6,203,'Unarmed'),(22,6,202,'Two-Handed Swords'),(22,6,199,'Two-Handed Maces'),(22,6,197,'Two-Handed Axes'),(22,6,200,'Polearms'),(22,6,201,'One-Handed Swords'),(22,6,198,'One-Handed Maces'),(22,6,196,'One-Handed Axes'),(22,6,204,'Defense'),(9,6,76282,'Armor Skills'),(9,6,76292,'Weapon Skills'),(9,6,203,'Unarmed'),(9,6,202,'Two-Handed Swords'),(9,6,197,'Two-Handed Axes'),(9,6,200,'Polearms'),(9,6,201,'One-Handed Swords'),(9,6,198,'One-Handed Maces'),(9,6,196,'One-Handed Axes'),(9,6,81,'Dodge'),(9,6,204,'Defense'),(22,5,76279,'Armor Skills'),(22,5,76301,'Weapon Skills'),(22,5,203,'Unarmed'),(22,5,227,'Staves'),(22,5,5019,'Shoot'),(22,5,5009,'Wands'),(22,5,198,'One-Handed Maces'),(22,5,81,'Dodge'),(22,5,204,'Defense'),(22,5,1180,'Daggers'),(9,5,76279,'Armor Skills'),(9,5,76301,'Weapon Skills'),(9,5,203,'Unarmed'),(9,5,227,'Staves'),(9,5,5019,'Shoot'),(9,5,5009,'Wands'),(9,5,81,'Dodge'),(9,5,204,'Defense'),(9,5,1180,'Daggers'),(7,5,76301,'Weapon Skills'),(7,5,203,'Unarmed'),(7,5,227,'Staves'),(7,5,5019,'Shoot'),(7,5,5009,'Wands'),(7,5,198,'One-Handed Maces'),(7,5,81,'Dodge'),(7,5,204,'Defense'),(7,5,1180,'Daggers'),(6,5,76279,'Armor Skills'),(6,5,76301,'Weapon Skills'),(6,5,203,'Unarmed'),(6,5,227,'Staves'),(6,5,5019,'Shoot'),(6,5,5009,'Wands'),(6,5,198,'One-Handed Maces'),(6,5,81,'Dodge'),(6,5,204,'Defense'),(6,5,1180,'Daggers'),(22,4,76273,'Armor Skills'),(22,4,76297,'Weapon Skills'),(22,4,203,'Unarmed'),(22,4,2567,'Thrown'),(22,4,2764,'Throw'),(22,4,3018,'Shoot'),(22,4,201,'One-Handed Swords'),(22,4,198,'One-Handed Maces'),(22,4,196,'One-Handed Axes'),(22,4,266,'Guns'),(22,4,15590,'Fist Weapons'),(22,4,81,'Dodge'),(22,4,204,'Defense'),(22,4,1180,'Daggers'),(22,4,5011,'Crossbows'),(9,4,76273,'Armor Skills'),(9,4,76297,'Weapon Skills'),(9,4,203,'Unarmed'),(9,4,2567,'Thrown'),(9,4,2764,'Throw'),(9,4,3018,'Shoot'),(9,4,201,'One-Handed Swords'),(9,4,198,'One-Handed Maces'),(9,4,196,'One-Handed Axes'),(9,4,266,'Guns'),(9,4,15590,'Fist Weapons'),(9,4,81,'Dodge'),(9,4,204,'Defense'),(9,4,1180,'Daggers'),(9,4,5011,'Crossbows'),(22,3,76250,'Armor Skills'),(22,3,203,'Unarmed'),(22,3,202,'Two-Handed Swords'),(22,3,197,'Two-Handed Axes'),(22,3,3018,'Shoot'),(22,3,200,'Polearms'),(22,3,201,'One-Handed Swords'),(22,3,196,'One-Handed Axes'),(22,3,266,'Guns'),(22,3,15590,'Fist Weapons'),(22,3,81,'Dodge'),(22,3,204,'Defense'),(22,3,1180,'Daggers'),(22,3,5011,'Crossbows'),(22,3,264,'Bows'),(9,3,76250,'Armor Skills'),(9,3,76249,'Weapon Skills'),(9,3,203,'Unarmed'),(9,3,202,'Two-Handed Swords'),(9,3,197,'Two-Handed Axes'),(9,3,227,'Staves'),(9,3,3018,'Shoot'),(9,3,200,'Polearms'),(9,3,201,'One-Handed Swords'),(9,3,196,'One-Handed Axes'),(9,3,266,'Guns'),(9,3,15590,'Fist Weapons'),(9,3,81,'Dodge'),(9,3,204,'Defense'),(9,3,1180,'Daggers'),(9,3,5011,'Crossbows'),(9,3,264,'Bows'),(5,3,202,'Two-Handed Swords'),(5,3,227,'Staves'),(5,3,3018,'Shoot'),(5,3,200,'Polearms'),(5,3,201,'One-Handed Swords'),(5,3,196,'One-Handed Axes'),(5,3,266,'Guns'),(5,3,15590,'Fist Weapons'),(5,3,81,'Dodge'),(5,3,204,'Defense'),(5,3,1180,'Daggers'),(5,3,5011,'Crossbows'),(5,3,264,'Bows'),(1,3,76250,'Armor Skills'),(1,3,76249,'Weapon Skills'),(1,3,203,'Unarmed'),(1,3,202,'Two-Handed Swords'),(1,3,197,'Two-Handed Axes'),(1,3,227,'Staves'),(1,3,3018,'Shoot'),(1,3,200,'Polearms'),(1,3,201,'One-Handed Swords'),(1,3,196,'One-Handed Axes'),(1,3,266,'Guns'),(1,3,15590,'Fist Weapons'),(1,3,81,'Dodge'),(1,3,204,'Defense'),(1,3,1180,'Daggers'),(1,3,5011,'Crossbows'),(1,3,264,'Bows'),(6,2,76271,'Armor Skills'),(6,2,76294,'Weapon Skills'),(6,2,203,'Unarmed'),(9,9,76299,'Weapon Skills'),(9,9,203,'Unarmed'),(9,9,227,'Staves'),(9,9,5019,'Shoot'),(9,9,5009,'Wands'),(9,9,81,'Dodge'),(9,9,204,'Defense'),(9,9,1180,'Daggers'),(8,9,76277,'Armor Skills'),(8,9,76299,'Weapon Skills'),(8,9,203,'Unarmed'),(8,9,227,'Staves'),(8,9,5019,'Shoot'),(8,9,201,'One-Handed Swords'),(8,9,81,'Dodge'),(8,9,204,'Defense'),(8,9,1180,'Daggers'),(3,9,76277,'Armor Skills'),(3,9,76299,'Weapon Skills'),(3,9,203,'Unarmed'),(3,9,227,'Staves'),(3,9,5019,'Shoot'),(3,9,5009,'Wands'),(3,9,201,'One-Handed Swords'),(22,8,227,'Staves'),(22,8,5019,'Shoot'),(22,8,5009,'Wands'),(22,8,201,'One-Handed Swords'),(22,8,81,'Dodge'),(22,8,204,'Defense'),(22,8,1180,'Daggers'),(9,8,76276,'Armor Skills'),(9,8,76298,'Weapon Skills'),(9,8,203,'Unarmed'),(9,8,227,'Staves'),(9,8,5019,'Shoot'),(9,8,5009,'Wands'),(9,8,201,'One-Handed Swords'),(9,8,81,'Dodge'),(9,8,204,'Defense'),(9,8,1180,'Daggers'),(4,8,76276,'Armor Skills'),(4,8,76298,'Weapon Skills'),(4,8,203,'Unarmed'),(4,8,5019,'Shoot'),(4,8,5009,'Wands'),(4,8,201,'One-Handed Swords'),(4,8,81,'Dodge'),(4,8,204,'Defense'),(4,8,1180,'Daggers'),(3,8,76276,'Armor Skills'),(3,8,76298,'Weapon Skills'),(3,8,203,'Unarmed'),(3,8,227,'Staves'),(3,8,204,'Defense'),(3,8,1180,'Daggers'),(2,8,76276,'Armor Skills'),(2,8,76298,'Weapon Skills'),(2,8,203,'Unarmed'),(2,8,227,'Staves'),(2,8,5019,'Shoot'),(2,8,5009,'Wands'),(2,8,201,'One-Handed Swords'),(2,8,81,'Dodge'),(2,8,204,'Defense'),(6,2,202,'Two-Handed Swords'),(6,2,199,'Two-Handed Maces'),(6,2,197,'Two-Handed Axes'),(6,2,200,'Polearms'),(6,2,201,'One-Handed Swords'),(6,2,198,'One-Handed Maces'),(6,2,81,'Dodge'),(6,2,204,'Defense'),(6,2,107,'Block'),(22,1,76268,'Armor Skills'),(22,1,76290,'Weapon Skills'),(22,1,203,'Unarmed'),(22,1,202,'Two-Handed Swords'),(22,1,199,'Two-Handed Maces'),(22,1,197,'Two-Handed Axes'),(22,1,2567,'Thrown'),(22,1,2764,'Throw'),(22,1,227,'Staves'),(22,1,3018,'Shoot'),(22,1,201,'One-Handed Swords'),(22,1,198,'One-Handed Maces'),(22,1,196,'One-Handed Axes'),(22,1,266,'Guns'),(22,1,15590,'Fist Weapons'),(22,1,81,'Dodge'),(22,1,1180,'Daggers'),(22,1,5011,'Crossbows'),(1,3,20598,'The Human Spirit'),(1,3,20597,'Sword Specialization'),(22,6,750,'Plate Mail'),(9,6,750,'Plate Mail'),(22,6,8737,'Mail'),(9,6,8737,'Mail'),(22,5,9078,'Cloth'),(6,2,8737,'Mail'),(22,1,8737,'Mail'),(10,1,8737,'Mail'),(9,1,8737,'Mail'),(8,11,9077,'Leather'),(9,7,9077,'Leather'),(3,7,9077,'Leather'),(22,6,9077,'Leather'),(9,6,9077,'Leather'),(22,4,9077,'Leather'),(9,4,9077,'Leather'),(22,3,9077,'Leather'),(9,3,9077,'Leather'),(5,3,9077,'Leather'),(1,3,9077,'Leather'),(6,2,9077,'Leather'),(22,1,9077,'Leather'),(10,1,9077,'Leather'),(9,9,9078,'Cloth'),(8,9,9078,'Cloth'),(3,9,9078,'Cloth'),(22,8,9078,'Cloth'),(9,8,9078,'Cloth'),(4,8,9078,'Cloth'),(3,8,9078,'Cloth'),(2,8,9078,'Cloth'),(9,7,9078,'Cloth'),(3,7,9078,'Cloth'),(22,6,9078,'Cloth'),(9,6,9078,'Cloth'),(22,9,5009,'Wands'),(9,9,76277,'Armor Skills'),(1,3,59752,'Every Man for Himself'),(8,11,198,'One-Handed Maces'),(22,9,76277,'Armor Skills'),(8,11,27764,'Relic - Idol'),(22,11,204,'Defense'),(8,11,199,'Two-Handed Maces'),(22,11,199,'Two-Handed Maces'),(1,1,264,'Bows'),(1,1,5011,'Crossbows'),(1,1,1180,'Daggers'),(1,1,15590,'Fist Weapons'),(1,1,266,'Guns'),(1,1,200,'Polearms'),(1,1,3018,'Shoot'),(1,1,227,'Staves'),(1,1,2764,'Throw'),(1,1,2567,'Thrown'),(1,1,197,'Two-Handed Axes'),(1,1,199,'Two-Handed Maces'),(1,1,76290,'Weapon Skills'),(1,1,76268,'Armor Skills'),(2,1,264,'Bows'),(2,1,5011,'Crossbows'),(2,1,1180,'Daggers'),(2,1,15590,'Fist Weapons'),(2,1,266,'Guns'),(2,1,198,'One-Handed Maces'),(2,1,200,'Polearms'),(2,1,3018,'Shoot'),(2,1,227,'Staves'),(2,1,2764,'Throw'),(2,1,2567,'Thrown'),(2,1,199,'Two-Handed Maces'),(2,1,202,'Two-Handed Swords'),(2,1,76290,'Weapon Skills'),(2,1,76268,'Armor Skills'),(3,1,264,'Bows'),(3,1,5011,'Crossbows'),(3,1,1180,'Daggers'),(3,1,15590,'Fist Weapons'),(3,1,266,'Guns'),(3,1,201,'One-Handed Swords'),(3,1,200,'Polearms'),(3,1,3018,'Shoot'),(3,1,227,'Staves'),(3,1,2764,'Throw'),(3,1,2567,'Thrown'),(3,1,199,'Two-Handed Maces'),(3,1,202,'Two-Handed Swords'),(3,1,76290,'Weapon Skills'),(3,1,76268,'Armor Skills'),(4,1,264,'Bows'),(4,1,5011,'Crossbows'),(4,1,15590,'Fist Weapons'),(4,1,266,'Guns'),(4,1,196,'One-Handed Axes'),(4,1,200,'Polearms'),(4,1,3018,'Shoot'),(4,1,227,'Staves'),(4,1,2764,'Throw'),(4,1,2567,'Thrown'),(4,1,197,'Two-Handed Axes'),(4,1,199,'Two-Handed Maces'),(4,1,76290,'Weapon Skills'),(4,1,76268,'Armor Skills'),(5,1,264,'Bows'),(5,1,5011,'Crossbows'),(5,1,15590,'Fist Weapons'),(5,1,266,'Guns'),(5,1,196,'One-Handed Axes'),(5,1,198,'One-Handed Maces'),(5,1,200,'Polearms'),(5,1,3018,'Shoot'),(5,1,227,'Staves'),(5,1,2764,'Throw'),(5,1,2567,'Thrown'),(5,1,197,'Two-Handed Axes'),(5,1,199,'Two-Handed Maces'),(5,1,76290,'Weapon Skills'),(5,1,76268,'Armor Skills'),(6,1,264,'Bows'),(6,1,5011,'Crossbows'),(6,1,1180,'Daggers'),(6,1,15590,'Fist Weapons'),(6,1,266,'Guns'),(6,1,201,'One-Handed Swords'),(6,1,200,'Polearms'),(6,1,3018,'Shoot'),(6,1,227,'Staves'),(6,1,2764,'Throw'),(6,1,2567,'Thrown'),(6,1,197,'Two-Handed Axes'),(6,1,202,'Two-Handed Swords'),(6,1,76290,'Weapon Skills'),(6,1,76268,'Armor Skills'),(7,1,264,'Bows'),(7,1,5011,'Crossbows'),(7,1,15590,'Fist Weapons'),(7,1,266,'Guns'),(7,1,196,'One-Handed Axes'),(7,1,200,'Polearms'),(7,1,3018,'Shoot'),(7,1,227,'Staves'),(7,1,2764,'Throw'),(7,1,2567,'Thrown'),(7,1,197,'Two-Handed Axes'),(7,1,199,'Two-Handed Maces'),(7,1,76290,'Weapon Skills'),(7,1,76268,'Armor Skills'),(8,1,264,'Bows'),(8,1,5011,'Crossbows'),(8,1,15590,'Fist Weapons'),(8,1,266,'Guns'),(8,1,198,'One-Handed Maces'),(8,1,201,'One-Handed Swords'),(8,1,200,'Polearms'),(8,1,3018,'Shoot'),(8,1,227,'Staves'),(8,1,197,'Two-Handed Axes'),(8,1,199,'Two-Handed Maces'),(8,1,76290,'Weapon Skills'),(8,1,76268,'Armor Skills'),(3,6,92682,'Explorer'),(3,2,92682,'Explorer'),(1,3,20599,'Diplomacy'),(2,8,20574,'Axe Specialization'),(1,3,20864,'Mace Specialization'),(3,5,92682,'Explorer'),(2,8,33702,'Blood Fury'),(2,8,20573,'Hardiness'),(3,1,92682,'Explorer'),(3,4,92682,'Explorer'),(3,3,92682,'Explorer'),(10,1,227,'Staves'),(10,1,107,'Block'),(9,1,200,'Polearms'),(10,1,1180,'Daggers'),(10,1,204,'Defense'),(10,1,81,'Dodge'),(10,1,15590,'Fist Weapons'),(9,1,107,'Block'),(11,1,264,'Bows'),(11,1,5011,'Crossbows'),(11,1,1180,'Daggers'),(11,1,15590,'Fist Weapons'),(11,1,266,'Guns'),(11,1,196,'One-Handed Axes'),(11,1,200,'Polearms'),(11,1,3018,'Shoot'),(11,1,227,'Staves'),(11,1,2764,'Throw'),(11,1,2567,'Thrown'),(11,1,197,'Two-Handed Axes'),(11,1,199,'Two-Handed Maces'),(11,1,76290,'Weapon Skills'),(11,1,76268,'Armor Skills'),(9,9,201,'One-Handed Swords'),(8,9,5009,'Wands'),(22,8,203,'Unarmed'),(22,8,76298,'Weapon Skills'),(22,8,76276,'Armor Skills'),(3,9,1180,'Daggers'),(3,9,204,'Defense'),(3,9,81,'Dodge'),(1,2,196,'One-Handed Axes'),(1,2,201,'One-Handed Swords'),(1,2,200,'Polearms'),(1,2,197,'Two-Handed Axes'),(1,2,202,'Two-Handed Swords'),(1,2,76294,'Weapon Skills'),(1,2,76271,'Armor Skills'),(3,2,196,'One-Handed Axes'),(3,2,201,'One-Handed Swords'),(3,2,200,'Polearms'),(3,2,197,'Two-Handed Axes'),(3,2,202,'Two-Handed Swords'),(3,2,76294,'Weapon Skills'),(3,2,76271,'Armor Skills'),(9,4,69042,'Time is Money'),(9,3,69042,'Time is Money'),(9,9,69070,'Rocket Jump'),(9,1,69042,'Time is Money'),(10,2,196,'One-Handed Axes'),(10,2,198,'One-Handed Maces'),(10,2,200,'Polearms'),(10,2,197,'Two-Handed Axes'),(10,2,199,'Two-Handed Maces'),(10,2,76294,'Weapon Skills'),(10,2,76271,'Armor Skills'),(11,2,196,'One-Handed Axes'),(11,2,201,'One-Handed Swords'),(11,2,200,'Polearms'),(11,2,197,'Two-Handed Axes'),(11,2,202,'Two-Handed Swords'),(11,2,76294,'Weapon Skills'),(11,2,76271,'Armor Skills'),(5,3,21652,'Closing'),(22,8,8386,'Attacking'),(22,9,8386,'Attacking'),(22,11,8386,'Attacking'),(1,3,6246,'Closing'),(1,3,6233,'Closing'),(6,2,8386,'Attacking'),(5,3,8386,'Attacking'),(2,3,5011,'Crossbows'),(2,3,1180,'Daggers'),(2,3,15590,'Fist Weapons'),(2,3,266,'Guns'),(2,3,201,'One-Handed Swords'),(2,3,200,'Polearms'),(2,3,3018,'Shoot'),(2,3,227,'Staves'),(2,3,202,'Two-Handed Swords'),(2,3,76249,'Weapon Skills'),(2,3,76250,'Armor Skills'),(3,3,264,'Bows'),(3,3,5011,'Crossbows'),(3,3,1180,'Daggers'),(3,3,15590,'Fist Weapons'),(3,3,201,'One-Handed Swords'),(3,3,200,'Polearms'),(3,3,3018,'Shoot'),(3,3,227,'Staves'),(3,3,202,'Two-Handed Swords'),(3,3,76249,'Weapon Skills'),(3,3,76250,'Armor Skills'),(4,3,5011,'Crossbows'),(4,3,15590,'Fist Weapons'),(4,3,266,'Guns'),(4,3,196,'One-Handed Axes'),(4,3,201,'One-Handed Swords'),(4,3,200,'Polearms'),(4,3,3018,'Shoot'),(4,3,227,'Staves'),(4,3,202,'Two-Handed Swords'),(4,3,76249,'Weapon Skills'),(4,3,76250,'Armor Skills'),(3,2,672,'Language Dwarven'),(22,4,69270,'Language Gilnean'),(9,6,69042,'Time is Money'),(6,3,264,'Bows'),(6,3,5011,'Crossbows'),(6,3,1180,'Daggers'),(6,3,15590,'Fist Weapons'),(6,3,201,'One-Handed Swords'),(6,3,200,'Polearms'),(6,3,3018,'Shoot'),(6,3,227,'Staves'),(6,3,202,'Two-Handed Swords'),(6,3,76249,'Weapon Skills'),(6,3,76250,'Armor Skills'),(8,3,5011,'Crossbows'),(8,3,1180,'Daggers'),(8,3,15590,'Fist Weapons'),(8,3,266,'Guns'),(8,3,201,'One-Handed Swords'),(8,3,200,'Polearms'),(8,3,3018,'Shoot'),(8,3,227,'Staves'),(8,3,202,'Two-Handed Swords'),(8,3,76249,'Weapon Skills'),(8,3,76250,'Armor Skills'),(22,11,9077,'Leather'),(22,9,9078,'Cloth'),(8,11,9078,'Cloth'),(22,11,9078,'Cloth'),(9,1,9077,'Leather'),(9,5,9078,'Cloth'),(7,5,9078,'Cloth'),(10,3,5011,'Crossbows'),(10,3,15590,'Fist Weapons'),(10,3,266,'Guns'),(10,3,196,'One-Handed Axes'),(10,3,201,'One-Handed Swords'),(10,3,200,'Polearms'),(10,3,3018,'Shoot'),(10,3,227,'Staves'),(10,3,202,'Two-Handed Swords'),(10,3,76249,'Weapon Skills'),(10,3,76250,'Armor Skills'),(11,3,264,'Bows'),(11,3,1180,'Daggers'),(11,3,15590,'Fist Weapons'),(11,3,266,'Guns'),(11,3,196,'One-Handed Axes'),(11,3,200,'Polearms'),(11,3,3018,'Shoot'),(11,3,227,'Staves'),(11,3,202,'Two-Handed Swords'),(11,3,76249,'Weapon Skills'),(11,3,76250,'Armor Skills'),(4,8,227,'Staves'),(3,8,81,'Dodge'),(3,8,201,'One-Handed Swords'),(3,8,5009,'Wands'),(3,8,5019,'Shoot'),(2,8,1180,'Daggers'),(9,7,76272,'Armor Skills'),(1,4,5011,'Crossbows'),(1,4,15590,'Fist Weapons'),(1,4,266,'Guns'),(1,4,196,'One-Handed Axes'),(1,4,198,'One-Handed Maces'),(1,4,201,'One-Handed Swords'),(1,4,3018,'Shoot'),(1,4,76297,'Weapon Skills'),(1,4,76273,'Armor Skills'),(2,4,5011,'Crossbows'),(2,4,15590,'Fist Weapons'),(2,4,266,'Guns'),(2,4,196,'One-Handed Axes'),(2,4,198,'One-Handed Maces'),(2,4,201,'One-Handed Swords'),(2,4,3018,'Shoot'),(2,4,76297,'Weapon Skills'),(2,4,76273,'Armor Skills'),(3,4,5011,'Crossbows'),(3,4,15590,'Fist Weapons'),(3,4,266,'Guns'),(3,4,196,'One-Handed Axes'),(3,4,198,'One-Handed Maces'),(3,4,201,'One-Handed Swords'),(3,4,3018,'Shoot'),(3,4,76297,'Weapon Skills'),(3,4,76273,'Armor Skills'),(4,4,5011,'Crossbows'),(4,4,15590,'Fist Weapons'),(4,4,266,'Guns'),(4,4,196,'One-Handed Axes'),(4,4,198,'One-Handed Maces'),(4,4,201,'One-Handed Swords'),(4,4,3018,'Shoot'),(4,4,76297,'Weapon Skills'),(4,4,76273,'Armor Skills'),(5,4,5011,'Crossbows'),(5,4,15590,'Fist Weapons'),(5,4,266,'Guns'),(5,4,196,'One-Handed Axes'),(5,4,198,'One-Handed Maces'),(5,4,201,'One-Handed Swords'),(5,4,3018,'Shoot'),(5,4,76297,'Weapon Skills'),(5,4,76273,'Armor Skills'),(7,4,5011,'Crossbows'),(7,4,15590,'Fist Weapons'),(7,4,266,'Guns'),(7,4,196,'One-Handed Axes'),(7,4,198,'One-Handed Maces'),(7,4,201,'One-Handed Swords'),(7,4,3018,'Shoot'),(7,4,76297,'Weapon Skills'),(7,4,76273,'Armor Skills'),(8,4,5011,'Crossbows'),(8,4,15590,'Fist Weapons'),(8,4,266,'Guns'),(8,4,196,'One-Handed Axes'),(8,4,198,'One-Handed Maces'),(8,4,201,'One-Handed Swords'),(8,4,3018,'Shoot'),(8,4,76297,'Weapon Skills'),(8,4,76273,'Armor Skills'),(22,4,9078,'Cloth'),(6,5,9078,'Cloth'),(10,1,9078,'Cloth'),(22,1,9078,'Cloth'),(6,2,9078,'Cloth'),(1,3,9078,'Cloth'),(5,3,9078,'Cloth'),(9,3,9078,'Cloth'),(9,1,9078,'Cloth'),(10,4,5011,'Crossbows'),(10,4,15590,'Fist Weapons'),(10,4,266,'Guns'),(10,4,196,'One-Handed Axes'),(10,4,198,'One-Handed Maces'),(10,4,201,'One-Handed Swords'),(10,4,3018,'Shoot'),(10,4,76297,'Weapon Skills'),(10,4,76273,'Armor Skills'),(3,7,1180,'Daggers'),(3,7,204,'Defense'),(3,7,81,'Dodge'),(3,7,15590,'Fist Weapons'),(22,6,81,'Dodge'),(1,5,1180,'Daggers'),(1,5,76301,'Weapon Skills'),(1,5,76279,'Armor Skills'),(3,5,1180,'Daggers'),(3,5,76301,'Weapon Skills'),(3,5,76279,'Armor Skills'),(4,5,1180,'Daggers'),(4,5,76301,'Weapon Skills'),(4,5,76279,'Armor Skills'),(5,5,1180,'Daggers'),(5,5,76301,'Weapon Skills'),(5,5,76279,'Armor Skills'),(6,5,20551,'Nature Resistance'),(8,5,1180,'Daggers'),(8,5,76301,'Weapon Skills'),(8,5,76279,'Armor Skills'),(22,6,52665,'Relic - Sigil'),(9,6,52665,'Relic - Sigil'),(6,2,27762,'Relic - Libram'),(10,5,1180,'Daggers'),(10,5,76301,'Weapon Skills'),(10,5,76279,'Armor Skills'),(11,5,1180,'Daggers'),(11,5,76301,'Weapon Skills'),(11,5,76279,'Armor Skills'),(9,6,199,'Two-Handed Maces'),(9,5,198,'One-Handed Maces'),(1,6,198,'One-Handed Maces'),(1,6,199,'Two-Handed Maces'),(1,6,76292,'Weapon Skills'),(1,6,76282,'Armor Skills'),(2,6,198,'One-Handed Maces'),(2,6,199,'Two-Handed Maces'),(2,6,76292,'Weapon Skills'),(2,6,76282,'Armor Skills'),(3,6,198,'One-Handed Maces'),(3,6,199,'Two-Handed Maces'),(3,6,76292,'Weapon Skills'),(3,6,76282,'Armor Skills'),(4,6,198,'One-Handed Maces'),(4,6,199,'Two-Handed Maces'),(4,6,76292,'Weapon Skills'),(4,6,76282,'Armor Skills'),(5,6,198,'One-Handed Maces'),(5,6,199,'Two-Handed Maces'),(5,6,76292,'Weapon Skills'),(5,6,76282,'Armor Skills'),(6,6,198,'One-Handed Maces'),(6,6,199,'Two-Handed Maces'),(6,6,76292,'Weapon Skills'),(6,6,76282,'Armor Skills'),(7,6,198,'One-Handed Maces'),(7,6,199,'Two-Handed Maces'),(7,6,76292,'Weapon Skills'),(7,6,76282,'Armor Skills'),(8,6,198,'One-Handed Maces'),(8,6,199,'Two-Handed Maces'),(8,6,76292,'Weapon Skills'),(8,6,76282,'Armor Skills'),(9,1,9116,'Shields'),(9,7,27763,'Relic - Totem'),(3,7,27763,'Relic - Totem'),(6,2,9116,'Shields'),(3,7,9116,'Shields'),(9,7,9116,'Shields'),(22,1,9116,'Shields'),(10,1,9116,'Shields'),(22,11,227,'Staves'),(10,6,198,'One-Handed Maces'),(10,6,199,'Two-Handed Maces'),(10,6,76292,'Weapon Skills'),(10,6,76282,'Armor Skills'),(11,6,198,'One-Handed Maces'),(11,6,199,'Two-Handed Maces'),(11,6,76292,'Weapon Skills'),(11,6,76282,'Armor Skills'),(7,5,76279,'Armor Skills'),(22,3,227,'Staves'),(2,7,1180,'Daggers'),(2,7,15590,'Fist Weapons'),(2,7,196,'One-Handed Axes'),(2,7,197,'Two-Handed Axes'),(2,7,199,'Two-Handed Maces'),(2,7,76296,'Weapon Skills'),(2,7,76272,'Armor Skills'),(8,11,2382,'Generic'),(10,1,9125,'Generic'),(10,1,2382,'Generic'),(9,8,2382,'Generic'),(5,3,9125,'Generic'),(6,7,1180,'Daggers'),(6,7,15590,'Fist Weapons'),(6,7,196,'One-Handed Axes'),(6,7,197,'Two-Handed Axes'),(6,7,199,'Two-Handed Maces'),(6,7,76296,'Weapon Skills'),(6,7,76272,'Armor Skills'),(8,7,1180,'Daggers'),(8,7,15590,'Fist Weapons'),(8,7,196,'One-Handed Axes'),(8,7,197,'Two-Handed Axes'),(8,7,199,'Two-Handed Maces'),(8,7,76296,'Weapon Skills'),(8,7,76272,'Armor Skills'),(22,11,200,'Polearms'),(22,11,1180,'Daggers'),(8,11,76300,'Weapon Skills'),(22,11,198,'One-Handed Maces'),(22,11,81,'Dodge'),(22,11,15590,'Fist Weapons'),(8,11,227,'Staves'),(11,7,1180,'Daggers'),(11,7,15590,'Fist Weapons'),(11,7,196,'One-Handed Axes'),(11,7,197,'Two-Handed Axes'),(11,7,199,'Two-Handed Maces'),(11,7,76296,'Weapon Skills'),(11,7,76272,'Armor Skills'),(1,8,1180,'Daggers'),(1,8,201,'One-Handed Swords'),(1,8,76298,'Weapon Skills'),(1,8,76276,'Armor Skills'),(22,9,6603,'Attack'),(22,3,2382,'Generic'),(8,9,7341,'Language Troll'),(6,7,670,'Language Taurahe'),(5,8,1180,'Daggers'),(5,8,201,'One-Handed Swords'),(5,8,76298,'Weapon Skills'),(5,8,76276,'Armor Skills'),(7,8,1180,'Daggers'),(7,8,201,'One-Handed Swords'),(7,8,76298,'Weapon Skills'),(7,8,76276,'Armor Skills'),(8,8,1180,'Daggers'),(8,8,201,'One-Handed Swords'),(8,8,76298,'Weapon Skills'),(8,8,76276,'Armor Skills'),(8,11,15590,'Fist Weapons'),(8,11,200,'Polearms'),(8,11,81,'Dodge'),(8,11,204,'Defense'),(22,9,227,'Staves'),(10,8,1180,'Daggers'),(10,8,201,'One-Handed Swords'),(10,8,76298,'Weapon Skills'),(10,8,76276,'Armor Skills'),(11,8,1180,'Daggers'),(11,8,201,'One-Handed Swords'),(11,8,76298,'Weapon Skills'),(11,8,76276,'Armor Skills'),(1,9,201,'One-Handed Swords'),(1,9,76299,'Weapon Skills'),(1,9,76277,'Armor Skills'),(2,9,201,'One-Handed Swords'),(2,9,76299,'Weapon Skills'),(2,9,76277,'Armor Skills'),(6,6,670,'Language Taurahe'),(6,5,670,'Language Taurahe'),(6,3,670,'Language Taurahe'),(5,9,201,'One-Handed Swords'),(5,9,76299,'Weapon Skills'),(5,9,76277,'Armor Skills'),(7,9,201,'One-Handed Swords'),(7,9,76299,'Weapon Skills'),(7,9,76277,'Armor Skills'),(6,5,20550,'Endurance'),(6,5,20552,'Cultivation'),(6,2,20549,'War Stomp'),(6,2,20550,'Endurance'),(22,9,5019,'Shoot'),(22,9,201,'One-Handed Swords'),(22,9,81,'Dodge'),(10,9,201,'One-Handed Swords'),(10,9,76299,'Weapon Skills'),(10,9,76277,'Armor Skills'),(5,3,197,'Two-Handed Axes'),(4,11,15590,'Fist Weapons'),(4,11,198,'One-Handed Maces'),(4,11,200,'Polearms'),(4,11,199,'Two-Handed Maces'),(4,11,76300,'Weapon Skills'),(4,11,76275,'Armor Skills'),(6,11,1180,'Daggers'),(6,11,15590,'Fist Weapons'),(6,11,200,'Polearms'),(6,11,199,'Two-Handed Maces'),(6,11,76300,'Weapon Skills'),(6,11,76275,'Armor Skills'),(3,7,59224,'Mace Specialization'),(3,7,92682,'Explorer'),(6,2,196,'One-Handed Axes'),(22,1,200,'Polearms'),(22,1,107,'Block'),(22,1,264,'Bows'),(9,4,9125,'Generic'),(8,11,203,'Unarmed'),(9,7,69045,'Better Living Through Chemistry'),(3,7,20596,'Frost Resistance'),(22,1,204,'Defense'),(22,11,203,'Unarmed'),(22,3,76249,'Weapon Skills'),(22,3,9078,'Cloth'),(22,11,27764,'Relic - Idol'),(22,11,76300,'Weapon Skills'),(8,11,76275,'Armor Skills'),(8,11,1180,'Daggers'),(22,9,204,'Defense'),(9,4,9078,'Cloth'),(22,11,76275,'Armor Skills'),(22,9,1180,'Daggers'),(3,8,3050,'Detect'),(4,8,3050,'Detect'),(5,3,3050,'Detect'),(6,2,3050,'Detect'),(6,5,3050,'Detect'),(7,5,3050,'Detect'),(8,11,3050,'Detect'),(9,3,3050,'Detect'),(10,1,3050,'Detect'),(22,1,3050,'Detect'),(22,3,3050,'Detect'),(22,4,3050,'Detect'),(22,5,3050,'Detect'),(22,6,3050,'Detect'),(22,8,3050,'Detect'),(22,9,3050,'Detect'),(22,11,3050,'Detect'),(1,3,1843,'Disarm'),(3,7,1843,'Disarm'),(3,8,1843,'Disarm'),(4,8,1843,'Disarm'),(7,5,1843,'Disarm'),(8,11,1843,'Disarm'),(9,3,1843,'Disarm'),(10,1,1843,'Disarm'),(22,1,1843,'Disarm'),(22,3,1843,'Disarm'),(22,4,1843,'Disarm'),(22,5,1843,'Disarm'),(22,6,1843,'Disarm'),(22,8,1843,'Disarm'),(22,9,1843,'Disarm'),(22,11,1843,'Disarm'),(1,3,7267,'Grovel'),(2,8,7267,'Grovel'),(3,7,7267,'Grovel'),(3,8,7267,'Grovel'),(4,8,7267,'Grovel'),(5,3,7267,'Grovel'),(6,2,7267,'Grovel'),(6,5,7267,'Grovel'),(7,5,7267,'Grovel'),(8,11,7267,'Grovel'),(9,3,7267,'Grovel'),(10,1,7267,'Grovel'),(22,1,7267,'Grovel'),(22,3,7267,'Grovel'),(22,4,7267,'Grovel'),(22,5,7267,'Grovel'),(22,6,7267,'Grovel'),(22,8,7267,'Grovel'),(22,9,7267,'Grovel'),(22,11,7267,'Grovel'),(1,3,2479,'Honorless Target'),(2,8,2479,'Honorless Target'),(3,7,2479,'Honorless Target'),(3,8,2479,'Honorless Target'),(4,8,2479,'Honorless Target'),(5,3,2479,'Honorless Target'),(6,2,2479,'Honorless Target'),(6,5,2479,'Honorless Target'),(7,5,2479,'Honorless Target'),(8,11,2479,'Honorless Target'),(9,3,2479,'Honorless Target'),(10,1,2479,'Honorless Target'),(22,1,2479,'Honorless Target'),(22,3,2479,'Honorless Target'),(22,4,2479,'Honorless Target'),(22,5,2479,'Honorless Target'),(22,6,2479,'Honorless Target'),(22,8,2479,'Honorless Target'),(22,9,2479,'Honorless Target'),(22,11,2479,'Honorless Target'),(1,3,6477,'Opening'),(1,3,3365,'Opening'),(1,3,6247,'Opening'),(1,3,6478,'Opening'),(1,3,61437,'Opening'),(1,3,21651,'Opening'),(2,8,21651,'Opening'),(2,8,3365,'Opening'),(2,8,6477,'Opening'),(2,8,6478,'Opening'),(2,8,6247,'Opening'),(3,7,3365,'Opening'),(3,7,6247,'Opening'),(3,7,6478,'Opening'),(3,7,21651,'Opening'),(3,7,61437,'Opening'),(3,7,6477,'Opening'),(3,8,6478,'Opening'),(3,8,3365,'Opening'),(3,8,6247,'Opening'),(3,8,6477,'Opening'),(3,8,21651,'Opening'),(3,8,61437,'Opening'),(4,8,6247,'Opening'),(4,8,61437,'Opening'),(4,8,21651,'Opening'),(4,8,6477,'Opening'),(4,8,3365,'Opening'),(4,8,6478,'Opening'),(5,3,3365,'Opening'),(5,3,6247,'Opening'),(5,3,6478,'Opening'),(5,3,21651,'Opening'),(5,3,6477,'Opening'),(6,2,3365,'Opening'),(6,2,6247,'Opening'),(6,2,6477,'Opening'),(6,2,6478,'Opening'),(6,2,21651,'Opening'),(6,5,3365,'Opening'),(6,5,6247,'Opening'),(6,5,6477,'Opening'),(6,5,6478,'Opening'),(6,5,21651,'Opening'),(7,5,6247,'Opening'),(7,5,61437,'Opening'),(7,5,6478,'Opening'),(7,5,6477,'Opening'),(7,5,3365,'Opening'),(7,5,21651,'Opening'),(8,11,21651,'Opening'),(8,11,61437,'Opening'),(8,11,6478,'Opening'),(8,11,3365,'Opening'),(8,11,6247,'Opening'),(8,11,6477,'Opening'),(9,1,6478,'Opening'),(9,1,6477,'Opening'),(9,1,6247,'Opening'),(9,1,3365,'Opening'),(9,1,61437,'Opening'),(9,1,21651,'Opening'),(10,1,6477,'Opening'),(10,1,21651,'Opening'),(10,1,61437,'Opening'),(10,1,3365,'Opening'),(10,1,6247,'Opening'),(10,1,6478,'Opening'),(22,1,61437,'Opening'),(22,1,6478,'Opening'),(22,1,6477,'Opening'),(22,1,6247,'Opening'),(22,1,21651,'Opening'),(22,1,3365,'Opening'),(22,3,6247,'Opening'),(22,3,3365,'Opening'),(22,3,6477,'Opening'),(22,3,6478,'Opening'),(22,3,21651,'Opening'),(22,3,61437,'Opening'),(22,4,61437,'Opening'),(22,4,3365,'Opening'),(22,4,6247,'Opening'),(22,4,6477,'Opening'),(22,4,6478,'Opening'),(22,4,21651,'Opening'),(22,5,61437,'Opening'),(22,5,21651,'Opening'),(22,5,6478,'Opening'),(22,5,6477,'Opening'),(22,5,6247,'Opening'),(22,5,3365,'Opening'),(22,6,61437,'Opening'),(22,6,21651,'Opening'),(22,6,6478,'Opening'),(22,6,6477,'Opening'),(22,6,6247,'Opening'),(22,6,3365,'Opening'),(22,8,3365,'Opening'),(22,8,6247,'Opening'),(22,8,6477,'Opening'),(22,8,6478,'Opening'),(22,8,21651,'Opening'),(22,8,61437,'Opening'),(22,9,3365,'Opening'),(22,9,6247,'Opening'),(22,9,6477,'Opening'),(22,9,6478,'Opening'),(22,9,21651,'Opening'),(22,9,61437,'Opening'),(22,11,61437,'Opening'),(22,11,21651,'Opening'),(22,11,6478,'Opening'),(22,11,6247,'Opening'),(22,11,3365,'Opening'),(22,11,6477,'Opening'),(1,3,22810,'Opening - No Text'),(2,8,22810,'Opening - No Text'),(3,7,22810,'Opening - No Text'),(3,8,22810,'Opening - No Text'),(4,8,22810,'Opening - No Text'),(5,3,22810,'Opening - No Text'),(6,2,22810,'Opening - No Text'),(6,5,22810,'Opening - No Text'),(7,5,22810,'Opening - No Text'),(8,11,22810,'Opening - No Text'),(9,1,22810,'Opening'),(10,1,22810,'Opening - No Text'),(22,1,22810,'Opening - No Text'),(22,3,22810,'Opening - No Text'),(22,4,22810,'Opening - No Text'),(22,5,22810,'Opening - No Text'),(22,6,22810,'Opening - No Text'),(22,8,22810,'Opening - No Text'),(22,9,22810,'Opening - No Text'),(22,11,22810,'Opening - No Text'),(1,3,22027,'Remove Insignia'),(2,8,22027,'Remove Insignia'),(3,7,22027,'Remove Insignia'),(3,8,22027,'Remove Insignia'),(4,8,22027,'Remove Insignia'),(5,3,22027,'Remove Insignia'),(6,2,22027,'Remove Insignia'),(6,5,22027,'Remove Insignia'),(7,5,22027,'Remove Insignia'),(8,11,22027,'Remove Insignia'),(9,3,22027,'Remove Insignia'),(10,1,22027,'Remove Insignia'),(22,1,22027,'Remove Insignia'),(22,3,22027,'Remove Insignia'),(22,4,22027,'Remove Insignia'),(22,5,22027,'Remove Insignia'),(22,6,22027,'Remove Insignia'),(22,8,22027,'Remove Insignia'),(22,9,22027,'Remove Insignia'),(22,11,22027,'Remove Insignia'),(1,3,522,'SPELLDEFENSE (DND)'),(2,8,522,'SPELLDEFENSE (DND)'),(3,7,522,'SPELLDEFENSE (DND)'),(3,8,522,'SPELLDEFENSE (DND)'),(4,8,522,'SPELLDEFENSE (DND)'),(5,3,522,'SPELLDEFENSE (DND)'),(6,2,522,'SPELLDEFENSE (DND)'),(6,5,522,'SPELLDEFENSE (DND)'),(7,5,522,'SPELLDEFENSE (DND)'),(8,11,522,'SPELLDEFENSE (DND)'),(9,3,522,'SPELLDEFENSE (DND)'),(10,1,522,'SPELLDEFENSE (DND)'),(22,1,522,'SPELLDEFENSE (DND)'),(22,3,522,'SPELLDEFENSE (DND)'),(22,4,522,'SPELLDEFENSE (DND)'),(22,5,522,'SPELLDEFENSE (DND)'),(22,6,522,'SPELLDEFENSE (DND)'),(22,8,522,'SPELLDEFENSE (DND)'),(22,9,522,'SPELLDEFENSE (DND)'),(22,11,522,'SPELLDEFENSE (DND)'),(1,3,7355,'Stuck'),(2,8,7355,'Stuck'),(3,7,7355,'Stuck'),(3,8,7355,'Stuck'),(4,8,7355,'Stuck'),(5,3,7355,'Stuck'),(6,2,7355,'Stuck'),(6,5,7355,'Stuck'),(7,5,7355,'Stuck'),(8,11,7355,'Stuck'),(9,3,7355,'Stuck'),(10,1,7355,'Stuck'),(22,1,7355,'Stuck'),(22,3,7355,'Stuck'),(22,4,7355,'Stuck'),(22,5,7355,'Stuck'),(22,6,7355,'Stuck'),(22,8,7355,'Stuck'),(22,9,7355,'Stuck'),(22,11,7355,'Stuck'),(1,3,45927,'Summon Friend'),(3,7,45927,'Summon Friend'),(3,8,45927,'Summon Friend'),(4,8,45927,'Summon Friend'),(7,5,45927,'Summon Friend'),(8,11,45927,'Summon Friend'),(9,3,45927,'Summon Friend'),(10,1,45927,'Summon Friend'),(22,1,45927,'Summon Friend'),(22,3,45927,'Summon Friend'),(22,4,45927,'Summon Friend'),(22,5,45927,'Summon Friend'),(22,6,45927,'Summon Friend'),(22,8,45927,'Summon Friend'),(22,9,45927,'Summon Friend'),(22,11,45927,'Summon Friend'),(10,1,32215,'Victorious State'),(22,1,32215,'Victorious State'),(10,1,2457,'Battle Stance'),(22,1,2457,'Battle Stance'),(2,1,88161,'Strike'),(1,1,88161,'Strike'),(1,2,35395,'Crusader Strike'),(3,2,35395,'Crusader Strike'),(6,2,35395,'Crusader Strike'),(10,2,35395,'Crusader Strike'),(11,2,35395,'Crusader Strike'),(1,3,3044,'Arcane Shot'),(2,3,3044,'Arcane Shot'),(3,3,3044,'Arcane Shot'),(4,3,3044,'Arcane Shot'),(5,3,3044,'Arcane Shot'),(6,3,3044,'Arcane Shot'),(8,3,3044,'Arcane Shot'),(9,3,3044,'Arcane Shot'),(10,3,3044,'Arcane Shot'),(11,3,3044,'Arcane Shot'),(22,3,3044,'Arcane Shot'),(0,4,1752,'Sinister Strike'),(6,5,585,'Smite'),(7,5,585,'Smite'),(22,5,585,'Smite'),(22,6,7934,'Anti-Venom'),(22,6,59879,'Blood Plague'),(22,6,48266,'Blood Presence'),(22,6,45902,'Blood Strike'),(22,6,47541,'Death Coil'),(22,6,49576,'Death Grip'),(22,6,10846,'First Aid'),(22,6,49410,'Forceful Deflection'),(22,6,59921,'Frost Fever'),(22,6,3276,'Heavy Linen Bandage'),(22,6,10841,'Heavy Mageweave Bandage'),(22,6,18630,'Heavy Runecloth Bandage'),(22,6,7929,'Heavy Silk Bandage'),(22,6,3278,'Heavy Wool Bandage'),(22,6,45477,'Icy Touch'),(22,6,33391,'Journeyman Riding'),(22,6,3275,'Linen Bandage'),(22,6,10840,'Mageweave Bandage'),(22,6,45462,'Plague Strike'),(22,6,18629,'Runecloth Bandage'),(22,6,61455,'Runic Focus'),(22,6,7928,'Silk Bandage'),(22,6,3277,'Wool Bandage'),(3,7,403,'Lightning Bolt'),(2,8,133,'Fireball'),(4,8,133,'Fireball'),(3,8,133,'Fireball'),(22,8,133,'Fireball'),(0,9,686,'Shadow Bolt'),(8,11,5176,'Wrath'),(22,11,5176,'Wrath'),(10,1,7266,'Duel'),(8,11,7266,'Duel'),(6,2,7266,'Duel'),(6,5,7266,'Duel'),(5,3,7266,'Duel'),(2,8,7266,'Duel'),(4,8,7266,'Duel'),(7,5,7266,'Duel'),(3,8,7266,'Duel'),(3,7,7266,'Duel'),(1,3,7266,'Duel'),(22,4,7266,'Duel'),(22,5,7266,'Duel'),(22,6,7266,'Duel'),(22,8,7266,'Duel'),(22,9,7266,'Duel'),(22,1,7266,'Duel'),(22,3,7266,'Duel'),(22,11,7266,'Duel'),(9,1,7266,'Duel'),(6,2,60091,'Judgement Anti-Parry/Dodge Passive'),(1,3,34082,'Advantaged State (DND)'),(5,3,34082,'Advantaged State (DND)'),(9,3,34082,'Advantaged State (DND)'),(22,3,34082,'Advantaged State (DND)'),(0,3,88163,'Attack'),(0,3,75,'Auto Shot'),(1,3,883,'Call Pet 1'),(1,3,24949,'Defensive State 2 (DND)'),(5,3,24949,'Defensive State 2 (DND)'),(9,3,24949,'Defensive State 2 (DND)'),(22,3,24949,'Defensive State 2 (DND)'),(1,1,6603,'Warrior Attack'),(22,9,58284,'Chaos Bolt Passive'),(3,9,58284,'Chaos Bolt Passive'),(8,9,58284,'Chaos Bolt Passive'),(9,9,58284,'Chaos Bolt Passive'),(22,6,45903,'Offensive State (DND)'),(22,6,3127,'Parry'),(22,6,68976,'Aberration'),(22,6,68992,'Darkflight'),(22,6,94293,'Enable Worgen Altered Form'),(22,6,68978,'Flayer'),(22,6,69001,'Transform: Worgen'),(22,6,68996,'Two Forms'),(22,6,68975,'Viciousness'),(9,6,69046,'Pack Hobgoblin'),(1,9,688,'Summon Imp'),(2,9,688,'Summon Imp'),(5,9,688,'Summon Imp'),(7,9,688,'Summon Imp'),(9,9,688,'Summon Imp'),(10,9,688,'Summon Imp'),(22,9,688,'Summon Imp'),(22,1,88161,'Strike'),(9,8,133,'Fireball'),(9,5,585,'Smite'),(9,7,403,'Lightning Bolt'),(22,1,88163,'Warrior Attack'),(11,1,88163,'Warrior Attack'),(10,1,88163,'Warrior Attack'),(9,1,88163,'Warrior Attack'),(8,1,88163,'Warrior Attack'),(7,1,88163,'Warrior Attack'),(6,1,88163,'Warrior Attack'),(5,1,88163,'Warrior Attack'),(4,1,88163,'Warrior Attack'),(3,1,88163,'Warrior Attack'),(2,1,88163,'Warrior Attack'),(1,1,88163,'Warrior Attack'),(1,4,674,'Dual Wield'),(2,4,674,'Dual Wield'),(3,4,674,'Dual Wield'),(4,4,674,'Dual Wield'),(5,4,674,'Dual Wield'),(7,4,674,'Dual Wield'),(8,4,674,'Dual Wield'),(9,4,674,'Dual Wield'),(10,4,674,'Dual Wield'),(22,4,674,'Dual Wield'),(1,6,674,'Dual Wield'),(2,6,674,'Dual Wield'),(3,6,674,'Dual Wield'),(4,6,674,'Dual Wield'),(5,6,674,'Dual Wield'),(7,6,674,'Dual Wield'),(6,6,674,'Dual Wield'),(8,6,674,'Dual Wield'),(9,6,674,'Dual Wield'),(10,6,674,'Dual Wield'),(11,6,674,'Dual Wield'),(22,6,674,'Dual Wield'),(2,3,883,'Call Pet 1'),(3,3,883,'Call Pet 1'),(4,3,883,'Call Pet 1'),(5,3,883,'Call Pet 1'),(6,3,883,'Call Pet 1'),(8,3,883,'Call Pet 1'),(9,3,883,'Call Pet 1'),(10,3,883,'Call Pet 1'),(11,3,883,'Call Pet 1'),(22,3,883,'Call Pet 1'),(1,3,982,'Revive Pet'),(2,3,982,'Revive Pet'),(3,3,982,'Revive Pet'),(4,3,982,'Revive Pet'),(5,3,982,'Revive Pet'),(6,3,982,'Revive Pet'),(8,3,982,'Revive Pet'),(9,3,982,'Revive Pet'),(10,3,982,'Revive Pet'),(11,3,982,'Revive Pet'),(22,3,982,'Revive Pet'),(9,1,2457,'Battle Stance'),(9,3,61437,'Opening'),(9,4,61437,'Opening'),(9,5,61437,'Opening'),(9,6,61437,'Opening'),(9,7,61437,'Opening'),(9,8,61437,'Opening'),(9,9,61437,'Opening'),(9,3,22810,'Opening'),(9,4,22810,'Opening'),(9,5,22810,'Opening'),(9,6,22810,'Opening'),(9,7,22810,'Opening'),(9,8,22810,'Opening'),(9,9,22810,'Opening'),(9,3,21651,'Opening'),(9,4,21651,'Opening'),(9,5,21651,'Opening'),(9,6,21651,'Opening'),(9,7,21651,'Opening'),(9,8,21651,'Opening'),(9,9,21651,'Opening'),(9,3,6478,'Opening'),(9,4,6478,'Opening'),(9,5,6478,'Opening'),(9,6,6478,'Opening'),(9,7,6478,'Opening'),(9,8,6478,'Opening'),(9,9,6478,'Opening'),(9,3,6477,'Opening'),(9,4,6477,'Opening'),(9,5,6477,'Opening'),(9,6,6477,'Opening'),(9,7,6477,'Opening'),(9,8,6477,'Opening'),(9,9,6477,'Opening'),(9,3,6247,'Opening'),(9,4,6247,'Opening'),(9,5,6247,'Opening'),(9,6,6247,'Opening'),(9,7,6247,'Opening'),(9,8,6247,'Opening'),(9,9,6247,'Opening'),(9,3,3365,'Opening'),(9,4,3365,'Opening'),(9,5,3365,'Opening'),(9,6,3365,'Opening'),(9,7,3365,'Opening'),(9,8,3365,'Opening'),(9,9,3365,'Opening'),(9,3,7266,'Duel'),(9,4,7266,'Duel'),(9,5,7266,'Duel'),(9,6,7266,'Duel'),(9,7,7266,'Duel'),(9,8,7266,'Duel'),(9,9,7266,'Duel');
/*!40000 ALTER TABLE `playercreateinfo_spell` ENABLE KEYS */;
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

