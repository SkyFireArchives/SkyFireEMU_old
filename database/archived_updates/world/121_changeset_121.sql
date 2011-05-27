DELETE FROM gameobject_template WHERE entry = 181165; /*safe to delete. object does not exist*/
DELETE FROM gameobject_template WHERE entry = 204422; /*safe to delete. object does not exist*/
DELETE FROM spell_bonus_data WHERE entry = 5138; /*safe to delete. spell does not exist*/
DELETE FROM creature_model_info WHERE modelid = 33598; /*safe to delete. model does not exist*/
UPDATE creature_equip_template SET equipentry1 = 0 WHERE entry = 2246; /*safe to set 0. equip does not exist*/
UPDATE creature_template SET modelid1 = 0 WHERE entry = 43982; /*safe to set 0. model does not exist*/
DELETE FROM creature_addon WHERE guid = 322178; /*safe to delete. addon does not exist*/
UPDATE creature_template SET npcflag = 4227 WHERE entry=43411; /*vendor fix */
DELETE FROM spell_proc_event WHERE entry = 18119; /*safe to delete. no longer a ranked/triggered spell */
DELETE FROM spell_proc_event WHERE entry = 18120; /*safe to delete. no longer a ranked/triggered spell */
DELETE FROM spell_proc_event WHERE entry = 64127; /*safe to delete. no longer a ranked/triggered spell */
DELETE FROM spell_proc_event WHERE entry = 64129; /*safe to delete. no longer a ranked/triggered spell */

/* Random noob quest fix. Fixes beer barrels to allow looting for quest "First, we're gonna need some beer" */
INSERT IGNORE INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES (201609, 49745, -100, 1, 0, 1, 1),(201610, 49744, -100, 1, 0, 1, 1),(201611, 49746, -100, 1, 0, 1, 1);

UPDATE item_template SET material = 7 WHERE entry = 5107;
UPDATE item_template SET material = 4 WHERE entry = 9250;
UPDATE item_template SET material = 4 WHERE entry = 25874;
UPDATE item_template SET material = 4 WHERE entry = 29592;
UPDATE item_template SET material = 4 WHERE entry = 29593;
UPDATE item_template SET material = 4 WHERE entry = 32638;
UPDATE item_template SET material = 4 WHERE entry = 40582;
UPDATE item_template SET material = 8 WHERE entry = 43257;

UPDATE item_template SET material = 7 WHERE entry = 37294;


UPDATE item_template SET unk0 = 10 WHERE entry = 8177;
UPDATE item_template SET unk0 = 10 WHERE entry = 17191;
UPDATE item_template SET unk0 = 8 WHERE entry = 20536;
UPDATE item_template SET unk0 = 8 WHERE entry = 36942;
UPDATE item_template SET unk0 = 20 WHERE entry = 37708;
UPDATE item_template SET unk0 = 4 WHERE entry = 38268;
UPDATE item_template SET unk0 = 1 WHERE entry = 38481;
UPDATE item_template SET unk0 = 8 WHERE entry = 38632;
UPDATE item_template SET unk0 = 1 WHERE entry = 38633;
UPDATE item_template SET unk0 = 8 WHERE entry = 38707;
UPDATE item_template SET unk0 = 8 WHERE entry = 39370;
UPDATE item_template SET unk0 = 7 WHERE entry = 39371;
UPDATE item_template SET unk0 = 10 WHERE entry = 41755;
UPDATE item_template SET unk0 = 10 WHERE entry = 41987;
UPDATE item_template SET unk0 = 0 WHERE entry = 42624;
UPDATE item_template SET unk0 = 0 WHERE entry = 42640;
UPDATE item_template SET unk0 = 0 WHERE entry = 42679;
UPDATE item_template SET unk0 = 0 WHERE entry = 42700;
UPDATE item_template SET unk0 = 0 WHERE entry = 42732;
UPDATE item_template SET unk0 = 0 WHERE entry = 42733;
UPDATE item_template SET unk0 = 0 WHERE entry = 42734;
UPDATE item_template SET unk0 = 0 WHERE entry = 42735;
UPDATE item_template SET unk0 = 0 WHERE entry = 42736;
UPDATE item_template SET unk0 = 0 WHERE entry = 42737;
UPDATE item_template SET unk0 = 0 WHERE entry = 42738;
UPDATE item_template SET unk0 = 0 WHERE entry = 42739;
UPDATE item_template SET unk0 = 0 WHERE entry = 42740;
UPDATE item_template SET unk0 = 0 WHERE entry = 42741;
UPDATE item_template SET unk0 = 0 WHERE entry = 42742;
UPDATE item_template SET unk0 = 0 WHERE entry = 42743;
UPDATE item_template SET unk0 = 0 WHERE entry = 42744;
UPDATE item_template SET unk0 = 0 WHERE entry = 42745;
UPDATE item_template SET unk0 = 0 WHERE entry = 42746;
UPDATE item_template SET unk0 = 0 WHERE entry = 42747;
UPDATE item_template SET unk0 = 0 WHERE entry = 42748;
UPDATE item_template SET unk0 = 0 WHERE entry = 42749;
UPDATE item_template SET unk0 = 0 WHERE entry = 42750;
UPDATE item_template SET unk0 = 0 WHERE entry = 42751;
UPDATE item_template SET unk0 = 0 WHERE entry = 42752;
UPDATE item_template SET unk0 = 0 WHERE entry = 42753;
UPDATE item_template SET unk0 = 0 WHERE entry = 42754;
UPDATE item_template SET unk0 = 0 WHERE entry = 42769;
UPDATE item_template SET unk0 = 0 WHERE entry = 42770;
UPDATE item_template SET unk0 = 0 WHERE entry = 42774;
UPDATE item_template SET unk0 = 0 WHERE entry = 42781;
UPDATE item_template SET unk0 = 0 WHERE entry = 42782;
UPDATE item_template SET unk0 = 0 WHERE entry = 42783;
UPDATE item_template SET unk0 = 0 WHERE entry = 42838;
UPDATE item_template SET unk0 = 0 WHERE entry = 42839;
UPDATE item_template SET unk0 = 0 WHERE entry = 42840;
UPDATE item_template SET unk0 = 15 WHERE entry = 43659;
UPDATE item_template SET unk0 = 3 WHERE entry = 44635;
UPDATE item_template SET unk0 = 8 WHERE entry = 44926;
UPDATE item_template SET unk0 = 1 WHERE entry = 44948;
UPDATE item_template SET unk0 = 8 WHERE entry = 45061;
UPDATE item_template SET unk0 = 14 WHERE entry = 45073;
UPDATE item_template SET unk0 = 8 WHERE entry = 45176;
UPDATE item_template SET unk0 = 8 WHERE entry = 45177;
UPDATE item_template SET unk0 = 8 WHERE entry = 45178;
UPDATE item_template SET unk0 = 8 WHERE entry = 45179;
UPDATE item_template SET unk0 = 0 WHERE entry = 45742;
UPDATE item_template SET unk0 = 0 WHERE entry = 45743;
UPDATE item_template SET unk0 = 0 WHERE entry = 45744;
UPDATE item_template SET unk0 = 0 WHERE entry = 45745;
UPDATE item_template SET unk0 = 0 WHERE entry = 45746;
UPDATE item_template SET unk0 = 0 WHERE entry = 45747;
UPDATE item_template SET unk0 = 0 WHERE entry = 45753;
UPDATE item_template SET unk0 = 0 WHERE entry = 45755;
UPDATE item_template SET unk0 = 0 WHERE entry = 45756;
UPDATE item_template SET unk0 = 0 WHERE entry = 45757;
UPDATE item_template SET unk0 = 0 WHERE entry = 45758;
UPDATE item_template SET unk0 = 0 WHERE entry = 45760;
UPDATE item_template SET unk0 = 0 WHERE entry = 45761;
UPDATE item_template SET unk0 = 0 WHERE entry = 45762;
UPDATE item_template SET unk0 = 0 WHERE entry = 45764;
UPDATE item_template SET unk0 = 6 WHERE entry = 45765;
UPDATE item_template SET unk0 = 0 WHERE entry = 45766;
UPDATE item_template SET unk0 = 0 WHERE entry = 45767;
UPDATE item_template SET unk0 = 0 WHERE entry = 45768;
UPDATE item_template SET unk0 = 0 WHERE entry = 45769;
UPDATE item_template SET unk0 = 0 WHERE entry = 45770;
UPDATE item_template SET unk0 = 0 WHERE entry = 45771;
UPDATE item_template SET unk0 = 0 WHERE entry = 45772;
UPDATE item_template SET unk0 = 0 WHERE entry = 45775;
UPDATE item_template SET unk0 = 0 WHERE entry = 45776;
UPDATE item_template SET unk0 = 0 WHERE entry = 45777;
UPDATE item_template SET unk0 = 0 WHERE entry = 45778;
UPDATE item_template SET unk0 = 0 WHERE entry = 45779;
UPDATE item_template SET unk0 = 0 WHERE entry = 45780;
UPDATE item_template SET unk0 = 0 WHERE entry = 45781;
UPDATE item_template SET unk0 = 0 WHERE entry = 45782;
UPDATE item_template SET unk0 = 0 WHERE entry = 45783;
UPDATE item_template SET unk0 = 0 WHERE entry = 45784;
UPDATE item_template SET unk0 = 0 WHERE entry = 45785;
UPDATE item_template SET unk0 = 0 WHERE entry = 45786;
UPDATE item_template SET unk0 = 0 WHERE entry = 45787;
UPDATE item_template SET unk0 = 0 WHERE entry = 45788;
UPDATE item_template SET unk0 = 0 WHERE entry = 45789;
UPDATE item_template SET unk0 = 0 WHERE entry = 45790;
UPDATE item_template SET unk0 = 0 WHERE entry = 45791;
UPDATE item_template SET unk0 = 0 WHERE entry = 45792;
UPDATE item_template SET unk0 = 0 WHERE entry = 45793;
UPDATE item_template SET unk0 = 0 WHERE entry = 45794;
UPDATE item_template SET unk0 = 0 WHERE entry = 45795;
UPDATE item_template SET unk0 = 0 WHERE entry = 45796;
UPDATE item_template SET unk0 = 0 WHERE entry = 45797;
UPDATE item_template SET unk0 = 0 WHERE entry = 45798;
UPDATE item_template SET unk0 = 0 WHERE entry = 45799;
UPDATE item_template SET unk0 = 0 WHERE entry = 45800;
UPDATE item_template SET unk0 = 0 WHERE entry = 45803;
UPDATE item_template SET unk0 = 0 WHERE entry = 45804;
UPDATE item_template SET unk0 = 0 WHERE entry = 45805;
UPDATE item_template SET unk0 = 0 WHERE entry = 45806;
UPDATE item_template SET unk0 = 0 WHERE entry = 45807;
UPDATE item_template SET unk0 = 0 WHERE entry = 45814;
UPDATE item_template SET unk0 = 0 WHERE entry = 45815;
UPDATE item_template SET unk0 = 0 WHERE entry = 45816;
UPDATE item_template SET unk0 = 0 WHERE entry = 45817;
UPDATE item_template SET unk0 = 0 WHERE entry = 45855;
UPDATE item_template SET unk0 = 0 WHERE entry = 45857;
UPDATE item_template SET unk0 = 0 WHERE entry = 45862;
UPDATE item_template SET unk0 = 0 WHERE entry = 45863;
UPDATE item_template SET unk0 = 0 WHERE entry = 45879;
UPDATE item_template SET unk0 = 0 WHERE entry = 45880;
UPDATE item_template SET unk0 = 0 WHERE entry = 45881;
UPDATE item_template SET unk0 = 0 WHERE entry = 45882;
UPDATE item_template SET unk0 = 0 WHERE entry = 45883;
UPDATE item_template SET unk0 = 0 WHERE entry = 45885;
UPDATE item_template SET unk0 = 0 WHERE entry = 45896;
UPDATE item_template SET unk0 = 0 WHERE entry = 45897;
UPDATE item_template SET unk0 = 0 WHERE entry = 45898;
UPDATE item_template SET unk0 = 0 WHERE entry = 45908;
UPDATE item_template SET unk0 = 0 WHERE entry = 45911;
UPDATE item_template SET unk0 = 0 WHERE entry = 45912;
UPDATE item_template SET unk0 = 0 WHERE entry = 45944;
UPDATE item_template SET unk0 = 0 WHERE entry = 45977;
UPDATE item_template SET unk0 = 0 WHERE entry = 45978;
UPDATE item_template SET unk0 = 0 WHERE entry = 45979;
UPDATE item_template SET unk0 = 0 WHERE entry = 45980;
UPDATE item_template SET unk0 = 0 WHERE entry = 45981;
UPDATE item_template SET unk0 = 0 WHERE entry = 45984;
UPDATE item_template SET unk0 = 0 WHERE entry = 45986;
UPDATE item_template SET unk0 = 0 WHERE entry = 45987;
UPDATE item_template SET unk0 = 0 WHERE entry = 45999;
UPDATE item_template SET unk0 = 0 WHERE entry = 46000;
UPDATE item_template SET unk0 = 0 WHERE entry = 46001;
UPDATE item_template SET unk0 = 0 WHERE entry = 46002;
UPDATE item_template SET unk0 = 0 WHERE entry = 46003;
UPDATE item_template SET unk0 = 0 WHERE entry = 46004;
UPDATE item_template SET unk0 = 0 WHERE entry = 46005;
UPDATE item_template SET unk0 = 0 WHERE entry = 46029;
UPDATE item_template SET unk0 = 0 WHERE entry = 46052;
UPDATE item_template SET unk0 = 0 WHERE entry = 46053;
UPDATE item_template SET unk0 = 6 WHERE entry = 46069;
UPDATE item_template SET unk0 = 6 WHERE entry = 46070;
UPDATE item_template SET unk0 = 0 WHERE entry = 46094;
UPDATE item_template SET unk0 = 6 WHERE entry = 46106;
UPDATE item_template SET unk0 = 0 WHERE entry = 46109;
UPDATE item_template SET unk0 = 0 WHERE entry = 46114;
UPDATE item_template SET unk0 = 0 WHERE entry = 46311;
UPDATE item_template SET unk0 = 0 WHERE entry = 46314;
UPDATE item_template SET unk0 = 0 WHERE entry = 46315;
UPDATE item_template SET unk0 = 0 WHERE entry = 46316;
UPDATE item_template SET unk0 = 0 WHERE entry = 46325;
UPDATE item_template SET unk0 = 0 WHERE entry = 46354;
UPDATE item_template SET unk0 = 0 WHERE entry = 46355;
UPDATE item_template SET unk0 = 0 WHERE entry = 46356;
UPDATE item_template SET unk0 = 0 WHERE entry = 46357;
UPDATE item_template SET unk0 = 0 WHERE entry = 46359;
UPDATE item_template SET unk0 = 0 WHERE entry = 46360;
UPDATE item_template SET unk0 = 0 WHERE entry = 46362;
UPDATE item_template SET unk0 = 0 WHERE entry = 46363;
UPDATE item_template SET unk0 = 0 WHERE entry = 46364;
UPDATE item_template SET unk0 = 0 WHERE entry = 46365;
UPDATE item_template SET unk0 = 0 WHERE entry = 46366;
UPDATE item_template SET unk0 = 0 WHERE entry = 46367;
UPDATE item_template SET unk0 = 0 WHERE entry = 46370;
UPDATE item_template SET unk0 = 0 WHERE entry = 46372;
UPDATE item_template SET unk0 = 0 WHERE entry = 46380;
UPDATE item_template SET unk0 = 0 WHERE entry = 46381;
UPDATE item_template SET unk0 = 0 WHERE entry = 46382;
UPDATE item_template SET unk0 = 0 WHERE entry = 46384;
UPDATE item_template SET unk0 = 0 WHERE entry = 46385;
UPDATE item_template SET unk0 = 0 WHERE entry = 46386;
UPDATE item_template SET unk0 = 0 WHERE entry = 46387;
UPDATE item_template SET unk0 = 0 WHERE entry = 46388;
UPDATE item_template SET unk0 = 0 WHERE entry = 46390;
UPDATE item_template SET unk0 = 0 WHERE entry = 46391;
UPDATE item_template SET unk0 = 0 WHERE entry = 46692;
UPDATE item_template SET unk0 = 0 WHERE entry = 46693;
UPDATE item_template SET unk0 = 0 WHERE entry = 46696;
UPDATE item_template SET unk0 = 0 WHERE entry = 46698;
UPDATE item_template SET unk0 = 0 WHERE entry = 46701;
UPDATE item_template SET unk0 = 0 WHERE entry = 46702;
UPDATE item_template SET unk0 = 0 WHERE entry = 46703;
UPDATE item_template SET unk0 = 0 WHERE entry = 46711;
UPDATE item_template SET unk0 = 0 WHERE entry = 46714;
UPDATE item_template SET unk0 = 0 WHERE entry = 46716;
UPDATE item_template SET unk0 = 0 WHERE entry = 46722;
UPDATE item_template SET unk0 = 3 WHERE entry = 46725;
UPDATE item_template SET unk0 = 0 WHERE entry = 46734;
UPDATE item_template SET unk0 = 0 WHERE entry = 46741;
UPDATE item_template SET unk0 = 0 WHERE entry = 46742;
UPDATE item_template SET unk0 = 0 WHERE entry = 46754;
UPDATE item_template SET unk0 = 0 WHERE entry = 46765;
UPDATE item_template SET unk0 = 0 WHERE entry = 46766;
UPDATE item_template SET unk0 = 0 WHERE entry = 46769;
UPDATE item_template SET unk0 = 0 WHERE entry = 46771;
UPDATE item_template SET unk0 = 0 WHERE entry = 46772;
UPDATE item_template SET unk0 = 0 WHERE entry = 46773;
UPDATE item_template SET unk0 = 0 WHERE entry = 46776;
UPDATE item_template SET unk0 = 0 WHERE entry = 46780;
UPDATE item_template SET unk0 = 0 WHERE entry = 46782;
UPDATE item_template SET unk0 = 0 WHERE entry = 46783;
UPDATE item_template SET unk0 = 0 WHERE entry = 46800;
UPDATE item_template SET unk0 = 0 WHERE entry = 46812;
UPDATE item_template SET unk0 = 0 WHERE entry = 46824;
UPDATE item_template SET unk0 = 0 WHERE entry = 46838;
UPDATE item_template SET unk0 = 0 WHERE entry = 46843;
UPDATE item_template SET unk0 = 0 WHERE entry = 46853;
UPDATE item_template SET unk0 = 0 WHERE entry = 46856;
UPDATE item_template SET unk0 = 0 WHERE entry = 46858;
UPDATE item_template SET unk0 = 14 WHERE entry = 46861;
UPDATE item_template SET unk0 = 0 WHERE entry = 46895;
UPDATE item_template SET unk0 = 0 WHERE entry = 46954;


UPDATE item_template SET displayid = 95884 WHERE entry = 10175;
UPDATE item_template SET displayid = 94443 WHERE entry = 33259;
UPDATE item_template SET displayid = 95827 WHERE entry = 36063;
UPDATE item_template SET displayid = 95826 WHERE entry = 37234;
UPDATE item_template SET displayid = 95835 WHERE entry = 37462;
UPDATE item_template SET displayid = 95824 WHERE entry = 37970;
UPDATE item_template SET displayid = 95819 WHERE entry = 40290;
UPDATE item_template SET displayid = 95818 WHERE entry = 40758;
UPDATE item_template SET displayid = 95770 WHERE entry = 40817;
UPDATE item_template SET displayid = 95769 WHERE entry = 40820;
UPDATE item_template SET displayid = 95768 WHERE entry = 40824;
UPDATE item_template SET displayid = 95928 WHERE entry = 40828;
UPDATE item_template SET displayid = 95927 WHERE entry = 40933;
UPDATE item_template SET displayid = 95817 WHERE entry = 41521;
UPDATE item_template SET displayid = 95816 WHERE entry = 42843;
UPDATE item_template SET displayid = 95814 WHERE entry = 42850;
UPDATE item_template SET displayid = 95886 WHERE entry = 43367;
UPDATE item_template SET displayid = 95813 WHERE entry = 43859;
UPDATE item_template SET displayid = 95812 WHERE entry = 43882;
UPDATE item_template SET displayid = 95811 WHERE entry = 43971;
UPDATE item_template SET displayid = 95803 WHERE entry = 45860;
UPDATE item_template SET displayid = 95825 WHERE entry = 37294;

UPDATE item_template SET subclass = 11 WHERE entry = 22345;
UPDATE item_template SET subclass = 11 WHERE entry = 37573;
UPDATE item_template SET subclass = 11 WHERE entry = 37574;
UPDATE item_template SET subclass = 11 WHERE entry = 37575;
UPDATE item_template SET subclass = 11 WHERE entry = 38295;
UPDATE item_template SET subclass = 11 WHERE entry = 40822;
UPDATE item_template SET subclass = 11 WHERE entry = 40832;
UPDATE item_template SET subclass = 11 WHERE entry = 40867;
UPDATE item_template SET subclass = 11 WHERE entry = 40875;
UPDATE item_template SET subclass = 11 WHERE entry = 42574;
UPDATE item_template SET subclass = 11 WHERE entry = 42575;
UPDATE item_template SET subclass = 11 WHERE entry = 42576;
UPDATE item_template SET subclass = 11 WHERE entry = 42577;
UPDATE item_template SET subclass = 11 WHERE entry = 42578;
UPDATE item_template SET subclass = 11 WHERE entry = 42579;
UPDATE item_template SET subclass = 11 WHERE entry = 42580;
UPDATE item_template SET subclass = 11 WHERE entry = 42582;
UPDATE item_template SET subclass = 11 WHERE entry = 42583;
UPDATE item_template SET subclass = 11 WHERE entry = 42584;
UPDATE item_template SET subclass = 11 WHERE entry = 42585;
UPDATE item_template SET subclass = 11 WHERE entry = 42587;
UPDATE item_template SET subclass = 11 WHERE entry = 42588;
UPDATE item_template SET subclass = 11 WHERE entry = 42589;
UPDATE item_template SET subclass = 11 WHERE entry = 42591;
UPDATE item_template SET subclass = 11 WHERE entry = 42593;
UPDATE item_template SET subclass = 11 WHERE entry = 42594;
UPDATE item_template SET subclass = 11 WHERE entry = 42595;
UPDATE item_template SET subclass = 11 WHERE entry = 42596;
UPDATE item_template SET subclass = 11 WHERE entry = 42597;
UPDATE item_template SET subclass = 11 WHERE entry = 42598;
UPDATE item_template SET subclass = 11 WHERE entry = 42599;
UPDATE item_template SET subclass = 11 WHERE entry = 42601;
UPDATE item_template SET subclass = 11 WHERE entry = 42602;
UPDATE item_template SET subclass = 11 WHERE entry = 42603;
UPDATE item_template SET subclass = 11 WHERE entry = 42604;
UPDATE item_template SET subclass = 11 WHERE entry = 42606;
UPDATE item_template SET subclass = 11 WHERE entry = 42607;
UPDATE item_template SET subclass = 11 WHERE entry = 42608;
UPDATE item_template SET subclass = 11 WHERE entry = 42609;
UPDATE item_template SET subclass = 11 WHERE entry = 42611;
UPDATE item_template SET subclass = 11 WHERE entry = 42612;
UPDATE item_template SET subclass = 11 WHERE entry = 42613;
UPDATE item_template SET subclass = 11 WHERE entry = 42614;
UPDATE item_template SET subclass = 11 WHERE entry = 42615;
UPDATE item_template SET subclass = 11 WHERE entry = 42616;
UPDATE item_template SET subclass = 11 WHERE entry = 42618;
UPDATE item_template SET subclass = 11 WHERE entry = 42619;
UPDATE item_template SET subclass = 11 WHERE entry = 42620;
UPDATE item_template SET subclass = 11 WHERE entry = 42621;
UPDATE item_template SET subclass = 11 WHERE entry = 42622;
UPDATE item_template SET subclass = 11 WHERE entry = 42851;
UPDATE item_template SET subclass = 11 WHERE entry = 42852;
UPDATE item_template SET subclass = 11 WHERE entry = 42853;
UPDATE item_template SET subclass = 11 WHERE entry = 42854;
UPDATE item_template SET subclass = 11 WHERE entry = 45114;
UPDATE item_template SET subclass = 11 WHERE entry = 45144;
UPDATE item_template SET subclass = 11 WHERE entry = 45145;
UPDATE item_template SET subclass = 11 WHERE entry = 45169;
UPDATE item_template SET subclass = 11 WHERE entry = 45254;
UPDATE item_template SET subclass = 11 WHERE entry = 45255;
UPDATE item_template SET subclass = 11 WHERE entry = 45270;
UPDATE item_template SET subclass = 11 WHERE entry = 45436;
UPDATE item_template SET subclass = 11 WHERE entry = 45509;
UPDATE item_template SET subclass = 11 WHERE entry = 45510;
UPDATE item_template SET subclass = 0 WHERE entry = 45546;
UPDATE item_template SET subclass = 11 WHERE entry = 46138;
UPDATE item_template SET subclass = 0 WHERE entry = 44323;
UPDATE item_template SET subclass = 0 WHERE entry = 44324;

UPDATE item_template SET class = 4 WHERE entry = 44323;
UPDATE item_template SET class = 4 WHERE entry = 44324;
UPDATE item_template SET AllowableRace = 32767 WHERE entry = 21776;

UPDATE item_template SET InventoryType = 5 WHERE entry = 56113;
UPDATE item_template SET InventoryType = 5 WHERE entry = 56442;

UPDATE item_template SET sheath = 1 WHERE entry = 54985;
UPDATE item_template SET sheath = 4 WHERE entry = 55041;
UPDATE item_template SET sheath = 4 WHERE entry = 55042;
UPDATE item_template SET sheath = 1 WHERE entry = 55052;
UPDATE item_template SET sheath = 4 WHERE entry = 55070;
UPDATE item_template SET sheath = 0 WHERE entry = 52565;
UPDATE item_template SET sheath = 2 WHERE entry = 55246;

UPDATE item_template SET material = 4 WHERE entry = 54593;
UPDATE item_template SET material = 4 WHERE entry = 54594;
UPDATE item_template SET material = 4 WHERE entry = 54595;
UPDATE item_template SET material = 4 WHERE entry = 54596;
UPDATE item_template SET material = 4 WHERE entry = 54597;
UPDATE item_template SET material = 4 WHERE entry = 54598;
UPDATE item_template SET material = 4 WHERE entry = 54599;
UPDATE item_template SET material = 4 WHERE entry = 54600;
UPDATE item_template SET material = 4 WHERE entry = 54601;
UPDATE item_template SET material = 4 WHERE entry = 54602;
UPDATE item_template SET material = 4 WHERE entry = 54603;
UPDATE item_template SET material = 4 WHERE entry = 54604;
UPDATE item_template SET material = 4 WHERE entry = 54605;

