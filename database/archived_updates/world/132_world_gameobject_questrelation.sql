-- Iridescent Shards
DELETE FROM gameobject_questrelation WHERE id=2701;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
(2701, 26041);
-- Shards of Myzrael
DELETE FROM gameobject_questrelation WHERE id=138492;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
(138492, 26039);
-- Stone of Inner Binding
DELETE FROM gameobject_questrelation WHERE id=2702;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES 
(2702, 26042),
(2702, 26911),
(2702, 26346);
-- Fix By Ari.