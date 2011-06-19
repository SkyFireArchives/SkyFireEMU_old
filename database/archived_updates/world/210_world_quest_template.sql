-- Fix DB Error Releated To Daily Quest Withou Repeatable Marker
UPDATE quest_template SET SpecialFlags=1 WHERE entry=28685;