UPDATE item_template SET unk0 = 0 WHERE entry = 47831;
UPDATE item_template SET unk0 = 0 WHERE entry = 47833;
UPDATE item_template SET unk0 = 0 WHERE entry = 48104;
UPDATE item_template SET unk0 = 0 WHERE entry = 48106;
UPDATE item_template SET unk0 = 0 WHERE entry = 48110;
UPDATE item_template SET unk0 = 0 WHERE entry = 48128;
UPDATE item_template SET unk0 = 0 WHERE entry = 48249;
UPDATE item_template SET unk0 = 0 WHERE entry = 48525;
UPDATE item_template SET unk0 = 0 WHERE entry = 48665;
UPDATE item_template SET unk0 = 0 WHERE entry = 48679;
UPDATE item_template SET unk0 = 0 WHERE entry = 48681;
UPDATE item_template SET unk0 = 0 WHERE entry = 48720;
UPDATE item_template SET unk0 = 0 WHERE entry = 48857;
UPDATE item_template SET unk0 = 0 WHERE entry = 48935;
UPDATE item_template SET unk0 = 0 WHERE entry = 48937;
UPDATE item_template SET unk0 = 0 WHERE entry = 48939;
UPDATE item_template SET unk0 = 0 WHERE entry = 48941;
UPDATE item_template SET unk0 = 0 WHERE entry = 48943;
UPDATE item_template SET unk0 = 0 WHERE entry = 48951;
UPDATE item_template SET unk0 = 0 WHERE entry = 48953;
UPDATE item_template SET unk0 = 0 WHERE entry = 49008;
UPDATE item_template SET unk0 = 0 WHERE entry = 49012;
UPDATE item_template SET unk0 = 0 WHERE entry = 49014;
UPDATE item_template SET unk0 = 0 WHERE entry = 49026;
UPDATE item_template SET unk0 = 0 WHERE entry = 49030;
UPDATE item_template SET unk0 = 0 WHERE entry = 49032;
UPDATE item_template SET unk0 = 0 WHERE entry = 49034;
UPDATE item_template SET unk0 = 0 WHERE entry = 49036;
UPDATE item_template SET unk0 = 0 WHERE entry = 49038;
UPDATE item_template SET unk0 = 0 WHERE entry = 49040;
UPDATE item_template SET unk0 = 0 WHERE entry = 49042;
UPDATE item_template SET unk0 = 0 WHERE entry = 49056;
UPDATE item_template SET unk0 = 0 WHERE entry = 49058;
UPDATE item_template SET unk0 = 0 WHERE entry = 49060;
UPDATE item_template SET unk0 = 0 WHERE entry = 49062;
UPDATE item_template SET unk0 = 0 WHERE entry = 49064;
UPDATE item_template SET unk0 = 0 WHERE entry = 49068;
UPDATE item_template SET unk0 = 0 WHERE entry = 49082;
UPDATE item_template SET unk0 = 0 WHERE entry = 49084;
UPDATE item_template SET unk0 = 0 WHERE entry = 49088;
UPDATE item_template SET unk0 = 0 WHERE entry = 49092;
UPDATE item_template SET unk0 = 0 WHERE entry = 49094;
UPDATE item_template SET unk0 = 0 WHERE entry = 49102;
UPDATE item_template SET unk0 = 0 WHERE entry = 49104;
UPDATE item_template SET unk0 = 0 WHERE entry = 49132;
UPDATE item_template SET unk0 = 0 WHERE entry = 49134;
UPDATE item_template SET unk0 = 0 WHERE entry = 49136;
UPDATE item_template SET unk0 = 0 WHERE entry = 49138;
UPDATE item_template SET unk0 = 0 WHERE entry = 49140;
UPDATE item_template SET unk0 = 0 WHERE entry = 49144;
UPDATE item_template SET unk0 = 0 WHERE entry = 49150;
UPDATE item_template SET unk0 = 0 WHERE entry = 49162;
UPDATE item_template SET unk0 = 0 WHERE entry = 49164;
UPDATE item_template SET unk0 = 0 WHERE entry = 49166;
UPDATE item_template SET unk0 = 0 WHERE entry = 49168;
UPDATE item_template SET unk0 = 0 WHERE entry = 49170;
UPDATE item_template SET unk0 = 0 WHERE entry = 49172;
UPDATE item_template SET unk0 = 0 WHERE entry = 49174;
UPDATE item_template SET unk0 = 0 WHERE entry = 49176;
UPDATE item_template SET unk0 = 0 WHERE entry = 49194;
UPDATE item_template SET unk0 = 0 WHERE entry = 49195;
UPDATE item_template SET unk0 = 0 WHERE entry = 49196;
UPDATE item_template SET unk0 = 0 WHERE entry = 49197;
UPDATE item_template SET unk0 = 0 WHERE entry = 49199;
UPDATE item_template SET unk0 = 0 WHERE entry = 49202;
UPDATE item_template SET unk0 = 0 WHERE entry = 49221;
UPDATE item_template SET unk0 = 0 WHERE entry = 49222;
UPDATE item_template SET unk0 = 0 WHERE entry = 49226;
UPDATE item_template SET unk0 = 0 WHERE entry = 49230;
UPDATE item_template SET unk0 = 0 WHERE entry = 49240;
UPDATE item_template SET unk0 = 0 WHERE entry = 49356;
UPDATE item_template SET unk0 = 0 WHERE entry = 49596;
UPDATE item_template SET unk0 = 0 WHERE entry = 49599;
UPDATE item_template SET unk0 = 0 WHERE entry = 49642;
UPDATE item_template SET unk0 = 0 WHERE entry = 49667;
UPDATE item_template SET unk0 = 0 WHERE entry = 49771;
UPDATE item_template SET unk0 = 0 WHERE entry = 49782;
UPDATE item_template SET unk0 = 0 WHERE entry = 49869;
UPDATE item_template SET unk0 = 0 WHERE entry = 49874;
UPDATE item_template SET unk0 = 0 WHERE entry = 49880;
UPDATE item_template SET unk0 = 0 WHERE entry = 49884;
UPDATE item_template SET unk0 = 0 WHERE entry = 50045;
UPDATE item_template SET unk0 = 0 WHERE entry = 50053;
UPDATE item_template SET unk0 = 0 WHERE entry = 50077;
UPDATE item_template SET unk0 = 0 WHERE entry = 50093;
UPDATE item_template SET unk0 = 0 WHERE entry = 50125;
UPDATE item_template SET unk0 = 0 WHERE entry = 50130;
UPDATE item_template SET unk0 = 0 WHERE entry = 50163;
UPDATE item_template SET unk0 = 0 WHERE entry = 50226;
UPDATE item_template SET unk0 = 0 WHERE entry = 50231;
UPDATE item_template SET unk0 = 0 WHERE entry = 50274;
UPDATE item_template SET unk0 = 0 WHERE entry = 51317;
UPDATE item_template SET unk0 = 0 WHERE entry = 51318;
UPDATE item_template SET unk0 = 0 WHERE entry = 51319;
UPDATE item_template SET unk0 = 0 WHERE entry = 51320;
UPDATE item_template SET unk0 = 0 WHERE entry = 51321;
UPDATE item_template SET unk0 = 0 WHERE entry = 51957;
UPDATE item_template SET unk0 = 0 WHERE entry = 52065;
UPDATE item_template SET unk0 = 0 WHERE entry = 52070;
UPDATE item_template SET unk0 = 0 WHERE entry = 52201;
UPDATE item_template SET unk0 = 0 WHERE entry = 52251;
UPDATE item_template SET unk0 = 0 WHERE entry = 52253;
UPDATE item_template SET unk0 = 0 WHERE entry = 52255;
UPDATE item_template SET unk0 = 0 WHERE entry = 52257;
UPDATE item_template SET unk0 = 0 WHERE entry = 52258;
UPDATE item_template SET unk0 = 0 WHERE entry = 52259;
UPDATE item_template SET unk0 = 0 WHERE entry = 52260;
UPDATE item_template SET unk0 = 0 WHERE entry = 52261;
UPDATE item_template SET unk0 = 0 WHERE entry = 52262;
UPDATE item_template SET unk0 = 0 WHERE entry = 52263;
UPDATE item_template SET unk0 = 0 WHERE entry = 52264;
UPDATE item_template SET unk0 = 0 WHERE entry = 52265;
UPDATE item_template SET unk0 = 0 WHERE entry = 52266;
UPDATE item_template SET unk0 = 0 WHERE entry = 52267;
UPDATE item_template SET unk0 = 0 WHERE entry = 52268;
UPDATE item_template SET unk0 = 0 WHERE entry = 52269;
UPDATE item_template SET unk0 = 0 WHERE entry = 52283;
UPDATE item_template SET unk0 = 0 WHERE entry = 52304;
UPDATE item_template SET unk0 = 0 WHERE entry = 52488;
UPDATE item_template SET unk0 = 0 WHERE entry = 52504;
UPDATE item_template SET unk0 = 0 WHERE entry = 52682;
UPDATE item_template SET unk0 = 0 WHERE entry = 52710;
UPDATE item_template SET unk0 = 6 WHERE entry = 52716;
UPDATE item_template SET unk0 = 0 WHERE entry = 52973;
UPDATE item_template SET unk0 = 0 WHERE entry = 53052;
UPDATE item_template SET unk0 = 0 WHERE entry = 53054;
UPDATE item_template SET unk0 = 0 WHERE entry = 53059;
UPDATE item_template SET unk0 = 0 WHERE entry = 53061;
UPDATE item_template SET unk0 = 0 WHERE entry = 53073;
UPDATE item_template SET unk0 = 0 WHERE entry = 53074;
UPDATE item_template SET unk0 = 0 WHERE entry = 53635;
UPDATE item_template SET unk0 = 0 WHERE entry = 53636;
UPDATE item_template SET unk0 = 0 WHERE entry = 53794;
UPDATE item_template SET unk0 = 0 WHERE entry = 54214;
UPDATE item_template SET unk0 = 0 WHERE entry = 54216;
UPDATE item_template SET unk0 = 0 WHERE entry = 54217;
UPDATE item_template SET unk0 = 0 WHERE entry = 54344;
UPDATE item_template SET unk0 = 0 WHERE entry = 54437;
UPDATE item_template SET unk0 = 0 WHERE entry = 54438;
UPDATE item_template SET unk0 = 0 WHERE entry = 54453;
UPDATE item_template SET unk0 = 0 WHERE entry = 54458;
UPDATE item_template SET unk0 = 0 WHERE entry = 54459;
UPDATE item_template SET unk0 = 0 WHERE entry = 54460;
UPDATE item_template SET unk0 = 0 WHERE entry = 54462;
UPDATE item_template SET unk0 = 0 WHERE entry = 54466;
UPDATE item_template SET unk0 = 0 WHERE entry = 54469;
UPDATE item_template SET unk0 = 0 WHERE entry = 54470;
UPDATE item_template SET unk0 = -1 WHERE entry = 54601;
UPDATE item_template SET unk0 = -1 WHERE entry = 54602;
UPDATE item_template SET unk0 = -1 WHERE entry = 54603;
UPDATE item_template SET unk0 = -1 WHERE entry = 54604;
UPDATE item_template SET unk0 = -1 WHERE entry = 54605;
UPDATE item_template SET unk0 = 0 WHERE entry = 54613;
UPDATE item_template SET unk0 = 0 WHERE entry = 54615;
UPDATE item_template SET unk0 = 0 WHERE entry = 54618;
UPDATE item_template SET unk0 = 0 WHERE entry = 54640;
UPDATE item_template SET unk0 = 0 WHERE entry = 54646;
UPDATE item_template SET unk0 = 0 WHERE entry = 54785;
UPDATE item_template SET unk0 = 8 WHERE entry = 54806;
UPDATE item_template SET unk0 = 0 WHERE entry = 54813;
UPDATE item_template SET unk0 = 0 WHERE entry = 54817;
UPDATE item_template SET unk0 = 0 WHERE entry = 54818;
UPDATE item_template SET unk0 = 0 WHERE entry = 54819;
UPDATE item_template SET unk0 = 0 WHERE entry = 54828;
UPDATE item_template SET unk0 = 0 WHERE entry = 54840;
UPDATE item_template SET unk0 = 0 WHERE entry = 54842;
UPDATE item_template SET unk0 = 0 WHERE entry = 54843;
UPDATE item_template SET unk0 = 0 WHERE entry = 54844;
UPDATE item_template SET unk0 = 0 WHERE entry = 54851;
UPDATE item_template SET unk0 = 0 WHERE entry = 54957;
UPDATE item_template SET unk0 = 0 WHERE entry = 54958;
UPDATE item_template SET unk0 = 0 WHERE entry = 55121;
UPDATE item_template SET unk0 = 0 WHERE entry = 55143;
UPDATE item_template SET unk0 = 0 WHERE entry = 55145;
UPDATE item_template SET unk0 = 0 WHERE entry = 55158;
UPDATE item_template SET unk0 = 0 WHERE entry = 55163;
UPDATE item_template SET unk0 = 0 WHERE entry = 55164;
UPDATE item_template SET unk0 = 0 WHERE entry = 55165;
UPDATE item_template SET unk0 = 0 WHERE entry = 55171;
UPDATE item_template SET unk0 = 0 WHERE entry = 55177;
UPDATE item_template SET unk0 = 0 WHERE entry = 55188;
UPDATE item_template SET unk0 = 0 WHERE entry = 55189;
UPDATE item_template SET unk0 = 0 WHERE entry = 55190;
UPDATE item_template SET unk0 = 0 WHERE entry = 55220;
UPDATE item_template SET unk0 = 0 WHERE entry = 55809;
UPDATE item_template SET unk0 = 0 WHERE entry = 55972;
UPDATE item_template SET unk0 = 0 WHERE entry = 56020;
UPDATE item_template SET unk0 = 0 WHERE entry = 56024;
UPDATE item_template SET unk0 = 0 WHERE entry = 56167;
UPDATE item_template SET unk0 = 0 WHERE entry = 56168;
UPDATE item_template SET unk0 = 0 WHERE entry = 56169;
UPDATE item_template SET unk0 = 0 WHERE entry = 56188;
UPDATE item_template SET unk0 = 0 WHERE entry = 56227;
UPDATE item_template SET unk0 = 1 WHERE entry = 56233;
UPDATE item_template SET unk0 = 0 WHERE entry = 56243;
UPDATE item_template SET unk0 = 0 WHERE entry = 56244;
UPDATE item_template SET unk0 = 0 WHERE entry = 56245;
UPDATE item_template SET unk0 = 0 WHERE entry = 56247;
UPDATE item_template SET unk0 = 0 WHERE entry = 56248;
UPDATE item_template SET unk0 = 0 WHERE entry = 56576;
UPDATE item_template SET unk0 = 0 WHERE entry = 56850;
UPDATE item_template SET unk0 = 0 WHERE entry = 57138;
UPDATE item_template SET unk0 = 0 WHERE entry = 57412;

UPDATE item_template SET displayid = 95896 WHERE entry = 50231;
UPDATE item_template SET displayid = 93963 WHERE entry = 51956;
UPDATE item_template SET displayid = 95268 WHERE entry = 52917;
UPDATE item_template SET displayid = 95271 WHERE entry = 52928;
UPDATE item_template SET displayid = 95270 WHERE entry = 52931;
UPDATE item_template SET displayid = 94844 WHERE entry = 52971;
UPDATE item_template SET displayid = 94451 WHERE entry = 53572;
UPDATE item_template SET displayid = 94453 WHERE entry = 53959;
UPDATE item_template SET displayid = 95878 WHERE entry = 54493;
UPDATE item_template SET displayid = 95877 WHERE entry = 54496;
UPDATE item_template SET displayid = 94442 WHERE entry = 54930;
UPDATE item_template SET displayid = 94444 WHERE entry = 54934;
UPDATE item_template SET displayid = 95754 WHERE entry = 55027;
UPDATE item_template SET displayid = 95898 WHERE entry = 55035;
UPDATE item_template SET displayid = 96009 WHERE entry = 55077;
UPDATE item_template SET displayid = 96008 WHERE entry = 55085;
UPDATE item_template SET displayid = 95941 WHERE entry = 55248;
UPDATE item_template SET displayid = 95947 WHERE entry = 55783;
UPDATE item_template SET displayid = 95776 WHERE entry = 55784;
UPDATE item_template SET displayid = 95752 WHERE entry = 55785;
UPDATE item_template SET displayid = 95756 WHERE entry = 55797;
UPDATE item_template SET displayid = 95935 WHERE entry = 55798;
UPDATE item_template SET displayid = 95933 WHERE entry = 55844;
UPDATE item_template SET displayid = 95949 WHERE entry = 55852;
UPDATE item_template SET displayid = 95958 WHERE entry = 55877;
UPDATE item_template SET displayid = 94426 WHERE entry = 55901;
UPDATE item_template SET displayid = 95751 WHERE entry = 55996;
UPDATE item_template SET displayid = 95841 WHERE entry = 56113;
UPDATE item_template SET displayid = 95942 WHERE entry = 56279;
UPDATE item_template SET displayid = 95753 WHERE entry = 56321;
UPDATE item_template SET displayid = 95774 WHERE entry = 56323;
UPDATE item_template SET displayid = 95936 WHERE entry = 56334;
UPDATE item_template SET displayid = 95759 WHERE entry = 56336;
UPDATE item_template SET displayid = 95948 WHERE entry = 56372;
UPDATE item_template SET displayid = 95959 WHERE entry = 56401;
UPDATE item_template SET displayid = 95839 WHERE entry = 56442;
UPDATE item_template SET displayid = 95922 WHERE entry = 56543;
UPDATE item_template SET displayid = 95930 WHERE entry = 56547;
UPDATE item_template SET displayid = 95921 WHERE entry = 56553;
UPDATE item_template SET displayid = 95929 WHERE entry = 56557;
UPDATE item_template SET displayid = 95892 WHERE entry = 56862;
UPDATE item_template SET displayid = 95893 WHERE entry = 56866;
UPDATE item_template SET displayid = 95912 WHERE entry = 57116;
UPDATE item_template SET displayid = 94608 WHERE entry = 57436;
UPDATE item_template SET displayid = 94617 WHERE entry = 57443;
UPDATE item_template SET displayid = 94422 WHERE entry = 57516;
UPDATE item_template SET displayid = 94417 WHERE entry = 57517;
UPDATE item_template SET displayid = 95946 WHERE entry = 56316;

UPDATE item_template SET class = 4 WHERE entry = 53057;
UPDATE item_template SET class = 4 WHERE entry = 55248;
UPDATE item_template SET class = 4 WHERE entry = 55800;
UPDATE item_template SET class = 4 WHERE entry = 55821;
UPDATE item_template SET class = 4 WHERE entry = 55852;
UPDATE item_template SET class = 4 WHERE entry = 56279;
UPDATE item_template SET class = 4 WHERE entry = 56337;
UPDATE item_template SET class = 4 WHERE entry = 56350;
UPDATE item_template SET class = 4 WHERE entry = 56372;
UPDATE item_template SET class = 4 WHERE entry = 57297;
UPDATE item_template SET class = 4 WHERE entry = 56316;

UPDATE item_template SET subclass = 11 WHERE entry = 46978;
UPDATE item_template SET subclass = 11 WHERE entry = 47661;
UPDATE item_template SET subclass = 11 WHERE entry = 47662;
UPDATE item_template SET subclass = 11 WHERE entry = 47664;
UPDATE item_template SET subclass = 11 WHERE entry = 47665;
UPDATE item_template SET subclass = 11 WHERE entry = 47666;
UPDATE item_template SET subclass = 11 WHERE entry = 47667;
UPDATE item_template SET subclass = 11 WHERE entry = 47668;
UPDATE item_template SET subclass = 11 WHERE entry = 47670;
UPDATE item_template SET subclass = 11 WHERE entry = 47671;
UPDATE item_template SET subclass = 11 WHERE entry = 47672;
UPDATE item_template SET subclass = 11 WHERE entry = 47673;
UPDATE item_template SET subclass = 11 WHERE entry = 50454;
UPDATE item_template SET subclass = 11 WHERE entry = 50455;
UPDATE item_template SET subclass = 11 WHERE entry = 50456;
UPDATE item_template SET subclass = 11 WHERE entry = 50457;
UPDATE item_template SET subclass = 11 WHERE entry = 50458;
UPDATE item_template SET subclass = 11 WHERE entry = 50459;
UPDATE item_template SET subclass = 11 WHERE entry = 50460;
UPDATE item_template SET subclass = 11 WHERE entry = 50461;
UPDATE item_template SET subclass = 11 WHERE entry = 50462;
UPDATE item_template SET subclass = 11 WHERE entry = 50463;
UPDATE item_template SET subclass = 11 WHERE entry = 50464;
UPDATE item_template SET subclass = 11 WHERE entry = 51417;
UPDATE item_template SET subclass = 11 WHERE entry = 51423;
UPDATE item_template SET subclass = 11 WHERE entry = 51429;
UPDATE item_template SET subclass = 11 WHERE entry = 51437;
UPDATE item_template SET subclass = 11 WHERE entry = 51472;
UPDATE item_template SET subclass = 11 WHERE entry = 51478;
UPDATE item_template SET subclass = 11 WHERE entry = 51501;
UPDATE item_template SET subclass = 11 WHERE entry = 51507;
UPDATE item_template SET subclass = 11 WHERE entry = 51513;
UPDATE item_template SET subclass = 11 WHERE entry = 55248;
UPDATE item_template SET subclass = 11 WHERE entry = 55783;
UPDATE item_template SET subclass = 11 WHERE entry = 55800;
UPDATE item_template SET subclass = 11 WHERE entry = 55821;
UPDATE item_template SET subclass = 11 WHERE entry = 55852;
UPDATE item_template SET subclass = 11 WHERE entry = 56279;
UPDATE item_template SET subclass = 11 WHERE entry = 56337;
UPDATE item_template SET subclass = 11 WHERE entry = 56350;
UPDATE item_template SET subclass = 11 WHERE entry = 56372;
UPDATE item_template SET subclass = 11 WHERE entry = 57297;
UPDATE item_template SET subclass = 11 WHERE entry = 56316;
UPDATE item_template SET displayid = 96019 WHERE entry = 57787;
UPDATE item_template SET displayid = 95790 WHERE entry = 57915;
UPDATE item_template SET displayid = 95859 WHERE entry = 58098;
UPDATE item_template SET displayid = 95850 WHERE entry = 58103;
UPDATE item_template SET displayid = 95789 WHERE entry = 58106;
UPDATE item_template SET displayid = 95791 WHERE entry = 58107;
UPDATE item_template SET displayid = 95856 WHERE entry = 58108;
UPDATE item_template SET displayid = 95794 WHERE entry = 58110;
UPDATE item_template SET displayid = 95917 WHERE entry = 58133;
UPDATE item_template SET displayid = 95902 WHERE entry = 58139;
UPDATE item_template SET displayid = 95920 WHERE entry = 58150;
UPDATE item_template SET displayid = 95876 WHERE entry = 58155;
UPDATE item_template SET displayid = 95874 WHERE entry = 58161;
UPDATE item_template SET displayid = 96043 WHERE entry = 58181;
UPDATE item_template SET displayid = 94604 WHERE entry = 58300;
UPDATE item_template SET displayid = 94458 WHERE entry = 58466;
UPDATE item_template SET displayid = 94439 WHERE entry = 59272;
UPDATE item_template SET displayid = 73754 WHERE entry = 59303;
UPDATE item_template SET displayid = 95904 WHERE entry = 59469;
UPDATE item_template SET displayid = 94441 WHERE entry = 73984;
UPDATE item_template SET displayid = 95903 WHERE entry = 59490;
UPDATE item_template SET displayid = 94611 WHERE entry = 59592;
UPDATE item_template SET displayid = 94618 WHERE entry = 60899;
UPDATE item_template SET displayid = 94531 WHERE entry = 61330;
UPDATE item_template SET displayid = 94534 WHERE entry = 61331;
UPDATE item_template SET displayid = 94538 WHERE entry = 61332;
UPDATE item_template SET displayid = 94536 WHERE entry = 61333;
UPDATE item_template SET displayid = 95984 WHERE entry = 61388;
UPDATE item_template SET displayid = 95985 WHERE entry = 61389;
UPDATE item_template SET displayid = 95983 WHERE entry = 61390;
UPDATE item_template SET displayid = 95986 WHERE entry = 61391;
UPDATE item_template SET displayid = 94424 WHERE entry = 61522;
UPDATE item_template SET displayid = 94416 WHERE entry = 61524;
UPDATE item_template SET displayid = 94384 WHERE entry = 61589;
UPDATE item_template SET displayid = 94440 WHERE entry = 61632;
UPDATE item_template SET displayid = 94435 WHERE entry = 62158;
UPDATE item_template SET displayid = 94434 WHERE entry = 62162;
UPDATE item_template SET displayid = 95875 WHERE entry = 62356;
UPDATE item_template SET displayid = 95798 WHERE entry = 62359;
UPDATE item_template SET displayid = 95795 WHERE entry = 62382;
UPDATE item_template SET displayid = 95847 WHERE entry = 62410;
UPDATE item_template SET displayid = 95849 WHERE entry = 62428;
UPDATE item_template SET displayid = 95796 WHERE entry = 62438;
UPDATE item_template SET displayid = 95763 WHERE entry = 63180;
UPDATE item_template SET displayid = 96007 WHERE entry = 63300;
UPDATE item_template SET displayid = 95950 WHERE entry = 63460;
UPDATE item_template SET displayid = 95842 WHERE entry = 63471;
UPDATE item_template SET displayid = 95760 WHERE entry = 63474;
UPDATE item_template SET displayid = 95945 WHERE entry = 63480;
UPDATE item_template SET displayid = 95937 WHERE entry = 63487;
UPDATE item_template SET displayid = 95907 WHERE entry = 63505;
UPDATE item_template SET displayid = 95988 WHERE entry = 63769;
UPDATE item_template SET displayid = 95989 WHERE entry = 63772;
UPDATE item_template SET displayid = 95990 WHERE entry = 63776;
UPDATE item_template SET displayid = 95991 WHERE entry = 63888;
UPDATE item_template SET displayid = 95992 WHERE entry = 63891;
UPDATE item_template SET displayid = 94452 WHERE entry = 64508;
UPDATE item_template SET displayid = 94450 WHERE entry = 64512;
UPDATE item_template SET displayid = 95931 WHERE entry = 64593;
UPDATE item_template SET displayid = 94448 WHERE entry = 64610;
UPDATE item_template SET displayid = 94456 WHERE entry = 64611;
UPDATE item_template SET displayid = 95932 WHERE entry = 64624;
UPDATE item_template SET displayid = 95953 WHERE entry = 64671;
UPDATE item_template SET displayid = 95951 WHERE entry = 64672;
UPDATE item_template SET displayid = 95954 WHERE entry = 64673;
UPDATE item_template SET displayid = 95955 WHERE entry = 64674;
UPDATE item_template SET displayid = 95952 WHERE entry = 64676;
UPDATE item_template SET displayid = 95963 WHERE entry = 64695;
UPDATE item_template SET displayid = 95965 WHERE entry = 64744;
UPDATE item_template SET displayid = 94520 WHERE entry = 65135;
UPDATE item_template SET displayid = 95620 WHERE entry = 65171;
UPDATE item_template SET displayid = 95993 WHERE entry = 65386;
UPDATE item_template SET displayid = 94847 WHERE entry = 65469;
UPDATE item_template SET displayid = 94846 WHERE entry = 65472;
UPDATE item_template SET displayid = 94845 WHERE entry = 65475;
UPDATE item_template SET displayid = 95957 WHERE entry = 65582;
UPDATE item_template SET displayid = 95778 WHERE entry = 65740;
UPDATE item_template SET displayid = 95485 WHERE entry = 65812;
UPDATE item_template SET displayid = 94397 WHERE entry = 65920;
UPDATE item_template SET displayid = 94420 WHERE entry = 65988;
UPDATE item_template SET displayid = 94398 WHERE entry = 66017;
UPDATE item_template SET displayid = 94419 WHERE entry = 66041;
UPDATE item_template SET displayid = 95911 WHERE entry = 66067;
UPDATE item_template SET displayid = 95914 WHERE entry = 66907;
UPDATE item_template SET displayid = 95885 WHERE entry = 66912;
UPDATE item_template SET displayid = 95944 WHERE entry = 66961;
UPDATE item_template SET displayid = 95938 WHERE entry = 66988;
UPDATE item_template SET displayid = 95758 WHERE entry = 66989;
UPDATE item_template SET displayid = 95943 WHERE entry = 67059;
UPDATE item_template SET displayid = 95775 WHERE entry = 67109;
UPDATE item_template SET displayid = 95840 WHERE entry = 67121;
UPDATE item_template SET displayid = 94459 WHERE entry = 67203;
UPDATE item_template SET displayid = 94717 WHERE entry = 67388;
UPDATE item_template SET displayid = 95964 WHERE entry = 67449;
UPDATE item_template SET displayid = 95962 WHERE entry = 67450;
UPDATE item_template SET displayid = 94537 WHERE entry = 67455;
UPDATE item_template SET displayid = 94533 WHERE entry = 67456;
UPDATE item_template SET displayid = 94539 WHERE entry = 67458;
UPDATE item_template SET displayid = 94535 WHERE entry = 67459;
UPDATE item_template SET displayid = 95966 WHERE entry = 67460;
UPDATE item_template SET displayid = 94441 WHERE entry = 59309;

