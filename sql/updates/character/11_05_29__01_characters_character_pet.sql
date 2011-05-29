DROP PROCEDURE IF EXISTS fix_multiple_pets;

DELIMITER $$

CREATE PROCEDURE fix_multiple_pets()

BEGIN

	DECLARE v1 INT DEFAULT 5;
	DECLARE v2 INT DEFAULT 24;
	DECLARE v3 INT DEFAULT 0;
	DECLARE v4 INT DEFAULT 0;
	DECLARE v5 INT DEFAULT 0;
	DECLARE v6 INT DEFAULT 0;

	SELECT count(*) FROM `character_pet` WHERE `slot`= 100 AND `CreatedBySpell` = 13481 INTO v3;
	v3loop: WHILE v3 > 1 DO
		SET v2 = 5;
		SELECT owner from `character_pet` as t1 where t1.CreatedBySpell = 13481 AND t1.slot = 100 ORDER BY t1.owner ASC LIMIT 1 INTO v4;
	
		v2loop: WHILE v2 < 25 DO
		
			SELECT t1.id, t1.slot, count(*) from `character_pet` as t1 where t1.CreatedBySpell = 13481 AND t1.slot = 100 AND t1.owner = v4 ORDER BY t1.owner ASC, t1.slot DESC LIMIT 1 INTO v1, v5, v6;
			UPDATE `character_pet` SET `slot` = v2 WHERE `owner` = v4 AND `id` = v1;
			
			IF v1 > 0 THEN SET v2 = V2 + 1;
			END IF;
			
			IF v5 = 0 THEN SET v2 = 25; 
			END IF;
	
			IF v6 = 0 THEN SET v2 = 25;
			END IF;
  			SET v3 = v3 - 1;
		END WHILE v2loop;

	END WHILE V3loop;


END $$

DELIMITER ;

CALL fix_multiple_pets();