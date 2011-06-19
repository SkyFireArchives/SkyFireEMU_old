-- End quest for the object Echo Three

DELETE FROM gameobject_involvedrelation WHERE id = 207291;
INSERT INTO gameobject_involvedrelation
VALUES
(207291, 28630);