UPDATE item_template SET unk0 = 0 WHERE entry = 58147;
UPDATE item_template SET unk0 = 0 WHERE entry = 58169;
UPDATE item_template SET unk0 = 0 WHERE entry = 58177;
UPDATE item_template SET unk0 = 0 WHERE entry = 58254;
UPDATE item_template SET unk0 = 0 WHERE entry = 58865;
UPDATE item_template SET unk0 = 0 WHERE entry = 58866;
UPDATE item_template SET unk0 = 0 WHERE entry = 59226;
UPDATE item_template SET unk0 = 0 WHERE entry = 60297;
UPDATE item_template SET unk0 = 0 WHERE entry = 60376;
UPDATE item_template SET unk0 = 0 WHERE entry = 60773;
UPDATE item_template SET unk0 = 0 WHERE entry = 60859;
UPDATE item_template SET unk0 = 0 WHERE entry = 60860;
UPDATE item_template SET unk0 = 0 WHERE entry = 60865;
UPDATE item_template SET unk0 = 0 WHERE entry = 60868;
UPDATE item_template SET unk0 = 0 WHERE entry = 60869;
UPDATE item_template SET unk0 = 0 WHERE entry = 60957;
UPDATE item_template SET unk0 = 0 WHERE entry = 61044;
UPDATE item_template SET unk0 = 0 WHERE entry = 61321;
UPDATE item_template SET unk0 = 0 WHERE entry = 61323;
UPDATE item_template SET unk0 = 0 WHERE entry = 61376;
UPDATE item_template SET unk0 = 0 WHERE entry = 61385;
UPDATE item_template SET unk0 = 0 WHERE entry = 61509;
UPDATE item_template SET unk0 = 0 WHERE entry = 61929;
UPDATE item_template SET unk0 = 0 WHERE entry = 61930;
UPDATE item_template SET unk0 = 0 WHERE entry = 61975;
UPDATE item_template SET unk0 = 0 WHERE entry = 61976;
UPDATE item_template SET unk0 = 0 WHERE entry = 61977;
UPDATE item_template SET unk0 = 0 WHERE entry = 61979;
UPDATE item_template SET unk0 = 0 WHERE entry = 61980;
UPDATE item_template SET unk0 = 0 WHERE entry = 62054;
UPDATE item_template SET unk0 = 0 WHERE entry = 62137;
UPDATE item_template SET unk0 = 0 WHERE entry = 62228;
UPDATE item_template SET unk0 = 10 WHERE entry = 62283;
UPDATE item_template SET unk0 = 0 WHERE entry = 62286;
UPDATE item_template SET unk0 = 0 WHERE entry = 62287;
UPDATE item_template SET unk0 = 0 WHERE entry = 62288;
UPDATE item_template SET unk0 = 0 WHERE entry = 62289;
UPDATE item_template SET unk0 = 0 WHERE entry = 62290;
UPDATE item_template SET unk0 = 0 WHERE entry = 62298;
UPDATE item_template SET unk0 = 0 WHERE entry = 62508;
UPDATE item_template SET unk0 = 0 WHERE entry = 62607;
UPDATE item_template SET unk0 = 0 WHERE entry = 62610;
UPDATE item_template SET unk0 = 0 WHERE entry = 62611;
UPDATE item_template SET unk0 = 0 WHERE entry = 62705;
UPDATE item_template SET unk0 = 0 WHERE entry = 62763;
UPDATE item_template SET unk0 = 0 WHERE entry = 62764;
UPDATE item_template SET unk0 = 0 WHERE entry = 62765;
UPDATE item_template SET unk0 = 0 WHERE entry = 62766;
UPDATE item_template SET unk0 = 0 WHERE entry = 62767;
UPDATE item_template SET unk0 = 0 WHERE entry = 62773;
UPDATE item_template SET unk0 = 0 WHERE entry = 62776;
UPDATE item_template SET unk0 = 0 WHERE entry = 62777;
UPDATE item_template SET unk0 = 0 WHERE entry = 62789;
UPDATE item_template SET unk0 = 0 WHERE entry = 62792;
UPDATE item_template SET unk0 = 0 WHERE entry = 62793;
UPDATE item_template SET unk0 = 0 WHERE entry = 62794;
UPDATE item_template SET unk0 = 0 WHERE entry = 62813;
UPDATE item_template SET unk0 = 0 WHERE entry = 62912;
UPDATE item_template SET unk0 = 0 WHERE entry = 62913;
UPDATE item_template SET unk0 = 0 WHERE entry = 63071;
UPDATE item_template SET unk0 = 0 WHERE entry = 63104;
UPDATE item_template SET unk0 = 0 WHERE entry = 63122;
UPDATE item_template SET unk0 = 0 WHERE entry = 63133;
UPDATE item_template SET unk0 = 0 WHERE entry = 63134;
UPDATE item_template SET unk0 = 0 WHERE entry = 63141;
UPDATE item_template SET unk0 = 0 WHERE entry = 63248;
UPDATE item_template SET unk0 = 0 WHERE entry = 63392;
UPDATE item_template SET unk0 = 0 WHERE entry = 63415;
UPDATE item_template SET unk0 = 0 WHERE entry = 63416;
UPDATE item_template SET unk0 = 0 WHERE entry = 63420;
UPDATE item_template SET unk0 = 0 WHERE entry = 63481;
UPDATE item_template SET unk0 = 0 WHERE entry = 63539;
UPDATE item_template SET unk0 = 0 WHERE entry = 63541;
UPDATE item_template SET unk0 = 0 WHERE entry = 63685;
UPDATE item_template SET unk0 = 0 WHERE entry = 63699;
UPDATE item_template SET unk0 = 0 WHERE entry = 64493;
UPDATE item_template SET unk0 = 0 WHERE entry = 64494;
UPDATE item_template SET unk0 = 0 WHERE entry = 64667;
UPDATE item_template SET unk0 = 0 WHERE entry = 64668;
UPDATE item_template SET unk0 = 0 WHERE entry = 64997;
UPDATE item_template SET unk0 = 0 WHERE entry = 65460;
UPDATE item_template SET unk0 = 0 WHERE entry = 65501;
UPDATE item_template SET unk0 = 0 WHERE entry = 65502;
UPDATE item_template SET unk0 = 0 WHERE entry = 65505;
UPDATE item_template SET unk0 = 0 WHERE entry = 65506;
UPDATE item_template SET unk0 = 0 WHERE entry = 65509;
UPDATE item_template SET unk0 = 0 WHERE entry = 65511;
UPDATE item_template SET unk0 = 0 WHERE entry = 65512;
UPDATE item_template SET unk0 = 0 WHERE entry = 65513;
UPDATE item_template SET unk0 = 0 WHERE entry = 66053;
UPDATE item_template SET unk0 = 0 WHERE entry = 66067;
UPDATE item_template SET unk0 = 0 WHERE entry = 66070;
UPDATE item_template SET unk0 = 0 WHERE entry = 66073;
UPDATE item_template SET unk0 = 0 WHERE entry = 66075;
UPDATE item_template SET unk0 = 0 WHERE entry = 66076;
UPDATE item_template SET unk0 = 0 WHERE entry = 66080;
UPDATE item_template SET unk0 = 0 WHERE entry = 66918;
UPDATE item_template SET unk0 = 0 WHERE entry = 66944;
UPDATE item_template SET unk0 = 0 WHERE entry = 66945;
UPDATE item_template SET unk0 = 0 WHERE entry = 66946;
UPDATE item_template SET unk0 = 0 WHERE entry = 66947;
UPDATE item_template SET unk0 = 0 WHERE entry = 66948;
UPDATE item_template SET unk0 = 0 WHERE entry = 66949;
UPDATE item_template SET unk0 = 0 WHERE entry = 66950;
UPDATE item_template SET unk0 = 0 WHERE entry = 67107;
UPDATE item_template SET unk0 = 0 WHERE entry = 67232;
UPDATE item_template SET unk0 = 0 WHERE entry = 67241;
UPDATE item_template SET unk0 = 0 WHERE entry = 67247;
UPDATE item_template SET unk0 = 0 WHERE entry = 67385;
UPDATE item_template SET unk0 = 0 WHERE entry = 67386;
UPDATE item_template SET unk0 = 0 WHERE entry = 67388;
UPDATE item_template SET unk0 = 0 WHERE entry = 67391;
UPDATE item_template SET unk0 = 0 WHERE entry = 67397;
UPDATE item_template SET unk0 = 0 WHERE entry = 67398;
UPDATE item_template SET unk0 = 0 WHERE entry = 67399;
UPDATE item_template SET unk0 = 0 WHERE entry = 67400;
UPDATE item_template SET unk0 = 0 WHERE entry = 67401;
UPDATE item_template SET unk0 = 0 WHERE entry = 67402;
UPDATE item_template SET unk0 = 0 WHERE entry = 67403;
UPDATE item_template SET unk0 = 0 WHERE entry = 67404;
UPDATE item_template SET unk0 = 0 WHERE entry = 67405;
UPDATE item_template SET unk0 = 0 WHERE entry = 67406;
UPDATE item_template SET unk0 = 0 WHERE entry = 67407;
UPDATE item_template SET unk0 = 0 WHERE entry = 67408;
UPDATE item_template SET unk0 = 0 WHERE entry = 67409;
UPDATE item_template SET unk0 = 0 WHERE entry = 67410;
UPDATE item_template SET unk0 = 0 WHERE entry = 67411;
UPDATE item_template SET unk0 = 0 WHERE entry = 67412;
UPDATE item_template SET unk0 = 6 WHERE entry = 67436;
UPDATE item_template SET unk0 = 0 WHERE entry = 67482;
UPDATE item_template SET unk0 = 0 WHERE entry = 67483;
UPDATE item_template SET unk0 = 0 WHERE entry = 67484;
UPDATE item_template SET unk0 = 0 WHERE entry = 67485;
UPDATE item_template SET unk0 = 0 WHERE entry = 67486;
UPDATE item_template SET unk0 = 0 WHERE entry = 67487;
UPDATE item_template SET unk0 = 6 WHERE entry = 67604;
UPDATE item_template SET unk0 = 10 WHERE entry = 68005;
UPDATE item_template SET unk0 = 0 WHERE entry = 68039;
UPDATE item_template SET unk0 = 0 WHERE entry = 68136;
UPDATE item_template SET unk0 = 0 WHERE entry = 68196;

UPDATE item_template SET class = 4 WHERE entry = 59626;
UPDATE item_template SET class = 4 WHERE entry = 59637;
UPDATE item_template SET class = 4 WHERE entry = 59640;
UPDATE item_template SET class = 12 WHERE entry = 60501;
UPDATE item_template SET class = 4 WHERE entry = 61399;
UPDATE item_template SET class = 4 WHERE entry = 62240;
UPDATE item_template SET class = 4 WHERE entry = 62241;
UPDATE item_template SET class = 4 WHERE entry = 62242;
UPDATE item_template SET class = 4 WHERE entry = 62243;
UPDATE item_template SET class = 4 WHERE entry = 62244;
UPDATE item_template SET class = 4 WHERE entry = 62245;
UPDATE item_template SET class = 4 WHERE entry = 63480;
UPDATE item_template SET class = 4 WHERE entry = 63487;
UPDATE item_template SET class = 4 WHERE entry = 63769;
UPDATE item_template SET class = 4 WHERE entry = 63772;
UPDATE item_template SET class = 4 WHERE entry = 63776;
UPDATE item_template SET class = 4 WHERE entry = 63888;
UPDATE item_template SET class = 4 WHERE entry = 63891;
UPDATE item_template SET class = 4 WHERE entry = 65812;
UPDATE item_template SET class = 4 WHERE entry = 65879;
UPDATE item_template SET class = 4 WHERE entry = 66048;
UPDATE item_template SET class = 4 WHERE entry = 66049;
UPDATE item_template SET class = 4 WHERE entry = 66912;
UPDATE item_template SET class = 4 WHERE entry = 66961;
UPDATE item_template SET class = 4 WHERE entry = 66988;
UPDATE item_template SET class = 4 WHERE entry = 67059;
UPDATE item_template SET class = 4 WHERE entry = 67110;
UPDATE item_template SET class = 4 WHERE entry = 67388;
UPDATE item_template SET class = 4 WHERE entry = 68609;
UPDATE item_template SET class = 4 WHERE entry = 68612;

UPDATE item_template SET subclass = 11 WHERE entry = 58525;
UPDATE item_template SET subclass = 11 WHERE entry = 59626;
UPDATE item_template SET subclass = 11 WHERE entry = 59637;
UPDATE item_template SET subclass = 11 WHERE entry = 59640;
UPDATE item_template SET subclass = 11 WHERE entry = 61388;
UPDATE item_template SET subclass = 11 WHERE entry = 61389;
UPDATE item_template SET subclass = 11 WHERE entry = 61390;
UPDATE item_template SET subclass = 11 WHERE entry = 61391;
UPDATE item_template SET subclass = 11 WHERE entry = 61399;
UPDATE item_template SET subclass = 11 WHERE entry = 61437;
UPDATE item_template SET subclass = 11 WHERE entry = 61440;
UPDATE item_template SET subclass = 11 WHERE entry = 61655;
UPDATE item_template SET subclass = 11 WHERE entry = 61692;
UPDATE item_template SET subclass = 11 WHERE entry = 61736;
UPDATE item_template SET subclass = 11 WHERE entry = 61902;
UPDATE item_template SET subclass = 11 WHERE entry = 61956;
UPDATE item_template SET subclass = 11 WHERE entry = 61957;
UPDATE item_template SET subclass = 11 WHERE entry = 62240;
UPDATE item_template SET subclass = 11 WHERE entry = 62241;
UPDATE item_template SET subclass = 11 WHERE entry = 62242;
UPDATE item_template SET subclass = 11 WHERE entry = 62243;
UPDATE item_template SET subclass = 11 WHERE entry = 62244;
UPDATE item_template SET subclass = 11 WHERE entry = 62245;
UPDATE item_template SET subclass = 4 WHERE entry = 63450;
UPDATE item_template SET subclass = 11 WHERE entry = 63460;
UPDATE item_template SET subclass = 11 WHERE entry = 63480;
UPDATE item_template SET subclass = 11 WHERE entry = 63487;
UPDATE item_template SET subclass = 11 WHERE entry = 63769;
UPDATE item_template SET subclass = 11 WHERE entry = 63772;
UPDATE item_template SET subclass = 11 WHERE entry = 63776;
UPDATE item_template SET subclass = 11 WHERE entry = 63888;
UPDATE item_template SET subclass = 11 WHERE entry = 63891;
UPDATE item_template SET subclass = 11 WHERE entry = 64671;
UPDATE item_template SET subclass = 11 WHERE entry = 64672;
UPDATE item_template SET subclass = 11 WHERE entry = 64673;
UPDATE item_template SET subclass = 11 WHERE entry = 64674;
UPDATE item_template SET subclass = 11 WHERE entry = 64676;
UPDATE item_template SET subclass = 11 WHERE entry = 64819;
UPDATE item_template SET subclass = 11 WHERE entry = 64820;
UPDATE item_template SET subclass = 11 WHERE entry = 64821;
UPDATE item_template SET subclass = 11 WHERE entry = 64822;
UPDATE item_template SET subclass = 4 WHERE entry = 65469;
UPDATE item_template SET subclass = 4 WHERE entry = 65472;
UPDATE item_template SET subclass = 4 WHERE entry = 65475;
UPDATE item_template SET subclass = 11 WHERE entry = 65812;
UPDATE item_template SET subclass = 11 WHERE entry = 65879;
UPDATE item_template SET subclass = 11 WHERE entry = 66048;
UPDATE item_template SET subclass = 11 WHERE entry = 66049;
UPDATE item_template SET subclass = 11 WHERE entry = 66050;
UPDATE item_template SET subclass = 11 WHERE entry = 66051;
UPDATE item_template SET subclass = 11 WHERE entry = 66912;
UPDATE item_template SET subclass = 11 WHERE entry = 66961;
UPDATE item_template SET subclass = 11 WHERE entry = 66988;
UPDATE item_template SET subclass = 11 WHERE entry = 67059;
UPDATE item_template SET subclass = 11 WHERE entry = 67110;
UPDATE item_template SET subclass = 4 WHERE entry = 68050;
UPDATE item_template SET subclass = 11 WHERE entry = 68609;
UPDATE item_template SET subclass = 11 WHERE entry = 68612;

UPDATE item_template SET sheath = 2 WHERE entry = 59622;
UPDATE item_template SET sheath = 2 WHERE entry = 59625;
UPDATE item_template SET sheath = 2 WHERE entry = 59681;
UPDATE item_template SET sheath = 2 WHERE entry = 59684;
UPDATE item_template SET sheath = 2 WHERE entry = 59778;
UPDATE item_template SET sheath = 3 WHERE entry = 65171;
UPDATE item_template SET sheath = 1 WHERE entry = 65982;
UPDATE item_template SET sheath = 1 WHERE entry = 66660;
UPDATE item_template SET sheath = 1 WHERE entry = 67605;

UPDATE item_template SET material = 4 WHERE entry = 61379;
UPDATE item_template SET material = 4 WHERE entry = 65902;

UPDATE item_template SET InventoryType = 5 WHERE entry = 63471;
UPDATE item_template SET InventoryType = 13 WHERE entry = 65469;
UPDATE item_template SET InventoryType = 13 WHERE entry = 65472;
UPDATE item_template SET InventoryType = 13 WHERE entry = 65475;
UPDATE item_template SET InventoryType = 5 WHERE entry = 67121;
UPDATE item_template SET InventoryType = 2 WHERE entry = 67388;
UPDATE item_template SET displayid = 96006 WHERE entry = 3819;
UPDATE item_template SET displayid = 95837 WHERE entry = 21366;
UPDATE item_template SET displayid = 95883 WHERE entry = 24617;
UPDATE item_template SET displayid = 95836 WHERE entry = 24649;
UPDATE item_template SET displayid = 95767 WHERE entry = 24745;
UPDATE item_template SET displayid = 95809 WHERE entry = 24858;
UPDATE item_template SET displayid = 95771 WHERE entry = 24898;
UPDATE item_template SET displayid = 95804 WHERE entry = 31145;
UPDATE item_template SET displayid = 94443 WHERE entry = 33295;
UPDATE item_template SET displayid = 95832 WHERE entry = 36023;
UPDATE item_template SET displayid = 95831 WHERE entry = 36031;
UPDATE item_template SET displayid = 95830 WHERE entry = 36039;
UPDATE item_template SET displayid = 95829 WHERE entry = 36047;
UPDATE item_template SET displayid = 95828 WHERE entry = 36055;
UPDATE item_template SET displayid = 95827 WHERE entry = 36063;
UPDATE item_template SET displayid = 95694 WHERE entry = 36273;
UPDATE item_template SET displayid = 96044 WHERE entry = 39212;
UPDATE item_template SET displayid = 95823 WHERE entry = 38712;
UPDATE item_template SET displayid = 95822 WHERE entry = 39346;
UPDATE item_template SET displayid = 95821 WHERE entry = 39364;
UPDATE item_template SET displayid = 95820 WHERE entry = 39367;
UPDATE item_template SET displayid = 94521 WHERE entry = 40530;
UPDATE item_template SET displayid = 95810, material = 7 WHERE entry = 35679;
UPDATE item_template SET displayid = 95815, inventorytype = 0 WHERE entry = 31360;

UPDATE item_template SET class = 4 WHERE entry = 25643;
UPDATE item_template SET class = 4, subclass = 11 WHERE entry = 25644;

UPDATE item_template SET Unk0 = 4 WHERE entry = 30918;
UPDATE item_template SET Unk0 = 3 WHERE entry = 30758;
UPDATE item_template SET Unk0 = 13 WHERE entry = 38469;


UPDATE item_template SET subclass = 3 WHERE entry = 4438; 
UPDATE item_template SET subclass = 3 WHERE entry = 9387;
UPDATE item_template SET subclass = 3 WHERE entry = 9394;
UPDATE item_template SET subclass = 3 WHERE entry = 17746;
UPDATE item_template SET subclass = 7 WHERE entry = 22316;
UPDATE item_template SET subclass = 11 WHERE entry = 22395;
UPDATE item_template SET subclass = 11 WHERE entry = 22396;
UPDATE item_template SET subclass = 11 WHERE entry = 22397;
UPDATE item_template SET subclass = 11 WHERE entry = 22398;
UPDATE item_template SET subclass = 11 WHERE entry = 22399;
UPDATE item_template SET subclass = 11 WHERE entry = 22400;
UPDATE item_template SET subclass = 11 WHERE entry = 22401;
UPDATE item_template SET subclass = 11 WHERE entry = 22402;
UPDATE item_template SET subclass = 11 WHERE entry = 23004;
UPDATE item_template SET subclass = 11 WHERE entry = 23005;
UPDATE item_template SET subclass = 11 WHERE entry = 23006;
UPDATE item_template SET subclass = 11 WHERE entry = 23197;
UPDATE item_template SET subclass = 11 WHERE entry = 23198;
UPDATE item_template SET subclass = 11 WHERE entry = 23199;
UPDATE item_template SET subclass = 11 WHERE entry = 23200;
UPDATE item_template SET subclass = 11 WHERE entry = 23201;
UPDATE item_template SET subclass = 11 WHERE entry = 23203;
UPDATE item_template SET subclass = 11 WHERE entry = 24386;
UPDATE item_template SET subclass = 11 WHERE entry = 24413;
UPDATE item_template SET subclass = 11 WHERE entry = 25643;
UPDATE item_template SET subclass = 11 WHERE entry = 25645;
UPDATE item_template SET subclass = 11 WHERE entry = 25940;
UPDATE item_template SET subclass = 11 WHERE entry = 27484;
UPDATE item_template SET subclass = 11 WHERE entry = 27518;
UPDATE item_template SET subclass = 11 WHERE entry = 27544;
UPDATE item_template SET subclass = 11 WHERE entry = 27744;
UPDATE item_template SET subclass = 11 WHERE entry = 27815;
UPDATE item_template SET subclass = 11 WHERE entry = 27886;
UPDATE item_template SET subclass = 11 WHERE entry = 27917;
UPDATE item_template SET subclass = 11 WHERE entry = 27947;
UPDATE item_template SET subclass = 11 WHERE entry = 27949;
UPDATE item_template SET subclass = 11 WHERE entry = 27983;
UPDATE item_template SET subclass = 11 WHERE entry = 27984;
UPDATE item_template SET subclass = 11 WHERE entry = 27989;
UPDATE item_template SET subclass = 11 WHERE entry = 27990;
UPDATE item_template SET subclass = 11 WHERE entry = 28064;
UPDATE item_template SET subclass = 11 WHERE entry = 28065;
UPDATE item_template SET subclass = 11 WHERE entry = 28066;
UPDATE item_template SET subclass = 11 WHERE entry = 28248;
UPDATE item_template SET subclass = 11 WHERE entry = 28296;
UPDATE item_template SET subclass = 11 WHERE entry = 28355;
UPDATE item_template SET subclass = 11 WHERE entry = 28356;
UPDATE item_template SET subclass = 11 WHERE entry = 28357;
UPDATE item_template SET subclass = 11 WHERE entry = 28372;
UPDATE item_template SET subclass = 11 WHERE entry = 28523;
UPDATE item_template SET subclass = 11 WHERE entry = 28568;
UPDATE item_template SET subclass = 11 WHERE entry = 28592;
UPDATE item_template SET subclass = 11 WHERE entry = 29388;
UPDATE item_template SET subclass = 11 WHERE entry = 29389;
UPDATE item_template SET subclass = 11 WHERE entry = 29390;
UPDATE item_template SET subclass = 11 WHERE entry = 30023;
UPDATE item_template SET subclass = 11 WHERE entry = 30051;
UPDATE item_template SET subclass = 11 WHERE entry = 30063;
UPDATE item_template SET subclass = 11 WHERE entry = 31025;
UPDATE item_template SET subclass = 11 WHERE entry = 31031;
UPDATE item_template SET subclass = 11 WHERE entry = 31033;
UPDATE item_template SET subclass = 11 WHERE entry = 32257;
UPDATE item_template SET subclass = 11 WHERE entry = 32330;
UPDATE item_template SET class = 4, subclass = 11 WHERE entry = 32368;
UPDATE item_template SET subclass = 11 WHERE entry = 32387;
UPDATE item_template SET subclass = 11 WHERE entry = 33076;
UPDATE item_template SET subclass = 11 WHERE entry = 33077;
UPDATE item_template SET subclass = 11 WHERE entry = 33078;
UPDATE item_template SET subclass = 11 WHERE entry = 33502;
UPDATE item_template SET subclass = 11 WHERE entry = 33503;
UPDATE item_template SET subclass = 11 WHERE entry = 33504;
UPDATE item_template SET subclass = 11 WHERE entry = 33505;
UPDATE item_template SET subclass = 11 WHERE entry = 33506;
UPDATE item_template SET subclass = 11 WHERE entry = 33507;
UPDATE item_template SET subclass = 11 WHERE entry = 33508;
UPDATE item_template SET subclass = 11 WHERE entry = 33509;
UPDATE item_template SET subclass = 11 WHERE entry = 33510;
UPDATE item_template SET subclass = 11 WHERE entry = 33841;
UPDATE item_template SET subclass = 11 WHERE entry = 33842;
UPDATE item_template SET subclass = 11 WHERE entry = 33843;
UPDATE item_template SET subclass = 11 WHERE entry = 33936;
UPDATE item_template SET subclass = 11 WHERE entry = 33937;
UPDATE item_template SET subclass = 11 WHERE entry = 33938;
UPDATE item_template SET subclass = 11 WHERE entry = 33939;
UPDATE item_template SET subclass = 11 WHERE entry = 33940;
UPDATE item_template SET subclass = 11 WHERE entry = 33941;
UPDATE item_template SET subclass = 11 WHERE entry = 33942;
UPDATE item_template SET subclass = 11 WHERE entry = 33943;
UPDATE item_template SET subclass = 11 WHERE entry = 33944;
UPDATE item_template SET subclass = 11 WHERE entry = 33945;
UPDATE item_template SET subclass = 11 WHERE entry = 33946;
UPDATE item_template SET subclass = 11 WHERE entry = 33947;
UPDATE item_template SET subclass = 11 WHERE entry = 33948;
UPDATE item_template SET subclass = 11 WHERE entry = 33949;
UPDATE item_template SET subclass = 11 WHERE entry = 33950;
UPDATE item_template SET subclass = 11 WHERE entry = 33951;
UPDATE item_template SET subclass = 11 WHERE entry = 33952;
UPDATE item_template SET subclass = 11 WHERE entry = 33953;
UPDATE item_template SET subclass = 11 WHERE entry = 35019;
UPDATE item_template SET subclass = 11 WHERE entry = 35020;
UPDATE item_template SET subclass = 11 WHERE entry = 35021;
UPDATE item_template SET subclass = 11 WHERE entry = 35039;
UPDATE item_template SET subclass = 11 WHERE entry = 35041;
UPDATE item_template SET subclass = 11 WHERE entry = 35040;
UPDATE item_template SET subclass = 11 WHERE entry = 35105;
UPDATE item_template SET subclass = 11 WHERE entry = 35104;
UPDATE item_template SET subclass = 11 WHERE entry = 35106;
UPDATE item_template SET subclass = 11 WHERE entry = 38360;
UPDATE item_template SET class = 4, subclass = 11 WHERE entry = 38361;
UPDATE item_template SET subclass = 11 WHERE entry = 38362;
UPDATE item_template SET subclass = 11 WHERE entry = 38363;
UPDATE item_template SET subclass = 11 WHERE entry = 38364;
UPDATE item_template SET subclass = 11 WHERE entry = 38365;
UPDATE item_template SET subclass = 11 WHERE entry = 38366;
UPDATE item_template SET class = 4, subclass = 11 WHERE entry = 38367;
UPDATE item_template SET subclass = 11 WHERE entry = 38368;
UPDATE item_template SET subclass = 11 WHERE entry = 39208;
UPDATE item_template SET subclass = 11 WHERE entry = 39728;
UPDATE item_template SET subclass = 11 WHERE entry = 39757;
UPDATE item_template SET subclass = 11 WHERE entry = 40191;
UPDATE item_template SET subclass = 11 WHERE entry = 40207;
UPDATE item_template SET subclass = 11 WHERE entry = 40267;
UPDATE item_template SET subclass = 11 WHERE entry = 40268;
UPDATE item_template SET subclass = 11 WHERE entry = 40321;
UPDATE item_template SET subclass = 11 WHERE entry = 40322;
UPDATE item_template SET subclass = 11 WHERE entry = 40337;
UPDATE item_template SET subclass = 11 WHERE entry = 40342;
UPDATE item_template SET subclass = 11 WHERE entry = 40705;
UPDATE item_template SET subclass = 11 WHERE entry = 40706;
UPDATE item_template SET subclass = 11 WHERE entry = 40707;
UPDATE item_template SET subclass = 11 WHERE entry = 40708;
UPDATE item_template SET subclass = 11 WHERE entry = 40709;
UPDATE item_template SET subclass = 11 WHERE entry = 40710;
UPDATE item_template SET subclass = 11 WHERE entry = 40711;
UPDATE item_template SET subclass = 11 WHERE entry = 40712;
UPDATE item_template SET subclass = 11 WHERE entry = 40713;
UPDATE item_template SET subclass = 11 WHERE entry = 40714;
UPDATE item_template SET subclass = 11 WHERE entry = 40715;

