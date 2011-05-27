-- WDBVerified Quest Overlord Mok'Morokk's Concern (27424)
UPDATE quest_template SET WDBVerified=13623 WHERE entry=27424;

-- Loot For Quest Overlord Mok'Morokk's Concern (27424)
DELETE FROM gameobject_loot_template WHERE entry IN (19904, 19905, 19906);
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance) VALUES 
(19906, 5836, -100), -- Mok'Morokk's Strongbox
(19905, 5835, -100), -- Mok'Morokk's Grog
(19904, 5834, -100); -- Mok'Morokk's Snuff

-- Gameobject Flags
UPDATE gameobject_template SET flags=4 WHERE entry IN 
(
19904, -- Mok'Morokk's Snuff
19905, -- Mok'Morokk's Grog
19906 -- Mok'Morokk's Strongbox
);