DELETE FROM creature_template_addon WHERE entry=39317;
UPDATE creature_addon SET auras='58506 0' WHERE guid IN (SELECT guid FROM creature WHERE id=39317);