UPDATE item_template SET stat_type4 = 45 WHERE entry = 34967;
UPDATE item_template SET stat_type5 = 0 WHERE entry = 34967;

UPDATE item_template SET spellid_2 = -1 WHERE entry = 22691;
UPDATE item_template SET spelltrigger_2 = 0 WHERE entry = 29550;
UPDATE item_template SET spellid_2 = -1 WHERE entry = 63415;

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3550,'Detailed herein are all of the locations used to secret our information within Loch Modan while awaiting pickup. Should you manage to obtain any documents from the Explorer\'s League or their allies, place them in one of these locations and one of our messengers will pick the package up within the week for delivery to our base of operations.$B$BOnce you have memorized all of the locations within this book, burn it so that it cannot be obtained by our enemies. Should you suspect for any reason that our enemies might be suspicious of your activities, burn the book immediately. By no means should this ever fall into enemy hands, lest our routes of communication be compromised.$B$BFor Ragnaros!',3551,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3551,'Location 1: Western Loch Dock\n\r\n\rNortheast of Thelsamar, there is a small dwelling and a dock that are utilized by dwarves on occasion during fishing season. Store the package in a watertight container under the dock, out of sight. $B$BDrop offs and pickups from this location should occur only at night as to reduce risk of being witnessed by fishermen in the area. This dropoff point will recieve reduced priority during the fishing season for obvious reasons.',3552,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3552,'Location 2: Grizzlepaw Den\n\r\n\rSouth of Thelsamar, there is a large hill. On the south side of the hill, there is a path leading to the cave at the top. Store packges behind the rocks in the back of the cave. $B$BPlease refrain from continued use of this cave as a shelter and/or hideout. Utilizing this cave for such compromises the security of our packages and our messenger routes.',3553,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3553,'Location 3: Shanda\'s Lair\n\r\n\rThere is a small hovel to the southwest of the excavation site that once belonged to a reclusive hermit.  Shanda\'s residence in this cave, however, has driven all potential inhabitants away. Just outside the mouth of the cave serves as a perfect drop point. $B$BAs a reminder, Shanda is an enormous murderous spider the size of two dwarves. Do not drop documents IN the cave, even if Shanda is not currently present; she will be, given time.',3554,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3554,'Location 4: Ironband\'s Cubby\n\r\n\rA side passage in the heart of Ironband\'s Excavation Site leads up to a well-hidden and disused alcove. Hidden right under the noses of the Explorer\'s league, this is a prime dropoff spot. $B$BThe Troggs have distracted the Explorer\'s League, but do not forget they are still hostile to us. Take care when accessing the site at night, Troggs may be waiting in ambush.',3555,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3555,'Location 5: Mo\'grash Skull Idol\n\r\n\rThis stone skull idol seems like part of the ogre grounds, but is further south than the ogres actually roam. Place documents at the base of it. $B$BDo NOT place documents IN the mouth of the skull idol. Several documents have been permanently lost this way, as well as one hand, mysteriously.',3556,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3556,'Location 6: The Grove in the Loch\n\r\n\rA small grove of three saplings in the center of the Loch serves as a well-isolated drop off point. $B$BDraining of the Loch has left this space slightly less isolated. The crocolisks have helped to mitigate this.',0,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3559,'Durak, $B$BThis $R has assisted me IN collecting enough fel fire TO launch an assault ON the elves. $B$BThe projectiles will be devastating - but impossible TO control. I need a way TO direct their trajectory. $B$BI\'m sure to be forgiven for meddling with demonic powers once Splintertree is saved... $B$BDraaka',0,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3560,'',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3561,'<The Apothecary\'s notes are scribbled in a cramped hand, with complex alchemic formulas interspersed among childlike doodles of skulls and lightning bolts. Squinting, you can make out parts of a recent passage:>$B$B...most magnificent corruption, embedding itself deep within living tissue. Extremely contagious when <several words are smudged> via food chain. Today\'s tests confirm it is only partially biological in origin. Foulhoof, my <illegible> companion, preoccupied with vengeance and blind to the more \'constructive\' applications of his <a greenish ichor stains the remainder of the paragraph.> Research progresses slowly. Hope my companions at Althalaxx fare better.',0,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3566,'Grimfang,$B$BI report to you from Splintertree, and the news is unpleasant.$B$BThe post was recently attacked by the kaldorei, which prevented any reports from being delivered.$B$BThe siege has been broken, but many were lost and another attack looks imminent.$B$BWe shall continue sending elves to their graves as long as fate permits.$B$B- Kadrak',0,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3576,'Attn: Mrs. Gadgetspring$B$BThe industrial-strength laxative agent you requested is enclosed. My condolences on the fate of Mr. Blimo Gadgetspring after his encounter with the cliff giant. I\'m curious why you\'re opting for a laxative in an effort to recover him, as opposed to some sort of vomit-inducing agent? It seems to me you\'re doing Mr. Gadgetspring a disservice. Good luck with your endeavor!$B$B- Lomac Gearstrip',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3580,'Know this: a shaman must never demand power; to do so would arouse the anger of the elements, and a shaman without the elements\' protection is nothing.  Those that follow the path of the shaman must never forget this most vital tenet.$B$BHowever, a shaman that works in a respectful union with the elements wields a power rivaled by few.  If you feel you have the humility to do so, come visit with me in Anvilmar.  I will teach you - much like I myself was taught - how to work with the elements of fire, earth, wind, water, and the wild.$B$B~Teo Hammerstorm',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3579,'Those of us who are agile of mind, but not quite so agile of body, must find... alternative methods of self-preservation.  Many such people choose to pursue a career in matters magical.$B$B$N, I\'ve been observing you, and you have a mind like a steel trap.  However, to thrive in this time of upheaval, a person such as yourself will need to master the arcane arts.  And to master the arcane arts, you\'re going to have to talk to me.$B$BCome speak with me in Anvilmar.  We\'ve much to discuss.$B$B-Teegli Merrowith',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3594,'<Crawgol\'s handwriting is large and uneven, little better than a childlike scrawl.>$B$BThe sillu- scilla- <Several misspellings are crossed out> silithid are bug-type animals, not vegetables (at least without a fight). They live in the under the ground, except when they are not. Some of them fly? (I think).$B$BThey taste REAL BAD.$B$BMost silithid are made of bug parts. They have between none and eightish legs (depending on how they died?)',3595,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3595,'Burning makes them die. They have shells (called &#65533;cara pieces&#65533; because they are made from cara obviously) that can\'t be stabbed unless you do it hard.$B$BThey can dig fast but I don\'t know how fast because they dig in the dirt.$B$BTHE ORIGIN OF THE SILITHID$B$BAlmost all silithid come from holes, usually in the ground.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3599,'Emperor Thaurissan,
$B$BBelow is my account of my most recent finding here in Un\'Goro Crater.  After the Cataclysm hit, I stopped my current project and began sweeping the Crater for new potential dig sites.  Curiously, the Crater wasn\'t hard hit by the Cataclysm, but I did find what appeared to be a monstrous mandible peeking out of the ground in Terror Run!',3600,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3600,'It appears to be an ancestor of the dinosaurs that live here.  I\'ve spent the last several weeks digging it out, and it has been my most exciting dig yet.  By my calculations, this beast must be nearly 300 feet long, from tip to tail.  That\'s longer than some of the largest dragons, and FAR larger than any dino that currently exists here in the Crater.',3601,13202);
INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3601,'The going has been slow, mainly because I\'ve needed to cover up my work behind me.  That blasted goblin, Nilminer, still has cronies digging in the area, and I mustn\'t risk any news of this discovery leaking before I send my final results back to Blackrock Mountain.  This may be the key piece of information that tells us what the Titans were doing in Un\'Goro!$B$BRegards,$B$BDurrin Direshovel',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3604,'As Forsaken, we fight against the Lich King, we fight against the Alliance... sometimes we even quarrel with the other races of the Horde.  We are few, and we face great obstacles... but we will survive and prevail.$B$BAs a fellow hunter, you will do so from afar, with a bow in your hand and an animal companion at your side.  Your power comes not from arcane wizardry or martial prowess, but your ability to live off the land.$B$BThe path of the hunter lies before you.  It starts with me, your trainer.  Where it ends... we do not know that yet.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3608,'An Urgent Message to all Scarlet Officers and Enlistees:
$BThe Scourge agent known as Lilian Voss has escaped from her captivity at the Scarlet Palisade.  She is to be considered highly dangerous, and should be killed on sight.  She has already slain 15 of our men.  None were left wounded.$B$BDo NOT try to apprehend her.  Doing so will likely result in death.  She is an enemy to the Crusade and must be crushed immediately.$B$BThe crusader who returns her head to the High Priest will be rewarded with 1,000 gold.  Refer any questions to your commanding officer.$B$B$B~BV',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3606,'We barely escaped from Kezan with our lives! The volcano took everything...my house, my car, my pet boar, my pet boar\'s house, my pet boar\'s car...$B$BBut at least we got safely onto the ships! We\'ll sail straight for Durotar, sucker a few orcs after we get onto dry land again, and be rolling in money again within a week!',3614,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3614,'We\'ve been on the ocean for what seems like forever. I don\'t think anyone knows where we are.$B$BOur supplies are dwindling, and we used up half our water trying to run the pump for the makeshift desalinator. We tried throwing a few people overboard to gain speed, but we kept all their gold so it didn\'t help that much.$B$BIt was kinda fun, though.',3615,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3615,'We\'ve landed! Well, more like crashed. The boats tore themselves open overnight while the "captain" had a rag tied to the wheel.$B$BWe all woke up face-down in the sand on this mysterious desert beach! Nobody has any idea where we are, but we\'ll have to make do in this exotic and highly uncharted territory.$B$BDid I say we all woke up? That may have been an exaggeration.',3616,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3616,'We found something amazing! An old busted-up machine thing. One of the smartypants antique collectors that survived the crash said it looked like it might be a Titan thingy.$B$BWhatever it is, I bet it\'s valuable. The guys that found it said their heads hurt after digging it up and it\'s leaking some kinda glowy light but WHATEVER!',3617,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3617,'The guys who found that artifact are acting a little FUNNY! Nothing too bad for a goblin mind you. And they\'ve only stabbed one or TWO people.$B$BI guess it\'s not that bad! Everyone around here is feeling a LITTLE funny anyway ha ha ha.$BThat brute they keep with them sure TALKS a lot, though.',3618,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3618,'THE others let me JOIN them finally they showed me the ARTIFACT for a really long time til I felt the tingles they say MEATFACE knows everything he is the SMARTEST I hope with his help we can LIBERATE this lost beach from the OTHER EVIL GOBLINS that came in their FLYING MACHINES to KILL US they lied they said WE\'RE FROM GADGET-ZAN TO SAVE YOU but we were not fooled we took their stuff ha ha ha',3619,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3619,'DELICIOUS JOURNAL I MUST EAT IT$B$B<The rest of the pages are missing>',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3610,'The others don\'t understand us.  They pretend to get along with us, but they don\'t.  Even the warlocks are afraid of us.$B$BThat\'s alright, because we\'ve got each other.  Orc mages unite!  Me and you!  Acrypha and... whatever your name is!  Ha!$B$BWe\'ll show them what we\'re made of.  Pay me a visit, and I\'ll share with you some of the secrets of the arcane that I\'ve managed to master.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3611,'When the flames consume Azeroth, where will you be?$B$BWe know that no one wants to dwell on their impending doom, but it\'s worth thinking about where you\'ll be spending the hereafter.$B$BOur sages have predicted that the end of the world is nigh, and only the prepared will survive. We can help you survive the raging inferno that will cleanse this world of the wicked. Isn\'t it time you found some peace of mind?',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3612,'You\'ve no doubt heard the phrase "all good things must come to an end" and so it is with your life on Azeroth. It won\'t be long before the world erupts into chaos as the elements reclaim their birthright.$B$BBut you don\'t have to be afraid during these harrowing times. You don\'t have to die. We can help you ascend to a new way of life, beyond death, beyond fear, and beyond the powerlessness of mortality. Join us today.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3613,'We live in tumultuous times. War, invasion, and famine have swept the world, but the real trial is yet to come: the end of Azeroth itself.$B$BHow will you cope with the loss and destruction of everything you hold dear? The answer is that you don\'t have to. Bring your friends and family to one of our gatherings and learn how you can survive the apocalypse together, with us.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3630,'Kasim,$B$BHe has returned.$B$B- Watcher Mahar Ba',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3631,'To Whom It May Concern:$B$BRohan Sunveil, a Reliquary member in high standing and leader of the Sunveil Excursion, seeks able-bodied adventurers to assist him in an archaeological study in the southern Blasted Lands.  Participants will be compensated for their work.$B$BThe Sunveil Excursion is focused on the acquisition, cataloguing, and preservation of any and all magical artifacts found in the Tainted Forest region.  Formerly known as the Tainted Scar, the area has recently been rejuvenated by a worgen druid, and is mostly covered with trees and brush.  For further details, please contact Rohan or Clarya Sunveil.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3632,'<The letter is missing entries as the ink has washed away in many places.>$B$B... every form of ... has been based ... on the antagonism of oppressing and oppressed ...$B$B... nothing to lose, but your chains ...$B$B... the past cannot be forgotten ...$B$B... cannot be forgiven ...$B$B... will RISE AGAIN!',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3633,'Minions, our leader has spoken. You are to sack Sentinel Hill and free the admiral. You may keep anything that you find in your rampage.$B$B-Helix',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3634,'Give a man a tabard and he will pledge his undying loyalty to your cause. These men are now government sheep who care not for your hardships. They wear the tabard of their leader and care only for what he desires.$B$B-V',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3635,'Group of Homeless Samaritans Brutally Murdered Behind Furlbrow Farm $B$BWitnesses state that the four men killed at the Furlbrow\'s farm were on their way to delivering dirt pies to a shelter on the east coast when attacked. $B$BJimb "Candles" McHannigan, an eyewitness on the scene, had this to say, "Yep, I saw the whole thing go down with my own two eyes. Was a $g male:female; $c. $g He:She; looked like $g he:she; may have been on something. $g He:She; slaughtered the poor bums in broad daylight while shouting obscenities and proclaiming $g his:her; love for Stormwind and King Varian Wrynn. I think $g he:she; may have killed Lou immediately afterward. I was too shaken up to see."',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3636,'I can hardly believe it. We\'ve endured this torment for four long years, but soon it will be over. The Brotherhood will be reborn and we will then wash across this land as a flood to cleanse it of its filth and corruption.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3637,'The hour of our redemption draws ever closer, brothers and sisters! Tonight we will shed the shell of our former lives and be reborn as heroes!$B$B-V',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3638,'Day 1$B$B"A druid\'s gift is his freedom to embrace and explore all facets of nature."$B$BMalfurion so often spoke these words, I was once foolish enough to believe that he truly lived by them. Yet while my shan\'do spouted this freedom, he disgraced me and my fellow druids of the pack by banning our form. I can still recall with great clarity his angry tirades whenever he discovered us practicing in secret.$B$B"The pack form cannot be controlled. It will consume you, and endanger us all."$B$BThe ignorance with which Malfurion passed judgment on us is infuriating. Does he not realize that the spirit of the wolf ancient, Goldrinn, is by nature\'s grace within me and my pack brethren? We did not choose it. It chose us. To shun it would be to turn our backs on nature itself.',3639,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3639,'It only pains me that at a time like this, when our race is threatened by war with the vile satyr, Malfurion rejects us -- the very druids who could turn the tide of battle in his favor.$B$BIt matters little now. Today my brethren and I will depart from night elf society forever to begin life anew in the wild. We will show our shan\'do\'s beliefs to be wrong and prove that Goldrinn\'s spirit can in fact be controlled.',3640,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3640,'Day 7$B$BSix nights have come and gone since we carved out our new homes in the heart of the forest. Our pack leader, Renthel, has taken charge over the community, and under his wise leadership I have at last found true freedom.$B$BEach night we practice our form at the roots of a fallen tree where we have placed Goldrinn\'s fang. A thing of beauty it is... merely being in its presence seems to empower me. At times I wonder if the wolf ancient left this remnant of himself on the world as a gift to those who pursue his form.$B$BThese nightly sessions have filled me with renewed confidence in my ability to harness Goldrinn\'s spirit. Although Malfurion so often spoke of its dangers, even now we are proving him to be wrong.',3641,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3641,'Day 12$B$BThere was an argument tonight. A seasoned druid named Thaldrus laid claim to leadership of the pack over Renthel, and both druids settled the dispute in pack form. They circled one another for what seemed an eternity, mouths foaming and fangs bared, until Thaldrus lunged at Renthel and pinned him to the ground.$B$BRenthel honorably accepted his defeat and relinquished his leadership with no further violence. If only Malfurion could have witnessed the dignity with which Thaldrus and Renthel acted on this eve.',3642,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3642,'Day 23$B$BSomething strange has been happening of late. My brothers spend more and more time in pack form throughout the day. Many of them claim that it is a necessity to mastering the form, yet I feel that is not the sole reason.$B$BAn urge, primal in origin, grows inside of me. It is a desire that I can only sufficiently sate when I take on the pack form. I fear that the others feel it too.',3643,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3643,'Day 28$B$BTonight, under the two moons, we ventured through the wild in pack form and felled three stags. So famished were my brethren and I that we simply ripped into the creatures, clawing and biting at each other while we feasted. Euphoria washed over me as I sank my teeth into the stag\'s raw flesh. Even if I had been without an appetite, gorging on the creature would have satisfied me.',3644,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3644,'Day 38$B$BFirst time out of pack form in seven nights. Live as a wolf like others, from one night to next. Pack leader Thaldrus says night elf bodies are weak. All trust him. All follow him. If he saw me now, he would kill me.$B$BGoldrinn\'s spirit consuming us. Fighting it feels just as wrong as giving in.',3645,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3645,'Day 42$B$BStill taste pack leader Thaldrus\' blood in my mouth. $B$BCannot recall details. Only remember Thaldrus taking Goldrinn\'s fang from fallen tree. Caught him dragging it into his den and--$B$B<This part of the page is illegible due to blood stains>$B$BTook two nights for Thaldrus to come out. We were waiting. Fangs and claws and rage. Tore him apart. Fur and flesh everywhere. Only gnawed bones afterward.$B$BNo leader now.',3646,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3646,'Day 52


$B$BMuch has come to pass of late, and I feel that at last I have regained a portion of my sanity. Five nights ago, I left my den to discover that the other pack members were gathered around something, or as I soon discovered, someone. A night elf whose scent I recognized as Ralaar Fangfire, a druid of Malfurion\'s ilk.$B$BAs one we encircled him, yet the intruder held his ground. I smelled not a hint of fear on him, despite the fact that he remained in night elf form. His arrogance was quite infuriating.$B$BThree of my enraged brothers charged Ralaar, and the newcomer took on the pack form and bested the challengers with little effort... yet he did not kill them.$BIn that instant I became aware of a difference between him and us. We had become savages... scarred, lean, and disheveled. Ralaar, however, was powerful, majestic, and still rife with Goldrinn\'s essence.',3647,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3647,'When no others dared challenge him, Ralaar took on his night elf form and spoke. In a tirade that reminded me of Malfurion, he berated us for becoming mindless animals and squandering what he referred to as the purity of Goldrinn\'s essence. Yet unlike my former shan\'do, Ralaar also promised to teach us the true path to harnessing the wolf ancient\'s spirit. I sensed tremendous rage in his voice, tempered by a self control that I had somehow lost in recent weeks.$B$BOne by one we all left our pack forms. I can only guess that my brethren, like I, felt a strange affinity to this newcomer, as if he were a messenger of Goldrinn himself. $B$BRalaar has since begun teaching us as he had promised, though he no longer answers to his given name.$B$BRather, he now refers to himself simply as Alpha Prime.$B-Gaedrin Moonfang, Druid of the Pack',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3648,'Step 1: KILL$BStep 4: Sleep?$BStep 2: EAT$BStep 1: Poop',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3649,'You attack from down there!$BWe attack from up here!$BMeet in middle at humie town.$B$B-Yowler, Son of Yowler',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3650,'<This document is blank.>$B$B<Correction. This document was used recently as toilet paper.>',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3651,'<This entire page is written in orcish. You can\'t understand anything on the document.>',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3652,'Shadowhide gnolls and Blackrock orcs are setting up a massive offensive to attack Stormwind.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3653,'Bloodsail Orders$B$BPay close attention to these here words, me hearties.  This be our final shot at Booty Bay.$B$BPretty-Boy has failed me for the last time.  His replacement remains in the north.  He\'ll lead the invasion by land, through that blasted tunnel.$B$BCaptain Keelhaul and the Riptide will come in from the southwest and negate any cannon fire from the tip of the Cape.  He\'ll need men, gunpowder, and plenty of extra ropes.',3654,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3654,'The Damsel\'s Luck will drive directly into the harbor and open fire.  Her captain will be ordered to take no prisoners - any man, woman, or child found consorting with the Blackwater Raiders of Booty Bay will be sent straight to Neptulon\'s locker.$B$BI\'ll lead the attack from the rear, with the Crimson Veil.  We\'ll offer cannon support and protect from any raiders that come to defend their precious Booty Bay.',3655,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3655,'There is no exit plan here, boys.  Once we arrive in Booty Bay, we burn her down and take her over, or we die trying.  Take that message to heart.$B$B--Fleet-Master Firallon',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3656,'Keeshan, if you\'re reading this note, I\'m dead. Likely that my position was compromised.$B$BOrcs are committing unspeakable atrocities against their prisoners. Yes, prisoners, Keeshan. They\'ve got cages full of P.O.W\'s. If you\'re gonna blow up this valley, you\'ll need to free the prisoners first.$B$BTell my wife I love her and to take out the damned trash.
$B$B-Brubaker$B$BPS - They\'ve got black dragons.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3657,'To the Honorable Headmaster Crillian,

