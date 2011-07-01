-- Blackrock Caverns

-- Rom'Ogg Bonecrusher
DELETE FROM `creature_text` WHERE `entry` = 39665;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39665', '0', '0', 'Boss Chogall not gonna be happy bout dis! ', '1', '0', '0', '0', '0', '18925', 'VO_BC_Romogg_Aggro01'), 
('39665', '1', '0', 'Stand still! Romogg crack your skulls! ', '1', '0', '0', '0', '0', '18927', 'VO_BC_Romogg_Event03'),
('39665', '2', '0', 'That what you get! Nothing! ', '1', '0', '0', '0', '0', '18926', 'VO_BC_Romogg_Slay'),
('39665', '3', '0', 'Romogg...sorry... ', '1', '0', '0', '0', '0', '18928', 'VO_BC_Romogg_Death');

-- Corla, Herald of Twilight
DELETE FROM `creature_text` WHERE `entry` = 39679;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39679', '0', '0', 'HERETICS! You will suffer for this interruption!', '1', '0', '0', '0', '0', '18589', 'VO_BC_Corla_Aggro'), 
('39679', '1', '0', 'Bask in his power! Rise as an agent of the masters rage!', '1', '0', '0', '0', '0', '18592', 'VO_BC_Corla_Event03'),
('39679', '2', '0', 'There is only one true path of enlightenment! DEATH!', '1', '0', '0', '0', '0', '18590', 'VO_BC_Corla_Slay'),
('39679', '3', '0', 'For the master I die a thousand times... A thousan...', '1', '0', '0', '0', '0', '18594', 'VO_BC_Corla_Death');

-- Karsh Steelbender
DELETE FROM `creature_text` WHERE `entry` = 39698;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39698', '0', '0', 'Bodies to test my armaments upon! ', '1', '0', '0', '0', '0', '18852', 'VO_BC_Karsh_Aggro'), 
('39698', '1', '0', 'Feel the burn!', '1', '0', '0', '0', '0', '18854', 'VO_BC_Karsh_Event03'),
('39698', '2', '0', 'Merely an impurity in the compound!', '1', '0', '0', '0', '0', '18853', 'VO_BC_Karsh_Slay'),
('39698', '3', '0', 'We number in the millions! Your efforts are wasted...', '1', '0', '0', '0', '0', '18855', 'VO_BC_Karsh_Death');

-- Ascendant Lord Obsidius
DELETE FROM `creature_text` WHERE `entry` = 39705;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39705', '0', '0', 'You come seeking answers? Then have them! Look upon your answer to living!', '1', '0', '0', '0', '0', '18899', 'VO_BC_Obsidius_Aggro'), 
('39705', '1', '0', 'Earth can be shaped, molded... You cannot! You are useless!', '1', '0', '0', '0', '0', '18905', 'VO_BC_Obsidius_Event01'),
('39705', '2', '0', 'Your kind has no place in the masters world!', '1', '0', '0', '0', '0', '18901', 'VO_BC_Obsidius_Slay'),
('39705', '3', '0', 'I cannot be destroyed... Only de... layed...', '1', '0', '0', '0', '0', '18902', 'VO_BC_Obsidius_Death');

-- Halls of Origination Part 2

-- Isiset
DELETE FROM `creature_text` WHERE `entry` = 39587;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39587', '0', '0', 'Gaze to the heavens! What do you see?', '1', '0', '0', '0', '0', '18843', 'VO_HO_Isiset_Engage'), 
('39587', '1', '0', 'Bask in my radiance!', '1', '0', '0', '0', '0', '18845', 'VO_HO_Isiset_Event01'),
('39587', '2', '0', 'Insignificant!', '1', '0', '0', '0', '0', '18847', 'VO_HO_Isiset_Slay02'),
('39587', '2', '1', 'The glimmer of your life, extinguished.', '1', '0', '0', '0', '0', '18846', 'VO_HO_Isiset_Slay01'),
('39587', '3', '0', 'Eons of darkness... by your hand.', '1', '0', '0', '0', '0', '18842', 'VO_HO_Isiset_Death01'),
('39587', '3', '1', 'My luster... wanes.', '1', '0', '0', '0', '0', '18844', 'VO_HO_Isiset_Death02');

-- Ammunae
DELETE FROM `creature_text` WHERE `entry` = 39731;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39731', '0', '0', 'This chamber will flourish with your life energy!', '1', '0', '0', '0', '0', '18571', 'VO_HO_Ammunae_Engage'), 
('39731', '1', '0', 'Your life, UNLEASHED!', '1', '0', '0', '0', '0', '18572', 'VO_HO_Ammunae_Event'),
('39731', '2', '0', 'Wither away!', '1', '0', '0', '0', '0', '18573', 'VO_HO_Ammunae_Slay01'),
('39731', '2', '1', 'Waste of energy.', '1', '0', '0', '0', '0', '18574', 'VO_HO_Ammunae_Slay02'),
('39731', '3', '0', 'The cycle continues...', '1', '0', '0', '0', '0', '18569', 'VO_HO_Ammunae_Death');

-- Setesh
DELETE FROM `creature_text` WHERE `entry` = 39732;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39732', '0', '0', 'You fear that which you cannot control. But can you control your fear? ', '1', '0', '0', '0', '0', '18553', 'VO_HO_Setesh_Engage'),
('39732', '1', '0', 'Behold, how infinity befalls your world', '1', '0', '0', '0', '0', '18554', 'VO_HO_Setesh_Event'), 
('39732', '2', '0', 'Do you understand now?', '1', '0', '0', '0', '0', '18556', 'VO_HO_Setesh_Slay02'),
('39732', '2', '1', 'Embrace the end.', '1', '0', '0', '0', '0', '18555', 'VO_HO_Setesh_Slay01'),
('39732', '3', '0', 'Yes! Harness... your... hatred.', '1', '0', '0', '0', '0', '18552', 'VO_HO_Setesh_Death');

-- Rajh
DELETE FROM `creature_text` WHERE `entry` = 39378;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) 
VALUES 
('39378', '0', '0', 'Defilers! Wretches! Fiends! Begone from here!', '1', '0', '0', '0', '0', '18911', 'VO_HO_Rajh_Engage'), 
('39378', '1', '0', 'Can you feel it? The blessed warmth of the sun?', '1', '0', '0', '0', '0', '18912', 'VO_HO_Rajh_Event01'),
('39378', '2', '0', 'I send you to your deity.', '1', '0', '0', '0', '0', '18913', 'VO_HO_Rajh_Slay01'),
('39378', '2', '1', 'I will take this life as an offering!', '1', '0', '0', '0', '0', '18914', 'VO_HO_Rajh_Slay01'),
('39378', '3', '0', 'Blazing rays of light, take me!', '1', '0', '0', '0', '0', '18910', 'VO_HO_Rajh_Death');



