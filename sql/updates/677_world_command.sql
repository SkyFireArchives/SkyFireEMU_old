DELETE FROM `command` WHERE `name` LIKE 'reload creature_text';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload creature_text',3,'Syntax: .reload creature_text\r\nReload creature_text table.');

DELETE FROM `command` WHERE `name` LIKE 'reload smart_scripts';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload smart_scripts',3,'Syntax: .reload smart_scripts\nReload smart_scripts table.');