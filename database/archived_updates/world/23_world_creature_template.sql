-- Fixed startup errors related to non-existing Modelid1 id, this can crash the client.
-- Vernon Soursprye <Stable Master>
UPDATE `creature_template` SET `modelid1`=37699 WHERE `entry`=43982;
-- Fix By Ari.