$B$BMy former Master, I write to you so that you might know what your apprentice has been doing of late.  Paying heed to your advice, I sought to build my knowledge and wisdom through travel outside the gates of our beloved Stormwind.  My journeys took me to many places but I have decided to take up residence here in the lovely town of Moonbrook.  The surrounding fields of Westfall are most beautiful as the harvest approaches.',3658,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3658,'Within just a few days of my visit I found myself tutoring the local children from the nearby farmlands.  The lessons went so well that the town mayor commissioned me to run a school and construction has begun on a brand new schoolhouse!  From Silverpine to Stormwind and now Moonbrook -- who would have guessed I would see so much of Azeroth!$B$BWarm regards,$B$BStalvan Mistmantle',3659,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3659,'Dear Noble Sir,$B$BWord of your need for a tutor for your children has traveled to me here in Goldshire, where I take up temporary residence in the Lion\'s Pride Inn.  Due to the unfortunate state of events in the region, I was forced to abandon my post as Headmaster of the Moonbrook Schoolhouse.  Please accept my application to serve as tutor for your offspring.  Headmaster Crillian of the Academy can speak to you of my abilities if necessary.',3660,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3660,'I shall travel to meet you in person when the winter rains subside and the roads are suitable for travel once again.$B$BUntil then,$B$BStalvan Mistmantle of Silverpine',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3661,'. . .Giles, the boy, seems a bit rambunctious and will be a challenge to educate.  However the elder daughter, Tilloa, seems exceptionally smart.  I couldn\'t help but to notice her captivating beauty as well.  She is on the cusp of womanhood now.  Supposedly the Lord has arranged her marriage for next year.  But I digress.  This week I will accompany the family to their summer cottage near the Eastvale Logging Camp in Elwynn, close to the Red Ridge Mountains.  I hope to write more while there.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3662,'. . .most strange and uncontrollable feeling.  Never have I felt the way I did today.  Whilst assisting Giles with his history lesson, Tilloa was outside tending to the flower garden.  After a few minutes she came inside and placed a scarlet begonia in my open palm and smiled at me in such a way that my heart felt as though it was trembling within my chest. . . .',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3663,'To the Honorable Headmaster Crillian,$B$BMy former Master, I write to you so that you might know what your apprentice has been doing of late.  Paying heed to your advice, I sought to build my knowledge and wisdom through travel outside the gates of our beloved Stormwind.  My journeys took me to many places but I have decided to take up residence here in the lovely town of Moonbrook.  The surrounding fields of Westfall are most beautiful as the harvest approaches.',3664,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3664,'Within just a few days of my visit I found myself tutoring the local children from the nearby farmlands.  The lessons went so well that the town mayor commissioned me to run a school and construction has begun on a brand new schoolhouse!  From Silverpine to Stormwind and now Moonbrook -- who would have guessed I would see so much of Azeroth!$B$BWarm regards,$B$BStalvan Mistmantle',3665,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3665,'Dear Noble Sir,$B$BWord of your need for a tutor for your children has traveled to me here in Goldshire, where I take up temporary residence in the Lion\'s Pride Inn.  Due to the unfortunate state of events in the region, I was forced to abandon my post as Headmaster of the Moonbrook Schoolhouse.  Please accept my application to serve as tutor for your offspring.  Headmaster Crillian of the Academy can speak to you of my abilities if necessary.',3666,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3666,'I shall travel to meet you in person when the winter rains subside and the roads are suitable for travel once again.$B$BUntil then,$B$BStalvan Mistmantle of Silverpine',3667,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3667,'. . .Giles, the boy, seems a bit rambunctious and will be a challenge to educate.  However the elder daughter, Tilloa, seems exceptionally smart.  I couldn\'t help but to notice her captivating beauty as well.  She is on the cusp of womanhood now.  Supposedly the Lord has arranged her marriage for next year.  But I digress.  This week I will accompany the family to their summer cottage near the Eastvale Logging Camp in Elwynn, close to the Red Ridge Mountains.  I hope to write more while there.',3668,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3668,'. . .most strange and uncontrollable feeling.  Never have I felt the way I did today.  Whilst assisting Giles with his history lesson, Tilloa was outside tending to the flower garden.  After a few minutes she came inside and placed a scarlet begonia in my open palm and smiled at me in such a way that my heart felt as though it was trembling within my chest. . . .',3669,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3669,'. . .most certain that she shares the same feelings for me now.  She even placed her hand on mine this morning.  When she smiles, her eyes light up like glittering diamonds.  Unspoken words pass between us.  I can feel her in my pounding heart and heated veins.',3670,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3670,'. . .anger and fury the likes of which I never knew existed!  How dare she.  As I was instructing Giles in the meaning of numbers, Tilloa appears before me with a suitor, holding hands in public nonetheless!  What an uncouth young man.  Rather than introduce me properly, Tilloa simply said, "Oh that\'s just my tutor, Uncle Stalvan.  He\'s a nice old man."  Old!  At that word my cheeks flushed with heat.  I am but a few years older and yet she betrays. . .',3671,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3671,'. . .downward spiral of despair.  First she mocks me and now she is engaged.  The ungracious charlatan was pretending to love when truly she desired to hurt me all along.  A black void lurks within me now and it grows with each waking moment.  The blood I shall spill pales in comparison to the tears I have shed. . .',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3672,'KURZEN PRISON RECORDS$B$BDo not disseminate',3673,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3673,'BERRIN BURNQUILL$B$BCrimes: Disobedience, Disorderly Conduct$B$BPunishment: Incarceration, 50 years',3674,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3674,'EMERINE JUNIS$B$BCrimes: Punishment specially ordered by Colonel Kurzen$B$BPunishment: Incarceration, 75 years',3675,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3675,'OSBORN OBNOTICUS$B$BCrimes: Madness$B$BPunishment: Incarceration, 130 years',3676,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3676,'BOOKSTON HEROD$B$BCrimes: Consorting with rebels$B$BPunishment: Death by hanging',3677,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3677,'COLONEL CONRAD KURZEN$B$BCrimes: Weakness$B$BPunishment: Flung from tower',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3678,'KURZEN OFFICERS\' DOSSIER$B$BDo not disseminate',3679,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3679,'CHIEF ANDERS$B$BLeads the commandos and jungle fighters.  Responsible for maintaining the compound\'s militia and protecting the compound resources from rebel attacks.',3680,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3680,'CHIEF GAULUS$B$BLeads the medicine men and head shrinkers.  Responsible for medical corps and maintaining peace with nearby Bloodscalps and Skullsplitters.',3681,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3681,'CHIEF MIRANDA$B$BLeads the Kurzen Shadow Ops.  Responsible for maintaining blue stone cache and for further research into its uses.',3682,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3682,'CHIEF ESQUIVEL$B$BInterim chief after the death of Colonel Kurzen.  Responsible for overseeing all operations of Kurzen\'s Expedition.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3683,'Moon Over the Vale',3684,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3684,'A Moon over the Vale shines$BCasting its glow upon the jungle$BWhere proud Warriors heed the call$BTo defend our Nation and sacred grounds. $B$BA Moon over the Vale shines$BFar above the cries of battle$BWhere blood is spilled$BOf foe and comrade alike.',3685,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3685,'And when our brethren pass$BInto realms beyond the known$BThe soul-spirit hardens$BDeep beneath the Vale.$B$BAnd when our brethren pass$BInto the Mountain\'s Temple$BWe shall protect their eternal spirit$BEncased within the holy blue crystal.$B$BAnd when our brethren pass$BA Moon over the Vale shines.',3686,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3686,'Gri\'lek the Wanderer',3687,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3687,'Tale of Gri\'lek the Wanderer$B$B[...The beginnings of the tablet were worn and erased.  But the end was legible...]$B$BGri\'lek stamped through the jungle.  And his eyes burned and his chest rumbled, for there was great anger in him.  $B$BIn fury he roared to the sky, and he raised his arm.  He raised his left arm, grown strong and sure from hunting without its twin.  $B$BFor Gri\'lek\'s right arm was gone, and it would not return.',3688,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3688,'And so he wandered, and he searched.  And his arm remained lost to him.  And so he cursed and roared as he walked.  $B$BBut Gri\'lek had long ago turned his ear away from the spirits, and they were angered and would not listen to his curses.$B$BDoomed was Gri\'lek.  Doomed to wander, armless.',3689,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3689,'Fall of Gurubashi',3690,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3690,'Rising from the ocean, a tower of water, Neptulon sent the great Krakken to doomed I\'lalai.  So huge were their forms that jungles of kelp swayed through their limbs, and leviathans swam through bodies.  $B$BThe largest Krakken then raised his arms high and crashed them into the sea, sending waves about him.  And they raged toward I\'lalai.',3691,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3691,'The Krakken roared, and their voices thundered like an ocean storm: $B$B"We come."$B$BMin\'loth, standing firm, called forth his magic.  The waves sent to I\'lalai parted and washed to both sides, and they flooded the jungle beyond.  Min\'loth then bade his minions chant spells of binding, and a din rang out as dozens of troll voices rose.$B$BAnd one voice rose above the rest.',3692,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3692,'Min\'loth bellowed and his magic gathered the power of his minion\'s spells, and he cast it at the approaching Krakken.$B$BThe seas parted and Min\'loth\'s spell sped toward the servants of Neptulon.  Lightning tore the sky and the spell struck them, and a thousand bolts fell, boiling water and burning craters in the earth.$B$BMin\'loth cried in triumph, knowing his spell would fell the great beasts.',3693,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3693,'But the Krakken are old, very old.  They remembered when the land was first born from the sea.$B$BThey remembered when the Old Ones ruled and when the Travelers came and cast them down.  They remembered when magic was new.$B$BThey are old and they hold many secrets.  And though Min\'loth\'s spell was strong, it, like the troll, was mortal.  $B$BAnd so it failed.',3694,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3694,'If failed to bind the Krakken, but it enraged them.  Not in aeons had a mortal caused them pain, and the troll\'s spell was painful.$B$BAnd so they shed the bindings of Min\'loth\'s spell, but then roared and stuck with fury.$B$BA rumble was heard as great waves rose from the deep and raced toward the land.  When they reached I\'lalai they cast a shadow on the city.$B$BBut before they destroyed it the Krakken halted, poised.',3695,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3695,'The troll witchdoctors trembled and cried out to their master.  Min\'loth gazed at the mountains of the sea, doomed and defiant.  He turned to his adepts and whispered, and the trolls etched his last words into stone.  Min\'loth then faced the looming Krakken.$B$BHe grimaced and hurled his staff, his last bold act.$B$BThe Krakken then bent their fury upon Min\'loth, and an ocean fell upon I\'lalai.$B$BAnd it was no more.',3696,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3696,'And then the waters fell upon the jungle, washing clean all they met.  Trolls and beasts cried out as the waters smashed and drowned them.$B$BMany Gurubashi wondered why the ocean swallowed them, but then they died and knew nothing.$B$BAnd finally, when the waters reached the mountains, they stopped.  Appeased, they retreated back beyond the shores, and they left a wake of death.$B$BThey retreated, but they surged around I\'lalai and remained, drowning it forever.',3697,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3697,'And the chief Var\'gazul, safe behind the mountains in Zul\'Gurub, went out to the jungle and found it washed clean of his people.$B$BAnd he despaired, for his dreams of conquest were thwarted.$B$BAnd never was Min\'loth the Serpent found.',3698,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3698,'The Emperor\'s Tomb',3699,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3699,'By moon and fire,$BBy flesh and bone,$BScribed in blood,$BCarved in stone.$B$BLeave this place$BOr meet your doom$BDeath stands guard$BOver the Emperor\'s Tomb.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3700,'I hope this sigil finds you well, $N. The Archmage told me of your coming and I sent word immediately.$B$BWith all that has happened in the past years to bring arcane magic back to our race, you may find struggles and trials ahead. I can help with such things.  When you are ready, find me inside Aldrassil, on the second level.$B$B-Rhyanda, Mage Trainer',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3706,'Northshire Valley is a dangerous place, ideally suited to the survival skills of a hunter. Needless to say I have been impressed with your contributions to the valley\'s defense and I look forward to meeting you. Please look for me by the entrance to the abbey.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3707,'Your Holiness: Cho\'gall has given us the directive to move forward: We\'re going to wipe your cathedral off the map. When the spiritual center of Stormwind is reduced to a crater in the center of the city, panic will spread, and disillusioned peasants will flock toward our true religion. I\'m sending the explosives your way. For the Hammer! For Deathwing! For the glorious new world to come!    -Samuelson',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3708,'Zaren,$B$BYour first objective is to take and hold the Cathedral Quarter of Gilneas City. From there I want you to work with Lord Crowley\'s worgen to push forward into enemy territory. Take out their near outposts and cut their lines of communication.$B$BKing Wrynn has assured me that a full armada of warships is en route and should be arriving any day. Once the rest of the fleet is here, we will launch an all out assault on Forsaken Forward Command and beat those worthless maggots back into Silverpine Forest$B$BOnce Gilneas is securely in Alliance control, we will begin preparations for retaking Lordaeron.$B$BFor the glory of the Alliance!$B$B-High Commander Halford Wyrmbane$B$BP.S. We will launch a signal flare when we are ready to attack Forsaken Forward Command. Keep your soldiers on high alert.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3709,'Karthis, Omasum,$B$BThe time has come for the ritual of which we spoke.  I will be leaving Stratholme to deal with the prisoner in Plaguewood\'s central slaughterhouse.  Make certain that security is tight.  Fail, and my lord will have both of your heads.  Succeed, and you will have a new dwarven brother to join your ranks.$B$B- Anastari',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3710,'I\'ve found an incredible site!$B$BThe whole area pulsates with the hum of ancient architecture.$B$BIf it were not so late in the day, I would investigate the chamber immediately!$B$BSleeping, tonight, will be a struggle...',3711,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3711,'A most productive day, today!$B$BThe chamber is indeed of ancient origin, and houses a magnificent mechanism which seems to be in disrepair.$B$BI will investigate further tomorrow.$B$BThis discovery will surely force Schnottz to take notice of me!$B$BHow could he deny me a promotion after something like this?',3712,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3712,'It has taken me all day to wrestle the cipher from these hieroglyphs:$B$BThrough eyes of blue is starlight$Brevealed.$B$BTen shards, one rod, and the veil$Bdisappears.$B$BForget Schnottz and his empty promises!$B$BIf I can just unravel this riddle, its secrets shall be mine!',3713,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3713,'I\'ve done it!$B$BUsing sapphire from the chamber\'s adornments, I have fashioned a pair of goggles. With them, I am able to see things previously hidden from view.$B$BAmazing!$B$BWith luck, my next entry will find me a newly rich man!',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3716,'Gravius,$B$BStarting today, you are to redouble your efforts.  The scope of our project has just expanded severalfold.  Your archaeological studies and geological studies can wait.$B$BMoving forward, you are to dig downward as quickly as possible.  Crews within the Slag Pit will be working from the other direction to connect their tunnels to yours.  The underground empire of the Dark Iron dwarves is growing, Gravius, and we are at the forefront.',3717,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3717,'Succeed in this task, and you will be rewarded.  You should know, these orders do not come from me, but from Overseer Maltorius and the Archduke themselves.$B$BDig deep,$B$BDig-Boss Dinwhisker',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3718,'Daily Report - Hillsbrad Foothills$B$BSouthshore Under Attack - Worgen Activity Increasing$B$BReports of worgen activity from the south, specifically around Southshore, are increasing in frequency. Our scouts indicate that the terrorist known as Ivar Bloodfang and his renegades are responsible for these recent attacks against our citizens.$B$BRecommendation: Send capable heroes to investigate.',3719,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3719,'Trouble at the Sludge Fields$B$BThe area formerly known as Hillsbrad Fields - now known as the Sludge Fields, located in southwestern Hillsbrad - has seen a sharp rise in "accidents." Reports from Warden Stillwater indicate possible contagion outbreak.$B$BRecommendation: Send capable heroes to investigate.',3720,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3720,'Azurelode Spider Farm Productivity Issues$B$BOur spider domestication operations in the area near Azurelode Mine, located in the southwest region of Hillsbrad, are seeing extremely low production numbers. Spider-Handler Sarus and Captain Keyton have requested assistance.$B$BRecommendation: Send capable heroes to investigate.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3722,'Journal of Clerk Horrace Whitesteed$B$BThe Battle for Hillsbrad',3723,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3723,'Day 12$B$BWe just received word that Southshore has been lost. The Forsaken war machine is too powerful. We are no match for their chemical weapons.$B$BI will attempt, however futilely, to keep this journal updated. I must record these atrocities for posterity.',3724,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3724,'Day 16$B$BMany of the farmers and residents of Hillsbrad fled. Some attempted to venture east to Arathi Highlands. They never made it. Slaughtered before they reached Thoradin\'s Wall.$B$BMany went north to seek refuge in Silverpine Forest. They walked right into the heart of enemy territory! Insane, I know, but they claim that the worgen are now on our side. $B$BLast I heard they made it to Fenris Isle. We lost contact with them after that.  $B$BWorgen? Could it be true...',3725,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3725,'Day 19$B$BWe knew our time was limited. We evacuated everyone that we could, but Burnside stated that he would go down with Hillsbrad. We all agreed to stand by his side.$B$BMagistrate Burnside, Citizen Wilkes, Blacksmith Verringtan and the farmers, Getz, Kalaba and Ray remain here as well as a few dozen farmhands.',3726,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3726,'Day 20$B$BThe Hillsbrad Fields are no more. Those that did not flee were captured. The Forsaken have declared us as prisoners of war. We are to be laborers at their new plantation.',3727,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3727,'Day 25$B$BThey incinerated our farms and made us watch. Construction begins tomorrow.',3728,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3728,'Day 40$B$BConstruction of their plantation is nearly complete. This place resembles no farm or plantation that I\'ve ever seen.',3729,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3729,'Day 41$B$BThe warden of the plantation, Stillwater, arrived today. He lined all of us up and gave us medical examinations. Nobody knows what\'s going on.',3730,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3730,'Day 45$B$BWe\'ve started laboring in the sludge fields. They grow poisonous mushrooms in fetid water and muck.',3731,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3731,'Day 50$B$BI hear screams coming from the Warden\'s manor. People are starting to disappear.',3732,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3732,'Day 52$B$BI overheard some guards talking about the farmers, Ray, Getz and Kalaba. Something terrible has happened to them - of this I am certain.',3733,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3733,'Day 60$B$BThose of us that remain are scared for our lives. Some of the farmers claim to have seen ghouls running amok at night.',3734,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3734,'Day 61$B$BA strange turn of events today: a master apothecary from Tarren Mill arrived. From what little information I am able to gather he is here to supervise the operations. Lydon is his name.',3735,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3735,'Day 62$B$BMaster Apothecary Lydon was dragged away by Stillwater\'s guards. He was yelling and screaming that the Dark Lady would have Stillwater\'s head for this. What is he talking about, I wonder?',3736,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3736,'Day 63$B$BI saw them take away Burnside and Verringtan last night. I can only assume that I\'m next.$B$B<The rest of the journal is full of incoherent scribbles.>',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3750,'The tough little goblin walked purposefully into the engineering shop, raising her eyebrows at a few items as she approached the shopkeeper.

"How\'s it going, Jack?"  Her voice seductively brushed his pointy ears with the rough texture of someone who inhaled too much motorcycle exhaust.  

The goblin called Jack looked up and grinned.  "Revi!  It\'s going much better since you just arrived."  Jack set his arclight spanner on the table.  "What can I do ya for?"',3751,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3751,'Holding her elbow in one hand, Revi tapped her chin lightly.  "I\'m not real sure.  Ya got any specials?"

"Are you kidding?  I\'ve got the best deals anywhere!" Jack replied enthusiastically.  "Just got these in this morning, in all sorts of colors.  Small red rockets, got some in blue and green too."  Revi\'s disappointed look was not missed by the expert shopkeeper, and he quickly upped the ante.  There was a loud \'thud\' as Jack dropped something on the table, "I call it The Big One," he said.  "It\'s goblin only, very difficult to find."

"Nice, very nice," Revi said, sounding unconvinced.  Her eyes wandered a bit.',3752,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3752,'"Okay, fine.  I can see you\'re a goblin of superb taste."  Jack looked around conspiratorially before carefully laying out a new item, buckling the table with an ominous creak.  "It\'s called..." Jack paused for dramatic effect, "The Bigger One!"$B$BRevi\'s eyes widened in surprise.  "Is that... is it... real?"  $B$BFeeling the advantage, Jack allowed himself to relax a bit.  Putting his hands behind his head and leaning back in his chair, he replied with lazily narrowed eyes, "It\'s 100% goblin parts, baby.  Natural resources."  $B$BAfter a moment of hesitation, Revi reached out and gingerly stroked the smooth yellow surface.  "I\'ll take two!"$B$B"Excellent!  You know, if you like that, you might be interested in some hardened adamantite tubes.  They can enhance the effect."  $B$BRevi nodded excitedly and looked behind Jack at something on the wall.  "What is that?"',3753,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3753,'Jack looked over his shoulder.  "Oh, those are for reviving dead people."  $B$BRevi was intrigued.  "Can they be used on someone while they\'re still alive?"  $B$BNever wanting to miss a sale, Jack responded without missing a beat, "Oh sure!  Tell you what.  You get all this stuff, and I\'ll throw in a pair of mayhem projection goggles for half price!"$B$BRevi pulled out a sack of coins that made Jack drool.  "Why not?  Motorcycle sales have been good this year."  $B$BAs Jack quickly tallied the total, he asked, "This must be a serious raid or somethin\'?"  $B$BRevi shrugged, "Nah, I got a blind date with a guy named Marcus tonight."',3754,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3754,'Jack nodded.  "What about that guy from the motor club you was datin\'?"$B$BThe leather-clad goblin scooped up her bag with one arm, and held up an outstretched hand.  "He never put a ring on it.  A girl\'s gotta have her priorities."  $B$BJack smiled and shook his head as he watched her walk out of the shop.$B$B<The remaining pages require a secret goblin decoder ring to read.>',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3745,'Zephyrus, minion of Al\'Akir$B$BResides in the ruins of the barracks.',3746,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3746,'Teracula, minion of Therazane$B$BWalks the path outside of the old barracks.',3747,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3747,'Bloodvenom, minion of Neptulon$B$BImprisoned in the west wing of the prison.',3748,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3748,'Infernus, minion of Ragnaros$B$BImprisoned in the east wing of the prison.',3749,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3749,'The D-1000$B$BAwaits you at the old arena.',0,13202);

