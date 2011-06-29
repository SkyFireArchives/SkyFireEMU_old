-- The Vortex Pinnacle

-- Grand Vizier Ertan
DELETE FROM `creature_text` WHERE `entry` = 43878;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('43878', '0', '0', 'Filthy beasts! Your presence in Skywall will not be tolerated!', '1', '0', '0', '0', '0', '20876', 'VO_VP_Ertan_Engage'), 
('43878', '1', '0', 'Ravaged!', '1', '0', '0', '0', '0', '20877', 'VO_VP_Ertan_Event02'),
('43878', '2', '0', 'AHHHHHHHHH!', '1', '0', '0', '0', '0', '20878', 'VO_VP_Ertan_Death');

-- Asaad
DELETE FROM `creature_text` WHERE `entry` = 43875;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('43875', '0', '0', 'YOU tread upon the sacrosanct! Mortals have no please amidst the clouds.', '1', '0', '0', '0', '0', '20867', 'VO_VP_AsimAlAkir_Engage'), 
('43875', '1', '0', 'AlAkir, your servant calls for aid!', '1', '0', '0', '0', '0', '20869', 'VO_VP_AsimAlAkir_Event02'),
('43875', '2', '0', 'BACK to the earth with you!', '1', '0', '0', '0', '0', '20868', 'VO_VP_AsimAlAkir_Slay'),
('43875', '3', '0', 'The winds take me!', '1', '0', '0', '0', '0', '20870', 'VO_VP_AsimAlAkir_Death');

-- Grim Batol

-- General Umbriss
DELETE FROM `creature_text` WHERE `entry` = 39625;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39625', '0', '0', 'A million more await my orders. What chance you do have?', '1', '0', '0', '0', '0', '18530', 'VO_GB_Umbriss_Engage'), 
('39625', '1', '0', 'All in my path shall be destroyed!', '1', '0', '0', '0', '0', '18534', 'VO_GB_Umbriss_Event01'),
('39625', '2', '0', 'Attack you cowardly vermin!', '1', '0', '0', '0', '0', '18535', 'VO_GB_Umbriss_Malignant Troggs'),
('39625', '3', '0', 'Reinforce the front! We are being invaded!', '1', '0', '0', '0', '0', '18536', 'VO_GB_Umbriss_Bomb1'),
('39625', '3', '1', 'Cover the rear! Alexstrazas brood decimate our rank!', '1', '0', '0', '0', '0', '18537', 'VO_GB_Umbriss_Bomb2'),
('39625', '4', '0', 'Messy...', '1', '0', '0', '0', '0', '18532', 'VO_GB_Umbriss_Slay01'),
('39625', '4', '1', 'Vermin, your dinner awaits!', '1', '0', '0', '0', '0', '18531', 'VO_GB_Umbriss_Slay02'), 
('39625', '5', '0', 'Death, is my only option...', '1', '0', '0', '0', '0', '18533', 'VO_GB_Umbriss_Death');

-- Forgemaster Throngus
DELETE FROM `creature_text` WHERE `entry` = 40177;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('40177', '0', '0', 'NO! Throngus get whipped again if he no finish!', '1', '0', '0', '0', '0', '18943', 'VO_GB_Throngus_Engage'), 
('40177', '1', '0', 'You not get through defenses!', '1', '0', '0', '0', '0', '18947', 'VO_GB_Throngus_Shield'),
('40177', '2', '0', 'Throngus SLICE you up!', '1', '0', '0', '0', '0', '18948', 'VO_GB_Throngus_Sword'),
('40177', '3', '0', 'Oh, this is gonna HURT!', '1', '0', '0', '0', '0', '18949', 'VO_GB_Throngus_Mace'),
('40177', '4', '0', 'You break easy!', '1', '0', '0', '0', '0', '18945', 'VO_GB_Throngus_Slay01'),
('40177', '4', '1', 'Throngus use your corpse on body. Somewhere...', '1', '0', '0', '0', '0', '18944', 'VO_GB_Throngus_Slay02'), 
('40177', '5', '0', 'Death... Good choice. Not best choice maybe, but better than fail and live.', '1', '0', '0', '0', '0', '18946', 'VO_GB_Throngus_Death');

-- Drahga Shadowburner
DELETE FROM `creature_text` WHERE `entry` = 40319;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('40319', '0', '0', 'I will burn you from the inside out!', '1', '0', '0', '0', '0', '18610', 'VO_GB_Drahga_Engage'), 
('40319', '1', '0', 'INCINERATE THEM, MINIONS!', '1', '0', '0', '0', '0', '18616', 'VO_GB_Drahga_Sum_Spirits1'),
('40319', '1', '1', 'BY FIRE BE... BURNED!', '1', '0', '0', '0', '0', '18619', 'VO_GB_Drahga_Sum_Spirits2'),
('40319', '2', '0', 'Dragon, you will do as I command! Catch me!', '1', '0', '0', '0', '0', '18621', 'VO_GB_Drahga_Sum_Valiona'),
('40319', '3', '0', 'You should have come better prepared!', '1', '0', '0', '0', '0', '18612', 'VO_GB_Drahga_Slay01'), 
('40319', '3', '1', 'An easy kill!', '1', '0', '0', '0', '0', '18611', 'VO_GB_Drahga_Slay02'),
('40319', '4', '0', 'Valiona, finish them! Avenge me!', '1', '0', '0', '0', '0', '18614', 'VO_GB_Drahga_Death');

-- Erudax
DELETE FROM `creature_text` WHERE `entry` = 40484;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('40484', '0', '0', 'The darkest days are still ahead!', '1', '0', '0', '0', '0', '18638', 'VO_GB_Erudax_Engage'), 
('40484', '1', '0', 'Flakh ghet! The shadows hunger cannot be sated! ', '1', '0', '0', '0', '0', '18644', 'VO_GB_Erudax_Shad_Gale'),
('40484', '2', '0', 'Come, suffering... Enter, chaos!', '1', '0', '0', '0', '0', '18646', 'VO_GB_Erudax_Guardian'),
('40484', '3', '0', 'Flesh for the offering!', '1', '0', '0', '0', '0', '18640', 'VO_GB_Erudax_Slay02'), 
('40484', '3', '1', 'Erudax cackles maniacally.', '2', '0', '0', '0', '0', '18639', 'VO_GB_Erudax_Slay01'),
('40484', '4', '0', 'Ywaq maq oou; ywaq maq ssaggh. Yawq ma shg fhn.', '1', '0', '0', '0', '0', '18641', 'VO_GB_Erudax_Death');