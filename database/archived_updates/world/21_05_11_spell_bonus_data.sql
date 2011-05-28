-- DK Death Coil calibration
-- by ZenitH
DELETE FROM `spell_bonus_data` WHERE entry IN (47633, 47632);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
('47633', '0', '0', '0.3', '0', 'Death Knight - Death Coil Heal'), 
('47632', '0', '0', '0.3', '0', 'Death Knight - DeathCoil Damage');