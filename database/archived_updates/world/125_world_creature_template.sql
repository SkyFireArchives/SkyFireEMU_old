-- [NPC] Damon Baelor <Gryphon Master>
UPDATE `creature_template` SET `npcflag`=8192 WHERE `entry`=41323 LIMIT 1;      

-- Displaced Threshadon (he was friendly)
UPDATE `creature_template` SET `faction_A`=7, `faction_H`=7 WHERE `entry`=41137 LIMIT 1;      

-- Flood Elemental (he was friendly)
UPDATE `creature_template` SET `faction_A`=168, `faction_H`=168 WHERE `entry`=41132 LIMIT 1;      

-- [NPC] Halana <Hippogryph Master>
UPDATE `creature_template` SET `npcflag`=8192 WHERE `entry`=41322 LIMIT 1;                

-- [NPC] Broyk
UPDATE `creature_template` SET `faction_A`=168, `faction_H`=79, `npcflag`=2 WHERE `entry`=34510 LIMIT 1;      

-- [NPC] Revi Ramrod <Riding Trainer>
UPDATE `creature_template` SET `trainer_type`=1 WHERE `entry`=48513 LIMIT 1;     

-- [NPC] Kildar <Riding Trainer>
UPDATE `creature_template` SET `npcflag`=80 WHERE `entry`=4752 LIMIT 1;     

-- [NPC] Belloc Brightblade <Archaeology Trainer>
UPDATE `creature_template` SET `faction_A`=911, `faction_H`=911 WHERE `entry`=47571 LIMIT 1;

-- All By: TheHacker66