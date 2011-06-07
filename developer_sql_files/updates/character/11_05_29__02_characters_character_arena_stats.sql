-- if exist column, will deleted, if no exist write error
-- Can't DROP 'personalRating'; check that column/key exists
ALTER TABLE character_arena_stats
DROP COLUMN personalRating;