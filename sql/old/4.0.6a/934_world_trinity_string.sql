-- Twin Peaks Battleground

DELETE FROM `trinity_string` WHERE entry IN
(1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244);

INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(1230, 'The battle for Twin Peaks begins in 2 minutes.'),
(1231, 'The battle for Twin Peaks begins in 1 minute.'),
(1232, 'The battle for Twin Peaks begins in 30 seconds. Prepare yourselves!'),
(1233, 'Let the battle for Twin Peaks begin!'),
(1234, '$n captured the Horde flag!'),
(1235, '$n captured the Alliance flag!'),
(1236, 'The Horde flag was dropped by $n!'),
(1237, 'The Alliance Flag was dropped by $n!'),
(1238, 'The Alliance Flag was returned to its base by $n!'),
(1239, 'The Horde flag was returned to its base by $n!'),
(1240, 'The Horde flag was picked up by $n!'),
(1241, 'The Alliance Flag was picked up by $n!'),
(1242, 'The flags are now placed at their bases.'),
(1243, 'The Alliance flag is now placed at its base.'),
(1244, 'The Horde flag is now placed at its base.');