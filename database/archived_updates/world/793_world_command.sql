DELETE FROM `command` WHERE `name` LIKE 'channel set public';
DELETE FROM `command` WHERE `name` LIKE 'channel set ownership';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('channel set ownership', 3, 'Syntax: .channel set ownership $channel [on/off]\n\n\Grant ownership to the first person that joins the channel.');

DELETE FROM `trinity_string` WHERE `entry` IN (5022, 5023);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES 
(5022, 'Granting ownership to first person that joins the channel \"%s\": Enabled.'),
(5023, 'Granting ownership to first person that joins the channel \"%s\": Disabled.');