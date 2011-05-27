-- 322_creature
-- Inspector Tarem
-- Osborn Obnoticus
DELETE FROM creature WHERE id = 23567;

INSERT INTO creature (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
values ('23567','1','1','1','0','0','-3699.8','-2528.23','68.1216','6.25175','300','0','0','1524','0','0','0','0','0','0'),
('43884','0','1','1','0','0','-11307.7','-191.99','75.4444','4.13786','300','0','0','42','0','0','0','0','0','0');