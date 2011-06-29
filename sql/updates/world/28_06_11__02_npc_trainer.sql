ALTER TABLE npc_trainer ADD `KillCredit` int(11) DEFAULT '0' AFTER `reqlevel`;
UPDATE npc_trainer SET `KillCredit`='44420' WHERE spell = 20271;