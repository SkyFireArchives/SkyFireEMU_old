-- Spawn Garl Stormclaw <Cenarion Circle>

UPDATE creature_template SET minlevel = 52, maxlevel = 52 WHERE entry = 38274;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
values
('38274','1','1','1','0','0','-7841.94','-2082.76','-272.627','1.94319','300','0','0','42','0','0','0','0','0','0');