INSERT IGNORE INTO`page_text`(`entry`,`text`,`next_page`,`WDBVerified`) VALUES (3757,'',0,13202);



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `spell_ranks`;
CREATE TABLE `spell_ranks` (
  `first_spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`first_spell_id`,`rank`),
  UNIQUE KEY `spell_id` (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Rank Data';

LOCK TABLES `spell_ranks` WRITE;
/*!40000 ALTER TABLE `spell_ranks` DISABLE KEYS */;
INSERT INTO `spell_ranks`(`first_spell_id`,`spell_id`,`rank`) values (53137,53137,1),(53137,53138,2),(18119,18119,1),(18119,18120,2),(18427,18427,1),(18427,18428,2),(18427,18429,3),(8115,8115,1),(8115,8116,2),(8115,8117,3),(8115,12174,4),(8115,33077,5),(8115,43194,6),(8115,58450,7),(8115,58451,8),(2259,2259,1),(2259,3101,2),(2259,3464,3),(2259,11611,4),(2259,28596,5),(2259,51304,6),(1267,1267,1),(1267,8456,2),(1267,10171,3),(1267,10172,4),(1267,27397,5),(1267,33947,6),(51556,51556,1),(51556,51557,2),(51556,51558,3),(16177,16177,1),(16177,16236,2),(16176,16176,1),(16176,16235,2),(17485,17485,1),(17485,17486,2),(17485,17487,3),(33704,33704,1),(33704,33705,2),(33704,33706,3),(51468,51468,1),(51468,51472,2),(51468,51473,3),(11213,11213,1),(11213,12574,2),(11213,12575,3),(31579,31579,1),(31579,31582,2),(31579,31583,3),(44378,44378,1),(44378,44379,2),(11222,11222,1),(11222,12839,2),(11222,12840,3),(28574,28574,1),(28574,54658,2),(28574,54659,3),(15058,15058,1),(15058,15059,2),(15058,15060,3),(16734,16734,1),(16734,16735,2),(16734,16736,3),(16734,16737,4),(16734,16738,5),(18462,18462,1),(18462,18463,2),(18462,18464,3),(11232,11232,1),(11232,12500,2),(11232,12501,3),(11232,12502,4),(11232,12503,5),(31571,31571,1),(31571,31572,2),(11252,11252,1),(11252,12605,2),(11237,11237,1),(11237,12463,2),(11237,12464,3),(11237,16769,4),(11237,16770,5),(11210,11210,1),(11210,12592,2),(16757,16757,1),(16757,16758,2),(31674,31674,1),(31674,31675,2),(31674,31676,3),(8091,8091,1),(8091,8094,2),(8091,8095,3),(8091,12175,4),(8091,33079,5),(8091,43196,6),(8091,58452,7),(8091,58453,8),(61216,61216,1),(61216,61221,2),(51474,51474,1),(51474,51478,2),(51474,51479,3),(47258,47258,1),(47258,47259,2),(47258,47260,3),(34935,34935,1),(34935,34938,2),(34935,34939,3),(33592,33592,1),(33592,33596,2),(17788,17788,1),(17788,17789,2),(17788,17790,3),(19590,19590,1),(19590,19592,2),(19603,19603,1),(19603,19605,2),(19603,19606,3),(19603,19607,4),(19603,19608,5),(17254,17254,1),(17254,17262,2),(17254,17263,3),(17254,17264,4),(17254,17265,5),(17254,17266,6),(17254,17267,7),(17254,17268,8),(17254,27348,9),(2018,2018,1),(2018,3100,2),(2018,3538,3),(2018,9785,4),(2018,29844,5),(2018,51300,6),(51789,51789,1),(51789,64855,2),(51789,64856,3),(49182,49182,1),(49182,49500,2),(49182,49501,3),(31124,31124,1),(31124,31126,2),(48978,48978,1),(48978,49390,2),(48978,49391,3),(31641,31641,1),(31641,31642,2),(31828,31828,1),(31828,31829,2),(51554,51554,1),(51554,51555,2),(16487,16487,1),(16487,16489,2),(16487,16492,3),(30069,30069,1),(30069,30070,2),(29836,29836,1),(29836,29859,2),(16952,16952,1),(16952,16954,2),(53481,53481,1),(53481,53482,2),(49219,49219,1),(49219,49627,2),(49219,49628,3),(46913,46913,1),(46913,46914,2),(46913,46915,3),(53186,53186,1),(53186,53187,2),(49027,49027,1),(49027,49542,2),(64127,64127,1),(64127,64129,2),(63370,63370,1),(63370,63372,2),(12321,12321,1),(12321,12835,2),(52795,52795,1),(52795,52797,2),(52795,52798,3),(44546,44546,1),(44546,44548,2),(44546,44549,3),(16940,16940,1),(16940,16941,2),(54747,54747,1),(54747,54749,2),(44449,44449,1),(44449,44469,2),(44449,44470,3),(44449,44471,4),(44449,44472,5),(48979,48979,1),(48979,49483,2),(16038,16038,1),(16038,16160,2),(13975,13975,1),(13975,14062,2),(34482,34482,1),(34482,34483,2),(17778,17778,1),(17778,17779,2),(17778,17780,3),(113,113,1),(113,512,2),(12695,12695,1),(12695,12696,2),(31228,31228,1),(31228,31229,2),(31228,31230,3),(50040,50040,1),(50040,50041,2),(49149,49149,1),(49149,50115,2),(12484,12484,1),(12484,12485,2),(12484,12486,3),(44566,44566,1),(44566,44567,2),(44566,44568,3),(44566,44570,4),(44566,44571,5),(30214,30214,1),(30214,30222,2),(30214,30224,3),(5508,5508,1),(5508,5480,2),(13706,13706,1),(13706,13804,2),(13706,13805,3),(13706,13806,4),(13706,13807,5),(61682,61682,1),(61682,61683,2),(53256,53256,1),(53256,53259,2),(53256,53260,3),(55091,55091,1),(55091,55092,2),(17427,17427,1),(17427,17428,2),(17427,17429,3),(35542,35542,1),(35542,35545,2),(35542,35546,3),(35541,35541,1),(35541,35550,2),(35541,35551,3),(16035,16035,1),(16035,16105,2),(16035,16106,3),(35100,35100,1),(35100,35102,2),(587,587,1),(587,597,2),(587,990,3),(587,6129,4),(587,10144,5),(587,10145,6),(587,28612,7),(587,33717,8),(759,759,1),(759,3552,2),(759,10053,3),(759,10054,4),(759,27101,5),(759,42985,6),(42955,42955,1),(42955,42956,2),(5504,5504,1),(5504,5505,2),(5504,5506,3),(5504,6127,4),(5504,10138,5),(5504,10139,6),(5504,10140,7),(5504,37420,8),(5504,27090,9),(26573,26573,1),(26573,20116,2),(30060,30060,1),(30060,30061,2),(30060,30062,3),(30060,30063,4),(30060,30064,5),(16039,16039,1),(16039,16109,2),(2550,2550,1),(2550,3102,2),(2550,3413,3),(2550,18260,4),(2550,33359,5),(2550,51296,6),(52234,52234,1),(52234,53497,2),(11115,11115,1),(11115,11367,2),(12320,12320,1),(12320,12852,2),(31866,31866,1),(31866,31867,2),(31866,31868,3),(61680,61680,1),(61680,61681,2),(61680,52858,3),(51664,51664,1),(51664,51665,2),(51664,51667,3),(1266,1266,1),(1266,8452,2),(1266,8453,3),(1266,10175,4),(1266,10176,5),(15259,15259,1),(15259,15307,2),(15259,15308,3),(31380,31380,1),(31380,31382,2),(31380,31383,3),(30902,30902,1),(30902,30903,2),(30902,30904,3),(30902,30905,4),(30902,30906,5),(51625,51625,1),(51625,51626,2),(47198,47198,1),(47198,47199,2),(47198,47200,3),(63156,63156,1),(63156,63158,2),(12162,12162,1),(12162,12850,2),(12162,12868,3),(12834,12834,1),(12834,12849,2),(12834,12867,3),(29559,29559,1),(29559,29588,2),(29559,29589,3),(13713,13713,1),(13713,13853,2),(13713,13854,3),(30143,30143,1),(30143,30144,2),(18705,18705,1),(18705,18706,2),(18705,18707,3),(18697,18697,1),(18697,18698,2),(18697,18699,3),(35691,35691,1),(35691,35692,2),(35691,35693,3),(18126,18126,1),(18126,18127,2),(30319,30319,1),(30319,30320,2),(30319,30321,3),(30242,30242,1),(30242,30245,2),(30242,30246,3),(30242,30247,4),(30242,30248,5),(24424,24424,1),(24424,24580,2),(24424,24581,3),(24424,24582,4),(24424,27349,5),(55666,55666,1),(55666,55667,2),(17917,17917,1),(17917,17918,2),(30251,30251,1),(30251,30256,2),(14082,14082,1),(14082,14083,2),(34478,34478,1),(34478,34479,2),(34478,34481,3),(23146,23146,1),(23146,23149,2),(23146,23150,3),(47509,47509,1),(47509,47511,2),(47509,47515,3),(18530,18530,1),(18530,18531,2),(18530,18533,3),(47562,47562,1),(47562,47564,2),(47562,47565,3),(47562,47566,4),(47562,47567,5),(63646,63646,1),(63646,63647,2),(63646,63648,3),(33597,33597,1),(33597,33599,2),(51523,51523,1),(51523,51524,2),(51099,51099,1),(51099,51160,2),(48516,48516,1),(48516,48521,2),(48516,48525,3),(19416,19416,1),(19416,19417,2),(19416,19418,3),(51466,51466,1),(51466,51470,2),(30672,30672,1),(30672,30673,2),(30672,30674,3),(28999,28999,1),(28999,29000,2),(28996,28996,1),(28996,28997,2),(28996,28998,3),(16266,16266,1),(16266,29079,2),(13981,13981,1),(13981,14066,2),(17954,17954,1),(17954,17955,2),(32381,32381,1),(32381,32382,2),(32381,32383,3),(31656,31656,1),(31656,31657,2),(31656,31658,3),(31682,31682,1),(31682,31683,2),(33158,33158,1),(33158,33159,2),(33158,33160,3),(47220,47220,1),(47220,47221,2),(63534,63534,1),(63534,63542,2),(33879,33879,1),(33879,33880,2),(7411,7411,1),(7411,7412,2),(7411,7413,3),(7411,13920,4),(7411,28029,5),(7411,51313,6),(49137,49137,1),(49137,49657,2),(4036,4036,1),(4036,4037,2),(4036,4038,3),(4036,12656,4),(4036,30350,5),(4036,51306,6),(53556,53556,1),(53556,53557,2),(12317,12317,1),(12317,13045,2),(12317,13046,3),(19184,19184,1),(19184,19387,2),(31211,31211,1),(31211,31212,2),(31211,31213,3),(49036,49036,1),(49036,49562,2),(47195,47195,1),(47195,47196,2),(47195,47197,3),(47201,47201,1),(47201,47202,2),(47201,47203,3),(13424,13424,1),(13424,13752,2),(60096,60096,1),(60096,60097,2),(53511,53511,1),(53511,53512,2),(17783,17783,1),(17783,17784,2),(17783,17785,3),(47230,47230,1),(47230,47231,2),(18731,18731,1),(18731,18743,2),(18731,18744,3),(16858,16858,1),(16858,16859,2),(58414,58414,1),(58414,58415,2),(44543,44543,1),(44543,44545,2),(47266,47266,1),(47266,47267,2),(47266,47268,3),(47266,47269,4),(47266,47270,5),(2141,2141,1),(2141,2142,2),(2141,2143,3),(2141,8414,4),(2141,8415,5),(2141,10198,6),(2141,10200,7),(2141,27378,8),(2141,27379,9),(11124,11124,1),(11124,12378,2),(3011,3011,1),(3011,6979,2),(3011,6980,3),(1035,1035,1),(1035,8459,2),(1035,8460,3),(1035,10224,4),(1035,10226,5),(1035,27395,6),(3273,3273,1),(3273,3274,2),(3273,7924,3),(3273,10846,4),(3273,27028,5),(3273,45542,6),(31208,31208,1),(31208,31209,2),(16257,16257,1),(16257,16277,2),(16257,16278,3),(16256,16256,1),(16256,16281,2),(16256,16282,3),(35029,35029,1),(35029,35030,2),(30864,30864,1),(30864,30865,2),(30864,30866,3),(19621,19621,1),(19621,19622,2),(19621,19623,3),(11160,11160,1),(11160,12518,2),(11160,12519,3),(6144,6144,1),(6144,8463,2),(6144,8464,3),(6144,10178,4),(6144,27396,5),(6144,32797,6),(11189,11189,1),(11189,28332,2),(31667,31667,1),(31667,31668,2),(31667,31669,3),(63373,63373,1),(63373,63374,2),(17056,17056,1),(17056,17058,2),(17056,17059,3),(12311,12311,1),(12311,12958,2),(48488,48488,1),(48488,48514,2),(57810,57810,1),(57810,57811,2),(57810,57812,3),(17104,17104,1),(17104,24943,2),(51179,51179,1),(51179,51180,2),(51179,51181,3),(34952,34952,1),(34952,34953,2),(34950,34950,1),(34950,34954,2),(35299,35299,1),(35299,35300,2),(35299,35302,3),(35299,35303,4),(35299,35304,5),(35299,35305,6),(35299,35306,7),(35299,35307,8),(35299,35308,9),(47516,47516,1),(47516,47517,2),(53450,53450,1),(53450,53451,2),(53427,53427,1),(53427,53429,2),(53427,53430,3),(4195,4195,1),(4195,4196,2),(4195,4197,3),(4195,4198,4),(4195,4199,5),(4195,4200,6),(4195,4201,7),(4195,4202,8),(4195,5048,9),(4195,5049,10),(4195,27364,11),(61686,61686,1),(61686,61687,2),(61686,61688,3),(18218,18218,1),(18218,18219,2),(1853,1853,1),(1853,14922,2),(1853,14923,3),(1853,14924,4),(1853,14925,5),(1853,14926,6),(1853,14927,7),(1853,27344,8),(53178,53178,1),(53178,53179,2),(20174,20174,1),(20174,20175,2),(13960,13960,1),(13960,13961,2),(13960,13962,3),(13960,13963,4),(13960,13964,5),(16181,16181,1),(16181,16230,2),(16181,16232,3),(29187,29187,1),(29187,29189,2),(29187,29191,3),(20237,20237,1),(20237,20238,2),(14911,14911,1),(14911,15018,2),(29206,29206,1),(29206,29205,2),(29206,29202,3),(17003,17003,1),(17003,17004,2),(17003,17005,3),(30894,30894,1),(30894,30895,2),(2366,2366,1),(2366,2368,2),(2366,3570,3),(2366,11993,4),(2366,28695,5),(2366,50300,6),(34753,34753,1),(34753,34859,2),(27789,27789,1),(27789,27790,2),(14889,14889,1),(14889,15008,2),(14889,15009,3),(14889,15010,4),(14889,15011,5),(51698,51698,1),(51698,51700,2),(51698,51701,3),(44445,44445,1),(44445,44446,2),(44445,44448,3),(56339,56339,1),(56339,56340,2),(56339,56341,3),(1214,1214,1),(1214,1228,2),(1214,10221,3),(1214,10222,4),(1214,27391,5),(31670,31670,1),(31670,31672,2),(31670,55094,3),(55061,55061,1),(55061,55062,2),(11119,11119,1),(11119,11120,2),(11119,12846,3),(16493,16493,1),(16493,16494,2),(14079,14079,1),(14079,14080,2),(35104,35104,1),(35104,35110,2),(31569,31569,1),(31569,31570,2),(11185,11185,1),(11185,12487,2),(11185,12488,3),(50365,50365,1),(50365,50371,2),(30872,30872,1),(30872,30873,2),(12329,12329,1),(12329,12950,2),(11190,11190,1),(11190,12489,2),(17810,17810,1),(17810,17811,2),(17810,17812,3),(17810,17813,4),(17810,17814,5),(11255,11255,1),(11255,12598,2),(53180,53180,1),(53180,53181,2),(18827,18827,1),(18827,18829,2),(18179,18179,1),(18179,18180,2),(30049,30049,1),(30049,30051,2),(30049,30052,3),(29593,29593,1),(29593,29594,2),(54347,54347,1),(54347,54348,2),(54347,54349,3),(20138,20138,1),(20138,20139,2),(20138,20140,3),(63625,63625,1),(63625,63626,2),(14162,14162,1),(14162,14163,2),(14162,14164,3),(20502,20502,1),(20502,20503,2),(14168,14168,1),(14168,14169,2),(19557,19557,1),(19557,19558,2),(33600,33600,1),(33600,33601,2),(33600,33602,3),(53754,53754,1),(53754,53759,2),(11078,11078,1),(11078,11080,2),(16086,16086,1),(16086,16544,2),(11069,11069,1),(11069,12338,2),(11069,12339,3),(11069,12340,4),(11069,12341,5),(50384,50384,1),(50384,50385,2),(11070,11070,1),(11070,12473,2),(11070,16763,3),(11070,16765,4),(11070,16766,5),(16262,16262,1),(16262,16287,2),(13741,13741,1),(13741,13793,2),(20487,20487,1),(20487,20488,2),(12289,12289,1),(12289,12668,2),(14912,14912,1),(14912,15013,2),(18703,18703,1),(18703,18704,2),(30054,30054,1),(30054,30057,2),(17815,17815,1),(17815,17833,2),(17815,17834,3),(18694,18694,1),(18694,18695,2),(18694,18696,3),(14747,14747,1),(14747,14770,2),(14747,14771,3),(57849,57849,1),(57849,57850,2),(57849,57851,3),(29888,29888,1),(29888,29889,2),(13754,13754,1),(13754,13867,2),(14174,14174,1),(14174,14175,2),(14174,14176,3),(20234,20234,1),(20234,20235,2),(18182,18182,1),(18182,18183,2),(15273,15273,1),(15273,15312,2),(15273,15313,3),(12290,12290,1),(12290,12963,2),(14113,14113,1),(14113,14114,2),(14113,14115,3),(14113,14116,4),(14113,14117,5),(14748,14748,1),(14748,14768,2),(14748,14769,3),(15392,15392,1),(15392,15448,2),(17111,17111,1),(17111,17112,2),(17111,17113,3),(14908,14908,1),(14908,15020,2),(12797,12797,1),(12797,12799,2),(48985,48985,1),(48985,49488,2),(48985,49489,3),(11095,11095,1),(11095,12872,2),(11095,12873,3),(19491,19491,1),(19491,19493,2),(19491,19494,3),(17927,17927,1),(17927,17929,2),(17793,17793,1),(17793,17796,2),(17793,17801,3),(15275,15275,1),(15275,15317,2),(47569,47569,1),(47569,47570,2),(16261,16261,1),(16261,16290,2),(16261,51881,3),(13732,13732,1),(13732,13863,2),(14165,14165,1),(14165,14166,2),(13743,13743,1),(13743,13875,2),(53221,53221,1),(53221,53222,2),(53221,53224,3),(18754,18754,1),(18754,18755,2),(18754,18756,3),(52783,52783,1),(52783,52785,2),(52783,52786,3),(17123,17123,1),(17123,17124,2),(50391,50391,1),(50391,50392,2),(16180,16180,1),(16180,16196,2),(44394,44394,1),(44394,44395,2),(18459,18459,1),(18459,18460,2),(18459,54734,3),(50685,50685,1),(50685,50686,2),(50685,50687,3),(48483,48483,1),(48483,48484,2),(45357,45357,1),(45357,45358,2),(45357,45359,3),(45357,45360,4),(45357,45361,5),(45357,45363,6),(14893,14893,1),(14893,15357,2),(14892,14892,1),(14892,15362,2),(46908,46908,1),(46908,46909,2),(17080,17080,1),(17080,35358,2),(17080,35359,3),(17106,17106,1),(17106,17107,2),(17106,17108,3),(18135,18135,1),(18135,18136,2),(53252,53252,1),(53252,53253,2),(25229,25229,1),(25229,25230,2),(25229,28894,3),(25229,28895,4),(25229,28897,5),(25229,51311,6),(53695,53695,1),(53695,53696,2),(491,491,1),(491,857,2),(491,10165,3),(491,10166,4),(51123,51123,1),(51123,51127,2),(51123,51128,3),(47426,47426,1),(47426,47427,2),(47261,47261,1),(47261,47262,2),(56314,56314,1),(56314,56315,2),(48492,48492,1),(48492,48494,2),(48492,48495,3),(51480,51480,1),(51480,51481,2),(51480,51482,3),(2108,2108,1),(2108,3104,2),(2108,3811,3),(2108,10662,4),(2108,32549,5),(2108,51302,6),(19426,19426,1),(19426,19427,2),(19426,19429,3),(19426,19430,4),(19426,19431,5),(14128,14128,1),(14128,14132,2),(14128,14135,3),(55428,55428,1),(55428,55480,2),(55428,55500,3),(55428,55501,4),(55428,55502,5),(55428,55503,6),(24845,24845,1),(24845,25013,2),(24845,25014,3),(24845,25015,4),(24845,25016,5),(24845,25017,6),(30675,30675,1),(30675,30678,2),(30675,30679,3),(13712,13712,1),(13712,13788,2),(13712,13789,3),(53409,53409,1),(53409,53411,2),(48496,48496,1),(48496,48499,2),(48496,48500,3),(56342,56342,1),(56342,56343,2),(1809,1809,1),(1809,1810,2),(1809,6460,3),(53262,53262,1),(53262,53263,2),(53262,53264,3),(33589,33589,1),(33589,33590,2),(33589,33591,3),(51528,51528,1),(51528,51529,2),(51528,51530,3),(6121,6121,1),(6121,22784,2),(6121,22785,3),(6121,27392,4),(29441,29441,1),(29441,29444,2),(11247,11247,1),(11247,12606,2),(49224,49224,1),(49224,49610,2),(49224,49611,3),(32477,32477,1),(32477,32483,2),(32477,32484,3),(14138,14138,1),(14138,14139,2),(14138,14140,3),(14138,14141,4),(14138,14142,5),(1481,1481,1),(1481,8496,2),(1481,8497,3),(1481,10194,4),(1481,10195,5),(1481,10196,6),(1481,27398,7),(53241,53241,1),(53241,53243,2),(18767,18767,1),(18767,18768,2),(14904,14904,1),(14904,15024,2),(14904,15025,3),(14904,15026,4),(14904,15027,5),(34485,34485,1),(34485,34486,2),(34485,34487,3),(53125,53125,1),(53125,53662,2),(53125,53663,3),(53125,53664,4),(53125,53665,5),(53125,53666,6),(29074,29074,1),(29074,29075,2),(29074,29076,3),(18709,18709,1),(18709,18710,2),(19381,19381,1),(19381,19382,2),(19381,19383,3),(19381,19384,4),(19381,19385,5),(58378,58378,1),(58378,58379,2),(14520,14520,1),(14520,14780,2),(14520,14781,3),(18551,18551,1),(18551,18552,2),(18551,18553,3),(18551,18554,4),(18551,18555,5),(49024,49024,1),(49024,49538,2),(31584,31584,1),(31584,31585,2),(31584,31586,3),(31584,31587,4),(31584,31588,5),(14910,14910,1),(14910,33371,2),(2575,2575,1),(2575,2576,2),(2575,3564,3),(2575,10248,4),(2575,29354,5),(2575,50310,6),(44404,44404,1),(44404,54486,2),(47245,47245,1),(47245,47246,2),(47245,47247,3),(31679,31679,1),(31679,31680,2),(16896,16896,1),(16896,16897,2),(16896,16899,3),(16845,16845,1),(16845,16846,2),(16845,16847,3),(48963,48963,1),(48963,49564,2),(48963,49565,3),(14158,14158,1),(14158,14159,2),(24547,24547,1),(24547,24556,2),(24547,24557,3),(24547,24558,4),(24547,24559,5),(24547,24560,6),(24547,24561,7),(24547,24562,8),(24547,24631,9),(24547,24632,10),(24547,27362,11),(61689,61689,1),(61689,61690,2),(45281,45281,1),(45281,45282,2),(45281,45283,3),(33881,33881,1),(33881,33882,2),(57878,57878,1),(57878,57880,2),(16833,16833,1),(16833,16834,2),(17069,17069,1),(17069,17070,2),(30867,30867,1),(30867,30868,2),(30867,30869,3),(17074,17074,1),(17074,17075,2),(17074,17076,3),(30881,30881,1),(30881,30883,2),(30881,30884,3),(51459,51459,1),(51459,51462,2),(63117,63117,1),(63117,63121,2),(49226,49226,1),(49226,50137,2),(49226,50138,3),(31130,31130,1),(31130,31131,2),(30299,30299,1),(30299,30301,2),(44400,44400,1),(44400,44402,2),(44400,44403,3),(18094,18094,1),(18094,18095,2),(53295,53295,1),(53295,53296,2),(47179,47179,1),(47179,47180,2),(33872,33872,1),(33872,33873,2),(14057,14057,1),(14057,14072,2),(48389,48389,1),(48389,48392,2),(48389,48393,3),(53514,53514,1),(53514,53516,2),(47580,47580,1),(47580,47581,2),(19559,19559,1),(19559,19560,2),(11175,11175,1),(11175,12569,2),(11175,12571,3),(6311,6311,1),(6311,6314,2),(6311,6315,3),(6311,6316,4),(6311,6317,5),(53175,53175,1),(53175,53176,2),(6280,6280,1),(6280,6281,2),(6280,6282,3),(6280,6283,4),(6280,6286,5),(6328,6328,1),(6328,6331,2),(6328,6332,3),(6328,6333,4),(6328,6334,5),(6443,6443,1),(6443,6444,2),(6443,6445,3),(6443,6446,4),(6443,6447,5),(11151,11151,1),(11151,12952,2),(11151,12953,3),(53234,53234,1),(53234,53237,2),(53234,53238,3),(31638,31638,1),(31638,31639,2),(31638,31640,3),(53298,53298,1),(53298,53299,2),(41635,41635,1),(41635,48110,2),(41635,48111,3),(29438,29438,1),(29438,29439,2),(29438,29440,3),(13705,13705,1),(13705,13832,2),(13705,13843,3),(33859,33859,1),(33859,33866,2),(33859,33867,3),(16972,16972,1),(16972,16974,2),(51685,51685,1),(51685,51686,2),(51685,51687,3),(51685,51688,4),(51685,51689,5),(31574,31574,1),(31574,31575,2),(31574,54354,3),(57873,57873,1),(57873,57876,2),(57873,57877,3),(13733,13733,1),(13733,13865,2),(13733,13866,3),(31822,31822,1),(31822,31823,2),(26022,26022,1),(26022,26023,2),(34293,34293,1),(34293,34295,2),(34293,34296,3),(31244,31244,1),(31244,31245,2),(53228,53228,1),(53228,53232,2),(47535,47535,1),(47535,47536,2),(47535,47537,3),(48965,48965,1),(48965,49571,2),(48965,49572,3),(20177,20177,1),(20177,20179,2),(33201,33201,1),(33201,33202,2),(14179,14179,1),(14179,58422,2),(14179,58423,3),(14143,14143,1),(14143,14149,2),(14144,14144,1),(14144,14148,2),(48432,48432,1),(48432,48433,2),(48432,48434,3),(57470,57470,1),(57470,57472,2),(5405,5405,1),(5405,10052,2),(5405,10057,3),(5405,10058,4),(5405,27103,5),(5405,42987,6),(5405,42988,7),(34491,34491,1),(34491,34492,2),(34491,34493,3),(16187,16187,1),(16187,16205,2),(16040,16040,1),(16040,16113,2),(48539,48539,1),(48539,48544,2),(53380,53380,1),(53380,53381,2),(53380,53382,3),(49188,49188,1),(49188,56822,2),(49188,59057,3),(17959,17959,1),(17959,59738,2),(17959,59739,3),(17959,59740,4),(17959,59741,5),(49455,49455,1),(49455,50147,2),(14156,14156,1),(14156,14160,2),(14156,14161,3),(31848,31848,1),(31848,31849,2),(20359,20359,1),(20359,20360,2),(53375,53375,1),(53375,53376,2),(58684,58684,1),(58684,58683,2),(51682,51682,1),(51682,58413,2),(49004,49004,1),(49004,49508,2),(49004,49509,3),(1811,1811,1),(1811,8447,2),(1811,8448,3),(1811,8449,4),(1811,10208,5),(1811,10209,6),(1811,10210,7),(1811,27375,8),(1811,27376,9),(24641,24641,1),(24641,24584,2),(24641,24588,3),(24641,24589,4),(24641,27361,5),(14186,14186,1),(14186,14190,2),(20224,20224,1),(20224,20225,2),(14909,14909,1),(14909,15017,2),(2075,2075,1),(2075,38116,2),(63730,63730,1),(63730,63733,2),(5597,5597,1),(5597,5598,2),(14171,14171,1),(14171,14172,2),(13983,13983,1),(13983,14070,2),(13983,14071,3),(32385,32385,1),(32385,32387,2),(32385,32392,3),(18271,18271,1),(18271,18272,2),(18271,18273,3),(18271,18274,4),(18271,18275,5),(62759,62759,1),(62759,62760,2),(11170,11170,1),(11170,12982,2),(11170,12983,3),(44745,44745,1),(44745,54787,2),(53709,53709,1),(53709,53710,2),(12298,12298,1),(12298,12724,2),(12298,12725,3),(2607,2607,1),(2607,2606,2),(2607,2608,3),(2607,2609,4),(2607,2610,5),(18469,18469,1),(18469,55021,2),(62764,62764,1),(62764,62765,2),(8613,8613,1),(8613,8617,2),(8613,8618,3),(8613,10768,4),(8613,32678,5),(8613,50305,6),(51708,51708,1),(51708,51709,2),(51708,51710,3),(700,700,1),(700,1090,2),(30892,30892,1),(30892,30893,2),(246,246,1),(246,6146,2),(53302,53302,1),(53302,53303,2),(53302,53304,3),(30293,30293,1),(30293,30295,2),(17804,17804,1),(17804,17805,2),(48435,48435,1),(48435,48436,2),(48435,48437,3),(11242,11242,1),(11242,12467,2),(11242,12469,3),(35578,35578,1),(35578,35581,2),(53203,53203,1),(53203,53204,2),(53203,53205,3),(53182,53182,1),(53182,53183,2),(53182,53184,3),(8112,8112,1),(8112,8113,2),(8112,8114,3),(8112,12177,4),(8112,33080,5),(8112,43197,6),(8112,48103,7),(8112,48104,8),(16814,16814,1),(16814,16815,2),(16814,16816,3),(51525,51525,1),(51525,51526,2),(51525,51527,3),(8073,8073,1),(8073,38115,2),(51483,51483,1),(51483,51485,2),(8118,8118,1),(8118,8119,2),(8118,8120,3),(8118,12179,4),(8118,33082,5),(8118,43199,6),(8118,58448,7),(8118,58449,8),(44397,44397,1),(44397,44398,2),(44397,44399,3),(5648,5648,1),(5648,5649,2),(5726,5726,1),(5726,5727,2),(29723,29723,1),(29723,29725,2),(49018,49018,1),(49018,49529,2),(49018,49530,3),(19290,19290,1),(19290,19294,2),(19290,24283,3),(19286,19286,1),(19286,19287,2),(46951,46951,1),(46951,46952,2),(46951,46953,3),(56333,56333,1),(56333,56336,2),(12295,12295,1),(12295,12676,2),(12295,12677,3),(3908,3908,1),(3908,3909,2),(3908,3910,3),(3908,12180,4),(3908,26790,5),(3908,51309,6),(56636,56636,1),(56636,56637,2),(56636,56638,3),(47558,47558,1),(47558,47559,2),(47558,47560,3),(16929,16929,1),(16929,16930,2),(16929,16931,3),(65661,65661,1),(65661,66191,2),(65661,66192,3),(34497,34497,1),(34497,34498,2),(34497,34499,3),(5952,5952,1),(5952,51679,2),(16179,16179,1),(16179,16214,2),(16179,16215,3),(51562,51562,1),(51562,51563,2),(51562,51564,3),(29447,29447,1),(29447,55339,2),(29447,55340,3),(47263,47263,1),(47263,47264,2),(47263,47265,3),(16173,16173,1),(16173,16222,2),(53120,53120,1),(53120,53121,2),(53120,53122,3),(53120,53123,4),(53120,53124,5),(53120,53040,6),(12299,12299,1),(12299,12761,2),(12299,12762,3),(20143,20143,1),(20143,20144,2),(20143,20145,3),(16252,16252,1),(16252,16306,2),(16252,16307,3),(49042,49042,1),(49042,49786,2),(49042,49787,3),(19376,19376,1),(19376,63457,2),(19376,63458,3),(51627,51627,1),(51627,51628,2),(51627,51629,3),(47586,47586,1),(47586,47587,2),(47586,47588,3),(47573,47573,1),(47573,47577,2),(14522,14522,1),(14522,14788,2),(14522,14789,3),(14522,14790,4),(14522,14791,5),(49588,49588,1),(49588,49589,2),(18769,18769,1),(18769,18770,2),(18769,18771,3),(18769,18772,4),(18769,18773,5),(30664,30664,1),(30664,30665,2),(30664,30666,3),(15274,15274,1),(15274,15311,2),(20049,20049,1),(20049,20056,2),(20049,20057,3),(51745,51745,1),(51745,51746,2),(16513,16513,1),(16513,16514,2),(16513,16515,3),(48962,48962,1),(48962,49567,2),(48962,49568,3),(14524,14524,1),(14524,14525,2),(14524,14526,3),(14524,14527,4),(14524,14528,5),(51692,51692,1),(51692,51696,2),(30919,30919,1),(30919,30920,2),(62758,62758,1),(62758,62762,2),(53215,53215,1),(53215,53216,2),(11180,11180,1),(11180,28592,2),(11180,28593,3),(11108,11108,1),(11108,12349,2),(11108,12350,3),(33603,33603,1),(33603,33604,2),(33603,33605,3),(46867,46867,1),(46867,56611,2),(46867,56612,3),(23030,23030,1),(23030,27394,2),(1467,1467,1),(1467,8440,2),(1467,8441,3),(1467,8442,4),(1467,10203,5),(1467,10204,6),(1467,27380,7),(1467,27381,8),(1472,1472,1),(1472,1473,2),(1472,1474,3),(1472,1475,4),(1472,10158,5),(1472,27393,6),(1472,42999,7),(27811,27811,1),(27811,27815,2),(27811,27816,3),(27813,27813,1),(27813,27817,2),(27813,27818,3),(33142,33142,1),(33142,33145,2),(1196,1196,1),(1196,6142,2),(1196,8428,3),(1196,10188,4),(1196,10189,5),(1196,10190,6),(1196,27384,7),(7370,7370,1),(7370,26184,2),(7370,26185,3),(7370,26186,4),(7370,26202,5),(7370,28343,6),(20387,20387,1),(20387,20388,2),(20387,20389,3),(20387,20390,4),(20387,20391,5),(20387,20392,6),(20387,27491,7),(1747,1747,1),(1747,1748,2),(1747,1749,3),(1747,1750,4),(1747,1751,5),(1747,16698,6),(1747,27346,7),(6966,6966,1),(6966,30880,2),(6966,30683,3),(6966,30682,4),(6966,29520,5),(6964,6964,1),(6964,11413,2),(6964,11414,3),(6964,11415,4),(6964,1386,5),(9799,9799,1),(9799,25988,2),(7230,7230,1),(7230,7231,2),(7230,7232,3),(7230,7233,4),(7230,7234,5),(24440,24440,1),(24440,24441,2),(24440,24463,3),(24440,24464,4),(24440,27351,5),(20322,20322,1),(20322,20323,2),(20322,20324,3),(20322,20326,4),(20322,20327,5),(20322,27489,6),(20322,47998,7),(7829,7829,1),(7829,7874,2),(7829,7875,3),(7806,7806,1),(7806,7807,2),(7806,7808,3),(12319,12319,1),(12319,12971,2),(12319,12972,3),(12966,12966,1),(12966,12967,2),(12966,12968,3),(45234,45234,1),(45234,45243,2),(1194,1194,1),(1194,1225,2),(1194,6132,3),(1194,10231,4),(1194,27387,5),(7240,7240,1),(7240,7236,2),(7240,7238,3),(7240,7237,4),(7240,7239,5),(24475,24475,1),(24475,24476,2),(24475,24477,3),(24475,24478,4),(24475,27352,5),(7245,7245,1),(7245,7246,2),(7245,7247,3),(7245,7248,4),(7245,7249,5),(7245,17545,6),(11103,11103,1),(11103,12357,2),(11103,12358,3),(19572,19572,1),(19572,19573,2),(53569,53569,1),(53569,53576,2),(13976,13976,1),(13976,13979,2),(30154,30154,1),(30154,30199,2),(30154,30200,3),(17233,17233,1),(17233,9257,2),(7250,7250,1),(7250,7251,2),(7250,7252,3),(7250,7253,4),(7250,7254,5),(24494,24494,1),(24494,24511,2),(24494,24512,3),(24494,24513,4),(24494,27354,5),(24451,24451,1),(24451,24454,2),(24451,24455,3),(20381,20381,1),(20381,20382,2),(20381,20383,3),(20381,20384,4),(20381,20385,5),(20381,20386,6),(20381,27492,7),(20381,48001,8),(20381,48002,9),(46945,46945,1),(46945,46949,2),(46946,46946,1),(46946,46947,2),(7235,7235,1),(7235,7241,2),(7235,7242,3),(7235,7243,4),(7235,7244,5),(24490,24490,1),(24490,24514,2),(24490,24515,3),(24490,24516,4),(24490,27353,5),(20403,20403,1),(20403,20404,2),(20403,20405,3),(20403,20406,4),(20403,27494,5),(20393,20393,1),(20393,20394,2),(20393,20395,3),(20393,20396,4),(20393,27500,5),(20393,33703,6),(20393,48005,7),(20393,48006,8),(33150,33150,1),(33150,33154,2),(20429,20429,1),(20429,20430,2),(20429,20431,3),(20429,20432,4),(20429,27497,5),(53486,53486,1),(53486,53488,2),(5364,5364,1),(5364,5368,2),(5364,5369,3),(5364,5370,4),(5363,5363,1),(5363,5365,2),(5363,5366,3),(5363,5367,4),(4112,4112,1),(4112,4113,2),(4112,4115,3),(4112,4114,4),(4107,4107,1),(4107,4108,2),(4107,4109,3),(4107,4111,4),(51675,51675,1),(51675,51677,2),(51672,51672,1),(51672,51674,2),(30802,30802,1),(30802,30808,2),(746,746,1),(746,1159,2),(746,3267,3),(746,3268,4),(746,7926,5),(746,7927,6),(746,10838,7),(746,10839,8),(746,18608,9),(746,18610,10),(746,27030,11),(746,27031,12),(746,45543,13),(746,51827,14),(746,45544,15),(746,51803,16),(33191,33191,1),(33191,33192,2),(33196,33196,1),(33196,33197,2),(33196,33198,3),(19578,19578,1),(19578,20895,2),(19579,19579,1),(19579,24529,2),(30160,30160,1),(30160,29179,2),(30160,29180,3),(7620,7620,1),(7620,7731,2),(7620,7732,3),(7620,18248,4),(7620,33095,5),(7620,51294,6),(53671,53671,1),(53671,53673,2),(53671,54151,3),(53655,53655,1),(53655,53656,2),(53655,53657,3),(34506,34506,1),(34506,34507,2),(34506,34508,3),(34506,34838,4),(34506,34839,5),(34833,34833,1),(34833,34834,2),(34833,34835,3),(34833,34836,4),(34833,34837,5),(34948,34948,1),(34948,34949,2),(35098,35098,1),(35098,35099,2),(29841,29841,1),(29841,29842,2),(29834,29834,1),(29834,29838,2),(46856,46856,1),(46856,46857,2),(1241,1241,1),(1241,8493,2),(1241,10162,3),(1241,10163,4),(1241,10164,5),(1241,27386,6),(2124,2124,1),(2124,2125,2),(2124,8425,3),(2124,8426,4),(2124,10217,5),(2124,10218,6),(2124,27385,7),(33388,33388,1),(33388,33391,2),(33388,34090,3),(33388,34091,4),(16958,16958,1),(16958,16961,2),(37116,37116,1),(37116,37117,2),(2980,2980,1),(2980,2981,2),(2980,2982,3),(2980,3667,4),(2980,2975,5),(2980,2976,6),(2980,2977,7),(2980,3666,8),(2980,27347,9),(51983,51983,1),(51983,51986,2),(26094,26094,1),(26094,26189,2),(26094,26190,3),(26094,27366,4),(44440,44440,1),(44440,44441,2),(64353,64353,1),(64353,64357,2),(17002,17002,1),(17002,24866,2),(35363,35363,1),(35363,35364,2),(16880,16880,1),(16880,61345,2),(16880,61346,3),(63349,63349,1),(63349,63350,2),(63349,63351,3),(23785,23785,1),(23785,23822,2),(23785,23823,3),(23785,23824,4),(23785,23825,5),(62905,62905,1),(62905,62908,2),(53483,53483,1),(53483,53485,2),(53554,53554,1),(53554,53555,2),(8096,8096,1),(8096,8097,2),(8096,8098,3),(8096,12176,4),(8096,33078,5),(8096,43195,6),(8096,48099,7),(8096,48100,8),(8099,8099,1),(8099,8100,2),(8099,8101,3),(8099,12178,4),(8099,33081,5),(8099,48101,6),(8099,48102,7),(8099,43198,8),(64418,64418,1),(64418,64419,2),(64418,64420,3);
/*!40000 ALTER TABLE `spell_ranks` ENABLE KEYS */;
UNLOCK TABLES;
DELIMITER ;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CharExtraLevelHPMP` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mrhooha`@`%`*/ /*!50003 PROCEDURE `sp_CharExtraLevelHPMP`()
BEGIN
  
  DECLARE intMaxHP           INT   DEFAULT 65535000; 
  DECLARE intMaxMana         INT   DEFAULT 65535000;   
  DECLARE sngHPInc           FLOAT DEFAULT 0.001;    
  DECLARE sngManaInc         FLOAT DEFAULT 0.001;    
  DECLARE intStartLvl        INT   DEFAULT 80;      
  DECLARE intFinishLvl       INT   DEFAULT 85;     
  
  DECLARE intRecordDone      INT   DEFAULT 0;
  DECLARE intClass           INT   DEFAULT 0;
  DECLARE intLevel           INT   DEFAULT 0;
  DECLARE intCurrHP          INT   DEFAULT 0;
  DECLARE intCurrMana        INT   DEFAULT 0;
  
  DECLARE curPlayerStat  CURSOR FOR SELECT `class`, `level`, `basehp`, `basemana` FROM player_classlevelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;
  
  OPEN curPlayerStat;
  
  REPEAT
    
    FETCH curPlayerStat INTO intClass, intLevel, intCurrHP, intCurrMana;
    
    IF intLevel = intStartLvl THEN
       REPEAT
         
         SET intLevel = intLevel + 1;
         
         DELETE FROM player_classlevelstats WHERE `class` = intClass AND `level` = intLevel;
         
         IF (ROUND(intCurrHP * (1 + sngHPInc) + 200)) <= intMaxHP THEN
           SET intCurrHP = ROUND(intCurrHP * (1 + sngHPInc) + 200);
         ELSE
           SET intCurrHP = intMaxHP;  
         END IF;
         
         IF (ROUND(intCurrMana * (1 + sngManaInc) + 200)) <= intMaxMana THEN
           SET intCurrMana = ROUND(intCurrMana * (1 + sngManaInc) + 200);
         ELSE
           SET intCurrMana = intMaxMana;
         END IF;
         
         INSERT INTO player_classlevelstats
         (`class`, `level`, `basehp`, `basemana`)
         VALUES
         (intClass, intLevel, intCurrHP, intCurrMana);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;
  
  CLOSE curPlayerStat;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CharExtraLevelStats` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mrhooha`@`%`*/ /*!50003 PROCEDURE `sp_CharExtraLevelStats`()
BEGIN
  
  DECLARE intMaxStats        INT   DEFAULT 2556541;    
  DECLARE sngStatsInc        FLOAT DEFAULT 0.00000000001;    
  DECLARE intStartLvl        INT   DEFAULT 80;      
  DECLARE intFinishLvl       INT   DEFAULT 85;     
  
  DECLARE intRecordDone      INT   DEFAULT 0;
  DECLARE intRace            INT   DEFAULT 0;
  DECLARE intClass           INT   DEFAULT 0;
  DECLARE intLevel           INT   DEFAULT 0;
  DECLARE intCurrSTR         INT   DEFAULT 0;
  DECLARE intCurrAGI         INT   DEFAULT 0;
  DECLARE intCurrSTA         INT   DEFAULT 0;
  DECLARE intCurrINT         INT   DEFAULT 0;
  DECLARE intCurrSPI         INT   DEFAULT 0;
  
  DECLARE curPlayerStat  CURSOR FOR SELECT `race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi` FROM player_levelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;
  
  OPEN curPlayerStat;
  
  REPEAT
    
    FETCH curPlayerStat INTO intRace, intClass, intLevel, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI;
    
    IF intLevel = intStartLvl THEN
       REPEAT
         
         SET intLevel = intLevel + 1;
         
         DELETE FROM player_levelstats WHERE `race` = intRace AND `class` = intClass AND `level` = intLevel;
         
         IF (ROUND(intCurrSTR * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSTR = ROUND(intCurrSTR * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTR = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrAGI * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrAGI = ROUND(intCurrAGI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrAGI = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrSTA * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSTA = ROUND(intCurrSTA * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTA = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrINT * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrINT = ROUND(intCurrINT * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrINT = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrSPI * (1 + sngStatsInc) + 10)) <= intMaxStats THEN
           SET intCurrSPI = ROUND(intCurrSPI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSPI = intMaxStats;
         END IF;
         
         INSERT INTO player_levelstats
         (`race`, `class`, `level`, `str`, `agi`, `sta`, `inte`, `spi`)
         VALUES
         (intRace, intClass, intLevel, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;
  
  CLOSE curPlayerStat;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_loot` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_loot`(IN loot_type VARCHAR(10),IN loot_entry INT(10),IN item_entry INT(10))
BEGIN
	IF loot_entry IS NOT NULL OR item_entry IS NOT NULL THEN
		CASE UCASE(loot_type)
			WHEN 'FISH' THEN BEGIN
				DELETE FROM `fishing_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'NPC' THEN BEGIN
				DELETE FROM `creature_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'GO' THEN BEGIN
				DELETE FROM `gameobject_loot_template` WHERE `entry`=IFNUofcLL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'ITEM' THEN BEGIN
				DELETE FROM `item_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'DISENCH' THEN BEGIN
				DELETE FROM `disenchant_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'PROSPECT' THEN BEGIN
				DELETE FROM `propspecting_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'MILL' THEN BEGIN
				DELETE FROM `millling_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'PICKPOCKET' THEN BEGIN
				DELETE FROM `pickpocketing_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'SKIN' THEN BEGIN
				DELETE FROM `skinning_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'QUEST' THEN BEGIN
				DELETE FROM `quest_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			WHEN 'REF' THEN BEGIN
				IF loot_entry IS NOT NULL THEN
					DELETE FROM `creature_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `disenchant_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `fishing_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `gameobject_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `item_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `mail_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `milling_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `pickpocketing_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `prospecting_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `skinning_loot_template` WHERE `mincountOrRef`=-loot_entry;
					DELETE FROM `spell_loot_template` WHERE `mincountOrRef`=-loot_entry;
				END IF;
				
				DELETE FROM `reference_loot_template` WHERE `entry`=IFNULL(loot_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
			END;
			ELSE CALL INVALID_LOOT_TYPE;
		END CASE;
	ELSE 
		CALL MUST_PROVIDE_ENTRY_OR_ITEM;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_npc_trainer` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_npc_trainer`(IN npc_entry INT(10), IN spell_id INT(10))
BEGIN
	IF spell_id IS NOT NULL OR npc_entry IS NOT NULL THEN
		DELETE FROM `npc_trainer` WHERE `entry`=IFNULL(npc_entry,`entry`) AND `spell`=IFNULL(spell_id,`spell`);
	ELSE 
		CALL MUST_PROVIDE_ENTRY_OR_SPELL;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_npc_vendor` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_npc_vendor`(IN npc_entry INT(10), IN item_entry INT(10))
BEGIN
	IF item_entry IS NOT NULL OR npc_entry IS NOT NULL THEN
		DELETE FROM `npc_vendor` WHERE `entry`=IFNULL(npc_entry,`entry`) AND `item`=IFNULL(item_entry,`item`);
	ELSE
		CALL MUST_PROVIDE_ENTRY_OR_ITEM;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_questgiver` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_questgiver`(IN qg_type VARCHAR(10),IN qg_entry INT(10), IN quest_entry INT(10))
BEGIN
	IF qg_entry IS NOT NULL OR quest_entry IS NOT NULL THEN
		CASE UCASE(qg_type)
			WHEN 'NPC' THEN BEGIN
				DELETE FROM `creature_questrelation` WHERE `id`=IFNULL(qg_entry,`id`) AND `quest`=IFNULL(quest_entry,`quest`);
			END;
			WHEN 'GO' THEN BEGIN
				DELETE FROM `gameobject_questrelation` WHERE `id`=IFNULL(qg_entry,`id`) AND `quest`=IFNULL(quest_entry,`quest`);
			END;
			ELSE CALL INVALID_ENTRY_TYPE;
		END CASE;
	ELSE CALL MUST_PROVIDE_ENTRY_OR_QUEST;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_questtaker` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_questtaker`(IN qt_type VARCHAR(10),IN qt_entry INT(10), IN quest_entry INT(10))
BEGIN
	IF qt_entry IS NOT NULL OR quest_entry IS NOT NULL THEN
		CASE UCASE(qt_type)
			WHEN 'NPC' THEN BEGIN
				DELETE FROM `creature_involvedrelation` WHERE `id`=IFNULL(qt_entry,`id`) AND `quest`=IFNULL(quest_entry,`quest`);
			END;
			WHEN 'GO' THEN BEGIN
				DELETE FROM `gameobject_involvedrelation` WHERE `id`=IFNULL(qt_entry,`id`) AND `quest`=IFNULL(quest_entry,`quest`);
			END;
			ELSE CALL INVALID_ENTRY_TYPE;
		END CASE;
	ELSE CALL MUST_PROVIDE_ENTRY_OR_QUEST;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_script` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_script`(IN script_type VARCHAR(10), IN script_id INT(10))
BEGIN
	CASE UCASE(script_type)
		WHEN 'EAI' THEN BEGIN
			DELETE FROM `creature_ai_scripts` WHERE `id`=script_id;
		END;
		WHEN 'GO' THEN BEGIN
			DELETE FROM `gameobject_scripts` WHERE `id`=script_id;
		END;
		WHEN 'GOSSIP' THEN BEGIN
			DELETE FROM `gossip_scripts` WHERE `id`=script_id;
		END;
		WHEN 'Q_START' THEN BEGIN
			DELETE FROM `quest_start_scripts` WHERE `id`=script_id;
		END;
		WHEN 'Q_END' THEN BEGIN
			DELETE FROM `quest_end_scripts` WHERE `id`=script_id;
		END;
		WHEN 'SPELL' THEN BEGIN
			DELETE FROM `spell_scripts` WHERE `id`=script_id;
		END;
		WHEN 'WP' THEN BEGIN
			DELETE FROM `waypoint_scripts` WHERE `id`=script_id;
		END;
		ELSE CALL INVALID_SCRIPT_TYPE;
	END CASE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_script_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_script_bylist`(IN script_type VARCHAR(10), IN script_id_list LONGTEXT)
BEGIN
	CALL `sp_set_entry_list` (script_id_list,null);
	CASE UCASE(script_type)
		WHEN 'EAI' THEN BEGIN
			DELETE FROM `creature_ai_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'GO' THEN BEGIN
			DELETE FROM `gameobject_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'GOSSIP' THEN BEGIN
			DELETE FROM `gossip_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'Q_START' THEN BEGIN
			DELETE FROM `quest_start_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'Q_END' THEN BEGIN
			DELETE FROM `quest_end_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'SPELL' THEN BEGIN
			DELETE FROM `spell_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		WHEN 'WP' THEN BEGIN
			DELETE FROM `waypoint_scripts` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		END;
		ELSE CALL INVALID_SCRIPT_TYPE;
	END CASE;
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spawn` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spawn`(IN spawn_type VARCHAR(10),IN spawn_guid INT(10), IN spawn_entry INT(10))
BEGIN
	IF spawn_guid IS NOT NULL OR spawn_entry IS NOT NULL THEN
		CASE UCASE(spawn_type)
			WHEN 'NPC' THEN BEGIN
				DELETE FROM `creature` WHERE `guid`=IFNULL(spawn_guid,`guid`) AND `id`=IFNULL(spawn_entry,`id`);
				DELETE FROM `game_event_creature` WHERE `guid`=IFNULL(spawn_guid,-1);
			END;
			WHEN 'GO' THEN BEGIN
				DELETE FROM `gameobject` WHERE `guid`=IFNULL(spawn_guid,`guid`) AND `id`=IFNULL(spawn_entry,`id`);
				DELETE FROM `game_event_gameobject` WHERE `guid`=IFNULL(spawn_guid,-1);
			END;
			ELSE CALL INVALID_SPAWN_TYPE;
		END CASE;
	ELSE 
		CALL MUST_PROVIDE_GUID_OR_ENTRY;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spell_area` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spell_area`(IN spell_id INT(10), IN area_id INT(10))
BEGIN
 
	IF spell_id IS NOT NULL OR area_id IS NOT NULL THEN
		DELETE FROM `spell_area` WHERE `spell`=IFNULL(spell_id,`spell`) AND `area`=IFNULL(area_id,`area`);
	ELSE
		CALL MUST_PROVIDE_SPELL_OR_AREA;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spell_position` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spell_position`(IN spell_id INT(10))
BEGIN
	DELETE FROM `spell_target_position` WHERE `id`=spell_id;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spell_position_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spell_position_bylist`(IN spell_list LONGTEXT)
BEGIN
	CALL `sp_set_entry_list` (spell_list,null);
	DELETE FROM `spell_target_position` WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_delete_spell_target` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_delete_spell_target`(IN spell_id INT(10),IN target_entry INT(10))
BEGIN
	IF spell_id IS NOT NULL OR target_entry IS NOT NULL THEN
		DELETE FROM `spell_script_target` WHERE `entry`=IFNULL(spell_id,`entry`) AND `targetEntry`=IFNULL(target_entry,`targetEntry`);
	ELSE
		CALL MUST_PROVIDE_SPELL_OR_TARGET;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_cleanup_loot` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_cleanup_loot`()
BEGIN
CREATE TABLE `Loot_temp` (
    `lootid` INT(8) UNSIGNED NOT NULL PRIMARY KEY DEFAULT '0'
);
INSERT IGNORE INTO `Loot_temp` SELECT `entry` FROM `item_template`;
DELETE FROM `prospecting_loot_template` WHERE `entry` NOT IN (SELECT `lootid` FROM `Loot_temp`);
DELETE FROM `Loot_temp`;
INSERT IGNORE INTO `Loot_temp` SELECT `skinloot` FROM `creature_template` WHERE skinloot>0;
DELETE FROM `skinning_loot_template` WHERE `entry` NOT IN (SELECT `lootid` FROM `Loot_temp`);
DELETE FROM `Loot_temp`;
INSERT IGNORE INTO `Loot_temp` SELECT `lootid` FROM `creature_template` WHERE lootid>0;
DELETE FROM `creature_loot_template` WHERE `entry` NOT IN (SELECT `lootid` FROM `Loot_temp`);
DELETE FROM `Loot_temp`;
DROP TABLE `Loot_temp`;
DELETE FROM `disenchant_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `disenchant_loot_template` WHERE `entry` NOT IN (SELECT `disenchantid` FROM `item_template`);
DELETE FROM `pickpocketing_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `prospecting_loot_template` WHERE `entry` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `prospecting_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `mail_loot_template` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_cleanup_reference_loot` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_cleanup_reference_loot`()
BEGIN
CREATE TABLE `RL_temp` (
    `ref_id` INT(8) UNSIGNED NOT NULL PRIMARY KEY DEFAULT '0'
);
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `gameobject_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `item_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `creature_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `spell_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `prospecting_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `milling_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `mail_loot_template` WHERE `mincountOrRef` <0;
INSERT IGNORE INTO `RL_temp` SELECT DISTINCT(`mincountOrRef`)*-1 FROM `reference_loot_template` WHERE `mincountOrRef`<0;
DELETE FROM `reference_loot_template` WHERE `entry` NOT IN (SELECT `ref_id` FROM `RL_temp`);
DROP TABLE `RL_temp`;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_cleanup_world` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_cleanup_world`()
BEGIN
DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `creature` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM areatrigger_involvedrelation WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `battlemaster_entry` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `battlemaster_entry` WHERE `bg_template` NOT IN (SELECT `id` FROM `battleground_template`);
UPDATE `creature` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`) AND `equipment_id`!=0;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_formations` WHERE leaderGUID NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_formations` WHERE memberGUID NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_involvedrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `creature_linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_questrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `creature_template_addon` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `game_event_creature_quest` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `game_event_creature_quest` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `game_event_creature_quest` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_gameobject_quest` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `game_event_gameobject_quest` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `game_event_gameobject_quest` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_npc_gossip` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_model_equip` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_battleground_holiday` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_condition` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_creature` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_gameobject` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_npc_vendor` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `game_event_npc_vendor` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_npcflag` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_pool` WHERE `event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_prerequisite` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_prerequisite` WHERE `prerequisite_event` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_quest_condition` WHERE `event_id` NOT IN (SELECT `entry` FROM `game_event`);
DELETE FROM `game_event_quest_condition` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `quest` NOT IN (SELECT `entry` FROM `quest_template`);
DELETE FROM `item_required_target` WHERE `targetEntry` NOT IN (SELECT `entry` FROM `creature_template`) AND `type` IN (1,2);
DELETE FROM `mail_level_reward` WHERE `senderEntry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_spellclick_spells` WHERE `quest_start` NOT IN (SELECT `entry` FROM `quest_template`) AND `quest_start`<>0;
DELETE FROM `npc_spellclick_spells` WHERE `quest_end` NOT IN (SELECT `entry` FROM `quest_template`) AND `quest_end`<>0;
DELETE FROM `npc_trainer` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_vendor` WHERE `entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `npc_vendor` WHERE `item` NOT IN (SELECT `entry` FROM `item_template`);
DELETE FROM `pet_levelstats` WHERE `creature_entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `quest_end_scripts` WHERE `id` NOT IN (SELECT `CompleteScript` FROM `quest_template`);
DELETE FROM `quest_start_scripts` WHERE `id` NOT IN (SELECT `StartScript` FROM `quest_template`);
DELETE FROM `spell_script_target` WHERE `targetEntry` NOT IN (SELECT `entry` FROM `creature_template`) AND `type` IN (1,2,3) AND `targetEntry`!=0;
DELETE FROM `spell_script_target` WHERE `targetEntry` NOT IN (SELECT `entry` FROM `gameobject_template`) AND `type`=0 AND `targetEntry`!=0;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_reguid_alter_tables` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_reguid_alter_tables`()
BEGIN
            CREATE TABLE `creature_temp` (
  `guid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
  `map` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `spawnMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  `phaseMask` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
  `modelid` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `equipment_id` MEDIUMINT(9) NOT NULL DEFAULT '0',
  `position_x` FLOAT NOT NULL DEFAULT '0',
  `position_y` FLOAT NOT NULL DEFAULT '0',
  `position_z` FLOAT NOT NULL DEFAULT '0',
  `orientation` FLOAT NOT NULL DEFAULT '0',
  `spawntimesecs` INT(10) UNSIGNED NOT NULL DEFAULT '120',
  `spawndist` FLOAT NOT NULL DEFAULT '5',
  `currentwaypoint` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `curhealth` INT(10) UNSIGNED NOT NULL DEFAULT '1',
  `curmana` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `DeathState` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `MovementType` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `old_guid` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_map` (`map`),
  KEY `idx_id` (`id`)
) ENGINE=MYISAM AUTO_INCREMENT=250001 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature System';
        ALTER TABLE `creature_addon` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_formations` ADD COLUMN `new_guid_leader` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_formations` ADD COLUMN `new_guid_member` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_linked_respawn` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `creature_linked_respawn` ADD COLUMN `new_linked_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_creature` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `pool_creature` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_model_equip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npc_gossip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npc_vendor` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `game_event_npcflag` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
        ALTER TABLE `npc_gossip` ADD COLUMN `new_guid` INT(10) UNSIGNED NOT NULL;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_dev_re_guid` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_dev_re_guid`(IN new_base_guid INT(10))
