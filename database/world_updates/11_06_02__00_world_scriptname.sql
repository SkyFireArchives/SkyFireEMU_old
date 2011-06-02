UPDATE `quest_template` SET `SpecialFlags`='2' WHERE `entry`=12321;
UPDATE `creature_template` SET `ScriptName`='mob_rock_borer' WHERE `entry`=43917;
UPDATE `creature_template` SET `ScriptName`='npc_millhouse_manastorm' WHERE `entry`=20977;
UPDATE `creature_template` SET `ScriptName`='npc_sindragosa_trash' WHERE `entry` IN (37531,37532);
UPDATE `creature_template` SET `ScriptName`='npc_rimefang_icc' WHERE `entry`=37533;
UPDATE `creature_template` SET `ScriptName`='npc_spinestalker' WHERE `entry`=37534;
UPDATE `creature_template` SET `ScriptName`='npc_ice_tomb' WHERE `entry`=36980;
UPDATE `creature_template` SET `ScriptName`='boss_sindragosa' WHERE `entry`=36853;
UPDATE `creature_template` SET `ScriptName`='npc_rotting_frost_giant' WHERE `entry` IN (38490,38494);
UPDATE `creature_template` SET `ScriptName`='npc_frost_freeze_trap' WHERE `entry`=37744;
UPDATE `creature_template` SET `ScriptName`='npc_inquisitor_hallard' WHERE `entry`=27316;
UPDATE `creature_template` SET `ScriptName`='mob_crystalspawn_giant' WHERE `entry`=42810;
UPDATE `creature_template` SET `ScriptName`='mob_impp' WHERE `entry`=43014;
UPDATE `creature_template` SET `ScriptName`='boss_glubtok' WHERE `entry`=47162;
UPDATE `creature_template` SET `ScriptName`='npc_pusillin' WHERE `entry`=14354;
UPDATE `creature_template` SET `ScriptName`='item_tiki_torch' WHERE `entry`=52419;
UPDATE `creature_template` SET `ScriptName`='npc_narm_faulk' WHERE `entry`=6177;
UPDATE `creature_template` SET `ScriptName`='npc_henze_faulk' WHERE `entry`=6172;
UPDATE `creature_template` SET `ScriptName`='boss_blood_queen_lana_thel' WHERE `entry`=37955;
UPDATE `creature_template` SET `ScriptName`='npc_darnavan' WHERE `entry` IN (38472,38485);
UPDATE `creature_template` SET `ScriptName`='mob_wrathbone_sorcerer' WHERE `entry`=37728;
UPDATE `creature_template` SET `ScriptName`='mob_deathwhisper_necrolyte' WHERE `entry`=36788;
UPDATE `creature_template` SET `ScriptName`='npc_left_arm' WHERE `entry`=32933;
UPDATE `creature_template` SET `ScriptName`='npc_right_arm' WHERE `entry`=32934;
UPDATE `creature_template` SET `ScriptName`= 'mob_rune_of_power' WHERE entry = 33705;
UPDATE `creature_template` SET `ScriptName`= 'npc_restless_apparition' WHERE entry = 23861;

REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
( 69675, 'spell_sindragosa_ice_tomb_dummy'),
( 69712, 'spell_sindragosa_ice_tomb'),
( 71350, 'spell_frostwarden_handler_focus_fire'),
( 71357, 'spell_frostwarden_handler_order_whelp'),
( 71376, 'spell_rimefang_icy_blast'),
( 70117, 'spell_sindragosa_icy_grip'),
( 69845, 'spell_sindragosa_collision_filter'),
( 71053, 'spell_sindragosa_collision_filter'),
( 71054, 'spell_sindragosa_collision_filter'),
( 71055, 'spell_sindragosa_collision_filter'),
( 70127, 'spell_sindragosa_collision_filter'),
( 72528, 'spell_sindragosa_collision_filter'),
( 72529, 'spell_sindragosa_collision_filter'),
( 72530, 'spell_sindragosa_collision_filter'),
( 70117, 'spell_sindragosa_collision_filter'),
( 70157, 'spell_sindragosa_ice_tomb_trap'),
( 70126, 'spell_sindragosa_frost_beacon'),
( 69766, 'spell_sindragosa_instability'),
( 69762, 'spell_sindragosa_unchained_magic'),
( 70598, 'spell_sindragosa_s_fury'),
(5604, 'at_sindragosa_lair'),
( 72864, 'spell_frost_giant_death_plague'),
(5698, 'at_icc_saurfang_portal'),
(5649, 'at_icc_shutdown_traps'),
( 10848, 'spell_gen_shroud_of_death'),
( 70946, 'spell_blood_queen_vampiric_bite'),
( 71475, 'spell_blood_queen_vampiric_bite'),
( 71476, 'spell_blood_queen_vampiric_bite'),
( 71477, 'spell_blood_queen_vampiric_bite'),
( 70877, 'spell_blood_queen_frenzied_bloodthirst'),
( 71474, 'spell_blood_queen_frenzied_bloodthirst'),
( 71899, 'spell_blood_queen_bloodbolt'),
( 71900, 'spell_blood_queen_bloodbolt'),
( 71901, 'spell_blood_queen_bloodbolt'),
( 71902, 'spell_blood_queen_bloodbolt'),
( 71340, 'spell_blood_queen_pact_of_the_darkfallen_dmg'),
( 71341, 'spell_blood_queen_pact_of_the_darkfallen_dmg_target'),
( 71123, 'spell_stinky_precious_decimate'),
( 69146, 'spell_marrowgar_coldflame_damage'),
( 70823, 'spell_marrowgar_coldflame_damage'),
( 70824, 'spell_marrowgar_coldflame_damage'),
( 70825, 'spell_marrowgar_coldflame_damage'),
( 66862, 'spell_eadric_radiance'),
( 67681, 'spell_eadric_radiance');

REPLACE INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12822,11,0,0, 'achievement_all_you_can_eat'),
(12996,11,0,0, 'achievement_all_you_can_eat'),
(12972,11,0,0, 'achievement_all_you_can_eat'),
(12989,11,0,0, 'achievement_all_you_can_eat');