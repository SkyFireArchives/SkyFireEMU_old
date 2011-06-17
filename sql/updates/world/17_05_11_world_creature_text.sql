-- Dungeon Bosses Sound Entries

-- Halls of Origination
-- Temple Guardian Anhuur
DELETE FROM `creature_text` WHERE `entry` = 39425;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39425', '0', '0', 'Turn back, intruders! These halls must not be disturbed!', '1', '0', '0', '0', '0', '18580', 'VO_HO_Anhuur_Engage'), 
('39425', '3', '0', 'What... have you... done? ', '1', '0', '0', '0', '0', '18579', 'VO_HO_Anhuur_Death'),
('39425', '2', '0', 'A product of your own insolence!', '1', '0', '0', '0', '0', '18583', 'VO_HO_Anhuur_Slay02'),
('39425', '1', '0', 'Beacons of light, bestow upon me your aegis!', '1', '0', '0', '0', '0', '18581', 'VO_HO_Anhuur_Event'),
('39425', '2', '1', 'I regret nothing !', '1', '0', '0', '0', '0', '18582', 'VO_HO_Anhuur_Slay01');

-- Earthrager Ptah

DELETE FROM `creature_text` WHERE `entry` = 39428;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39428', '0', '0', 'More carrion for the swarm... ', '1', '0', '0', '0', '0', '18906', 'VO_HO_Ptah_Engage'), 
('39428', '1', '0', 'Ptah... is... no more... ', '1', '0', '0', '0', '0', '18905', 'VO_HO_Ptah_Death'),
('39428', '2', '0', 'Dust to dust... ', '1', '0', '0', '0', '0', '18907', 'VO_HO_Ptah_Slay01'),
('39428', '2', '1', 'HYAAAH!!', '1', '0', '0', '0', '0', '18908', 'VO_HO_Ptah_Slay02');

-- Anraphet

DELETE FROM `creature_text` WHERE `entry` = 39788;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39788', '0', '0', 'This unit has been activated outside normal operating protocols. Downloading new operational parameters. Download complete. Full unit self defense routines are now active. Destruction of foreign units in this system shall now commence.', '1', '0', '0', '0', '0', '20857', 'VO_HO_Anraphet_Intro01'), 
('39788', '1', '0', 'Purge of unauthorized entities commencing.', '1', '0', '0', '0', '0', '20862', 'VO_HO_Anraphet_Engage01'),
('39788', '2', '1', 'Purge Complete. ', '1', '0', '0', '0', '0', '20859', 'VO_HO_Anraphet_Slay02'),
('39788', '2', '0', 'Target Annihilated.', '1', '0', '0', '0', '0', '20858', 'VO_HO_Anraphet_Slay01'),
('39788', '3', '0', 'Omega Stance activated. Annihilation of foreign unit is now imminent.', '1', '0', '0', '0', '0', '20861', 'VO_HO_Anraphet_Special02'),
('39788', '4', '0', 'Anraphet unit shutting down...', '1', '0', '0', '0', '0', '20856', 'VO_HO_Anraphet_Death01');

-- Lost City of the Tol'vir
-- General Husam

DELETE FROM `creature_text` WHERE `entry` = 44577;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('44577', '0', '0', 'Invaders! You shall go no further! ', '1', '0', '0', '0', '0', '21886', 'VO_TV_Husam_Engage01'), 
('44577', '1', '1', 'Murkash!', '1', '0', '0', '0', '0', '21888', 'VO_TV_Husam_Event02'),
('44577', '1', '0', 'Tread Lightly! ', '1', '0', '0', '0', '0', '21887', 'VO_TV_Husam_Event01'),
('44577', '2', '0', 'Siamat must not be freed! Turn back before it is too late!', '1', '0', '0', '0', '0', '21885', 'VO_TV_Husam_Death01'),
('44577', '3', '0', 'Insolent rats!', '1', '0', '0', '0', '0', '21889', 'VO_TV_Husam_Kill02');

-- High Prophet Barim

DELETE FROM `creature_text` WHERE `entry` = 43612;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('43612', '0', '0', 'Begone infidels, you are not welcome here!', '1', '0', '0', '0', '0', '19735', 'VO_TV_Barim_Engage01'), 
('43612', '1', '0', 'May peace find you now.', '1', '0', '0', '0', '0', '19738', 'VO_TV_Barim_Kill01'),
('43612', '2', '0', 'Kneel before me and repent!', '1', '0', '0', '0', '0', '19737', 'VO_TV_Barim_Event02'),
('43612', '2', '1', 'The Heavens take you!', '1', '0', '0', '0', '0', '19736', 'VO_TV_Barim_Event01'),
('43612', '3', '0', 'Death is only the beginning!', '1', '0', '0', '0', '0', '19733', 'VO_TV_Barim_Death');

-- Siamat 

DELETE FROM `creature_text` WHERE `entry` = 44819;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('44819', '1', '0', 'Winds of the south, rise and come to your masters aid!', '1', '0', '0', '0', '0', '20227', 'VO_TV_Siamat_Engage01'), 
('44819', '0', '0', 'I. AM. UNLEASHED!', '1', '0', '0', '0', '0', '20231', 'VO_TV_Siamat_Intro01'),
('44819', '2', '1', 'Suffer the storm!', '1', '0', '0', '0', '0', '20229', 'VO_TV_Siamat_Event02'),
('44819', '3', '0', 'Nothing more than dust in the wind.', '1', '0', '0', '0', '0', '20232', 'VO_TV_Siamat_Kill01'),
('44819', '4', '0', 'The sky... Beckons...', '1', '0', '0', '0', '0', '20226', 'VO_TV_Siamat_Death01'),
('44819', '2', '0', 'Cower before the tempest storm!', '1', '0', '0', '0', '0', '20228', 'VO_TV_Siamat_Event01'),
('44819', '2', '2', 'Your city will be buried! Your lives forfeit to the elements! ', '1', '0', '0', '0', '0', '20230', 'VO_TV_Siamat_Event03');
  
 
