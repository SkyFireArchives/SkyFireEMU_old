-- Pet Trainers, Have Incorrect trainer_type
UPDATE creature_template SET trainer_type=3 WHERE subname LIKE '%pet trainer%';
-- Fix By Ari.