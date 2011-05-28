-- OBJECT: Shards of Myzrael
DELETE FROM gameobject_involvedrelation WHERE id=138492;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES 
(138492, 26912),
(138492, 26049),
(138492, 26909),
(138492, 26341);
-- OBJECT: Iridescent Shards
DELETE FROM gameobject_involvedrelation WHERE id=2701;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES 
(2701, 26039);
-- OBJECT: Stone of Inner Binding
DELETE FROM gameobject_involvedrelation WHERE id=2702;
INSERT INTO gameobject_involvedrelation (id, quest) VALUES 
(2702, 26041);
-- Fix By Ari