BEGIN
    CALL `sp_dev_reguid_alter_tables`();
    SET @s = CONCAT("ALTER TABLE `creature_temp` AUTO_INCREMENT=",new_base_guid,";");
    PREPARE STM FROM @s;
    EXECUTE STM;
    INSERT INTO `creature_temp` (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType,old_guid)
    SELECT id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType,guid FROM `creature` ORDER BY `id` ASC;
    UPDATE `creature_temp` SET guid = old_guid WHERE `old_guid`>250000;    
		UPDATE game_event_npc_gossip p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_npc_vendor p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_npcflag p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE npc_gossip p
                INNER JOIN creature_temp pp
                ON p.npc_guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE game_event_model_equip p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_addon p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_formations p
                INNER JOIN creature_temp pp
                ON p.leaderGUID = pp.old_guid
                SET p.new_guid_leader = pp.guid;
                UPDATE creature_formations p
                INNER JOIN creature_temp pp
                ON p.memberGUID = pp.old_guid
                SET p.new_guid_member = pp.guid;
                UPDATE creature_linked_respawn p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE creature_linked_respawn p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_linked_guid = pp.guid;
                UPDATE game_event_creature p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                UPDATE pool_creature p
                INNER JOIN creature_temp pp
                ON p.guid = pp.old_guid
                SET p.new_guid = pp.guid;
                ALTER TABLE `creature_temp` DROP COLUMN `old_guid`;
                DROP TABLE `creature`;
                RENAME TABLE `creature_temp` TO `creature`;
                ALTER TABLE game_event_npc_gossip DISABLE KEYS;
                UPDATE `game_event_npc_gossip` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npc_gossip` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npc_gossip ENABLE KEYS;
                ALTER TABLE game_event_npc_vendor DISABLE KEYS;
                UPDATE `game_event_npc_vendor` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npc_vendor` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npc_vendor ENABLE KEYS;
                ALTER TABLE game_event_npcflag DISABLE KEYS;
                UPDATE `game_event_npcflag` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_npcflag` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_npcflag ENABLE KEYS;
                ALTER TABLE `npc_gossip` DROP PRIMARY KEY;
                UPDATE `npc_gossip` SET `npc_guid`=`new_guid`;      
                SELECT npc_guid,new_guid FROM npc_gossip;  
                ALTER TABLE `npc_gossip` DROP COLUMN `new_guid`;
                ALTER TABLE `npc_gossip` ADD PRIMARY KEY(`npc_guid`);
                ALTER TABLE game_event_model_equip DISABLE KEYS;
                UPDATE `game_event_model_equip` SET `guid`=`new_guid`;        
                ALTER TABLE `game_event_model_equip` DROP COLUMN `new_guid`;
                ALTER TABLE game_event_model_equip ENABLE KEYS;
                ALTER TABLE `creature_addon` DROP PRIMARY KEY;
                UPDATE `creature_addon` SET `guid`=`new_guid`;        
                ALTER TABLE `creature_addon` DROP COLUMN `new_guid`;
                ALTER TABLE `creature_addon` ADD PRIMARY KEY(`guid`);
                ALTER TABLE creature_formations DISABLE KEYS;
                UPDATE `creature_formations` SET leaderGUID = new_guid_leader;
                ALTER TABLE `creature_formations` DROP COLUMN `new_guid_leader`;
                UPDATE `creature_formations` SET memberGUID = new_guid_member;
                ALTER TABLE `creature_formations` DROP COLUMN `new_guid_member`;
                ALTER TABLE creature_formations ENABLE KEYS;
                ALTER TABLE `creature_linked_respawn` DROP PRIMARY KEY;
                UPDATE `creature_linked_respawn` SET guid = new_guid;
                ALTER TABLE `creature_linked_respawn` DROP COLUMN `new_guid`;
                UPDATE `creature_linked_respawn` SET linkedGuid = new_linked_guid;
                ALTER TABLE `creature_linked_respawn` DROP COLUMN `new_linked_guid`;
                ALTER TABLE `creature_linked_respawn` ADD PRIMARY KEY(`guid`);
                ALTER TABLE `game_event_creature` DROP PRIMARY KEY;
                UPDATE `game_event_creature` SET guid = new_guid;
                ALTER TABLE `game_event_creature` DROP COLUMN `new_guid`;
                ALTER TABLE `game_event_creature` ADD PRIMARY KEY(`guid`);
                ALTER TABLE pool_creature DISABLE KEYS;
                UPDATE `pool_creature` SET guid = new_guid;
                ALTER TABLE `pool_creature` DROP COLUMN `new_guid`;
                ALTER TABLE pool_creature ENABLE KEYS;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_cast_onspawn` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_cast_onspawn`(IN npc_entry INT(10), spell_id MEDIUMINT(6))
BEGIN
    CALL `sp_error_entry`('NPC',npc_entry);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=npc_entry; 
    
    CALL `sp_eai_select_id`(npc_entry,@event_id);
    
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,npc_entry,11,0,100,0,0,0,0,0,11,spell_id,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: NPC cast spell on self');
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_inverse_phase_mask` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_inverse_phase_mask`(IN max_phase INT, IN phase_list VARCHAR(255))
BEGIN
DECLARE max_phase_mask INT;
DECLARE phase_yes INT;
DECLARE inverse_phase_mask INT;
CALL `sp_eai_table_phase_mask`();
CALL `sp_set_entry_list`(phase_list);
SET max_phase_mask = (SELECT SUM(phase_mask) FROM phase_mask WHERE phaseID <= max_phase);
SET phase_yes = (SELECT SUM(phase_mask) FROM phase_mask WHERE phaseID IN (SELECT `value` FROM tdb_entry_list));
SET inverse_phase_mask = (max_phase_mask - phase_yes);
DROP TABLE `tdb_entry_list`;
DROP TABLE `phase_mask`;
IF inverse_phase_mask < 0 THEN
SELECT "PhaseID is bigger then maximum phase entered" AS `inverse_phase_mask`;
ELSE IF phase_list="0" THEN
SELECT 0 AS `inverse_phase_mask`;
ELSE
SELECT inverse_phase_mask;
END IF;
END IF;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_kill_ondeath` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_kill_ondeath`(IN npc_entry INT(10), trigger_id INT(10))
BEGIN
    CALL `sp_error_entry`('NPC',npc_entry);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=npc_entry; 
    
    CALL `sp_eai_select_id`(npc_entry, @event_id);
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,npc_entry,6,0,100,0,0,0,0,0,33,trigger_id,6,0,23,1,0,0,0,0,0,0, 'Stored procedures eAI: quest - kill trigger on NPC death');
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_quest_credit_on_spellhit` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_quest_credit_on_spellhit`(IN npc_entry INT(10), spell_id MEDIUMINT(6), trigger_id INT(10), despawn_time INT(10))
BEGIN
    CALL `sp_error_entry`('NPC',npc_entry);
    CALL `sp_error_trigger` (trigger_id);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=npc_entry; 
    
        CALL `sp_eai_select_id` (npc_entry, @event_id);
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,npc_entry,8,0,100,1,spell_ID,-1,0,0,33,trigger_ID,6,0,23,1,0,0,0,0,0,0, 'Stored procedures eAI: quest - kill trigger on spellcast');
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id+1,npc_entry,1,1,100,0,despawn_time,despawn_time,despawn_time,despawn_time,41,0,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: despawn after defined time');
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_select_id` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_select_id`(IN npc_entry INT(10), OUT event_id INT(10))
BEGIN
	CALL `sp_error_entry`('NPC',npc_entry);
	SET event_id = (SELECT MAX(id)+1 FROM `creature_ai_scripts` WHERE `creature_id`=npc_entry);
    DELETE FROM `creature_ai_scripts` WHERE `creature_id`=npc_entry AND `comment` LIKE "Stored procedures eAI%";
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_spawn_spellhit` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_spawn_spellhit`(IN npc_entry INT(10),IN spell_id MEDIUMINT(6),IN spawn_id INT(10),IN despawn_time INT(10))
BEGIN
    CALL `sp_error_entry`('NPC',npc_entry);
    CALL `sp_error_entry`('NPC',spawn_id);
    UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry`=npc_entry; 
    CALL `sp_eai_select_id`(npc_entry,@event_id); 
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id,npc_entry,8,0,100,1,spell_id,-1,0,0,32,spawn_id,6,0,41,0,0,0,0,0,0,0, 'Stored procedures eAI: quest - summon mob on spellcast');
    INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
        (@event_id+1,spawn_id,1,1,100,0,despawn_time,despawn_time,despawn_time,despawn_time,41,0,0,0,0,0,0,0,0,0,0,0, 'Stored procedures eAI: despawn after defined time');
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eai_table_phase_mask` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_eai_table_phase_mask`()
BEGIN
 
