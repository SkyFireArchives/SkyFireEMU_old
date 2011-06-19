-- Fixed Warrior's Intercept 
-- by ZenitH

DELETE FROM `spell_bonus_data` WHERE entry = 20253;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(20253, 0, 0, 0.12, 0, 'Warrior - Intercept');
