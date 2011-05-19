
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
DROP TABLE IF EXISTS `playercreateinfo_spell_custom`;
CREATE TABLE `playercreateinfo_spell_custom` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) DEFAULT NULL,
  `Active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`race`,`class`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `playercreateinfo_spell_custom` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_spell_custom` DISABLE KEYS */;
INSERT INTO `playercreateinfo_spell_custom` VALUES (1,1,78,'Heroic Strike',1),(1,1,81,'Dodge',1),(1,1,107,'Block',1),(1,1,196,'One-Handed Axes',1),(1,1,198,'One-Handed Maces',1),(1,1,201,'One-Handed Swords',1),(1,1,203,'Unarmed',1),(1,1,204,'Defense',1),(1,1,522,'SPELLDEFENSE(DND)',1),(1,1,668,'Language Common',1),(1,1,2382,'Generic',1),(1,1,2457,'Battle Stance',1),(1,1,2479,'Honorless Target',1),(1,1,3050,'Detect',1),(1,1,3365,'Opening',1),(1,1,5301,'Defensive State(DND)',1),(1,1,6233,'Closing',1),(1,1,6246,'Closing',1),(1,1,6247,'Opening',1),(1,1,6477,'Opening',1),(1,1,6478,'Opening',1),(1,1,6603,'Attack',1),(1,1,7266,'Duel',1),(1,1,7267,'Grovel',1),(1,1,7355,'Stuck',1),(1,1,7376,'Defensive Stance Passive',0),(1,1,7381,'Berserker Stance Passive',0),(1,1,8386,'Attacking',1),(11,7,8737,'Mail',1),(1,1,9077,'Leather',1),(1,1,9078,'Cloth',1),(1,1,9116,'Shield',1),(1,1,9125,'Generic',1),(1,1,20597,'Sword Specialization',1),(1,1,20598,'The Human Spirit',1),(1,1,20599,'Diplomacy',1),(1,1,20600,'Perception',1),(1,1,20864,'Mace Specialization',1),(1,1,21156,'Battle Stance Passive',0),(1,1,21651,'Opening',1),(1,1,21652,'Closing',1),(1,1,22027,'Remove Insignia',1),(1,1,22810,'Opening - No Text',1),(1,1,32215,'Victorious State',1),(1,2,81,'Dodge',1),(1,2,107,'Block',1),(1,2,198,'One-Handed Maces',1),(1,2,199,'Two-Handed Maces',1),(1,2,203,'Unarmed',1),(1,2,204,'Defense',1),(1,2,522,'SPELLDEFENSE(DND)',1),(1,2,635,'Holy Light',1),(1,2,668,'Language Common',1),(1,2,2382,'Generic',1),(1,2,2479,'Honorless Target',1),(1,2,3050,'Detect',1),(1,2,3365,'Opening',1),(1,2,6233,'Closing',1),(1,2,6246,'Closing',1),(1,2,6247,'Opening',1),(1,2,6477,'Opening',1),(1,2,6478,'Opening',1),(1,2,6603,'Attack',1),(1,2,7266,'Duel',1),(1,2,7267,'Grovel',1),(1,2,7355,'Stuck',1),(1,2,8386,'Attacking',1),(9,7,8737,'Mail',1),(1,2,9077,'Leather',1),(1,2,9078,'Cloth',1),(1,2,9116,'Shield',1),(1,2,9125,'Generic',1),(1,2,21084,'Seal of Righteousness',1),(1,2,20597,'Sword Specialization',1),(1,2,20598,'The Human Spirit',1),(1,2,20599,'Diplomacy',1),(1,2,20600,'Perception',1),(1,2,20864,'Mace Specialization',1),(1,2,21651,'Opening',1),(1,2,21652,'Closing',1),(1,2,22027,'Remove Insignia',1),(1,2,22810,'Opening - No Text',1),(1,2,27762,'Libram',1),(1,4,81,'Dodge',1),(1,4,203,'Unarmed',1),(1,4,204,'Defense',1),(1,4,522,'SPELLDEFENSE(DND)',1),(1,4,668,'Language Common',1),(1,4,1180,'Daggers',1),(1,4,1752,'Sinister Strike',1),(1,4,2098,'Eviscerate',1),(1,4,2382,'Generic',1),(1,4,2479,'Honorless Target',1),(1,4,2567,'Thrown',1),(1,4,2764,'Throw',1),(1,4,3050,'Detect',1),(1,4,3365,'Opening',1),(1,4,6233,'Closing',1),(1,4,6246,'Closing',1),(1,4,6247,'Opening',1),(1,4,6477,'Opening',1),(1,4,6478,'Opening',1),(1,4,6603,'Attack',1),(1,4,7266,'Duel',1),(1,4,7267,'Grovel',1),(1,4,7355,'Stuck',1),(1,4,8386,'Attacking',1),(1,4,9077,'Leather',1),(1,4,9078,'Cloth',1),(1,4,9125,'Generic',1),(1,4,16092,'Defensive State(DND)',1),(1,4,20597,'Sword Specialization',1),(1,4,20598,'The Human Spirit',1),(1,4,20599,'Diplomacy',1),(1,4,20600,'Perception',1),(1,4,20864,'Mace Specialization',1),(1,4,21184,'Rogue Passive(DND)',1),(1,4,21651,'Opening',1),(1,4,21652,'Closing',1),(1,4,22027,'Remove Insignia',1),(1,4,22810,'Opening - No Text',1),(1,5,81,'Dodge',1),(1,5,198,'One-Handed Maces',1),(1,5,203,'Unarmed',1),(1,5,204,'Defense',1),(1,5,522,'SPELLDEFENSE(DND)',1),(1,5,585,'Smite',1),(1,5,668,'Language Common',1),(1,5,2050,'Lesser Heal',1),(1,5,2382,'Generic',1),(1,5,2479,'Honorless Target',1),(1,5,3050,'Detect',1),(1,5,3365,'Opening',1),(1,5,5009,'Wands',1),(1,5,5019,'Shoot',1),(1,5,6233,'Closing',1),(1,5,6246,'Closing',1),(1,5,6247,'Opening',1),(1,5,6477,'Opening',1),(1,5,6478,'Opening',1),(1,5,6603,'Attack',1),(1,5,7266,'Duel',1),(1,5,7267,'Grovel',1),(1,5,7355,'Stuck',1),(1,5,8386,'Attacking',1),(1,5,9078,'Cloth',1),(1,5,9125,'Generic',1),(1,5,20597,'Sword Specialization',1),(1,5,20598,'The Human Spirit',1),(1,5,20599,'Diplomacy',1),(1,5,20600,'Perception',1),(1,5,20864,'Mace Specialization',1),(1,5,21651,'Opening',1),(1,5,21652,'Closing',1),(1,5,22027,'Remove Insignia',1),(1,5,22810,'Opening - No Text',1),(1,8,81,'Dodge',1),(1,8,133,'Fireball',1),(1,8,168,'Frost Armor',1),(1,8,203,'Unarmed',1),(1,8,204,'Defense',1),(1,8,227,'Staves',1),(1,8,522,'SPELLDEFENSE(DND)',1),(1,8,668,'Language Common',1),(1,8,2382,'Generic',1),(1,8,2479,'Honorless Target',1),(1,8,3050,'Detect',1),(1,8,3365,'Opening',1),(1,8,5009,'Wands',1),(1,8,5019,'Shoot',1),(1,8,6233,'Closing',1),(1,8,6246,'Closing',1),(1,8,6247,'Opening',1),(1,8,6477,'Opening',1),(1,8,6478,'Opening',1),(1,8,6603,'Attack',1),(1,8,7266,'Duel',1),(1,8,7267,'Grovel',1),(1,8,7355,'Stuck',1),(1,8,8386,'Attacking',1),(1,8,9078,'Cloth',1),(1,8,9125,'Generic',1),(1,8,20597,'Sword Specialization',1),(1,8,20598,'The Human Spirit',1),(1,8,20599,'Diplomacy',1),(1,8,20600,'Perception',1),(1,8,20864,'Mace Specialization',1),(1,8,21651,'Opening',1),(1,8,21652,'Closing',1),(1,8,22027,'Remove Insignia',1),(1,8,22810,'Opening - No Text',1),(1,9,81,'Dodge',1),(1,9,203,'Unarmed',1),(1,9,204,'Defense',1),(1,9,522,'SPELLDEFENSE(DND)',1),(1,9,668,'Language Common',1),(1,9,686,'Shadow Bolt',1),(1,9,687,'Demon Skin',1),(1,9,1180,'Daggers',1),(1,9,2382,'Generic',1),(1,9,2479,'Honorless Target',1),(1,9,3050,'Detect',1),(1,9,3365,'Opening',1),(1,9,5009,'Wands',1),(1,9,5019,'Shoot',1),(1,9,6233,'Closing',1),(1,9,6246,'Closing',1),(1,9,6247,'Opening',1),(1,9,6477,'Opening',1),(1,9,6478,'Opening',1),(1,9,6603,'Attack',1),(1,9,7266,'Duel',1),(1,9,7267,'Grovel',1),(1,9,7355,'Stuck',1),(1,9,8386,'Attacking',1),(1,9,9078,'Cloth',1),(1,9,9125,'Generic',1),(1,9,20597,'Sword Specialization',1),(1,9,20598,'The Human Spirit',1),(1,9,20599,'Diplomacy',1),(1,9,20600,'Perception',1),(1,9,20864,'Mace Specialization',1),(1,9,21651,'Opening',1),(1,9,21652,'Closing',1),(1,9,22027,'Remove Insignia',1),(1,9,22810,'Opening - No Text',1),(2,1,78,'Heroic Strike',1),(2,1,81,'Dodge',1),(2,1,107,'Block',1),(2,1,196,'One-Handed Axes',1),(2,1,197,'Two-Handed Axes',1),(2,1,201,'One-Handed Swords',1),(2,1,203,'Unarmed',1),(2,1,204,'Defense',1),(2,1,522,'SPELLDEFENSE(DND)',1),(2,1,669,'Language Orcish',1),(2,1,2382,'Generic',1),(2,1,2457,'Battle Stance',1),(2,1,2479,'Honorless Target',1),(2,1,3050,'Detect',1),(2,1,3365,'Opening',1),(2,1,5301,'Defensive State(DND)',1),(2,1,6233,'Closing',1),(2,1,6246,'Closing',1),(2,1,6247,'Opening',1),(2,1,6477,'Opening',1),(2,1,6478,'Opening',1),(2,1,6603,'Attack',1),(2,1,7266,'Duel',1),(2,1,7267,'Grovel',1),(2,1,7355,'Stuck',1),(2,1,7376,'Defensive Stance Passive',0),(2,1,7381,'Berserker Stance Passive',0),(2,1,8386,'Attacking',1),(8,7,8737,'Mail',1),(2,1,9077,'Leather',1),(2,1,9078,'Cloth',1),(2,1,9116,'Shield',1),(2,1,9125,'Generic',1),(2,1,20572,'Blood Fury',1),(2,1,20573,'Hardiness',1),(2,1,20574,'Axe Specialization',1),(2,1,21156,'Battle Stance Passive',0),(2,1,21563,'Command',1),(2,1,21651,'Opening',1),(2,1,21652,'Closing',1),(2,1,22027,'Remove Insignia',1),(2,1,22810,'Opening - No Text',1),(2,1,32215,'Victorious State',1),(2,3,75,'Auto Shot',1),(2,3,81,'Dodge',1),(2,3,196,'One-Handed Axes',1),(2,3,203,'Unarmed',1),(2,3,204,'Defense',1),(2,3,264,'Bows',1),(2,3,522,'SPELLDEFENSE(DND)',1),(2,3,669,'Language Orcish',1),(2,3,2382,'Generic',1),(2,3,2479,'Honorless Target',1),(2,3,2973,'Raptor Strike',1),(2,3,3050,'Detect',1),(2,3,3365,'Opening',1),(2,3,6233,'Closing',1),(2,3,6246,'Closing',1),(2,3,6247,'Opening',1),(2,3,6477,'Opening',1),(2,3,6478,'Opening',1),(2,3,6603,'Attack',1),(2,3,7266,'Duel',1),(2,3,7267,'Grovel',1),(2,3,7355,'Stuck',1),(2,3,8386,'Attacking',1),(2,3,9077,'Leather',1),(2,3,9078,'Cloth',1),(2,3,9125,'Generic',1),(2,3,13358,'Defensive State(DND)',1),(2,3,20572,'Blood Fury',1),(2,3,20573,'Hardiness',1),(2,3,20574,'Axe Specialization',1),(2,3,20576,'Command',1),(2,3,21651,'Opening',1),(2,3,21652,'Closing',1),(2,3,22027,'Remove Insignia',1),(2,3,22810,'Opening - No Text',1),(2,3,24949,'Defensive State 2(DND)',1),(2,3,34082,'Advantaged State(DND)',1),(2,4,81,'Dodge',1),(2,4,203,'Unarmed',1),(2,4,204,'Defense',1),(2,4,522,'SPELLDEFENSE(DND)',1),(2,4,669,'Language Orcish',1),(2,4,1180,'Daggers',1),(2,4,1752,'Sinister Strike',1),(2,4,2098,'Eviscerate',1),(2,4,2382,'Generic',1),(2,4,2479,'Honorless Target',1),(2,4,2567,'Thrown',1),(2,4,2764,'Throw',1),(2,4,3050,'Detect',1),(2,4,3365,'Opening',1),(2,4,6233,'Closing',1),(2,4,6246,'Closing',1),(2,4,6247,'Opening',1),(2,4,6477,'Opening',1),(2,4,6478,'Opening',1),(2,4,6603,'Attack',1),(2,4,7266,'Duel',1),(2,4,7267,'Grovel',1),(2,4,7355,'Stuck',1),(2,4,8386,'Attacking',1),(2,4,9077,'Leather',1),(2,4,9078,'Cloth',1),(2,4,9125,'Generic',1),(2,4,16092,'Defensive State(DND)',1),(2,4,20572,'Blood Fury',1),(2,4,20573,'Hardiness',1),(2,4,20574,'Axe Specialization',1),(2,4,21184,'Rogue Passive(DND)',1),(2,4,21563,'Command',1),(2,4,21651,'Opening',1),(2,4,21652,'Closing',1),(2,4,22027,'Remove Insignia',1),(2,4,22810,'Opening - No Text',1),(2,7,81,'Dodge',1),(2,7,107,'Block',1),(2,7,198,'One-Handed Maces',1),(2,7,203,'Unarmed',1),(2,7,204,'Defense',1),(2,7,227,'Staves',1),(2,7,331,'Healing Wave',1),(2,7,403,'Lightning Bolt',1),(2,7,522,'SPELLDEFENSE(DND)',1),(2,7,669,'Language Orcish',1),(2,7,2382,'Generic',1),(2,7,2479,'Honorless Target',1),(2,7,3050,'Detect',1),(2,7,3365,'Opening',1),(2,7,6233,'Closing',1),(2,7,6246,'Closing',1),(2,7,6247,'Opening',1),(2,7,6477,'Opening',1),(2,7,6478,'Opening',1),(2,7,6603,'Attack',1),(2,7,7266,'Duel',1),(2,7,7267,'Grovel',1),(2,7,7355,'Stuck',1),(2,7,8386,'Attacking',1),(2,7,9077,'Leather',1),(2,7,9078,'Cloth',1),(2,7,9116,'Shield',1),(2,7,9125,'Generic',1),(2,7,20573,'Hardiness',1),(2,7,20574,'Axe Specialization',1),(2,7,21563,'Command',1),(2,7,21651,'Opening',1),(2,7,21652,'Closing',1),(2,7,22027,'Remove Insignia',1),(2,7,22810,'Opening - No Text',1),(2,7,27763,'Totem',1),(2,7,33697,'Blood Fury',1),(2,9,81,'Dodge',1),(2,9,203,'Unarmed',1),(2,9,204,'Defense',1),(2,9,522,'SPELLDEFENSE(DND)',1),(2,9,669,'Language Orcish',1),(2,9,686,'Shadow Bolt',1),(2,9,687,'Demon Skin',1),(2,9,1180,'Daggers',1),(2,9,2382,'Generic',1),(2,9,2479,'Honorless Target',1),(2,9,3050,'Detect',1),(2,9,3365,'Opening',1),(2,9,5009,'Wands',1),(2,9,5019,'Shoot',1),(2,9,6233,'Closing',1),(2,9,6246,'Closing',1),(2,9,6247,'Opening',1),(2,9,6477,'Opening',1),(2,9,6478,'Opening',1),(2,9,6603,'Attack',1),(2,9,7266,'Duel',1),(2,9,7267,'Grovel',1),(2,9,7355,'Stuck',1),(2,9,8386,'Attacking',1),(2,9,9078,'Cloth',1),(2,9,9125,'Generic',1),(2,9,20573,'Hardiness',1),(2,9,20574,'Axe Specialization',1),(2,9,20575,'Command',1),(2,9,21651,'Opening',1),(2,9,21652,'Closing',1),(2,9,22027,'Remove Insignia',1),(2,9,22810,'Opening - No Text',1),(2,9,33702,'Blood Fury',1),(3,1,78,'Heroic Strike',1),(3,1,81,'Dodge',1),(3,1,107,'Block',1),(3,1,196,'One-Handed Axes',1),(3,1,197,'Two-Handed Axes',1),(3,1,198,'One-Handed Maces',1),(3,1,203,'Unarmed',1),(3,1,204,'Defense',1),(3,1,522,'SPELLDEFENSE(DND)',1),(3,1,668,'Language Common',1),(3,1,672,'Language Dwarven',1),(3,1,2382,'Generic',1),(3,1,2457,'Battle Stance',1),(3,1,2479,'Honorless Target',1),(3,1,2481,'Find Treasure',1),(3,1,3050,'Detect',1),(3,1,3365,'Opening',1),(3,1,5301,'Defensive State(DND)',1),(3,1,6233,'Closing',1),(3,1,6246,'Closing',1),(3,1,6247,'Opening',1),(3,1,6477,'Opening',1),(3,1,6478,'Opening',1),(3,1,6603,'Attack',1),(3,1,7266,'Duel',1),(3,1,7267,'Grovel',1),(3,1,7355,'Stuck',1),(3,1,7376,'Defensive Stance Passive',0),(3,1,7381,'Berserker Stance Passive',0),(3,1,8386,'Attacking',1),(6,7,8737,'Mail',1),(3,1,9077,'Leather',1),(3,1,9078,'Cloth',1),(3,1,9116,'Shield',1),(3,1,9125,'Generic',1),(3,1,20594,'Stoneform',1),(3,1,20595,'Gun Specialization',1),(3,1,20596,'Frost Resistance',1),(3,1,21156,'Battle Stance Passive',0),(3,1,21651,'Opening',1),(3,1,21652,'Closing',1),(3,1,22027,'Remove Insignia',1),(3,1,22810,'Opening - No Text',1),(3,1,32215,'Victorious State',1),(3,2,81,'Dodge',1),(3,2,107,'Block',1),(3,2,198,'One-Handed Maces',1),(3,2,199,'Two-Handed Maces',1),(3,2,203,'Unarmed',1),(3,2,204,'Defense',1),(3,2,522,'SPELLDEFENSE(DND)',1),(3,2,635,'Holy Light',1),(3,2,668,'Language Common',1),(3,2,672,'Language Dwarven',1),(3,2,2382,'Generic',1),(3,2,2479,'Honorless Target',1),(3,2,2481,'Find Treasure',1),(3,2,3050,'Detect',1),(3,2,3365,'Opening',1),(3,2,6233,'Closing',1),(3,2,6246,'Closing',1),(3,2,6247,'Opening',1),(3,2,6477,'Opening',1),(3,2,6478,'Opening',1),(3,2,6603,'Attack',1),(3,2,7266,'Duel',1),(3,2,7267,'Grovel',1),(3,2,7355,'Stuck',1),(3,2,8386,'Attacking',1),(3,7,8737,'Mail',1),(3,2,9077,'Leather',1),(3,2,9078,'Cloth',1),(3,2,9116,'Shield',1),(3,2,9125,'Generic',1),(3,2,21084,'Seal of Righteousness',1),(3,2,20594,'Stoneform',1),(3,2,20595,'Gun Specialization',1),(3,2,20596,'Frost Resistance',1),(3,2,21651,'Opening',1),(3,2,21652,'Closing',1),(3,2,22027,'Remove Insignia',1),(3,2,22810,'Opening - No Text',1),(3,2,27762,'Libram',1),(3,3,75,'Auto Shot',1),(3,3,81,'Dodge',1),(3,3,196,'One-Handed Axes',1),(3,3,203,'Unarmed',1),(3,3,204,'Defense',1),(3,3,266,'Guns',1),(3,3,522,'SPELLDEFENSE(DND)',1),(3,3,668,'Language Common',1),(3,3,672,'Language Dwarven',1),(3,3,2382,'Generic',1),(3,3,2479,'Honorless Target',1),(3,3,2481,'Find Treasure',1),(3,3,2973,'Raptor Strike',1),(3,3,3050,'Detect',1),(3,3,3365,'Opening',1),(3,3,6233,'Closing',1),(3,3,6246,'Closing',1),(3,3,6247,'Opening',1),(3,3,6477,'Opening',1),(3,3,6478,'Opening',1),(3,3,6603,'Attack',1),(3,3,7266,'Duel',1),(3,3,7267,'Grovel',1),(3,3,7355,'Stuck',1),(3,3,8386,'Attacking',1),(3,3,9077,'Leather',1),(3,3,9078,'Cloth',1),(3,3,9125,'Generic',1),(3,3,13358,'Defensive State(DND)',1),(3,3,20594,'Stoneform',1),(3,3,20595,'Gun Specialization',1),(3,3,20596,'Frost Resistance',1),(3,3,21651,'Opening',1),(3,3,21652,'Closing',1),(3,3,22027,'Remove Insignia',1),(3,3,22810,'Opening - No Text',1),(3,3,24949,'Defensive State 2(DND)',1),(3,3,34082,'Advantaged State(DND)',1),(3,4,81,'Dodge',1),(3,4,203,'Unarmed',1),(3,4,204,'Defense',1),(3,4,522,'SPELLDEFENSE(DND)',1),(3,4,668,'Language Common',1),(3,4,672,'Language Dwarven',1),(3,4,1180,'Daggers',1),(3,4,1752,'Sinister Strike',1),(3,4,2098,'Eviscerate',1),(3,4,2382,'Generic',1),(3,4,2479,'Honorless Target',1),(3,4,2481,'Find Treasure',1),(3,4,2567,'Thrown',1),(3,4,2764,'Throw',1),(3,4,3050,'Detect',1),(3,4,3365,'Opening',1),(3,4,6233,'Closing',1),(3,4,6246,'Closing',1),(3,4,6247,'Opening',1),(3,4,6477,'Opening',1),(3,4,6478,'Opening',1),(3,4,6603,'Attack',1),(3,4,7266,'Duel',1),(3,4,7267,'Grovel',1),(3,4,7355,'Stuck',1),(3,4,8386,'Attacking',1),(3,4,9077,'Leather',1),(3,4,9078,'Cloth',1),(3,4,9125,'Generic',1),(3,4,16092,'Defensive State(DND)',1),(3,4,20594,'Stoneform',1),(3,4,20595,'Gun Specialization',1),(3,4,20596,'Frost Resistance',1),(3,4,21184,'Rogue Passive(DND)',1),(3,4,21651,'Opening',1),(3,4,21652,'Closing',1),(3,4,22027,'Remove Insignia',1),(3,4,22810,'Opening - No Text',1),(3,5,81,'Dodge',1),(3,5,198,'One-Handed Maces',1),(3,5,203,'Unarmed',1),(3,5,204,'Defense',1),(3,5,522,'SPELLDEFENSE(DND)',1),(3,5,585,'Smite',1),(3,5,668,'Language Common',1),(3,5,672,'Language Dwarven',1),(3,5,2050,'Lesser Heal',1),(3,5,2382,'Generic',1),(3,5,2479,'Honorless Target',1),(3,5,2481,'Find Treasure',1),(3,5,3050,'Detect',1),(3,5,3365,'Opening',1),(3,5,5009,'Wands',1),(3,5,5019,'Shoot',1),(3,5,6233,'Closing',1),(3,5,6246,'Closing',1),(3,5,6247,'Opening',1),(3,5,6477,'Opening',1),(3,5,6478,'Opening',1),(3,5,6603,'Attack',1),(3,5,7266,'Duel',1),(3,5,7267,'Grovel',1),(3,5,7355,'Stuck',1),(3,5,8386,'Attacking',1),(3,5,9078,'Cloth',1),(3,5,9125,'Generic',1),(3,5,20594,'Stoneform',1),(3,5,20595,'Gun Specialization',1),(3,5,20596,'Frost Resistance',1),(3,5,21651,'Opening',1),(3,5,21652,'Closing',1),(3,5,22027,'Remove Insignia',1),(3,5,22810,'Opening - No Text',1),(4,1,78,'Heroic Strike',1),(4,1,81,'Dodge',1),(4,1,107,'Block',1),(4,1,198,'One-Handed Maces',1),(4,1,201,'One-Handed Swords',1),(4,1,203,'Unarmed',1),(4,1,204,'Defense',1),(4,1,522,'SPELLDEFENSE(DND)',1),(4,1,668,'Language Common',1),(4,1,671,'Language Darnassian',1),(4,1,1180,'Daggers',1),(4,1,2382,'Generic',1),(4,1,2457,'Battle Stance',1),(4,1,2479,'Honorless Target',1),(4,1,3050,'Detect',1),(4,1,3365,'Opening',1),(4,1,5301,'Defensive State(DND)',1),(4,1,6233,'Closing',1),(4,1,6246,'Closing',1),(4,1,6247,'Opening',1),(4,1,6477,'Opening',1),(4,1,6478,'Opening',1),(4,1,6603,'Attack',1),(4,1,7266,'Duel',1),(4,1,7267,'Grovel',1),(4,1,7355,'Stuck',1),(4,1,7376,'Defensive Stance Passive',0),(4,1,7381,'Berserker Stance Passive',0),(4,1,8386,'Attacking',1),(2,7,8737,'Mail',1),(4,1,9077,'Leather',1),(4,1,9078,'Cloth',1),(4,1,9116,'Shield',1),(4,1,9125,'Generic',1),(4,1,20580,'Shadowmeld',1),(4,1,20582,'Quickness',1),(4,1,20583,'Nature Resistance',1),(4,1,20585,'Wisp Spirit',1),(4,1,21009,'Shadowmeld Passive',1),(4,1,21156,'Battle Stance Passive',0),(4,1,21651,'Opening',1),(4,1,21652,'Closing',1),(4,1,22027,'Remove Insignia',1),(4,1,22810,'Opening - No Text',1),(4,1,32215,'Victorious State',1),(4,3,75,'Auto Shot',1),(4,3,81,'Dodge',1),(4,3,203,'Unarmed',1),(4,3,204,'Defense',1),(4,3,264,'Bows',1),(4,3,522,'SPELLDEFENSE(DND)',1),(4,3,668,'Language Common',1),(4,3,671,'Language Darnassian',1),(4,3,1180,'Daggers',1),(4,3,2382,'Generic',1),(4,3,2479,'Honorless Target',1),(4,3,2973,'Raptor Strike',1),(4,3,3050,'Detect',1),(4,3,3365,'Opening',1),(4,3,6233,'Closing',1),(4,3,6246,'Closing',1),(4,3,6247,'Opening',1),(4,3,6477,'Opening',1),(4,3,6478,'Opening',1),(4,3,6603,'Attack',1),(4,3,7266,'Duel',1),(4,3,7267,'Grovel',1),(4,3,7355,'Stuck',1),(4,3,8386,'Attacking',1),(4,3,9077,'Leather',1),(4,3,9078,'Cloth',1),(4,3,9125,'Generic',1),(4,3,13358,'Defensive State(DND)',1),(4,3,20580,'Shadowmeld',1),(4,3,20582,'Quickness',1),(4,3,20583,'Nature Resistance',1),(4,3,20585,'Wisp Spirit',1),(4,3,21009,'Shadowmeld Passive',1),(4,3,21651,'Opening',1),(4,3,21652,'Closing',1),(4,3,22027,'Remove Insignia',1),(4,3,22810,'Opening - No Text',1),(4,3,24949,'Defensive State 2(DND)',1),(4,3,34082,'Advantaged State(DND)',1),(4,4,81,'Dodge',1),(4,4,203,'Unarmed',1),(4,4,204,'Defense',1),(4,4,522,'SPELLDEFENSE(DND)',1),(4,4,668,'Language Common',1),(4,4,671,'Language Darnassian',1),(4,4,1180,'Daggers',1),(4,4,1752,'Sinister Strike',1),(4,4,2098,'Eviscerate',1),(4,4,2382,'Generic',1),(4,4,2479,'Honorless Target',1),(4,4,2567,'Thrown',1),(4,4,2764,'Throw',1),(4,4,3050,'Detect',1),(4,4,3365,'Opening',1),(4,4,6233,'Closing',1),(4,4,6246,'Closing',1),(4,4,6247,'Opening',1),(4,4,6477,'Opening',1),(4,4,6478,'Opening',1),(4,4,6603,'Attack',1),(4,4,7266,'Duel',1),(4,4,7267,'Grovel',1),(4,4,7355,'Stuck',1),(4,4,8386,'Attacking',1),(4,4,9077,'Leather',1),(4,4,9078,'Cloth',1),(4,4,9125,'Generic',1),(4,4,16092,'Defensive State(DND)',1),(4,4,20580,'Shadowmeld',1),(4,4,20582,'Quickness',1),(4,4,20583,'Nature Resistance',1),(4,4,20585,'Wisp Spirit',1),(4,4,21009,'Shadowmeld Passive',1),(4,4,21184,'Rogue Passive(DND)',1),(4,4,21651,'Opening',1),(4,4,21652,'Closing',1),(4,4,22027,'Remove Insignia',1),(4,4,22810,'Opening - No Text',1),(4,5,81,'Dodge',1),(4,5,198,'One-Handed Maces',1),(4,5,203,'Unarmed',1),(4,5,204,'Defense',1),(4,5,522,'SPELLDEFENSE(DND)',1),(4,5,585,'Smite',1),(4,5,668,'Language Common',1),(4,5,671,'Language Darnassian',1),(4,5,2050,'Lesser Heal',1),(4,5,2382,'Generic',1),(4,5,2479,'Honorless Target',1),(4,5,3050,'Detect',1),(4,5,3365,'Opening',1),(4,5,5009,'Wands',1),(4,5,5019,'Shoot',1),(4,5,6233,'Closing',1),(4,5,6246,'Closing',1),(4,5,6247,'Opening',1),(4,5,6477,'Opening',1),(4,5,6478,'Opening',1),(4,5,6603,'Attack',1),(4,5,7266,'Duel',1),(4,5,7267,'Grovel',1),(4,5,7355,'Stuck',1),(4,5,8386,'Attacking',1),(4,5,9078,'Cloth',1),(4,5,9125,'Generic',1),(4,5,20580,'Shadowmeld',1),(4,5,20582,'Quickness',1),(4,5,20583,'Nature Resistance',1),(4,5,20585,'Wisp Spirit',1),(4,5,21009,'Shadowmeld Passive',1),(4,5,21651,'Opening',1),(4,5,21652,'Closing',1),(4,5,22027,'Remove Insignia',1),(4,5,22810,'Opening - No Text',1),(4,11,81,'Dodge',1),(4,11,203,'Unarmed',1),(4,11,204,'Defense',1),(4,11,227,'Staves',1),(4,11,522,'SPELLDEFENSE(DND)',1),(4,11,668,'Language Common',1),(4,11,671,'Language Darnassian',1),(4,11,1178,'Bear Form(Passive)',0),(4,11,1180,'Daggers',1),(4,11,2382,'Generic',1),(4,11,2479,'Honorless Target',1),(4,11,3025,'Cat Form(Passive)',0),(4,11,3050,'Detect',1),(4,11,3365,'Opening',1),(4,11,5176,'Wrath',1),(4,11,5185,'Healing Touch',1),(4,11,5419,'Travel Form(Passive)',0),(4,11,5420,'Tree of Life',0),(4,11,5421,'Aquatic Form(Passive)',0),(4,11,6233,'Closing',1),(4,11,6246,'Closing',1),(4,11,6247,'Opening',1),(4,11,6477,'Opening',1),(4,11,6478,'Opening',1),(4,11,6603,'Attack',1),(4,11,7266,'Duel',1),(4,11,7267,'Grovel',1),(4,11,7355,'Stuck',1),(4,11,8386,'Attacking',1),(4,11,9077,'Leather',1),(4,11,9078,'Cloth',1),(4,11,9125,'Generic',1),(4,11,9635,'Dire Bear Form(Passive)',0),(4,11,20580,'Shadowmeld',1),(4,11,20582,'Quickness',1),(4,11,20583,'Nature Resistance',1),(4,11,20585,'Wisp Spirit',1),(4,11,21009,'Shadowmeld Passive',1),(4,11,21178,'Bear Form(Passive2)',0),(4,11,21651,'Opening',1),(4,11,21652,'Closing',1),(4,11,22027,'Remove Insignia',1),(4,11,22810,'Opening - No Text',1),(4,11,24905,'Moonkin Form(Passive)',0),(4,11,27764,'Fetish',1),(4,11,33948,'Flight Form(Passive)',0),(4,11,34123,'Tree of Life(Passive)',0),(4,11,40121,'Swift Flight Form(Passive)',0),(5,1,78,'Heroic Strike',1),(5,1,81,'Dodge',1),(5,1,107,'Block',1),(5,1,201,'One-Handed Swords',1),(5,1,202,'Two-Handed Swords',1),(5,1,203,'Unarmed',1),(5,1,204,'Defense',1),(5,1,522,'SPELLDEFENSE(DND)',1),(5,1,669,'Language Orcish',1),(5,1,1180,'Daggers',1),(5,1,2382,'Generic',1),(5,1,2457,'Battle Stance',1),(5,1,2479,'Honorless Target',1),(5,1,3050,'Detect',1),(5,1,3365,'Opening',1),(5,1,5227,'Underwater Breathing',1),(5,1,5301,'Defensive State(DND)',1),(5,1,6233,'Closing',1),(5,1,6246,'Closing',1),(5,1,6247,'Opening',1),(5,1,6477,'Opening',1),(5,1,6478,'Opening',1),(5,1,6603,'Attack',1),(5,1,7266,'Duel',1),(5,1,7267,'Grovel',1),(5,1,7355,'Stuck',1),(5,1,7376,'Defensive Stance Passive',0),(5,1,7381,'Berserker Stance Passive',0),(5,1,7744,'Will of the Forsaken',1),(5,1,8386,'Attacking',1),(22,3,8737,'Mail',1),(5,1,9077,'Leather',1),(5,1,9078,'Cloth',1),(5,1,9116,'Shield',1),(5,1,9125,'Generic',1),(5,1,17737,'Language Gutterspeak',1),(5,1,20577,'Cannibalize',1),(5,1,20579,'Shadow Resistance',1),(5,1,21156,'Battle Stance Passive',0),(5,1,21651,'Opening',1),(5,1,21652,'Closing',1),(5,1,22027,'Remove Insignia',1),(5,1,22810,'Opening - No Text',1),(5,1,32215,'Victorious State',1),(5,4,81,'Dodge',1),(5,4,203,'Unarmed',1),(5,4,204,'Defense',1),(5,4,522,'SPELLDEFENSE(DND)',1),(5,4,669,'Language Orcish',1),(5,4,1180,'Daggers',1),(5,4,1752,'Sinister Strike',1),(5,4,2098,'Eviscerate',1),(5,4,2382,'Generic',1),(5,4,2479,'Honorless Target',1),(5,4,2567,'Thrown',1),(5,4,2764,'Throw',1),(5,4,3050,'Detect',1),(5,4,3365,'Opening',1),(5,4,5227,'Underwater Breathing',1),(5,4,6233,'Closing',1),(5,4,6246,'Closing',1),(5,4,6247,'Opening',1),(5,4,6477,'Opening',1),(5,4,6478,'Opening',1),(5,4,6603,'Attack',1),(5,4,7266,'Duel',1),(5,4,7267,'Grovel',1),(5,4,7355,'Stuck',1),(5,4,7744,'Will of the Forsaken',1),(5,4,8386,'Attacking',1),(5,4,9077,'Leather',1),(5,4,9078,'Cloth',1),(5,4,9125,'Generic',1),(5,4,16092,'Defensive State(DND)',1),(5,4,17737,'Language Gutterspeak',1),(5,4,20577,'Cannibalize',1),(5,4,20579,'Shadow Resistance',1),(5,4,21184,'Rogue Passive(DND)',1),(5,4,21651,'Opening',1),(5,4,21652,'Closing',1),(5,4,22027,'Remove Insignia',1),(5,4,22810,'Opening - No Text',1),(5,5,81,'Dodge',1),(5,5,198,'One-Handed Maces',1),(5,5,203,'Unarmed',1),(5,5,204,'Defense',1),(5,5,522,'SPELLDEFENSE(DND)',1),(5,5,585,'Smite',1),(5,5,669,'Language Orcish',1),(5,5,2050,'Lesser Heal',1),(5,5,2382,'Generic',1),(5,5,2479,'Honorless Target',1),(5,5,3050,'Detect',1),(5,5,3365,'Opening',1),(5,5,5009,'Wands',1),(5,5,5019,'Shoot',1),(5,5,5227,'Underwater Breathing',1),(5,5,6233,'Closing',1),(5,5,6246,'Closing',1),(5,5,6247,'Opening',1),(5,5,6477,'Opening',1),(5,5,6478,'Opening',1),(5,5,6603,'Attack',1),(5,5,7266,'Duel',1),(5,5,7267,'Grovel',1),(5,5,7355,'Stuck',1),(5,5,7744,'Will of the Forsaken',1),(5,5,8386,'Attacking',1),(5,5,9078,'Cloth',1),(5,5,9125,'Generic',1),(5,5,17737,'Language Gutterspeak',1),(5,5,20577,'Cannibalize',1),(5,5,20579,'Shadow Resistance',1),(5,5,21651,'Opening',1),(5,5,21652,'Closing',1),(5,5,22027,'Remove Insignia',1),(5,5,22810,'Opening - No Text',1),(5,8,81,'Dodge',1),(5,8,133,'Fireball',1),(5,8,168,'Frost Armor',1),(5,8,203,'Unarmed',1),(5,8,204,'Defense',1),(5,8,227,'Staves',1),(5,8,522,'SPELLDEFENSE(DND)',1),(5,8,669,'Language Orcish',1),(5,8,2382,'Generic',1),(5,8,2479,'Honorless Target',1),(5,8,3050,'Detect',1),(5,8,3365,'Opening',1),(5,8,5009,'Wands',1),(5,8,5019,'Shoot',1),(5,8,5227,'Underwater Breathing',1),(5,8,6233,'Closing',1),(5,8,6246,'Closing',1),(5,8,6247,'Opening',1),(5,8,6477,'Opening',1),(5,8,6478,'Opening',1),(5,8,6603,'Attack',1),(5,8,7266,'Duel',1),(5,8,7267,'Grovel',1),(5,8,7355,'Stuck',1),(5,8,7744,'Will of the Forsaken',1),(5,8,8386,'Attacking',1),(5,8,9078,'Cloth',1),(5,8,9125,'Generic',1),(5,8,17737,'Language Gutterspeak',1),(5,8,20577,'Cannibalize',1),(5,8,20579,'Shadow Resistance',1),(5,8,21651,'Opening',1),(5,8,21652,'Closing',1),(5,8,22027,'Remove Insignia',1),(5,8,22810,'Opening - No Text',1),(5,9,81,'Dodge',1),(5,9,203,'Unarmed',1),(5,9,204,'Defense',1),(5,9,522,'SPELLDEFENSE(DND)',1),(5,9,669,'Language Orcish',1),(5,9,686,'Shadow Bolt',1),(5,9,687,'Demon Skin',1),(5,9,1180,'Daggers',1),(5,9,2382,'Generic',1),(5,9,2479,'Honorless Target',1),(5,9,3050,'Detect',1),(5,9,3365,'Opening',1),(5,9,5009,'Wands',1),(5,9,5019,'Shoot',1),(5,9,5227,'Underwater Breathing',1),(5,9,6233,'Closing',1),(5,9,6246,'Closing',1),(5,9,6247,'Opening',1),(5,9,6477,'Opening',1),(5,9,6478,'Opening',1),(5,9,6603,'Attack',1),(5,9,7266,'Duel',1),(5,9,7267,'Grovel',1),(5,9,7355,'Stuck',1),(5,9,7744,'Will of the Forsaken',1),(5,9,8386,'Attacking',1),(5,9,9078,'Cloth',1),(5,9,9125,'Generic',1),(5,9,17737,'Language Gutterspeak',1),(5,9,20577,'Cannibalize',1),(5,9,20579,'Shadow Resistance',1),(5,9,21651,'Opening',1),(5,9,21652,'Closing',1),(5,9,22027,'Remove Insignia',1),(5,9,22810,'Opening - No Text',1),(6,1,78,'Heroic Strike',1),(6,1,81,'Dodge',1),(6,1,107,'Block',1),(6,1,196,'One-Handed Axes',1),(6,1,198,'One-Handed Maces',1),(6,1,199,'Two-Handed Maces',1),(6,1,203,'Unarmed',1),(6,1,204,'Defense',1),(6,1,522,'SPELLDEFENSE(DND)',1),(6,1,669,'Language Orcish',1),(6,1,670,'Language Taurahe',1),(6,1,2382,'Generic',1),(6,1,2457,'Battle Stance',1),(6,1,2479,'Honorless Target',1),(6,1,3050,'Detect',1),(6,1,3365,'Opening',1),(6,1,5301,'Defensive State(DND)',1),(6,1,6233,'Closing',1),(6,1,6246,'Closing',1),(6,1,6247,'Opening',1),(6,1,6477,'Opening',1),(6,1,6478,'Opening',1),(6,1,6603,'Attack',1),(6,1,7266,'Duel',1),(6,1,7267,'Grovel',1),(6,1,7355,'Stuck',1),(6,1,7376,'Defensive Stance Passive',0),(6,1,7381,'Berserker Stance Passive',0),(6,1,8386,'Attacking',1),(11,3,8737,'Mail',1),(6,1,9077,'Leather',1),(6,1,9078,'Cloth',1),(6,1,9116,'Shield',1),(6,1,9125,'Generic',1),(6,1,20549,'War Stomp',1),(6,1,20550,'Endurance',1),(6,1,20551,'Nature Resistance',1),(6,1,20552,'Cultivation',1),(6,1,21156,'Battle Stance Passive',0),(6,1,21651,'Opening',1),(6,1,21652,'Closing',1),(6,1,22027,'Remove Insignia',1),(6,1,22810,'Opening - No Text',1),(6,1,32215,'Victorious State',1),(6,3,75,'Auto Shot',1),(6,3,81,'Dodge',1),(6,3,196,'One-Handed Axes',1),(6,3,203,'Unarmed',1),(6,3,204,'Defense',1),(6,3,266,'Guns',1),(6,3,522,'SPELLDEFENSE(DND)',1),(6,3,669,'Language Orcish',1),(6,3,670,'Language Taurahe',1),(6,3,2382,'Generic',1),(6,3,2479,'Honorless Target',1),(6,3,2973,'Raptor Strike',1),(6,3,3050,'Detect',1),(6,3,3365,'Opening',1),(6,3,6233,'Closing',1),(6,3,6246,'Closing',1),(6,3,6247,'Opening',1),(6,3,6477,'Opening',1),(6,3,6478,'Opening',1),(6,3,6603,'Attack',1),(6,3,7266,'Duel',1),(6,3,7267,'Grovel',1),(6,3,7355,'Stuck',1),(6,3,8386,'Attacking',1),(6,3,9077,'Leather',1),(6,3,9078,'Cloth',1),(6,3,9125,'Generic',1),(6,3,13358,'Defensive State(DND)',1),(6,3,20549,'War Stomp',1),(6,3,20550,'Endurance',1),(6,3,20551,'Nature Resistance',1),(6,3,20552,'Cultivation',1),(6,3,21651,'Opening',1),(6,3,21652,'Closing',1),(6,3,22027,'Remove Insignia',1),(6,3,22810,'Opening - No Text',1),(6,3,24949,'Defensive State 2(DND)',1),(6,3,34082,'Advantaged State(DND)',1),(6,7,81,'Dodge',1),(6,7,107,'Block',1),(6,7,198,'One-Handed Maces',1),(6,7,203,'Unarmed',1),(6,7,204,'Defense',1),(6,7,227,'Staves',1),(6,7,331,'Healing Wave',1),(6,7,403,'Lightning Bolt',1),(6,7,522,'SPELLDEFENSE(DND)',1),(6,7,669,'Language Orcish',1),(6,7,670,'Language Taurahe',1),(6,7,2382,'Generic',1),(6,7,2479,'Honorless Target',1),(6,7,3050,'Detect',1),(6,7,3365,'Opening',1),(6,7,6233,'Closing',1),(6,7,6246,'Closing',1),(6,7,6247,'Opening',1),(6,7,6477,'Opening',1),(6,7,6478,'Opening',1),(6,7,6603,'Attack',1),(6,7,7266,'Duel',1),(6,7,7267,'Grovel',1),(6,7,7355,'Stuck',1),(6,7,8386,'Attacking',1),(6,7,9077,'Leather',1),(6,7,9078,'Cloth',1),(6,7,9116,'Shield',1),(6,7,9125,'Generic',1),(6,7,20549,'War Stomp',1),(6,7,20550,'Endurance',1),(6,7,20551,'Nature Resistance',1),(6,7,20552,'Cultivation',1),(6,7,21651,'Opening',1),(6,7,21652,'Closing',1),(6,7,22027,'Remove Insignia',1),(6,7,22810,'Opening - No Text',1),(6,7,27763,'Totem',1),(6,11,81,'Dodge',1),(6,11,198,'One-Handed Maces',1),(6,11,203,'Unarmed',1),(6,11,204,'Defense',1),(6,11,227,'Staves',1),(6,11,522,'SPELLDEFENSE(DND)',1),(6,11,669,'Language Orcish',1),(6,11,670,'Language Taurahe',1),(6,11,1178,'Bear Form(Passive)',0),(6,11,2382,'Generic',1),(6,11,2479,'Honorless Target',1),(6,11,3025,'Cat Form(Passive)',0),(6,11,3050,'Detect',1),(6,11,3365,'Opening',1),(6,11,5176,'Wrath',1),(6,11,5185,'Healing Touch',1),(6,11,5419,'Travel Form(Passive)',0),(6,11,5420,'Tree of Life',0),(6,11,5421,'Aquatic Form(Passive)',0),(6,11,6233,'Closing',1),(6,11,6246,'Closing',1),(6,11,6247,'Opening',1),(6,11,6477,'Opening',1),(6,11,6478,'Opening',1),(6,11,6603,'Attack',1),(6,11,7266,'Duel',1),(6,11,7267,'Grovel',1),(6,11,7355,'Stuck',1),(6,11,8386,'Attacking',1),(6,11,9077,'Leather',1),(6,11,9078,'Cloth',1),(6,11,9125,'Generic',1),(6,11,9635,'Dire Bear Form(Passive)',0),(6,11,20549,'War Stomp',1),(6,11,20550,'Endurance',1),(6,11,20551,'Nature Resistance',1),(6,11,20552,'Cultivation',1),(6,11,21178,'Bear Form(Passive2)',0),(6,11,21651,'Opening',1),(6,11,21652,'Closing',1),(6,11,22027,'Remove Insignia',1),(6,11,22810,'Opening - No Text',1),(6,11,24905,'Moonkin Form(Passive)',0),(6,11,27764,'Fetish',1),(6,11,33948,'Flight Form(Passive)',0),(6,11,34123,'Tree of Life(Passive)',0),(6,11,40121,'Swift Flight Form(Passive)',0),(7,1,78,'Heroic Strike',1),(7,1,81,'Dodge',1),(7,1,107,'Block',1),(7,1,198,'One-Handed Maces',1),(7,1,201,'One-Handed Swords',1),(7,1,203,'Unarmed',1),(7,1,204,'Defense',1),(7,1,522,'SPELLDEFENSE(DND)',1),(7,1,668,'Language Common',1),(7,1,1180,'Daggers',1),(7,1,2382,'Generic',1),(7,1,2457,'Battle Stance',1),(7,1,2479,'Honorless Target',1),(7,1,3050,'Detect',1),(7,1,3365,'Opening',1),(7,1,5301,'Defensive State(DND)',1),(7,1,6233,'Closing',1),(7,1,6246,'Closing',1),(7,1,6247,'Opening',1),(7,1,6477,'Opening',1),(7,1,6478,'Opening',1),(7,1,6603,'Attack',1),(7,1,7266,'Duel',1),(7,1,7267,'Grovel',1),(7,1,7340,'Language Gnomish',1),(7,1,7355,'Stuck',1),(7,1,7376,'Defensive Stance Passive',0),(7,1,7381,'Berserker Stance Passive',0),(7,1,8386,'Attacking',1),(10,3,8737,'Mail',1),(7,1,9077,'Leather',1),(7,1,9078,'Cloth',1),(7,1,9116,'Shield',1),(7,1,9125,'Generic',1),(7,1,20589,'Escape Artist',1),(7,1,20591,'Expansive Mind',1),(7,1,20592,'Arcane Resistance',1),(7,1,20593,'Engineering Specialization',1),(7,1,21156,'Battle Stance Passive',0),(7,1,21651,'Opening',1),(7,1,21652,'Closing',1),(7,1,22027,'Remove Insignia',1),(7,1,22810,'Opening - No Text',1),(7,1,32215,'Victorious State',1),(7,4,81,'Dodge',1),(7,4,203,'Unarmed',1),(7,4,204,'Defense',1),(7,4,522,'SPELLDEFENSE(DND)',1),(7,4,668,'Language Common',1),(7,4,1180,'Daggers',1),(7,4,1752,'Sinister Strike',1),(7,4,2098,'Eviscerate',1),(7,4,2382,'Generic',1),(7,4,2479,'Honorless Target',1),(7,4,2567,'Thrown',1),(7,4,2764,'Throw',1),(7,4,3050,'Detect',1),(7,4,3365,'Opening',1),(7,4,6233,'Closing',1),(7,4,6246,'Closing',1),(7,4,6247,'Opening',1),(7,4,6477,'Opening',1),(7,4,6478,'Opening',1),(7,4,6603,'Attack',1),(7,4,7266,'Duel',1),(7,4,7267,'Grovel',1),(7,4,7340,'Language Gnomish',1),(7,4,7355,'Stuck',1),(7,4,8386,'Attacking',1),(7,4,9077,'Leather',1),(7,4,9078,'Cloth',1),(7,4,9125,'Generic',1),(7,4,16092,'Defensive State(DND)',1),(7,4,20589,'Escape Artist',1),(7,4,20591,'Expansive Mind',1),(7,4,20592,'Arcane Resistance',1),(7,4,20593,'Engineering Specialization',1),(7,4,21184,'Rogue Passive(DND)',1),(7,4,21651,'Opening',1),(7,4,21652,'Closing',1),(7,4,22027,'Remove Insignia',1),(7,4,22810,'Opening - No Text',1),(7,8,81,'Dodge',1),(7,8,133,'Fireball',1),(7,8,168,'Frost Armor',1),(7,8,203,'Unarmed',1),(7,8,204,'Defense',1),(7,8,227,'Staves',1),(7,8,522,'SPELLDEFENSE(DND)',1),(7,8,668,'Language Common',1),(7,8,2382,'Generic',1),(7,8,2479,'Honorless Target',1),(7,8,3050,'Detect',1),(7,8,3365,'Opening',1),(7,8,5009,'Wands',1),(7,8,5019,'Shoot',1),(7,8,6233,'Closing',1),(7,8,6246,'Closing',1),(7,8,6247,'Opening',1),(7,8,6477,'Opening',1),(7,8,6478,'Opening',1),(7,8,6603,'Attack',1),(7,8,7266,'Duel',1),(7,8,7267,'Grovel',1),(7,8,7340,'Language Gnomish',1),(7,8,7355,'Stuck',1),(7,8,8386,'Attacking',1),(7,8,9078,'Cloth',1),(7,8,9125,'Generic',1),(7,8,20589,'Escape Artist',1),(7,8,20591,'Expansive Mind',1),(7,8,20592,'Arcane Resistance',1),(7,8,20593,'Engineering Specialization',1),(7,8,21651,'Opening',1),(7,8,21652,'Closing',1),(7,8,22027,'Remove Insignia',1),(7,8,22810,'Opening - No Text',1),(7,9,81,'Dodge',1),(7,9,203,'Unarmed',1),(7,9,204,'Defense',1),(7,9,522,'SPELLDEFENSE(DND)',1),(7,9,668,'Language Common',1),(7,9,686,'Shadow Bolt',1),(7,9,687,'Demon Skin',1),(7,9,1180,'Daggers',1),(7,9,2382,'Generic',1),(7,9,2479,'Honorless Target',1),(7,9,3050,'Detect',1),(7,9,3365,'Opening',1),(7,9,5009,'Wands',1),(7,9,5019,'Shoot',1),(7,9,6233,'Closing',1),(7,9,6246,'Closing',1),(7,9,6247,'Opening',1),(7,9,6477,'Opening',1),(7,9,6478,'Opening',1),(7,9,6603,'Attack',1),(7,9,7266,'Duel',1),(7,9,7267,'Grovel',1),(7,9,7340,'Language Gnomish',1),(7,9,7355,'Stuck',1),(7,9,8386,'Attacking',1),(7,9,9078,'Cloth',1),(7,9,9125,'Generic',1),(7,9,20589,'Escape Artist',1),(7,9,20591,'Expansive Mind',1),(7,9,20592,'Arcane Resistance',1),(7,9,20593,'Engineering Specialization',1),(7,9,21651,'Opening',1),(7,9,21652,'Closing',1),(7,9,22027,'Remove Insignia',1),(7,9,22810,'Opening - No Text',1),(8,1,78,'Heroic Strike',1),(8,1,81,'Dodge',1),(8,1,107,'Block',1),(8,1,196,'One-Handed Axes',1),(8,1,203,'Unarmed',1),(8,1,204,'Defense',1),(8,1,522,'SPELLDEFENSE(DND)',1),(8,1,669,'Language Orcish',1),(8,1,1180,'Daggers',1),(8,1,2382,'Generic',1),(8,1,2457,'Battle Stance',1),(8,1,2479,'Honorless Target',1),(8,1,2567,'Thrown',1),(8,1,2764,'Throw',1),(8,1,3050,'Detect',1),(8,1,3365,'Opening',1),(8,1,5301,'Defensive State(DND)',1),(8,1,6233,'Closing',1),(8,1,6246,'Closing',1),(8,1,6247,'Opening',1),(8,1,6477,'Opening',1),(8,1,6478,'Opening',1),(8,1,6603,'Attack',1),(8,1,7266,'Duel',1),(8,1,7267,'Grovel',1),(8,1,7341,'Language Troll',1),(8,1,7355,'Stuck',1),(8,1,7376,'Defensive Stance Passive',0),(8,1,7381,'Berserker Stance Passive',0),(8,1,8386,'Attacking',1),(9,3,8737,'Mail',1),(8,1,9077,'Leather',1),(8,1,9078,'Cloth',1),(8,1,9116,'Shield',1),(8,1,9125,'Generic',1),(8,1,20555,'Regeneration',1),(8,1,20557,'Beast Slaying',1),(8,1,20558,'Throwing Specialization',1),(8,1,21156,'Battle Stance Passive',0),(8,1,21651,'Opening',1),(8,1,21652,'Closing',1),(8,1,22027,'Remove Insignia',1),(8,1,22810,'Opening - No Text',1),(8,1,26290,'Bow Specialization',1),(8,1,26296,'Berserking',1),(8,1,32215,'Victorious State',1),(8,3,75,'Auto Shot',1),(8,3,81,'Dodge',1),(8,3,196,'One-Handed Axes',1),(8,3,203,'Unarmed',1),(8,3,204,'Defense',1),(8,3,264,'Bows',1),(8,3,522,'SPELLDEFENSE(DND)',1),(8,3,669,'Language Orcish',1),(8,3,2382,'Generic',1),(8,3,2479,'Honorless Target',1),(8,3,2973,'Raptor Strike',1),(8,3,3050,'Detect',1),(8,3,3365,'Opening',1),(8,3,6233,'Closing',1),(8,3,6246,'Closing',1),(8,3,6247,'Opening',1),(8,3,6477,'Opening',1),(8,3,6478,'Opening',1),(8,3,6603,'Attack',1),(8,3,7266,'Duel',1),(8,3,7267,'Grovel',1),(8,3,7341,'Language Troll',1),(8,3,7355,'Stuck',1),(8,3,8386,'Attacking',1),(8,3,9077,'Leather',1),(8,3,9078,'Cloth',1),(8,3,9125,'Generic',1),(8,3,13358,'Defensive State(DND)',1),(8,3,20554,'Berserking',1),(8,3,20555,'Regeneration',1),(8,3,20557,'Beast Slaying',1),(8,3,20558,'Throwing Specialization',1),(8,3,21651,'Opening',1),(8,3,21652,'Closing',1),(8,3,22027,'Remove Insignia',1),(8,3,22810,'Opening - No Text',1),(8,3,24949,'Defensive State 2(DND)',1),(8,3,26290,'Bow Specialization',1),(8,3,34082,'Advantaged State(DND)',1),(8,4,81,'Dodge',1),(8,4,203,'Unarmed',1),(8,4,204,'Defense',1),(8,4,522,'SPELLDEFENSE(DND)',1),(8,4,669,'Language Orcish',1),(8,4,1180,'Daggers',1),(8,4,1752,'Sinister Strike',1),(8,4,2098,'Eviscerate',1),(8,4,2382,'Generic',1),(8,4,2479,'Honorless Target',1),(8,4,2567,'Thrown',1),(8,4,2764,'Throw',1),(8,4,3050,'Detect',1),(8,4,3365,'Opening',1),(8,4,6233,'Closing',1),(8,4,6246,'Closing',1),(8,4,6247,'Opening',1),(8,4,6477,'Opening',1),(8,4,6478,'Opening',1),(8,4,6603,'Attack',1),(8,4,7266,'Duel',1),(8,4,7267,'Grovel',1),(8,4,7341,'Language Troll',1),(8,4,7355,'Stuck',1),(8,4,8386,'Attacking',1),(8,4,9077,'Leather',1),(8,4,9078,'Cloth',1),(8,4,9125,'Generic',1),(8,4,16092,'Defensive State(DND)',1),(8,4,20555,'Regeneration',1),(8,4,20557,'Beast Slaying',1),(8,4,20558,'Throwing Specialization',1),(8,4,21184,'Rogue Passive(DND)',1),(8,4,21651,'Opening',1),(8,4,21652,'Closing',1),(8,4,22027,'Remove Insignia',1),(8,4,22810,'Opening - No Text',1),(8,4,26290,'Bow Specialization',1),(8,4,26297,'Berserking',1),(8,5,81,'Dodge',1),(8,5,198,'One-Handed Maces',1),(8,5,203,'Unarmed',1),(8,5,204,'Defense',1),(8,5,522,'SPELLDEFENSE(DND)',1),(8,5,585,'Smite',1),(8,5,669,'Language Orcish',1),(8,5,2050,'Lesser Heal',1),(8,5,2382,'Generic',1),(8,5,2479,'Honorless Target',1),(8,5,3050,'Detect',1),(8,5,3365,'Opening',1),(8,5,5009,'Wands',1),(8,5,5019,'Shoot',1),(8,5,6233,'Closing',1),(8,5,6246,'Closing',1),(8,5,6247,'Opening',1),(8,5,6477,'Opening',1),(8,5,6478,'Opening',1),(8,5,6603,'Attack',1),(8,5,7266,'Duel',1),(8,5,7267,'Grovel',1),(8,5,7341,'Language Troll',1),(8,5,7355,'Stuck',1),(8,5,8386,'Attacking',1),(8,5,9078,'Cloth',1),(8,5,9125,'Generic',1),(8,5,20554,'Berserking',1),(8,5,20555,'Regeneration',1),(8,5,20557,'Beast Slaying',1),(8,5,20558,'Throwing Specialization',1),(8,5,21651,'Opening',1),(8,5,21652,'Closing',1),(8,5,22027,'Remove Insignia',1),(8,5,22810,'Opening - No Text',1),(8,5,26290,'Bow Specialization',1),(8,7,81,'Dodge',1),(8,7,107,'Block',1),(8,7,198,'One-Handed Maces',1),(8,7,203,'Unarmed',1),(8,7,204,'Defense',1),(8,7,227,'Staves',1),(8,7,331,'Healing Wave',1),(8,7,403,'Lightning Bolt',1),(8,7,522,'SPELLDEFENSE(DND)',1),(8,7,669,'Language Orcish',1),(8,7,2382,'Generic',1),(8,7,2479,'Honorless Target',1),(8,7,3050,'Detect',1),(8,7,3365,'Opening',1),(8,7,6233,'Closing',1),(8,7,6246,'Closing',1),(8,7,6247,'Opening',1),(8,7,6477,'Opening',1),(8,7,6478,'Opening',1),(8,7,6603,'Attack',1),(8,7,7266,'Duel',1),(8,7,7267,'Grovel',1),(8,7,7341,'Language Troll',1),(8,7,7355,'Stuck',1),(8,7,8386,'Attacking',1),(8,7,9077,'Leather',1),(8,7,9078,'Cloth',1),(8,7,9116,'Shield',1),(8,7,9125,'Generic',1),(8,7,20554,'Berserking',1),(8,7,20555,'Regeneration',1),(8,7,20557,'Beast Slaying',1),(8,7,20558,'Throwing Specialization',1),(8,7,21651,'Opening',1),(8,7,21652,'Closing',1),(8,7,22027,'Remove Insignia',1),(8,7,22810,'Opening - No Text',1),(8,7,26290,'Bow Specialization',1),(8,7,27763,'Totem',1),(8,8,81,'Dodge',1),(8,8,133,'Fireball',1),(8,8,168,'Frost Armor',1),(8,8,203,'Unarmed',1),(8,8,204,'Defense',1),(8,8,227,'Staves',1),(8,8,522,'SPELLDEFENSE(DND)',1),(8,8,669,'Language Orcish',1),(8,8,2382,'Generic',1),(8,8,2479,'Honorless Target',1),(8,8,3050,'Detect',1),(8,8,3365,'Opening',1),(8,8,5009,'Wands',1),(8,8,5019,'Shoot',1),(8,8,6233,'Closing',1),(8,8,6246,'Closing',1),(8,8,6247,'Opening',1),(8,8,6477,'Opening',1),(8,8,6478,'Opening',1),(8,8,6603,'Attack',1),(8,8,7266,'Duel',1),(8,8,7267,'Grovel',1),(8,8,7341,'Language Troll',1),(8,8,7355,'Stuck',1),(8,8,8386,'Attacking',1),(8,8,9078,'Cloth',1),(8,8,9125,'Generic',1),(8,8,20554,'Berserking',1),(8,8,20555,'Regeneration',1),(8,8,20557,'Beast Slaying',1),(8,8,20558,'Throwing Specialization',1),(8,8,21651,'Opening',1),(8,8,21652,'Closing',1),(8,8,22027,'Remove Insignia',1),(8,8,22810,'Opening - No Text',1),(8,8,26290,'Bow Specialization',1),(10,2,81,'Dodge',1),(10,2,107,'Block',1),(10,2,201,'One-Handed Swords',1),(10,2,202,'Two-Handed Swords',1),(10,2,203,'Unarmed',1),(10,2,204,'Defense',1),(10,2,522,'SPELLDEFENSE(DND)',1),(10,2,635,'Holy Light',1),(10,2,669,'Language Orcish',1),(10,2,813,'Language Thalassian',1),(10,2,822,'Magic Resistance',1),(10,2,2382,'Generic',1),(10,2,2479,'Honorless Target',1),(10,2,3050,'Detect',1),(10,2,3365,'Opening',1),(10,2,6233,'Closing',1),(10,2,6246,'Closing',1),(10,2,6247,'Opening',1),(10,2,6477,'Opening',1),(10,2,6478,'Opening',1),(10,2,6603,'Attack',1),(10,2,7266,'Duel',1),(10,2,7267,'Grovel',1),(10,2,7355,'Stuck',1),(10,2,8386,'Attacking',1),(8,3,8737,'Mail',1),(10,2,9077,'Leather',1),(10,2,9078,'Cloth',1),(10,2,9116,'Shield',1),(10,2,9125,'Generic',1),(10,2,21084,'Seal of Righteousness',1),(10,2,21651,'Opening',1),(10,2,21652,'Closing',1),(10,2,22027,'Remove Insignia',1),(10,2,22810,'Opening - No Text',1),(10,2,27762,'Libram',1),(10,2,28730,'Arcane Torrent',1),(10,2,28877,'Arcane Affinity',1),(10,3,75,'Auto Shot',1),(10,3,81,'Dodge',1),(10,3,203,'Unarmed',1),(10,3,204,'Defense',1),(10,3,264,'Bows',1),(10,3,522,'SPELLDEFENSE(DND)',1),(10,3,669,'Language Orcish',1),(10,3,813,'Language Thalassian',1),(10,3,822,'Magic Resistance',1),(10,3,1180,'Daggers',1),(10,3,2382,'Generic',1),(10,3,2479,'Honorless Target',1),(10,3,2973,'Raptor Strike',1),(10,3,3050,'Detect',1),(10,3,3365,'Opening',1),(10,3,6233,'Closing',1),(10,3,6246,'Closing',1),(10,3,6247,'Opening',1),(10,3,6477,'Opening',1),(10,3,6478,'Opening',1),(10,3,6603,'Attack',1),(10,3,7266,'Duel',1),(10,3,7267,'Grovel',1),(10,3,7355,'Stuck',1),(10,3,8386,'Attacking',1),(10,3,9077,'Leather',1),(10,3,9078,'Cloth',1),(10,3,9125,'Generic',1),(10,3,13358,'Defensive State(DND)',1),(10,3,21651,'Opening',1),(10,3,21652,'Closing',1),(10,3,22027,'Remove Insignia',1),(10,3,22810,'Opening - No Text',1),(10,3,24949,'Defensive State 2(DND)',1),(10,3,28730,'Arcane Torrent',1),(10,3,28877,'Arcane Affinity',1),(10,3,34082,'Advantaged State(DND)',1),(10,4,81,'Dodge',1),(10,4,203,'Unarmed',1),(10,4,204,'Defense',1),(10,4,522,'SPELLDEFENSE(DND)',1),(10,4,669,'Language Orcish',1),(10,4,813,'Language Thalassian',1),(10,4,822,'Magic Resistance',1),(10,4,1180,'Daggers',1),(10,4,1752,'Sinister Strike',1),(10,4,2098,'Eviscerate',1),(10,4,2382,'Generic',1),(10,4,2479,'Honorless Target',1),(10,4,2567,'Thrown',1),(10,4,2764,'Throw',1),(10,4,3050,'Detect',1),(10,4,3365,'Opening',1),(10,4,6233,'Closing',1),(10,4,6246,'Closing',1),(10,4,6247,'Opening',1),(10,4,6477,'Opening',1),(10,4,6478,'Opening',1),(10,4,6603,'Attack',1),(10,4,7266,'Duel',1),(10,4,7267,'Grovel',1),(10,4,7355,'Stuck',1),(10,4,8386,'Attacking',1),(10,4,9077,'Leather',1),(10,4,9078,'Cloth',1),(10,4,9125,'Generic',1),(10,4,16092,'Defensive State(DND)',1),(10,4,21184,'Rogue Passive(DND)',1),(10,4,21651,'Opening',1),(10,4,21652,'Closing',1),(10,4,22027,'Remove Insignia',1),(10,4,22810,'Opening - No Text',1),(10,4,25046,'Arcane Torrent',1),(10,4,28877,'Arcane Affinity',1),(10,5,81,'Dodge',1),(10,5,198,'One-Handed Maces',1),(10,5,203,'Unarmed',1),(10,5,204,'Defense',1),(10,5,522,'SPELLDEFENSE(DND)',1),(10,5,585,'Smite',1),(10,5,669,'Language Orcish',1),(10,5,813,'Language Thalassian',1),(10,5,822,'Magic Resistance',1),(10,5,2050,'Lesser Heal',1),(10,5,2382,'Generic',1),(10,5,2479,'Honorless Target',1),(10,5,3050,'Detect',1),(10,5,3365,'Opening',1),(10,5,5009,'Wands',1),(10,5,5019,'Shoot',1),(10,5,6233,'Closing',1),(10,5,6246,'Closing',1),(10,5,6247,'Opening',1),(10,5,6477,'Opening',1),(10,5,6478,'Opening',1),(10,5,6603,'Attack',1),(10,5,7266,'Duel',1),(10,5,7267,'Grovel',1),(10,5,7355,'Stuck',1),(10,5,8386,'Attacking',1),(10,5,9078,'Cloth',1),(10,5,9125,'Generic',1),(10,5,21651,'Opening',1),(10,5,21652,'Closing',1),(10,5,22027,'Remove Insignia',1),(10,5,22810,'Opening - No Text',1),(10,5,28730,'Arcane Torrent',1),(10,5,28877,'Arcane Affinity',1),(10,8,81,'Dodge',1),(10,8,133,'Fireball',1),(10,8,168,'Frost Armor',1),(10,8,203,'Unarmed',1),(10,8,204,'Defense',1),(10,8,227,'Staves',1),(10,8,522,'SPELLDEFENSE(DND)',1),(10,8,669,'Language Orcish',1),(10,8,813,'Language Thalassian',1),(10,8,822,'Magic Resistance',1),(10,8,2382,'Generic',1),(10,8,2479,'Honorless Target',1),(10,8,3050,'Detect',1),(10,8,3365,'Opening',1),(10,8,5009,'Wands',1),(10,8,5019,'Shoot',1),(10,8,6233,'Closing',1),(10,8,6246,'Closing',1),(10,8,6247,'Opening',1),(10,8,6477,'Opening',1),(10,8,6478,'Opening',1),(10,8,6603,'Attack',1),(10,8,7266,'Duel',1),(10,8,7267,'Grovel',1),(10,8,7355,'Stuck',1),(10,8,8386,'Attacking',1),(10,8,9078,'Cloth',1),(10,8,9125,'Generic',1),(10,8,21651,'Opening',1),(10,8,21652,'Closing',1),(10,8,22027,'Remove Insignia',1),(10,8,22810,'Opening - No Text',1),(10,8,28730,'Arcane Torrent',1),(10,8,28877,'Arcane Affinity',1),(10,9,81,'Dodge',1),(10,9,203,'Unarmed',1),(10,9,204,'Defense',1),(10,9,522,'SPELLDEFENSE(DND)',1),(10,9,669,'Language Orcish',1),(10,9,686,'Shadow Bolt',1),(10,9,687,'Demon Skin',1),(10,9,813,'Language Thalassian',1),(10,9,822,'Magic Resistance',1),(10,9,1180,'Daggers',1),(10,9,2382,'Generic',1),(10,9,2479,'Honorless Target',1),(10,9,3050,'Detect',1),(10,9,3365,'Opening',1),(10,9,5009,'Wands',1),(10,9,5019,'Shoot',1),(10,9,6233,'Closing',1),(10,9,6246,'Closing',1),(10,9,6247,'Opening',1),(10,9,6477,'Opening',1),(10,9,6478,'Opening',1),(10,9,6603,'Attack',1),(10,9,7266,'Duel',1),(10,9,7267,'Grovel',1),(10,9,7355,'Stuck',1),(10,9,8386,'Attacking',1),(10,9,9078,'Cloth',1),(10,9,9125,'Generic',1),(10,9,21651,'Opening',1),(10,9,21652,'Closing',1),(10,9,22027,'Remove Insignia',1),(10,9,22810,'Opening - No Text',1),(10,9,28730,'Arcane Torrent',1),(10,9,28877,'Arcane Affinity',1),(11,1,78,'Heroic Strike',1),(11,1,81,'Dodge',1),(11,1,107,'Block',1),(11,1,198,'One-Handed Maces',1),(11,1,201,'One-Handed Swords',1),(11,1,202,'Two-Handed Swords',1),(11,1,203,'Unarmed',1),(11,1,204,'Defense',1),(11,1,522,'SPELLDEFENSE(DND)',1),(11,1,668,'Language Common',1),(11,1,2382,'Generic',1),(11,1,2457,'Battle Stance',1),(11,1,2479,'Honorless Target',1),(11,1,3050,'Detect',1),(11,1,3365,'Opening',1),(11,1,5301,'Defensive State(DND)',1),(11,1,6233,'Closing',1),(11,1,6246,'Closing',1),(11,1,6247,'Opening',1),(11,1,6477,'Opening',1),(11,1,6478,'Opening',1),(11,1,6562,'Heroic Presence',1),(11,1,6603,'Attack',1),(11,1,7266,'Duel',1),(11,1,7267,'Grovel',1),(11,1,7355,'Stuck',1),(11,1,7376,'Defensive Stance Passive',0),(11,1,7381,'Berserker Stance Passive',0),(11,1,8386,'Attacking',1),(6,3,8737,'Mail',1),(11,1,9077,'Leather',1),(11,1,9078,'Cloth',1),(11,1,9116,'Shield',1),(11,1,9125,'Generic',1),(11,1,20579,'Shadow Resistance',1),(11,1,21156,'Battle Stance Passive',0),(11,1,21651,'Opening',1),(11,1,21652,'Closing',1),(11,1,22027,'Remove Insignia',1),(11,1,22810,'Opening - No Text',1),(11,1,28875,'Gemcutting',1),(11,1,28880,'Gift of the Naaru',1),(11,1,29932,'Language Draenei',1),(11,1,32215,'Victorious State',1),(11,2,81,'Dodge',1),(11,2,107,'Block',1),(11,2,198,'One-Handed Maces',1),(11,2,199,'Two-Handed Maces',1),(11,2,203,'Unarmed',1),(11,2,204,'Defense',1),(11,2,522,'SPELLDEFENSE(DND)',1),(11,2,635,'Holy Light',1),(11,2,668,'Language Common',1),(11,2,2382,'Generic',1),(11,2,2479,'Honorless Target',1),(11,2,3050,'Detect',1),(11,2,3365,'Opening',1),(11,2,6233,'Closing',1),(11,2,6246,'Closing',1),(11,2,6247,'Opening',1),(11,2,6477,'Opening',1),(11,2,6478,'Opening',1),(11,2,6562,'Heroic Presence',1),(11,2,6603,'Attack',1),(11,2,7266,'Duel',1),(11,2,7267,'Grovel',1),(11,2,7355,'Stuck',1),(11,2,8386,'Attacking',1),(5,3,8737,'Mail',1),(11,2,9077,'Leather',1),(11,2,9078,'Cloth',1),(11,2,9116,'Shield',1),(11,2,9125,'Generic',1),(11,2,21084,'Seal of Righteousness',1),(11,2,20579,'Shadow Resistance',1),(11,2,21651,'Opening',1),(11,2,21652,'Closing',1),(11,2,22027,'Remove Insignia',1),(11,2,22810,'Opening - No Text',1),(11,2,27762,'Libram',1),(11,2,28875,'Gemcutting',1),(11,2,28880,'Gift of the Naaru',1),(11,2,29932,'Language Draenei',1),(11,3,75,'Auto Shot',1),(11,3,81,'Dodge',1),(11,3,201,'One-Handed Swords',1),(11,3,203,'Unarmed',1),(11,3,204,'Defense',1),(11,3,522,'SPELLDEFENSE(DND)',1),(11,3,668,'Language Common',1),(11,3,2382,'Generic',1),(11,3,2479,'Honorless Target',1),(11,3,2973,'Raptor Strike',1),(11,3,3050,'Detect',1),(11,3,3365,'Opening',1),(11,3,5011,'Crossbows',1),(11,3,6233,'Closing',1),(11,3,6246,'Closing',1),(11,3,6247,'Opening',1),(11,3,6477,'Opening',1),(11,3,6478,'Opening',1),(11,3,6562,'Heroic Presence',1),(11,3,6603,'Attack',1),(11,3,7266,'Duel',1),(11,3,7267,'Grovel',1),(11,3,7355,'Stuck',1),(11,3,8386,'Attacking',1),(11,3,9077,'Leather',1),(11,3,9078,'Cloth',1),(11,3,9125,'Generic',1),(11,3,13358,'Defensive State(DND)',1),(11,3,20579,'Shadow Resistance',1),(11,3,21651,'Opening',1),(11,3,21652,'Closing',1),(11,3,22027,'Remove Insignia',1),(11,3,22810,'Opening - No Text',1),(11,3,24949,'Defensive State 2(DND)',1),(11,3,28875,'Gemcutting',1),(11,3,28880,'Gift of the Naaru',1),(11,3,29932,'Language Draenei',1),(11,3,34082,'Advantaged State(DND)',1),(11,5,81,'Dodge',1),(11,5,198,'One-Handed Maces',1),(11,5,203,'Unarmed',1),(11,5,204,'Defense',1),(11,5,522,'SPELLDEFENSE(DND)',1),(11,5,585,'Smite',1),(11,5,668,'Language Common',1),(11,5,2050,'Lesser Heal',1),(11,5,2382,'Generic',1),(11,5,2479,'Honorless Target',1),(11,5,3050,'Detect',1),(11,5,3365,'Opening',1),(11,5,5009,'Wands',1),(11,5,5019,'Shoot',1),(11,5,6233,'Closing',1),(11,5,6246,'Closing',1),(11,5,6247,'Opening',1),(11,5,6477,'Opening',1),(11,5,6478,'Opening',1),(11,5,6603,'Attack',1),(11,5,7266,'Duel',1),(11,5,7267,'Grovel',1),(11,5,7355,'Stuck',1),(11,5,8386,'Attacking',1),(11,5,9078,'Cloth',1),(11,5,9125,'Generic',1),(11,5,20579,'Shadow Resistance',1),(11,5,21651,'Opening',1),(11,5,21652,'Closing',1),(11,5,22027,'Remove Insignia',1),(11,5,22810,'Opening - No Text',1),(11,5,28875,'Gemcutting',1),(11,5,28878,'Inspiring Presence',1),(11,5,28880,'Gift of the Naaru',1),(11,5,29932,'Language Draenei',1),(11,7,81,'Dodge',1),(11,7,107,'Block',1),(11,7,198,'One-Handed Maces',1),(11,7,203,'Unarmed',1),(11,7,204,'Defense',1),(11,7,227,'Staves',1),(11,7,331,'Healing Wave',1),(11,7,403,'Lightning Bolt',1),(11,7,522,'SPELLDEFENSE(DND)',1),(11,7,668,'Language Common',1),(11,7,2382,'Generic',1),(11,7,2479,'Honorless Target',1),(11,7,3050,'Detect',1),(11,7,3365,'Opening',1),(11,7,6233,'Closing',1),(11,7,6246,'Closing',1),(11,7,6247,'Opening',1),(11,7,6477,'Opening',1),(11,7,6478,'Opening',1),(11,7,6603,'Attack',1),(11,7,7266,'Duel',1),(11,7,7267,'Grovel',1),(11,7,7355,'Stuck',1),(11,7,8386,'Attacking',1),(11,7,9077,'Leather',1),(11,7,9078,'Cloth',1),(11,7,9116,'Shield',1),(11,7,9125,'Generic',1),(11,7,20579,'Shadow Resistance',1),(11,7,21651,'Opening',1),(11,7,21652,'Closing',1),(11,7,22027,'Remove Insignia',1),(11,7,22810,'Opening - No Text',1),(11,7,27763,'Totem',1),(11,7,28875,'Gemcutting',1),(11,7,28878,'Inspiring Presence',1),(11,7,28880,'Gift of the Naaru',1),(11,7,29932,'Language Draenei',1),(11,8,81,'Dodge',1),(11,8,133,'Fireball',1),(11,8,168,'Frost Armor',1),(11,8,203,'Unarmed',1),(11,8,204,'Defense',1),(11,8,227,'Staves',1),(11,8,522,'SPELLDEFENSE(DND)',1),(11,8,668,'Language Common',1),(11,8,2382,'Generic',1),(11,8,2479,'Honorless Target',1),(11,8,3050,'Detect',1),(11,8,3365,'Opening',1),(11,8,5009,'Wands',1),(11,8,5019,'Shoot',1),(11,8,6233,'Closing',1),(11,8,6246,'Closing',1),(11,8,6247,'Opening',1),(11,8,6477,'Opening',1),(11,8,6478,'Opening',1),(11,8,6603,'Attack',1),(11,8,7266,'Duel',1),(11,8,7267,'Grovel',1),(11,8,7355,'Stuck',1),(11,8,8386,'Attacking',1),(11,8,9078,'Cloth',1),(11,8,9125,'Generic',1),(11,8,20579,'Shadow Resistance',1),(11,8,21651,'Opening',1),(11,8,21652,'Closing',1),(11,8,22027,'Remove Insignia',1),(11,8,22810,'Opening - No Text',1),(11,8,28875,'Gemcutting',1),(11,8,28878,'Inspiring Presence',1),(11,8,28880,'Gift of the Naaru',1),(11,8,29932,'Language Draenei',1),(1,1,2048,NULL,1),(1,1,30324,NULL,1),(1,1,11578,NULL,1),(1,1,25208,NULL,1),(1,1,25264,NULL,1),(1,1,2687,NULL,1),(1,1,71,NULL,1),(1,1,25225,NULL,1),(1,1,355,NULL,1),(1,1,11585,NULL,1),(1,1,29704,NULL,1),(1,1,25203,NULL,1),(1,1,30357,NULL,1),(1,1,25266,NULL,1),(1,1,2565,NULL,1),(1,1,676,NULL,1),(1,1,25231,NULL,1),(1,1,20230,NULL,1),(1,1,5246,NULL,1),(1,1,25236,NULL,1),(1,1,1161,NULL,1),(1,1,871,NULL,1),(1,1,2458,NULL,1),(1,1,25275,NULL,1),(1,1,25242,NULL,1),(1,1,18499,NULL,1),(1,1,1680,NULL,1),(1,1,6554,NULL,1),(1,1,1719,NULL,1),(1,1,34428,NULL,1),(1,1,23920,NULL,1),(1,1,469,NULL,1),(1,1,3411,NULL,1),(2,1,2048,NULL,1),(2,1,30324,NULL,1),(2,1,11578,NULL,1),(2,1,25208,NULL,1),(2,1,25264,NULL,1),(2,1,2687,NULL,1),(2,1,71,NULL,1),(2,1,25225,NULL,1),(2,1,355,NULL,1),(2,1,11585,NULL,1),(2,1,29704,NULL,1),(2,1,25203,NULL,1),(2,1,30357,NULL,1),(2,1,25266,NULL,1),(2,1,2565,NULL,1),(2,1,676,NULL,1),(2,1,25231,NULL,1),(2,1,20230,NULL,1),(2,1,5246,NULL,1),(2,1,25236,NULL,1),(2,1,1161,NULL,1),(2,1,871,NULL,1),(2,1,2458,NULL,1),(2,1,25275,NULL,1),(2,1,25242,NULL,1),(2,1,18499,NULL,1),(2,1,1680,NULL,1),(2,1,6554,NULL,1),(2,1,1719,NULL,1),(2,1,34428,NULL,1),(2,1,23920,NULL,1),(2,1,469,NULL,1),(2,1,3411,NULL,1),(3,1,2048,NULL,1),(3,1,30324,NULL,1),(3,1,11578,NULL,1),(3,1,25208,NULL,1),(3,1,25264,NULL,1),(3,1,2687,NULL,1),(3,1,71,NULL,1),(3,1,25225,NULL,1),(3,1,355,NULL,1),(3,1,11585,NULL,1),(3,1,29704,NULL,1),(3,1,25203,NULL,1),(3,1,30357,NULL,1),(3,1,25266,NULL,1),(3,1,2565,NULL,1),(3,1,676,NULL,1),(3,1,25231,NULL,1),(3,1,20230,NULL,1),(3,1,5246,NULL,1),(3,1,25236,NULL,1),(3,1,1161,NULL,1),(3,1,871,NULL,1),(3,1,2458,NULL,1),(3,1,25275,NULL,1),(3,1,25242,NULL,1),(3,1,18499,NULL,1),(3,1,1680,NULL,1),(3,1,6554,NULL,1),(3,1,1719,NULL,1),(3,1,34428,NULL,1),(3,1,23920,NULL,1),(3,1,469,NULL,1),(3,1,3411,NULL,1),(4,1,2048,NULL,1),(4,1,30324,NULL,1),(4,1,11578,NULL,1),(4,1,25208,NULL,1),(4,1,25264,NULL,1),(4,1,2687,NULL,1),(4,1,71,NULL,1),(4,1,25225,NULL,1),(4,1,355,NULL,1),(4,1,11585,NULL,1),(4,1,29704,NULL,1),(4,1,25203,NULL,1),(4,1,30357,NULL,1),(4,1,25266,NULL,1),(4,1,2565,NULL,1),(4,1,676,NULL,1),(4,1,25231,NULL,1),(4,1,20230,NULL,1),(4,1,5246,NULL,1),(4,1,25236,NULL,1),(4,1,1161,NULL,1),(4,1,871,NULL,1),(4,1,2458,NULL,1),(4,1,25275,NULL,1),(4,1,25242,NULL,1),(4,1,18499,NULL,1),(4,1,1680,NULL,1),(4,1,6554,NULL,1),(4,1,1719,NULL,1),(4,1,34428,NULL,1),(4,1,23920,NULL,1),(4,1,469,NULL,1),(4,1,3411,NULL,1),(5,1,2048,NULL,1),(5,1,30324,NULL,1),(5,1,11578,NULL,1),(5,1,25208,NULL,1),(5,1,25264,NULL,1),(5,1,2687,NULL,1),(5,1,71,NULL,1),(5,1,25225,NULL,1),(5,1,355,NULL,1),(5,1,11585,NULL,1),(5,1,29704,NULL,1),(5,1,25203,NULL,1),(5,1,30357,NULL,1),(5,1,25266,NULL,1),(5,1,2565,NULL,1),(5,1,676,NULL,1),(5,1,25231,NULL,1),(5,1,20230,NULL,1),(5,1,5246,NULL,1),(5,1,25236,NULL,1),(5,1,1161,NULL,1),(5,1,871,NULL,1),(5,1,2458,NULL,1),(5,1,25275,NULL,1),(5,1,25242,NULL,1),(5,1,18499,NULL,1),(5,1,1680,NULL,1),(5,1,6554,NULL,1),(5,1,1719,NULL,1),(5,1,34428,NULL,1),(5,1,23920,NULL,1),(5,1,469,NULL,1),(5,1,3411,NULL,1),(6,1,2048,NULL,1),(6,1,30324,NULL,1),(6,1,11578,NULL,1),(6,1,25208,NULL,1),(6,1,25264,NULL,1),(6,1,2687,NULL,1),(6,1,71,NULL,1),(6,1,25225,NULL,1),(6,1,355,NULL,1),(6,1,11585,NULL,1),(6,1,29704,NULL,1),(6,1,25203,NULL,1),(6,1,30357,NULL,1),(6,1,25266,NULL,1),(6,1,2565,NULL,1),(6,1,676,NULL,1),(6,1,25231,NULL,1),(6,1,20230,NULL,1),(6,1,5246,NULL,1),(6,1,25236,NULL,1),(6,1,1161,NULL,1),(6,1,871,NULL,1),(6,1,2458,NULL,1),(6,1,25275,NULL,1),(6,1,25242,NULL,1),(6,1,18499,NULL,1),(6,1,1680,NULL,1),(6,1,6554,NULL,1),(6,1,1719,NULL,1),(6,1,34428,NULL,1),(6,1,23920,NULL,1),(6,1,469,NULL,1),(6,1,3411,NULL,1),(7,1,2048,NULL,1),(7,1,30324,NULL,1),(7,1,11578,NULL,1),(7,1,25208,NULL,1),(7,1,25264,NULL,1),(7,1,2687,NULL,1),(7,1,71,NULL,1),(7,1,25225,NULL,1),(7,1,355,NULL,1),(7,1,11585,NULL,1),(7,1,29704,NULL,1),(7,1,25203,NULL,1),(7,1,30357,NULL,1),(7,1,25266,NULL,1),(7,1,2565,NULL,1),(7,1,676,NULL,1),(7,1,25231,NULL,1),(7,1,20230,NULL,1),(7,1,5246,NULL,1),(7,1,25236,NULL,1),(7,1,1161,NULL,1),(7,1,871,NULL,1),(7,1,2458,NULL,1),(7,1,25275,NULL,1),(7,1,25242,NULL,1),(7,1,18499,NULL,1),(7,1,1680,NULL,1),(7,1,6554,NULL,1),(7,1,1719,NULL,1),(7,1,34428,NULL,1),(7,1,23920,NULL,1),(7,1,469,NULL,1),(7,1,3411,NULL,1),(8,1,2048,NULL,1),(8,1,30324,NULL,1),(8,1,11578,NULL,1),(8,1,25208,NULL,1),(8,1,25264,NULL,1),(8,1,2687,NULL,1),(8,1,71,NULL,1),(8,1,25225,NULL,1),(8,1,355,NULL,1),(8,1,11585,NULL,1),(8,1,29704,NULL,1),(8,1,25203,NULL,1),(8,1,30357,NULL,1),(8,1,25266,NULL,1),(8,1,2565,NULL,1),(8,1,676,NULL,1),(8,1,25231,NULL,1),(8,1,20230,NULL,1),(8,1,5246,NULL,1),(8,1,25236,NULL,1),(8,1,1161,NULL,1),(8,1,871,NULL,1),(8,1,2458,NULL,1),(8,1,25275,NULL,1),(8,1,25242,NULL,1),(8,1,18499,NULL,1),(8,1,1680,NULL,1),(8,1,6554,NULL,1),(8,1,1719,NULL,1),(8,1,34428,NULL,1),(8,1,23920,NULL,1),(8,1,469,NULL,1),(8,1,3411,NULL,1),(11,1,2048,NULL,1),(11,1,30324,NULL,1),(11,1,11578,NULL,1),(11,1,25208,NULL,1),(11,1,25264,NULL,1),(11,1,2687,NULL,1),(11,1,71,NULL,1),(11,1,25225,NULL,1),(11,1,355,NULL,1),(11,1,11585,NULL,1),(11,1,29704,NULL,1),(11,1,25203,NULL,1),(11,1,30357,NULL,1),(11,1,25266,NULL,1),(11,1,2565,NULL,1),(11,1,676,NULL,1),(11,1,25231,NULL,1),(11,1,20230,NULL,1),(11,1,5246,NULL,1),(11,1,25236,NULL,1),(11,1,1161,NULL,1),(11,1,871,NULL,1),(11,1,2458,NULL,1),(11,1,25275,NULL,1),(11,1,25242,NULL,1),(11,1,18499,NULL,1),(11,1,1680,NULL,1),(11,1,6554,NULL,1),(11,1,1719,NULL,1),(11,1,34428,NULL,1),(11,1,23920,NULL,1),(11,1,469,NULL,1),(11,1,3411,NULL,1),(2,3,27014,NULL,1),(2,3,1494,NULL,1),(2,3,13163,NULL,1),(2,3,27016,NULL,1),(2,3,27019,NULL,1),(2,3,14325,NULL,1),(2,3,5116,NULL,1),(2,3,27044,NULL,1),(2,3,883,NULL,1),(2,3,2641,NULL,1),(2,3,6991,NULL,1),(2,3,982,NULL,1),(2,3,1515,NULL,1),(2,3,19883,NULL,1),(2,3,27020,NULL,1),(2,3,27046,NULL,1),(2,3,14268,NULL,1),(2,3,6197,NULL,1),(2,3,1002,NULL,1),(2,3,14327,NULL,1),(2,3,27023,NULL,1),(2,3,36916,NULL,1),(2,3,27021,NULL,1),(2,3,19884,NULL,1),(2,3,5118,NULL,1),(2,3,27015,NULL,1),(2,3,14311,NULL,1),(2,3,3043,NULL,1),(2,3,1462,NULL,1),(2,3,19885,NULL,1),(2,3,3045,NULL,1),(2,3,19880,NULL,1),(2,3,13809,NULL,1),(2,3,13161,NULL,1),(2,3,5384,NULL,1),(2,3,1543,NULL,1),(2,3,19878,NULL,1),(2,3,27025,NULL,1),(2,3,27018,NULL,1),(2,3,13159,NULL,1),(2,3,19882,NULL,1),(2,3,27022,NULL,1),(2,3,27045,NULL,1),(2,3,19879,NULL,1),(2,3,19801,NULL,1),(2,3,34120,NULL,1),(2,3,34074,NULL,1),(2,3,34026,NULL,1),(2,3,34600,NULL,1),(2,3,34477,NULL,1),(3,3,27014,NULL,1),(3,3,1494,NULL,1),(3,3,13163,NULL,1),(3,3,27016,NULL,1),(3,3,27019,NULL,1),(3,3,14325,NULL,1),(3,3,5116,NULL,1),(3,3,27044,NULL,1),(3,3,883,NULL,1),(3,3,2641,NULL,1),(3,3,6991,NULL,1),(3,3,982,NULL,1),(3,3,1515,NULL,1),(3,3,19883,NULL,1),(3,3,27020,NULL,1),(3,3,27046,NULL,1),(3,3,14268,NULL,1),(3,3,6197,NULL,1),(3,3,1002,NULL,1),(3,3,14327,NULL,1),(3,3,27023,NULL,1),(3,3,36916,NULL,1),(3,3,27021,NULL,1),(3,3,19884,NULL,1),(3,3,5118,NULL,1),(3,3,27015,NULL,1),(3,3,14311,NULL,1),(3,3,3043,NULL,1),(3,3,1462,NULL,1),(3,3,19885,NULL,1),(3,3,3045,NULL,1),(3,3,19880,NULL,1),(3,3,13809,NULL,1),(3,3,13161,NULL,1),(3,3,5384,NULL,1),(3,3,1543,NULL,1),(3,3,19878,NULL,1),(3,3,27025,NULL,1),(3,3,27018,NULL,1),(3,3,13159,NULL,1),(3,3,19882,NULL,1),(3,3,27022,NULL,1),(3,3,27045,NULL,1),(3,3,19879,NULL,1),(3,3,19801,NULL,1),(3,3,34120,NULL,1),(3,3,34074,NULL,1),(3,3,34026,NULL,1),(3,3,34600,NULL,1),(3,3,34477,NULL,1),(4,3,27014,NULL,1),(4,3,1494,NULL,1),(4,3,13163,NULL,1),(4,3,27016,NULL,1),(4,3,27019,NULL,1),(4,3,14325,NULL,1),(4,3,5116,NULL,1),(4,3,27044,NULL,1),(4,3,883,NULL,1),(4,3,2641,NULL,1),(4,3,6991,NULL,1),(4,3,982,NULL,1),(4,3,1515,NULL,1),(4,3,19883,NULL,1),(4,3,27020,NULL,1),(4,3,27046,NULL,1),(4,3,14268,NULL,1),(4,3,6197,NULL,1),(4,3,1002,NULL,1),(4,3,14327,NULL,1),(4,3,27023,NULL,1),(4,3,36916,NULL,1),(4,3,27021,NULL,1),(4,3,19884,NULL,1),(4,3,5118,NULL,1),(4,3,27015,NULL,1),(4,3,14311,NULL,1),(4,3,3043,NULL,1),(4,3,1462,NULL,1),(4,3,19885,NULL,1),(4,3,3045,NULL,1),(4,3,19880,NULL,1),(4,3,13809,NULL,1),(4,3,13161,NULL,1),(4,3,5384,NULL,1),(4,3,1543,NULL,1),(4,3,19878,NULL,1),(4,3,27025,NULL,1),(4,3,27018,NULL,1),(4,3,13159,NULL,1),(4,3,19882,NULL,1),(4,3,27022,NULL,1),(4,3,27045,NULL,1),(4,3,19879,NULL,1),(4,3,19801,NULL,1),(4,3,34120,NULL,1),(4,3,34074,NULL,1),(4,3,34026,NULL,1),(4,3,34600,NULL,1),(4,3,34477,NULL,1),(6,3,27014,NULL,1),(6,3,1494,NULL,1),(6,3,13163,NULL,1),(6,3,27016,NULL,1),(6,3,27019,NULL,1),(6,3,14325,NULL,1),(6,3,5116,NULL,1),(6,3,27044,NULL,1),(6,3,883,NULL,1),(6,3,2641,NULL,1),(6,3,6991,NULL,1),(6,3,982,NULL,1),(6,3,1515,NULL,1),(6,3,19883,NULL,1),(6,3,27020,NULL,1),(6,3,27046,NULL,1),(6,3,14268,NULL,1),(6,3,6197,NULL,1),(6,3,1002,NULL,1),(6,3,14327,NULL,1),(6,3,27023,NULL,1),(6,3,36916,NULL,1),(6,3,27021,NULL,1),(6,3,19884,NULL,1),(6,3,5118,NULL,1),(6,3,27015,NULL,1),(6,3,14311,NULL,1),(6,3,3043,NULL,1),(6,3,1462,NULL,1),(6,3,19885,NULL,1),(6,3,3045,NULL,1),(6,3,19880,NULL,1),(6,3,13809,NULL,1),(6,3,13161,NULL,1),(6,3,5384,NULL,1),(6,3,1543,NULL,1),(6,3,19878,NULL,1),(6,3,27025,NULL,1),(6,3,27018,NULL,1),(6,3,13159,NULL,1),(6,3,19882,NULL,1),(6,3,27022,NULL,1),(6,3,27045,NULL,1),(6,3,19879,NULL,1),(6,3,19801,NULL,1),(6,3,34120,NULL,1),(6,3,34074,NULL,1),(6,3,34026,NULL,1),(6,3,34600,NULL,1),(6,3,34477,NULL,1),(8,3,27014,NULL,1),(8,3,1494,NULL,1),(8,3,13163,NULL,1),(8,3,27016,NULL,1),(8,3,27019,NULL,1),(8,3,14325,NULL,1),(8,3,5116,NULL,1),(8,3,27044,NULL,1),(8,3,883,NULL,1),(8,3,2641,NULL,1),(8,3,6991,NULL,1),(8,3,982,NULL,1),(8,3,1515,NULL,1),(8,3,19883,NULL,1),(8,3,27020,NULL,1),(8,3,27046,NULL,1),(8,3,14268,NULL,1),(8,3,6197,NULL,1),(8,3,1002,NULL,1),(8,3,14327,NULL,1),(8,3,27023,NULL,1),(8,3,36916,NULL,1),(8,3,27021,NULL,1),(8,3,19884,NULL,1),(8,3,5118,NULL,1),(8,3,27015,NULL,1),(8,3,14311,NULL,1),(8,3,3043,NULL,1),(8,3,1462,NULL,1),(8,3,19885,NULL,1),(8,3,3045,NULL,1),(8,3,19880,NULL,1),(8,3,13809,NULL,1),(8,3,13161,NULL,1),(8,3,5384,NULL,1),(8,3,1543,NULL,1),(8,3,19878,NULL,1),(8,3,27025,NULL,1),(8,3,27018,NULL,1),(8,3,13159,NULL,1),(8,3,19882,NULL,1),(8,3,27022,NULL,1),(8,3,27045,NULL,1),(8,3,19879,NULL,1),(8,3,19801,NULL,1),(8,3,34120,NULL,1),(8,3,34074,NULL,1),(8,3,34026,NULL,1),(8,3,34600,NULL,1),(8,3,34477,NULL,1),(10,3,27014,NULL,1),(10,3,1494,NULL,1),(10,3,13163,NULL,1),(10,3,27016,NULL,1),(10,3,27019,NULL,1),(10,3,14325,NULL,1),(10,3,5116,NULL,1),(10,3,27044,NULL,1),(10,3,883,NULL,1),(10,3,2641,NULL,1),(10,3,6991,NULL,1),(10,3,982,NULL,1),(10,3,1515,NULL,1),(10,3,19883,NULL,1),(10,3,27020,NULL,1),(10,3,27046,NULL,1),(10,3,14268,NULL,1),(10,3,6197,NULL,1),(10,3,1002,NULL,1),(10,3,14327,NULL,1),(10,3,27023,NULL,1),(10,3,36916,NULL,1),(10,3,27021,NULL,1),(10,3,19884,NULL,1),(10,3,5118,NULL,1),(10,3,27015,NULL,1),(10,3,14311,NULL,1),(10,3,3043,NULL,1),(10,3,1462,NULL,1),(10,3,19885,NULL,1),(10,3,3045,NULL,1),(10,3,19880,NULL,1),(10,3,13809,NULL,1),(10,3,13161,NULL,1),(10,3,5384,NULL,1),(10,3,1543,NULL,1),(10,3,19878,NULL,1),(10,3,27025,NULL,1),(10,3,27018,NULL,1),(10,3,13159,NULL,1),(10,3,19882,NULL,1),(10,3,27022,NULL,1),(10,3,27045,NULL,1),(10,3,19879,NULL,1),(10,3,19801,NULL,1),(10,3,34120,NULL,1),(10,3,34074,NULL,1),(10,3,34026,NULL,1),(10,3,34600,NULL,1),(10,3,34477,NULL,1),(11,3,27014,NULL,1),(11,3,1494,NULL,1),(11,3,13163,NULL,1),(11,3,27016,NULL,1),(11,3,27019,NULL,1),(11,3,14325,NULL,1),(11,3,5116,NULL,1),(11,3,27044,NULL,1),(11,3,883,NULL,1),(11,3,2641,NULL,1),(11,3,6991,NULL,1),(11,3,982,NULL,1),(11,3,1515,NULL,1),(11,3,19883,NULL,1),(11,3,27020,NULL,1),(11,3,27046,NULL,1),(11,3,14268,NULL,1),(11,3,6197,NULL,1),(11,3,1002,NULL,1),(11,3,14327,NULL,1),(11,3,27023,NULL,1),(11,3,36916,NULL,1),(11,3,27021,NULL,1),(11,3,19884,NULL,1),(11,3,5118,NULL,1),(11,3,27015,NULL,1),(11,3,14311,NULL,1),(11,3,3043,NULL,1),(11,3,1462,NULL,1),(11,3,19885,NULL,1),(11,3,3045,NULL,1),(11,3,19880,NULL,1),(11,3,13809,NULL,1),(11,3,13161,NULL,1),(11,3,5384,NULL,1),(11,3,1543,NULL,1),(11,3,19878,NULL,1),(11,3,27025,NULL,1),(11,3,27018,NULL,1),(11,3,13159,NULL,1),(11,3,19882,NULL,1),(11,3,27022,NULL,1),(11,3,27045,NULL,1),(11,3,19879,NULL,1),(11,3,19801,NULL,1),(11,3,34120,NULL,1),(11,3,34074,NULL,1),(11,3,34026,NULL,1),(11,3,34600,NULL,1),(11,3,34477,NULL,1),(1,2,27149,NULL,1),(1,2,27136,NULL,1),(1,2,27155,NULL,1),(1,2,27140,NULL,1),(1,2,20271,NULL,1),(1,2,27158,NULL,1),(1,2,10308,NULL,1),(1,2,10278,NULL,1),(1,2,27154,NULL,1),(1,2,20773,NULL,1),(1,2,27142,NULL,1),(1,2,31789,NULL,1),(1,2,27150,NULL,1),(1,2,25780,NULL,1),(1,2,1044,NULL,1),(1,2,33776,NULL,1),(1,2,27173,NULL,1),(1,2,27138,NULL,1),(1,2,27137,NULL,1),(1,2,5502,NULL,1),(1,2,19746,NULL,1),(1,2,31895,NULL,1),(1,2,5627,NULL,1),(1,2,1038,NULL,1),(1,2,27151,NULL,1),(1,2,19752,NULL,1),(1,2,27160,NULL,1),(1,2,27152,NULL,1),(1,2,1020,NULL,1),(1,2,27153,NULL,1),(1,2,27166,NULL,1),(1,2,27144,NULL,1),(1,2,4987,NULL,1),(1,2,27180,NULL,1),(1,2,27148,NULL,1),(1,2,27139,NULL,1),(1,2,27141,NULL,1),(1,2,10326,NULL,1),(1,2,27143,NULL,1),(1,2,25898,NULL,1),(1,2,27145,NULL,1),(1,2,25895,NULL,1),(1,2,32223,NULL,1),(1,2,27169,NULL,1),(1,2,31884,NULL,1),(3,2,27149,NULL,1),(3,2,27136,NULL,1),(3,2,27155,NULL,1),(3,2,27140,NULL,1),(3,2,20271,NULL,1),(3,2,27158,NULL,1),(3,2,10308,NULL,1),(3,2,10278,NULL,1),(3,2,27154,NULL,1),(3,2,20773,NULL,1),(3,2,27142,NULL,1),(3,2,31789,NULL,1),(3,2,27150,NULL,1),(3,2,25780,NULL,1),(3,2,1044,NULL,1),(3,2,33776,NULL,1),(3,2,27173,NULL,1),(3,2,27138,NULL,1),(3,2,27137,NULL,1),(3,2,5502,NULL,1),(3,2,19746,NULL,1),(3,2,31895,NULL,1),(3,2,5627,NULL,1),(3,2,1038,NULL,1),(3,2,27151,NULL,1),(3,2,19752,NULL,1),(3,2,27160,NULL,1),(3,2,27152,NULL,1),(3,2,1020,NULL,1),(3,2,27153,NULL,1),(3,2,27166,NULL,1),(3,2,27144,NULL,1),(3,2,4987,NULL,1),(3,2,27180,NULL,1),(3,2,27148,NULL,1),(3,2,27139,NULL,1),(3,2,27141,NULL,1),(3,2,10326,NULL,1),(3,2,27143,NULL,1),(3,2,25898,NULL,1),(3,2,27145,NULL,1),(3,2,25895,NULL,1),(3,2,32223,NULL,1),(3,2,27169,NULL,1),(3,2,31884,NULL,1),(10,2,27149,NULL,1),(10,2,27136,NULL,1),(10,2,27155,NULL,1),(10,2,27140,NULL,1),(10,2,20271,NULL,1),(10,2,27158,NULL,1),(10,2,10308,NULL,1),(10,2,10278,NULL,1),(10,2,27154,NULL,1),(10,2,20773,NULL,1),(10,2,27142,NULL,1),(10,2,31789,NULL,1),(10,2,27150,NULL,1),(10,2,25780,NULL,1),(10,2,1044,NULL,1),(10,2,33776,NULL,1),(10,2,27173,NULL,1),(10,2,27138,NULL,1),(10,2,27137,NULL,1),(10,2,5502,NULL,1),(10,2,19746,NULL,1),(10,2,31895,NULL,1),(10,2,5627,NULL,1),(10,2,1038,NULL,1),(10,2,27151,NULL,1),(10,2,19752,NULL,1),(10,2,27160,NULL,1),(10,2,27152,NULL,1),(10,2,1020,NULL,1),(10,2,27153,NULL,1),(10,2,27166,NULL,1),(10,2,27144,NULL,1),(10,2,4987,NULL,1),(10,2,27180,NULL,1),(10,2,27148,NULL,1),(10,2,27139,NULL,1),(10,2,27141,NULL,1),(10,2,10326,NULL,1),(10,2,27143,NULL,1),(10,2,25898,NULL,1),(10,2,27145,NULL,1),(10,2,25895,NULL,1),(10,2,32223,NULL,1),(10,2,27169,NULL,1),(10,2,31884,NULL,1),(11,2,27149,NULL,1),(11,2,27136,NULL,1),(11,2,27155,NULL,1),(11,2,27140,NULL,1),(11,2,20271,NULL,1),(11,2,27158,NULL,1),(11,2,10308,NULL,1),(11,2,10278,NULL,1),(11,2,27154,NULL,1),(11,2,20773,NULL,1),(11,2,27142,NULL,1),(11,2,31789,NULL,1),(11,2,27150,NULL,1),(11,2,25780,NULL,1),(11,2,1044,NULL,1),(11,2,33776,NULL,1),(11,2,27173,NULL,1),(11,2,27138,NULL,1),(11,2,27137,NULL,1),(11,2,5502,NULL,1),(11,2,19746,NULL,1),(11,2,31895,NULL,1),(11,2,5627,NULL,1),(11,2,1038,NULL,1),(11,2,27151,NULL,1),(11,2,19752,NULL,1),(11,2,27160,NULL,1),(11,2,27152,NULL,1),(11,2,1020,NULL,1),(11,2,27153,NULL,1),(11,2,27166,NULL,1),(11,2,27144,NULL,1),(11,2,4987,NULL,1),(11,2,27180,NULL,1),(11,2,27148,NULL,1),(11,2,27139,NULL,1),(11,2,27141,NULL,1),(11,2,10326,NULL,1),(11,2,27143,NULL,1),(11,2,25898,NULL,1),(11,2,27145,NULL,1),(11,2,25895,NULL,1),(11,2,32223,NULL,1),(11,2,27169,NULL,1),(11,2,31884,NULL,1),(1,4,26865,NULL,1),(1,4,26862,NULL,1),(1,4,1787,NULL,1),(1,4,26863,NULL,1),(1,4,921,NULL,1),(1,4,38764,NULL,1),(1,4,26669,NULL,1),(1,4,11297,NULL,1),(1,4,6774,NULL,1),(1,4,11305,NULL,1),(1,4,38768,NULL,1),(1,4,26866,NULL,1),(1,4,26884,NULL,1),(1,4,27448,NULL,1),(1,4,1804,NULL,1),(1,4,27441,NULL,1),(1,4,2842,NULL,1),(1,4,1725,NULL,1),(1,4,26867,NULL,1),(1,4,26889,NULL,1),(1,4,1833,NULL,1),(1,4,1842,NULL,1),(1,4,408,NULL,1),(1,4,2094,NULL,1),(1,4,32684,NULL,1),(1,4,26679,NULL,1),(1,4,31224,NULL,1),(1,4,5938,NULL,1),(2,4,26865,NULL,1),(2,4,26862,NULL,1),(2,4,1787,NULL,1),(2,4,26863,NULL,1),(2,4,921,NULL,1),(2,4,38764,NULL,1),(2,4,26669,NULL,1),(2,4,11297,NULL,1),(2,4,6774,NULL,1),(2,4,11305,NULL,1),(2,4,38768,NULL,1),(2,4,26866,NULL,1),(2,4,26884,NULL,1),(2,4,27448,NULL,1),(2,4,1804,NULL,1),(2,4,27441,NULL,1),(2,4,2842,NULL,1),(2,4,1725,NULL,1),(2,4,26867,NULL,1),(2,4,26889,NULL,1),(2,4,1833,NULL,1),(2,4,1842,NULL,1),(2,4,408,NULL,1),(2,4,2094,NULL,1),(2,4,32684,NULL,1),(2,4,26679,NULL,1),(2,4,31224,NULL,1),(2,4,5938,NULL,1),(3,4,26865,NULL,1),(3,4,26862,NULL,1),(3,4,1787,NULL,1),(3,4,26863,NULL,1),(3,4,921,NULL,1),(3,4,38764,NULL,1),(3,4,26669,NULL,1),(3,4,11297,NULL,1),(3,4,6774,NULL,1),(3,4,11305,NULL,1),(3,4,38768,NULL,1),(3,4,26866,NULL,1),(3,4,26884,NULL,1),(3,4,27448,NULL,1),(3,4,1804,NULL,1),(3,4,27441,NULL,1),(3,4,2842,NULL,1),(3,4,1725,NULL,1),(3,4,26867,NULL,1),(3,4,26889,NULL,1),(3,4,1833,NULL,1),(3,4,1842,NULL,1),(3,4,408,NULL,1),(3,4,2094,NULL,1),(3,4,32684,NULL,1),(3,4,26679,NULL,1),(3,4,31224,NULL,1),(3,4,5938,NULL,1),(4,4,26865,NULL,1),(4,4,26862,NULL,1),(4,4,1787,NULL,1),(4,4,26863,NULL,1),(4,4,921,NULL,1),(4,4,38764,NULL,1),(4,4,26669,NULL,1),(4,4,11297,NULL,1),(4,4,6774,NULL,1),(4,4,11305,NULL,1),(4,4,38768,NULL,1),(4,4,26866,NULL,1),(4,4,426884,NULL,1),(4,4,427448,NULL,1),(4,4,1804,NULL,1),(4,4,27441,NULL,1),(4,4,2842,NULL,1),(4,4,1725,NULL,1),(4,4,26867,NULL,1),(4,4,26889,NULL,1),(4,4,1833,NULL,1),(4,4,1842,NULL,1),(4,4,408,NULL,1),(4,4,2094,NULL,1),(4,4,32684,NULL,1),(4,4,26679,NULL,1),(4,4,31224,NULL,1),(4,4,5938,NULL,1),(5,4,26865,NULL,1),(5,4,26862,NULL,1),(5,4,1787,NULL,1),(5,4,26863,NULL,1),(5,4,921,NULL,1),(5,4,38764,NULL,1),(5,4,26669,NULL,1),(5,4,11297,NULL,1),(5,4,6774,NULL,1),(5,4,11305,NULL,1),(5,4,38768,NULL,1),(5,4,26866,NULL,1),(5,4,26884,NULL,1),(5,4,27448,NULL,1),(5,4,1804,NULL,1),(5,4,27441,NULL,1),(5,4,2842,NULL,1),(5,4,1725,NULL,1),(5,4,26867,NULL,1),(5,4,26889,NULL,1),(5,4,1833,NULL,1),(5,4,1842,NULL,1),(5,4,408,NULL,1),(5,4,2094,NULL,1),(5,4,32684,NULL,1),(5,4,26679,NULL,1),(5,4,31224,NULL,1),(5,4,5938,NULL,1),(7,4,26865,NULL,1),(7,4,26862,NULL,1),(7,4,1787,NULL,1),(7,4,26863,NULL,1),(7,4,921,NULL,1),(7,4,38764,NULL,1),(7,4,26669,NULL,1),(7,4,11297,NULL,1),(7,4,6774,NULL,1),(7,4,11305,NULL,1),(7,4,38768,NULL,1),(7,4,26866,NULL,1),(7,4,26884,NULL,1),(7,4,27448,NULL,1),(7,4,1804,NULL,1),(7,4,27441,NULL,1),(7,4,2842,NULL,1),(7,4,1725,NULL,1),(7,4,26867,NULL,1),(7,4,26889,NULL,1),(7,4,1833,NULL,1),(7,4,1842,NULL,1),(7,4,408,NULL,1),(7,4,2094,NULL,1),(7,4,32684,NULL,1),(7,4,26679,NULL,1),(7,4,31224,NULL,1),(7,4,5938,NULL,1),(8,4,26865,NULL,1),(8,4,26862,NULL,1),(8,4,1787,NULL,1),(8,4,26863,NULL,1),(8,4,921,NULL,1),(8,4,38764,NULL,1),(8,4,26669,NULL,1),(8,4,11297,NULL,1),(8,4,6774,NULL,1),(8,4,11305,NULL,1),(8,4,38768,NULL,1),(8,4,26866,NULL,1),(8,4,26884,NULL,1),(8,4,27448,NULL,1),(8,4,1804,NULL,1),(8,4,27441,NULL,1),(8,4,2842,NULL,1),(8,4,1725,NULL,1),(8,4,26867,NULL,1),(8,4,26889,NULL,1),(8,4,1833,NULL,1),(8,4,1842,NULL,1),(8,4,408,NULL,1),(8,4,2094,NULL,1),(8,4,32684,NULL,1),(8,4,26679,NULL,1),(8,4,31224,NULL,1),(8,4,5938,NULL,1),(10,4,26865,NULL,1),(10,4,26862,NULL,1),(10,4,1787,NULL,1),(10,4,26863,NULL,1),(10,4,921,NULL,1),(10,4,38764,NULL,1),(10,4,26669,NULL,1),(10,4,11297,NULL,1),(10,4,6774,NULL,1),(10,4,11305,NULL,1),(10,4,38768,NULL,1),(10,4,26866,NULL,1),(10,4,26884,NULL,1),(10,4,27448,NULL,1),(10,4,1804,NULL,1),(10,4,27441,NULL,1),(10,4,2842,NULL,1),(10,4,1725,NULL,1),(10,4,26867,NULL,1),(10,4,26889,NULL,1),(10,4,1833,NULL,1),(10,4,1842,NULL,1),(10,4,408,NULL,1),(10,4,2094,NULL,1),(10,4,32684,NULL,1),(10,4,26679,NULL,1),(10,4,31224,NULL,1),(10,4,5938,NULL,1),(1,9,27215,NULL,1),(1,9,27209,NULL,1),(1,9,27216,NULL,1),(1,9,30909,NULL,1),(1,9,27222,NULL,1),(1,9,27218,NULL,1),(1,9,6215,NULL,1),(1,9,27230,NULL,1),(1,9,27217,NULL,1),(1,9,27259,NULL,1),(1,9,27226,NULL,1),(1,9,27220,NULL,1),(1,9,5697,NULL,1),(1,9,27238,NULL,1),(1,9,30459,NULL,1),(1,9,27260,NULL,1),(1,9,27212,NULL,1),(1,9,698,NULL,1),(1,9,5500,NULL,1),(1,9,30908,NULL,1),(1,9,11719,NULL,1),(1,9,132,NULL,1),(1,9,18647,NULL,1),(1,9,27213,NULL,1),(1,9,11726,NULL,1),(1,9,27228,NULL,1),(1,9,28610,NULL,1),(1,9,28172,NULL,1),(1,9,27250,NULL,1),(1,9,17928,NULL,1),(1,9,27223,NULL,1),(1,9,27229,NULL,1),(1,9,30545,NULL,1),(1,9,30910,NULL,1),(1,9,18540,NULL,1),(1,9,28189,NULL,1),(1,9,32231,NULL,1),(1,9,29858,NULL,1),(1,9,29893,NULL,1),(1,9,27243,NULL,1),(2,9,27215,NULL,1),(2,9,27209,NULL,1),(2,9,27216,NULL,1),(2,9,30909,NULL,1),(2,9,27222,NULL,1),(2,9,27218,NULL,1),(2,9,6215,NULL,1),(2,9,27230,NULL,1),(2,9,27217,NULL,1),(2,9,27259,NULL,1),(2,9,27226,NULL,1),(2,9,27220,NULL,1),(2,9,5697,NULL,1),(2,9,27238,NULL,1),(2,9,30459,NULL,1),(2,9,27260,NULL,1),(2,9,27212,NULL,1),(2,9,698,NULL,1),(2,9,5500,NULL,1),(2,9,30908,NULL,1),(2,9,11719,NULL,1),(2,9,132,NULL,1),(2,9,18647,NULL,1),(2,9,27213,NULL,1),(2,9,11726,NULL,1),(2,9,27228,NULL,1),(2,9,28610,NULL,1),(2,9,28172,NULL,1),(2,9,27250,NULL,1),(2,9,17928,NULL,1),(2,9,27223,NULL,1),(2,9,27229,NULL,1),(2,9,30545,NULL,1),(2,9,30910,NULL,1),(2,9,18540,NULL,1),(2,9,28189,NULL,1),(2,9,32231,NULL,1),(2,9,29858,NULL,1),(2,9,29893,NULL,1),(2,9,27243,NULL,1),(5,9,27215,NULL,1),(5,9,27209,NULL,1),(5,9,27216,NULL,1),(5,9,30909,NULL,1),(5,9,27222,NULL,1),(5,9,27218,NULL,1),(5,9,6215,NULL,1),(5,9,27230,NULL,1),(5,9,27217,NULL,1),(5,9,27259,NULL,1),(5,9,27226,NULL,1),(5,9,27220,NULL,1),(5,9,5697,NULL,1),(5,9,27238,NULL,1),(5,9,30459,NULL,1),(5,9,27260,NULL,1),(5,9,27212,NULL,1),(5,9,698,NULL,1),(5,9,5500,NULL,1),(5,9,30908,NULL,1),(5,9,11719,NULL,1),(5,9,132,NULL,1),(5,9,18647,NULL,1),(5,9,27213,NULL,1),(5,9,11726,NULL,1),(5,9,27228,NULL,1),(5,9,28610,NULL,1),(5,9,28172,NULL,1),(5,9,27250,NULL,1),(5,9,17928,NULL,1),(5,9,27223,NULL,1),(5,9,27229,NULL,1),(5,9,30545,NULL,1),(5,9,30910,NULL,1),(5,9,18540,NULL,1),(5,9,28189,NULL,1),(5,9,32231,NULL,1),(5,9,29858,NULL,1),(5,9,29893,NULL,1),(5,9,27243,NULL,1),(7,9,27215,NULL,1),(7,9,27209,NULL,1),(7,9,27216,NULL,1),(7,9,30909,NULL,1),(7,9,27222,NULL,1),(7,9,27218,NULL,1),(7,9,6215,NULL,1),(7,9,27230,NULL,1),(7,9,27217,NULL,1),(7,9,27259,NULL,1),(7,9,27226,NULL,1),(7,9,27220,NULL,1),(7,9,5697,NULL,1),(7,9,27238,NULL,1),(7,9,30459,NULL,1),(7,9,27260,NULL,1),(7,9,27212,NULL,1),(7,9,698,NULL,1),(7,9,5500,NULL,1),(7,9,30908,NULL,1),(7,9,11719,NULL,1),(7,9,132,NULL,1),(7,9,18647,NULL,1),(7,9,27213,NULL,1),(7,9,11726,NULL,1),(7,9,27228,NULL,1),(7,9,28610,NULL,1),(7,9,28172,NULL,1),(7,9,27250,NULL,1),(7,9,17928,NULL,1),(7,9,27223,NULL,1),(7,9,27229,NULL,1),(7,9,30545,NULL,1),(7,9,30910,NULL,1),(7,9,18540,NULL,1),(7,9,28189,NULL,1),(7,9,32231,NULL,1),(7,9,29858,NULL,1),(7,9,29893,NULL,1),(7,9,27243,NULL,1),(11,9,27215,NULL,1),(11,9,27209,NULL,1),(11,9,27216,NULL,1),(11,9,30909,NULL,1),(11,9,27222,NULL,1),(11,9,27218,NULL,1),(11,9,6215,NULL,1),(11,9,27230,NULL,1),(11,9,27217,NULL,1),(11,9,27259,NULL,1),(11,9,27226,NULL,1),(11,9,27220,NULL,1),(11,9,5697,NULL,1),(11,9,27238,NULL,1),(11,9,30459,NULL,1),(11,9,27260,NULL,1),(11,9,27212,NULL,1),(11,9,698,NULL,1),(11,9,5500,NULL,1),(11,9,30908,NULL,1),(11,9,11719,NULL,1),(11,9,132,NULL,1),(11,9,18647,NULL,1),(11,9,27213,NULL,1),(11,9,11726,NULL,1),(11,9,27228,NULL,1),(11,9,28610,NULL,1),(11,9,28172,NULL,1),(11,9,27250,NULL,1),(11,9,17928,NULL,1),(11,9,27223,NULL,1),(11,9,27229,NULL,1),(11,9,30545,NULL,1),(11,9,30910,NULL,1),(11,9,18540,NULL,1),(11,9,28189,NULL,1),(11,9,32231,NULL,1),(11,9,29858,NULL,1),(11,9,29893,NULL,1),(11,9,27243,NULL,1),(4,11,26979,NULL,1),(4,11,26990,NULL,1),(4,11,26985,NULL,1),(4,11,26988,NULL,1),(4,11,26982,NULL,1),(4,11,26992,NULL,1),(4,11,26989,NULL,1),(4,11,26998,NULL,1),(4,11,6795,NULL,1),(4,11,26996,NULL,1),(4,11,18960,NULL,1),(4,11,9634,NULL,1),(4,11,768,NULL,1),(4,11,783,NULL,1),(4,11,1066,NULL,1),(4,11,40120,NULL,1),(4,11,5229,NULL,1),(4,11,26980,NULL,1),(4,11,8983,NULL,1),(4,11,8946,NULL,1),(4,11,26997,NULL,1),(4,11,26993,NULL,1),(4,11,18658,NULL,1),(4,11,27000,NULL,1),(4,11,9913,NULL,1),(4,11,26994,NULL,1),(4,11,27008,NULL,1),(4,11,26986,NULL,1),(4,11,27002,NULL,1),(4,11,26995,NULL,1),(4,11,27003,NULL,1),(4,11,2782,NULL,1),(4,11,9846,NULL,1),(4,11,2893,NULL,1),(4,11,33357,NULL,1),(4,11,5209,NULL,1),(4,11,27004,NULL,1),(4,11,26983,NULL,1),(4,11,24248,NULL,1),(4,11,27005,NULL,1),(4,11,5225,NULL,1),(4,11,26999,NULL,1),(4,11,27012,NULL,1),(4,11,27006,NULL,1),(4,11,29166,NULL,1),(4,11,22812,NULL,1),(4,11,26991,NULL,1),(4,11,22570,NULL,1),(4,11,33763,NULL,1),(4,11,33745,NULL,1),(4,11,33786,NULL,1),(6,11,26979,NULL,1),(6,11,26990,NULL,1),(6,11,26985,NULL,1),(6,11,26988,NULL,1),(6,11,26982,NULL,1),(6,11,26992,NULL,1),(6,11,26989,NULL,1),(6,11,26998,NULL,1),(6,11,6795,NULL,1),(6,11,26996,NULL,1),(6,11,18960,NULL,1),(6,11,9634,NULL,1),(6,11,768,NULL,1),(6,11,783,NULL,1),(6,11,1066,NULL,1),(6,11,40120,NULL,1),(6,11,5229,NULL,1),(6,11,26980,NULL,1),(6,11,8983,NULL,1),(6,11,8946,NULL,1),(6,11,26997,NULL,1),(6,11,26993,NULL,1),(6,11,18658,NULL,1),(6,11,27000,NULL,1),(6,11,9913,NULL,1),(6,11,26994,NULL,1),(6,11,27008,NULL,1),(6,11,26986,NULL,1),(6,11,27002,NULL,1),(6,11,26995,NULL,1),(6,11,27003,NULL,1),(6,11,2782,NULL,1),(6,11,9846,NULL,1),(6,11,2893,NULL,1),(6,11,33357,NULL,1),(6,11,5209,NULL,1),(6,11,27004,NULL,1),(6,11,26983,NULL,1),(6,11,24248,NULL,1),(6,11,27005,NULL,1),(6,11,5225,NULL,1),(6,11,26999,NULL,1),(6,11,27012,NULL,1),(6,11,27006,NULL,1),(6,11,29166,NULL,1),(6,11,22812,NULL,1),(6,11,26991,NULL,1),(6,11,22570,NULL,1),(6,11,33763,NULL,1),(6,11,33745,NULL,1),(6,11,33786,NULL,1),(1,8,27126,NULL,1),(1,8,27070,NULL,1),(1,8,22018,NULL,1),(1,8,27072,NULL,1),(1,8,22019,NULL,1),(1,8,27079,NULL,1),(1,8,38704,NULL,1),(1,8,28272,NULL,1),(1,8,28271,NULL,1),(1,8,12826,NULL,1),(1,8,27088,NULL,1),(1,8,33944,NULL,1),(1,8,130,NULL,1),(1,8,27082,NULL,1),(1,8,27086,NULL,1),(1,8,33946,NULL,1),(1,8,475,NULL,1),(1,8,1953,NULL,1),(1,8,27085,NULL,1),(1,8,12051,NULL,1),(1,8,27128,NULL,1),(1,8,27131,NULL,1),(1,8,32796,NULL,1),(1,8,27074,NULL,1),(1,8,2139,NULL,1),(1,8,27101,NULL,1),(1,8,27124,NULL,1),(1,8,45438,NULL,1),(1,8,27125,NULL,1),(1,8,27127,NULL,1),(1,8,30482,NULL,1),(1,8,30451,NULL,1),(1,8,30455,NULL,1),(1,8,66,NULL,1),(1,8,43987,NULL,1),(1,8,30449,NULL,1),(5,8,27126,NULL,1),(5,8,27070,NULL,1),(5,8,22018,NULL,1),(5,8,27072,NULL,1),(5,8,22019,NULL,1),(5,8,27079,NULL,1),(5,8,38704,NULL,1),(5,8,28272,NULL,1),(5,8,28271,NULL,1),(5,8,12826,NULL,1),(5,8,27088,NULL,1),(5,8,33944,NULL,1),(5,8,130,NULL,1),(5,8,27082,NULL,1),(5,8,27086,NULL,1),(5,8,33946,NULL,1),(5,8,475,NULL,1),(5,8,1953,NULL,1),(5,8,27085,NULL,1),(5,8,12051,NULL,1),(5,8,27128,NULL,1),(5,8,27131,NULL,1),(5,8,32796,NULL,1),(5,8,27074,NULL,1),(5,8,2139,NULL,1),(5,8,27101,NULL,1),(5,8,27124,NULL,1),(5,8,45438,NULL,1),(5,8,27125,NULL,1),(5,8,27127,NULL,1),(5,8,30482,NULL,1),(5,8,30451,NULL,1),(5,8,30455,NULL,1),(5,8,66,NULL,1),(5,8,43987,NULL,1),(5,8,30449,NULL,1),(7,8,27126,NULL,1),(7,8,27070,NULL,1),(7,8,22018,NULL,1),(7,8,27072,NULL,1),(7,8,22019,NULL,1),(7,8,27079,NULL,1),(7,8,38704,NULL,1),(7,8,28272,NULL,1),(7,8,28271,NULL,1),(7,8,12826,NULL,1),(7,8,27088,NULL,1),(7,8,33944,NULL,1),(7,8,130,NULL,1),(7,8,27082,NULL,1),(7,8,27086,NULL,1),(7,8,33946,NULL,1),(7,8,475,NULL,1),(7,8,1953,NULL,1),(7,8,27085,NULL,1),(7,8,12051,NULL,1),(7,8,27128,NULL,1),(7,8,27131,NULL,1),(7,8,32796,NULL,1),(7,8,27074,NULL,1),(7,8,2139,NULL,1),(7,8,27101,NULL,1),(7,8,27124,NULL,1),(7,8,45438,NULL,1),(7,8,27125,NULL,1),(7,8,27127,NULL,1),(7,8,30482,NULL,1),(7,8,30451,NULL,1),(7,8,30455,NULL,1),(7,8,66,NULL,1),(7,8,43987,NULL,1),(7,8,30449,NULL,1),(8,8,27126,NULL,1),(8,8,27070,NULL,1),(8,8,22018,NULL,1),(8,8,27072,NULL,1),(8,8,22019,NULL,1),(8,8,27079,NULL,1),(8,8,38704,NULL,1),(8,8,28272,NULL,1),(8,8,28271,NULL,1),(8,8,12826,NULL,1),(8,8,27088,NULL,1),(8,8,33944,NULL,1),(8,8,130,NULL,1),(8,8,27082,NULL,1),(8,8,27086,NULL,1),(8,8,33946,NULL,1),(8,8,475,NULL,1),(8,8,1953,NULL,1),(8,8,27085,NULL,1),(8,8,12051,NULL,1),(8,8,27128,NULL,1),(8,8,27131,NULL,1),(8,8,32796,NULL,1),(8,8,27074,NULL,1),(8,8,2139,NULL,1),(8,8,27101,NULL,1),(8,8,27124,NULL,1),(8,8,45438,NULL,1),(8,8,27125,NULL,1),(8,8,27127,NULL,1),(8,8,30482,NULL,1),(8,8,30451,NULL,1),(8,8,30455,NULL,1),(8,8,66,NULL,1),(8,8,43987,NULL,1),(8,8,30449,NULL,1),(10,8,27126,NULL,1),(10,8,27070,NULL,1),(10,8,22018,NULL,1),(10,8,27072,NULL,1),(10,8,22019,NULL,1),(10,8,27079,NULL,1),(10,8,38704,NULL,1),(10,8,28272,NULL,1),(10,8,28271,NULL,1),(10,8,12826,NULL,1),(10,8,27088,NULL,1),(10,8,33944,NULL,1),(10,8,130,NULL,1),(10,8,27082,NULL,1),(10,8,27086,NULL,1),(10,8,33946,NULL,1),(10,8,475,NULL,1),(10,8,1953,NULL,1),(10,8,27085,NULL,1),(10,8,12051,NULL,1),(10,8,27128,NULL,1),(10,8,27131,NULL,1),(10,8,32796,NULL,1),(10,8,27074,NULL,1),(10,8,2139,NULL,1),(10,8,27101,NULL,1),(10,8,27124,NULL,1),(10,8,45438,NULL,1),(10,8,27125,NULL,1),(10,8,27127,NULL,1),(10,8,30482,NULL,1),(10,8,30451,NULL,1),(10,8,30455,NULL,1),(10,8,66,NULL,1),(10,8,43987,NULL,1),(10,8,30449,NULL,1),(11,8,27126,NULL,1),(11,8,27070,NULL,1),(11,8,22018,NULL,1),(11,8,27072,NULL,1),(11,8,22019,NULL,1),(11,8,27079,NULL,1),(11,8,38704,NULL,1),(11,8,28272,NULL,1),(11,8,28271,NULL,1),(11,8,12826,NULL,1),(11,8,27088,NULL,1),(11,8,33944,NULL,1),(11,8,130,NULL,1),(11,8,27082,NULL,1),(11,8,27086,NULL,1),(11,8,33946,NULL,1),(11,8,475,NULL,1),(11,8,1953,NULL,1),(11,8,27085,NULL,1),(11,8,12051,NULL,1),(11,8,27128,NULL,1),(11,8,27131,NULL,1),(11,8,32796,NULL,1),(11,8,27074,NULL,1),(11,8,2139,NULL,1),(11,8,27101,NULL,1),(11,8,27124,NULL,1),(11,8,45438,NULL,1),(11,8,27125,NULL,1),(11,8,27127,NULL,1),(11,8,30482,NULL,1),(11,8,30451,NULL,1),(11,8,30455,NULL,1),(11,8,66,NULL,1),(11,8,43987,NULL,1),(11,8,30449,NULL,1),(1,5,25389,NULL,1),(1,5,25364,NULL,1),(1,5,25368,NULL,1),(1,5,25218,NULL,1),(1,5,25429,NULL,1),(1,5,25222,NULL,1),(1,5,25375,NULL,1),(1,5,25435,NULL,1),(1,5,25431,NULL,1),(1,5,528,NULL,1),(1,5,10890,NULL,1),(1,5,988,NULL,1),(1,5,6346,NULL,1),(1,5,25235,NULL,1),(1,5,25384,NULL,1),(1,5,25596,NULL,1),(1,5,10955,NULL,1),(1,5,10909,NULL,1),(1,5,25380,NULL,1),(1,5,10912,NULL,1),(1,5,25308,NULL,1),(1,5,25433,NULL,1),(1,5,552,NULL,1),(1,5,1706,NULL,1),(1,5,25213,NULL,1),(1,5,25392,NULL,1),(1,5,39374,NULL,1),(1,5,32999,NULL,1),(1,5,32996,NULL,1),(1,5,32546,NULL,1),(1,5,34433,NULL,1),(1,5,33076,NULL,1),(1,5,32375,NULL,1),(3,5,25389,NULL,1),(3,5,25364,NULL,1),(3,5,25368,NULL,1),(3,5,25218,NULL,1),(3,5,25429,NULL,1),(3,5,25222,NULL,1),(3,5,25375,NULL,1),(3,5,25435,NULL,1),(3,5,25431,NULL,1),(3,5,528,NULL,1),(3,5,10890,NULL,1),(3,5,988,NULL,1),(3,5,6346,NULL,1),(3,5,25235,NULL,1),(3,5,25384,NULL,1),(3,5,25596,NULL,1),(3,5,10955,NULL,1),(3,5,10909,NULL,1),(3,5,25380,NULL,1),(3,5,10912,NULL,1),(3,5,25308,NULL,1),(3,5,25433,NULL,1),(3,5,552,NULL,1),(3,5,1706,NULL,1),(3,5,25213,NULL,1),(3,5,25392,NULL,1),(3,5,39374,NULL,1),(3,5,32999,NULL,1),(3,5,32996,NULL,1),(3,5,32546,NULL,1),(3,5,34433,NULL,1),(3,5,33076,NULL,1),(3,5,32375,NULL,1),(4,5,25389,NULL,1),(4,5,25364,NULL,1),(4,5,25368,NULL,1),(4,5,25218,NULL,1),(4,5,25429,NULL,1),(4,5,25222,NULL,1),(4,5,25375,NULL,1),(4,5,25435,NULL,1),(4,5,25431,NULL,1),(4,5,528,NULL,1),(4,5,10890,NULL,1),(4,5,988,NULL,1),(4,5,6346,NULL,1),(4,5,25235,NULL,1),(4,5,25384,NULL,1),(4,5,25596,NULL,1),(4,5,10955,NULL,1),(4,5,10909,NULL,1),(4,5,25380,NULL,1),(4,5,10912,NULL,1),(4,5,25308,NULL,1),(4,5,25433,NULL,1),(4,5,552,NULL,1),(4,5,1706,NULL,1),(4,5,25213,NULL,1),(4,5,25392,NULL,1),(4,5,39374,NULL,1),(4,5,32999,NULL,1),(4,5,32996,NULL,1),(4,5,32546,NULL,1),(4,5,34433,NULL,1),(4,5,33076,NULL,1),(4,5,32375,NULL,1),(5,5,25389,NULL,1),(5,5,25364,NULL,1),(5,5,25368,NULL,1),(5,5,25218,NULL,1),(5,5,25429,NULL,1),(5,5,25222,NULL,1),(5,5,25375,NULL,1),(5,5,25435,NULL,1),(5,5,25431,NULL,1),(5,5,528,NULL,1),(5,5,10890,NULL,1),(5,5,988,NULL,1),(5,5,6346,NULL,1),(5,5,25235,NULL,1),(5,5,25384,NULL,1),(5,5,25596,NULL,1),(5,5,10955,NULL,1),(5,5,10909,NULL,1),(5,5,25380,NULL,1),(5,5,10912,NULL,1),(5,5,25308,NULL,1),(5,5,25433,NULL,1),(5,5,552,NULL,1),(5,5,1706,NULL,1),(5,5,25213,NULL,1),(5,5,25392,NULL,1),(5,5,39374,NULL,1),(5,5,32999,NULL,1),(5,5,32996,NULL,1),(5,5,32546,NULL,1),(5,5,34433,NULL,1),(5,5,33076,NULL,1),(5,5,32375,NULL,1),(8,5,25389,NULL,1),(8,5,25364,NULL,1),(8,5,25368,NULL,1),(8,5,25218,NULL,1),(8,5,25429,NULL,1),(8,5,25222,NULL,1),(8,5,25375,NULL,1),(8,5,25435,NULL,1),(8,5,25431,NULL,1),(8,5,528,NULL,1),(8,5,10890,NULL,1),(8,5,988,NULL,1),(8,5,6346,NULL,1),(8,5,25235,NULL,1),(8,5,25384,NULL,1),(8,5,25596,NULL,1),(8,5,10955,NULL,1),(8,5,10909,NULL,1),(8,5,25380,NULL,1),(8,5,10912,NULL,1),(8,5,25308,NULL,1),(8,5,25433,NULL,1),(8,5,552,NULL,1),(8,5,1706,NULL,1),(8,5,25213,NULL,1),(8,5,25392,NULL,1),(8,5,39374,NULL,1),(8,5,32999,NULL,1),(8,5,32996,NULL,1),(8,5,32546,NULL,1),(8,5,34433,NULL,1),(8,5,33076,NULL,1),(8,5,32375,NULL,1),(10,5,25389,NULL,1),(10,5,25364,NULL,1),(10,5,25368,NULL,1),(10,5,25218,NULL,1),(10,5,25429,NULL,1),(10,5,25222,NULL,1),(10,5,25375,NULL,1),(10,5,25435,NULL,1),(10,5,25431,NULL,1),(10,5,528,NULL,1),(10,5,10890,NULL,1),(10,5,988,NULL,1),(10,5,6346,NULL,1),(10,5,25235,NULL,1),(10,5,25384,NULL,1),(10,5,25596,NULL,1),(10,5,10955,NULL,1),(10,5,10909,NULL,1),(10,5,25380,NULL,1),(10,5,10912,NULL,1),(10,5,25308,NULL,1),(10,5,25433,NULL,1),(10,5,552,NULL,1),(10,5,1706,NULL,1),(10,5,25213,NULL,1),(10,5,25392,NULL,1),(10,5,39374,NULL,1),(10,5,32999,NULL,1),(10,5,32996,NULL,1),(10,5,32546,NULL,1),(10,5,34433,NULL,1),(10,5,33076,NULL,1),(10,5,32375,NULL,1),(11,5,25389,NULL,1),(11,5,25364,NULL,1),(11,5,25368,NULL,1),(11,5,25218,NULL,1),(11,5,25429,NULL,1),(11,5,25222,NULL,1),(11,5,25375,NULL,1),(11,5,25435,NULL,1),(11,5,25431,NULL,1),(11,5,528,NULL,1),(11,5,10890,NULL,1),(11,5,988,NULL,1),(11,5,6346,NULL,1),(11,5,25235,NULL,1),(11,5,25384,NULL,1),(11,5,25596,NULL,1),(11,5,10955,NULL,1),(11,5,10909,NULL,1),(11,5,25380,NULL,1),(11,5,10912,NULL,1),(11,5,25308,NULL,1),(11,5,25433,NULL,1),(11,5,552,NULL,1),(11,5,1706,NULL,1),(11,5,25213,NULL,1),(11,5,25392,NULL,1),(11,5,39374,NULL,1),(11,5,32999,NULL,1),(11,5,32996,NULL,1),(11,5,32546,NULL,1),(11,5,34433,NULL,1),(11,5,33076,NULL,1),(11,5,32375,NULL,1),(2,7,25396,NULL,1),(2,7,25449,NULL,1),(2,7,25485,NULL,1),(2,7,25454,NULL,1),(2,7,25509,NULL,1),(2,7,2484,NULL,1),(2,7,25472,NULL,1),(2,7,25525,NULL,1),(2,7,25457,NULL,1),(2,7,25489,NULL,1),(2,7,25533,NULL,1),(2,7,25528,NULL,1),(2,7,20777,NULL,1),(2,7,25547,NULL,1),(2,7,8012,NULL,1),(2,7,526,NULL,1),(2,7,8143,NULL,1),(2,7,25464,NULL,1),(2,7,25500,NULL,1),(2,7,2645,NULL,1),(2,7,25567,NULL,1),(2,7,25420,NULL,1),(2,7,2870,NULL,1),(2,7,8166,NULL,1),(2,7,131,NULL,1),(2,7,25560,NULL,1),(2,7,6196,NULL,1),(2,7,25552,NULL,1),(2,7,25570,NULL,1),(2,7,25563,NULL,1),(2,7,25557,NULL,1),(2,7,546,NULL,1),(2,7,556,NULL,1),(2,7,8177,NULL,1),(2,7,25574,NULL,1),(2,7,36936,NULL,1),(2,7,25505,NULL,1),(2,7,421,NULL,1),(2,7,25587,NULL,1),(2,7,6495,NULL,1),(2,7,25577,NULL,1),(2,7,8170,NULL,1),(2,7,25423,NULL,1),(2,7,25359,NULL,1),(2,7,25908,NULL,1),(2,7,33736,NULL,1),(2,7,3738,NULL,1),(2,7,2062,NULL,1),(2,7,2894,NULL,1),(2,7,2825,NULL,1),(6,7,25396,NULL,1),(6,7,25449,NULL,1),(6,7,25485,NULL,1),(6,7,25454,NULL,1),(6,7,25509,NULL,1),(6,7,2484,NULL,1),(6,7,25472,NULL,1),(6,7,25525,NULL,1),(6,7,25457,NULL,1),(6,7,25489,NULL,1),(6,7,25533,NULL,1),(6,7,25528,NULL,1),(6,7,20777,NULL,1),(6,7,25547,NULL,1),(6,7,8012,NULL,1),(6,7,526,NULL,1),(6,7,8143,NULL,1),(6,7,25464,NULL,1),(6,7,25500,NULL,1),(6,7,2645,NULL,1),(6,7,25567,NULL,1),(6,7,25420,NULL,1),(6,7,2870,NULL,1),(6,7,8166,NULL,1),(6,7,131,NULL,1),(6,7,25560,NULL,1),(6,7,6196,NULL,1),(6,7,25552,NULL,1),(6,7,25570,NULL,1),(6,7,25563,NULL,1),(6,7,25557,NULL,1),(6,7,546,NULL,1),(6,7,556,NULL,1),(6,7,8177,NULL,1),(6,7,25574,NULL,1),(6,7,36936,NULL,1),(6,7,25505,NULL,1),(6,7,421,NULL,1),(6,7,25587,NULL,1),(6,7,6495,NULL,1),(6,7,25577,NULL,1),(6,7,8170,NULL,1),(6,7,25423,NULL,1),(6,7,25359,NULL,1),(6,7,25908,NULL,1),(6,7,33736,NULL,1),(6,7,3738,NULL,1),(6,7,2062,NULL,1),(6,7,2894,NULL,1),(6,7,2825,NULL,1),(8,7,25396,NULL,1),(8,7,25449,NULL,1),(8,7,25485,NULL,1),(8,7,25454,NULL,1),(8,7,25509,NULL,1),(8,7,2484,NULL,1),(8,7,25472,NULL,1),(8,7,25525,NULL,1),(8,7,25457,NULL,1),(8,7,25489,NULL,1),(8,7,25533,NULL,1),(8,7,25528,NULL,1),(8,7,20777,NULL,1),(8,7,25547,NULL,1),(8,7,8012,NULL,1),(8,7,526,NULL,1),(8,7,8143,NULL,1),(8,7,25464,NULL,1),(8,7,25500,NULL,1),(8,7,2645,NULL,1),(8,7,25567,NULL,1),(8,7,25420,NULL,1),(8,7,2870,NULL,1),(8,7,8166,NULL,1),(8,7,131,NULL,1),(8,7,25560,NULL,1),(8,7,6196,NULL,1),(8,7,25552,NULL,1),(8,7,25570,NULL,1),(8,7,25563,NULL,1),(8,7,25557,NULL,1),(8,7,546,NULL,1),(8,7,556,NULL,1),(8,7,8177,NULL,1),(8,7,25574,NULL,1),(8,7,36936,NULL,1),(8,7,25505,NULL,1),(8,7,421,NULL,1),(8,7,25587,NULL,1),(8,7,6495,NULL,1),(8,7,25577,NULL,1),(8,7,8170,NULL,1),(8,7,25423,NULL,1),(8,7,25359,NULL,1),(8,7,25908,NULL,1),(8,7,33736,NULL,1),(8,7,3738,NULL,1),(8,7,2062,NULL,1),(8,7,2894,NULL,1),(8,7,2825,NULL,1),(11,7,25396,NULL,1),(11,7,25449,NULL,1),(11,7,25485,NULL,1),(11,7,25454,NULL,1),(11,7,25509,NULL,1),(11,7,2484,NULL,1),(11,7,25472,NULL,1),(11,7,25525,NULL,1),(11,7,25457,NULL,1),(11,7,25489,NULL,1),(11,7,25533,NULL,1),(11,7,25528,NULL,1),(11,7,20777,NULL,1),(11,7,25547,NULL,1),(11,7,8012,NULL,1),(11,7,526,NULL,1),(11,7,8143,NULL,1),(11,7,25464,NULL,1),(11,7,25500,NULL,1),(11,7,2645,NULL,1),(11,7,25567,NULL,1),(11,7,25420,NULL,1),(11,7,2870,NULL,1),(11,7,8166,NULL,1),(11,7,131,NULL,1),(11,7,25560,NULL,1),(11,7,6196,NULL,1),(11,7,25552,NULL,1),(11,7,25570,NULL,1),(11,7,25563,NULL,1),(11,7,25557,NULL,1),(11,7,546,NULL,1),(11,7,556,NULL,1),(11,7,8177,NULL,1),(11,7,25574,NULL,1),(11,7,36936,NULL,1),(11,7,25505,NULL,1),(11,7,421,NULL,1),(11,7,25587,NULL,1),(11,7,6495,NULL,1),(11,7,25577,NULL,1),(11,7,8170,NULL,1),(11,7,25423,NULL,1),(11,7,25359,NULL,1),(11,7,25908,NULL,1),(11,7,33736,NULL,1),(11,7,3738,NULL,1),(11,7,2062,NULL,1),(11,7,2894,NULL,1),(11,7,32182,NULL,1),(4,3,8737,'Mail',1),(6,6,674,'Dual Wield',1),(3,3,8737,'Mail',1),(2,3,8737,'Mail',1),(5,6,674,'Dual Wield',1),(1,3,8737,'Mail',1),(11,2,8737,'Mail',1),(4,6,674,'Dual Wield',1),(10,2,8737,'Mail',1),(6,2,8737,'Mail',1),(10,1,750,'Plate Mail',1),(1,2,3127,NULL,1),(3,2,3127,NULL,1),(9,1,750,'Plate Mail',1),(10,2,3127,NULL,1),(11,2,3127,NULL,1),(2,7,25442,NULL,1),(3,2,8737,'Mail',1),(2,7,20608,NULL,1),(6,7,25442,NULL,1),(1,2,8737,'Mail',1),(6,7,20608,NULL,1),(8,7,25442,NULL,1),(22,1,8737,'Mail',1),(8,7,20608,NULL,1),(11,7,25442,NULL,1),(11,1,8737,'Mail',1),(11,7,20608,NULL,1),(1,8,27087,NULL,1),(5,8,27087,NULL,1),(7,8,27087,NULL,1),(8,8,27087,NULL,1),(10,8,27087,NULL,1),(11,8,27087,NULL,1),(1,4,8643,NULL,1),(1,4,3127,NULL,1),(3,6,674,'Dual Wield',1),(2,4,8643,NULL,1),(2,4,3127,NULL,1),(3,4,8643,NULL,1),(3,4,3127,NULL,1),(2,6,674,'Dual Wield',1),(4,4,8643,NULL,1),(4,4,3127,NULL,1),(5,4,8643,NULL,1),(5,4,3127,NULL,1),(1,6,674,'Dual Wield',1),(7,4,8643,NULL,1),(7,4,3127,NULL,1),(8,4,8643,NULL,1),(8,4,3127,NULL,1),(22,4,674,'Dual Wield',1),(10,4,8643,NULL,1),(10,4,3127,NULL,1),(1,1,25212,NULL,1),(10,4,674,'Dual Wield',1),(11,1,750,'Plate Mail',1),(1,1,12678,NULL,1),(2,1,25212,NULL,1),(2,1,12678,NULL,1),(3,1,25212,NULL,1),(9,4,674,'Dual Wield',1),(6,2,750,'Plate Mail',1),(3,1,12678,NULL,1),(4,1,25212,NULL,1),(4,1,12678,NULL,1),(5,1,25212,NULL,1),(8,4,674,'Dual Wield',1),(8,1,750,'Plate Mail',1),(5,1,12678,NULL,1),(6,1,25212,NULL,1),(6,1,12678,NULL,1),(7,1,25212,NULL,1),(7,4,674,'Dual Wield',1),(7,1,750,'Plate Mail',1),(7,1,12678,NULL,1),(8,1,25212,NULL,1),(8,1,12678,NULL,1),(11,1,25212,NULL,1),(5,4,674,'Dual Wield',1),(6,1,750,'Plate Mail',1),(11,1,12678,NULL,1),(2,3,5149,NULL,1),(3,3,5149,NULL,1),(4,3,5149,NULL,1),(6,3,5149,NULL,1),(8,3,5149,NULL,1),(10,3,5149,NULL,1),(11,3,5149,NULL,1),(1,2,23214,NULL,1),(3,2,23214,NULL,1),(10,2,34767,NULL,1),(11,2,23214,NULL,1),(1,9,23161,NULL,1),(2,9,23161,NULL,1),(5,9,23161,NULL,1),(7,9,23161,NULL,1),(10,9,23161,NULL,1),(11,9,23161,NULL,1),(1,9,688,NULL,1),(2,9,688,NULL,1),(5,9,688,NULL,1),(7,9,688,NULL,1),(10,9,688,NULL,1),(11,9,688,NULL,1),(1,9,697,NULL,1),(2,9,697,NULL,1),(5,9,697,NULL,1),(7,9,697,NULL,1),(10,9,697,NULL,1),(11,9,697,NULL,1),(1,9,712,NULL,1),(2,9,712,NULL,1),(5,9,712,NULL,1),(7,9,712,NULL,1),(10,9,712,NULL,1),(11,9,712,NULL,1),(1,9,691,NULL,1),(2,9,691,NULL,1),(5,9,691,NULL,1),(7,9,691,NULL,1),(10,9,691,NULL,1),(11,9,691,NULL,1),(6,11,20719,NULL,1),(4,11,20719,NULL,1),(1,9,126,NULL,1),(2,9,126,NULL,1),(5,9,126,NULL,1),(7,9,126,NULL,1),(10,9,126,NULL,1),(1,2,31801,NULL,1),(3,2,31801,NULL,1),(11,2,31801,NULL,1),(1,4,3776,NULL,1),(1,4,9186,NULL,1),(1,4,21927,NULL,1),(1,4,22054,NULL,1),(1,4,22055,NULL,1),(1,4,2836,NULL,1),(1,4,1860,NULL,1),(2,4,3776,NULL,1),(2,4,9186,NULL,1),(2,4,21927,NULL,1),(2,4,22054,NULL,1),(2,4,22055,NULL,1),(2,4,2836,NULL,1),(2,4,1860,NULL,1),(3,4,3776,NULL,1),(3,4,9186,NULL,1),(3,4,21927,NULL,1),(3,4,22054,NULL,1),(3,4,22055,NULL,1),(3,4,2836,NULL,1),(3,4,1860,NULL,1),(4,4,3776,NULL,1),(4,4,9186,NULL,1),(4,4,21927,NULL,1),(4,4,22054,NULL,1),(4,4,22055,NULL,1),(4,4,2836,NULL,1),(4,4,1860,NULL,1),(5,4,3776,NULL,1),(5,4,9186,NULL,1),(5,4,21927,NULL,1),(5,4,22054,NULL,1),(5,4,22055,NULL,1),(5,4,2836,NULL,1),(5,4,1860,NULL,1),(7,4,3776,NULL,1),(7,4,9186,NULL,1),(7,4,21927,NULL,1),(7,4,22054,NULL,1),(7,4,22055,NULL,1),(7,4,2836,NULL,1),(7,4,1860,NULL,1),(8,4,3776,NULL,1),(8,4,9186,NULL,1),(8,4,21927,NULL,1),(8,4,22054,NULL,1),(8,4,22055,NULL,1),(8,4,2836,NULL,1),(8,4,1860,NULL,1),(10,4,3776,NULL,1),(10,4,9186,NULL,1),(10,4,21927,NULL,1),(10,4,22054,NULL,1),(10,4,22055,NULL,1),(10,4,2836,NULL,1),(10,4,1860,NULL,1),(1,5,25441,NULL,1),(1,5,25312,NULL,1),(3,5,25312,NULL,1),(4,5,25312,NULL,1),(5,5,25312,NULL,1),(8,5,25312,NULL,1),(11,5,25312,NULL,1),(10,5,25312,NULL,1),(1,5,25437,NULL,1),(3,5,25437,NULL,1),(2,3,3127,NULL,1),(3,3,3127,NULL,1),(4,3,3127,NULL,1),(6,3,3127,NULL,1),(8,3,3127,NULL,1),(10,3,3127,NULL,1),(11,3,3127,NULL,1),(5,1,750,'Plate Mail',1),(4,1,750,'Plate Mail',1),(3,1,750,'Plate Mail',1),(2,1,750,'Plate Mail',1),(1,1,750,'Plate Mail',1),(11,2,750,'Plate Mail',1),(10,2,750,'Plate Mail',1),(3,2,750,'Plate Mail',1),(1,2,750,'Plate Mail',1),(4,4,674,'Dual Wield',1),(3,4,674,'Dual Wield',1),(2,4,674,'Dual Wield',1),(1,4,674,'Dual Wield',1),(22,3,674,'Dual Wield',1),(11,3,674,'Dual Wield',1),(10,3,674,'Dual Wield',1),(9,3,674,'Dual Wield',1),(8,3,674,'Dual Wield',1),(6,3,674,'Dual Wield',1),(5,3,674,'Dual Wield',1),(4,3,674,'Dual Wield',1),(3,3,674,'Dual Wield',1),(2,3,674,'Dual Wield',1),(1,3,674,'Dual Wield',1),(22,1,674,'Dual Wield',1),(11,1,674,'Dual Wield',1),(10,1,674,'Dual Wield',1),(9,1,674,'Dual Wield',1),(8,1,674,'Dual Wield',1),(7,1,674,'Dual Wield',1),(6,1,674,'Dual Wield',1),(5,1,674,'Dual Wield',1),(4,1,674,'Dual Wield',1),(3,1,674,'Dual Wield',1),(2,1,674,'Dual Wield',1),(1,1,674,'Dual Wield',1),(10,1,8737,'Mail',1),(9,1,8737,'Mail',1),(8,1,8737,'Mail',1),(7,1,8737,'Mail',1),(6,1,8737,'Mail',1),(5,1,8737,'Mail',1),(4,1,8737,'Mail',1),(3,1,8737,'Mail',1),(2,1,8737,'Mail',1),(1,1,8737,'Mail',1),(7,6,674,'Dual Wield',1),(8,6,674,'Dual Wield',1),(9,6,674,'Dual Wield',1),(10,6,674,'Dual Wield',1),(11,6,674,'Dual Wield',1),(22,6,674,'Dual Wield',1),(2,7,674,'Dual Wield',1),(3,7,674,'Dual Wield',1),(6,7,674,'Dual Wield',1),(8,7,674,'Dual Wield',1),(9,7,674,'Dual Wield',1),(11,7,674,'Dual Wield',1);
/*!40000 ALTER TABLE `playercreateinfo_spell_custom` ENABLE KEYS */;
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

