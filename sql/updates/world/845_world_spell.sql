-- Dueling Spell To Goblins 
DELETE FROM playercreateinfo_spell WHERE race=9 AND Spell=7266;
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES
(9, 1, 7266, 'Duel'),
(9, 3, 7266, 'Duel'),
(9, 4, 7266, 'Duel'),
(9, 5, 7266, 'Duel'),
(9, 6, 7266, 'Duel'),
(9, 7, 7266, 'Duel'),
(9, 8, 7266, 'Duel'),
(9, 9, 7266, 'Duel');