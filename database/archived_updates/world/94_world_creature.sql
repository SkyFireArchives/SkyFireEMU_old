-- Spawn e Template di Nura Pathfinder

DELETE FROM creature WHERE id = 37135;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
values
('37135','1','1','1','0','0','-449.416','-969.759','94.7238','1.0291','300','0','0','50','0','0','0','0','0','0');