CREATE TABLE `phase_mask`(
`phaseID` INT(2) NOT NULL DEFAULT '0' ,
`phase_mask` INT(11) UNSIGNED NOT NULL DEFAULT '0' ,
PRIMARY KEY (`phaseID`));
INSERT INTO phase_mask VALUES
(0,1),
(1,2),
(2,4),
(3,8),
(4,16),
(5,32),
(6,64),
(7,128),
(8,256),
(9,512),
(10,1024),
(11,2048),
(12,4096),
(13,8192),
(14,16384),
(15,32768),
(16,65536),
(17,131072),
(18,262144),
(19,524288),
(20,1048576),
(21,2097152),
(22,4194304),
(23,8388608),
(24,16777216),
(25,33554432),
(26,67108864),
(27,134217728),
(28,268435456),
(29,536870912),
(30,1073741824),
(31,2147483648);
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_error_entry` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_error_entry`(IN entry_type VARCHAR(10), IN e_entry INT(10))
BEGIN
	DECLARE check_entry INT;
	CASE UPPER(entry_type)
		WHEN 'NPC' THEN
			SET check_entry = (SELECT COUNT(`entry`) FROM `creature_template` WHERE `entry`=e_entry);
		WHEN 'GO' THEN
			SET check_entry = (SELECT COUNT(`entry`) FROM `gameobject_template` WHERE `entry`=e_entry);
		WHEN 'ITEM' THEN
			SET check_entry = (SELECT COUNT(`entry`) FROM `item_template` WHERE `entry`=e_entry);
		WHEN 'QUEST' THEN
			SET check_entry = (SELECT COUNT(`entry`) FROM `quest_template` WHERE `entry`=e_entry);
		ELSE
			CALL INCORRECT_ENTRY_TYPE;
	END CASE;
	
	IF check_entry=0 THEN
		CALL INCORRECT_ENTRY;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_error_guid` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_error_guid`(IN guid_type VARCHAR(10),IN npc_or_go_guid INT(10))
BEGIN
	DECLARE check_guid INT;
	CASE UPPER(guid_type)
		WHEN 'NPC' THEN
			SET check_guid = (SELECT COUNT(`guid`) FROM `creature` WHERE `guid`=npc_or_go_guid);
		WHEN 'GO' THEN
			SET check_guid = (SELECT COUNT(`guid`) FROM `gameobject` WHERE `entry`=npc_or_go_entry);
		ELSE
			CALL INCORRECT_GUID_TYPE;
	END CASE;
	
	IF check_guid=0 THEN
		CALL INCORRECT_CREATURE_OR_GO_GUID;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_error_trigger` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_error_trigger`(IN trigger_entry INT)
BEGIN
    DECLARE Check_trigger INT;
    SET Check_trigger = (SELECT COUNT(ReqCreatureOrGOId1) FROM `quest_template` WHERE `ReqCreatureOrGOId1`= trigger_entry)
    + (SELECT COUNT(ReqCreatureOrGOId2) FROM `quest_template` WHERE `ReqCreatureOrGOId2`= trigger_entry)
    + (SELECT COUNT(ReqCreatureOrGOId3) FROM `quest_template` WHERE `ReqCreatureOrGOId3`= trigger_entry)
    + (SELECT COUNT(ReqCreatureOrGOId4) FROM `quest_template` WHERE `ReqCreatureOrGOId4`= trigger_entry);
    IF Check_trigger = 0 THEN
        CALL NO_QUEST_WITH_REQUIREMENT();
    END IF;
    END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_go_lootid` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_get_go_lootid`(IN gobjID MEDIUMINT(6),OUT gobjLootID INT(10))
BEGIN
        CALL `sp_error_entry`('GO',gobjID);
        SELECT `data1` FROM `gameobject_template` WHERE `entry`=gobjID AND `type`=3 INTO gobjLootID;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_npc_diffentry` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_get_npc_diffentry`(IN normalEntry MEDIUMINT(5),IN difficulty TINYINT(1),OUT output MEDIUMINT(8))
BEGIN
    CALL `sp_error_entry`('NPC',normalEntry);
    CASE difficulty
        WHEN 1 THEN BEGIN 
            SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        WHEN 2 THEN BEGIN 
            SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        WHEN 3 THEN BEGIN 
            SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=normalEntry INTO output; 
        END;
        ELSE CALL INVALID_DIFFICULTY();
    END CASE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_ref_id` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_get_ref_id`(IN refType VARCHAR(10),OUT reference MEDIUMINT(5))
BEGIN
    CASE UCASE(refType)
        WHEN 'SKIN' THEN BEGIN
            SET @Low :=00000;
            SET @High :=1000;
        END;
        WHEN 'ITEM' THEN BEGIN
            SET @Low :=10000;
            SET @High :=10999;
        END;
        WHEN 'FISH' THEN BEGIN
            SET @Low :=11000;
            SET @High :=11799;
        END;
        WHEN 'MILL' THEN BEGIN
            SET @Low :=11800;
            SET @High :=11999;
        END;
        WHEN 'RAID_GOBJ' THEN BEGIN
            SET @Low :=12000;
            SET @High :=12899;
        END;
        WHEN 'MINE' THEN BEGIN
            SET @Low :=12900;
            SET @High :=12999;
        END;
        WHEN 'PROSPECT' THEN BEGIN
            SET @Low :=13000;
            SET @High :=13999;
        END;
        WHEN 'WORLD' THEN BEGIN
            SET @Low :=14000;
            SET @High :=29000;
        END;
        WHEN 'RAID_CRE' THEN BEGIN
            SET @Low :=34000;
            SET @High :=34999;
        END;
        WHEN 'DUNGEON' THEN BEGIN
            SET @Low :=35000;
            SET @High :=35999;
        END;
        ELSE CALL INVALID_REFERENCE_TYPE;
    END CASE;
    SET reference :=1+(SELECT `entry` FROM `reference_loot_template` WHERE `entry` BETWEEN @Low AND @High ORDER BY `entry` DESC LIMIT 1);
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_PetExtraLevelStats` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mrhooha`@`%`*/ /*!50003 PROCEDURE `sp_PetExtraLevelStats`()
BEGIN
  
  DECLARE intMaxHP       INT   DEFAULT 6553500;
  DECLARE intMaxMana     INT   DEFAULT 6553500;
  DECLARE intMaxArmor    INT   DEFAULT 6553500;
  DECLARE intMaxStats    INT   DEFAULT 100000;
  DECLARE sngHPInc       FLOAT DEFAULT 0.05;    
  DECLARE sngManaInc     FLOAT DEFAULT 0.05;    
  DECLARE sngArmorInc    FLOAT DEFAULT 0.05;    
  DECLARE sngStatsInc    FLOAT DEFAULT 0.015;    
  DECLARE intStartLvl    INT   DEFAULT 80;      
  DECLARE intFinishLvl   INT   DEFAULT 85;      
  
  DECLARE intRecordDone  INT   DEFAULT 0;
  DECLARE intCreature    INT   DEFAULT 0;
  DECLARE intLevel       INT   DEFAULT 0;
  DECLARE intClass       INT   DEFAULT 0;
  DECLARE intCurrHP      INT   DEFAULT 0;
  DECLARE intCurrMana    INT   DEFAULT 0;
  DECLARE intCurrArmor   INT   DEFAULT 0;
  DECLARE intCurrSTR     INT   DEFAULT 0;
  DECLARE intCurrAGI     INT   DEFAULT 0;
  DECLARE intCurrSTA     INT   DEFAULT 0;
  DECLARE intCurrINT     INT   DEFAULT 0;
  DECLARE intCurrSPI     INT   DEFAULT 0;
  
  DECLARE curPetStat  CURSOR FOR SELECT `creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi` FROM pet_levelstats;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET intRecordDone = 1;
  
  OPEN curPetStat;
  
  REPEAT
    
    FETCH curPetStat INTO intCreature, intLevel, intCurrHP, intCurrMana, intCurrArmor, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI;
    
    IF intLevel = intStartLvl THEN
       REPEAT
         
         SET intLevel = intLevel + 1;
         
         DELETE FROM pet_levelstats WHERE `creature_entry` = intCreature AND `level` = intLevel;
         
         IF (ROUND(intCurrHP * (1 + sngHPInc) + 1)) <= intMaxHP THEN
           SET intCurrHP = ROUND(intCurrHP * (1 + sngHPInc) + 100);
         ELSE
           SET intCurrHP = intMaxHP;  
         END IF;
         
         IF (ROUND(intCurrMana * (1 + sngManaInc) + 1)) <= intMaxMana THEN
           SET intCurrMana = ROUND(intCurrMana * (1 + sngManaInc) + 100);
         ELSE
           SET intCurrMana = intMaxMana;
         END IF;
         
         IF (ROUND(intCurrArmor * (1 + sngArmorInc) + 1)) <= intMaxArmor THEN
           SET intCurrArmor = ROUND(intCurrArmor * (1 + sngArmorInc) + 800);
         ELSE
           SET intCurrArmor = intMaxArmor;
         END IF;
         
         IF (ROUND(intCurrSTR * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSTR = ROUND(intCurrSTR * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTR = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrAGI * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrAGI = ROUND(intCurrAGI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrAGI = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrSTA * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSTA = ROUND(intCurrSTA * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSTA = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrINT * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrINT = ROUND(intCurrINT * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrINT = intMaxStats;
         END IF;
         
         IF (ROUND(intCurrSPI * (1 + sngStatsInc) + 1)) <= intMaxStats THEN
           SET intCurrSPI = ROUND(intCurrSPI * (1 + sngStatsInc) + 10);
         ELSE
           SET intCurrSPI = intMaxStats;
         END IF;
         
         INSERT INTO pet_levelstats
         (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`)
         VALUES
         (intCreature, intLevel, intCurrHP, intCurrMana, intCurrArmor, intCurrSTR, intCurrAGI, intCurrSTA, intCurrINT, intCurrSPI);
       UNTIL intLevel = intFinishLvl END REPEAT;
    END IF;
  UNTIL intRecordDone END REPEAT;
  
  CLOSE curPetStat;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_entry_list` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_entry_list`(IN input LONGTEXT,IN appendExisting BIT)
BEGIN
    DECLARE cur_position INT DEFAULT 1;
    DECLARE remainder TEXT;
    DECLARE cur_string VARCHAR(10);
    DECLARE entry_count MEDIUMINT;
    IF appendExisting IS NULL OR appendExisting IS FALSE THEN
	CREATE TABLE `tdb_entry_list` (`value` INT NOT NULL PRIMARY KEY) ENGINE=MYISAM;
    END IF;
    SET remainder = input;
    WHILE CHAR_LENGTH(remainder) > 0 AND cur_position > 0 DO
        SET cur_position = INSTR(remainder, ',');
        IF cur_position = 0 THEN
            SET cur_string = remainder;
        ELSE
            SET cur_string = LEFT(remainder, cur_position-1);
        END IF;
        IF TRIM(cur_string) != '' AND(SELECT COUNT(*) FROM `tdb_entry_list` WHERE `value`=cur_string)=0 THEN
            INSERT INTO `tdb_entry_list` VALUES (cur_string);
        END IF;
        SET remainder = SUBSTRING(remainder, cur_position+1);
    END WHILE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_item_money` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_item_money`(IN item_entry INT, IN min_money INT, IN max_money INT)
BEGIN
CALL sp_error_entry('ITEM',item_entry);
UPDATE item_template SET minMoneyLoot=min_money, maxMoneyLoot=max_money WHERE entry = item_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_item_money_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_item_money_bylist`(IN item_entry TEXT, IN min_money INT, IN max_money INT)
BEGIN
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('ITEM',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE item_template SET minMoneyLoot=min_money, maxMoneyLoot=max_money WHERE entry = item_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_aggro` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_aggro`(IN creature_entry INT(10),IN on_off BOOLEAN)
BEGIN
	CALL `sp_error_entry`('NPC',creature_entry);
	IF on_off = 1 THEN
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry`= creature_entry;
	ELSE 
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`= creature_entry;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_aggro_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_aggro_bylist`(IN entry_list LONGTEXT,IN on_off BOOLEAN)
BEGIN
	CALL `sp_set_entry_list` (entry_list,null);
	IF on_off = 1 THEN
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	ELSE 
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	END IF;
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_attackable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_attackable`(IN npc_entry INT, IN on_off BOOLEAN)
BEGIN
CALL sp_error_entry('NPC',npc_entry);
IF on_off = 1 THEN
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256 WHERE `entry`= npc_entry;
END IF;
IF on_off = 0 THEN
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`= npc_entry;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_attackable_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_attackable_bylist`(IN npc_entry TEXT, IN on_off BOOLEAN)
BEGIN
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
IF on_off = 1 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
IF on_off = 0 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_civilian` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_civilian`(IN npc_entry INT(10), IN on_off BOOLEAN)
BEGIN
CALL sp_error_entry('NPC',npc_entry);
IF on_off = 1 THEN
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`= npc_entry;
ELSEIF on_off = 0 THEN
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry`= npc_entry;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_civilian_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_civilian_bylist`(IN npc_entry TEXT, IN on_off BOOLEAN)
BEGIN
  
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
IF on_off = 1 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
IF on_off = 0 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_deadquest` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_deadquest`(IN npc_entry INT(10))
BEGIN
	DECLARE check_addon_exists INT;
	CALL `sp_error_entry`('NPC',npc_entry);
	UPDATE `creature` SET `MovementType`=0,`spawndist`=0,`Deathstate`=0 WHERE `id`=npc_entry;
	UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=npc_entry;
    
	
	SET check_addon_exists = (SELECT COUNT(`entry`) FROM `creature_template_addon` WHERE `entry`=npc_entry);
	IF check_addon_exists > 0 THEN 
		UPDATE `creature_template_addon` SET `bytes1`=7 WHERE `entry`=npc_entry;
	ELSE 
		INSERT INTO `creature_template_addon` VALUES (npc_entry,0,0,7,0,0, '');
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_faction` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_faction`(IN npc_entry INT(10), factionA INT(10), factionH INT(10))
BEGIN
	CALL `sp_error_entry`('NPC',npc_entry);
	UPDATE `creature_template` SET `faction_A`=IFNULL(factionA,`faction_A`),`faction_H`=IFNULL(factionH,`faction_A`) WHERE `entry`=npc_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_faction_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_faction_bylist`(IN entry_list LONGTEXT, factionA INT(10), factionH INT(10))
BEGIN
	CALL `sp_set_entry_list` (entry_list,null);
	UPDATE `creature_template` SET `faction_A`=IFNULL(factionA,`faction_A`),`faction_H`=IFNULL(factionH,`faction_A`) WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootable`(IN npc_entry INT(10), IN on_off BOOLEAN)
BEGIN
CALL sp_error_entry('NPC',npc_entry);
IF on_off = 1 THEN
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~1 WHERE `entry`= npc_entry;
ELSEIF on_off = 0 THEN
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|1 WHERE `entry`= npc_entry;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootable_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootable_bylist`(IN npc_entry TEXT, IN on_off BOOLEAN)
BEGIN
  
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
IF on_off = 1 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~1 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
IF on_off = 0 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|1 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootid` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootid`(IN npcEntry MEDIUMINT(5),IN lootID MEDIUMINT(5))
BEGIN    
    CALL `sp_error_entry`('NPC',npcEntry);
    UPDATE `creature_template` SET `lootid`=IFNULL(lootID,npcEntry) WHERE `entry`=npcEntry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootid_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootid_bylist`(IN entryList LONGTEXT,IN lootID MEDIUMINT(5))
BEGIN    
    CALL `sp_set_entry_list` (entryList,null);
    UPDATE `creature_template` SET `lootid`=IFNULL(lootID,`entry`) WHERE `entry` IN (SELECT DISTINCT * FROM `tdb_entry_list`);
    
    DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_lootid_bytable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_lootid_bytable`(IN lootID MEDIUMINT(5))
BEGIN    
    UPDATE `creature_template` SET `lootid`=IFNULL(lootID,`entry`) WHERE `entry` IN (SELECT DISTINCT * FROM `tdb_entry_list`);
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_path` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_path`(IN npc_guid INT(10),OUT path INT(10))
BEGIN
	CALL `sp_error_guid`('NPC',npc_guid);
	
	SELECT npc_guid*10 INTO path;
	UPDATE `creature` SET `MovementType`=2,`spawndist`=0 WHERE `guid`=npc_guid;
	IF (SELECT COUNT(*) FROM `creature_addon` WHERE `guid`=npc_guid) > 0 THEN
		UPDATE `creature_addon` SET `path_id`=path WHERE `guid`=npc_guid;
	ELSE
		INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES (npc_guid,path);
	END IF;
	
	DELETE FROM `waypoint_data` WHERE `id`=path;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_selectable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_selectable`(IN npc_entry INT(10),IN on_off BOOLEAN)
BEGIN
	CALL `sp_error_entry`('NPC',npc_entry);
	IF on_off=1 THEN
		UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry`=npc_entry;
	ELSE
		UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`=npc_entry;
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_selectable_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_selectable_bylist`(IN entry_list LONGTEXT,IN on_off BOOLEAN)
BEGIN
	CALL `sp_set_entry_list` (entry_list,null);
	IF on_off=1 THEN
		UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	ELSE
		UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);
	END IF;
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_targetable` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_targetable`(IN npc_entry INT(10), IN on_off BOOLEAN)
BEGIN
CALL sp_error_entry('NPC',npc_entry);
IF on_off = 1 THEN
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry`= npc_entry;
ELSEIF on_off = 0 THEN
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`= npc_entry;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_targetable_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_targetable_bylist`(IN npc_entry TEXT, IN on_off BOOLEAN)
BEGIN
  
DECLARE remaining INT;
DECLARE min_entry INT;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
CALL sp_error_entry('NPC',min_entry);
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
CALL sp_set_entry_list(npc_entry);
SET remaining = (SELECT COUNT(`value`) FROM tdb_entry_list);
IF on_off = 1 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~33554432 WHERE `entry`= min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
IF on_off = 0 THEN
WHILE remaining > 0 DO
SET min_entry = (SELECT MIN(`value`) FROM tdb_entry_list);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry`=  min_entry;
DELETE FROM tdb_entry_list WHERE `value`=min_entry;
SET remaining = remaining -1;
END WHILE;
END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_trigger` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_trigger`(IN npc_entry INT(10),IN on_off BOOLEAN)
BEGIN
	CALL `sp_error_entry`('NPC',npc_entry);
	IF on_off=1 THEN
		UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id`=npc_entry;
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`unit_flags`=`unit_flags`|33554432  WHERE `entry`=npc_entry;        
	ELSE
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2,`unit_flags`=`unit_flags`&~33554432  WHERE `entry`=npc_entry; 
	END IF;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_npc_trigger_bylist` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_npc_trigger_bylist`(IN entry_list LONGTEXT,IN on_off BOOLEAN)
BEGIN
	CALL `sp_set_entry_list` (entry_list,null);
	IF on_off=1 THEN
		UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id` IN (SELECT * FROM `tdb_entry_list`);
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`unit_flags`=`unit_flags`|33554432  WHERE `entry` IN (SELECT * FROM `tdb_entry_list`);        
	ELSE
		UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~2,`unit_flags`=`unit_flags`&~33554432  WHERE `entry` IN (SELECT * FROM `tdb_entry_list`); 
	END IF;
	DROP TABLE `tdb_entry_list`; 
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_quest_level` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_quest_level`(IN quest_entry INT(10), IN quest_level INT(10))
BEGIN
CALL `sp_error_entry`('QUEST',quest_entry);
UPDATE `quest_template` SET `MinLevel`= quest_level WHERE `entry`= quest_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_quest_next` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_quest_next`(IN quest_entry INT(10), IN next_quest INT(10))
BEGIN
CALL `sp_error_entry`('QUEST',quest_entry);
UPDATE `quest_template` SET `NextQuestId`= next_quest WHERE `entry`= quest_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_quest_previous` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_quest_previous`(IN quest_entry INT(10), IN prev_quest INT(10))
BEGIN
CALL `sp_error_entry`('QUEST',quest_entry);
UPDATE `quest_template` SET `PrevQuestId`= prev_quest WHERE `entry`= quest_entry;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
/*!50003 DROP PROCEDURE IF EXISTS `sp_set_spell_target` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `sp_set_spell_target`(IN target_type VARCHAR(10),IN target_entry INT(11),IN spell_id INT(11))
BEGIN
    CASE UCASE(target_type)
        WHEN 'GO' THEN BEGIN
	    IF target_entry > 0 THEN 
		CALL `sp_error_entry`('GO',target_entry); 
	    END IF;
            DELETE FROM `spell_script_target` WHERE `entry`=spell_id;
            INSERT INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES (spell_id,0,target_entry);
        END;
        WHEN 'NPC' THEN BEGIN
	    IF target_entry > 0 THEN 
		CALL `sp_error_entry`('NPC',target_entry); 
	    END IF;
            DELETE FROM `spell_script_target` WHERE `entry`=spell_id;
            INSERT INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES (spell_id,1,target_entry);
        END;
        WHEN 'DEAD_NPC' THEN BEGIN
	    CALL `sp_error_entry`('NPC',target_entry);
            DELETE FROM `spell_script_target` WHERE `entry`=spell_id;
            INSERT INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES (spell_id,2,target_entry);
        END;
        WHEN 'MINION' THEN BEGIN
	    CALL `sp_error_entry`('NPC',target_entry);
            DELETE FROM `spell_script_target` WHERE `entry`=spell_id;
            INSERT INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES (spell_id,3,target_entry);
        END;
        ELSE CALL INCORRECT_TARGET_TYPE;
    END CASE;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE*/;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

