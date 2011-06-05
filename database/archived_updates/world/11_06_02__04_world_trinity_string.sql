DELETE FROM trinity_string WHERE entry IN (1250, 1251, 1252, 1253);
INSERT INTO trinity_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(1250, 'The Battle for Gilneas begins in 2 minutes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1251, 'The Battle for Gilneas begins in 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1252, 'The Battle for Gilneas begins in 30 seconds. Prepare yourselves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1253, 'The Battle for Gilneas has begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);