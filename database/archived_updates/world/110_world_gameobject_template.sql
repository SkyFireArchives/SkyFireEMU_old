-- Fix flags of gameobject : Red Power Crystal - Green Power Crystal - Yellow Power Crystal - Blue Power Crystal

UPDATE gameobject_template SET flags = 4 WHERE entry IN (164660, 164661, 164659, 164658);