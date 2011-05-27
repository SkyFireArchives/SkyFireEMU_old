DELETE FROM player_levelstats WHERE `level` > 80;
DELETE FROM player_classlevelstats WHERE `level` > 80;
DELETE FROM pet_levelstats WHERE `level` > 80;

DELIMITER $$

DROP PROCEDURE IF EXISTS `sp_CharExtraLevelStats` $$
CREATE PROCEDURE `sp_CharExtraLevelStats` ()
BEGIN

  -- Declare Constants/Caps/Limits
  DECLARE intMaxStats        INT   DEFAULT 2556541;    -- Increase if the you boost the stat increase rate.
  DECLARE sngStatsInc        FLOAT DEFAULT 0.00000000001;    -- Increment of 1% per level, past this and it shoots up fast
  DECLARE intStartLvl        INT   DEFAULT 80;      -- Starting level for creating stats, 70 is the default
  DECLARE intFinishLvl       INT   DEFAULT 85;     -- Level cap, why is the 'highest', change as needed

  -- Declare normal variables
  DECLARE intRecordDone      INT   DEFAULT 0;
  DECLARE intRace            INT   DEFAULT 0;
  DECLARE intClass           INT   DEFAULT 0;
  DECLARE intLevel           INT   DEFAULT 0;
  DECLARE intCurrSTR         INT   DEFAULT 0;
  DECLARE intCurrAGI         INT   DEFAULT 0;
  DECLARE intCurrSTA         INT   DEFAULT 0;
  DECLARE intCurrINT         INT   DEFAULT 0;
  DECLARE intCurrSPI         INT   DEFAULT 0;


  -- Declare cursors and handlers
  DECLARE curPlayerStat  CURSOR FOR SELECT `race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM player_levelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;

  -- Open our cursor that hold the collection of records
  OPEN curPlayerStat;
  -- And then loop one by one through the records
  REPEAT
    -- Fetch our record
    FETCH curPlayerStat INTO intRace, intClass, intLevel, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI;
    -- Check whether this is our starting record
    IF intLevel = intStartLvl THEN
       REPEAT
         -- We're doing it for the next level up
         SET intLevel = intLevel + 1;
         -- Delete the entry for the next level (this is so we don't have to check whether we need UPDATE or INSERT statement
         DELETE FROM player_levelstats WHERE `race` = intRace AND `class` = intClass AND `level` = intLevel;

         -- Calculate the next STR
         IF (ROUND(intCurrSTR * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSTR = ROUND(intCurrSTR * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTR = intMaxStats;
         END IF;
         -- Calculate the next AGI
         IF (ROUND(intCurrAGI * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrAGI = ROUND(intCurrAGI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrAGI = intMaxStats;
         END IF;
         -- Calculate the next STA
         IF (ROUND(intCurrSTA * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSTA = ROUND(intCurrSTA * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTA = intMaxStats;
         END IF;
         -- Calculate the next INT
         IF (ROUND(intCurrINT * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrINT = ROUND(intCurrINT * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrINT = intMaxStats;
         END IF;
         -- Calculate the next SPI
         IF (ROUND(intCurrSPI * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSPI = ROUND(intCurrSPI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSPI = intMaxStats;
         END IF;

         -- Insert it back to the table
         INSERT INTO player_levelstats
         (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
         VALUES
         (intRace, intClass, intLevel, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;

  -- Close the cursor
  CLOSE curPlayerStat;

END $$

DELIMITER ;

call sp_CharExtraLevelStats();



DELIMITER $$

DROP PROCEDURE IF EXISTS `sp_CharExtraLevelHPMP` $$
CREATE PROCEDURE `sp_CharExtraLevelHPMP` ()
BEGIN

  -- Declare Constants/Caps/Limits
  DECLARE intMaxHP           INT   DEFAULT 65535000; -- Increase if the you boost the HP increase rate.
  DECLARE intMaxMana         INT   DEFAULT 65535000;   -- Increase if the you boost the Mana increase rate.
  DECLARE sngHPInc           FLOAT DEFAULT 0.001;    -- Increment of 1% per level, past this and it shoots up fast
  DECLARE sngManaInc         FLOAT DEFAULT 0.001;    -- Increment of 1% per level, past this and it shoots up fast
  DECLARE intStartLvl        INT   DEFAULT 80;      -- Starting level for creating stats, 70 is the default
  DECLARE intFinishLvl       INT   DEFAULT 85;     -- Level cap, 255 is the 'highest', change as needed

  -- Declare normal variables
  DECLARE intRecordDone      INT   DEFAULT 0;
  DECLARE intClass           INT   DEFAULT 0;
  DECLARE intLevel           INT   DEFAULT 0;
  DECLARE intCurrHP          INT   DEFAULT 0;
  DECLARE intCurrMana        INT   DEFAULT 0;


  -- Declare cursors and handlers
  DECLARE curPlayerStat  CURSOR FOR SELECT `class`, `level`, `basehp`, `basemana` FROM player_classlevelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;

  -- Open our cursor that hold the collection of records
  OPEN curPlayerStat;
  -- And then loop one by one through the records
  REPEAT
    -- Fetch our record
    FETCH curPlayerStat INTO intClass, intLevel, intCurrHP, intCurrMana;
    -- Check whether this is our starting record
    IF intLevel = intStartLvl THEN
       REPEAT
         -- We're doing it for the next level up
         SET intLevel = intLevel + 1;
         -- Delete the entry for the next level (this is so we don't have to check whether we need UPDATE or INSERT statement
         DELETE FROM player_classlevelstats WHERE `class` = intClass AND `level` = intLevel;

         -- Calculate the next H{
         IF (ROUND(intCurrHP * (1 + sngHPInc) + 200)) <= intMaxHP THEN
           SET intCurrHP = ROUND(intCurrHP * (1 + sngHPInc) + 200);
         ELSE
           SET intCurrHP = intMaxHP;  -- Making sure we don't exceed the database limit
         END IF;
         -- Calculate the next Mana
         IF (ROUND(intCurrMana * (1 + sngManaInc) + 200)) <= intMaxMana THEN
           SET intCurrMana = ROUND(intCurrMana * (1 + sngManaInc) + 200);
         ELSE
           SET intCurrMana = intMaxMana;
         END IF;

         -- Insert it back to the table
         INSERT INTO player_classlevelstats
         (`class`, `level`, `basehp`, `basemana`)
         VALUES
         (intClass, intLevel, intCurrHP, intCurrMana);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;

  -- Close the cursor
  CLOSE curPlayerStat;

END $$

DELIMITER ;

call sp_CharExtraLevelHPMP();

DELIMITER $$

DROP PROCEDURE IF EXISTS `sp_PetExtraLevelStats` $$
CREATE PROCEDURE `sp_PetExtraLevelStats` ()
BEGIN

  -- Declare Constants/Caps/Limits
  DECLARE intMaxHP       INT   DEFAULT 6553500;
  DECLARE intMaxMana     INT   DEFAULT 6553500;
  DECLARE intMaxArmor    INT   DEFAULT 6553500;
  DECLARE intMaxStats    INT   DEFAULT 100000;
  DECLARE sngHPInc       FLOAT DEFAULT 0.05;    -- Increment of 1% per level, adjust to whatever you like
  DECLARE sngManaInc     FLOAT DEFAULT 0.05;    -- Increment of 1% per level, adjust to whatever you like
  DECLARE sngArmorInc    FLOAT DEFAULT 0.05;    -- Increment of 1% per level, adjust to whatever you like
  DECLARE sngStatsInc    FLOAT DEFAULT 0.015;    -- Increment of 1% per level, adjust to whatever you like
  DECLARE intStartLvl    INT   DEFAULT 80;      -- Starting level, 70 is the default
  DECLARE intFinishLvl   INT   DEFAULT 85;      -- Finishing level, 255 is the default

  -- Declare normal variables
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


  -- Declare cursors and handlers
  DECLARE curPetStat  CURSOR FOR SELECT `creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi` FROM pet_levelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;

  -- Open our cursor that hold the collection of records
  OPEN curPetStat;
  -- And then loop one by one through the records
  REPEAT
    -- Fetch our record
    FETCH curPetStat INTO intCreature, intLevel, intCurrHP, intCurrMana, intCurrArmor, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI;
    -- Check whether this is our starting record
    IF intLevel = intStartLvl THEN
       REPEAT
         -- We're doing it for the next level up
         SET intLevel = intLevel + 1;
         -- Delete the entry for the next level (this is so we don't have to check whether we need UPDATE or INSERT statement
         DELETE FROM pet_levelstats WHERE `creature_entry` = intCreature AND `level` = intLevel;

         -- Calculate the next H{
         IF (ROUND(intCurrHP * (1 + sngHPInc) + 1)) <= intMaxHP THEN
           SET intCurrHP = ROUND(intCurrHP * (1 + sngHPInc) + 100);
         ELSE
           SET intCurrHP = intMaxHP;  -- Making sure we don't exceed the database limit
         END IF;
         -- Calculate the next Mana
         IF (ROUND(intCurrMana * (1 + sngManaInc) + 1)) <= intMaxMana THEN
           SET intCurrMana = ROUND(intCurrMana * (1 + sngManaInc) + 100);
         ELSE
           SET intCurrMana = intMaxMana;
         END IF;
         -- Calculate the next armor
         IF (ROUND(intCurrArmor * (1 + sngArmorInc) + 1)) <= intMaxArmor THEN
           SET intCurrArmor = ROUND(intCurrArmor * (1 + sngArmorInc) + 800);
         ELSE
           SET intCurrArmor = intMaxArmor;
         END IF;
         -- Calculate the next STR
         IF (ROUND(intCurrSTR * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSTR = ROUND(intCurrSTR * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTR = intMaxStats;
         END IF;
         -- Calculate the next AGI
         IF (ROUND(intCurrAGI * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrAGI = ROUND(intCurrAGI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrAGI = intMaxStats;
         END IF;
         -- Calculate the next STA
         IF (ROUND(intCurrSTA * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSTA = ROUND(intCurrSTA * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTA = intMaxStats;
         END IF;
         -- Calculate the next INT
         IF (ROUND(intCurrINT * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrINT = ROUND(intCurrINT * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrINT = intMaxStats;
         END IF;
         -- Calculate the next SPI
         IF (ROUND(intCurrSPI * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSPI = ROUND(intCurrSPI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSPI = intMaxStats;
         END IF;

         -- Insert it back to the table
         INSERT INTO pet_levelstats
         (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`)
         VALUES
         (intCreature, intLevel, intCurrHP, intCurrMana, intCurrArmor, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;

  -- Close the cursor
  CLOSE curPetStat;

END $$

DELIMITER ;
-- And call it:
call sp_PetExtraLevelStats();
