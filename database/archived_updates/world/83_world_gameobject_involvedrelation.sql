-- Fix end quest The Traitor's Shadow

DELETE FROM gameobject_involvedrelation WHERE id = 181150;
INSERT INTO gameobject_involvedrelation
VALUES
(181150, 9161);