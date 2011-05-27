-- Goblin Warrior - Battle Stance 
DELETE FROM playercreateinfo_spell WHERE race=9 AND Spell=2457;
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES (9, 1, 2457, 'Battle Stance');
