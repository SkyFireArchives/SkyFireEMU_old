
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
DROP TABLE IF EXISTS `pool_gameobject`;
CREATE TABLE `pool_gameobject` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pool_gameobject` WRITE;
/*!40000 ALTER TABLE `pool_gameobject` DISABLE KEYS */;
INSERT INTO `pool_gameobject` VALUES (23869,104,20,''),(64562,104,0,''),(64581,104,0,''),(23870,105,20,''),(64560,105,0,''),(64597,105,0,''),(23871,106,20,''),(64556,106,0,''),(64596,106,0,''),(23872,107,20,''),(64542,107,0,''),(64629,107,0,''),(23873,108,20,''),(64563,108,0,''),(64630,108,0,''),(23874,109,20,''),(64553,109,0,''),(64631,109,0,''),(23875,110,20,''),(64551,110,0,''),(64632,110,0,''),(23876,111,20,''),(64561,111,0,''),(64633,111,0,''),(23877,112,20,''),(64595,112,0,''),(64634,112,0,''),(23878,113,20,''),(64567,113,0,''),(64635,113,0,''),(23879,114,20,''),(64636,114,0,''),(64637,114,0,''),(23880,115,20,''),(64576,115,0,''),(64638,115,0,''),(23881,116,20,''),(64549,116,0,''),(64594,116,0,''),(23882,117,20,''),(64639,117,0,''),(64640,117,0,''),(23883,118,20,''),(64641,118,0,''),(64642,118,0,''),(23884,119,20,''),(64565,119,0,''),(64643,119,0,''),(23885,120,0,''),(64644,120,20,''),(64645,120,0,''),(23886,121,0,''),(64646,121,20,''),(64647,121,0,''),(23887,122,0,''),(64648,122,20,''),(64649,122,0,''),(23888,123,0,''),(64529,123,20,''),(64650,123,0,''),(23889,124,0,''),(64651,124,20,''),(64652,124,0,''),(23890,125,0,''),(64559,125,0,''),(64653,125,20,''),(23891,126,0,''),(64532,126,20,''),(64570,126,0,''),(23892,127,0,''),(64533,127,20,''),(64564,127,0,''),(23893,128,0,''),(64530,128,20,''),(64654,128,0,''),(23894,129,0,''),(64525,129,20,''),(64543,129,0,''),(23895,130,0,''),(64655,130,20,''),(64656,130,0,''),(23896,131,0,''),(64526,131,20,''),(64550,131,0,''),(23897,132,0,''),(64657,132,20,''),(64658,132,0,''),(23898,133,0,''),(64606,133,0,''),(64659,133,20,''),(64660,133,0,''),(23899,134,0,''),(64604,134,0,''),(64661,134,20,''),(64662,134,0,''),(23901,135,0,''),(64599,135,0,''),(64663,135,20,''),(64664,135,0,''),(23913,136,0,''),(64522,136,0,''),(23916,137,0,''),(64520,137,0,''),(14112,138,0,''),(64602,138,0,''),(64665,138,20,''),(64666,138,0,''),(14120,139,0,''),(64667,139,20,''),(64668,139,0,''),(14122,140,0,''),(28326,140,0,''),(64669,140,20,''),(64670,140,0,''),(20370,141,20,''),(64589,141,0,''),(64671,141,0,''),(28310,142,20,''),(64566,142,0,''),(64591,142,0,''),(28325,143,0,''),(64601,143,0,''),(64672,143,20,''),(64673,143,0,''),(28418,144,0,''),(64674,144,20,''),(64675,144,0,''),(30407,150,0,''),(64676,150,20,''),(64677,150,0,''),(30411,151,0,''),(64531,151,20,''),(64575,151,0,''),(30412,152,0,''),(64678,152,20,''),(64679,152,0,''),(32626,162,0,''),(64680,162,20,''),(64681,162,0,''),(57084,272,0,''),(64416,272,0,''),(57085,273,0,''),(64389,273,0,''),(57086,274,0,''),(64387,274,0,''),(64253,275,0,''),(64299,275,0,''),(64256,276,0,''),(64272,276,0,''),(64260,277,0,''),(64377,277,0,''),(64264,278,0,''),(64317,278,0,''),(64265,279,0,''),(64430,279,0,''),(64269,280,0,''),(64316,280,0,''),(64270,281,0,''),(64274,281,0,''),(64441,282,0,''),(64467,282,0,''),(64442,283,0,''),(64469,283,0,''),(64444,284,0,''),(64478,284,0,''),(64445,285,0,''),(64476,285,0,''),(64447,286,0,''),(64461,286,0,''),(64449,287,0,''),(64465,287,0,''),(64451,288,0,''),(64462,288,0,''),(64452,289,0,''),(64477,289,0,''),(64453,290,0,''),(64470,290,0,''),(64454,291,0,''),(64472,291,0,''),(64455,292,0,''),(64475,292,0,''),(64458,293,0,''),(64480,293,0,''),(64459,294,0,''),(64464,294,0,''),(64519,298,0,''),(64615,298,0,''),(64527,299,20,''),(64688,299,0,''),(64689,299,0,''),(64528,300,20,''),(64690,300,0,''),(64691,300,0,''),(64534,301,20,''),(64555,301,0,''),(64692,301,0,''),(64535,302,20,''),(64598,302,0,''),(64693,302,0,''),(64536,303,20,''),(64548,303,0,''),(64694,303,0,''),(64537,304,20,''),(64554,304,0,''),(64583,304,0,''),(64538,305,20,''),(64544,305,0,''),(64695,305,0,''),(64539,306,20,''),(64696,306,0,''),(64697,306,0,''),(64540,307,20,''),(64698,307,0,''),(64699,307,0,''),(64541,308,20,''),(64569,308,0,''),(64700,308,0,''),(64545,309,0,''),(64580,309,0,''),(64701,309,20,''),(64546,310,0,''),(64702,310,20,''),(64703,310,0,''),(64547,311,0,''),(64585,311,0,''),(64704,311,20,''),(64552,312,0,''),(64705,312,20,''),(64706,312,0,''),(64557,313,0,''),(64707,313,20,''),(64708,313,0,''),(64558,314,0,''),(64709,314,20,''),(64710,314,0,''),(64568,315,0,''),(64711,315,20,''),(64712,315,0,''),(64571,316,0,''),(64713,316,20,''),(64714,316,0,''),(64572,317,0,''),(64592,317,0,''),(64715,317,20,''),(64573,318,0,''),(64716,318,20,''),(64717,318,0,''),(64574,319,0,''),(64718,319,20,''),(64719,319,0,''),(64577,320,0,''),(64593,320,0,''),(64720,320,20,''),(64578,321,0,''),(64590,321,0,''),(64721,321,20,''),(64579,322,0,''),(64722,322,20,''),(64723,322,0,''),(64582,323,0,''),(64724,323,20,''),(64725,323,0,''),(64584,324,0,''),(64726,324,20,''),(64727,324,0,''),(64586,325,0,''),(64728,325,20,''),(64729,325,0,''),(64587,326,0,''),(64730,326,20,''),(64731,326,0,''),(64588,327,0,''),(64732,327,20,''),(64733,327,0,''),(64600,328,0,''),(64734,328,20,''),(64735,328,0,''),(64751,139,0,''),(64752,326,0,''),(14119,332,0,''),(64762,332,20,''),(64763,332,0,''),(64764,332,0,''),(64603,335,0,''),(64765,335,20,''),(64766,335,0,''),(64767,335,0,''),(64605,336,0,''),(64768,336,20,''),(64769,336,0,''),(64770,336,0,''),(64742,337,20,''),(64771,337,0,''),(64772,337,0,''),(64773,337,0,''),(64743,338,20,''),(64774,338,0,''),(64775,338,0,''),(64776,338,0,''),(64744,339,20,''),(64748,339,0,''),(64777,339,0,''),(64778,339,0,''),(64745,340,0,''),(64779,340,20,''),(64780,340,0,''),(64781,340,0,''),(64746,341,0,''),(64782,341,20,''),(64783,341,0,''),(64784,341,0,''),(64747,342,0,''),(64785,342,20,''),(64786,342,0,''),(64787,342,0,''),(64749,343,0,''),(64788,343,20,''),(64789,343,0,''),(64790,343,0,''),(64750,344,0,''),(64791,344,20,''),(64792,344,0,''),(64793,344,0,''),(66840,5240,0,'Cobalt'),(66893,5240,40,'Cobalt, Rich'),(66870,5241,0,'Cobalt'),(66923,5241,40,'Cobalt, Rich'),(66871,5242,0,'Cobalt'),(66924,5242,40,'Cobalt, Rich'),(66877,5243,0,'Cobalt'),(66930,5243,40,'Cobalt, Rich'),(66841,5244,0,'Cobalt'),(66894,5244,30,'Cobalt, Rich'),(66844,5245,0,'Cobalt'),(66897,5245,30,'Cobalt, Rich'),(60173,5246,0,'Cobalt'),(66848,5246,30,'Cobalt, Rich'),(66849,5247,0,'Cobalt'),(66902,5247,30,'Cobalt, Rich'),(66850,5248,0,'Cobalt'),(66903,5248,30,'Cobalt, Rich'),(66846,5249,0,'Cobalt'),(66899,5249,30,'Cobalt, Rich'),(66854,5250,0,'Cobalt'),(66907,5250,30,'Cobalt, Rich'),(66855,5251,0,'Cobalt'),(66908,5251,30,'Cobalt, Rich'),(66859,5252,0,'Cobalt'),(66912,5252,30,'Cobalt, Rich'),(66878,5253,0,'Cobalt'),(66931,5253,30,'Cobalt, Rich'),(66879,5254,0,'Cobalt'),(66932,5254,30,'Cobalt, Rich'),(66883,5255,0,'Cobalt'),(66936,5255,30,'Cobalt, Rich'),(66842,5256,0,'Cobalt'),(66895,5256,45,'Cobalt, Rich'),(66944,5256,5,'Saronite'),(66845,5257,0,'Cobalt'),(66898,5257,45,'Cobalt, Rich'),(66945,5257,5,'Saronite'),(66847,5258,0,'Cobalt'),(66900,5258,45,'Cobalt, Rich'),(66946,5258,5,'Saronite'),(66853,5259,0,'Cobalt'),(66906,5259,45,'Cobalt, Rich'),(66947,5259,5,'Saronite'),(66856,5260,0,'Cobalt'),(66909,5260,45,'Cobalt, Rich'),(66948,5260,5,'Saronite'),(66857,5261,0,'Cobalt'),(66910,5261,45,'Cobalt, Rich'),(66949,5261,5,'Saronite'),(66860,5262,0,'Cobalt'),(66913,5262,45,'Cobalt, Rich'),(66950,5262,5,'Saronite'),(66861,5263,0,'Cobalt'),(66914,5263,45,'Cobalt, Rich'),(66951,5263,5,'Saronite'),(66862,5264,0,'Cobalt'),(66915,5264,45,'Cobalt, Rich'),(66952,5264,5,'Saronite'),(66863,5265,0,'Cobalt'),(66916,5265,45,'Cobalt, Rich'),(66953,5265,5,'Saronite'),(66864,5266,0,'Cobalt'),(66917,5266,45,'Cobalt, Rich'),(66954,5266,5,'Saronite'),(66865,5267,0,'Cobalt'),(66918,5267,45,'Cobalt, Rich'),(66955,5267,5,'Saronite'),(66872,5268,0,'Cobalt'),(66925,5268,45,'Cobalt, Rich'),(66956,5268,5,'Saronite'),(66874,5269,0,'Cobalt'),(66927,5269,45,'Cobalt, Rich'),(66957,5269,5,'Saronite'),(66881,5270,0,'Cobalt'),(66934,5270,45,'Cobalt, Rich'),(66958,5270,5,'Saronite'),(66884,5271,0,'Cobalt'),(66937,5271,45,'Cobalt, Rich'),(66959,5271,5,'Saronite'),(66885,5272,0,'Cobalt'),(66938,5272,45,'Cobalt, Rich'),(66960,5272,5,'Saronite'),(66886,5273,0,'Cobalt'),(66939,5273,45,'Cobalt, Rich'),(66961,5273,5,'Saronite'),(66889,5274,0,'Cobalt'),(66942,5274,45,'Cobalt, Rich'),(66962,5274,5,'Saronite'),(66890,5275,0,'Cobalt'),(66943,5275,45,'Cobalt, Rich'),(66963,5275,5,'Saronite'),(66891,5276,0,'Cobalt'),(66933,5276,45,'Cobalt, Rich'),(66964,5276,5,'Saronite'),(66858,5277,0,'Cobalt'),(66911,5277,20,'Cobalt, Rich'),(66875,5278,0,'Cobalt'),(66928,5278,20,'Cobalt, Rich'),(66876,5279,0,'Cobalt'),(66929,5279,20,'Cobalt, Rich'),(66868,5280,0,'Cobalt'),(66921,5280,20,'Cobalt, Rich'),(66869,5281,0,'Cobalt'),(66922,5281,20,'Cobalt, Rich'),(66843,5282,0,'Cobalt'),(66896,5282,20,'Cobalt, Rich'),(66866,5283,0,'Cobalt'),(66919,5283,20,'Cobalt, Rich'),(66867,5284,0,'Cobalt'),(66920,5284,20,'Cobalt, Rich'),(66887,5285,0,'Cobalt'),(66940,5285,20,'Cobalt, Rich'),(66873,5285,0,'Cobalt'),(66926,5286,0,'Cobalt, Rich'),(66851,5287,0,'Cobalt'),(66904,5287,20,'Cobalt, Rich'),(66852,5288,0,'Cobalt'),(66905,5288,20,'Cobalt, Rich'),(66882,5289,0,'Cobalt'),(66935,5289,20,'Cobalt, Rich'),(66888,5290,0,'Cobalt'),(66941,5290,20,'Cobalt, Rich'),(66892,5291,0,'Cobalt'),(66901,5291,20,'Cobalt, Rich'),(56131,5001,0,'Cobalt'),(63161,5001,20,'Cobalt, Rich'),(56132,5002,0,'Cobalt'),(63162,5002,20,'Cobalt, Rich'),(56133,5003,0,'Cobalt'),(63163,5003,20,'Cobalt, Rich'),(56135,5004,0,'Cobalt'),(63164,5004,20,'Cobalt, Rich'),(56141,5005,0,'Cobalt'),(63165,5005,20,'Cobalt, Rich'),(56193,5006,0,'Cobalt'),(63166,5006,20,'Cobalt, Rich'),(56194,5007,0,'Cobalt'),(63167,5007,20,'Cobalt, Rich'),(56195,5008,0,'Cobalt'),(63168,5008,20,'Cobalt, Rich'),(56196,5009,0,'Cobalt'),(63169,5009,20,'Cobalt, Rich'),(56197,5010,0,'Cobalt'),(63211,5010,20,'Cobalt, Rich'),(56198,5011,0,'Cobalt'),(63213,5011,20,'Cobalt, Rich'),(56199,5012,0,'Cobalt'),(63221,5012,20,'Cobalt, Rich'),(56200,5013,0,'Cobalt'),(63223,5013,20,'Cobalt, Rich'),(56201,5014,0,'Cobalt'),(63227,5014,20,'Cobalt, Rich'),(56202,5015,0,'Cobalt'),(63228,5015,20,'Cobalt, Rich'),(56203,5016,0,'Cobalt'),(63229,5016,20,'Cobalt, Rich'),(56204,5017,0,'Cobalt'),(63230,5017,20,'Cobalt, Rich'),(56205,5018,0,'Cobalt'),(63231,5018,20,'Cobalt, Rich'),(56220,5019,0,'Cobalt'),(63232,5019,20,'Cobalt, Rich'),(56240,5020,0,'Cobalt'),(63235,5020,20,'Cobalt, Rich'),(56526,5021,0,'Cobalt'),(63237,5021,20,'Cobalt, Rich'),(56731,5022,0,'Cobalt'),(63249,5022,20,'Cobalt, Rich'),(56800,5023,0,'Cobalt'),(63253,5023,20,'Cobalt, Rich'),(56804,5024,0,'Cobalt'),(63254,5024,20,'Cobalt, Rich'),(56805,5025,0,'Cobalt'),(63255,5025,20,'Cobalt, Rich'),(56816,5026,0,'Cobalt'),(63258,5026,20,'Cobalt, Rich'),(56825,5027,0,'Cobalt'),(63259,5027,20,'Cobalt, Rich'),(57201,5028,0,'Cobalt'),(63262,5028,20,'Cobalt, Rich'),(57375,5029,0,'Cobalt'),(63263,5029,20,'Cobalt, Rich'),(57573,5030,0,'Cobalt'),(63270,5030,20,'Cobalt, Rich'),(57624,5031,0,'Cobalt'),(63279,5031,20,'Cobalt, Rich'),(58118,5032,0,'Cobalt'),(63280,5032,20,'Cobalt, Rich'),(58706,5033,0,'Cobalt'),(63282,5033,20,'Cobalt, Rich'),(58714,5034,0,'Cobalt'),(63285,5034,20,'Cobalt, Rich'),(58716,5035,0,'Cobalt'),(63286,5035,20,'Cobalt, Rich'),(58721,5036,0,'Cobalt'),(63296,5036,20,'Cobalt, Rich'),(58722,5037,0,'Cobalt'),(63301,5037,20,'Cobalt, Rich'),(58751,5038,0,'Cobalt'),(63302,5038,20,'Cobalt, Rich'),(59242,5039,0,'Cobalt'),(63303,5039,20,'Cobalt, Rich'),(59500,5040,0,'Cobalt'),(63304,5040,20,'Cobalt, Rich'),(59512,5041,0,'Cobalt'),(63307,5041,20,'Cobalt, Rich'),(59850,5042,0,'Cobalt'),(63312,5042,20,'Cobalt, Rich'),(60071,5043,0,'Cobalt'),(63318,5043,20,'Cobalt, Rich'),(60088,5044,0,'Cobalt'),(63320,5044,20,'Cobalt, Rich'),(60107,5045,0,'Cobalt'),(63329,5045,20,'Cobalt, Rich'),(60126,5046,0,'Cobalt'),(63330,5046,20,'Cobalt, Rich'),(60130,5047,0,'Cobalt'),(63335,5047,20,'Cobalt, Rich'),(60131,5048,0,'Cobalt'),(63340,5048,20,'Cobalt, Rich'),(60167,5049,0,'Cobalt'),(63350,5049,20,'Cobalt, Rich'),(60168,5050,0,'Cobalt'),(63351,5050,20,'Cobalt, Rich'),(60174,5051,0,'Cobalt'),(63352,5051,20,'Cobalt, Rich'),(60175,5052,0,'Cobalt'),(63353,5052,20,'Cobalt, Rich'),(60176,5053,0,'Cobalt'),(63354,5053,20,'Cobalt, Rich'),(60198,5054,0,'Cobalt'),(63363,5054,20,'Cobalt, Rich'),(61854,5055,0,'Cobalt'),(63367,5055,20,'Cobalt, Rich'),(61863,5056,0,'Cobalt'),(63387,5056,20,'Cobalt, Rich'),(61911,5057,0,'Cobalt'),(63397,5057,20,'Cobalt, Rich'),(61926,5058,0,'Cobalt'),(63399,5058,20,'Cobalt, Rich'),(61968,5059,0,'Cobalt'),(63413,5059,20,'Cobalt, Rich'),(62121,5060,0,'Cobalt'),(63414,5060,20,'Cobalt, Rich'),(62122,5061,0,'Cobalt'),(63416,5061,20,'Cobalt, Rich'),(62123,5062,0,'Cobalt'),(63417,5062,20,'Cobalt, Rich'),(62124,5063,0,'Cobalt'),(63418,5063,20,'Cobalt, Rich'),(67639,5064,0,'Cobalt'),(63439,5064,20,'Cobalt, Rich'),(56139,5065,0,'Cobalt'),(63440,5065,20,'Cobalt, Rich'),(56153,5066,0,'Cobalt'),(63448,5066,20,'Cobalt, Rich'),(56154,5067,0,'Cobalt'),(63451,5067,20,'Cobalt, Rich'),(56155,5068,0,'Cobalt'),(63464,5068,20,'Cobalt, Rich'),(56156,5069,0,'Cobalt'),(63468,5069,20,'Cobalt, Rich'),(56159,5070,0,'Cobalt'),(63469,5070,20,'Cobalt, Rich'),(56160,5071,0,'Cobalt'),(63475,5071,20,'Cobalt, Rich'),(56161,5072,0,'Cobalt'),(63477,5072,20,'Cobalt, Rich'),(56162,5073,0,'Cobalt'),(63480,5073,20,'Cobalt, Rich'),(56164,5074,0,'Cobalt'),(63491,5074,20,'Cobalt, Rich'),(56165,5075,0,'Cobalt'),(63493,5075,20,'Cobalt, Rich'),(56166,5076,0,'Cobalt'),(63494,5076,20,'Cobalt, Rich'),(56168,5077,0,'Cobalt'),(63521,5077,20,'Cobalt, Rich'),(56169,5078,0,'Cobalt'),(63535,5078,20,'Cobalt, Rich'),(56170,5079,0,'Cobalt'),(63550,5079,20,'Cobalt, Rich'),(56171,5080,0,'Cobalt'),(63551,5080,20,'Cobalt, Rich'),(56173,5081,0,'Cobalt'),(63561,5081,20,'Cobalt, Rich'),(56174,5082,0,'Cobalt'),(63573,5082,20,'Cobalt, Rich'),(56178,5083,0,'Cobalt'),(63584,5083,20,'Cobalt, Rich'),(56181,5084,0,'Cobalt'),(63600,5084,20,'Cobalt, Rich'),(56182,5085,0,'Cobalt'),(63601,5085,20,'Cobalt, Rich'),(56235,5086,0,'Cobalt'),(63602,5086,20,'Cobalt, Rich'),(56793,5087,0,'Cobalt'),(63603,5087,20,'Cobalt, Rich'),(56794,5088,0,'Cobalt'),(63604,5088,20,'Cobalt, Rich'),(56806,5089,0,'Cobalt'),(63607,5089,20,'Cobalt, Rich'),(56814,5090,0,'Cobalt'),(63612,5090,20,'Cobalt, Rich'),(56815,5091,0,'Cobalt'),(63613,5091,20,'Cobalt, Rich'),(56823,5092,0,'Cobalt'),(63617,5092,20,'Cobalt, Rich'),(56824,5093,0,'Cobalt'),(63619,5093,20,'Cobalt, Rich'),(56883,5094,0,'Cobalt'),(63625,5094,20,'Cobalt, Rich'),(57685,5095,0,'Cobalt'),(63638,5095,20,'Cobalt, Rich'),(58736,5096,0,'Cobalt'),(63654,5096,20,'Cobalt, Rich'),(58753,5097,0,'Cobalt'),(63656,5097,20,'Cobalt, Rich'),(58762,5098,0,'Cobalt'),(63663,5098,20,'Cobalt, Rich'),(58767,5099,0,'Cobalt'),(63668,5099,20,'Cobalt, Rich'),(59082,5100,0,'Cobalt'),(63682,5100,20,'Cobalt, Rich'),(59121,5101,0,'Cobalt'),(63684,5101,20,'Cobalt, Rich'),(59288,5102,0,'Cobalt'),(63687,5102,20,'Cobalt, Rich'),(59385,5103,0,'Cobalt'),(63688,5103,20,'Cobalt, Rich'),(59592,5104,0,'Cobalt'),(63690,5104,20,'Cobalt, Rich'),(59594,5105,0,'Cobalt'),(63692,5105,20,'Cobalt, Rich'),(59611,5106,0,'Cobalt'),(63693,5106,20,'Cobalt, Rich'),(59620,5107,0,'Cobalt'),(63695,5107,20,'Cobalt, Rich'),(60012,5108,0,'Cobalt'),(63698,5108,20,'Cobalt, Rich'),(60013,5109,0,'Cobalt'),(63700,5109,20,'Cobalt, Rich'),(60014,5110,0,'Cobalt'),(63705,5110,20,'Cobalt, Rich'),(60133,5111,0,'Cobalt'),(63707,5111,20,'Cobalt, Rich'),(60134,5112,0,'Cobalt'),(63710,5112,20,'Cobalt, Rich'),(60136,5113,0,'Cobalt'),(63730,5113,20,'Cobalt, Rich'),(60137,5114,0,'Cobalt'),(63731,5114,20,'Cobalt, Rich'),(60143,5115,0,'Cobalt'),(63738,5115,20,'Cobalt, Rich'),(60147,5116,0,'Cobalt'),(63739,5116,20,'Cobalt, Rich'),(60150,5117,0,'Cobalt'),(63741,5117,20,'Cobalt, Rich'),(60155,5118,0,'Cobalt'),(63743,5118,20,'Cobalt, Rich'),(60187,5119,0,'Cobalt'),(63745,5119,20,'Cobalt, Rich'),(61124,5120,0,'Cobalt'),(63746,5120,20,'Cobalt, Rich'),(56129,5123,0,'Cobalt'),(60240,5123,30,'Cobalt, Rich'),(56142,5124,0,'Cobalt'),(60251,5124,30,'Cobalt, Rich'),(56143,5125,0,'Cobalt'),(60447,5125,30,'Cobalt, Rich'),(56145,5126,0,'Cobalt'),(60738,5126,30,'Cobalt, Rich'),(56148,5127,0,'Cobalt'),(60859,5127,30,'Cobalt, Rich'),(56149,5128,0,'Cobalt'),(61071,5128,30,'Cobalt, Rich'),(58166,5129,0,'Cobalt'),(61078,5129,30,'Cobalt, Rich'),(58711,5130,0,'Cobalt'),(61082,5130,30,'Cobalt, Rich'),(58734,5131,0,'Cobalt'),(61086,5131,30,'Cobalt, Rich'),(58737,5132,0,'Cobalt'),(61222,5132,30,'Cobalt, Rich'),(60015,5133,0,'Cobalt'),(61995,5133,30,'Cobalt, Rich'),(60018,5134,0,'Cobalt'),(63752,5134,30,'Cobalt, Rich'),(60019,5135,0,'Cobalt'),(63753,5135,30,'Cobalt, Rich'),(60177,5136,0,'Cobalt'),(63754,5136,30,'Cobalt, Rich'),(66691,5137,0,'Cobalt'),(63755,5137,30,'Cobalt, Rich'),(56134,5138,0,'Cobalt'),(63763,5138,30,'Cobalt, Rich'),(56136,5139,0,'Cobalt'),(63772,5139,30,'Cobalt, Rich'),(56137,5140,0,'Cobalt'),(63785,5140,30,'Cobalt, Rich'),(56140,5141,0,'Cobalt'),(63786,5141,30,'Cobalt, Rich'),(56144,5142,0,'Cobalt'),(63814,5142,30,'Cobalt, Rich'),(56146,5143,0,'Cobalt'),(63815,5143,30,'Cobalt, Rich'),(56147,5144,0,'Cobalt'),(63816,5144,30,'Cobalt, Rich'),(56150,5145,0,'Cobalt'),(63817,5145,30,'Cobalt, Rich'),(56151,5146,0,'Cobalt'),(63818,5146,30,'Cobalt, Rich'),(56152,5147,0,'Cobalt'),(63819,5147,30,'Cobalt, Rich'),(56157,5148,0,'Cobalt'),(63820,5148,30,'Cobalt, Rich'),(56234,5149,0,'Cobalt'),(63822,5149,30,'Cobalt, Rich'),(56455,5150,0,'Cobalt'),(63825,5150,30,'Cobalt, Rich'),(56527,5151,0,'Cobalt'),(63826,5151,30,'Cobalt, Rich'),(58703,5152,0,'Cobalt'),(63827,5152,30,'Cobalt, Rich'),(58731,5153,0,'Cobalt'),(63828,5153,30,'Cobalt, Rich'),(58732,5154,0,'Cobalt'),(63829,5154,30,'Cobalt, Rich'),(58738,5155,0,'Cobalt'),(63830,5155,30,'Cobalt, Rich'),(58745,5156,0,'Cobalt'),(63831,5156,30,'Cobalt, Rich'),(58746,5157,0,'Cobalt'),(63832,5157,30,'Cobalt, Rich'),(58749,5158,0,'Cobalt'),(63833,5158,30,'Cobalt, Rich'),(58752,5159,0,'Cobalt'),(63834,5159,30,'Cobalt, Rich'),(58754,5160,0,'Cobalt'),(63835,5160,30,'Cobalt, Rich'),(58755,5161,0,'Cobalt'),(63838,5161,30,'Cobalt, Rich'),(58760,5162,0,'Cobalt'),(63839,5162,30,'Cobalt, Rich'),(58761,5163,0,'Cobalt'),(63840,5163,30,'Cobalt, Rich'),(58763,5164,0,'Cobalt'),(63841,5164,30,'Cobalt, Rich'),(58765,5165,0,'Cobalt'),(63842,5165,30,'Cobalt, Rich'),(58766,5166,0,'Cobalt'),(63846,5166,30,'Cobalt, Rich'),(59009,5167,0,'Cobalt'),(63847,5167,30,'Cobalt, Rich'),(59287,5168,0,'Cobalt'),(63848,5168,30,'Cobalt, Rich'),(60116,5169,0,'Cobalt'),(63849,5169,30,'Cobalt, Rich'),(60141,5170,0,'Cobalt'),(63851,5170,30,'Cobalt, Rich'),(60159,5171,0,'Cobalt'),(63852,5171,30,'Cobalt, Rich'),(60161,5172,0,'Cobalt'),(63855,5172,30,'Cobalt, Rich'),(60184,5173,0,'Cobalt'),(63862,5173,30,'Cobalt, Rich'),(60185,5174,0,'Cobalt'),(63864,5174,30,'Cobalt, Rich'),(60186,5175,0,'Cobalt'),(63866,5175,30,'Cobalt, Rich'),(60188,5176,0,'Cobalt'),(63867,5176,30,'Cobalt, Rich'),(60596,5177,0,'Cobalt'),(63868,5177,30,'Cobalt, Rich'),(61077,5178,0,'Cobalt'),(63870,5178,30,'Cobalt, Rich'),(61079,5179,0,'Cobalt'),(63872,5179,30,'Cobalt, Rich'),(61818,5180,0,'Cobalt'),(63875,5180,30,'Cobalt, Rich'),(61929,5239,0,'Cobalt'),(63876,5239,30,'Cobalt, Rich'),(56163,5182,0,'Cobalt'),(61085,5182,40,'Cobalt, Rich'),(56167,5183,0,'Cobalt'),(61152,5183,40,'Cobalt, Rich'),(56172,5184,0,'Cobalt'),(61153,5184,40,'Cobalt, Rich'),(56176,5185,0,'Cobalt'),(61163,5185,40,'Cobalt, Rich'),(56177,5186,0,'Cobalt'),(63879,5186,40,'Cobalt, Rich'),(56179,5187,0,'Cobalt'),(63880,5187,40,'Cobalt, Rich'),(56183,5188,0,'Cobalt'),(63881,5188,40,'Cobalt, Rich'),(56213,5189,0,'Cobalt'),(63883,5189,40,'Cobalt, Rich'),(56423,5190,0,'Cobalt'),(63884,5190,40,'Cobalt, Rich'),(58110,5191,0,'Cobalt'),(63887,5191,40,'Cobalt, Rich'),(58713,5192,0,'Cobalt'),(63888,5192,40,'Cobalt, Rich'),(59196,5193,0,'Cobalt'),(63893,5193,40,'Cobalt, Rich'),(59447,5194,0,'Cobalt'),(63895,5194,40,'Cobalt, Rich'),(59454,5195,0,'Cobalt'),(63897,5195,40,'Cobalt, Rich'),(59591,5196,0,'Cobalt'),(63899,5196,40,'Cobalt, Rich'),(60140,5197,0,'Cobalt'),(63904,5197,40,'Cobalt, Rich'),(60145,5198,0,'Cobalt'),(63906,5198,40,'Cobalt, Rich'),(60156,5199,0,'Cobalt'),(63907,5199,40,'Cobalt, Rich'),(60157,5200,0,'Cobalt'),(63908,5200,40,'Cobalt, Rich'),(60158,5201,0,'Cobalt'),(63909,5201,40,'Cobalt, Rich'),(60162,5202,0,'Cobalt'),(63911,5202,40,'Cobalt, Rich'),(60163,5203,0,'Cobalt'),(63912,5203,40,'Cobalt, Rich'),(60166,5204,0,'Cobalt'),(63916,5204,40,'Cobalt, Rich'),(60179,5205,0,'Cobalt'),(63917,5205,40,'Cobalt, Rich'),(60180,5206,0,'Cobalt'),(63919,5206,40,'Cobalt, Rich'),(60181,5207,0,'Cobalt'),(63924,5207,40,'Cobalt, Rich'),(60182,5208,0,'Cobalt'),(63928,5208,40,'Cobalt, Rich'),(60183,5209,0,'Cobalt'),(63980,5209,40,'Cobalt, Rich'),(56128,5210,0,'Cobalt'),(63981,5210,40,'Cobalt, Rich'),(56175,5211,0,'Cobalt'),(63983,5211,40,'Cobalt, Rich'),(56236,5212,0,'Cobalt'),(63984,5212,40,'Cobalt, Rich'),(59193,5213,0,'Cobalt'),(63985,5213,40,'Cobalt, Rich'),(59241,5214,0,'Cobalt'),(63986,5214,40,'Cobalt, Rich'),(59590,5215,0,'Cobalt'),(63993,5215,40,'Cobalt, Rich'),(61083,5216,0,'Cobalt'),(63995,5216,40,'Cobalt, Rich'),(64922,5217,5,'Saronite'),(64954,5218,5,'Saronite'),(64956,5219,5,'Saronite'),(64972,5220,5,'Saronite'),(64980,5221,5,'Saronite'),(64981,5222,5,'Saronite'),(64982,5223,5,'Saronite'),(64986,5224,5,'Saronite'),(64987,5225,5,'Saronite'),(65000,5226,5,'Saronite'),(65001,5227,5,'Saronite'),(65002,5228,5,'Saronite'),(65034,5229,5,'Saronite'),(65035,5230,5,'Saronite'),(65039,5231,5,'Saronite'),(65050,5232,5,'Saronite'),(65057,5233,5,'Saronite'),(65075,5234,5,'Saronite'),(65096,5235,5,'Saronite'),(65097,5236,5,'Saronite'),(65109,5237,5,'Saronite'),(74930,2012,0,'Spawn Point 1 - Copper'),(74931,2012,0,'Spawn Point 2 - Copper'),(74932,2012,0,'Spawn Point 3 - Copper'),(74933,2012,0,'Spawn Point 4 - Copper'),(74934,2012,0,'Spawn Point 5 - Copper'),(74935,2012,0,'Spawn Point 6 - Copper'),(74936,2012,0,'Spawn Point 7 - Copper'),(74937,2012,0,'Spawn Point 8 - Copper'),(74938,2012,0,'Spawn Point 9 - Copper'),(74939,2012,0,'Spawn Point 10 - Copper'),(74940,2012,0,'Spawn Point 11 - Copper'),(74941,2012,0,'Spawn Point 12 - Copper'),(74942,2012,0,'Spawn Point 13 - Copper'),(74943,2012,0,'Spawn Point 14 - Copper'),(74944,2012,0,'Spawn Point 15 - Copper'),(74945,2012,0,'Spawn Point 16 - Copper'),(74946,2012,0,'Spawn Point 17 - Copper'),(74947,2012,0,'Spawn Point 18 - Copper'),(74948,2012,0,'Spawn Point 19 - Copper'),(74949,2012,0,'Spawn Point 20 - Copper'),(74950,2012,0,'Spawn Point 21 - Copper'),(74951,2012,0,'Spawn Point 22 - Copper'),(74952,2012,0,'Spawn Point 23 - Copper'),(74953,2012,0,'Spawn Point 24 - Copper'),(74954,2012,0,'Spawn Point 25 - Copper'),(74955,2012,0,'Spawn Point 26 - Copper'),(74956,2012,0,'Spawn Point 27 - Copper'),(74957,2012,0,'Spawn Point 28 - Copper'),(74958,2012,0,'Spawn Point 29 - Copper'),(74959,2012,0,'Spawn Point 30 - Copper'),(74960,2012,0,'Spawn Point 31 - Copper'),(74961,2012,0,'Spawn Point 32 - Copper'),(74962,2012,0,'Spawn Point 33 - Copper'),(74963,2012,0,'Spawn Point 34 - Copper'),(74964,2012,0,'Spawn Point 35 - Copper'),(74965,2012,0,'Spawn Point 36 - Copper'),(74966,2012,0,'Spawn Point 37 - Copper'),(74967,2012,0,'Spawn Point 38 - Copper'),(74968,2012,0,'Spawn Point 39 - Copper'),(74969,2012,0,'Spawn Point 40 - Copper'),(74970,2012,0,'Spawn Point 41 - Copper'),(74971,2012,0,'Spawn Point 42 - Copper'),(74972,2012,0,'Spawn Point 43 - Copper'),(74973,2012,0,'Spawn Point 44 - Copper'),(74974,2012,0,'Spawn Point 45 - Copper'),(74975,2012,0,'Spawn Point 46 - Copper'),(74976,2012,0,'Spawn Point 47 - Copper'),(74977,2012,0,'Spawn Point 48 - Copper'),(74978,2012,0,'Spawn Point 49 - Copper'),(74979,2012,0,'Spawn Point 50 - Copper'),(74980,2012,0,'Spawn Point 51 - Copper'),(74981,2012,0,'Spawn Point 52 - Copper'),(74982,2012,0,'Spawn Point 53 - Copper'),(74983,2012,0,'Spawn Point 54 - Copper'),(74984,2012,0,'Spawn Point 55 - Copper'),(74985,2012,0,'Spawn Point 56 - Copper'),(74986,2012,0,'Spawn Point 57 - Copper'),(74987,2012,0,'Spawn Point 57 - Copper'),(75570,4870,0,'Spawn Point 1 - Adamantite'),(75571,4870,30,'Spawn Point 1 - Rich Adamantite'),(75572,4870,5,'Spawn Point 1 - Khorium'),(75573,4871,0,'Spawn Point 2 - Adamantite'),(75574,4871,30,'Spawn Point 2 - Rich Adamantite'),(75575,4871,5,'Spawn Point 2 - Khorium'),(75576,4872,0,'Spawn Point 3 - Adamantite'),(75577,4872,30,'Spawn Point 3 - Rich Adamantite'),(75578,4872,5,'Spawn Point 3 - Khorium'),(75579,4873,0,'Spawn Point 4 - Adamantite'),(75580,4873,30,'Spawn Point 4 - Rich Adamantite'),(75581,4873,5,'Spawn Point 4 - Khorium'),(75582,4874,0,'Spawn Point 5 - Adamantite'),(75583,4874,30,'Spawn Point 5 - Rich Adamantite'),(75584,4874,5,'Spawn Point 5 - Khorium'),(75585,4875,0,'Spawn Point 6 - Adamantite'),(75586,4875,30,'Spawn Point 6 - Rich Adamantite'),(75587,4875,5,'Spawn Point 6 - Khorium'),(57448,50000,0,'Raised Mud type 10 (190779) - Spawn 8'),(57449,50000,0,'Raised Mud type 10 (190779) - Spawn 7'),(57450,50000,0,'Raised Mud type 10 (190779) - Spawn 6'),(57451,50000,0,'Raised Mud type 10 (190779) - Spawn 5'),(150108,50000,0,'Raised Mud type 10 (190779) - Spawn 4'),(150109,50000,0,'Raised Mud type 10 (190779) - Spawn 3'),(150110,50000,0,'Raised Mud type 10 (190779) - Spawn 2'),(150111,50000,0,'Raised Mud type 10 (190779) - Spawn 1'),(81151,50001,0,'Raised Mud type 3 (190778) - Spawn 4'),(81152,50001,0,'Raised Mud type 3 (190778) - Spawn 3'),(81153,50001,0,'Raised Mud type 3 (190778) - Spawn 2'),(81154,50001,0,'Raised Mud type 3 (190778) - Spawn 1'),(56249,5292,0,'Sholazar Basin 189980, node 1'),(120832,5292,40,'Sholazar Basin 189981, node 1'),(120833,5292,5,'Sholazar Basin 191133, node 1'),(56250,5293,0,'Sholazar Basin 189980, node 2'),(120834,5293,40,'Sholazar Basin 189981, node 2'),(120835,5293,5,'Sholazar Basin 191133, node 2'),(56251,5294,0,'Sholazar Basin 189980, node 3'),(120836,5294,40,'Sholazar Basin 189981, node 3'),(120837,5294,5,'Sholazar Basin 191133, node 3'),(56252,5295,0,'Sholazar Basin 189980, node 4'),(120838,5295,40,'Sholazar Basin 189981, node 4'),(120839,5295,5,'Sholazar Basin 191133, node 4'),(56253,5296,0,'Sholazar Basin 189980, node 5'),(120840,5296,40,'Sholazar Basin 189981, node 5'),(120841,5296,5,'Sholazar Basin 191133, node 5'),(56254,5297,0,'Sholazar Basin 189980, node 6'),(120842,5297,40,'Sholazar Basin 189981, node 6'),(120843,5297,5,'Sholazar Basin 191133, node 6'),(56255,5298,0,'Sholazar Basin 189980, node 7'),(120844,5298,40,'Sholazar Basin 189981, node 7'),(120845,5298,5,'Sholazar Basin 191133, node 7'),(56256,5299,0,'Sholazar Basin 189980, node 8'),(120846,5299,40,'Sholazar Basin 189981, node 8'),(120847,5299,5,'Sholazar Basin 191133, node 8'),(56257,5300,0,'Sholazar Basin 189980, node 9'),(120848,5300,40,'Sholazar Basin 189981, node 9'),(120849,5300,5,'Sholazar Basin 191133, node 9'),(56258,5301,0,'Sholazar Basin 189980, node 10'),(120850,5301,40,'Sholazar Basin 189981, node 10'),(120851,5301,5,'Sholazar Basin 191133, node 10'),(56259,5302,0,'Sholazar Basin 189980, node 11'),(120852,5302,40,'Sholazar Basin 189981, node 11'),(120853,5302,5,'Sholazar Basin 191133, node 11'),(56260,5303,0,'Sholazar Basin 189980, node 12'),(120854,5303,40,'Sholazar Basin 189981, node 12'),(120855,5303,5,'Sholazar Basin 191133, node 12'),(56261,5304,0,'Sholazar Basin 189980, node 13'),(120856,5304,40,'Sholazar Basin 189981, node 13'),(120857,5304,5,'Sholazar Basin 191133, node 13'),(56262,5305,0,'Sholazar Basin 189980, node 14'),(120858,5305,40,'Sholazar Basin 189981, node 14'),(120859,5305,5,'Sholazar Basin 191133, node 14'),(56263,5306,0,'Sholazar Basin 189980, node 15'),(120860,5306,40,'Sholazar Basin 189981, node 15'),(120861,5306,5,'Sholazar Basin 191133, node 15'),(56264,5307,0,'Sholazar Basin 189980, node 16'),(120862,5307,40,'Sholazar Basin 189981, node 16'),(120863,5307,5,'Sholazar Basin 191133, node 16'),(56265,5308,0,'Sholazar Basin 189980, node 17'),(120864,5308,40,'Sholazar Basin 189981, node 17'),(120865,5308,5,'Sholazar Basin 191133, node 17'),(56266,5309,0,'Sholazar Basin 189980, node 18'),(120866,5309,40,'Sholazar Basin 189981, node 18'),(120867,5309,5,'Sholazar Basin 191133, node 18'),(56267,5310,0,'Sholazar Basin 189980, node 19'),(120868,5310,40,'Sholazar Basin 189981, node 19'),(120869,5310,5,'Sholazar Basin 191133, node 19'),(56326,5311,0,'Sholazar Basin 189980, node 20'),(120870,5311,40,'Sholazar Basin 189981, node 20'),(120871,5311,5,'Sholazar Basin 191133, node 20'),(56346,5312,0,'Sholazar Basin 189980, node 21'),(120872,5312,40,'Sholazar Basin 189981, node 21'),(120873,5312,5,'Sholazar Basin 191133, node 21'),(59673,5313,0,'Sholazar Basin 189980, node 22'),(120874,5313,40,'Sholazar Basin 189981, node 22'),(120875,5313,5,'Sholazar Basin 191133, node 22'),(61270,5314,0,'Sholazar Basin 189980, node 23'),(120876,5314,40,'Sholazar Basin 189981, node 23'),(120877,5314,5,'Sholazar Basin 191133, node 23'),(61272,5315,0,'Sholazar Basin 189980, node 24'),(120878,5315,40,'Sholazar Basin 189981, node 24'),(120879,5315,5,'Sholazar Basin 191133, node 24'),(61274,5316,0,'Sholazar Basin 189980, node 25'),(120880,5316,40,'Sholazar Basin 189981, node 25'),(120881,5316,5,'Sholazar Basin 191133, node 25'),(61276,5317,0,'Sholazar Basin 189980, node 26'),(120882,5317,40,'Sholazar Basin 189981, node 26'),(120883,5317,5,'Sholazar Basin 191133, node 26'),(61282,5318,0,'Sholazar Basin 189980, node 27'),(120884,5318,40,'Sholazar Basin 189981, node 27'),(120885,5318,5,'Sholazar Basin 191133, node 27'),(61283,5319,0,'Sholazar Basin 189980, node 28'),(120886,5319,40,'Sholazar Basin 189981, node 28'),(120887,5319,5,'Sholazar Basin 191133, node 28'),(61285,5320,0,'Sholazar Basin 189980, node 29'),(120888,5320,40,'Sholazar Basin 189981, node 29'),(120889,5320,5,'Sholazar Basin 191133, node 29'),(61286,5321,0,'Sholazar Basin 189980, node 30'),(120890,5321,40,'Sholazar Basin 189981, node 30'),(120891,5321,5,'Sholazar Basin 191133, node 30'),(61287,5322,0,'Sholazar Basin 189980, node 31'),(120892,5322,40,'Sholazar Basin 189981, node 31'),(120893,5322,5,'Sholazar Basin 191133, node 31'),(61288,5323,0,'Sholazar Basin 189980, node 32'),(120894,5323,40,'Sholazar Basin 189981, node 32'),(120895,5323,5,'Sholazar Basin 191133, node 32'),(61293,5324,0,'Sholazar Basin 189980, node 33'),(120896,5324,40,'Sholazar Basin 189981, node 33'),(120897,5324,5,'Sholazar Basin 191133, node 33'),(61294,5325,0,'Sholazar Basin 189980, node 34'),(120898,5325,40,'Sholazar Basin 189981, node 34'),(120899,5325,5,'Sholazar Basin 191133, node 34'),(61295,5326,0,'Sholazar Basin 189980, node 35'),(120900,5326,40,'Sholazar Basin 189981, node 35'),(120901,5326,5,'Sholazar Basin 191133, node 35'),(61298,5327,0,'Sholazar Basin 189980, node 36'),(120902,5327,40,'Sholazar Basin 189981, node 36'),(120903,5327,5,'Sholazar Basin 191133, node 36'),(61299,5328,0,'Sholazar Basin 189980, node 37'),(120904,5328,40,'Sholazar Basin 189981, node 37'),(120905,5328,5,'Sholazar Basin 191133, node 37'),(61300,5329,0,'Sholazar Basin 189980, node 38'),(120906,5329,40,'Sholazar Basin 189981, node 38'),(120907,5329,5,'Sholazar Basin 191133, node 38'),(61301,5330,0,'Sholazar Basin 189980, node 39'),(120908,5330,40,'Sholazar Basin 189981, node 39'),(120909,5330,5,'Sholazar Basin 191133, node 39'),(61303,5331,0,'Sholazar Basin 189980, node 40'),(120910,5331,40,'Sholazar Basin 189981, node 40'),(120911,5331,5,'Sholazar Basin 191133, node 40'),(61314,5332,0,'Sholazar Basin 189980, node 41'),(120912,5332,40,'Sholazar Basin 189981, node 41'),(120913,5332,5,'Sholazar Basin 191133, node 41'),(61333,5333,0,'Sholazar Basin 189980, node 42'),(120914,5333,40,'Sholazar Basin 189981, node 42'),(120915,5333,5,'Sholazar Basin 191133, node 42'),(61334,5334,0,'Sholazar Basin 189980, node 43'),(120916,5334,40,'Sholazar Basin 189981, node 43'),(120917,5334,5,'Sholazar Basin 191133, node 43'),(61336,5335,0,'Sholazar Basin 189980, node 44'),(120918,5335,40,'Sholazar Basin 189981, node 44'),(120919,5335,5,'Sholazar Basin 191133, node 44'),(61980,5336,0,'Sholazar Basin 189980, node 45'),(120920,5336,40,'Sholazar Basin 189981, node 45'),(120921,5336,5,'Sholazar Basin 191133, node 45'),(67640,5337,0,'Sholazar Basin 189980, node 46'),(120922,5337,40,'Sholazar Basin 189981, node 46'),(120923,5337,5,'Sholazar Basin 191133, node 46'),(120012,5338,0,'Sholazar Basin 189980, node 47'),(120924,5338,40,'Sholazar Basin 189981, node 47'),(120925,5338,5,'Sholazar Basin 191133, node 47'),(120026,5339,0,'Sholazar Basin 189980, node 48'),(120926,5339,40,'Sholazar Basin 189981, node 48'),(120927,5339,5,'Sholazar Basin 191133, node 48'),(120028,5340,0,'Sholazar Basin 189980, node 49'),(120928,5340,40,'Sholazar Basin 189981, node 49'),(120929,5340,5,'Sholazar Basin 191133, node 49'),(120029,5341,0,'Sholazar Basin 189980, node 50'),(120930,5341,40,'Sholazar Basin 189981, node 50'),(120931,5341,5,'Sholazar Basin 191133, node 50'),(120030,5342,0,'Sholazar Basin 189980, node 51'),(120932,5342,40,'Sholazar Basin 189981, node 51'),(120933,5342,5,'Sholazar Basin 191133, node 51'),(120036,5343,0,'Sholazar Basin 189980, node 52'),(120934,5343,40,'Sholazar Basin 189981, node 52'),(120935,5343,5,'Sholazar Basin 191133, node 52'),(120037,5344,0,'Sholazar Basin 189980, node 53'),(120936,5344,40,'Sholazar Basin 189981, node 53'),(120937,5344,5,'Sholazar Basin 191133, node 53'),(120039,5345,0,'Sholazar Basin 189980, node 54'),(120938,5345,40,'Sholazar Basin 189981, node 54'),(120939,5345,5,'Sholazar Basin 191133, node 54'),(120056,5346,0,'Sholazar Basin 189980, node 55'),(120940,5346,40,'Sholazar Basin 189981, node 55'),(120941,5346,5,'Sholazar Basin 191133, node 55'),(120057,5347,0,'Sholazar Basin 189980, node 56'),(120942,5347,40,'Sholazar Basin 189981, node 56'),(120943,5347,5,'Sholazar Basin 191133, node 56'),(120062,5348,0,'Sholazar Basin 189980, node 57'),(120944,5348,40,'Sholazar Basin 189981, node 57'),(120945,5348,5,'Sholazar Basin 191133, node 57'),(120065,5349,0,'Sholazar Basin 189980, node 58'),(120946,5349,40,'Sholazar Basin 189981, node 58'),(120947,5349,5,'Sholazar Basin 191133, node 58'),(120067,5350,0,'Sholazar Basin 189980, node 59'),(120948,5350,40,'Sholazar Basin 189981, node 59'),(120949,5350,5,'Sholazar Basin 191133, node 59'),(120071,5351,0,'Sholazar Basin 189980, node 60'),(120950,5351,40,'Sholazar Basin 189981, node 60'),(120951,5351,5,'Sholazar Basin 191133, node 60'),(120072,5352,0,'Sholazar Basin 189980, node 61'),(120952,5352,40,'Sholazar Basin 189981, node 61'),(120953,5352,5,'Sholazar Basin 191133, node 61'),(120102,5353,0,'Sholazar Basin 189980, node 62'),(120954,5353,40,'Sholazar Basin 189981, node 62'),(120955,5353,5,'Sholazar Basin 191133, node 62'),(120111,5354,0,'Sholazar Basin 189980, node 63'),(120956,5354,40,'Sholazar Basin 189981, node 63'),(120957,5354,5,'Sholazar Basin 191133, node 63'),(120112,5355,0,'Sholazar Basin 189980, node 64'),(120958,5355,40,'Sholazar Basin 189981, node 64'),(120959,5355,5,'Sholazar Basin 191133, node 64'),(120152,5356,0,'Sholazar Basin 189980, node 65'),(120960,5356,40,'Sholazar Basin 189981, node 65'),(120961,5356,5,'Sholazar Basin 191133, node 65'),(120153,5357,0,'Sholazar Basin 189980, node 66'),(120962,5357,40,'Sholazar Basin 189981, node 66'),(120963,5357,5,'Sholazar Basin 191133, node 66'),(120154,5358,0,'Sholazar Basin 189980, node 67'),(120964,5358,40,'Sholazar Basin 189981, node 67'),(120965,5358,5,'Sholazar Basin 191133, node 67'),(120155,5359,0,'Sholazar Basin 189980, node 68'),(120966,5359,40,'Sholazar Basin 189981, node 68'),(120967,5359,5,'Sholazar Basin 191133, node 68'),(120156,5360,0,'Sholazar Basin 189980, node 69'),(120968,5360,40,'Sholazar Basin 189981, node 69'),(120969,5360,5,'Sholazar Basin 191133, node 69'),(120157,5361,0,'Sholazar Basin 189980, node 70'),(120970,5361,40,'Sholazar Basin 189981, node 70'),(120971,5361,5,'Sholazar Basin 191133, node 70'),(120158,5362,0,'Sholazar Basin 189980, node 71'),(120972,5362,40,'Sholazar Basin 189981, node 71'),(120973,5362,5,'Sholazar Basin 191133, node 71'),(120162,5363,0,'Sholazar Basin 189980, node 72'),(120974,5363,40,'Sholazar Basin 189981, node 72'),(120975,5363,5,'Sholazar Basin 191133, node 72'),(120164,5364,0,'Sholazar Basin 189980, node 73'),(120976,5364,40,'Sholazar Basin 189981, node 73'),(120977,5364,5,'Sholazar Basin 191133, node 73'),(120177,5365,0,'Sholazar Basin 189980, node 74'),(120978,5365,40,'Sholazar Basin 189981, node 74'),(120979,5365,5,'Sholazar Basin 191133, node 74'),(120274,5366,0,'Sholazar Basin 189980, node 75'),(120980,5366,40,'Sholazar Basin 189981, node 75'),(120981,5366,5,'Sholazar Basin 191133, node 75'),(120685,5367,0,'Sholazar Basin 189980, node 76'),(120982,5367,40,'Sholazar Basin 189981, node 76'),(120983,5367,5,'Sholazar Basin 191133, node 76'),(120686,5368,0,'Sholazar Basin 189980, node 77'),(120984,5368,40,'Sholazar Basin 189981, node 77'),(120985,5368,5,'Sholazar Basin 191133, node 77'),(120687,5369,0,'Sholazar Basin 189980, node 78'),(120986,5369,40,'Sholazar Basin 189981, node 78'),(120987,5369,5,'Sholazar Basin 191133, node 78'),(120688,5370,0,'Sholazar Basin 189980, node 79'),(120988,5370,40,'Sholazar Basin 189981, node 79'),(120989,5370,5,'Sholazar Basin 191133, node 79'),(120689,5371,0,'Sholazar Basin 189980, node 80'),(120990,5371,40,'Sholazar Basin 189981, node 80'),(120991,5371,5,'Sholazar Basin 191133, node 80'),(120690,5372,0,'Sholazar Basin 189980, node 81'),(120992,5372,40,'Sholazar Basin 189981, node 81'),(120993,5372,5,'Sholazar Basin 191133, node 81'),(120724,5373,0,'Sholazar Basin 189980, node 82'),(120994,5373,40,'Sholazar Basin 189981, node 82'),(120995,5373,5,'Sholazar Basin 191133, node 82'),(120729,5374,0,'Sholazar Basin 189980, node 83'),(120996,5374,40,'Sholazar Basin 189981, node 83'),(120997,5374,5,'Sholazar Basin 191133, node 83'),(120733,5375,0,'Sholazar Basin 189980, node 84'),(120998,5375,40,'Sholazar Basin 189981, node 84'),(120999,5375,5,'Sholazar Basin 191133, node 84'),(56280,5376,0,'Storm Peaks 189980, node 1'),(121000,5376,40,'Storm Peaks 189981, node 1'),(121001,5376,10,'Storm Peaks 191133, node 1'),(56281,5377,0,'Storm Peaks 189980, node 2'),(121002,5377,40,'Storm Peaks 189981, node 2'),(121003,5377,10,'Storm Peaks 191133, node 2'),(56282,5378,0,'Storm Peaks 189980, node 3'),(121004,5378,40,'Storm Peaks 189981, node 3'),(121005,5378,10,'Storm Peaks 191133, node 3'),(56283,5379,0,'Storm Peaks 189980, node 4'),(121006,5379,40,'Storm Peaks 189981, node 4'),(121007,5379,10,'Storm Peaks 191133, node 4'),(56284,5380,0,'Storm Peaks 189980, node 5'),(121008,5380,40,'Storm Peaks 189981, node 5'),(121009,5380,10,'Storm Peaks 191133, node 5'),(56285,5381,0,'Storm Peaks 189980, node 6'),(121010,5381,40,'Storm Peaks 189981, node 6'),(121011,5381,10,'Storm Peaks 191133, node 6'),(56286,5382,0,'Storm Peaks 189980, node 7'),(121012,5382,40,'Storm Peaks 189981, node 7'),(121013,5382,10,'Storm Peaks 191133, node 7'),(56287,5383,0,'Storm Peaks 189980, node 8'),(121014,5383,40,'Storm Peaks 189981, node 8'),(121015,5383,10,'Storm Peaks 191133, node 8'),(56288,5384,0,'Storm Peaks 189980, node 9'),(121016,5384,40,'Storm Peaks 189981, node 9'),(121017,5384,10,'Storm Peaks 191133, node 9'),(56289,5385,0,'Storm Peaks 189980, node 10'),(121018,5385,40,'Storm Peaks 189981, node 10'),(121019,5385,10,'Storm Peaks 191133, node 10'),(56290,5386,0,'Storm Peaks 189980, node 11'),(121020,5386,40,'Storm Peaks 189981, node 11'),(121021,5386,10,'Storm Peaks 191133, node 11'),(56291,5387,0,'Storm Peaks 189980, node 12'),(121022,5387,40,'Storm Peaks 189981, node 12'),(121023,5387,10,'Storm Peaks 191133, node 12'),(56292,5388,0,'Storm Peaks 189980, node 13'),(121024,5388,40,'Storm Peaks 189981, node 13'),(121025,5388,10,'Storm Peaks 191133, node 13'),(56293,5389,0,'Storm Peaks 189980, node 14'),(121026,5389,40,'Storm Peaks 189981, node 14'),(121027,5389,10,'Storm Peaks 191133, node 14'),(56446,5390,0,'Storm Peaks 189980, node 15'),(121028,5390,40,'Storm Peaks 189981, node 15'),(121029,5390,10,'Storm Peaks 191133, node 15'),(56452,5391,0,'Storm Peaks 189980, node 16'),(121030,5391,40,'Storm Peaks 189981, node 16'),(121031,5391,10,'Storm Peaks 191133, node 16'),(120014,5392,0,'Storm Peaks 189980, node 17'),(121032,5392,40,'Storm Peaks 189981, node 17'),(121033,5392,10,'Storm Peaks 191133, node 17'),(120015,5393,0,'Storm Peaks 189980, node 18'),(121034,5393,40,'Storm Peaks 189981, node 18'),(121035,5393,10,'Storm Peaks 191133, node 18'),(120016,5394,0,'Storm Peaks 189980, node 19'),(121036,5394,40,'Storm Peaks 189981, node 19'),(121037,5394,10,'Storm Peaks 191133, node 19'),(120017,5395,0,'Storm Peaks 189980, node 20'),(121038,5395,40,'Storm Peaks 189981, node 20'),(121039,5395,10,'Storm Peaks 191133, node 20'),(120018,5396,0,'Storm Peaks 189980, node 21'),(121040,5396,40,'Storm Peaks 189981, node 21'),(121041,5396,10,'Storm Peaks 191133, node 21'),(120049,5397,0,'Storm Peaks 189980, node 22'),(121042,5397,40,'Storm Peaks 189981, node 22'),(121043,5397,10,'Storm Peaks 191133, node 22'),(120050,5398,0,'Storm Peaks 189980, node 23'),(121044,5398,40,'Storm Peaks 189981, node 23'),(121045,5398,10,'Storm Peaks 191133, node 23'),(120051,5399,0,'Storm Peaks 189980, node 24'),(121046,5399,40,'Storm Peaks 189981, node 24'),(121047,5399,10,'Storm Peaks 191133, node 24'),(120052,5400,0,'Storm Peaks 189980, node 25'),(121048,5400,40,'Storm Peaks 189981, node 25'),(121049,5400,10,'Storm Peaks 191133, node 25'),(120055,5401,0,'Storm Peaks 189980, node 26'),(121050,5401,40,'Storm Peaks 189981, node 26'),(121051,5401,10,'Storm Peaks 191133, node 26'),(120059,5402,0,'Storm Peaks 189980, node 27'),(121052,5402,40,'Storm Peaks 189981, node 27'),(121053,5402,10,'Storm Peaks 191133, node 27'),(120061,5403,0,'Storm Peaks 189980, node 28'),(121054,5403,40,'Storm Peaks 189981, node 28'),(121055,5403,10,'Storm Peaks 191133, node 28'),(120063,5404,0,'Storm Peaks 189980, node 29'),(121056,5404,40,'Storm Peaks 189981, node 29'),(121057,5404,10,'Storm Peaks 191133, node 29'),(120064,5405,0,'Storm Peaks 189980, node 30'),(121058,5405,40,'Storm Peaks 189981, node 30'),(121059,5405,10,'Storm Peaks 191133, node 30'),(120068,5406,0,'Storm Peaks 189980, node 31'),(121060,5406,40,'Storm Peaks 189981, node 31'),(121061,5406,10,'Storm Peaks 191133, node 31'),(120073,5407,0,'Storm Peaks 189980, node 32'),(121062,5407,40,'Storm Peaks 189981, node 32'),(121063,5407,10,'Storm Peaks 191133, node 32'),(120093,5408,0,'Storm Peaks 189980, node 33'),(121064,5408,40,'Storm Peaks 189981, node 33'),(121065,5408,10,'Storm Peaks 191133, node 33'),(120094,5409,0,'Storm Peaks 189980, node 34'),(121066,5409,40,'Storm Peaks 189981, node 34'),(121067,5409,10,'Storm Peaks 191133, node 34'),(120095,5410,0,'Storm Peaks 189980, node 35'),(121068,5410,40,'Storm Peaks 189981, node 35'),(121069,5410,10,'Storm Peaks 191133, node 35'),(120096,5411,0,'Storm Peaks 189980, node 36'),(121070,5411,40,'Storm Peaks 189981, node 36'),(121071,5411,10,'Storm Peaks 191133, node 36'),(120105,5412,0,'Storm Peaks 189980, node 37'),(121072,5412,40,'Storm Peaks 189981, node 37'),(121073,5412,10,'Storm Peaks 191133, node 37'),(120106,5413,0,'Storm Peaks 189980, node 38'),(121074,5413,40,'Storm Peaks 189981, node 38'),(121075,5413,10,'Storm Peaks 191133, node 38'),(120107,5414,0,'Storm Peaks 189980, node 39'),(121076,5414,40,'Storm Peaks 189981, node 39'),(121077,5414,10,'Storm Peaks 191133, node 39'),(120110,5415,0,'Storm Peaks 189980, node 40'),(121078,5415,40,'Storm Peaks 189981, node 40'),(121079,5415,10,'Storm Peaks 191133, node 40'),(120113,5416,0,'Storm Peaks 189980, node 41'),(121080,5416,40,'Storm Peaks 189981, node 41'),(121081,5416,10,'Storm Peaks 191133, node 41'),(120114,5417,0,'Storm Peaks 189980, node 42'),(121082,5417,40,'Storm Peaks 189981, node 42'),(121083,5417,10,'Storm Peaks 191133, node 42'),(120147,5418,0,'Storm Peaks 189980, node 43'),(121084,5418,40,'Storm Peaks 189981, node 43'),(121085,5418,10,'Storm Peaks 191133, node 43'),(120148,5419,0,'Storm Peaks 189980, node 44'),(121086,5419,40,'Storm Peaks 189981, node 44'),(121087,5419,10,'Storm Peaks 191133, node 44'),(120149,5420,0,'Storm Peaks 189980, node 45'),(121088,5420,40,'Storm Peaks 189981, node 45'),(121089,5420,10,'Storm Peaks 191133, node 45'),(120168,5421,0,'Storm Peaks 189980, node 46'),(121090,5421,40,'Storm Peaks 189981, node 46'),(121091,5421,10,'Storm Peaks 191133, node 46'),(120174,5422,0,'Storm Peaks 189980, node 47'),(121092,5422,40,'Storm Peaks 189981, node 47'),(121093,5422,10,'Storm Peaks 191133, node 47'),(120270,5423,0,'Storm Peaks 189980, node 48'),(121094,5423,40,'Storm Peaks 189981, node 48'),(121095,5423,10,'Storm Peaks 191133, node 48'),(120271,5424,0,'Storm Peaks 189980, node 49'),(121096,5424,40,'Storm Peaks 189981, node 49'),(121097,5424,10,'Storm Peaks 191133, node 49'),(120275,5425,0,'Storm Peaks 189980, node 50'),(121098,5425,40,'Storm Peaks 189981, node 50'),(121099,5425,10,'Storm Peaks 191133, node 50'),(120279,5426,0,'Storm Peaks 189980, node 51'),(121100,5426,40,'Storm Peaks 189981, node 51'),(121101,5426,10,'Storm Peaks 191133, node 51'),(120280,5427,0,'Storm Peaks 189980, node 52'),(121102,5427,40,'Storm Peaks 189981, node 52'),(121103,5427,10,'Storm Peaks 191133, node 52'),(120281,5428,0,'Storm Peaks 189980, node 53'),(121104,5428,40,'Storm Peaks 189981, node 53'),(121105,5428,10,'Storm Peaks 191133, node 53'),(120283,5429,0,'Storm Peaks 189980, node 54'),(121106,5429,40,'Storm Peaks 189981, node 54'),(121107,5429,10,'Storm Peaks 191133, node 54'),(120518,5430,0,'Storm Peaks 189980, node 55'),(121108,5430,40,'Storm Peaks 189981, node 55'),(121109,5430,10,'Storm Peaks 191133, node 55'),(120519,5431,0,'Storm Peaks 189980, node 56'),(121110,5431,40,'Storm Peaks 189981, node 56'),(121111,5431,10,'Storm Peaks 191133, node 56'),(120520,5432,0,'Storm Peaks 189980, node 57'),(121112,5432,40,'Storm Peaks 189981, node 57'),(121113,5432,10,'Storm Peaks 191133, node 57'),(120521,5433,0,'Storm Peaks 189980, node 58'),(121114,5433,40,'Storm Peaks 189981, node 58'),(121115,5433,10,'Storm Peaks 191133, node 58'),(120522,5434,0,'Storm Peaks 189980, node 59'),(121116,5434,40,'Storm Peaks 189981, node 59'),(121117,5434,10,'Storm Peaks 191133, node 59'),(120523,5435,0,'Storm Peaks 189980, node 60'),(121118,5435,40,'Storm Peaks 189981, node 60'),(121119,5435,10,'Storm Peaks 191133, node 60'),(120524,5436,0,'Storm Peaks 189980, node 61'),(121120,5436,40,'Storm Peaks 189981, node 61'),(121121,5436,10,'Storm Peaks 191133, node 61'),(120525,5437,0,'Storm Peaks 189980, node 62'),(121122,5437,40,'Storm Peaks 189981, node 62'),(121123,5437,10,'Storm Peaks 191133, node 62'),(120529,5438,0,'Storm Peaks 189980, node 63'),(121124,5438,40,'Storm Peaks 189981, node 63'),(121125,5438,10,'Storm Peaks 191133, node 63'),(120546,5439,0,'Storm Peaks 189980, node 64'),(121126,5439,40,'Storm Peaks 189981, node 64'),(121127,5439,10,'Storm Peaks 191133, node 64'),(120548,5440,0,'Storm Peaks 189980, node 65'),(121128,5440,40,'Storm Peaks 189981, node 65'),(121129,5440,10,'Storm Peaks 191133, node 65'),(120549,5441,0,'Storm Peaks 189980, node 66'),(121130,5441,40,'Storm Peaks 189981, node 66'),(121131,5441,10,'Storm Peaks 191133, node 66'),(120682,5442,0,'Storm Peaks 189980, node 67'),(121132,5442,40,'Storm Peaks 189981, node 67'),(121133,5442,10,'Storm Peaks 191133, node 67'),(120691,5443,0,'Storm Peaks 189980, node 68'),(121134,5443,40,'Storm Peaks 189981, node 68'),(121135,5443,10,'Storm Peaks 191133, node 68'),(120695,5444,0,'Storm Peaks 189980, node 69'),(121136,5444,40,'Storm Peaks 189981, node 69'),(121137,5444,10,'Storm Peaks 191133, node 69'),(120727,5445,0,'Storm Peaks 189980, node 70'),(121138,5445,40,'Storm Peaks 189981, node 70'),(121139,5445,10,'Storm Peaks 191133, node 70'),(120734,5446,0,'Storm Peaks 189980, node 71'),(121140,5446,40,'Storm Peaks 189981, node 71'),(121141,5446,10,'Storm Peaks 191133, node 71'),(120739,5447,0,'Storm Peaks 189980, node 72'),(121142,5447,40,'Storm Peaks 189981, node 72'),(121143,5447,10,'Storm Peaks 191133, node 72'),(61289,5448,0,'Icecrown 189980, node 1'),(121144,5448,40,'Icecrown 189981, node 1'),(121145,5448,10,'Icecrown 191133, node 1'),(61297,5449,0,'Icecrown 189980, node 2'),(121146,5449,40,'Icecrown 189981, node 2'),(121147,5449,10,'Icecrown 191133, node 2'),(61302,5450,0,'Icecrown 189980, node 3'),(121148,5450,40,'Icecrown 189981, node 3'),(121149,5450,10,'Icecrown 191133, node 3'),(61306,5451,0,'Icecrown 189980, node 4'),(121150,5451,40,'Icecrown 189981, node 4'),(121151,5451,10,'Icecrown 191133, node 4'),(61307,5452,0,'Icecrown 189980, node 5'),(121152,5452,40,'Icecrown 189981, node 5'),(121153,5452,10,'Icecrown 191133, node 5'),(61308,5453,0,'Icecrown 189980, node 6'),(121154,5453,40,'Icecrown 189981, node 6'),(121155,5453,10,'Icecrown 191133, node 6'),(61309,5454,0,'Icecrown 189980, node 7'),(121156,5454,40,'Icecrown 189981, node 7'),(121157,5454,10,'Icecrown 191133, node 7'),(61310,5455,0,'Icecrown 189980, node 8'),(121158,5455,40,'Icecrown 189981, node 8'),(121159,5455,10,'Icecrown 191133, node 8'),(61311,5456,0,'Icecrown 189980, node 9'),(121160,5456,40,'Icecrown 189981, node 9'),(121161,5456,10,'Icecrown 191133, node 9'),(61331,5457,0,'Icecrown 189980, node 10'),(121162,5457,40,'Icecrown 189981, node 10'),(121163,5457,10,'Icecrown 191133, node 10'),(61335,5458,0,'Icecrown 189980, node 11'),(121164,5458,40,'Icecrown 189981, node 11'),(121165,5458,10,'Icecrown 191133, node 11'),(61977,5459,0,'Icecrown 189980, node 12'),(121166,5459,40,'Icecrown 189981, node 12'),(121167,5459,10,'Icecrown 191133, node 12'),(61978,5460,0,'Icecrown 189980, node 13'),(121168,5460,40,'Icecrown 189981, node 13'),(121169,5460,10,'Icecrown 191133, node 13'),(61981,5461,0,'Icecrown 189980, node 14'),(121170,5461,40,'Icecrown 189981, node 14'),(121171,5461,10,'Icecrown 191133, node 14'),(61983,5462,0,'Icecrown 189980, node 15'),(121172,5462,40,'Icecrown 189981, node 15'),(121173,5462,10,'Icecrown 191133, node 15'),(61992,5463,0,'Icecrown 189980, node 16'),(121174,5463,40,'Icecrown 189981, node 16'),(121175,5463,10,'Icecrown 191133, node 16'),(62179,5464,0,'Icecrown 189980, node 17'),(121176,5464,40,'Icecrown 189981, node 17'),(121177,5464,10,'Icecrown 191133, node 17'),(62180,5465,0,'Icecrown 189980, node 18'),(121178,5465,40,'Icecrown 189981, node 18'),(121179,5465,10,'Icecrown 191133, node 18'),(62181,5466,0,'Icecrown 189980, node 19'),(121180,5466,40,'Icecrown 189981, node 19'),(121181,5466,10,'Icecrown 191133, node 19'),(62182,5467,0,'Icecrown 189980, node 20'),(121182,5467,40,'Icecrown 189981, node 20'),(121183,5467,10,'Icecrown 191133, node 20'),(62183,5468,0,'Icecrown 189980, node 21'),(121184,5468,40,'Icecrown 189981, node 21'),(121185,5468,10,'Icecrown 191133, node 21'),(62184,5469,0,'Icecrown 189980, node 22'),(121186,5469,40,'Icecrown 189981, node 22'),(121187,5469,10,'Icecrown 191133, node 22'),(62185,5470,0,'Icecrown 189980, node 23'),(121188,5470,40,'Icecrown 189981, node 23'),(121189,5470,10,'Icecrown 191133, node 23'),(62186,5471,0,'Icecrown 189980, node 24'),(121190,5471,40,'Icecrown 189981, node 24'),(121191,5471,10,'Icecrown 191133, node 24'),(62187,5472,0,'Icecrown 189980, node 25'),(121192,5472,40,'Icecrown 189981, node 25'),(121193,5472,10,'Icecrown 191133, node 25'),(62188,5473,0,'Icecrown 189980, node 26'),(121194,5473,40,'Icecrown 189981, node 26'),(121195,5473,10,'Icecrown 191133, node 26'),(62189,5474,0,'Icecrown 189980, node 27'),(121196,5474,40,'Icecrown 189981, node 27'),(121197,5474,10,'Icecrown 191133, node 27'),(62190,5475,0,'Icecrown 189980, node 28'),(121198,5475,40,'Icecrown 189981, node 28'),(121199,5475,10,'Icecrown 191133, node 28'),(62191,5476,0,'Icecrown 189980, node 29'),(121200,5476,40,'Icecrown 189981, node 29'),(121201,5476,10,'Icecrown 191133, node 29'),(62192,5477,0,'Icecrown 189980, node 30'),(121202,5477,40,'Icecrown 189981, node 30'),(121203,5477,10,'Icecrown 191133, node 30'),(62193,5478,0,'Icecrown 189980, node 31'),(121204,5478,40,'Icecrown 189981, node 31'),(121205,5478,10,'Icecrown 191133, node 31'),(62194,5479,0,'Icecrown 189980, node 32'),(121206,5479,40,'Icecrown 189981, node 32'),(121207,5479,10,'Icecrown 191133, node 32'),(62195,5480,0,'Icecrown 189980, node 33'),(121208,5480,40,'Icecrown 189981, node 33'),(121209,5480,10,'Icecrown 191133, node 33'),(62196,5481,0,'Icecrown 189980, node 34'),(121210,5481,40,'Icecrown 189981, node 34'),(121211,5481,10,'Icecrown 191133, node 34'),(62197,5482,0,'Icecrown 189980, node 35'),(121212,5482,40,'Icecrown 189981, node 35'),(121213,5482,10,'Icecrown 191133, node 35'),(62198,5483,0,'Icecrown 189980, node 36'),(121214,5483,40,'Icecrown 189981, node 36'),(121215,5483,10,'Icecrown 191133, node 36'),(62199,5484,0,'Icecrown 189980, node 37'),(121216,5484,40,'Icecrown 189981, node 37'),(121217,5484,10,'Icecrown 191133, node 37'),(62200,5485,0,'Icecrown 189980, node 38'),(121218,5485,40,'Icecrown 189981, node 38'),(121219,5485,10,'Icecrown 191133, node 38'),(62201,5486,0,'Icecrown 189980, node 39'),(121220,5486,40,'Icecrown 189981, node 39'),(121221,5486,10,'Icecrown 191133, node 39'),(62205,5487,0,'Icecrown 189980, node 40'),(121222,5487,40,'Icecrown 189981, node 40'),(121223,5487,10,'Icecrown 191133, node 40'),(62206,5488,0,'Icecrown 189980, node 41'),(121224,5488,40,'Icecrown 189981, node 41'),(121225,5488,10,'Icecrown 191133, node 41'),(62586,5489,0,'Icecrown 189980, node 42'),(121226,5489,40,'Icecrown 189981, node 42'),(121227,5489,10,'Icecrown 191133, node 42'),(62587,5490,0,'Icecrown 189980, node 43'),(121228,5490,40,'Icecrown 189981, node 43'),(121229,5490,10,'Icecrown 191133, node 43'),(62588,5491,0,'Icecrown 189980, node 44'),(121230,5491,40,'Icecrown 189981, node 44'),(121231,5491,10,'Icecrown 191133, node 44'),(63432,5492,0,'Icecrown 189980, node 45'),(121232,5492,40,'Icecrown 189981, node 45'),(121233,5492,10,'Icecrown 191133, node 45'),(63433,5493,0,'Icecrown 189980, node 46'),(121234,5493,40,'Icecrown 189981, node 46'),(121235,5493,10,'Icecrown 191133, node 46'),(63434,5494,0,'Icecrown 189980, node 47'),(121236,5494,40,'Icecrown 189981, node 47'),(121237,5494,10,'Icecrown 191133, node 47'),(63435,5495,0,'Icecrown 189980, node 48'),(121238,5495,40,'Icecrown 189981, node 48'),(121239,5495,10,'Icecrown 191133, node 48'),(63436,5496,0,'Icecrown 189980, node 49'),(121240,5496,40,'Icecrown 189981, node 49'),(121241,5496,10,'Icecrown 191133, node 49'),(67902,5497,0,'Icecrown 189980, node 50'),(121242,5497,40,'Icecrown 189981, node 50'),(121243,5497,10,'Icecrown 191133, node 50'),(120019,5498,0,'Icecrown 189980, node 51'),(121244,5498,40,'Icecrown 189981, node 51'),(121245,5498,10,'Icecrown 191133, node 51'),(120021,5499,0,'Icecrown 189980, node 52'),(121246,5499,40,'Icecrown 189981, node 52'),(121247,5499,10,'Icecrown 191133, node 52'),(120022,5500,0,'Icecrown 189980, node 53'),(121248,5500,40,'Icecrown 189981, node 53'),(121249,5500,10,'Icecrown 191133, node 53'),(120023,5501,0,'Icecrown 189980, node 54'),(121250,5501,40,'Icecrown 189981, node 54'),(121251,5501,10,'Icecrown 191133, node 54'),(120024,5502,0,'Icecrown 189980, node 55'),(121252,5502,40,'Icecrown 189981, node 55'),(121253,5502,10,'Icecrown 191133, node 55'),(120031,5503,0,'Icecrown 189980, node 56'),(121254,5503,40,'Icecrown 189981, node 56'),(121255,5503,10,'Icecrown 191133, node 56'),(120032,5504,0,'Icecrown 189980, node 57'),(121256,5504,40,'Icecrown 189981, node 57'),(121257,5504,10,'Icecrown 191133, node 57'),(120033,5505,0,'Icecrown 189980, node 58'),(121258,5505,40,'Icecrown 189981, node 58'),(121259,5505,10,'Icecrown 191133, node 58'),(120034,5506,0,'Icecrown 189980, node 59'),(121260,5506,40,'Icecrown 189981, node 59'),(121261,5506,10,'Icecrown 191133, node 59'),(120040,5507,0,'Icecrown 189980, node 60'),(121262,5507,40,'Icecrown 189981, node 60'),(121263,5507,10,'Icecrown 191133, node 60'),(120041,5508,0,'Icecrown 189980, node 61'),(121264,5508,40,'Icecrown 189981, node 61'),(121265,5508,10,'Icecrown 191133, node 61'),(120042,5509,0,'Icecrown 189980, node 62'),(121266,5509,40,'Icecrown 189981, node 62'),(121267,5509,10,'Icecrown 191133, node 62'),(120043,5510,0,'Icecrown 189980, node 63'),(121268,5510,40,'Icecrown 189981, node 63'),(121269,5510,10,'Icecrown 191133, node 63'),(120044,5511,0,'Icecrown 189980, node 64'),(121270,5511,40,'Icecrown 189981, node 64'),(121271,5511,10,'Icecrown 191133, node 64'),(120045,5512,0,'Icecrown 189980, node 65'),(121272,5512,40,'Icecrown 189981, node 65'),(121273,5512,10,'Icecrown 191133, node 65'),(120046,5513,0,'Icecrown 189980, node 66'),(121274,5513,40,'Icecrown 189981, node 66'),(121275,5513,10,'Icecrown 191133, node 66'),(120047,5514,0,'Icecrown 189980, node 67'),(121276,5514,40,'Icecrown 189981, node 67'),(121277,5514,10,'Icecrown 191133, node 67'),(120048,5515,0,'Icecrown 189980, node 68'),(121278,5515,40,'Icecrown 189981, node 68'),(121279,5515,10,'Icecrown 191133, node 68'),(120053,5516,0,'Icecrown 189980, node 69'),(121280,5516,40,'Icecrown 189981, node 69'),(121281,5516,10,'Icecrown 191133, node 69'),(120054,5517,0,'Icecrown 189980, node 70'),(121282,5517,40,'Icecrown 189981, node 70'),(121283,5517,10,'Icecrown 191133, node 70'),(120060,5518,0,'Icecrown 189980, node 71'),(121284,5518,40,'Icecrown 189981, node 71'),(121285,5518,10,'Icecrown 191133, node 71'),(120066,5519,0,'Icecrown 189980, node 72'),(121286,5519,40,'Icecrown 189981, node 72'),(121287,5519,10,'Icecrown 191133, node 72'),(120069,5520,0,'Icecrown 189980, node 73'),(121288,5520,40,'Icecrown 189981, node 73'),(121289,5520,10,'Icecrown 191133, node 73'),(120070,5521,0,'Icecrown 189980, node 74'),(121290,5521,40,'Icecrown 189981, node 74'),(121291,5521,10,'Icecrown 191133, node 74'),(120074,5522,0,'Icecrown 189980, node 75'),(121292,5522,40,'Icecrown 189981, node 75'),(121293,5522,10,'Icecrown 191133, node 75'),(120075,5523,0,'Icecrown 189980, node 76'),(121294,5523,40,'Icecrown 189981, node 76'),(121295,5523,10,'Icecrown 191133, node 76'),(120076,5524,0,'Icecrown 189980, node 77'),(121296,5524,40,'Icecrown 189981, node 77'),(121297,5524,10,'Icecrown 191133, node 77'),(120077,5525,0,'Icecrown 189980, node 78'),(121298,5525,40,'Icecrown 189981, node 78'),(121299,5525,10,'Icecrown 191133, node 78'),(120078,5526,0,'Icecrown 189980, node 79'),(121300,5526,40,'Icecrown 189981, node 79'),(121301,5526,10,'Icecrown 191133, node 79'),(120079,5527,0,'Icecrown 189980, node 80'),(121302,5527,40,'Icecrown 189981, node 80'),(121303,5527,10,'Icecrown 191133, node 80'),(120080,5528,0,'Icecrown 189980, node 81'),(121304,5528,40,'Icecrown 189981, node 81'),(121305,5528,10,'Icecrown 191133, node 81'),(120081,5529,0,'Icecrown 189980, node 82'),(121306,5529,40,'Icecrown 189981, node 82'),(121307,5529,10,'Icecrown 191133, node 82'),(120082,5530,0,'Icecrown 189980, node 83'),(121308,5530,40,'Icecrown 189981, node 83'),(121309,5530,10,'Icecrown 191133, node 83'),(120083,5531,0,'Icecrown 189980, node 84'),(121310,5531,40,'Icecrown 189981, node 84'),(121311,5531,10,'Icecrown 191133, node 84'),(120084,5532,0,'Icecrown 189980, node 85'),(121312,5532,40,'Icecrown 189981, node 85'),(121313,5532,10,'Icecrown 191133, node 85'),(120085,5533,0,'Icecrown 189980, node 86'),(121314,5533,40,'Icecrown 189981, node 86'),(121315,5533,10,'Icecrown 191133, node 86'),(120086,5534,0,'Icecrown 189980, node 87'),(121316,5534,40,'Icecrown 189981, node 87'),(121317,5534,10,'Icecrown 191133, node 87'),(120087,5535,0,'Icecrown 189980, node 88'),(121318,5535,40,'Icecrown 189981, node 88'),(121319,5535,10,'Icecrown 191133, node 88'),(120089,5536,0,'Icecrown 189980, node 89'),(121320,5536,40,'Icecrown 189981, node 89'),(121321,5536,10,'Icecrown 191133, node 89'),(120091,5537,0,'Icecrown 189980, node 90'),(121322,5537,40,'Icecrown 189981, node 90'),(121323,5537,10,'Icecrown 191133, node 90'),(120092,5538,0,'Icecrown 189980, node 91'),(121324,5538,40,'Icecrown 189981, node 91'),(121325,5538,10,'Icecrown 191133, node 91'),(120097,5539,0,'Icecrown 189980, node 92'),(121326,5539,40,'Icecrown 189981, node 92'),(121327,5539,10,'Icecrown 191133, node 92'),(120099,5540,0,'Icecrown 189980, node 93'),(121328,5540,40,'Icecrown 189981, node 93'),(121329,5540,10,'Icecrown 191133, node 93'),(120100,5541,0,'Icecrown 189980, node 94'),(121330,5541,40,'Icecrown 189981, node 94'),(121331,5541,10,'Icecrown 191133, node 94'),(120101,5542,0,'Icecrown 189980, node 95'),(121332,5542,40,'Icecrown 189981, node 95'),(121333,5542,10,'Icecrown 191133, node 95'),(120104,5543,0,'Icecrown 189980, node 96'),(121334,5543,40,'Icecrown 189981, node 96'),(121335,5543,10,'Icecrown 191133, node 96'),(120108,5544,0,'Icecrown 189980, node 97'),(121336,5544,40,'Icecrown 189981, node 97'),(121337,5544,10,'Icecrown 191133, node 97'),(120109,5545,0,'Icecrown 189980, node 98'),(121338,5545,40,'Icecrown 189981, node 98'),(121339,5545,10,'Icecrown 191133, node 98'),(120115,5546,0,'Icecrown 189980, node 99'),(121340,5546,40,'Icecrown 189981, node 99'),(121341,5546,10,'Icecrown 191133, node 99'),(120116,5547,0,'Icecrown 189980, node 100'),(121342,5547,40,'Icecrown 189981, node 100'),(121343,5547,10,'Icecrown 191133, node 100'),(120117,5548,0,'Icecrown 189980, node 101'),(121344,5548,40,'Icecrown 189981, node 101'),(121345,5548,10,'Icecrown 191133, node 101'),(120118,5549,0,'Icecrown 189980, node 102'),(121346,5549,40,'Icecrown 189981, node 102'),(121347,5549,10,'Icecrown 191133, node 102'),(120119,5550,0,'Icecrown 189980, node 103'),(121348,5550,40,'Icecrown 189981, node 103'),(121349,5550,10,'Icecrown 191133, node 103'),(120120,5551,0,'Icecrown 189980, node 104'),(121350,5551,40,'Icecrown 189981, node 104'),(121351,5551,10,'Icecrown 191133, node 104'),(120121,5552,0,'Icecrown 189980, node 105'),(121352,5552,40,'Icecrown 189981, node 105'),(121353,5552,10,'Icecrown 191133, node 105'),(120122,5553,0,'Icecrown 189980, node 106'),(121354,5553,40,'Icecrown 189981, node 106'),(121355,5553,10,'Icecrown 191133, node 106'),(120123,5554,0,'Icecrown 189980, node 107'),(121356,5554,40,'Icecrown 189981, node 107'),(121357,5554,10,'Icecrown 191133, node 107'),(120124,5555,0,'Icecrown 189980, node 108'),(121358,5555,40,'Icecrown 189981, node 108'),(121359,5555,10,'Icecrown 191133, node 108'),(120125,5556,0,'Icecrown 189980, node 109'),(121360,5556,40,'Icecrown 189981, node 109'),(121361,5556,10,'Icecrown 191133, node 109'),(120126,5557,0,'Icecrown 189980, node 110'),(121362,5557,40,'Icecrown 189981, node 110'),(121363,5557,10,'Icecrown 191133, node 110'),(120127,5558,0,'Icecrown 189980, node 111'),(121364,5558,40,'Icecrown 189981, node 111'),(121365,5558,10,'Icecrown 191133, node 111'),(120128,5559,0,'Icecrown 189980, node 112'),(121366,5559,40,'Icecrown 189981, node 112'),(121367,5559,10,'Icecrown 191133, node 112'),(120129,5560,0,'Icecrown 189980, node 113'),(121368,5560,40,'Icecrown 189981, node 113'),(121369,5560,10,'Icecrown 191133, node 113'),(120130,5561,0,'Icecrown 189980, node 114'),(121370,5561,40,'Icecrown 189981, node 114'),(121371,5561,10,'Icecrown 191133, node 114'),(120131,5562,0,'Icecrown 189980, node 115'),(121372,5562,40,'Icecrown 189981, node 115'),(121373,5562,10,'Icecrown 191133, node 115'),(120132,5563,0,'Icecrown 189980, node 116'),(121374,5563,40,'Icecrown 189981, node 116'),(121375,5563,10,'Icecrown 191133, node 116'),(120133,5564,0,'Icecrown 189980, node 117'),(121376,5564,40,'Icecrown 189981, node 117'),(121377,5564,10,'Icecrown 191133, node 117'),(120134,5565,0,'Icecrown 189980, node 118'),(121378,5565,40,'Icecrown 189981, node 118'),(121379,5565,10,'Icecrown 191133, node 118'),(120135,5566,0,'Icecrown 189980, node 119'),(121380,5566,40,'Icecrown 189981, node 119'),(121381,5566,10,'Icecrown 191133, node 119'),(120136,5567,0,'Icecrown 189980, node 120'),(121382,5567,40,'Icecrown 189981, node 120'),(121383,5567,10,'Icecrown 191133, node 120'),(120137,5568,0,'Icecrown 189980, node 121'),(121384,5568,40,'Icecrown 189981, node 121'),(121385,5568,10,'Icecrown 191133, node 121'),(120138,5569,0,'Icecrown 189980, node 122'),(121386,5569,40,'Icecrown 189981, node 122'),(121387,5569,10,'Icecrown 191133, node 122'),(120139,5570,0,'Icecrown 189980, node 123'),(121388,5570,40,'Icecrown 189981, node 123'),(121389,5570,10,'Icecrown 191133, node 123'),(120140,5571,0,'Icecrown 189980, node 124'),(121390,5571,40,'Icecrown 189981, node 124'),(121391,5571,10,'Icecrown 191133, node 124'),(120141,5572,0,'Icecrown 189980, node 125'),(121392,5572,40,'Icecrown 189981, node 125'),(121393,5572,10,'Icecrown 191133, node 125'),(120142,5573,0,'Icecrown 189980, node 126'),(121394,5573,40,'Icecrown 189981, node 126'),(121395,5573,10,'Icecrown 191133, node 126'),(120143,5574,0,'Icecrown 189980, node 127'),(121396,5574,40,'Icecrown 189981, node 127'),(121397,5574,10,'Icecrown 191133, node 127'),(120144,5575,0,'Icecrown 189980, node 128'),(121398,5575,40,'Icecrown 189981, node 128'),(121399,5575,10,'Icecrown 191133, node 128'),(120145,5576,0,'Icecrown 189980, node 129'),(121400,5576,40,'Icecrown 189981, node 129'),(121401,5576,10,'Icecrown 191133, node 129'),(120150,5577,0,'Icecrown 189980, node 130'),(121402,5577,40,'Icecrown 189981, node 130'),(121403,5577,10,'Icecrown 191133, node 130'),(120151,5578,0,'Icecrown 189980, node 131'),(121404,5578,40,'Icecrown 189981, node 131'),(121405,5578,10,'Icecrown 191133, node 131'),(120159,5579,0,'Icecrown 189980, node 132'),(121406,5579,40,'Icecrown 189981, node 132'),(121407,5579,10,'Icecrown 191133, node 132'),(120163,5580,0,'Icecrown 189980, node 133'),(121408,5580,40,'Icecrown 189981, node 133'),(121409,5580,10,'Icecrown 191133, node 133'),(120165,5581,0,'Icecrown 189980, node 134'),(121410,5581,40,'Icecrown 189981, node 134'),(121411,5581,10,'Icecrown 191133, node 134'),(120169,5582,0,'Icecrown 189980, node 135'),(121412,5582,40,'Icecrown 189981, node 135'),(121413,5582,10,'Icecrown 191133, node 135'),(120170,5583,0,'Icecrown 189980, node 136'),(121414,5583,40,'Icecrown 189981, node 136'),(121415,5583,10,'Icecrown 191133, node 136'),(120171,5584,0,'Icecrown 189980, node 137'),(121416,5584,40,'Icecrown 189981, node 137'),(121417,5584,10,'Icecrown 191133, node 137'),(120172,5585,0,'Icecrown 189980, node 138'),(121418,5585,40,'Icecrown 189981, node 138'),(121419,5585,10,'Icecrown 191133, node 138'),(120175,5586,0,'Icecrown 189980, node 139'),(121420,5586,40,'Icecrown 189981, node 139'),(121421,5586,10,'Icecrown 191133, node 139'),(120176,5587,0,'Icecrown 189980, node 140'),(121422,5587,40,'Icecrown 189981, node 140'),(121423,5587,10,'Icecrown 191133, node 140'),(120178,5588,0,'Icecrown 189980, node 141'),(121424,5588,40,'Icecrown 189981, node 141'),(121425,5588,10,'Icecrown 191133, node 141'),(120179,5589,0,'Icecrown 189980, node 142'),(121426,5589,40,'Icecrown 189981, node 142'),(121427,5589,10,'Icecrown 191133, node 142'),(120276,5590,0,'Icecrown 189980, node 143'),(121428,5590,40,'Icecrown 189981, node 143'),(121429,5590,10,'Icecrown 191133, node 143'),(120278,5591,0,'Icecrown 189980, node 144'),(121430,5591,40,'Icecrown 189981, node 144'),(121431,5591,10,'Icecrown 191133, node 144'),(120282,5592,0,'Icecrown 189980, node 145'),(121432,5592,40,'Icecrown 189981, node 145'),(121433,5592,10,'Icecrown 191133, node 145'),(120526,5593,0,'Icecrown 189980, node 146'),(121434,5593,40,'Icecrown 189981, node 146'),(121435,5593,10,'Icecrown 191133, node 146'),(120527,5594,0,'Icecrown 189980, node 147'),(121436,5594,40,'Icecrown 189981, node 147'),(121437,5594,10,'Icecrown 191133, node 147'),(120528,5595,0,'Icecrown 189980, node 148'),(121438,5595,40,'Icecrown 189981, node 148'),(121439,5595,10,'Icecrown 191133, node 148'),(120547,5596,0,'Icecrown 189980, node 149'),(121440,5596,40,'Icecrown 189981, node 149'),(121441,5596,10,'Icecrown 191133, node 149'),(120550,5597,0,'Icecrown 189980, node 150'),(121442,5597,40,'Icecrown 189981, node 150'),(121443,5597,10,'Icecrown 191133, node 150'),(120667,5598,0,'Icecrown 189980, node 151'),(121444,5598,40,'Icecrown 189981, node 151'),(121445,5598,10,'Icecrown 191133, node 151'),(120668,5599,0,'Icecrown 189980, node 152'),(121446,5599,40,'Icecrown 189981, node 152'),(121447,5599,10,'Icecrown 191133, node 152'),(120669,5600,0,'Icecrown 189980, node 153'),(121448,5600,40,'Icecrown 189981, node 153'),(121449,5600,10,'Icecrown 191133, node 153'),(120683,5601,0,'Icecrown 189980, node 154'),(121450,5601,40,'Icecrown 189981, node 154'),(121451,5601,10,'Icecrown 191133, node 154'),(120692,5602,0,'Icecrown 189980, node 155'),(121452,5602,40,'Icecrown 189981, node 155'),(121453,5602,10,'Icecrown 191133, node 155'),(120693,5603,0,'Icecrown 189980, node 156'),(121454,5603,40,'Icecrown 189981, node 156'),(121455,5603,10,'Icecrown 191133, node 156'),(120717,5604,0,'Icecrown 189980, node 157'),(121456,5604,40,'Icecrown 189981, node 157'),(121457,5604,10,'Icecrown 191133, node 157'),(120718,5605,0,'Icecrown 189980, node 158'),(121458,5605,40,'Icecrown 189981, node 158'),(121459,5605,10,'Icecrown 191133, node 158'),(120719,5606,0,'Icecrown 189980, node 159'),(121460,5606,40,'Icecrown 189981, node 159'),(121461,5606,10,'Icecrown 191133, node 159'),(120720,5607,0,'Icecrown 189980, node 160'),(121462,5607,40,'Icecrown 189981, node 160'),(121463,5607,10,'Icecrown 191133, node 160'),(120721,5608,0,'Icecrown 189980, node 161'),(121464,5608,40,'Icecrown 189981, node 161'),(121465,5608,10,'Icecrown 191133, node 161'),(120723,5609,0,'Icecrown 189980, node 162'),(121466,5609,40,'Icecrown 189981, node 162'),(121467,5609,10,'Icecrown 191133, node 162'),(120725,5610,0,'Icecrown 189980, node 163'),(121468,5610,40,'Icecrown 189981, node 163'),(121469,5610,10,'Icecrown 191133, node 163'),(120726,5611,0,'Icecrown 189980, node 164'),(121470,5611,40,'Icecrown 189981, node 164'),(121471,5611,10,'Icecrown 191133, node 164'),(120730,5612,0,'Icecrown 189980, node 165'),(121472,5612,40,'Icecrown 189981, node 165'),(121473,5612,10,'Icecrown 191133, node 165'),(120731,5613,0,'Icecrown 189980, node 166'),(121474,5613,40,'Icecrown 189981, node 166'),(121475,5613,10,'Icecrown 191133, node 166'),(120732,5614,0,'Icecrown 189980, node 167'),(121476,5614,40,'Icecrown 189981, node 167'),(121477,5614,10,'Icecrown 191133, node 167'),(120735,5615,0,'Icecrown 189980, node 168'),(121478,5615,40,'Icecrown 189981, node 168'),(121479,5615,10,'Icecrown 191133, node 168'),(120740,5616,0,'Icecrown 189980, node 169'),(121480,5616,40,'Icecrown 189981, node 169'),(121481,5616,10,'Icecrown 191133, node 169'),(56248,5617,0,'Wintergrasp 189980, node 1'),(121482,5617,40,'Wintergrasp 189981, node 1'),(121483,5617,10,'Wintergrasp 191133, node 1'),(56335,5618,0,'Wintergrasp 189980, node 2'),(121484,5618,40,'Wintergrasp 189981, node 2'),(121485,5618,10,'Wintergrasp 191133, node 2'),(56337,5619,0,'Wintergrasp 189980, node 3'),(121486,5619,40,'Wintergrasp 189981, node 3'),(121487,5619,10,'Wintergrasp 191133, node 3'),(63437,5620,0,'Wintergrasp 189980, node 4'),(121488,5620,40,'Wintergrasp 189981, node 4'),(121489,5620,10,'Wintergrasp 191133, node 4'),(66696,5621,0,'Wintergrasp 189980, node 5'),(121490,5621,40,'Wintergrasp 189981, node 5'),(121491,5621,10,'Wintergrasp 191133, node 5'),(66697,5622,0,'Wintergrasp 189980, node 6'),(121492,5622,40,'Wintergrasp 189981, node 6'),(121493,5622,10,'Wintergrasp 191133, node 6'),(66698,5623,0,'Wintergrasp 189980, node 7'),(121494,5623,40,'Wintergrasp 189981, node 7'),(121495,5623,10,'Wintergrasp 191133, node 7'),(66699,5624,0,'Wintergrasp 189980, node 8'),(121496,5624,40,'Wintergrasp 189981, node 8'),(121497,5624,10,'Wintergrasp 191133, node 8'),(66701,5625,0,'Wintergrasp 189980, node 9'),(121498,5625,40,'Wintergrasp 189981, node 9'),(121499,5625,10,'Wintergrasp 191133, node 9'),(66702,5626,0,'Wintergrasp 189980, node 10'),(121500,5626,40,'Wintergrasp 189981, node 10'),(121501,5626,10,'Wintergrasp 191133, node 10'),(66703,5627,0,'Wintergrasp 189980, node 11'),(121502,5627,40,'Wintergrasp 189981, node 11'),(121503,5627,10,'Wintergrasp 191133, node 11'),(66704,5628,0,'Wintergrasp 189980, node 12'),(121504,5628,40,'Wintergrasp 189981, node 12'),(121505,5628,10,'Wintergrasp 191133, node 12'),(66705,5629,0,'Wintergrasp 189980, node 13'),(121506,5629,40,'Wintergrasp 189981, node 13'),(121507,5629,10,'Wintergrasp 191133, node 13'),(66708,5630,0,'Wintergrasp 189980, node 14'),(121508,5630,40,'Wintergrasp 189981, node 14'),(121509,5630,10,'Wintergrasp 191133, node 14'),(66709,5631,0,'Wintergrasp 189980, node 15'),(121510,5631,40,'Wintergrasp 189981, node 15'),(121511,5631,10,'Wintergrasp 191133, node 15'),(66710,5632,0,'Wintergrasp 189980, node 16'),(121512,5632,40,'Wintergrasp 189981, node 16'),(121513,5632,10,'Wintergrasp 191133, node 16'),(67245,5633,0,'Wintergrasp 189980, node 17'),(121514,5633,40,'Wintergrasp 189981, node 17'),(121515,5633,10,'Wintergrasp 191133, node 17'),(67246,5634,0,'Wintergrasp 189980, node 18'),(121516,5634,40,'Wintergrasp 189981, node 18'),(121517,5634,10,'Wintergrasp 191133, node 18'),(67247,5635,0,'Wintergrasp 189980, node 19'),(121518,5635,40,'Wintergrasp 189981, node 19'),(121519,5635,10,'Wintergrasp 191133, node 19'),(67248,5636,0,'Wintergrasp 189980, node 20'),(121520,5636,40,'Wintergrasp 189981, node 20'),(121521,5636,10,'Wintergrasp 191133, node 20'),(120013,5637,0,'Wintergrasp 189980, node 21'),(121522,5637,40,'Wintergrasp 189981, node 21'),(121523,5637,10,'Wintergrasp 191133, node 21'),(120020,5638,0,'Wintergrasp 189980, node 22'),(121524,5638,40,'Wintergrasp 189981, node 22'),(121525,5638,10,'Wintergrasp 191133, node 22'),(120025,5639,0,'Wintergrasp 189980, node 23'),(121526,5639,40,'Wintergrasp 189981, node 23'),(121527,5639,10,'Wintergrasp 191133, node 23'),(120035,5640,0,'Wintergrasp 189980, node 24'),(121528,5640,40,'Wintergrasp 189981, node 24'),(121529,5640,10,'Wintergrasp 191133, node 24'),(120038,5641,0,'Wintergrasp 189980, node 25'),(121530,5641,40,'Wintergrasp 189981, node 25'),(121531,5641,10,'Wintergrasp 191133, node 25'),(120058,5642,0,'Wintergrasp 189980, node 26'),(121532,5642,40,'Wintergrasp 189981, node 26'),(121533,5642,10,'Wintergrasp 191133, node 26'),(120088,5643,0,'Wintergrasp 189980, node 27'),(121534,5643,40,'Wintergrasp 189981, node 27'),(121535,5643,10,'Wintergrasp 191133, node 27'),(120103,5644,0,'Wintergrasp 189980, node 28'),(121536,5644,40,'Wintergrasp 189981, node 28'),(121537,5644,10,'Wintergrasp 191133, node 28'),(120146,5645,0,'Wintergrasp 189980, node 29'),(121538,5645,40,'Wintergrasp 189981, node 29'),(121539,5645,10,'Wintergrasp 191133, node 29'),(120160,5646,0,'Wintergrasp 189980, node 30'),(121540,5646,40,'Wintergrasp 189981, node 30'),(121541,5646,10,'Wintergrasp 191133, node 30'),(120161,5647,0,'Wintergrasp 189980, node 31'),(121542,5647,40,'Wintergrasp 189981, node 31'),(121543,5647,10,'Wintergrasp 191133, node 31'),(120166,5648,0,'Wintergrasp 189980, node 32'),(121544,5648,40,'Wintergrasp 189981, node 32'),(121545,5648,10,'Wintergrasp 191133, node 32'),(120167,5649,0,'Wintergrasp 189980, node 33'),(121546,5649,40,'Wintergrasp 189981, node 33'),(121547,5649,10,'Wintergrasp 191133, node 33'),(120173,5650,0,'Wintergrasp 189980, node 34'),(121548,5650,40,'Wintergrasp 189981, node 34'),(121549,5650,10,'Wintergrasp 191133, node 34'),(120272,5651,0,'Wintergrasp 189980, node 35'),(121550,5651,40,'Wintergrasp 189981, node 35'),(121551,5651,10,'Wintergrasp 191133, node 35'),(120273,5652,0,'Wintergrasp 189980, node 36'),(121552,5652,40,'Wintergrasp 189981, node 36'),(121553,5652,10,'Wintergrasp 191133, node 36'),(120277,5653,0,'Wintergrasp 189980, node 37'),(121554,5653,40,'Wintergrasp 189981, node 37'),(121555,5653,10,'Wintergrasp 191133, node 37'),(120284,5654,0,'Wintergrasp 189980, node 38'),(121556,5654,40,'Wintergrasp 189981, node 38'),(121557,5654,10,'Wintergrasp 191133, node 38'),(120684,5655,0,'Wintergrasp 189980, node 39'),(121558,5655,40,'Wintergrasp 189981, node 39'),(121559,5655,10,'Wintergrasp 191133, node 39'),(120694,5656,0,'Wintergrasp 189980, node 40'),(121560,5656,40,'Wintergrasp 189981, node 40'),(121561,5656,10,'Wintergrasp 191133, node 40'),(120722,5657,0,'Wintergrasp 189980, node 41'),(121562,5657,40,'Wintergrasp 189981, node 41'),(121563,5657,10,'Wintergrasp 191133, node 41'),(120728,5658,0,'Wintergrasp 189980, node 42'),(121564,5658,40,'Wintergrasp 189981, node 42'),(121565,5658,10,'Wintergrasp 191133, node 42'),(120736,5659,0,'Wintergrasp 189980, node 43'),(121566,5659,40,'Wintergrasp 189981, node 43'),(121567,5659,10,'Wintergrasp 191133, node 43'),(120737,5660,0,'Wintergrasp 189980, node 44'),(121568,5660,40,'Wintergrasp 189981, node 44'),(121569,5660,10,'Wintergrasp 191133, node 44'),(120738,5661,0,'Wintergrasp 189980, node 45'),(121570,5661,40,'Wintergrasp 189981, node 45'),(121571,5661,10,'Wintergrasp 191133, node 45'),(21059,987,0,'Goldclover zone 3537, node 1'),(22680,987,0,'Goldclover zone 3537, node 2'),(26272,987,0,'Goldclover zone 3537, node 3'),(26274,987,0,'Goldclover zone 3537, node 4'),(26330,987,0,'Goldclover zone 3537, node 5'),(26351,987,0,'Goldclover zone 3537, node 6'),(26357,987,0,'Goldclover zone 3537, node 7'),(26359,987,0,'Goldclover zone 3537, node 8'),(26381,987,0,'Goldclover zone 3537, node 9'),(26382,987,0,'Goldclover zone 3537, node 10'),(26394,987,0,'Goldclover zone 3537, node 11'),(26395,987,0,'Goldclover zone 3537, node 12'),(55988,987,0,'Goldclover zone 3537, node 13'),(56023,987,0,'Goldclover zone 3537, node 14'),(56028,987,0,'Goldclover zone 3537, node 15'),(56029,987,0,'Goldclover zone 3537, node 16'),(56030,987,0,'Goldclover zone 3537, node 17'),(56031,987,0,'Goldclover zone 3537, node 18'),(56032,987,0,'Goldclover zone 3537, node 19'),(56033,987,0,'Goldclover zone 3537, node 20'),(56034,987,0,'Goldclover zone 3537, node 21'),(56035,987,0,'Goldclover zone 3537, node 22'),(56036,987,0,'Goldclover zone 3537, node 23'),(56037,987,0,'Goldclover zone 3537, node 24'),(56038,987,0,'Goldclover zone 3537, node 25'),(57740,987,0,'Firethorn zone 3537, node 26'),(57741,987,0,'Firethorn zone 3537, node 27'),(57742,987,0,'Firethorn zone 3537, node 28'),(57743,987,0,'Firethorn zone 3537, node 29'),(57744,987,0,'Firethorn zone 3537, node 30'),(57745,987,0,'Firethorn zone 3537, node 31'),(60664,987,0,'Tiger Lily zone 3537, node 32'),(62024,987,0,'Goldclover zone 3537, node 33'),(62042,987,0,'Goldclover zone 3537, node 34'),(62044,987,0,'Goldclover zone 3537, node 35'),(62300,987,0,'Tiger Lily zone 3537, node 36'),(62303,987,0,'Tiger Lily zone 3537, node 37'),(62343,987,0,'Tiger Lily zone 3537, node 38'),(63222,987,0,'Firethorn zone 3537, node 39'),(63224,987,0,'Firethorn zone 3537, node 40'),(63225,987,0,'Firethorn zone 3537, node 41'),(63226,987,0,'Firethorn zone 3537, node 42'),(67636,987,0,'Goldclover zone 3537, node 43'),(67700,987,0,'Tiger Lily zone 3537, node 44'),(85935,987,0,'Goldclover zone 3537, node 45'),(85937,987,0,'Goldclover zone 3537, node 46'),(85942,987,0,'Goldclover zone 3537, node 47'),(85944,987,0,'Goldclover zone 3537, node 48'),(85945,987,0,'Goldclover zone 3537, node 49'),(85947,987,0,'Goldclover zone 3537, node 50'),(85951,987,0,'Goldclover zone 3537, node 51'),(85953,987,0,'Goldclover zone 3537, node 52'),(85959,987,0,'Goldclover zone 3537, node 53'),(85960,987,0,'Goldclover zone 3537, node 54'),(86144,987,0,'Firethorn zone 3537, node 55'),(86145,987,0,'Firethorn zone 3537, node 56'),(86146,987,0,'Firethorn zone 3537, node 57'),(86147,987,0,'Firethorn zone 3537, node 58'),(86148,987,0,'Firethorn zone 3537, node 59'),(86149,987,0,'Firethorn zone 3537, node 60'),(86150,987,0,'Firethorn zone 3537, node 61'),(86151,987,0,'Firethorn zone 3537, node 62'),(86152,987,0,'Firethorn zone 3537, node 63'),(86153,987,0,'Firethorn zone 3537, node 64'),(86154,987,0,'Firethorn zone 3537, node 65'),(86515,987,0,'Tiger Lily zone 3537, node 66'),(86516,987,0,'Tiger Lily zone 3537, node 67'),(86519,987,0,'Tiger Lily zone 3537, node 68'),(86525,987,0,'Tiger Lily zone 3537, node 69'),(86531,987,0,'Tiger Lily zone 3537, node 70'),(86532,987,0,'Tiger Lily zone 3537, node 71'),(86533,987,0,'Tiger Lily zone 3537, node 72'),(86534,987,0,'Tiger Lily zone 3537, node 73'),(86535,987,0,'Tiger Lily zone 3537, node 74'),(86539,987,0,'Tiger Lily zone 3537, node 75'),(86550,987,0,'Tiger Lily zone 3537, node 76'),(86551,987,0,'Tiger Lily zone 3537, node 77'),(86553,987,0,'Tiger Lily zone 3537, node 78'),(86555,987,0,'Tiger Lily zone 3537, node 79'),(87138,987,0,'Goldclover zone 3537, node 80'),(87407,987,0,'Goldclover zone 3537, node 81'),(87409,987,0,'Goldclover zone 3537, node 82'),(87519,987,0,'Tiger Lily zone 3537, node 83'),(21082,986,0,'Goldclover zone 495, node 1'),(21085,986,0,'Goldclover zone 495, node 2'),(21103,986,0,'Goldclover zone 495, node 3'),(22655,986,0,'Goldclover zone 495, node 4'),(22988,986,0,'Goldclover zone 495, node 5'),(22989,986,0,'Goldclover zone 495, node 6'),(24323,986,0,'Goldclover zone 495, node 7'),(24324,986,0,'Goldclover zone 495, node 8'),(26264,986,0,'Goldclover zone 495, node 9'),(26284,986,0,'Goldclover zone 495, node 10'),(26319,986,0,'Goldclover zone 495, node 11'),(26320,986,0,'Goldclover zone 495, node 12'),(26322,986,0,'Goldclover zone 495, node 13'),(26325,986,0,'Goldclover zone 495, node 14'),(26345,986,0,'Goldclover zone 495, node 15'),(26346,986,0,'Goldclover zone 495, node 16'),(26347,986,0,'Goldclover zone 495, node 17'),(26354,986,0,'Goldclover zone 495, node 18'),(26360,986,0,'Goldclover zone 495, node 19'),(26361,986,0,'Goldclover zone 495, node 20'),(26365,986,0,'Goldclover zone 495, node 21'),(26368,986,0,'Goldclover zone 495, node 22'),(26369,986,0,'Goldclover zone 495, node 23'),(26392,986,0,'Goldclover zone 495, node 24'),(26393,986,0,'Goldclover zone 495, node 25'),(26396,986,0,'Goldclover zone 495, node 26'),(26402,986,0,'Goldclover zone 495, node 27'),(26409,986,0,'Goldclover zone 495, node 28'),(26410,986,0,'Goldclover zone 495, node 29'),(26411,986,0,'Goldclover zone 495, node 30'),(26412,986,0,'Goldclover zone 495, node 31'),(26451,986,0,'Goldclover zone 495, node 32'),(26452,986,0,'Goldclover zone 495, node 33'),(26453,986,0,'Goldclover zone 495, node 34'),(55989,986,0,'Goldclover zone 495, node 35'),(55990,986,0,'Goldclover zone 495, node 36'),(55993,986,0,'Goldclover zone 495, node 37'),(55994,986,0,'Goldclover zone 495, node 38'),(55995,986,0,'Goldclover zone 495, node 39'),(55996,986,0,'Goldclover zone 495, node 40'),(55997,986,0,'Goldclover zone 495, node 41'),(55998,986,0,'Goldclover zone 495, node 42'),(55999,986,0,'Goldclover zone 495, node 43'),(56000,986,0,'Goldclover zone 495, node 44'),(56001,986,0,'Goldclover zone 495, node 45'),(56002,986,0,'Goldclover zone 495, node 46'),(56003,986,0,'Goldclover zone 495, node 47'),(56004,986,0,'Goldclover zone 495, node 48'),(56005,986,0,'Goldclover zone 495, node 49'),(56006,986,0,'Goldclover zone 495, node 50'),(56007,986,0,'Goldclover zone 495, node 51'),(56008,986,0,'Goldclover zone 495, node 52'),(56009,986,0,'Goldclover zone 495, node 53'),(56011,986,0,'Goldclover zone 495, node 54'),(56012,986,0,'Goldclover zone 495, node 55'),(56015,986,0,'Goldclover zone 495, node 56'),(56017,986,0,'Goldclover zone 495, node 57'),(56019,986,0,'Goldclover zone 495, node 58'),(56024,986,0,'Goldclover zone 495, node 59'),(56025,986,0,'Goldclover zone 495, node 60'),(56027,986,0,'Goldclover zone 495, node 61'),(60650,986,0,'Tiger Lily zone 495, node 62'),(60651,986,0,'Tiger Lily zone 495, node 63'),(60652,986,0,'Tiger Lily zone 495, node 64'),(60653,986,0,'Tiger Lily zone 495, node 65'),(60654,986,0,'Tiger Lily zone 495, node 66'),(60655,986,0,'Tiger Lily zone 495, node 67'),(60656,986,0,'Tiger Lily zone 495, node 68'),(60657,986,0,'Tiger Lily zone 495, node 69'),(60662,986,0,'Tiger Lily zone 495, node 70'),(63740,986,0,'Tiger Lily zone 495, node 71'),(63742,986,0,'Tiger Lily zone 495, node 72'),(63747,986,0,'Tiger Lily zone 495, node 73'),(63756,986,0,'Tiger Lily zone 495, node 74'),(63762,986,0,'Tiger Lily zone 495, node 75'),(63764,986,0,'Tiger Lily zone 495, node 76'),(63765,986,0,'Tiger Lily zone 495, node 77'),(63766,986,0,'Tiger Lily zone 495, node 78'),(63767,986,0,'Tiger Lily zone 495, node 79'),(63771,986,0,'Tiger Lily zone 495, node 80'),(63777,986,0,'Tiger Lily zone 495, node 81'),(85936,986,0,'Goldclover zone 495, node 82'),(85938,986,0,'Goldclover zone 495, node 83'),(85948,986,0,'Goldclover zone 495, node 84'),(85949,986,0,'Goldclover zone 495, node 85'),(85950,986,0,'Goldclover zone 495, node 86'),(85955,986,0,'Goldclover zone 495, node 87'),(85957,986,0,'Goldclover zone 495, node 88'),(86505,986,0,'Tiger Lily zone 495, node 89'),(86512,986,0,'Tiger Lily zone 495, node 90'),(86513,986,0,'Tiger Lily zone 495, node 91'),(86514,986,0,'Tiger Lily zone 495, node 92'),(86517,986,0,'Tiger Lily zone 495, node 93'),(86541,986,0,'Tiger Lily zone 495, node 94'),(86542,986,0,'Tiger Lily zone 495, node 95'),(86545,986,0,'Tiger Lily zone 495, node 96'),(86547,986,0,'Tiger Lily zone 495, node 97'),(87007,986,0,'Goldclover zone 495, node 98'),(87008,986,0,'Goldclover zone 495, node 99'),(87009,986,0,'Goldclover zone 495, node 100'),(87079,986,0,'Goldclover zone 495, node 101'),(87135,986,0,'Goldclover zone 495, node 102'),(87136,986,0,'Goldclover zone 495, node 103'),(87137,986,0,'Goldclover zone 495, node 104'),(87139,986,0,'Goldclover zone 495, node 105'),(87140,986,0,'Goldclover zone 495, node 106'),(87141,986,0,'Goldclover zone 495, node 107'),(87142,986,0,'Goldclover zone 495, node 108'),(87143,986,0,'Goldclover zone 495, node 109'),(87317,986,0,'Tiger Lily zone 495, node 110'),(87404,986,0,'Goldclover zone 495, node 111'),(87405,986,0,'Goldclover zone 495, node 112'),(87406,986,0,'Goldclover zone 495, node 113'),(87408,986,0,'Goldclover zone 495, node 114'),(87517,986,0,'Tiger Lily zone 495, node 115'),(26363,985,0,'Goldclover zone 65, node 1'),(26364,985,0,'Goldclover zone 65, node 2'),(55992,985,0,'Goldclover zone 65, node 3'),(60681,985,0,'Talandra\'s Rose zone 65, node 4'),(60826,985,0,'Frozen Herb zone 65, node 5'),(60827,985,0,'Frozen Herb zone 65, node 6'),(60828,985,0,'Frozen Herb zone 65, node 7'),(60829,985,0,'Frozen Herb zone 65, node 8'),(60830,985,0,'Frozen Herb zone 65, node 9'),(60831,985,0,'Frozen Herb zone 65, node 10'),(60832,985,0,'Frozen Herb zone 65, node 11'),(60833,985,0,'Frozen Herb zone 65, node 12'),(60834,985,0,'Frozen Herb zone 65, node 13'),(60835,985,0,'Frozen Herb zone 65, node 14'),(60836,985,0,'Frozen Herb zone 65, node 15'),(60837,985,0,'Frozen Herb zone 65, node 16'),(60838,985,0,'Frozen Herb zone 65, node 17'),(60839,985,0,'Frozen Herb zone 65, node 18'),(60840,985,0,'Frozen Herb zone 65, node 19'),(60841,985,0,'Frozen Herb zone 65, node 20'),(60842,985,0,'Frozen Herb zone 65, node 21'),(60843,985,0,'Frozen Herb zone 65, node 22'),(60844,985,0,'Frozen Herb zone 65, node 23'),(60845,985,0,'Frozen Herb zone 65, node 24'),(60846,985,0,'Frozen Herb zone 65, node 25'),(60847,985,0,'Frozen Herb zone 65, node 26'),(60848,985,0,'Frozen Herb zone 65, node 27'),(60849,985,0,'Frozen Herb zone 65, node 28'),(60850,985,0,'Frozen Herb zone 65, node 29'),(60851,985,0,'Frozen Herb zone 65, node 30'),(60852,985,0,'Frozen Herb zone 65, node 31'),(60853,985,0,'Frozen Herb zone 65, node 32'),(60854,985,0,'Frozen Herb zone 65, node 33'),(60855,985,0,'Frozen Herb zone 65, node 34'),(60856,985,0,'Frozen Herb zone 65, node 35'),(60858,985,0,'Frozen Herb zone 65, node 36'),(62001,985,0,'Frozen Herb zone 65, node 37'),(62043,985,0,'Frozen Herb zone 65, node 38'),(62048,985,0,'Frozen Herb zone 65, node 39'),(63821,985,0,'Frozen Herb zone 65, node 40'),(63823,985,0,'Frozen Herb zone 65, node 41'),(63824,985,0,'Frozen Herb zone 65, node 42'),(63836,985,0,'Frozen Herb zone 65, node 43'),(63837,985,0,'Frozen Herb zone 65, node 44'),(63843,985,0,'Frozen Herb zone 65, node 45'),(63844,985,0,'Frozen Herb zone 65, node 46'),(63845,985,0,'Frozen Herb zone 65, node 47'),(63850,985,0,'Frozen Herb zone 65, node 48'),(63853,985,0,'Frozen Herb zone 65, node 49'),(63854,985,0,'Frozen Herb zone 65, node 50'),(63856,985,0,'Frozen Herb zone 65, node 51'),(63857,985,0,'Frozen Herb zone 65, node 52'),(63858,985,0,'Frozen Herb zone 65, node 53'),(63859,985,0,'Frozen Herb zone 65, node 54'),(63860,985,0,'Frozen Herb zone 65, node 55'),(63861,985,0,'Frozen Herb zone 65, node 56'),(63863,985,0,'Frozen Herb zone 65, node 57'),(63865,985,0,'Frozen Herb zone 65, node 58'),(63869,985,0,'Frozen Herb zone 65, node 59'),(63871,985,0,'Frozen Herb zone 65, node 60'),(63873,985,0,'Frozen Herb zone 65, node 61'),(63874,985,0,'Frozen Herb zone 65, node 62'),(63877,985,0,'Frozen Herb zone 65, node 63'),(63878,985,0,'Frozen Herb zone 65, node 64'),(63882,985,0,'Frozen Herb zone 65, node 65'),(63885,985,0,'Frozen Herb zone 65, node 66'),(63886,985,0,'Frozen Herb zone 65, node 67'),(63889,985,0,'Frozen Herb zone 65, node 68'),(63890,985,0,'Frozen Herb zone 65, node 69'),(63891,985,0,'Frozen Herb zone 65, node 70'),(63892,985,0,'Frozen Herb zone 65, node 71'),(63894,985,0,'Frozen Herb zone 65, node 72'),(63896,985,0,'Frozen Herb zone 65, node 73'),(63898,985,0,'Frozen Herb zone 65, node 74'),(63900,985,0,'Frozen Herb zone 65, node 75'),(63901,985,0,'Frozen Herb zone 65, node 76'),(63902,985,0,'Frozen Herb zone 65, node 77'),(63903,985,0,'Frozen Herb zone 65, node 78'),(63905,985,0,'Frozen Herb zone 65, node 79'),(63910,985,0,'Frozen Herb zone 65, node 80'),(63913,985,0,'Frozen Herb zone 65, node 81'),(63914,985,0,'Frozen Herb zone 65, node 82'),(63915,985,0,'Frozen Herb zone 65, node 83'),(63918,985,0,'Frozen Herb zone 65, node 84'),(63920,985,0,'Frozen Herb zone 65, node 85'),(63921,985,0,'Frozen Herb zone 65, node 86'),(63922,985,0,'Frozen Herb zone 65, node 87'),(63923,985,0,'Frozen Herb zone 65, node 88'),(63925,985,0,'Frozen Herb zone 65, node 89'),(63926,985,0,'Frozen Herb zone 65, node 90'),(63927,985,0,'Frozen Herb zone 65, node 91'),(63929,985,0,'Frozen Herb zone 65, node 92'),(63930,985,0,'Frozen Herb zone 65, node 93'),(63931,985,0,'Frozen Herb zone 65, node 94'),(63932,985,0,'Frozen Herb zone 65, node 95'),(63933,985,0,'Frozen Herb zone 65, node 96'),(63934,985,0,'Frozen Herb zone 65, node 97'),(63935,985,0,'Frozen Herb zone 65, node 98'),(63936,985,0,'Frozen Herb zone 65, node 99'),(63937,985,0,'Frozen Herb zone 65, node 100'),(63938,985,0,'Frozen Herb zone 65, node 101'),(63939,985,0,'Frozen Herb zone 65, node 102'),(63940,985,0,'Frozen Herb zone 65, node 103'),(63941,985,0,'Frozen Herb zone 65, node 104'),(63942,985,0,'Frozen Herb zone 65, node 105'),(63943,985,0,'Frozen Herb zone 65, node 106'),(63944,985,0,'Frozen Herb zone 65, node 107'),(63945,985,0,'Frozen Herb zone 65, node 108'),(63946,985,0,'Frozen Herb zone 65, node 109'),(63947,985,0,'Frozen Herb zone 65, node 110'),(63948,985,0,'Frozen Herb zone 65, node 111'),(86730,985,0,'Frozen Herb zone 65, node 112'),(86731,985,0,'Frozen Herb zone 65, node 113'),(86732,985,0,'Frozen Herb zone 65, node 114'),(86733,985,0,'Frozen Herb zone 65, node 115'),(86734,985,0,'Frozen Herb zone 65, node 116'),(86735,985,0,'Frozen Herb zone 65, node 117'),(86736,985,0,'Frozen Herb zone 65, node 118'),(86737,985,0,'Frozen Herb zone 65, node 119'),(86738,985,0,'Frozen Herb zone 65, node 120'),(86739,985,0,'Frozen Herb zone 65, node 121'),(86740,985,0,'Frozen Herb zone 65, node 122'),(86741,985,0,'Frozen Herb zone 65, node 123'),(86742,985,0,'Frozen Herb zone 65, node 124'),(86743,985,0,'Frozen Herb zone 65, node 125'),(86744,985,0,'Frozen Herb zone 65, node 126'),(86745,985,0,'Frozen Herb zone 65, node 127'),(86746,985,0,'Frozen Herb zone 65, node 128'),(86747,985,0,'Frozen Herb zone 65, node 129'),(86748,985,0,'Frozen Herb zone 65, node 130'),(86749,985,0,'Frozen Herb zone 65, node 131'),(87010,985,0,'Goldclover zone 65, node 132'),(87032,985,0,'Frozen Herb zone 65, node 133'),(87111,985,0,'Frozen Herb zone 65, node 134'),(87117,985,0,'Goldclover zone 65, node 135'),(87329,985,0,'Frozen Herb zone 65, node 136'),(87540,985,0,'Frozen Herb zone 65, node 137'),(87541,985,0,'Frozen Herb zone 65, node 138'),(87542,985,0,'Frozen Herb zone 65, node 139'),(87543,985,0,'Frozen Herb zone 65, node 140'),(87544,985,0,'Frozen Herb zone 65, node 141'),(26350,984,0,'Goldclover zone 394, node 1'),(26355,984,0,'Goldclover zone 394, node 2'),(26356,984,0,'Goldclover zone 394, node 3'),(26367,984,0,'Goldclover zone 394, node 4'),(26375,984,0,'Goldclover zone 394, node 5'),(26376,984,0,'Goldclover zone 394, node 6'),(26378,984,0,'Goldclover zone 394, node 7'),(26379,984,0,'Goldclover zone 394, node 8'),(26380,984,0,'Goldclover zone 394, node 9'),(26384,984,0,'Goldclover zone 394, node 10'),(26389,984,0,'Goldclover zone 394, node 11'),(26390,984,0,'Goldclover zone 394, node 12'),(26398,984,0,'Goldclover zone 394, node 13'),(26427,984,0,'Goldclover zone 394, node 14'),(26444,984,0,'Goldclover zone 394, node 15'),(26446,984,0,'Goldclover zone 394, node 16'),(26447,984,0,'Goldclover zone 394, node 17'),(26448,984,0,'Goldclover zone 394, node 18'),(55991,984,0,'Goldclover zone 394, node 19'),(56010,984,0,'Goldclover zone 394, node 20'),(56013,984,0,'Goldclover zone 394, node 21'),(56014,984,0,'Goldclover zone 394, node 22'),(56016,984,0,'Goldclover zone 394, node 23'),(56018,984,0,'Goldclover zone 394, node 24'),(56020,984,0,'Goldclover zone 394, node 25'),(56021,984,0,'Goldclover zone 394, node 26'),(56022,984,0,'Goldclover zone 394, node 27'),(56026,984,0,'Goldclover zone 394, node 28'),(56039,984,0,'Goldclover zone 394, node 29'),(60658,984,0,'Tiger Lily zone 394, node 30'),(60659,984,0,'Tiger Lily zone 394, node 31'),(60660,984,0,'Tiger Lily zone 394, node 32'),(60661,984,0,'Tiger Lily zone 394, node 33'),(60663,984,0,'Tiger Lily zone 394, node 34'),(60665,984,0,'Tiger Lily zone 394, node 35'),(60666,984,0,'Tiger Lily zone 394, node 36'),(60667,984,0,'Tiger Lily zone 394, node 37'),(63729,984,0,'Tiger Lily zone 394, node 38'),(63757,984,0,'Tiger Lily zone 394, node 39'),(63758,984,0,'Tiger Lily zone 394, node 40'),(63759,984,0,'Tiger Lily zone 394, node 41'),(63760,984,0,'Tiger Lily zone 394, node 42'),(63761,984,0,'Tiger Lily zone 394, node 43'),(63768,984,0,'Tiger Lily zone 394, node 44'),(63769,984,0,'Tiger Lily zone 394, node 45'),(63770,984,0,'Tiger Lily zone 394, node 46'),(63773,984,0,'Tiger Lily zone 394, node 47'),(63774,984,0,'Tiger Lily zone 394, node 48'),(63775,984,0,'Tiger Lily zone 394, node 49'),(63776,984,0,'Tiger Lily zone 394, node 50'),(85946,984,0,'Goldclover zone 394, node 51'),(85954,984,0,'Goldclover zone 394, node 52'),(85958,984,0,'Goldclover zone 394, node 53'),(86511,984,0,'Tiger Lily zone 394, node 54'),(86518,984,0,'Tiger Lily zone 394, node 55'),(86522,984,0,'Tiger Lily zone 394, node 56'),(86523,984,0,'Tiger Lily zone 394, node 57'),(86524,984,0,'Tiger Lily zone 394, node 58'),(86540,984,0,'Tiger Lily zone 394, node 59'),(86543,984,0,'Tiger Lily zone 394, node 60'),(86548,984,0,'Tiger Lily zone 394, node 61'),(86549,984,0,'Tiger Lily zone 394, node 62'),(86552,984,0,'Tiger Lily zone 394, node 63'),(86556,984,0,'Tiger Lily zone 394, node 64'),(86557,984,0,'Tiger Lily zone 394, node 65'),(86561,984,0,'Talandra\'s Rose zone 394, node 66'),(87078,984,0,'Goldclover zone 394, node 67'),(87082,984,0,'Goldclover zone 394, node 68'),(87088,984,0,'Tiger Lily zone 394, node 69'),(87089,984,0,'Tiger Lily zone 394, node 70'),(87318,984,0,'Tiger Lily zone 394, node 71'),(87319,984,0,'Tiger Lily zone 394, node 72'),(87320,984,0,'Tiger Lily zone 394, node 73'),(60680,983,0,'Talandra\'s Rose zone 66, node 1'),(60682,983,0,'Talandra\'s Rose zone 66, node 2'),(60683,983,0,'Talandra\'s Rose zone 66, node 3'),(60684,983,0,'Talandra\'s Rose zone 66, node 4'),(60685,983,0,'Talandra\'s Rose zone 66, node 5'),(60686,983,0,'Talandra\'s Rose zone 66, node 6'),(60687,983,0,'Talandra\'s Rose zone 66, node 7'),(60688,983,0,'Talandra\'s Rose zone 66, node 8'),(60689,983,0,'Talandra\'s Rose zone 66, node 9'),(60690,983,0,'Talandra\'s Rose zone 66, node 10'),(60691,983,0,'Talandra\'s Rose zone 66, node 11'),(60692,983,0,'Talandra\'s Rose zone 66, node 12'),(60693,983,0,'Talandra\'s Rose zone 66, node 13'),(60694,983,0,'Talandra\'s Rose zone 66, node 14'),(60695,983,0,'Talandra\'s Rose zone 66, node 15'),(60696,983,0,'Talandra\'s Rose zone 66, node 16'),(60697,983,0,'Talandra\'s Rose zone 66, node 17'),(60698,983,0,'Talandra\'s Rose zone 66, node 18'),(60699,983,0,'Talandra\'s Rose zone 66, node 19'),(60700,983,0,'Talandra\'s Rose zone 66, node 20'),(60876,983,0,'Frozen Herb zone 66, node 21'),(60928,983,0,'Frozen Herb zone 66, node 22'),(60929,983,0,'Frozen Herb zone 66, node 23'),(60930,983,0,'Frozen Herb zone 66, node 24'),(60931,983,0,'Frozen Herb zone 66, node 25'),(60932,983,0,'Frozen Herb zone 66, node 26'),(60933,983,0,'Frozen Herb zone 66, node 27'),(60934,983,0,'Frozen Herb zone 66, node 28'),(60935,983,0,'Frozen Herb zone 66, node 29'),(60936,983,0,'Frozen Herb zone 66, node 30'),(60937,983,0,'Frozen Herb zone 66, node 31'),(60938,983,0,'Frozen Herb zone 66, node 32'),(60939,983,0,'Frozen Herb zone 66, node 33'),(60940,983,0,'Frozen Herb zone 66, node 34'),(60941,983,0,'Frozen Herb zone 66, node 35'),(60942,983,0,'Frozen Herb zone 66, node 36'),(60943,983,0,'Frozen Herb zone 66, node 37'),(60944,983,0,'Frozen Herb zone 66, node 38'),(60945,983,0,'Frozen Herb zone 66, node 39'),(60946,983,0,'Frozen Herb zone 66, node 40'),(60947,983,0,'Frozen Herb zone 66, node 41'),(60948,983,0,'Frozen Herb zone 66, node 42'),(63778,983,0,'Talandra\'s Rose zone 66, node 43'),(63779,983,0,'Talandra\'s Rose zone 66, node 44'),(63780,983,0,'Talandra\'s Rose zone 66, node 45'),(63781,983,0,'Talandra\'s Rose zone 66, node 46'),(63782,983,0,'Talandra\'s Rose zone 66, node 47'),(63783,983,0,'Talandra\'s Rose zone 66, node 48'),(63784,983,0,'Talandra\'s Rose zone 66, node 49'),(63787,983,0,'Talandra\'s Rose zone 66, node 50'),(63788,983,0,'Talandra\'s Rose zone 66, node 51'),(63789,983,0,'Talandra\'s Rose zone 66, node 52'),(63790,983,0,'Talandra\'s Rose zone 66, node 53'),(63791,983,0,'Talandra\'s Rose zone 66, node 54'),(63792,983,0,'Talandra\'s Rose zone 66, node 55'),(63949,983,0,'Frozen Herb zone 66, node 56'),(63950,983,0,'Frozen Herb zone 66, node 57'),(63951,983,0,'Frozen Herb zone 66, node 58'),(63952,983,0,'Frozen Herb zone 66, node 59'),(63953,983,0,'Frozen Herb zone 66, node 60'),(63954,983,0,'Frozen Herb zone 66, node 61'),(63955,983,0,'Frozen Herb zone 66, node 62'),(63956,983,0,'Frozen Herb zone 66, node 63'),(63957,983,0,'Frozen Herb zone 66, node 64'),(63958,983,0,'Frozen Herb zone 66, node 65'),(63959,983,0,'Frozen Herb zone 66, node 66'),(63960,983,0,'Frozen Herb zone 66, node 67'),(63961,983,0,'Frozen Herb zone 66, node 68'),(63962,983,0,'Frozen Herb zone 66, node 69'),(63963,983,0,'Frozen Herb zone 66, node 70'),(86560,983,0,'Talandra\'s Rose zone 66, node 71'),(86562,983,0,'Talandra\'s Rose zone 66, node 72'),(86563,983,0,'Talandra\'s Rose zone 66, node 73'),(86564,983,0,'Talandra\'s Rose zone 66, node 74'),(86565,983,0,'Talandra\'s Rose zone 66, node 75'),(86566,983,0,'Talandra\'s Rose zone 66, node 76'),(86567,983,0,'Talandra\'s Rose zone 66, node 77'),(86568,983,0,'Talandra\'s Rose zone 66, node 78'),(86569,983,0,'Talandra\'s Rose zone 66, node 79'),(86570,983,0,'Talandra\'s Rose zone 66, node 80'),(86571,983,0,'Talandra\'s Rose zone 66, node 81'),(86572,983,0,'Talandra\'s Rose zone 66, node 82'),(86573,983,0,'Talandra\'s Rose zone 66, node 83'),(86574,983,0,'Talandra\'s Rose zone 66, node 84'),(86575,983,0,'Talandra\'s Rose zone 66, node 85'),(86576,983,0,'Talandra\'s Rose zone 66, node 86'),(86577,983,0,'Talandra\'s Rose zone 66, node 87'),(86578,983,0,'Talandra\'s Rose zone 66, node 88'),(86579,983,0,'Talandra\'s Rose zone 66, node 89'),(86580,983,0,'Talandra\'s Rose zone 66, node 90'),(86581,983,0,'Talandra\'s Rose zone 66, node 91'),(86582,983,0,'Talandra\'s Rose zone 66, node 92'),(86583,983,0,'Talandra\'s Rose zone 66, node 93'),(86584,983,0,'Talandra\'s Rose zone 66, node 94'),(86585,983,0,'Talandra\'s Rose zone 66, node 95'),(86750,983,0,'Frozen Herb zone 66, node 96'),(86751,983,0,'Frozen Herb zone 66, node 97'),(86752,983,0,'Frozen Herb zone 66, node 98'),(86757,983,0,'Frozen Herb zone 66, node 99'),(86758,983,0,'Frozen Herb zone 66, node 100'),(86759,983,0,'Frozen Herb zone 66, node 101'),(86760,983,0,'Frozen Herb zone 66, node 102'),(86763,983,0,'Frozen Herb zone 66, node 103'),(86764,983,0,'Frozen Herb zone 66, node 104'),(86765,983,0,'Frozen Herb zone 66, node 105'),(86767,983,0,'Frozen Herb zone 66, node 106'),(86768,983,0,'Frozen Herb zone 66, node 107'),(86769,983,0,'Frozen Herb zone 66, node 108'),(86770,983,0,'Frozen Herb zone 66, node 109'),(86771,983,0,'Frozen Herb zone 66, node 110'),(86772,983,0,'Frozen Herb zone 66, node 111'),(86773,983,0,'Frozen Herb zone 66, node 112'),(86775,983,0,'Frozen Herb zone 66, node 113'),(86776,983,0,'Frozen Herb zone 66, node 114'),(86777,983,0,'Frozen Herb zone 66, node 115'),(86778,983,0,'Frozen Herb zone 66, node 116'),(86779,983,0,'Frozen Herb zone 66, node 117'),(86780,983,0,'Frozen Herb zone 66, node 118'),(86781,983,0,'Frozen Herb zone 66, node 119'),(86782,983,0,'Frozen Herb zone 66, node 120'),(86783,983,0,'Frozen Herb zone 66, node 121'),(86784,983,0,'Frozen Herb zone 66, node 122'),(86785,983,0,'Frozen Herb zone 66, node 123'),(86786,983,0,'Frozen Herb zone 66, node 124'),(86787,983,0,'Frozen Herb zone 66, node 125'),(86788,983,0,'Frozen Herb zone 66, node 126'),(86789,983,0,'Frozen Herb zone 66, node 127'),(86790,983,0,'Frozen Herb zone 66, node 128'),(86791,983,0,'Frozen Herb zone 66, node 129'),(86792,983,0,'Frozen Herb zone 66, node 130'),(86793,983,0,'Frozen Herb zone 66, node 131'),(86794,983,0,'Frozen Herb zone 66, node 132'),(86795,983,0,'Frozen Herb zone 66, node 133'),(86796,983,0,'Frozen Herb zone 66, node 134'),(86798,983,0,'Frozen Herb zone 66, node 135'),(87012,983,0,'Talandra\'s Rose zone 66, node 136'),(87013,983,0,'Talandra\'s Rose zone 66, node 137'),(87034,983,0,'Frozen Herb zone 66, node 138'),(87035,983,0,'Frozen Herb zone 66, node 139'),(87036,983,0,'Frozen Herb zone 66, node 140'),(87037,983,0,'Frozen Herb zone 66, node 141'),(87038,983,0,'Frozen Herb zone 66, node 142'),(87039,983,0,'Frozen Herb zone 66, node 143'),(87040,983,0,'Frozen Herb zone 66, node 144'),(87092,983,0,'Talandra\'s Rose zone 66, node 145'),(87093,983,0,'Talandra\'s Rose zone 66, node 146'),(87094,983,0,'Talandra\'s Rose zone 66, node 147'),(87112,983,0,'Frozen Herb zone 66, node 148'),(87113,983,0,'Frozen Herb zone 66, node 149'),(87114,983,0,'Frozen Herb zone 66, node 150'),(87115,983,0,'Frozen Herb zone 66, node 151'),(87116,983,0,'Frozen Herb zone 66, node 152'),(87321,983,0,'Talandra\'s Rose zone 66, node 153'),(87330,983,0,'Frozen Herb zone 66, node 154'),(87331,983,0,'Frozen Herb zone 66, node 155'),(87332,983,0,'Frozen Herb zone 66, node 156'),(87333,983,0,'Frozen Herb zone 66, node 157'),(87334,983,0,'Frozen Herb zone 66, node 158'),(87335,983,0,'Frozen Herb zone 66, node 159'),(87521,983,0,'Talandra\'s Rose zone 66, node 160'),(87522,983,0,'Talandra\'s Rose zone 66, node 161'),(21064,982,0,'Goldclover zone 3711, node 1'),(21087,982,0,'Goldclover zone 3711, node 2'),(21088,982,0,'Goldclover zone 3711, node 3'),(21089,982,0,'Goldclover zone 3711, node 4'),(21093,982,0,'Goldclover zone 3711, node 5'),(26331,982,0,'Goldclover zone 3711, node 6'),(26332,982,0,'Goldclover zone 3711, node 7'),(26333,982,0,'Goldclover zone 3711, node 8'),(26334,982,0,'Goldclover zone 3711, node 9'),(26341,982,0,'Goldclover zone 3711, node 10'),(26342,982,0,'Goldclover zone 3711, node 11'),(26343,982,0,'Goldclover zone 3711, node 12'),(55979,982,0,'Goldclover zone 3711, node 13'),(55980,982,0,'Goldclover zone 3711, node 14'),(55981,982,0,'Goldclover zone 3711, node 15'),(55982,982,0,'Goldclover zone 3711, node 16'),(55983,982,0,'Goldclover zone 3711, node 17'),(55984,982,0,'Goldclover zone 3711, node 18'),(55985,982,0,'Goldclover zone 3711, node 19'),(55986,982,0,'Goldclover zone 3711, node 20'),(55987,982,0,'Goldclover zone 3711, node 21'),(56917,982,0,'Adder\'s Tongue zone 3711, node 22'),(56918,982,0,'Adder\'s Tongue zone 3711, node 23'),(56919,982,0,'Adder\'s Tongue zone 3711, node 24'),(56920,982,0,'Adder\'s Tongue zone 3711, node 25'),(56921,982,0,'Adder\'s Tongue zone 3711, node 26'),(56922,982,0,'Adder\'s Tongue zone 3711, node 27'),(56923,982,0,'Adder\'s Tongue zone 3711, node 28'),(56924,982,0,'Adder\'s Tongue zone 3711, node 29'),(56925,982,0,'Adder\'s Tongue zone 3711, node 30'),(56926,982,0,'Adder\'s Tongue zone 3711, node 31'),(56927,982,0,'Adder\'s Tongue zone 3711, node 32'),(56928,982,0,'Adder\'s Tongue zone 3711, node 33'),(56929,982,0,'Adder\'s Tongue zone 3711, node 34'),(56930,982,0,'Adder\'s Tongue zone 3711, node 35'),(56931,982,0,'Adder\'s Tongue zone 3711, node 36'),(56932,982,0,'Adder\'s Tongue zone 3711, node 37'),(56933,982,0,'Adder\'s Tongue zone 3711, node 38'),(56934,982,0,'Adder\'s Tongue zone 3711, node 39'),(60642,982,0,'Tiger Lily zone 3711, node 40'),(60643,982,0,'Tiger Lily zone 3711, node 41'),(60644,982,0,'Tiger Lily zone 3711, node 42'),(60645,982,0,'Tiger Lily zone 3711, node 43'),(60646,982,0,'Tiger Lily zone 3711, node 44'),(60647,982,0,'Tiger Lily zone 3711, node 45'),(60648,982,0,'Tiger Lily zone 3711, node 46'),(60649,982,0,'Tiger Lily zone 3711, node 47'),(61419,982,0,'Adder\'s Tongue zone 3711, node 48'),(61420,982,0,'Adder\'s Tongue zone 3711, node 49'),(61421,982,0,'Adder\'s Tongue zone 3711, node 50'),(61422,982,0,'Adder\'s Tongue zone 3711, node 51'),(61423,982,0,'Adder\'s Tongue zone 3711, node 52'),(61424,982,0,'Adder\'s Tongue zone 3711, node 53'),(61425,982,0,'Adder\'s Tongue zone 3711, node 54'),(61426,982,0,'Adder\'s Tongue zone 3711, node 55'),(61427,982,0,'Adder\'s Tongue zone 3711, node 56'),(61430,982,0,'Adder\'s Tongue zone 3711, node 57'),(61431,982,0,'Adder\'s Tongue zone 3711, node 58'),(61432,982,0,'Adder\'s Tongue zone 3711, node 59'),(61433,982,0,'Adder\'s Tongue zone 3711, node 60'),(61434,982,0,'Adder\'s Tongue zone 3711, node 61'),(61435,982,0,'Adder\'s Tongue zone 3711, node 62'),(61436,982,0,'Adder\'s Tongue zone 3711, node 63'),(61437,982,0,'Adder\'s Tongue zone 3711, node 64'),(61438,982,0,'Adder\'s Tongue zone 3711, node 65'),(61439,982,0,'Adder\'s Tongue zone 3711, node 66'),(61440,982,0,'Adder\'s Tongue zone 3711, node 67'),(61441,982,0,'Adder\'s Tongue zone 3711, node 68'),(61442,982,0,'Adder\'s Tongue zone 3711, node 69'),(61443,982,0,'Adder\'s Tongue zone 3711, node 70'),(61444,982,0,'Adder\'s Tongue zone 3711, node 71'),(61996,982,0,'Adder\'s Tongue zone 3711, node 72'),(63732,982,0,'Tiger Lily zone 3711, node 73'),(63733,982,0,'Tiger Lily zone 3711, node 74'),(63734,982,0,'Tiger Lily zone 3711, node 75'),(63735,982,0,'Tiger Lily zone 3711, node 76'),(63736,982,0,'Tiger Lily zone 3711, node 77'),(63737,982,0,'Tiger Lily zone 3711, node 78'),(63744,982,0,'Tiger Lily zone 3711, node 79'),(63748,982,0,'Tiger Lily zone 3711, node 80'),(63749,982,0,'Tiger Lily zone 3711, node 81'),(63750,982,0,'Tiger Lily zone 3711, node 82'),(63751,982,0,'Tiger Lily zone 3711, node 83'),(67635,982,0,'Goldclover zone 3711, node 84'),(85934,982,0,'Goldclover zone 3711, node 85'),(85939,982,0,'Goldclover zone 3711, node 86'),(85940,982,0,'Goldclover zone 3711, node 87'),(85941,982,0,'Goldclover zone 3711, node 88'),(85943,982,0,'Goldclover zone 3711, node 89'),(85952,982,0,'Goldclover zone 3711, node 90'),(85956,982,0,'Goldclover zone 3711, node 91'),(86021,982,0,'Adder\'s Tongue zone 3711, node 92'),(86022,982,0,'Adder\'s Tongue zone 3711, node 93'),(86023,982,0,'Adder\'s Tongue zone 3711, node 94'),(86024,982,0,'Adder\'s Tongue zone 3711, node 95'),(86025,982,0,'Adder\'s Tongue zone 3711, node 96'),(86026,982,0,'Adder\'s Tongue zone 3711, node 97'),(86027,982,0,'Adder\'s Tongue zone 3711, node 98'),(86028,982,0,'Adder\'s Tongue zone 3711, node 99'),(86029,982,0,'Adder\'s Tongue zone 3711, node 100'),(86030,982,0,'Adder\'s Tongue zone 3711, node 101'),(86031,982,0,'Adder\'s Tongue zone 3711, node 102'),(86032,982,0,'Adder\'s Tongue zone 3711, node 103'),(86033,982,0,'Adder\'s Tongue zone 3711, node 104'),(86034,982,0,'Adder\'s Tongue zone 3711, node 105'),(86035,982,0,'Adder\'s Tongue zone 3711, node 106'),(86036,982,0,'Adder\'s Tongue zone 3711, node 107'),(86037,982,0,'Adder\'s Tongue zone 3711, node 108'),(86038,982,0,'Adder\'s Tongue zone 3711, node 109'),(86039,982,0,'Adder\'s Tongue zone 3711, node 110'),(86040,982,0,'Adder\'s Tongue zone 3711, node 111'),(86041,982,0,'Adder\'s Tongue zone 3711, node 112'),(86042,982,0,'Adder\'s Tongue zone 3711, node 113'),(86506,982,0,'Tiger Lily zone 3711, node 114'),(86507,982,0,'Tiger Lily zone 3711, node 115'),(86508,982,0,'Tiger Lily zone 3711, node 116'),(86509,982,0,'Tiger Lily zone 3711, node 117'),(86510,982,0,'Tiger Lily zone 3711, node 118'),(86520,982,0,'Tiger Lily zone 3711, node 119'),(86521,982,0,'Tiger Lily zone 3711, node 120'),(86526,982,0,'Tiger Lily zone 3711, node 121'),(86527,982,0,'Tiger Lily zone 3711, node 122'),(86528,982,0,'Tiger Lily zone 3711, node 123'),(86529,982,0,'Tiger Lily zone 3711, node 124'),(86530,982,0,'Tiger Lily zone 3711, node 125'),(86536,982,0,'Tiger Lily zone 3711, node 126'),(86537,982,0,'Tiger Lily zone 3711, node 127'),(86538,982,0,'Tiger Lily zone 3711, node 128'),(86544,982,0,'Tiger Lily zone 3711, node 129'),(86546,982,0,'Tiger Lily zone 3711, node 130'),(86554,982,0,'Tiger Lily zone 3711, node 131'),(86558,982,0,'Tiger Lily zone 3711, node 132'),(86559,982,0,'Tiger Lily zone 3711, node 133'),(87080,982,0,'Goldclover zone 3711, node 134'),(87081,982,0,'Goldclover zone 3711, node 135'),(87083,982,0,'Adder\'s Tongue zone 3711, node 136'),(87084,982,0,'Adder\'s Tongue zone 3711, node 137'),(87085,982,0,'Adder\'s Tongue zone 3711, node 138'),(87086,982,0,'Adder\'s Tongue zone 3711, node 139'),(87087,982,0,'Adder\'s Tongue zone 3711, node 140'),(87090,982,0,'Tiger Lily zone 3711, node 141'),(87091,982,0,'Tiger Lily zone 3711, node 142'),(87437,982,0,'Adder\'s Tongue zone 3711, node 143'),(87438,982,0,'Adder\'s Tongue zone 3711, node 144'),(87439,982,0,'Adder\'s Tongue zone 3711, node 145'),(87440,982,0,'Adder\'s Tongue zone 3711, node 146'),(87518,982,0,'Tiger Lily zone 3711, node 147'),(87520,982,0,'Tiger Lily zone 3711, node 148'),(60744,981,0,'Lichbloom zone 67, node 1'),(60745,981,0,'Lichbloom zone 67, node 2'),(60746,981,0,'Lichbloom zone 67, node 3'),(60747,981,0,'Lichbloom zone 67, node 4'),(60748,981,0,'Lichbloom zone 67, node 5'),(60749,981,0,'Lichbloom zone 67, node 6'),(60750,981,0,'Lichbloom zone 67, node 7'),(60751,981,0,'Lichbloom zone 67, node 8'),(60752,981,0,'Lichbloom zone 67, node 9'),(60753,981,0,'Lichbloom zone 67, node 10'),(60754,981,0,'Lichbloom zone 67, node 11'),(60755,981,0,'Lichbloom zone 67, node 12'),(60783,981,0,'Icethorn zone 67, node 13'),(60784,981,0,'Icethorn zone 67, node 14'),(60785,981,0,'Icethorn zone 67, node 15'),(60786,981,0,'Icethorn zone 67, node 16'),(60787,981,0,'Icethorn zone 67, node 17'),(60788,981,0,'Icethorn zone 67, node 18'),(60789,981,0,'Icethorn zone 67, node 19'),(60790,981,0,'Icethorn zone 67, node 20'),(60791,981,0,'Icethorn zone 67, node 21'),(60792,981,0,'Icethorn zone 67, node 22'),(60793,981,0,'Icethorn zone 67, node 23'),(60794,981,0,'Icethorn zone 67, node 24'),(60795,981,0,'Icethorn zone 67, node 25'),(63798,981,0,'Lichbloom zone 67, node 26'),(86590,981,0,'Lichbloom zone 67, node 27'),(86591,981,0,'Lichbloom zone 67, node 28'),(86592,981,0,'Lichbloom zone 67, node 29'),(86594,981,0,'Lichbloom zone 67, node 30'),(86595,981,0,'Lichbloom zone 67, node 31'),(86600,981,0,'Lichbloom zone 67, node 32'),(86602,981,0,'Lichbloom zone 67, node 33'),(86610,981,0,'Lichbloom zone 67, node 34'),(86611,981,0,'Lichbloom zone 67, node 35'),(86612,981,0,'Lichbloom zone 67, node 36'),(86613,981,0,'Lichbloom zone 67, node 37'),(86614,981,0,'Lichbloom zone 67, node 38'),(86615,981,0,'Lichbloom zone 67, node 39'),(86616,981,0,'Lichbloom zone 67, node 40'),(86617,981,0,'Lichbloom zone 67, node 41'),(86620,981,0,'Lichbloom zone 67, node 42'),(86621,981,0,'Lichbloom zone 67, node 43'),(86623,981,0,'Lichbloom zone 67, node 44'),(86624,981,0,'Lichbloom zone 67, node 45'),(86625,981,0,'Lichbloom zone 67, node 46'),(86626,981,0,'Lichbloom zone 67, node 47'),(86627,981,0,'Lichbloom zone 67, node 48'),(86630,981,0,'Lichbloom zone 67, node 49'),(86631,981,0,'Lichbloom zone 67, node 50'),(86632,981,0,'Lichbloom zone 67, node 51'),(86637,981,0,'Lichbloom zone 67, node 52'),(86639,981,0,'Lichbloom zone 67, node 53'),(86640,981,0,'Lichbloom zone 67, node 54'),(86641,981,0,'Lichbloom zone 67, node 55'),(86642,981,0,'Lichbloom zone 67, node 56'),(86643,981,0,'Lichbloom zone 67, node 57'),(86644,981,0,'Lichbloom zone 67, node 58'),(86647,981,0,'Lichbloom zone 67, node 59'),(86648,981,0,'Lichbloom zone 67, node 60'),(86649,981,0,'Lichbloom zone 67, node 61'),(86650,981,0,'Lichbloom zone 67, node 62'),(86651,981,0,'Lichbloom zone 67, node 63'),(86675,981,0,'Lichbloom zone 67, node 64'),(86676,981,0,'Lichbloom zone 67, node 65'),(86680,981,0,'Icethorn zone 67, node 66'),(86681,981,0,'Icethorn zone 67, node 67'),(86682,981,0,'Icethorn zone 67, node 68'),(86684,981,0,'Icethorn zone 67, node 69'),(86685,981,0,'Icethorn zone 67, node 70'),(86693,981,0,'Icethorn zone 67, node 71'),(86694,981,0,'Icethorn zone 67, node 72'),(86695,981,0,'Icethorn zone 67, node 73'),(86696,981,0,'Icethorn zone 67, node 74'),(86697,981,0,'Icethorn zone 67, node 75'),(86698,981,0,'Icethorn zone 67, node 76'),(86699,981,0,'Icethorn zone 67, node 77'),(86700,981,0,'Icethorn zone 67, node 78'),(86702,981,0,'Icethorn zone 67, node 79'),(86703,981,0,'Icethorn zone 67, node 80'),(86706,981,0,'Icethorn zone 67, node 81'),(86707,981,0,'Icethorn zone 67, node 82'),(86708,981,0,'Icethorn zone 67, node 83'),(86709,981,0,'Icethorn zone 67, node 84'),(86711,981,0,'Icethorn zone 67, node 85'),(86712,981,0,'Icethorn zone 67, node 86'),(86715,981,0,'Icethorn zone 67, node 87'),(86716,981,0,'Icethorn zone 67, node 88'),(86717,981,0,'Icethorn zone 67, node 89'),(86718,981,0,'Icethorn zone 67, node 90'),(86728,981,0,'Icethorn zone 67, node 91'),(87014,981,0,'Lichbloom zone 67, node 92'),(87015,981,0,'Lichbloom zone 67, node 93'),(87016,981,0,'Lichbloom zone 67, node 94'),(87017,981,0,'Lichbloom zone 67, node 95'),(87018,981,0,'Lichbloom zone 67, node 96'),(87019,981,0,'Lichbloom zone 67, node 97'),(87020,981,0,'Lichbloom zone 67, node 98'),(87021,981,0,'Lichbloom zone 67, node 99'),(87022,981,0,'Icethorn zone 67, node 100'),(87023,981,0,'Icethorn zone 67, node 101'),(87024,981,0,'Icethorn zone 67, node 102'),(87025,981,0,'Icethorn zone 67, node 103'),(87026,981,0,'Icethorn zone 67, node 104'),(87027,981,0,'Icethorn zone 67, node 105'),(87028,981,0,'Icethorn zone 67, node 106'),(87029,981,0,'Icethorn zone 67, node 107'),(87030,981,0,'Icethorn zone 67, node 108'),(87097,981,0,'Lichbloom zone 67, node 109'),(87098,981,0,'Lichbloom zone 67, node 110'),(87099,981,0,'Lichbloom zone 67, node 111'),(87100,981,0,'Lichbloom zone 67, node 112'),(87101,981,0,'Icethorn zone 67, node 113'),(87102,981,0,'Icethorn zone 67, node 114'),(87104,981,0,'Icethorn zone 67, node 115'),(87105,981,0,'Icethorn zone 67, node 116'),(87106,981,0,'Icethorn zone 67, node 117'),(87107,981,0,'Icethorn zone 67, node 118'),(87108,981,0,'Icethorn zone 67, node 119'),(87109,981,0,'Icethorn zone 67, node 120'),(87110,981,0,'Icethorn zone 67, node 121'),(87322,981,0,'Lichbloom zone 67, node 122'),(87324,981,0,'Lichbloom zone 67, node 123'),(87326,981,0,'Icethorn zone 67, node 124'),(87327,981,0,'Icethorn zone 67, node 125'),(87328,981,0,'Icethorn zone 67, node 126'),(87527,981,0,'Lichbloom zone 67, node 127'),(87532,981,0,'Lichbloom zone 67, node 128'),(87535,981,0,'Icethorn zone 67, node 129'),(62049,980,0,'Icethorn zone 210, node 1'),(62354,980,0,'Lichbloom zone 210, node 2'),(62603,980,0,'Lichbloom zone 210, node 3'),(62841,980,0,'Lichbloom zone 210, node 4'),(62842,980,0,'Lichbloom zone 210, node 5'),(62843,980,0,'Lichbloom zone 210, node 6'),(62844,980,0,'Lichbloom zone 210, node 7'),(62845,980,0,'Lichbloom zone 210, node 8'),(62846,980,0,'Lichbloom zone 210, node 9'),(62847,980,0,'Lichbloom zone 210, node 10'),(62848,980,0,'Lichbloom zone 210, node 11'),(62849,980,0,'Lichbloom zone 210, node 12'),(62850,980,0,'Lichbloom zone 210, node 13'),(62851,980,0,'Lichbloom zone 210, node 14'),(62852,980,0,'Lichbloom zone 210, node 15'),(62853,980,0,'Lichbloom zone 210, node 16'),(62854,980,0,'Lichbloom zone 210, node 17'),(62855,980,0,'Lichbloom zone 210, node 18'),(62856,980,0,'Lichbloom zone 210, node 19'),(62857,980,0,'Lichbloom zone 210, node 20'),(62858,980,0,'Lichbloom zone 210, node 21'),(62859,980,0,'Lichbloom zone 210, node 22'),(62860,980,0,'Lichbloom zone 210, node 23'),(62861,980,0,'Lichbloom zone 210, node 24'),(62862,980,0,'Lichbloom zone 210, node 25'),(62863,980,0,'Lichbloom zone 210, node 26'),(62864,980,0,'Lichbloom zone 210, node 27'),(62865,980,0,'Lichbloom zone 210, node 28'),(62866,980,0,'Lichbloom zone 210, node 29'),(62867,980,0,'Lichbloom zone 210, node 30'),(62869,980,0,'Icethorn zone 210, node 31'),(62870,980,0,'Icethorn zone 210, node 32'),(62871,980,0,'Icethorn zone 210, node 33'),(62872,980,0,'Icethorn zone 210, node 34'),(62873,980,0,'Icethorn zone 210, node 35'),(62874,980,0,'Icethorn zone 210, node 36'),(62875,980,0,'Icethorn zone 210, node 37'),(62876,980,0,'Icethorn zone 210, node 38'),(62877,980,0,'Icethorn zone 210, node 39'),(62878,980,0,'Icethorn zone 210, node 40'),(62879,980,0,'Icethorn zone 210, node 41'),(62880,980,0,'Icethorn zone 210, node 42'),(62881,980,0,'Icethorn zone 210, node 43'),(62882,980,0,'Icethorn zone 210, node 44'),(62883,980,0,'Icethorn zone 210, node 45'),(62884,980,0,'Icethorn zone 210, node 46'),(62885,980,0,'Icethorn zone 210, node 47'),(62886,980,0,'Icethorn zone 210, node 48'),(62887,980,0,'Icethorn zone 210, node 49'),(62888,980,0,'Icethorn zone 210, node 50'),(62901,980,0,'Lichbloom zone 210, node 51'),(62949,980,0,'Icethorn zone 210, node 52'),(63065,980,0,'Icethorn zone 210, node 53'),(63081,980,0,'Icethorn zone 210, node 54'),(63793,980,0,'Lichbloom zone 210, node 55'),(63794,980,0,'Lichbloom zone 210, node 56'),(63795,980,0,'Lichbloom zone 210, node 57'),(63796,980,0,'Lichbloom zone 210, node 58'),(63797,980,0,'Lichbloom zone 210, node 59'),(63799,980,0,'Icethorn zone 210, node 60'),(63800,980,0,'Icethorn zone 210, node 61'),(63801,980,0,'Icethorn zone 210, node 62'),(63802,980,0,'Icethorn zone 210, node 63'),(63803,980,0,'Icethorn zone 210, node 64'),(63804,980,0,'Icethorn zone 210, node 65'),(63805,980,0,'Icethorn zone 210, node 66'),(63806,980,0,'Icethorn zone 210, node 67'),(63807,980,0,'Icethorn zone 210, node 68'),(63808,980,0,'Icethorn zone 210, node 69'),(63809,980,0,'Icethorn zone 210, node 70'),(63810,980,0,'Icethorn zone 210, node 71'),(63811,980,0,'Icethorn zone 210, node 72'),(63812,980,0,'Icethorn zone 210, node 73'),(63813,980,0,'Icethorn zone 210, node 74'),(86586,980,0,'Lichbloom zone 210, node 75'),(86587,980,0,'Lichbloom zone 210, node 76'),(86588,980,0,'Lichbloom zone 210, node 77'),(86589,980,0,'Lichbloom zone 210, node 78'),(86593,980,0,'Lichbloom zone 210, node 79'),(86596,980,0,'Lichbloom zone 210, node 80'),(86597,980,0,'Lichbloom zone 210, node 81'),(86598,980,0,'Lichbloom zone 210, node 82'),(86601,980,0,'Lichbloom zone 210, node 83'),(86604,980,0,'Lichbloom zone 210, node 84'),(86605,980,0,'Lichbloom zone 210, node 85'),(86607,980,0,'Lichbloom zone 210, node 86'),(86608,980,0,'Lichbloom zone 210, node 87'),(86609,980,0,'Lichbloom zone 210, node 88'),(86618,980,0,'Lichbloom zone 210, node 89'),(86619,980,0,'Lichbloom zone 210, node 90'),(86628,980,0,'Lichbloom zone 210, node 91'),(86629,980,0,'Lichbloom zone 210, node 92'),(86633,980,0,'Lichbloom zone 210, node 93'),(86634,980,0,'Lichbloom zone 210, node 94'),(86635,980,0,'Lichbloom zone 210, node 95'),(86636,980,0,'Lichbloom zone 210, node 96'),(86638,980,0,'Lichbloom zone 210, node 97'),(86645,980,0,'Lichbloom zone 210, node 98'),(86646,980,0,'Lichbloom zone 210, node 99'),(86652,980,0,'Lichbloom zone 210, node 100'),(86653,980,0,'Lichbloom zone 210, node 101'),(86654,980,0,'Lichbloom zone 210, node 102'),(86655,980,0,'Lichbloom zone 210, node 103'),(86656,980,0,'Lichbloom zone 210, node 104'),(86657,980,0,'Lichbloom zone 210, node 105'),(86658,980,0,'Lichbloom zone 210, node 106'),(86659,980,0,'Lichbloom zone 210, node 107'),(86660,980,0,'Lichbloom zone 210, node 108'),(86661,980,0,'Lichbloom zone 210, node 109'),(86662,980,0,'Lichbloom zone 210, node 110'),(86663,980,0,'Lichbloom zone 210, node 111'),(86664,980,0,'Lichbloom zone 210, node 112'),(86665,980,0,'Lichbloom zone 210, node 113'),(86666,980,0,'Lichbloom zone 210, node 114'),(86667,980,0,'Lichbloom zone 210, node 115'),(86668,980,0,'Lichbloom zone 210, node 116'),(86669,980,0,'Lichbloom zone 210, node 117'),(86670,980,0,'Lichbloom zone 210, node 118'),(86671,980,0,'Lichbloom zone 210, node 119'),(86672,980,0,'Lichbloom zone 210, node 120'),(86673,980,0,'Lichbloom zone 210, node 121'),(86674,980,0,'Lichbloom zone 210, node 122'),(86677,980,0,'Lichbloom zone 210, node 123'),(86678,980,0,'Lichbloom zone 210, node 124'),(86679,980,0,'Icethorn zone 210, node 125'),(86683,980,0,'Icethorn zone 210, node 126'),(86686,980,0,'Icethorn zone 210, node 127'),(86687,980,0,'Icethorn zone 210, node 128'),(86688,980,0,'Icethorn zone 210, node 129'),(86690,980,0,'Icethorn zone 210, node 130'),(86691,980,0,'Icethorn zone 210, node 131'),(86692,980,0,'Icethorn zone 210, node 132'),(86704,980,0,'Icethorn zone 210, node 133'),(86705,980,0,'Icethorn zone 210, node 134'),(86710,980,0,'Icethorn zone 210, node 135'),(86713,980,0,'Icethorn zone 210, node 136'),(86714,980,0,'Icethorn zone 210, node 137'),(86719,980,0,'Icethorn zone 210, node 138'),(86720,980,0,'Icethorn zone 210, node 139'),(86721,980,0,'Icethorn zone 210, node 140'),(86722,980,0,'Icethorn zone 210, node 141'),(86723,980,0,'Icethorn zone 210, node 142'),(86724,980,0,'Icethorn zone 210, node 143'),(86725,980,0,'Icethorn zone 210, node 144'),(86726,980,0,'Icethorn zone 210, node 145'),(86727,980,0,'Icethorn zone 210, node 146'),(87031,980,0,'Icethorn zone 210, node 147'),(87095,980,0,'Lichbloom zone 210, node 148'),(87096,980,0,'Lichbloom zone 210, node 149'),(87103,980,0,'Icethorn zone 210, node 150'),(87323,980,0,'Lichbloom zone 210, node 151'),(87325,980,0,'Icethorn zone 210, node 152'),(87523,980,0,'Lichbloom zone 210, node 153'),(87528,980,0,'Lichbloom zone 210, node 154'),(87529,980,0,'Lichbloom zone 210, node 155'),(87530,980,0,'Lichbloom zone 210, node 156'),(87531,980,0,'Lichbloom zone 210, node 157'),(87533,980,0,'Icethorn zone 210, node 158'),(87536,980,0,'Icethorn zone 210, node 159'),(87537,980,0,'Icethorn zone 210, node 160'),(87538,980,0,'Icethorn zone 210, node 161'),(87539,980,0,'Icethorn zone 210, node 162'),(60874,979,0,'Frozen Herb zone 4197, node 1'),(63964,979,0,'Frozen Herb zone 4197, node 2'),(67273,979,0,'Lichbloom zone 4197, node 3'),(67274,979,0,'Lichbloom zone 4197, node 4'),(67275,979,0,'Lichbloom zone 4197, node 5'),(67276,979,0,'Lichbloom zone 4197, node 6'),(67277,979,0,'Lichbloom zone 4197, node 7'),(67279,979,0,'Icethorn zone 4197, node 8'),(67280,979,0,'Icethorn zone 4197, node 9'),(67281,979,0,'Icethorn zone 4197, node 10'),(67290,979,0,'Frozen Herb zone 4197, node 11'),(67291,979,0,'Frozen Herb zone 4197, node 12'),(67292,979,0,'Frozen Herb zone 4197, node 13'),(67293,979,0,'Frozen Herb zone 4197, node 14'),(67294,979,0,'Frozen Herb zone 4197, node 15'),(67295,979,0,'Frozen Herb zone 4197, node 16'),(67296,979,0,'Frozen Herb zone 4197, node 17'),(67297,979,0,'Frozen Herb zone 4197, node 18'),(67298,979,0,'Frozen Herb zone 4197, node 19'),(67299,979,0,'Frozen Herb zone 4197, node 20'),(67300,979,0,'Frozen Herb zone 4197, node 21'),(67301,979,0,'Frozen Herb zone 4197, node 22'),(67302,979,0,'Frozen Herb zone 4197, node 23'),(67303,979,0,'Frost Lotus zone 4197, node 24'),(67304,979,0,'Frost Lotus zone 4197, node 25'),(67305,979,0,'Frost Lotus zone 4197, node 26'),(86599,979,0,'Lichbloom zone 4197, node 27'),(86603,979,0,'Lichbloom zone 4197, node 28'),(86606,979,0,'Lichbloom zone 4197, node 29'),(86622,979,0,'Lichbloom zone 4197, node 30'),(86689,979,0,'Icethorn zone 4197, node 31'),(86701,979,0,'Icethorn zone 4197, node 32'),(86729,979,0,'Icethorn zone 4197, node 33'),(86753,979,0,'Frozen Herb zone 4197, node 34'),(86754,979,0,'Frozen Herb zone 4197, node 35'),(86755,979,0,'Frozen Herb zone 4197, node 36'),(86756,979,0,'Frozen Herb zone 4197, node 37'),(86761,979,0,'Frozen Herb zone 4197, node 38'),(86762,979,0,'Frozen Herb zone 4197, node 39'),(86766,979,0,'Frozen Herb zone 4197, node 40'),(86774,979,0,'Frozen Herb zone 4197, node 41'),(86797,979,0,'Frozen Herb zone 4197, node 42'),(87033,979,0,'Frozen Herb zone 4197, node 43'),(87524,979,0,'Lichbloom zone 4197, node 44'),(87525,979,0,'Lichbloom zone 4197, node 45'),(87526,979,0,'Lichbloom zone 4197, node 46'),(87534,979,0,'Icethorn zone 4197, node 47'),(87545,979,0,'Frozen Herb zone 4197, node 48'),(87546,979,0,'Frozen Herb zone 4197, node 49'),(15131,978,0,'Felweed zone 3522, node 1'),(15157,978,0,'Felweed zone 3522, node 2'),(15414,978,0,'Felweed zone 3522, node 3'),(20735,978,0,'Dreaming Glory zone 3522, node 4'),(20736,978,0,'Dreaming Glory zone 3522, node 5'),(20855,978,0,'Felweed zone 3522, node 6'),(21326,978,0,'Felweed zone 3522, node 7'),(21327,978,0,'Felweed zone 3522, node 8'),(21328,978,0,'Felweed zone 3522, node 9'),(21329,978,0,'Felweed zone 3522, node 10'),(21330,978,0,'Felweed zone 3522, node 11'),(21331,978,0,'Felweed zone 3522, node 12'),(21332,978,0,'Felweed zone 3522, node 13'),(21333,978,0,'Felweed zone 3522, node 14'),(21334,978,0,'Felweed zone 3522, node 15'),(21335,978,0,'Felweed zone 3522, node 16'),(21336,978,0,'Felweed zone 3522, node 17'),(21337,978,0,'Felweed zone 3522, node 18'),(21338,978,0,'Felweed zone 3522, node 19'),(21339,978,0,'Felweed zone 3522, node 20'),(21340,978,0,'Felweed zone 3522, node 21'),(21341,978,0,'Felweed zone 3522, node 22'),(21342,978,0,'Felweed zone 3522, node 23'),(21343,978,0,'Felweed zone 3522, node 24'),(21344,978,0,'Felweed zone 3522, node 25'),(21345,978,0,'Felweed zone 3522, node 26'),(21346,978,0,'Felweed zone 3522, node 27'),(21347,978,0,'Felweed zone 3522, node 28'),(21348,978,0,'Felweed zone 3522, node 29'),(21405,978,0,'Felweed zone 3522, node 30'),(21406,978,0,'Felweed zone 3522, node 31'),(21407,978,0,'Felweed zone 3522, node 32'),(21437,978,0,'Dreaming Glory zone 3522, node 33'),(21438,978,0,'Dreaming Glory zone 3522, node 34'),(21439,978,0,'Dreaming Glory zone 3522, node 35'),(21440,978,0,'Dreaming Glory zone 3522, node 36'),(21441,978,0,'Dreaming Glory zone 3522, node 37'),(21442,978,0,'Dreaming Glory zone 3522, node 38'),(21443,978,0,'Dreaming Glory zone 3522, node 39'),(21444,978,0,'Dreaming Glory zone 3522, node 40'),(21445,978,0,'Dreaming Glory zone 3522, node 41'),(21446,978,0,'Dreaming Glory zone 3522, node 42'),(21447,978,0,'Dreaming Glory zone 3522, node 43'),(21448,978,0,'Dreaming Glory zone 3522, node 44'),(21449,978,0,'Dreaming Glory zone 3522, node 45'),(21450,978,0,'Dreaming Glory zone 3522, node 46'),(21451,978,0,'Dreaming Glory zone 3522, node 47'),(21452,978,0,'Dreaming Glory zone 3522, node 48'),(21453,978,0,'Dreaming Glory zone 3522, node 49'),(21454,978,0,'Dreaming Glory zone 3522, node 50'),(21455,978,0,'Dreaming Glory zone 3522, node 51'),(21594,978,0,'Mana Thistle zone 3522, node 52'),(21595,978,0,'Mana Thistle zone 3522, node 53'),(22225,978,0,'Dreaming Glory zone 3522, node 54'),(22228,978,0,'Mana Thistle zone 3522, node 55'),(22229,978,0,'Dreaming Glory zone 3522, node 56'),(22230,978,0,'Mana Thistle zone 3522, node 57'),(27570,978,0,'Dreaming Glory zone 3522, node 58'),(27572,978,0,'Felweed zone 3522, node 60'),(27573,978,0,'Dreaming Glory zone 3522, node 61'),(27590,978,0,'Felweed zone 3522, node 63'),(28041,978,0,'Dreaming Glory zone 3522, node 64'),(28106,978,0,'Dreaming Glory zone 3522, node 66'),(28127,978,0,'Dreaming Glory zone 3522, node 68'),(28281,978,0,'Felweed zone 3522, node 70'),(28287,978,0,'Felweed zone 3522, node 71'),(28289,978,0,'Dreaming Glory zone 3522, node 72'),(28292,978,0,'Dreaming Glory zone 3522, node 74'),(28303,978,0,'Felweed zone 3522, node 76'),(30777,978,0,'Dreaming Glory zone 3522, node 77'),(30788,978,0,'Felweed zone 3522, node 78'),(30790,978,0,'Felweed zone 3522, node 79'),(30837,978,0,'Felweed zone 3522, node 80'),(30841,978,0,'Dreaming Glory zone 3522, node 81'),(30843,978,0,'Felweed zone 3522, node 82'),(30853,978,0,'Felweed zone 3522, node 83'),(32785,978,0,'Dreaming Glory zone 3522, node 84'),(40223,978,0,'Felweed zone 3522, node 86'),(40224,978,0,'Felweed zone 3522, node 87'),(40225,978,0,'Felweed zone 3522, node 88'),(40226,978,0,'Felweed zone 3522, node 89'),(40227,978,0,'Felweed zone 3522, node 90'),(40228,978,0,'Felweed zone 3522, node 91'),(40229,978,0,'Felweed zone 3522, node 92'),(40230,978,0,'Felweed zone 3522, node 93'),(40231,978,0,'Felweed zone 3522, node 94'),(40232,978,0,'Felweed zone 3522, node 95'),(40233,978,0,'Felweed zone 3522, node 96'),(40234,978,0,'Felweed zone 3522, node 97'),(40235,978,0,'Felweed zone 3522, node 98'),(40236,978,0,'Felweed zone 3522, node 99'),(40237,978,0,'Dreaming Glory zone 3522, node 100'),(40238,978,0,'Dreaming Glory zone 3522, node 101'),(40239,978,0,'Dreaming Glory zone 3522, node 102'),(40240,978,0,'Dreaming Glory zone 3522, node 103'),(40241,978,0,'Dreaming Glory zone 3522, node 104'),(42154,978,0,'Felweed zone 3522, node 105'),(42155,978,0,'Felweed zone 3522, node 106'),(42156,978,0,'Dreaming Glory zone 3522, node 107'),(42157,978,0,'Dreaming Glory zone 3522, node 108'),(42190,978,0,'Dreaming Glory zone 3522, node 109'),(42191,978,0,'Felweed zone 3522, node 110'),(42192,978,0,'Dreaming Glory zone 3522, node 111'),(42262,978,0,'Felweed zone 3522, node 112'),(42264,978,0,'Felweed zone 3522, node 113'),(42265,978,0,'Dreaming Glory zone 3522, node 114'),(42266,978,0,'Dreaming Glory zone 3522, node 115'),(42267,978,0,'Dreaming Glory zone 3522, node 116'),(42311,978,0,'Dreaming Glory zone 3522, node 117'),(42313,978,0,'Dreaming Glory zone 3522, node 118'),(42316,978,0,'Felweed zone 3522, node 119'),(85969,978,0,'Felweed zone 3522, node 120'),(85977,978,0,'Felweed zone 3522, node 121'),(85979,978,0,'Dreaming Glory zone 3522, node 122'),(85988,978,0,'Dreaming Glory zone 3522, node 123'),(85989,978,0,'Dreaming Glory zone 3522, node 124'),(86016,978,0,'Nightmare Vine zone 3522, node 125'),(86017,978,0,'Nightmare Vine zone 3522, node 126'),(86018,978,0,'Nightmare Vine zone 3522, node 127'),(86019,978,0,'Nightmare Vine zone 3522, node 128'),(87047,978,0,'Felweed zone 3522, node 129'),(87048,978,0,'Felweed zone 3522, node 130'),(87050,978,0,'Felweed zone 3522, node 131'),(87051,978,0,'Felweed zone 3522, node 132'),(87148,978,0,'Felweed zone 3522, node 133'),(87149,978,0,'Dreaming Glory zone 3522, node 134'),(87153,978,0,'Dreaming Glory zone 3522, node 135'),(2823,977,0,'Felweed zone 3519, node 1'),(4506,977,0,'Terocone zone 3519, node 2'),(4791,977,0,'Felweed zone 3519, node 3'),(14116,977,0,'Dreaming Glory zone 3519, node 4'),(14125,977,0,'Dreaming Glory zone 3519, node 6'),(14128,977,0,'Felweed zone 3519, node 8'),(14696,977,0,'Mana Thistle zone 3519, node 9'),(15093,977,0,'Terocone zone 3519, node 11'),(15095,977,0,'Felweed zone 3519, node 12'),(15096,977,0,'Terocone zone 3519, node 13'),(18912,977,0,'Terocone zone 3519, node 14'),(20949,977,0,'Dreaming Glory zone 3519, node 15'),(20953,977,0,'Dreaming Glory zone 3519, node 17'),(21397,977,0,'Felweed zone 3519, node 19'),(21398,977,0,'Felweed zone 3519, node 20'),(21399,977,0,'Felweed zone 3519, node 21'),(21400,977,0,'Felweed zone 3519, node 22'),(21401,977,0,'Felweed zone 3519, node 23'),(21402,977,0,'Felweed zone 3519, node 24'),(21403,977,0,'Felweed zone 3519, node 25'),(21404,977,0,'Felweed zone 3519, node 26'),(21427,977,0,'Dreaming Glory zone 3519, node 27'),(21428,977,0,'Dreaming Glory zone 3519, node 28'),(21429,977,0,'Dreaming Glory zone 3519, node 29'),(21430,977,0,'Dreaming Glory zone 3519, node 30'),(21431,977,0,'Dreaming Glory zone 3519, node 31'),(21432,977,0,'Dreaming Glory zone 3519, node 32'),(21433,977,0,'Dreaming Glory zone 3519, node 33'),(21434,977,0,'Dreaming Glory zone 3519, node 34'),(21435,977,0,'Dreaming Glory zone 3519, node 35'),(21436,977,0,'Dreaming Glory zone 3519, node 36'),(21511,977,0,'Dreaming Glory zone 3519, node 37'),(21556,977,0,'Terocone zone 3519, node 38'),(21557,977,0,'Terocone zone 3519, node 39'),(21558,977,0,'Terocone zone 3519, node 40'),(21559,977,0,'Terocone zone 3519, node 41'),(21560,977,0,'Terocone zone 3519, node 42'),(21561,977,0,'Terocone zone 3519, node 43'),(21562,977,0,'Terocone zone 3519, node 44'),(21563,977,0,'Terocone zone 3519, node 45'),(21564,977,0,'Terocone zone 3519, node 46'),(21565,977,0,'Terocone zone 3519, node 47'),(21566,977,0,'Terocone zone 3519, node 48'),(21600,977,0,'Mana Thistle zone 3519, node 49'),(21601,977,0,'Mana Thistle zone 3519, node 50'),(26630,977,0,'Felweed zone 3519, node 51'),(26661,977,0,'Felweed zone 3519, node 52'),(26664,977,0,'Dreaming Glory zone 3519, node 53'),(26665,977,0,'Dreaming Glory zone 3519, node 54'),(26666,977,0,'Dreaming Glory zone 3519, node 55'),(26675,977,0,'Dreaming Glory zone 3519, node 56'),(26687,977,0,'Dreaming Glory zone 3519, node 57'),(26689,977,0,'Dreaming Glory zone 3519, node 58'),(26690,977,0,'Dreaming Glory zone 3519, node 59'),(26697,977,0,'Dreaming Glory zone 3519, node 60'),(26702,977,0,'Dreaming Glory zone 3519, node 61'),(27559,977,0,'Mana Thistle zone 3519, node 62'),(28217,977,0,'Felweed zone 3519, node 64'),(28319,977,0,'Dreaming Glory zone 3519, node 65'),(28332,977,0,'Mana Thistle zone 3519, node 67'),(28410,977,0,'Terocone zone 3519, node 69'),(28415,977,0,'Terocone zone 3519, node 70'),(28490,977,0,'Terocone zone 3519, node 71'),(28492,977,0,'Felweed zone 3519, node 72'),(29720,977,0,'Terocone zone 3519, node 73'),(31050,977,0,'Terocone zone 3519, node 74'),(31307,977,0,'Felweed zone 3519, node 75'),(32361,977,0,'Terocone zone 3519, node 76'),(32362,977,0,'Terocone zone 3519, node 77'),(32470,977,0,'Dreaming Glory zone 3519, node 78'),(32735,977,0,'Mana Thistle zone 3519, node 79'),(32796,977,0,'Mana Thistle zone 3519, node 81'),(40260,977,0,'Mana Thistle zone 3519, node 83'),(40261,977,0,'Mana Thistle zone 3519, node 84'),(40262,977,0,'Mana Thistle zone 3519, node 85'),(40263,977,0,'Mana Thistle zone 3519, node 86'),(40264,977,0,'Mana Thistle zone 3519, node 87'),(40290,977,0,'Felweed zone 3519, node 88'),(40291,977,0,'Felweed zone 3519, node 89'),(40292,977,0,'Felweed zone 3519, node 90'),(40293,977,0,'Felweed zone 3519, node 91'),(40294,977,0,'Felweed zone 3519, node 92'),(40295,977,0,'Felweed zone 3519, node 93'),(40296,977,0,'Felweed zone 3519, node 94'),(40297,977,0,'Felweed zone 3519, node 95'),(40298,977,0,'Felweed zone 3519, node 96'),(40299,977,0,'Felweed zone 3519, node 97'),(40300,977,0,'Felweed zone 3519, node 98'),(40301,977,0,'Felweed zone 3519, node 99'),(40302,977,0,'Felweed zone 3519, node 100'),(40303,977,0,'Felweed zone 3519, node 101'),(40304,977,0,'Felweed zone 3519, node 102'),(40305,977,0,'Felweed zone 3519, node 103'),(40306,977,0,'Felweed zone 3519, node 104'),(40307,977,0,'Felweed zone 3519, node 105'),(40308,977,0,'Felweed zone 3519, node 106'),(40309,977,0,'Felweed zone 3519, node 107'),(40310,977,0,'Felweed zone 3519, node 108'),(40311,977,0,'Felweed zone 3519, node 109'),(40312,977,0,'Felweed zone 3519, node 110'),(40313,977,0,'Felweed zone 3519, node 111'),(40314,977,0,'Felweed zone 3519, node 112'),(40315,977,0,'Felweed zone 3519, node 113'),(40316,977,0,'Felweed zone 3519, node 114'),(40317,977,0,'Felweed zone 3519, node 115'),(40318,977,0,'Felweed zone 3519, node 116'),(40319,977,0,'Felweed zone 3519, node 117'),(40320,977,0,'Felweed zone 3519, node 118'),(40321,977,0,'Felweed zone 3519, node 119'),(40322,977,0,'Felweed zone 3519, node 120'),(40323,977,0,'Felweed zone 3519, node 121'),(40324,977,0,'Felweed zone 3519, node 122'),(40325,977,0,'Felweed zone 3519, node 123'),(40326,977,0,'Dreaming Glory zone 3519, node 124'),(40327,977,0,'Dreaming Glory zone 3519, node 125'),(40328,977,0,'Dreaming Glory zone 3519, node 126'),(40329,977,0,'Dreaming Glory zone 3519, node 127'),(40330,977,0,'Dreaming Glory zone 3519, node 128'),(40331,977,0,'Dreaming Glory zone 3519, node 129'),(40332,977,0,'Dreaming Glory zone 3519, node 130'),(40333,977,0,'Dreaming Glory zone 3519, node 131'),(40334,977,0,'Dreaming Glory zone 3519, node 132'),(40335,977,0,'Dreaming Glory zone 3519, node 133'),(40336,977,0,'Dreaming Glory zone 3519, node 134'),(40337,977,0,'Dreaming Glory zone 3519, node 135'),(40338,977,0,'Dreaming Glory zone 3519, node 136'),(40339,977,0,'Dreaming Glory zone 3519, node 137'),(40340,977,0,'Dreaming Glory zone 3519, node 138'),(40341,977,0,'Dreaming Glory zone 3519, node 139'),(40342,977,0,'Dreaming Glory zone 3519, node 140'),(40343,977,0,'Dreaming Glory zone 3519, node 141'),(40344,977,0,'Dreaming Glory zone 3519, node 142'),(40345,977,0,'Dreaming Glory zone 3519, node 143'),(40346,977,0,'Dreaming Glory zone 3519, node 144'),(40347,977,0,'Dreaming Glory zone 3519, node 145'),(40348,977,0,'Dreaming Glory zone 3519, node 146'),(40349,977,0,'Dreaming Glory zone 3519, node 147'),(40350,977,0,'Dreaming Glory zone 3519, node 148'),(40351,977,0,'Dreaming Glory zone 3519, node 149'),(40352,977,0,'Dreaming Glory zone 3519, node 150'),(40353,977,0,'Dreaming Glory zone 3519, node 151'),(40354,977,0,'Dreaming Glory zone 3519, node 152'),(40355,977,0,'Dreaming Glory zone 3519, node 153'),(40356,977,0,'Dreaming Glory zone 3519, node 154'),(40357,977,0,'Dreaming Glory zone 3519, node 155'),(40358,977,0,'Dreaming Glory zone 3519, node 156'),(40359,977,0,'Dreaming Glory zone 3519, node 157'),(40360,977,0,'Terocone zone 3519, node 158'),(40361,977,0,'Terocone zone 3519, node 159'),(40362,977,0,'Terocone zone 3519, node 160'),(40363,977,0,'Terocone zone 3519, node 161'),(40364,977,0,'Terocone zone 3519, node 162'),(40365,977,0,'Terocone zone 3519, node 163'),(40366,977,0,'Terocone zone 3519, node 164'),(40367,977,0,'Terocone zone 3519, node 165'),(40368,977,0,'Terocone zone 3519, node 166'),(40369,977,0,'Terocone zone 3519, node 167'),(40370,977,0,'Terocone zone 3519, node 168'),(40371,977,0,'Terocone zone 3519, node 169'),(40372,977,0,'Terocone zone 3519, node 170'),(40373,977,0,'Terocone zone 3519, node 171'),(40374,977,0,'Terocone zone 3519, node 172'),(40375,977,0,'Terocone zone 3519, node 173'),(40376,977,0,'Terocone zone 3519, node 174'),(40377,977,0,'Terocone zone 3519, node 175'),(40378,977,0,'Terocone zone 3519, node 176'),(40379,977,0,'Terocone zone 3519, node 177'),(40380,977,0,'Terocone zone 3519, node 178'),(40381,977,0,'Terocone zone 3519, node 179'),(40382,977,0,'Terocone zone 3519, node 180'),(40383,977,0,'Terocone zone 3519, node 181'),(40384,977,0,'Terocone zone 3519, node 182'),(40385,977,0,'Terocone zone 3519, node 183'),(40386,977,0,'Terocone zone 3519, node 184'),(40387,977,0,'Terocone zone 3519, node 185'),(40388,977,0,'Terocone zone 3519, node 186'),(40389,977,0,'Terocone zone 3519, node 187'),(40390,977,0,'Terocone zone 3519, node 188'),(40391,977,0,'Terocone zone 3519, node 189'),(40392,977,0,'Terocone zone 3519, node 190'),(40393,977,0,'Terocone zone 3519, node 191'),(40394,977,0,'Terocone zone 3519, node 192'),(40395,977,0,'Terocone zone 3519, node 193'),(40396,977,0,'Terocone zone 3519, node 194'),(40397,977,0,'Terocone zone 3519, node 195'),(40398,977,0,'Terocone zone 3519, node 196'),(40399,977,0,'Terocone zone 3519, node 197'),(40400,977,0,'Terocone zone 3519, node 198'),(40401,977,0,'Terocone zone 3519, node 199'),(40402,977,0,'Terocone zone 3519, node 200'),(40403,977,0,'Terocone zone 3519, node 201'),(40404,977,0,'Terocone zone 3519, node 202'),(40405,977,0,'Terocone zone 3519, node 203'),(40406,977,0,'Terocone zone 3519, node 204'),(40407,977,0,'Terocone zone 3519, node 205'),(40408,977,0,'Terocone zone 3519, node 206'),(40409,977,0,'Terocone zone 3519, node 207'),(40410,977,0,'Terocone zone 3519, node 208'),(42177,977,0,'Terocone zone 3519, node 209'),(42198,977,0,'Terocone zone 3519, node 210'),(42203,977,0,'Terocone zone 3519, node 211'),(42214,977,0,'Felweed zone 3519, node 212'),(42258,977,0,'Dreaming Glory zone 3519, node 213'),(42259,977,0,'Felweed zone 3519, node 214'),(42260,977,0,'Terocone zone 3519, node 215'),(42261,977,0,'Felweed zone 3519, node 216'),(42318,977,0,'Dreaming Glory zone 3519, node 217'),(42367,977,0,'Dreaming Glory zone 3519, node 218'),(42395,977,0,'Felweed zone 3519, node 219'),(55627,977,0,'Felweed zone 3519, node 220'),(55695,977,0,'Felweed zone 3519, node 221'),(55699,977,0,'Felweed zone 3519, node 222'),(55851,977,0,'Felweed zone 3519, node 223'),(56370,977,0,'Felweed zone 3519, node 224'),(56374,977,0,'Felweed zone 3519, node 225'),(56412,977,0,'Dreaming Glory zone 3519, node 226'),(56421,977,0,'Dreaming Glory zone 3519, node 227'),(61322,977,0,'Terocone zone 3519, node 228'),(61324,977,0,'Terocone zone 3519, node 229'),(61327,977,0,'Terocone zone 3519, node 230'),(61328,977,0,'Terocone zone 3519, node 231'),(61329,977,0,'Terocone zone 3519, node 232'),(61330,977,0,'Terocone zone 3519, node 233'),(61332,977,0,'Terocone zone 3519, node 234'),(61337,977,0,'Terocone zone 3519, node 235'),(61338,977,0,'Terocone zone 3519, node 236'),(61339,977,0,'Terocone zone 3519, node 237'),(61340,977,0,'Terocone zone 3519, node 238'),(61341,977,0,'Terocone zone 3519, node 239'),(61342,977,0,'Terocone zone 3519, node 240'),(61343,977,0,'Terocone zone 3519, node 241'),(61344,977,0,'Terocone zone 3519, node 242'),(63150,977,0,'Ghost Mushroom zone 3519, node 243'),(63151,977,0,'Ghost Mushroom zone 3519, node 244'),(63195,977,0,'Ghost Mushroom zone 3519, node 245'),(64834,977,0,'Felweed zone 3519, node 246'),(64835,977,0,'Felweed zone 3519, node 247'),(64853,977,0,'Terocone zone 3519, node 248'),(64854,977,0,'Terocone zone 3519, node 249'),(64855,977,0,'Terocone zone 3519, node 250'),(64902,977,0,'Ghost Mushroom zone 3519, node 251'),(64903,977,0,'Ghost Mushroom zone 3519, node 252'),(86020,977,0,'Mana Thistle zone 3519, node 254'),(86135,977,0,'Ghost Mushroom zone 3519, node 255'),(86136,977,0,'Ghost Mushroom zone 3519, node 256'),(86137,977,0,'Ghost Mushroom zone 3519, node 257'),(86141,977,0,'Ghost Mushroom zone 3519, node 258'),(86142,977,0,'Ghost Mushroom zone 3519, node 259'),(87052,977,0,'Dreaming Glory zone 3519, node 260'),(87144,977,0,'Felweed zone 3519, node 261'),(87146,977,0,'Felweed zone 3519, node 262'),(87157,977,0,'Terocone zone 3519, node 263'),(87161,977,0,'Mana Thistle zone 3519, node 264'),(87414,977,0,'Felweed zone 3519, node 265'),(87418,977,0,'Felweed zone 3519, node 266'),(87419,977,0,'Felweed zone 3519, node 267'),(21365,976,0,'Felweed zone 3520, node 1'),(21366,976,0,'Felweed zone 3520, node 2'),(21367,976,0,'Felweed zone 3520, node 3'),(21368,976,0,'Felweed zone 3520, node 4'),(21369,976,0,'Felweed zone 3520, node 5'),(21370,976,0,'Felweed zone 3520, node 6'),(21473,976,0,'Dreaming Glory zone 3520, node 7'),(21474,976,0,'Dreaming Glory zone 3520, node 8'),(21475,976,0,'Dreaming Glory zone 3520, node 9'),(21476,976,0,'Dreaming Glory zone 3520, node 10'),(21477,976,0,'Dreaming Glory zone 3520, node 11'),(21555,976,0,'Terocone zone 3520, node 12'),(21586,976,0,'Nightmare Vine zone 3520, node 13'),(21587,976,0,'Nightmare Vine zone 3520, node 14'),(21588,976,0,'Nightmare Vine zone 3520, node 15'),(21589,976,0,'Nightmare Vine zone 3520, node 16'),(21590,976,0,'Nightmare Vine zone 3520, node 17'),(21591,976,0,'Nightmare Vine zone 3520, node 18'),(21592,976,0,'Nightmare Vine zone 3520, node 19'),(21593,976,0,'Nightmare Vine zone 3520, node 20'),(22237,976,0,'Nightmare Vine zone 3520, node 21'),(22238,976,0,'Nightmare Vine zone 3520, node 22'),(22239,976,0,'Felweed zone 3520, node 23'),(22240,976,0,'Netherdust Bush zone 3520, node 24'),(22241,976,0,'Netherdust Bush zone 3520, node 25'),(28420,976,0,'Felweed zone 3520, node 26'),(28425,976,0,'Felweed zone 3520, node 27'),(28438,976,0,'Netherdust Bush zone 3520, node 28'),(28440,976,0,'Netherdust Bush zone 3520, node 29'),(28442,976,0,'Felweed zone 3520, node 30'),(28443,976,0,'Netherdust Bush zone 3520, node 31'),(28447,976,0,'Nightmare Vine zone 3520, node 32'),(28475,976,0,'Nightmare Vine zone 3520, node 34'),(28484,976,0,'Felweed zone 3520, node 36'),(28797,976,0,'Netherdust Bush zone 3520, node 37'),(28931,976,0,'Netherdust Bush zone 3520, node 38'),(29272,976,0,'Netherdust Bush zone 3520, node 39'),(29574,976,0,'Netherdust Bush zone 3520, node 40'),(29576,976,0,'Netherdust Bush zone 3520, node 41'),(29577,976,0,'Netherdust Bush zone 3520, node 42'),(29579,976,0,'Netherdust Bush zone 3520, node 43'),(30434,976,0,'Nightmare Vine zone 3520, node 44'),(30437,976,0,'Felweed zone 3520, node 46'),(30438,976,0,'Terocone zone 3520, node 47'),(30440,976,0,'Terocone zone 3520, node 48'),(30859,976,0,'Nightmare Vine zone 3520, node 49'),(30911,976,0,'Felweed zone 3520, node 50'),(30912,976,0,'Nightmare Vine zone 3520, node 51'),(30915,976,0,'Felweed zone 3520, node 52'),(30917,976,0,'Felweed zone 3520, node 53'),(30918,976,0,'Netherdust Bush zone 3520, node 54'),(30925,976,0,'Netherdust Bush zone 3520, node 55'),(30933,976,0,'Netherdust Bush zone 3520, node 56'),(30966,976,0,'Netherdust Bush zone 3520, node 57'),(31028,976,0,'Netherdust Bush zone 3520, node 58'),(40411,976,0,'Mana Thistle zone 3520, node 59'),(40412,976,0,'Mana Thistle zone 3520, node 60'),(40413,976,0,'Mana Thistle zone 3520, node 61'),(40414,976,0,'Mana Thistle zone 3520, node 62'),(40415,976,0,'Felweed zone 3520, node 63'),(40416,976,0,'Felweed zone 3520, node 64'),(40417,976,0,'Felweed zone 3520, node 65'),(40418,976,0,'Felweed zone 3520, node 66'),(40419,976,0,'Felweed zone 3520, node 67'),(40420,976,0,'Felweed zone 3520, node 68'),(40421,976,0,'Felweed zone 3520, node 69'),(40422,976,0,'Felweed zone 3520, node 70'),(40423,976,0,'Felweed zone 3520, node 71'),(40424,976,0,'Felweed zone 3520, node 72'),(40425,976,0,'Felweed zone 3520, node 73'),(40426,976,0,'Felweed zone 3520, node 74'),(40427,976,0,'Felweed zone 3520, node 75'),(40428,976,0,'Felweed zone 3520, node 76'),(40432,976,0,'Nightmare Vine zone 3520, node 77'),(40433,976,0,'Nightmare Vine zone 3520, node 78'),(40434,976,0,'Nightmare Vine zone 3520, node 79'),(40435,976,0,'Nightmare Vine zone 3520, node 80'),(40436,976,0,'Nightmare Vine zone 3520, node 81'),(40437,976,0,'Nightmare Vine zone 3520, node 82'),(40438,976,0,'Nightmare Vine zone 3520, node 83'),(40439,976,0,'Nightmare Vine zone 3520, node 84'),(40440,976,0,'Nightmare Vine zone 3520, node 85'),(40441,976,0,'Nightmare Vine zone 3520, node 86'),(40442,976,0,'Nightmare Vine zone 3520, node 87'),(40443,976,0,'Nightmare Vine zone 3520, node 88'),(40444,976,0,'Nightmare Vine zone 3520, node 89'),(40445,976,0,'Nightmare Vine zone 3520, node 90'),(40446,976,0,'Nightmare Vine zone 3520, node 91'),(40447,976,0,'Nightmare Vine zone 3520, node 92'),(40448,976,0,'Nightmare Vine zone 3520, node 93'),(40449,976,0,'Nightmare Vine zone 3520, node 94'),(40450,976,0,'Nightmare Vine zone 3520, node 95'),(40451,976,0,'Nightmare Vine zone 3520, node 96'),(40452,976,0,'Nightmare Vine zone 3520, node 97'),(40453,976,0,'Nightmare Vine zone 3520, node 98'),(40454,976,0,'Nightmare Vine zone 3520, node 99'),(40459,976,0,'Dreaming Glory zone 3520, node 100'),(40460,976,0,'Dreaming Glory zone 3520, node 101'),(40461,976,0,'Dreaming Glory zone 3520, node 102'),(40462,976,0,'Dreaming Glory zone 3520, node 103'),(40463,976,0,'Dreaming Glory zone 3520, node 104'),(40464,976,0,'Dreaming Glory zone 3520, node 105'),(40465,976,0,'Dreaming Glory zone 3520, node 106'),(40466,976,0,'Dreaming Glory zone 3520, node 107'),(40467,976,0,'Dreaming Glory zone 3520, node 108'),(40468,976,0,'Dreaming Glory zone 3520, node 109'),(40469,976,0,'Dreaming Glory zone 3520, node 110'),(40470,976,0,'Dreaming Glory zone 3520, node 111'),(40471,976,0,'Dreaming Glory zone 3520, node 112'),(40472,976,0,'Dreaming Glory zone 3520, node 113'),(40473,976,0,'Terocone zone 3520, node 114'),(40474,976,0,'Terocone zone 3520, node 115'),(40475,976,0,'Terocone zone 3520, node 116'),(40476,976,0,'Terocone zone 3520, node 117'),(40477,976,0,'Terocone zone 3520, node 118'),(40478,976,0,'Terocone zone 3520, node 119'),(40479,976,0,'Terocone zone 3520, node 120'),(40480,976,0,'Terocone zone 3520, node 121'),(40699,976,0,'Dreaming Glory zone 3520, node 122'),(40700,976,0,'Dreaming Glory zone 3520, node 123'),(40701,976,0,'Dreaming Glory zone 3520, node 124'),(40702,976,0,'Dreaming Glory zone 3520, node 125'),(42161,976,0,'Felweed zone 3520, node 126'),(42162,976,0,'Nightmare Vine zone 3520, node 127'),(42167,976,0,'Netherdust Bush zone 3520, node 128'),(42168,976,0,'Netherdust Bush zone 3520, node 129'),(42169,976,0,'Netherdust Bush zone 3520, node 130'),(42170,976,0,'Netherdust Bush zone 3520, node 131'),(42171,976,0,'Netherdust Bush zone 3520, node 132'),(42172,976,0,'Netherdust Bush zone 3520, node 133'),(42173,976,0,'Netherdust Bush zone 3520, node 134'),(42174,976,0,'Netherdust Bush zone 3520, node 135'),(42175,976,0,'Netherdust Bush zone 3520, node 136'),(42176,976,0,'Netherdust Bush zone 3520, node 137'),(42256,976,0,'Nightmare Vine zone 3520, node 138'),(42274,976,0,'Nightmare Vine zone 3520, node 139'),(42384,976,0,'Felweed zone 3520, node 140'),(42385,976,0,'Felweed zone 3520, node 141'),(42388,976,0,'Nightmare Vine zone 3520, node 142'),(42389,976,0,'Mana Thistle zone 3520, node 143'),(42390,976,0,'Felweed zone 3520, node 144'),(42391,976,0,'Dreaming Glory zone 3520, node 145'),(42392,976,0,'Nightmare Vine zone 3520, node 146'),(55112,976,0,'Felweed zone 3520, node 147'),(55167,976,0,'Felweed zone 3520, node 148'),(56375,976,0,'Felweed zone 3520, node 149'),(56379,976,0,'Felweed zone 3520, node 150'),(85963,976,0,'Felweed zone 3520, node 151'),(85967,976,0,'Felweed zone 3520, node 152'),(85980,976,0,'Dreaming Glory zone 3520, node 153'),(85981,976,0,'Dreaming Glory zone 3520, node 154'),(85998,976,0,'Netherdust Bush zone 3520, node 155'),(85999,976,0,'Netherdust Bush zone 3520, node 156'),(86000,976,0,'Netherdust Bush zone 3520, node 157'),(86001,976,0,'Netherdust Bush zone 3520, node 158'),(86002,976,0,'Netherdust Bush zone 3520, node 159'),(86003,976,0,'Netherdust Bush zone 3520, node 160'),(86004,976,0,'Netherdust Bush zone 3520, node 161'),(86005,976,0,'Netherdust Bush zone 3520, node 162'),(86006,976,0,'Netherdust Bush zone 3520, node 163'),(86007,976,0,'Netherdust Bush zone 3520, node 164'),(86008,976,0,'Netherdust Bush zone 3520, node 165'),(86009,976,0,'Netherdust Bush zone 3520, node 166'),(86010,976,0,'Netherdust Bush zone 3520, node 167'),(86011,976,0,'Netherdust Bush zone 3520, node 168'),(86012,976,0,'Netherdust Bush zone 3520, node 169'),(86013,976,0,'Netherdust Bush zone 3520, node 170'),(86014,976,0,'Terocone zone 3520, node 171'),(86015,976,0,'Nightmare Vine zone 3520, node 172'),(87049,976,0,'Felweed zone 3520, node 173'),(87054,976,0,'Nightmare Vine zone 3520, node 174'),(21,975,0,'Ragveil zone 3521, node 1'),(1801,975,0,'Ragveil zone 3521, node 2'),(1821,975,0,'Ragveil zone 3521, node 3'),(2730,975,0,'Ragveil zone 3521, node 4'),(16819,975,0,'Ragveil zone 3521, node 5'),(16820,975,0,'Ragveil zone 3521, node 6'),(16824,975,0,'Ragveil zone 3521, node 7'),(16825,975,0,'Ragveil zone 3521, node 8'),(16828,975,0,'Ragveil zone 3521, node 9'),(16829,975,0,'Ragveil zone 3521, node 10'),(16831,975,0,'Ragveil zone 3521, node 11'),(16834,975,0,'Ragveil zone 3521, node 12'),(16835,975,0,'Ragveil zone 3521, node 13'),(16836,975,0,'Ragveil zone 3521, node 14'),(16837,975,0,'Ragveil zone 3521, node 15'),(16839,975,0,'Ragveil zone 3521, node 16'),(16840,975,0,'Ragveil zone 3521, node 17'),(16841,975,0,'Ragveil zone 3521, node 18'),(16842,975,0,'Ragveil zone 3521, node 19'),(16843,975,0,'Ragveil zone 3521, node 20'),(16847,975,0,'Ragveil zone 3521, node 21'),(16848,975,0,'Ragveil zone 3521, node 22'),(16850,975,0,'Ragveil zone 3521, node 23'),(16851,975,0,'Ragveil zone 3521, node 24'),(17172,975,0,'Ragveil zone 3521, node 25'),(17177,975,0,'Ragveil zone 3521, node 26'),(17178,975,0,'Ragveil zone 3521, node 27'),(17180,975,0,'Ragveil zone 3521, node 28'),(17185,975,0,'Ragveil zone 3521, node 29'),(17665,975,0,'Ragveil zone 3521, node 30'),(17779,975,0,'Ragveil zone 3521, node 31'),(17844,975,0,'Ragveil zone 3521, node 32'),(17908,975,0,'Felweed zone 3521, node 33'),(17909,975,0,'Felweed zone 3521, node 34'),(18138,975,0,'Felweed zone 3521, node 35'),(18515,975,0,'Felweed zone 3521, node 36'),(18516,975,0,'Felweed zone 3521, node 37'),(18533,975,0,'Felweed zone 3521, node 38'),(18545,975,0,'Felweed zone 3521, node 39'),(18546,975,0,'Felweed zone 3521, node 40'),(18548,975,0,'Felweed zone 3521, node 41'),(18557,975,0,'Felweed zone 3521, node 42'),(18563,975,0,'Felweed zone 3521, node 43'),(18573,975,0,'Felweed zone 3521, node 44'),(18581,975,0,'Felweed zone 3521, node 45'),(18584,975,0,'Felweed zone 3521, node 46'),(18899,975,0,'Felweed zone 3521, node 47'),(18907,975,0,'Felweed zone 3521, node 48'),(18935,975,0,'Golden Sansam zone 3521, node 49'),(18936,975,0,'Golden Sansam zone 3521, node 50'),(18937,975,0,'Golden Sansam zone 3521, node 51'),(18938,975,0,'Golden Sansam zone 3521, node 52'),(18939,975,0,'Golden Sansam zone 3521, node 53'),(19442,975,0,'Dreamfoil zone 3521, node 54'),(19443,975,0,'Dreamfoil zone 3521, node 55'),(19444,975,0,'Dreamfoil zone 3521, node 56'),(19445,975,0,'Dreamfoil zone 3521, node 57'),(20364,975,0,'Ragveil zone 3521, node 58'),(20390,975,0,'Felweed zone 3521, node 59'),(20409,975,0,'Felweed zone 3521, node 60'),(20411,975,0,'Felweed zone 3521, node 61'),(20417,975,0,'Felweed zone 3521, node 62'),(20418,975,0,'Felweed zone 3521, node 63'),(20421,975,0,'Felweed zone 3521, node 64'),(20422,975,0,'Felweed zone 3521, node 65'),(20424,975,0,'Felweed zone 3521, node 66'),(20461,975,0,'Blindweed zone 3521, node 67'),(20944,975,0,'Ragveil zone 3521, node 68'),(20975,975,0,'Blindweed zone 3521, node 69'),(20984,975,0,'Blindweed zone 3521, node 70'),(20986,975,0,'Blindweed zone 3521, node 71'),(20990,975,0,'Blindweed zone 3521, node 72'),(20991,975,0,'Blindweed zone 3521, node 73'),(20992,975,0,'Blindweed zone 3521, node 74'),(20998,975,0,'Blindweed zone 3521, node 75'),(20999,975,0,'Blindweed zone 3521, node 76'),(21000,975,0,'Blindweed zone 3521, node 77'),(21001,975,0,'Blindweed zone 3521, node 78'),(21002,975,0,'Blindweed zone 3521, node 79'),(21028,975,0,'Blindweed zone 3521, node 80'),(21033,975,0,'Blindweed zone 3521, node 81'),(21034,975,0,'Blindweed zone 3521, node 82'),(21035,975,0,'Blindweed zone 3521, node 83'),(21524,975,0,'Dreaming Glory zone 3521, node 84'),(21525,975,0,'Dreaming Glory zone 3521, node 85'),(21526,975,0,'Dreaming Glory zone 3521, node 86'),(21527,975,0,'Dreaming Glory zone 3521, node 87'),(21553,975,0,'Flame Cap zone 3521, node 88'),(21554,975,0,'Flame Cap zone 3521, node 89'),(23956,975,0,'Ragveil zone 3521, node 90'),(23957,975,0,'Ragveil zone 3521, node 91'),(23958,975,0,'Ragveil zone 3521, node 92'),(23959,975,0,'Ragveil zone 3521, node 93'),(23960,975,0,'Ragveil zone 3521, node 94'),(23961,975,0,'Ragveil zone 3521, node 95'),(23962,975,0,'Ragveil zone 3521, node 96'),(23963,975,0,'Ragveil zone 3521, node 97'),(23964,975,0,'Ragveil zone 3521, node 98'),(23965,975,0,'Ragveil zone 3521, node 99'),(23966,975,0,'Ragveil zone 3521, node 100'),(23967,975,0,'Ragveil zone 3521, node 101'),(23968,975,0,'Ragveil zone 3521, node 102'),(23969,975,0,'Ragveil zone 3521, node 103'),(23970,975,0,'Felweed zone 3521, node 104'),(23971,975,0,'Felweed zone 3521, node 105'),(23972,975,0,'Felweed zone 3521, node 106'),(23973,975,0,'Felweed zone 3521, node 107'),(23974,975,0,'Felweed zone 3521, node 108'),(23975,975,0,'Felweed zone 3521, node 109'),(23976,975,0,'Felweed zone 3521, node 110'),(23977,975,0,'Felweed zone 3521, node 111'),(23978,975,0,'Felweed zone 3521, node 112'),(23979,975,0,'Felweed zone 3521, node 113'),(23980,975,0,'Felweed zone 3521, node 114'),(23986,975,0,'Blindweed zone 3521, node 115'),(23987,975,0,'Blindweed zone 3521, node 116'),(23988,975,0,'Blindweed zone 3521, node 117'),(23989,975,0,'Blindweed zone 3521, node 118'),(28311,975,0,'Golden Sansam zone 3521, node 119'),(28312,975,0,'Felweed zone 3521, node 120'),(28313,975,0,'Ragveil zone 3521, node 121'),(28314,975,0,'Golden Sansam zone 3521, node 122'),(28316,975,0,'Flame Cap zone 3521, node 123'),(30408,975,0,'Ragveil zone 3521, node 124'),(30410,975,0,'Blindweed zone 3521, node 125'),(30417,975,0,'Ragveil zone 3521, node 126'),(30544,975,0,'Ragveil zone 3521, node 127'),(30552,975,0,'Dreaming Glory zone 3521, node 128'),(32479,975,0,'Felweed zone 3521, node 129'),(32629,975,0,'Felweed zone 3521, node 130'),(32729,975,0,'Dreaming Glory zone 3521, node 131'),(32744,975,0,'Ragveil zone 3521, node 133'),(32824,975,0,'Ragveil zone 3521, node 134'),(33440,975,0,'Felweed zone 3521, node 135'),(33835,975,0,'Ragveil zone 3521, node 136'),(33847,975,0,'Felweed zone 3521, node 137'),(34029,975,0,'Felweed zone 3521, node 138'),(40515,975,0,'Felweed zone 3521, node 139'),(40516,975,0,'Felweed zone 3521, node 140'),(40517,975,0,'Felweed zone 3521, node 141'),(40518,975,0,'Felweed zone 3521, node 142'),(40519,975,0,'Felweed zone 3521, node 143'),(40520,975,0,'Felweed zone 3521, node 144'),(40521,975,0,'Felweed zone 3521, node 145'),(40522,975,0,'Felweed zone 3521, node 146'),(40523,975,0,'Felweed zone 3521, node 147'),(40524,975,0,'Felweed zone 3521, node 148'),(40525,975,0,'Felweed zone 3521, node 149'),(40526,975,0,'Felweed zone 3521, node 150'),(40527,975,0,'Felweed zone 3521, node 151'),(40528,975,0,'Felweed zone 3521, node 152'),(40529,975,0,'Felweed zone 3521, node 153'),(40530,975,0,'Felweed zone 3521, node 154'),(40531,975,0,'Felweed zone 3521, node 155'),(40533,975,0,'Flame Cap zone 3521, node 156'),(40534,975,0,'Flame Cap zone 3521, node 157'),(40535,975,0,'Flame Cap zone 3521, node 158'),(40536,975,0,'Flame Cap zone 3521, node 159'),(40537,975,0,'Flame Cap zone 3521, node 160'),(40538,975,0,'Flame Cap zone 3521, node 161'),(40539,975,0,'Flame Cap zone 3521, node 162'),(40540,975,0,'Golden Sansam zone 3521, node 163'),(40541,975,0,'Golden Sansam zone 3521, node 164'),(40542,975,0,'Golden Sansam zone 3521, node 165'),(40543,975,0,'Golden Sansam zone 3521, node 166'),(40544,975,0,'Golden Sansam zone 3521, node 167'),(40545,975,0,'Golden Sansam zone 3521, node 168'),(40546,975,0,'Golden Sansam zone 3521, node 169'),(40547,975,0,'Golden Sansam zone 3521, node 170'),(40561,975,0,'Dreaming Glory zone 3521, node 171'),(40562,975,0,'Dreaming Glory zone 3521, node 172'),(40563,975,0,'Dreaming Glory zone 3521, node 173'),(40564,975,0,'Dreaming Glory zone 3521, node 174'),(40565,975,0,'Dreaming Glory zone 3521, node 175'),(40566,975,0,'Dreaming Glory zone 3521, node 176'),(40567,975,0,'Dreaming Glory zone 3521, node 177'),(40578,975,0,'Ragveil zone 3521, node 178'),(40579,975,0,'Ragveil zone 3521, node 179'),(40580,975,0,'Ragveil zone 3521, node 180'),(40581,975,0,'Ragveil zone 3521, node 181'),(40582,975,0,'Ragveil zone 3521, node 182'),(40583,975,0,'Ragveil zone 3521, node 183'),(40584,975,0,'Ragveil zone 3521, node 184'),(40585,975,0,'Ragveil zone 3521, node 185'),(40586,975,0,'Ragveil zone 3521, node 186'),(40587,975,0,'Ragveil zone 3521, node 187'),(40588,975,0,'Ragveil zone 3521, node 188'),(40589,975,0,'Ragveil zone 3521, node 189'),(40590,975,0,'Ragveil zone 3521, node 190'),(40591,975,0,'Ragveil zone 3521, node 191'),(40592,975,0,'Ragveil zone 3521, node 192'),(40593,975,0,'Ragveil zone 3521, node 193'),(40594,975,0,'Ragveil zone 3521, node 194'),(40595,975,0,'Ragveil zone 3521, node 195'),(40596,975,0,'Ragveil zone 3521, node 196'),(40597,975,0,'Ragveil zone 3521, node 197'),(40598,975,0,'Ragveil zone 3521, node 198'),(40599,975,0,'Ragveil zone 3521, node 199'),(40600,975,0,'Ragveil zone 3521, node 200'),(40601,975,0,'Ragveil zone 3521, node 201'),(40602,975,0,'Ragveil zone 3521, node 202'),(40603,975,0,'Ragveil zone 3521, node 203'),(40604,975,0,'Ragveil zone 3521, node 204'),(40605,975,0,'Ragveil zone 3521, node 205'),(40606,975,0,'Ragveil zone 3521, node 206'),(40607,975,0,'Ragveil zone 3521, node 207'),(40608,975,0,'Ragveil zone 3521, node 208'),(40617,975,0,'Dreamfoil zone 3521, node 209'),(40618,975,0,'Dreamfoil zone 3521, node 210'),(40619,975,0,'Dreamfoil zone 3521, node 211'),(40620,975,0,'Dreamfoil zone 3521, node 212'),(40621,975,0,'Dreamfoil zone 3521, node 213'),(40622,975,0,'Dreamfoil zone 3521, node 214'),(40623,975,0,'Dreamfoil zone 3521, node 215'),(40624,975,0,'Dreamfoil zone 3521, node 216'),(40625,975,0,'Dreamfoil zone 3521, node 217'),(40626,975,0,'Dreamfoil zone 3521, node 218'),(40627,975,0,'Dreamfoil zone 3521, node 219'),(40628,975,0,'Dreamfoil zone 3521, node 220'),(40629,975,0,'Blindweed zone 3521, node 221'),(40630,975,0,'Blindweed zone 3521, node 222'),(40631,975,0,'Blindweed zone 3521, node 223'),(40632,975,0,'Blindweed zone 3521, node 224'),(42178,975,0,'Ragveil zone 3521, node 225'),(42179,975,0,'Felweed zone 3521, node 226'),(42180,975,0,'Felweed zone 3521, node 227'),(42181,975,0,'Felweed zone 3521, node 228'),(42199,975,0,'Dreaming Glory zone 3521, node 229'),(42200,975,0,'Ragveil zone 3521, node 230'),(42201,975,0,'Dreaming Glory zone 3521, node 231'),(42202,975,0,'Dreaming Glory zone 3521, node 232'),(42215,975,0,'Ragveil zone 3521, node 233'),(42216,975,0,'Dreaming Glory zone 3521, node 234'),(42217,975,0,'Ragveil zone 3521, node 235'),(42218,975,0,'Ragveil zone 3521, node 236'),(42226,975,0,'Flame Cap zone 3521, node 237'),(42227,975,0,'Ragveil zone 3521, node 238'),(42228,975,0,'Dreaming Glory zone 3521, node 239'),(42235,975,0,'Dreaming Glory zone 3521, node 240'),(42236,975,0,'Ragveil zone 3521, node 241'),(42237,975,0,'Ragveil zone 3521, node 242'),(42238,975,0,'Felweed zone 3521, node 243'),(42239,975,0,'Felweed zone 3521, node 244'),(42240,975,0,'Ragveil zone 3521, node 245'),(42241,975,0,'Dreaming Glory zone 3521, node 246'),(42242,975,0,'Flame Cap zone 3521, node 247'),(42243,975,0,'Felweed zone 3521, node 248'),(42244,975,0,'Dreaming Glory zone 3521, node 249'),(42245,975,0,'Ragveil zone 3521, node 250'),(42246,975,0,'Ragveil zone 3521, node 251'),(42247,975,0,'Ragveil zone 3521, node 252'),(42248,975,0,'Felweed zone 3521, node 253'),(42295,975,0,'Ragveil zone 3521, node 254'),(42296,975,0,'Ragveil zone 3521, node 255'),(42298,975,0,'Felweed zone 3521, node 256'),(42346,975,0,'Ragveil zone 3521, node 257'),(42430,975,0,'Ragveil zone 3521, node 258'),(61290,975,0,'Flame Cap zone 3521, node 259'),(61291,975,0,'Flame Cap zone 3521, node 260'),(61304,975,0,'Flame Cap zone 3521, node 261'),(61305,975,0,'Flame Cap zone 3521, node 262'),(61312,975,0,'Flame Cap zone 3521, node 263'),(61313,975,0,'Flame Cap zone 3521, node 264'),(61315,975,0,'Flame Cap zone 3521, node 265'),(61316,975,0,'Flame Cap zone 3521, node 266'),(63534,975,0,'Golden Sansam zone 3521, node 267'),(63556,975,0,'Golden Sansam zone 3521, node 268'),(63566,975,0,'Golden Sansam zone 3521, node 269'),(63569,975,0,'Golden Sansam zone 3521, node 270'),(63572,975,0,'Golden Sansam zone 3521, node 271'),(63574,975,0,'Golden Sansam zone 3521, node 272'),(63575,975,0,'Golden Sansam zone 3521, node 273'),(63576,975,0,'Golden Sansam zone 3521, node 274'),(63577,975,0,'Golden Sansam zone 3521, node 275'),(63578,975,0,'Golden Sansam zone 3521, node 276'),(63581,975,0,'Golden Sansam zone 3521, node 277'),(63582,975,0,'Golden Sansam zone 3521, node 278'),(63583,975,0,'Golden Sansam zone 3521, node 279'),(63639,975,0,'Dreamfoil zone 3521, node 280'),(63640,975,0,'Dreamfoil zone 3521, node 281'),(63641,975,0,'Dreamfoil zone 3521, node 282'),(63642,975,0,'Dreamfoil zone 3521, node 283'),(63643,975,0,'Dreamfoil zone 3521, node 284'),(64802,975,0,'Ragveil zone 3521, node 285'),(64803,975,0,'Ragveil zone 3521, node 286'),(64804,975,0,'Ragveil zone 3521, node 287'),(64805,975,0,'Ragveil zone 3521, node 288'),(64806,975,0,'Ragveil zone 3521, node 289'),(64807,975,0,'Ragveil zone 3521, node 290'),(64808,975,0,'Ragveil zone 3521, node 291'),(64809,975,0,'Ragveil zone 3521, node 292'),(64810,975,0,'Ragveil zone 3521, node 293'),(64812,975,0,'Felweed zone 3521, node 294'),(64813,975,0,'Felweed zone 3521, node 295'),(64814,975,0,'Felweed zone 3521, node 296'),(64815,975,0,'Felweed zone 3521, node 297'),(64816,975,0,'Felweed zone 3521, node 298'),(64817,975,0,'Felweed zone 3521, node 299'),(64818,975,0,'Felweed zone 3521, node 300'),(64819,975,0,'Felweed zone 3521, node 301'),(64820,975,0,'Felweed zone 3521, node 302'),(64821,975,0,'Felweed zone 3521, node 303'),(64822,975,0,'Felweed zone 3521, node 304'),(64823,975,0,'Felweed zone 3521, node 305'),(64824,975,0,'Felweed zone 3521, node 306'),(64825,975,0,'Felweed zone 3521, node 307'),(64826,975,0,'Dreaming Glory zone 3521, node 308'),(64828,975,0,'Dreaming Glory zone 3521, node 309'),(64829,975,0,'Dreaming Glory zone 3521, node 310'),(64830,975,0,'Blindweed zone 3521, node 311'),(64831,975,0,'Blindweed zone 3521, node 312'),(64832,975,0,'Blindweed zone 3521, node 313'),(64833,975,0,'Blindweed zone 3521, node 314'),(64846,975,0,'Flame Cap zone 3521, node 315'),(64847,975,0,'Flame Cap zone 3521, node 316'),(64848,975,0,'Flame Cap zone 3521, node 317'),(64849,975,0,'Flame Cap zone 3521, node 318'),(64850,975,0,'Flame Cap zone 3521, node 319'),(64851,975,0,'Flame Cap zone 3521, node 320'),(64852,975,0,'Flame Cap zone 3521, node 321'),(64900,975,0,'Ghost Mushroom zone 3521, node 322'),(64901,975,0,'Ghost Mushroom zone 3521, node 323'),(65265,975,0,'Golden Sansam zone 3521, node 324'),(65266,975,0,'Golden Sansam zone 3521, node 325'),(65267,975,0,'Golden Sansam zone 3521, node 326'),(65268,975,0,'Golden Sansam zone 3521, node 327'),(65269,975,0,'Golden Sansam zone 3521, node 328'),(65275,975,0,'Dreamfoil zone 3521, node 329'),(85916,975,0,'Ragveil zone 3521, node 330'),(85917,975,0,'Ragveil zone 3521, node 331'),(85918,975,0,'Ragveil zone 3521, node 332'),(85919,975,0,'Ragveil zone 3521, node 333'),(85920,975,0,'Ragveil zone 3521, node 334'),(85921,975,0,'Felweed zone 3521, node 335'),(85922,975,0,'Felweed zone 3521, node 336'),(85923,975,0,'Felweed zone 3521, node 337'),(85924,975,0,'Felweed zone 3521, node 338'),(85925,975,0,'Felweed zone 3521, node 339'),(85926,975,0,'Felweed zone 3521, node 340'),(85927,975,0,'Felweed zone 3521, node 341'),(85928,975,0,'Felweed zone 3521, node 342'),(85929,975,0,'Felweed zone 3521, node 343'),(85930,975,0,'Felweed zone 3521, node 344'),(85931,975,0,'Blindweed zone 3521, node 345'),(85932,975,0,'Blindweed zone 3521, node 346'),(85933,975,0,'Blindweed zone 3521, node 347'),(86391,975,0,'Golden Sansam zone 3521, node 353'),(86402,975,0,'Golden Sansam zone 3521, node 354'),(86403,975,0,'Golden Sansam zone 3521, node 355'),(87045,975,0,'Ragveil zone 3521, node 356'),(87046,975,0,'Blindweed zone 3521, node 357'),(87056,975,0,'Dreamfoil zone 3521, node 358'),(87057,975,0,'Dreamfoil zone 3521, node 359'),(87125,975,0,'Ragveil zone 3521, node 360'),(87126,975,0,'Ragveil zone 3521, node 361'),(87127,975,0,'Ragveil zone 3521, node 362'),(87128,975,0,'Ragveil zone 3521, node 363'),(87129,975,0,'Felweed zone 3521, node 364'),(87130,975,0,'Felweed zone 3521, node 365'),(87131,975,0,'Felweed zone 3521, node 366'),(87132,975,0,'Felweed zone 3521, node 367'),(87133,975,0,'Blindweed zone 3521, node 368'),(87134,975,0,'Blindweed zone 3521, node 369'),(87190,975,0,'Ghost Mushroom zone 3521, node 372'),(87300,975,0,'Golden Sansam zone 3521, node 373'),(87302,975,0,'Golden Sansam zone 3521, node 374'),(87398,975,0,'Ragveil zone 3521, node 375'),(87399,975,0,'Ragveil zone 3521, node 376'),(87400,975,0,'Felweed zone 3521, node 377'),(87401,975,0,'Felweed zone 3521, node 378'),(87402,975,0,'Felweed zone 3521, node 379'),(87403,975,0,'Blindweed zone 3521, node 380'),(87499,975,0,'Dreamfoil zone 3521, node 381'),(7486,974,0,'Liferoot zone 3523, node 1'),(7487,974,0,'Liferoot zone 3523, node 2'),(18940,974,0,'Golden Sansam zone 3523, node 3'),(18941,974,0,'Golden Sansam zone 3523, node 4'),(18942,974,0,'Golden Sansam zone 3523, node 5'),(18943,974,0,'Golden Sansam zone 3523, node 6'),(21394,974,0,'Felweed zone 3523, node 7'),(21395,974,0,'Felweed zone 3523, node 8'),(21396,974,0,'Felweed zone 3523, node 9'),(21415,974,0,'Dreaming Glory zone 3523, node 10'),(21416,974,0,'Dreaming Glory zone 3523, node 11'),(21417,974,0,'Dreaming Glory zone 3523, node 12'),(21418,974,0,'Dreaming Glory zone 3523, node 13'),(21419,974,0,'Dreaming Glory zone 3523, node 14'),(21420,974,0,'Dreaming Glory zone 3523, node 15'),(21421,974,0,'Dreaming Glory zone 3523, node 16'),(21422,974,0,'Dreaming Glory zone 3523, node 17'),(21423,974,0,'Dreaming Glory zone 3523, node 18'),(21424,974,0,'Dreaming Glory zone 3523, node 19'),(21425,974,0,'Dreaming Glory zone 3523, node 20'),(21426,974,0,'Dreaming Glory zone 3523, node 21'),(21573,974,0,'Netherbloom zone 3523, node 22'),(21574,974,0,'Netherbloom zone 3523, node 23'),(21575,974,0,'Netherbloom zone 3523, node 24'),(21576,974,0,'Netherbloom zone 3523, node 25'),(21577,974,0,'Netherbloom zone 3523, node 26'),(21578,974,0,'Netherbloom zone 3523, node 27'),(21579,974,0,'Netherbloom zone 3523, node 28'),(21580,974,0,'Netherbloom zone 3523, node 29'),(21581,974,0,'Netherbloom zone 3523, node 30'),(21582,974,0,'Netherbloom zone 3523, node 31'),(21583,974,0,'Netherbloom zone 3523, node 32'),(21584,974,0,'Netherbloom zone 3523, node 33'),(21585,974,0,'Netherbloom zone 3523, node 34'),(21598,974,0,'Mana Thistle zone 3523, node 35'),(21599,974,0,'Mana Thistle zone 3523, node 36'),(22231,974,0,'Dreaming Glory zone 3523, node 37'),(22232,974,0,'Dreaming Glory zone 3523, node 38'),(22233,974,0,'Netherbloom zone 3523, node 39'),(22234,974,0,'Dreaming Glory zone 3523, node 40'),(22235,974,0,'Dreaming Glory zone 3523, node 41'),(22236,974,0,'Felweed zone 3523, node 42'),(28263,974,0,'Netherbloom zone 3523, node 43'),(28268,974,0,'Dreaming Glory zone 3523, node 45'),(28272,974,0,'Golden Sansam zone 3523, node 47'),(28275,974,0,'Netherbloom zone 3523, node 48'),(30844,974,0,'Netherbloom zone 3523, node 50'),(30845,974,0,'Netherbloom zone 3523, node 51'),(30856,974,0,'Netherbloom zone 3523, node 52'),(32781,974,0,'Dreaming Glory zone 3523, node 53'),(32804,974,0,'Netherbloom zone 3523, node 55'),(32806,974,0,'Dreaming Glory zone 3523, node 57'),(32811,974,0,'Netherbloom zone 3523, node 59'),(32813,974,0,'Dreaming Glory zone 3523, node 61'),(40033,974,0,'Liferoot zone 3523, node 63'),(40034,974,0,'Liferoot zone 3523, node 64'),(40035,974,0,'Golden Sansam zone 3523, node 65'),(40042,974,0,'Dreaming Glory zone 3523, node 66'),(40043,974,0,'Dreaming Glory zone 3523, node 67'),(40044,974,0,'Dreaming Glory zone 3523, node 68'),(40045,974,0,'Dreaming Glory zone 3523, node 69'),(40046,974,0,'Dreaming Glory zone 3523, node 70'),(40047,974,0,'Dreaming Glory zone 3523, node 71'),(40048,974,0,'Dreaming Glory zone 3523, node 72'),(40049,974,0,'Dreaming Glory zone 3523, node 73'),(40050,974,0,'Dreaming Glory zone 3523, node 74'),(40051,974,0,'Dreaming Glory zone 3523, node 75'),(40052,974,0,'Dreaming Glory zone 3523, node 76'),(40053,974,0,'Dreaming Glory zone 3523, node 77'),(40054,974,0,'Dreaming Glory zone 3523, node 78'),(40055,974,0,'Dreaming Glory zone 3523, node 79'),(40056,974,0,'Dreaming Glory zone 3523, node 80'),(40057,974,0,'Dreaming Glory zone 3523, node 81'),(40058,974,0,'Dreaming Glory zone 3523, node 82'),(40059,974,0,'Dreaming Glory zone 3523, node 83'),(40060,974,0,'Felweed zone 3523, node 84'),(40061,974,0,'Felweed zone 3523, node 85'),(40062,974,0,'Felweed zone 3523, node 86'),(40063,974,0,'Felweed zone 3523, node 87'),(40064,974,0,'Felweed zone 3523, node 88'),(40065,974,0,'Netherbloom zone 3523, node 89'),(40066,974,0,'Netherbloom zone 3523, node 90'),(40067,974,0,'Netherbloom zone 3523, node 91'),(40068,974,0,'Netherbloom zone 3523, node 92'),(40069,974,0,'Netherbloom zone 3523, node 93'),(40070,974,0,'Netherbloom zone 3523, node 94'),(40071,974,0,'Netherbloom zone 3523, node 95'),(40072,974,0,'Netherbloom zone 3523, node 96'),(40073,974,0,'Netherbloom zone 3523, node 97'),(40074,974,0,'Netherbloom zone 3523, node 98'),(40075,974,0,'Netherbloom zone 3523, node 99'),(40076,974,0,'Netherbloom zone 3523, node 100'),(40077,974,0,'Netherbloom zone 3523, node 101'),(40078,974,0,'Netherbloom zone 3523, node 102'),(40079,974,0,'Netherbloom zone 3523, node 103'),(40080,974,0,'Netherbloom zone 3523, node 104'),(40081,974,0,'Netherbloom zone 3523, node 105'),(40082,974,0,'Netherbloom zone 3523, node 106'),(40083,974,0,'Netherbloom zone 3523, node 107'),(40084,974,0,'Netherbloom zone 3523, node 108'),(40085,974,0,'Netherbloom zone 3523, node 109'),(40086,974,0,'Netherbloom zone 3523, node 110'),(40087,974,0,'Netherbloom zone 3523, node 111'),(40088,974,0,'Netherbloom zone 3523, node 112'),(40089,974,0,'Netherbloom zone 3523, node 113'),(40090,974,0,'Netherbloom zone 3523, node 114'),(40091,974,0,'Netherbloom zone 3523, node 115'),(42163,974,0,'Netherbloom zone 3523, node 116'),(42164,974,0,'Netherbloom zone 3523, node 117'),(42165,974,0,'Netherbloom zone 3523, node 118'),(42166,974,0,'Netherbloom zone 3523, node 119'),(42193,974,0,'Netherbloom zone 3523, node 120'),(42194,974,0,'Dreaming Glory zone 3523, node 121'),(42195,974,0,'Netherbloom zone 3523, node 122'),(42196,974,0,'Dreaming Glory zone 3523, node 123'),(42197,974,0,'Dreaming Glory zone 3523, node 124'),(42210,974,0,'Netherbloom zone 3523, node 125'),(42211,974,0,'Netherbloom zone 3523, node 126'),(42212,974,0,'Dreaming Glory zone 3523, node 127'),(42213,974,0,'Netherbloom zone 3523, node 128'),(42222,974,0,'Netherbloom zone 3523, node 129'),(42223,974,0,'Netherbloom zone 3523, node 130'),(42224,974,0,'Netherbloom zone 3523, node 131'),(42225,974,0,'Netherbloom zone 3523, node 132'),(42231,974,0,'Netherbloom zone 3523, node 133'),(42232,974,0,'Dreaming Glory zone 3523, node 134'),(42263,974,0,'Netherbloom zone 3523, node 135'),(42317,974,0,'Dreaming Glory zone 3523, node 136'),(42325,974,0,'Netherbloom zone 3523, node 137'),(42328,974,0,'Netherbloom zone 3523, node 138'),(42330,974,0,'Dreaming Glory zone 3523, node 139'),(42335,974,0,'Dreaming Glory zone 3523, node 140'),(85961,974,0,'Felweed zone 3523, node 141'),(86398,974,0,'Golden Sansam zone 3523, node 142'),(87151,974,0,'Dreaming Glory zone 3523, node 143'),(87152,974,0,'Dreaming Glory zone 3523, node 144'),(87158,974,0,'Netherbloom zone 3523, node 145'),(87159,974,0,'Netherbloom zone 3523, node 146'),(87160,974,0,'Netherbloom zone 3523, node 147'),(87299,974,0,'Golden Sansam zone 3523, node 148'),(5147,973,0,'Felweed zone 3518, node 1'),(5324,973,0,'Felweed zone 3518, node 2'),(5372,973,0,'Felweed zone 3518, node 3'),(5647,973,0,'Dreaming Glory zone 3518, node 4'),(21349,973,0,'Felweed zone 3518, node 5'),(21350,973,0,'Felweed zone 3518, node 6'),(21351,973,0,'Felweed zone 3518, node 7'),(21352,973,0,'Felweed zone 3518, node 8'),(21353,973,0,'Felweed zone 3518, node 9'),(21354,973,0,'Felweed zone 3518, node 10'),(21355,973,0,'Felweed zone 3518, node 11'),(21356,973,0,'Felweed zone 3518, node 12'),(21357,973,0,'Felweed zone 3518, node 13'),(21358,973,0,'Felweed zone 3518, node 14'),(21359,973,0,'Felweed zone 3518, node 15'),(21360,973,0,'Felweed zone 3518, node 16'),(21361,973,0,'Felweed zone 3518, node 17'),(21362,973,0,'Felweed zone 3518, node 18'),(21363,973,0,'Felweed zone 3518, node 19'),(21364,973,0,'Felweed zone 3518, node 20'),(21456,973,0,'Dreaming Glory zone 3518, node 21'),(21457,973,0,'Dreaming Glory zone 3518, node 22'),(21458,973,0,'Dreaming Glory zone 3518, node 23'),(21459,973,0,'Dreaming Glory zone 3518, node 24'),(21460,973,0,'Dreaming Glory zone 3518, node 25'),(21461,973,0,'Dreaming Glory zone 3518, node 26'),(21462,973,0,'Dreaming Glory zone 3518, node 27'),(21463,973,0,'Dreaming Glory zone 3518, node 28'),(21464,973,0,'Dreaming Glory zone 3518, node 29'),(21465,973,0,'Dreaming Glory zone 3518, node 30'),(21466,973,0,'Dreaming Glory zone 3518, node 31'),(21467,973,0,'Dreaming Glory zone 3518, node 32'),(21468,973,0,'Dreaming Glory zone 3518, node 33'),(21469,973,0,'Dreaming Glory zone 3518, node 34'),(21470,973,0,'Dreaming Glory zone 3518, node 35'),(21471,973,0,'Dreaming Glory zone 3518, node 36'),(21472,973,0,'Dreaming Glory zone 3518, node 37'),(21596,973,0,'Mana Thistle zone 3518, node 38'),(21597,973,0,'Mana Thistle zone 3518, node 39'),(26632,973,0,'Felweed zone 3518, node 40'),(26667,973,0,'Dreaming Glory zone 3518, node 41'),(26673,973,0,'Dreaming Glory zone 3518, node 42'),(26674,973,0,'Dreaming Glory zone 3518, node 43'),(26684,973,0,'Dreaming Glory zone 3518, node 44'),(26694,973,0,'Dreaming Glory zone 3518, node 45'),(26698,973,0,'Dreaming Glory zone 3518, node 46'),(26700,973,0,'Dreaming Glory zone 3518, node 47'),(30581,973,0,'Dreaming Glory zone 3518, node 48'),(30627,973,0,'Dreaming Glory zone 3518, node 49'),(30679,973,0,'Dreaming Glory zone 3518, node 50'),(30680,973,0,'Dreaming Glory zone 3518, node 51'),(40104,973,0,'Mana Thistle zone 3518, node 52'),(40152,973,0,'Felweed zone 3518, node 53'),(40153,973,0,'Felweed zone 3518, node 54'),(40154,973,0,'Felweed zone 3518, node 55'),(40155,973,0,'Felweed zone 3518, node 56'),(40156,973,0,'Felweed zone 3518, node 57'),(40157,973,0,'Felweed zone 3518, node 58'),(40158,973,0,'Felweed zone 3518, node 59'),(40159,973,0,'Felweed zone 3518, node 60'),(40160,973,0,'Felweed zone 3518, node 61'),(40161,973,0,'Felweed zone 3518, node 62'),(40162,973,0,'Felweed zone 3518, node 63'),(40163,973,0,'Felweed zone 3518, node 64'),(40164,973,0,'Felweed zone 3518, node 65'),(40165,973,0,'Felweed zone 3518, node 66'),(40166,973,0,'Felweed zone 3518, node 67'),(40167,973,0,'Felweed zone 3518, node 68'),(40168,973,0,'Felweed zone 3518, node 69'),(40169,973,0,'Felweed zone 3518, node 70'),(40170,973,0,'Felweed zone 3518, node 71'),(40171,973,0,'Felweed zone 3518, node 72'),(40172,973,0,'Felweed zone 3518, node 73'),(40173,973,0,'Felweed zone 3518, node 74'),(40174,973,0,'Felweed zone 3518, node 75'),(40175,973,0,'Felweed zone 3518, node 76'),(40176,973,0,'Felweed zone 3518, node 77'),(40177,973,0,'Felweed zone 3518, node 78'),(40178,973,0,'Felweed zone 3518, node 79'),(40179,973,0,'Felweed zone 3518, node 80'),(40180,973,0,'Felweed zone 3518, node 81'),(40181,973,0,'Felweed zone 3518, node 82'),(40182,973,0,'Felweed zone 3518, node 83'),(40183,973,0,'Dreaming Glory zone 3518, node 84'),(40184,973,0,'Dreaming Glory zone 3518, node 85'),(40185,973,0,'Dreaming Glory zone 3518, node 86'),(40186,973,0,'Dreaming Glory zone 3518, node 87'),(40187,973,0,'Dreaming Glory zone 3518, node 88'),(40188,973,0,'Dreaming Glory zone 3518, node 89'),(40189,973,0,'Dreaming Glory zone 3518, node 90'),(40190,973,0,'Dreaming Glory zone 3518, node 91'),(40191,973,0,'Dreaming Glory zone 3518, node 92'),(40192,973,0,'Dreaming Glory zone 3518, node 93'),(40193,973,0,'Dreaming Glory zone 3518, node 94'),(40194,973,0,'Dreaming Glory zone 3518, node 95'),(40195,973,0,'Dreaming Glory zone 3518, node 96'),(42138,973,0,'Dreaming Glory zone 3518, node 97'),(42139,973,0,'Dreaming Glory zone 3518, node 98'),(42140,973,0,'Felweed zone 3518, node 99'),(42141,973,0,'Mana Thistle zone 3518, node 100'),(42142,973,0,'Dreaming Glory zone 3518, node 101'),(42143,973,0,'Dreaming Glory zone 3518, node 102'),(42144,973,0,'Dreaming Glory zone 3518, node 103'),(42187,973,0,'Felweed zone 3518, node 104'),(42188,973,0,'Felweed zone 3518, node 105'),(42189,973,0,'Felweed zone 3518, node 106'),(42207,973,0,'Dreaming Glory zone 3518, node 107'),(42208,973,0,'Felweed zone 3518, node 108'),(42209,973,0,'Felweed zone 3518, node 109'),(42331,973,0,'Felweed zone 3518, node 110'),(42333,973,0,'Dreaming Glory zone 3518, node 111'),(42393,973,0,'Dreaming Glory zone 3518, node 112'),(42394,973,0,'Felweed zone 3518, node 113'),(42407,973,0,'Dreaming Glory zone 3518, node 114'),(42422,973,0,'Felweed zone 3518, node 115'),(42423,973,0,'Felweed zone 3518, node 116'),(55192,973,0,'Felweed zone 3518, node 117'),(55195,973,0,'Felweed zone 3518, node 118'),(55626,973,0,'Felweed zone 3518, node 119'),(55628,973,0,'Felweed zone 3518, node 120'),(55681,973,0,'Felweed zone 3518, node 121'),(55691,973,0,'Felweed zone 3518, node 122'),(56061,973,0,'Felweed zone 3518, node 123'),(56364,973,0,'Felweed zone 3518, node 124'),(56365,973,0,'Felweed zone 3518, node 125'),(56366,973,0,'Felweed zone 3518, node 126'),(56367,973,0,'Felweed zone 3518, node 127'),(56368,973,0,'Felweed zone 3518, node 128'),(56377,973,0,'Felweed zone 3518, node 129'),(56410,973,0,'Dreaming Glory zone 3518, node 130'),(85964,973,0,'Felweed zone 3518, node 131'),(85968,973,0,'Felweed zone 3518, node 132'),(85982,973,0,'Dreaming Glory zone 3518, node 133'),(85983,973,0,'Dreaming Glory zone 3518, node 134'),(87145,973,0,'Felweed zone 3518, node 135'),(87150,973,0,'Dreaming Glory zone 3518, node 136'),(87413,973,0,'Felweed zone 3518, node 137'),(87416,973,0,'Felweed zone 3518, node 138'),(87417,973,0,'Felweed zone 3518, node 139'),(87427,973,0,'Dreaming Glory zone 3518, node 140'),(87429,973,0,'Dreaming Glory zone 3518, node 141'),(87430,973,0,'Dreaming Glory zone 3518, node 142'),(87431,973,0,'Dreaming Glory zone 3518, node 143'),(87432,973,0,'Dreaming Glory zone 3518, node 144'),(4852,972,0,'Felweed zone 3483, node 1'),(5036,972,0,'Felweed zone 3483, node 2'),(18926,972,0,'Golden Sansam zone 3483, node 3'),(18927,972,0,'Golden Sansam zone 3483, node 4'),(18928,972,0,'Golden Sansam zone 3483, node 5'),(18929,972,0,'Golden Sansam zone 3483, node 6'),(18930,972,0,'Golden Sansam zone 3483, node 7'),(18931,972,0,'Golden Sansam zone 3483, node 8'),(18932,972,0,'Golden Sansam zone 3483, node 9'),(18933,972,0,'Golden Sansam zone 3483, node 10'),(18934,972,0,'Golden Sansam zone 3483, node 11'),(19434,972,0,'Dreamfoil zone 3483, node 12'),(19435,972,0,'Dreamfoil zone 3483, node 13'),(19436,972,0,'Dreamfoil zone 3483, node 14'),(19437,972,0,'Dreamfoil zone 3483, node 15'),(19438,972,0,'Dreamfoil zone 3483, node 16'),(19439,972,0,'Dreamfoil zone 3483, node 17'),(19440,972,0,'Dreamfoil zone 3483, node 18'),(19441,972,0,'Dreamfoil zone 3483, node 19'),(19838,972,0,'Mountain Silversage zone 3483, node 20'),(19839,972,0,'Mountain Silversage zone 3483, node 21'),(19840,972,0,'Mountain Silversage zone 3483, node 22'),(19841,972,0,'Mountain Silversage zone 3483, node 23'),(19842,972,0,'Mountain Silversage zone 3483, node 24'),(21371,972,0,'Felweed zone 3483, node 25'),(21372,972,0,'Felweed zone 3483, node 26'),(21373,972,0,'Felweed zone 3483, node 27'),(21374,972,0,'Felweed zone 3483, node 28'),(21375,972,0,'Felweed zone 3483, node 29'),(21376,972,0,'Felweed zone 3483, node 30'),(21377,972,0,'Felweed zone 3483, node 31'),(21378,972,0,'Felweed zone 3483, node 32'),(21379,972,0,'Felweed zone 3483, node 33'),(21380,972,0,'Felweed zone 3483, node 34'),(21381,972,0,'Felweed zone 3483, node 35'),(21382,972,0,'Felweed zone 3483, node 36'),(21383,972,0,'Felweed zone 3483, node 37'),(21384,972,0,'Felweed zone 3483, node 38'),(21385,972,0,'Felweed zone 3483, node 39'),(21386,972,0,'Felweed zone 3483, node 40'),(21387,972,0,'Felweed zone 3483, node 41'),(21388,972,0,'Felweed zone 3483, node 42'),(21389,972,0,'Felweed zone 3483, node 43'),(21390,972,0,'Felweed zone 3483, node 44'),(21391,972,0,'Felweed zone 3483, node 45'),(21392,972,0,'Felweed zone 3483, node 46'),(21393,972,0,'Felweed zone 3483, node 47'),(21408,972,0,'Dreaming Glory zone 3483, node 48'),(21409,972,0,'Dreaming Glory zone 3483, node 49'),(21410,972,0,'Dreaming Glory zone 3483, node 50'),(21411,972,0,'Dreaming Glory zone 3483, node 51'),(21412,972,0,'Dreaming Glory zone 3483, node 52'),(21413,972,0,'Dreaming Glory zone 3483, node 53'),(21414,972,0,'Dreaming Glory zone 3483, node 54'),(26634,972,0,'Felweed zone 3483, node 55'),(26646,972,0,'Felweed zone 3483, node 56'),(26692,972,0,'Dreaming Glory zone 3483, node 57'),(29695,972,0,'Dreamfoil zone 3483, node 58'),(29705,972,0,'Golden Sansam zone 3483, node 59'),(29712,972,0,'Golden Sansam zone 3483, node 60'),(30385,972,0,'Dreamfoil zone 3483, node 61'),(30386,972,0,'Golden Sansam zone 3483, node 62'),(30388,972,0,'Dreamfoil zone 3483, node 63'),(30389,972,0,'Golden Sansam zone 3483, node 64'),(30393,972,0,'Dreamfoil zone 3483, node 65'),(30394,972,0,'Dreamfoil zone 3483, node 66'),(30396,972,0,'Mountain Silversage zone 3483, node 67'),(30553,972,0,'Felweed zone 3483, node 68'),(30555,972,0,'Felweed zone 3483, node 69'),(30574,972,0,'Felweed zone 3483, node 70'),(30575,972,0,'Dreaming Glory zone 3483, node 71'),(30579,972,0,'Dreaming Glory zone 3483, node 72'),(30651,972,0,'Felweed zone 3483, node 73'),(32107,972,0,'Mountain Silversage zone 3483, node 74'),(32108,972,0,'Felweed zone 3483, node 75'),(32109,972,0,'Dreaming Glory zone 3483, node 76'),(32140,972,0,'Felweed zone 3483, node 78'),(32762,972,0,'Felweed zone 3483, node 79'),(32763,972,0,'Mountain Silversage zone 3483, node 80'),(34964,972,0,'Felweed zone 3483, node 81'),(34966,972,0,'Felweed zone 3483, node 82'),(40004,972,0,'Dreaming Glory zone 3483, node 83'),(40645,972,0,'Dreaming Glory zone 3483, node 84'),(40646,972,0,'Dreaming Glory zone 3483, node 85'),(40647,972,0,'Dreamfoil zone 3483, node 86'),(40648,972,0,'Felweed zone 3483, node 87'),(40649,972,0,'Felweed zone 3483, node 88'),(40650,972,0,'Felweed zone 3483, node 89'),(40651,972,0,'Felweed zone 3483, node 90'),(40652,972,0,'Felweed zone 3483, node 91'),(40653,972,0,'Felweed zone 3483, node 92'),(40654,972,0,'Felweed zone 3483, node 93'),(42182,972,0,'Dreaming Glory zone 3483, node 94'),(42183,972,0,'Felweed zone 3483, node 95'),(42184,972,0,'Felweed zone 3483, node 96'),(42185,972,0,'Felweed zone 3483, node 97'),(42186,972,0,'Felweed zone 3483, node 98'),(42204,972,0,'Felweed zone 3483, node 99'),(42205,972,0,'Felweed zone 3483, node 100'),(42206,972,0,'Felweed zone 3483, node 101'),(42219,972,0,'Felweed zone 3483, node 102'),(42220,972,0,'Felweed zone 3483, node 103'),(42221,972,0,'Felweed zone 3483, node 104'),(42229,972,0,'Felweed zone 3483, node 105'),(42230,972,0,'Felweed zone 3483, node 106'),(42233,972,0,'Felweed zone 3483, node 107'),(42234,972,0,'Felweed zone 3483, node 108'),(42255,972,0,'Dreaming Glory zone 3483, node 109'),(42291,972,0,'Felweed zone 3483, node 110'),(42303,972,0,'Felweed zone 3483, node 111'),(55686,972,0,'Felweed zone 3483, node 112'),(55687,972,0,'Felweed zone 3483, node 113'),(55696,972,0,'Felweed zone 3483, node 114'),(56062,972,0,'Felweed zone 3483, node 115'),(56105,972,0,'Felweed zone 3483, node 116'),(56184,972,0,'Felweed zone 3483, node 117'),(56310,972,0,'Felweed zone 3483, node 118'),(56313,972,0,'Felweed zone 3483, node 119'),(56317,972,0,'Felweed zone 3483, node 120'),(56325,972,0,'Felweed zone 3483, node 121'),(56356,972,0,'Felweed zone 3483, node 122'),(56358,972,0,'Felweed zone 3483, node 123'),(56360,972,0,'Felweed zone 3483, node 124'),(56361,972,0,'Felweed zone 3483, node 125'),(56363,972,0,'Felweed zone 3483, node 126'),(56371,972,0,'Felweed zone 3483, node 127'),(56376,972,0,'Felweed zone 3483, node 128'),(56380,972,0,'Felweed zone 3483, node 129'),(56381,972,0,'Felweed zone 3483, node 130'),(56382,972,0,'Felweed zone 3483, node 131'),(56383,972,0,'Felweed zone 3483, node 132'),(56384,972,0,'Felweed zone 3483, node 133'),(56385,972,0,'Felweed zone 3483, node 134'),(56386,972,0,'Felweed zone 3483, node 135'),(56405,972,0,'Felweed zone 3483, node 136'),(56406,972,0,'Felweed zone 3483, node 137'),(56407,972,0,'Felweed zone 3483, node 138'),(56408,972,0,'Felweed zone 3483, node 139'),(56409,972,0,'Felweed zone 3483, node 140'),(56418,972,0,'Dreaming Glory zone 3483, node 141'),(56419,972,0,'Dreaming Glory zone 3483, node 142'),(56420,972,0,'Dreaming Glory zone 3483, node 143'),(63549,972,0,'Golden Sansam zone 3483, node 144'),(63554,972,0,'Golden Sansam zone 3483, node 145'),(63558,972,0,'Golden Sansam zone 3483, node 146'),(63562,972,0,'Golden Sansam zone 3483, node 147'),(63563,972,0,'Golden Sansam zone 3483, node 148'),(63564,972,0,'Golden Sansam zone 3483, node 149'),(63565,972,0,'Golden Sansam zone 3483, node 150'),(63579,972,0,'Golden Sansam zone 3483, node 151'),(63580,972,0,'Golden Sansam zone 3483, node 152'),(63585,972,0,'Golden Sansam zone 3483, node 153'),(63586,972,0,'Golden Sansam zone 3483, node 154'),(63587,972,0,'Golden Sansam zone 3483, node 155'),(63588,972,0,'Golden Sansam zone 3483, node 156'),(63589,972,0,'Golden Sansam zone 3483, node 157'),(63590,972,0,'Golden Sansam zone 3483, node 158'),(63591,972,0,'Golden Sansam zone 3483, node 159'),(63592,972,0,'Golden Sansam zone 3483, node 160'),(63595,972,0,'Dreamfoil zone 3483, node 161'),(63596,972,0,'Dreamfoil zone 3483, node 162'),(63597,972,0,'Dreamfoil zone 3483, node 163'),(63598,972,0,'Dreamfoil zone 3483, node 164'),(63610,972,0,'Dreamfoil zone 3483, node 165'),(63614,972,0,'Dreamfoil zone 3483, node 166'),(63622,972,0,'Dreamfoil zone 3483, node 167'),(63630,972,0,'Dreamfoil zone 3483, node 168'),(63631,972,0,'Dreamfoil zone 3483, node 169'),(63644,972,0,'Dreamfoil zone 3483, node 170'),(63645,972,0,'Dreamfoil zone 3483, node 171'),(63646,972,0,'Dreamfoil zone 3483, node 172'),(63647,972,0,'Dreamfoil zone 3483, node 173'),(63648,972,0,'Dreamfoil zone 3483, node 174'),(63649,972,0,'Dreamfoil zone 3483, node 175'),(63650,972,0,'Dreamfoil zone 3483, node 176'),(63651,972,0,'Dreamfoil zone 3483, node 177'),(63652,972,0,'Dreamfoil zone 3483, node 178'),(63655,972,0,'Mountain Silversage zone 3483, node 179'),(63659,972,0,'Mountain Silversage zone 3483, node 180'),(63660,972,0,'Mountain Silversage zone 3483, node 181'),(63661,972,0,'Mountain Silversage zone 3483, node 182'),(63666,972,0,'Mountain Silversage zone 3483, node 183'),(63669,972,0,'Mountain Silversage zone 3483, node 184'),(63672,972,0,'Mountain Silversage zone 3483, node 185'),(63673,972,0,'Mountain Silversage zone 3483, node 186'),(63674,972,0,'Mountain Silversage zone 3483, node 187'),(63675,972,0,'Mountain Silversage zone 3483, node 188'),(63676,972,0,'Mountain Silversage zone 3483, node 189'),(63677,972,0,'Mountain Silversage zone 3483, node 190'),(63678,972,0,'Mountain Silversage zone 3483, node 191'),(63679,972,0,'Mountain Silversage zone 3483, node 192'),(63680,972,0,'Mountain Silversage zone 3483, node 193'),(64836,972,0,'Felweed zone 3483, node 194'),(65264,972,0,'Golden Sansam zone 3483, node 195'),(65271,972,0,'Dreamfoil zone 3483, node 196'),(65272,972,0,'Dreamfoil zone 3483, node 197'),(65273,972,0,'Dreamfoil zone 3483, node 198'),(65274,972,0,'Dreamfoil zone 3483, node 199'),(65276,972,0,'Dreamfoil zone 3483, node 200'),(65278,972,0,'Mountain Silversage zone 3483, node 201'),(65279,972,0,'Mountain Silversage zone 3483, node 202'),(85962,972,0,'Felweed zone 3483, node 203'),(85965,972,0,'Felweed zone 3483, node 204'),(85966,972,0,'Felweed zone 3483, node 205'),(85970,972,0,'Felweed zone 3483, node 206'),(85971,972,0,'Felweed zone 3483, node 207'),(85972,972,0,'Felweed zone 3483, node 208'),(85973,972,0,'Felweed zone 3483, node 209'),(85974,972,0,'Felweed zone 3483, node 210'),(85975,972,0,'Felweed zone 3483, node 211'),(85976,972,0,'Felweed zone 3483, node 212'),(85978,972,0,'Felweed zone 3483, node 213'),(85984,972,0,'Dreaming Glory zone 3483, node 214'),(85985,972,0,'Dreaming Glory zone 3483, node 215'),(85986,972,0,'Dreaming Glory zone 3483, node 216'),(85987,972,0,'Dreaming Glory zone 3483, node 217'),(85990,972,0,'Dreaming Glory zone 3483, node 218'),(85991,972,0,'Dreaming Glory zone 3483, node 219'),(86396,972,0,'Golden Sansam zone 3483, node 220'),(86397,972,0,'Golden Sansam zone 3483, node 221'),(86399,972,0,'Golden Sansam zone 3483, node 222'),(86400,972,0,'Golden Sansam zone 3483, node 223'),(86401,972,0,'Golden Sansam zone 3483, node 224'),(86404,972,0,'Golden Sansam zone 3483, node 225'),(86427,972,0,'Dreamfoil zone 3483, node 226'),(86429,972,0,'Dreamfoil zone 3483, node 227'),(86430,972,0,'Dreamfoil zone 3483, node 228'),(86431,972,0,'Dreamfoil zone 3483, node 229'),(86432,972,0,'Dreamfoil zone 3483, node 230'),(86433,972,0,'Dreamfoil zone 3483, node 231'),(86434,972,0,'Dreamfoil zone 3483, node 232'),(86455,972,0,'Mountain Silversage zone 3483, node 233'),(86456,972,0,'Mountain Silversage zone 3483, node 234'),(86457,972,0,'Mountain Silversage zone 3483, node 235'),(86458,972,0,'Mountain Silversage zone 3483, node 236'),(86459,972,0,'Mountain Silversage zone 3483, node 237'),(86460,972,0,'Mountain Silversage zone 3483, node 238'),(86461,972,0,'Mountain Silversage zone 3483, node 239'),(86462,972,0,'Mountain Silversage zone 3483, node 240'),(86463,972,0,'Mountain Silversage zone 3483, node 241'),(86464,972,0,'Mountain Silversage zone 3483, node 242'),(86465,972,0,'Mountain Silversage zone 3483, node 243'),(87053,972,0,'Dreaming Glory zone 3483, node 244'),(87055,972,0,'Golden Sansam zone 3483, node 245'),(87147,972,0,'Felweed zone 3483, node 246'),(87154,972,0,'Dreaming Glory zone 3483, node 247'),(87301,972,0,'Golden Sansam zone 3483, node 248'),(87303,972,0,'Golden Sansam zone 3483, node 249'),(87304,972,0,'Golden Sansam zone 3483, node 250'),(87307,972,0,'Dreamfoil zone 3483, node 251'),(87410,972,0,'Felweed zone 3483, node 252'),(87411,972,0,'Felweed zone 3483, node 253'),(87412,972,0,'Felweed zone 3483, node 254'),(87415,972,0,'Felweed zone 3483, node 255'),(87420,972,0,'Felweed zone 3483, node 256'),(87421,972,0,'Felweed zone 3483, node 257'),(87422,972,0,'Felweed zone 3483, node 258'),(87423,972,0,'Felweed zone 3483, node 259'),(87424,972,0,'Felweed zone 3483, node 260'),(87425,972,0,'Felweed zone 3483, node 261'),(87426,972,0,'Felweed zone 3483, node 262'),(87428,972,0,'Dreaming Glory zone 3483, node 263'),(87433,972,0,'Dreaming Glory zone 3483, node 264'),(87434,972,0,'Dreaming Glory zone 3483, node 265'),(87435,972,0,'Dreaming Glory zone 3483, node 266'),(87436,972,0,'Dreaming Glory zone 3483, node 267'),(87490,972,0,'Golden Sansam zone 3483, node 268'),(87491,972,0,'Golden Sansam zone 3483, node 269'),(87492,972,0,'Golden Sansam zone 3483, node 270'),(87496,972,0,'Dreamfoil zone 3483, node 271'),(87497,972,0,'Dreamfoil zone 3483, node 272'),(87498,972,0,'Dreamfoil zone 3483, node 273'),(87504,972,0,'Mountain Silversage zone 3483, node 274'),(87505,972,0,'Mountain Silversage zone 3483, node 275'),(99814,972,0,'Felweed zone 3483, node 276'),(99815,972,0,'Nightmare Vine zone 3483, node 277'),(99816,972,0,'Nightmare Vine zone 3483, node 278'),(1295,971,0,'Silverleaf zone 3524, node 1'),(1296,971,0,'Silverleaf zone 3524, node 2'),(1297,971,0,'Silverleaf zone 3524, node 3'),(1298,971,0,'Silverleaf zone 3524, node 4'),(1299,971,0,'Silverleaf zone 3524, node 5'),(1300,971,0,'Silverleaf zone 3524, node 6'),(1301,971,0,'Silverleaf zone 3524, node 7'),(1302,971,0,'Silverleaf zone 3524, node 8'),(1303,971,0,'Silverleaf zone 3524, node 9'),(1304,971,0,'Silverleaf zone 3524, node 10'),(1305,971,0,'Silverleaf zone 3524, node 11'),(1306,971,0,'Silverleaf zone 3524, node 12'),(1307,971,0,'Silverleaf zone 3524, node 13'),(1329,971,0,'Peacebloom zone 3524, node 14'),(1330,971,0,'Peacebloom zone 3524, node 15'),(1331,971,0,'Peacebloom zone 3524, node 16'),(1332,971,0,'Peacebloom zone 3524, node 17'),(1333,971,0,'Peacebloom zone 3524, node 18'),(1334,971,0,'Peacebloom zone 3524, node 19'),(1335,971,0,'Peacebloom zone 3524, node 20'),(1336,971,0,'Peacebloom zone 3524, node 21'),(1337,971,0,'Peacebloom zone 3524, node 22'),(1338,971,0,'Peacebloom zone 3524, node 23'),(1339,971,0,'Peacebloom zone 3524, node 24'),(1340,971,0,'Peacebloom zone 3524, node 25'),(1341,971,0,'Peacebloom zone 3524, node 26'),(1342,971,0,'Peacebloom zone 3524, node 27'),(1343,971,0,'Peacebloom zone 3524, node 28'),(1344,971,0,'Peacebloom zone 3524, node 29'),(1882,971,0,'Earthroot zone 3524, node 30'),(1883,971,0,'Earthroot zone 3524, node 31'),(1884,971,0,'Earthroot zone 3524, node 32'),(1885,971,0,'Earthroot zone 3524, node 33'),(1886,971,0,'Earthroot zone 3524, node 34'),(1887,971,0,'Earthroot zone 3524, node 35'),(1888,971,0,'Earthroot zone 3524, node 36'),(1889,971,0,'Earthroot zone 3524, node 37'),(1890,971,0,'Earthroot zone 3524, node 38'),(1891,971,0,'Earthroot zone 3524, node 39'),(1892,971,0,'Earthroot zone 3524, node 40'),(1893,971,0,'Earthroot zone 3524, node 41'),(1894,971,0,'Earthroot zone 3524, node 42'),(16531,971,0,'Gromsblood zone 3524, node 43'),(30446,971,0,'Silverleaf zone 3524, node 44'),(30447,971,0,'Peacebloom zone 3524, node 45'),(30454,971,0,'Peacebloom zone 3524, node 46'),(30461,971,0,'Silverleaf zone 3524, node 47'),(30464,971,0,'Peacebloom zone 3524, node 48'),(30469,971,0,'Silverleaf zone 3524, node 49'),(30471,971,0,'Earthroot zone 3524, node 50'),(30477,971,0,'Silverleaf zone 3524, node 51'),(30480,971,0,'Peacebloom zone 3524, node 52'),(30482,971,0,'Silverleaf zone 3524, node 53'),(30495,971,0,'Peacebloom zone 3524, node 54'),(30499,971,0,'Silverleaf zone 3524, node 55'),(30500,971,0,'Peacebloom zone 3524, node 56'),(30501,971,0,'Silverleaf zone 3524, node 57'),(30506,971,0,'Peacebloom zone 3524, node 58'),(30518,971,0,'Silverleaf zone 3524, node 59'),(30526,971,0,'Silverleaf zone 3524, node 60'),(30527,971,0,'Earthroot zone 3524, node 61'),(30530,971,0,'Peacebloom zone 3524, node 62'),(30532,971,0,'Peacebloom zone 3524, node 63'),(39946,971,0,'Silverleaf zone 3524, node 64'),(39947,971,0,'Silverleaf zone 3524, node 65'),(85302,971,0,'Silverleaf zone 3524, node 66'),(85303,971,0,'Silverleaf zone 3524, node 67'),(85304,971,0,'Silverleaf zone 3524, node 68'),(85305,971,0,'Silverleaf zone 3524, node 69'),(85306,971,0,'Silverleaf zone 3524, node 70'),(85307,971,0,'Silverleaf zone 3524, node 71'),(85308,971,0,'Silverleaf zone 3524, node 72'),(85309,971,0,'Silverleaf zone 3524, node 73'),(85310,971,0,'Silverleaf zone 3524, node 74'),(85311,971,0,'Silverleaf zone 3524, node 75'),(85312,971,0,'Peacebloom zone 3524, node 76'),(85313,971,0,'Peacebloom zone 3524, node 77'),(85314,971,0,'Peacebloom zone 3524, node 78'),(85315,971,0,'Peacebloom zone 3524, node 79'),(85316,971,0,'Peacebloom zone 3524, node 80'),(85317,971,0,'Peacebloom zone 3524, node 81'),(85318,971,0,'Peacebloom zone 3524, node 82'),(85319,971,0,'Earthroot zone 3524, node 83'),(85320,971,0,'Earthroot zone 3524, node 84'),(85321,971,0,'Earthroot zone 3524, node 85'),(85323,971,0,'Earthroot zone 3524, node 86'),(85324,971,0,'Earthroot zone 3524, node 87'),(85325,971,0,'Earthroot zone 3524, node 88'),(85326,971,0,'Earthroot zone 3524, node 89'),(85329,971,0,'Silverleaf zone 3524, node 90'),(85332,971,0,'Silverleaf zone 3524, node 91'),(85333,971,0,'Silverleaf zone 3524, node 92'),(85338,971,0,'Silverleaf zone 3524, node 93'),(85348,971,0,'Silverleaf zone 3524, node 94'),(85352,971,0,'Silverleaf zone 3524, node 95'),(85356,971,0,'Silverleaf zone 3524, node 96'),(85364,971,0,'Peacebloom zone 3524, node 97'),(85369,971,0,'Peacebloom zone 3524, node 98'),(85372,971,0,'Peacebloom zone 3524, node 99'),(85387,971,0,'Earthroot zone 3524, node 100'),(85388,971,0,'Earthroot zone 3524, node 101'),(85389,971,0,'Earthroot zone 3524, node 102'),(86161,971,0,'Silverleaf zone 3524, node 103'),(86173,971,0,'Silverleaf zone 3524, node 104'),(86180,971,0,'Silverleaf zone 3524, node 105'),(86191,971,0,'Silverleaf zone 3524, node 106'),(86193,971,0,'Silverleaf zone 3524, node 107'),(86194,971,0,'Silverleaf zone 3524, node 108'),(86197,971,0,'Peacebloom zone 3524, node 109'),(86218,971,0,'Peacebloom zone 3524, node 110'),(86221,971,0,'Earthroot zone 3524, node 111'),(86242,971,0,'Earthroot zone 3524, node 112'),(86243,971,0,'Earthroot zone 3524, node 113'),(86244,971,0,'Earthroot zone 3524, node 114'),(87059,971,0,'Earthroot zone 3524, node 115'),(1268,970,0,'Silverleaf zone 3430, node 1'),(1269,970,0,'Silverleaf zone 3430, node 2'),(1270,970,0,'Silverleaf zone 3430, node 3'),(1271,970,0,'Silverleaf zone 3430, node 4'),(1272,970,0,'Silverleaf zone 3430, node 5'),(1273,970,0,'Silverleaf zone 3430, node 6'),(1274,970,0,'Silverleaf zone 3430, node 7'),(1275,970,0,'Silverleaf zone 3430, node 8'),(1276,970,0,'Silverleaf zone 3430, node 9'),(1277,970,0,'Silverleaf zone 3430, node 10'),(1278,970,0,'Silverleaf zone 3430, node 11'),(1279,970,0,'Silverleaf zone 3430, node 12'),(1280,970,0,'Silverleaf zone 3430, node 13'),(1281,970,0,'Silverleaf zone 3430, node 14'),(1282,970,0,'Silverleaf zone 3430, node 15'),(1283,970,0,'Silverleaf zone 3430, node 16'),(1284,970,0,'Silverleaf zone 3430, node 17'),(1285,970,0,'Silverleaf zone 3430, node 18'),(1286,970,0,'Silverleaf zone 3430, node 19'),(1287,970,0,'Silverleaf zone 3430, node 20'),(1288,970,0,'Silverleaf zone 3430, node 21'),(1289,970,0,'Silverleaf zone 3430, node 22'),(1290,970,0,'Silverleaf zone 3430, node 23'),(1292,970,0,'Silverleaf zone 3430, node 24'),(1293,970,0,'Silverleaf zone 3430, node 25'),(1294,970,0,'Silverleaf zone 3430, node 26'),(1308,970,0,'Peacebloom zone 3430, node 27'),(1309,970,0,'Peacebloom zone 3430, node 28'),(1310,970,0,'Peacebloom zone 3430, node 29'),(1311,970,0,'Peacebloom zone 3430, node 30'),(1312,970,0,'Peacebloom zone 3430, node 31'),(1313,970,0,'Peacebloom zone 3430, node 32'),(1314,970,0,'Peacebloom zone 3430, node 33'),(1315,970,0,'Peacebloom zone 3430, node 34'),(1316,970,0,'Peacebloom zone 3430, node 35'),(1317,970,0,'Peacebloom zone 3430, node 36'),(1318,970,0,'Peacebloom zone 3430, node 37'),(1319,970,0,'Peacebloom zone 3430, node 38'),(1320,970,0,'Peacebloom zone 3430, node 39'),(1321,970,0,'Peacebloom zone 3430, node 40'),(1322,970,0,'Peacebloom zone 3430, node 41'),(1323,970,0,'Peacebloom zone 3430, node 42'),(1324,970,0,'Peacebloom zone 3430, node 43'),(1325,970,0,'Peacebloom zone 3430, node 44'),(1326,970,0,'Peacebloom zone 3430, node 45'),(1327,970,0,'Peacebloom zone 3430, node 46'),(1328,970,0,'Peacebloom zone 3430, node 47'),(1872,970,0,'Earthroot zone 3430, node 48'),(1873,970,0,'Earthroot zone 3430, node 49'),(1874,970,0,'Earthroot zone 3430, node 50'),(1875,970,0,'Earthroot zone 3430, node 51'),(1876,970,0,'Earthroot zone 3430, node 52'),(1877,970,0,'Earthroot zone 3430, node 53'),(1878,970,0,'Earthroot zone 3430, node 54'),(1879,970,0,'Earthroot zone 3430, node 55'),(1880,970,0,'Earthroot zone 3430, node 56'),(1881,970,0,'Earthroot zone 3430, node 57'),(21297,970,0,'Bloodthistle zone 3430, node 58'),(21298,970,0,'Bloodthistle zone 3430, node 59'),(21299,970,0,'Bloodthistle zone 3430, node 60'),(21300,970,0,'Bloodthistle zone 3430, node 61'),(21301,970,0,'Bloodthistle zone 3430, node 62'),(21302,970,0,'Bloodthistle zone 3430, node 63'),(21303,970,0,'Bloodthistle zone 3430, node 64'),(21304,970,0,'Bloodthistle zone 3430, node 65'),(21305,970,0,'Bloodthistle zone 3430, node 66'),(21306,970,0,'Bloodthistle zone 3430, node 67'),(21307,970,0,'Bloodthistle zone 3430, node 68'),(21308,970,0,'Bloodthistle zone 3430, node 69'),(21309,970,0,'Bloodthistle zone 3430, node 70'),(21310,970,0,'Bloodthistle zone 3430, node 71'),(21311,970,0,'Bloodthistle zone 3430, node 72'),(21312,970,0,'Bloodthistle zone 3430, node 73'),(21313,970,0,'Bloodthistle zone 3430, node 74'),(21314,970,0,'Bloodthistle zone 3430, node 75'),(21315,970,0,'Bloodthistle zone 3430, node 76'),(21316,970,0,'Bloodthistle zone 3430, node 77'),(21317,970,0,'Bloodthistle zone 3430, node 78'),(21318,970,0,'Bloodthistle zone 3430, node 79'),(21319,970,0,'Bloodthistle zone 3430, node 80'),(21320,970,0,'Bloodthistle zone 3430, node 81'),(33888,970,0,'Silverleaf zone 3430, node 82'),(33889,970,0,'Peacebloom zone 3430, node 83'),(33893,970,0,'Peacebloom zone 3430, node 84'),(33896,970,0,'Bloodthistle zone 3430, node 85'),(33897,970,0,'Bloodthistle zone 3430, node 86'),(33900,970,0,'Bloodthistle zone 3430, node 87'),(33901,970,0,'Earthroot zone 3430, node 88'),(33908,970,0,'Bloodthistle zone 3430, node 89'),(33909,970,0,'Silverleaf zone 3430, node 90'),(33910,970,0,'Peacebloom zone 3430, node 91'),(33912,970,0,'Peacebloom zone 3430, node 92'),(33914,970,0,'Peacebloom zone 3430, node 93'),(33915,970,0,'Silverleaf zone 3430, node 94'),(33916,970,0,'Silverleaf zone 3430, node 95'),(33917,970,0,'Silverleaf zone 3430, node 96'),(33918,970,0,'Silverleaf zone 3430, node 97'),(33927,970,0,'Earthroot zone 3430, node 98'),(33930,970,0,'Peacebloom zone 3430, node 99'),(33931,970,0,'Bloodthistle zone 3430, node 100'),(33933,970,0,'Peacebloom zone 3430, node 101'),(33935,970,0,'Peacebloom zone 3430, node 102'),(33936,970,0,'Silverleaf zone 3430, node 103'),(33937,970,0,'Bloodthistle zone 3430, node 104'),(33938,970,0,'Bloodthistle zone 3430, node 105'),(33939,970,0,'Bloodthistle zone 3430, node 106'),(33940,970,0,'Bloodthistle zone 3430, node 107'),(33941,970,0,'Silverleaf zone 3430, node 108'),(33942,970,0,'Bloodthistle zone 3430, node 109'),(33943,970,0,'Peacebloom zone 3430, node 110'),(33944,970,0,'Silverleaf zone 3430, node 111'),(33946,970,0,'Bloodthistle zone 3430, node 112'),(33949,970,0,'Earthroot zone 3430, node 113'),(33950,970,0,'Silverleaf zone 3430, node 114'),(33952,970,0,'Silverleaf zone 3430, node 115'),(33954,970,0,'Peacebloom zone 3430, node 116'),(33955,970,0,'Silverleaf zone 3430, node 117'),(64924,970,0,'Silverleaf zone 3430, node 118'),(64925,970,0,'Silverleaf zone 3430, node 119'),(64926,970,0,'Silverleaf zone 3430, node 120'),(64927,970,0,'Silverleaf zone 3430, node 121'),(64929,970,0,'Silverleaf zone 3430, node 122'),(64935,970,0,'Silverleaf zone 3430, node 123'),(64937,970,0,'Silverleaf zone 3430, node 124'),(64938,970,0,'Silverleaf zone 3430, node 125'),(64939,970,0,'Silverleaf zone 3430, node 126'),(64940,970,0,'Silverleaf zone 3430, node 127'),(64947,970,0,'Peacebloom zone 3430, node 128'),(64948,970,0,'Peacebloom zone 3430, node 129'),(64958,970,0,'Peacebloom zone 3430, node 130'),(64959,970,0,'Peacebloom zone 3430, node 131'),(64960,970,0,'Peacebloom zone 3430, node 132'),(64961,970,0,'Peacebloom zone 3430, node 133'),(64962,970,0,'Peacebloom zone 3430, node 134'),(64963,970,0,'Peacebloom zone 3430, node 135'),(64969,970,0,'Peacebloom zone 3430, node 136'),(64970,970,0,'Peacebloom zone 3430, node 137'),(64971,970,0,'Peacebloom zone 3430, node 138'),(64977,970,0,'Earthroot zone 3430, node 139'),(64978,970,0,'Earthroot zone 3430, node 140'),(64992,970,0,'Earthroot zone 3430, node 141'),(64993,970,0,'Earthroot zone 3430, node 142'),(64994,970,0,'Earthroot zone 3430, node 143'),(64996,970,0,'Earthroot zone 3430, node 144'),(64997,970,0,'Earthroot zone 3430, node 145'),(64998,970,0,'Earthroot zone 3430, node 146'),(65124,970,0,'Bloodthistle zone 3430, node 147'),(65125,970,0,'Bloodthistle zone 3430, node 148'),(65126,970,0,'Bloodthistle zone 3430, node 149'),(65127,970,0,'Bloodthistle zone 3430, node 150'),(65128,970,0,'Bloodthistle zone 3430, node 151'),(65129,970,0,'Bloodthistle zone 3430, node 152'),(65130,970,0,'Bloodthistle zone 3430, node 153'),(65131,970,0,'Bloodthistle zone 3430, node 154'),(65132,970,0,'Bloodthistle zone 3430, node 155'),(65133,970,0,'Bloodthistle zone 3430, node 156'),(65134,970,0,'Bloodthistle zone 3430, node 157'),(65135,970,0,'Bloodthistle zone 3430, node 158'),(87202,970,0,'Silverleaf zone 3430, node 159'),(1291,969,0,'Silverleaf zone 3433, node 1'),(27209,969,0,'Earthroot zone 3433, node 2'),(27233,969,0,'Mageroyal zone 3433, node 3'),(27237,969,0,'Silverleaf zone 3433, node 4'),(27242,969,0,'Silverleaf zone 3433, node 5'),(27253,969,0,'Silverleaf zone 3433, node 6'),(27269,969,0,'Briarthorn zone 3433, node 7'),(27270,969,0,'Silverleaf zone 3433, node 8'),(27271,969,0,'Peacebloom zone 3433, node 9'),(27273,969,0,'Earthroot zone 3433, node 10'),(27275,969,0,'Peacebloom zone 3433, node 11'),(27294,969,0,'Briarthorn zone 3433, node 12'),(27300,969,0,'Silverleaf zone 3433, node 13'),(27302,969,0,'Bruiseweed zone 3433, node 14'),(27303,969,0,'Silverleaf zone 3433, node 15'),(27308,969,0,'Briarthorn zone 3433, node 16'),(27309,969,0,'Bruiseweed zone 3433, node 17'),(27310,969,0,'Earthroot zone 3433, node 18'),(27323,969,0,'Mageroyal zone 3433, node 19'),(27369,969,0,'Silverleaf zone 3433, node 20'),(27380,969,0,'Silverleaf zone 3433, node 21'),(27386,969,0,'Briarthorn zone 3433, node 22'),(27387,969,0,'Peacebloom zone 3433, node 23'),(27390,969,0,'Silverleaf zone 3433, node 24'),(27423,969,0,'Silverleaf zone 3433, node 25'),(27426,969,0,'Earthroot zone 3433, node 26'),(27427,969,0,'Mageroyal zone 3433, node 27'),(27430,969,0,'Earthroot zone 3433, node 28'),(27433,969,0,'Stranglekelp zone 3433, node 29'),(27434,969,0,'Stranglekelp zone 3433, node 30'),(27440,969,0,'Silverleaf zone 3433, node 31'),(27450,969,0,'Silverleaf zone 3433, node 32'),(27451,969,0,'Bruiseweed zone 3433, node 33'),(27456,969,0,'Earthroot zone 3433, node 34'),(27457,969,0,'Stranglekelp zone 3433, node 35'),(27458,969,0,'Briarthorn zone 3433, node 36'),(27459,969,0,'Silverleaf zone 3433, node 37'),(27460,969,0,'Peacebloom zone 3433, node 38'),(27461,969,0,'Silverleaf zone 3433, node 39'),(27466,969,0,'Peacebloom zone 3433, node 40'),(27468,969,0,'Silverleaf zone 3433, node 41'),(27491,969,0,'Peacebloom zone 3433, node 42'),(27492,969,0,'Peacebloom zone 3433, node 43'),(27494,969,0,'Stranglekelp zone 3433, node 44'),(27495,969,0,'Silverleaf zone 3433, node 45'),(27496,969,0,'Earthroot zone 3433, node 46'),(27513,969,0,'Mageroyal zone 3433, node 47'),(27526,969,0,'Mageroyal zone 3433, node 48'),(27527,969,0,'Mageroyal zone 3433, node 49'),(27528,969,0,'Silverleaf zone 3433, node 50'),(27529,969,0,'Peacebloom zone 3433, node 51'),(27531,969,0,'Silverleaf zone 3433, node 52'),(27535,969,0,'Briarthorn zone 3433, node 53'),(27537,969,0,'Mageroyal zone 3433, node 54'),(27538,969,0,'Silverleaf zone 3433, node 55'),(27539,969,0,'Bruiseweed zone 3433, node 56'),(27540,969,0,'Bruiseweed zone 3433, node 57'),(33289,969,0,'Bruiseweed zone 3433, node 58'),(33295,969,0,'Silverleaf zone 3433, node 59'),(33296,969,0,'Peacebloom zone 3433, node 60'),(33297,969,0,'Briarthorn zone 3433, node 61'),(33298,969,0,'Peacebloom zone 3433, node 62'),(33299,969,0,'Silverleaf zone 3433, node 63'),(33885,969,0,'Peacebloom zone 3433, node 64'),(33956,969,0,'Earthroot zone 3433, node 65'),(33957,969,0,'Silverleaf zone 3433, node 66'),(33958,969,0,'Silverleaf zone 3433, node 67'),(33960,969,0,'Bruiseweed zone 3433, node 68'),(33961,969,0,'Silverleaf zone 3433, node 69'),(33962,969,0,'Peacebloom zone 3433, node 70'),(33963,969,0,'Mageroyal zone 3433, node 71'),(33965,969,0,'Briarthorn zone 3433, node 72'),(33973,969,0,'Earthroot zone 3433, node 73'),(33975,969,0,'Mageroyal zone 3433, node 74'),(33978,969,0,'Silverleaf zone 3433, node 75'),(33982,969,0,'Briarthorn zone 3433, node 76'),(33983,969,0,'Silverleaf zone 3433, node 77'),(33985,969,0,'Mageroyal zone 3433, node 78'),(33986,969,0,'Briarthorn zone 3433, node 79'),(33988,969,0,'Peacebloom zone 3433, node 80'),(33990,969,0,'Silverleaf zone 3433, node 81'),(33991,969,0,'Briarthorn zone 3433, node 82'),(33993,969,0,'Mageroyal zone 3433, node 83'),(33994,969,0,'Peacebloom zone 3433, node 84'),(33995,969,0,'Earthroot zone 3433, node 85'),(33996,969,0,'Silverleaf zone 3433, node 86'),(34005,969,0,'Stranglekelp zone 3433, node 87'),(34013,969,0,'Bruiseweed zone 3433, node 88'),(34014,969,0,'Stranglekelp zone 3433, node 89'),(34015,969,0,'Mageroyal zone 3433, node 90'),(34021,969,0,'Earthroot zone 3433, node 91'),(34022,969,0,'Peacebloom zone 3433, node 92'),(64908,969,0,'Silverleaf zone 3433, node 93'),(64918,969,0,'Silverleaf zone 3433, node 94'),(64923,969,0,'Silverleaf zone 3433, node 95'),(64928,969,0,'Silverleaf zone 3433, node 96'),(64931,969,0,'Silverleaf zone 3433, node 97'),(64933,969,0,'Silverleaf zone 3433, node 98'),(64934,969,0,'Silverleaf zone 3433, node 99'),(64936,969,0,'Silverleaf zone 3433, node 100'),(64949,969,0,'Peacebloom zone 3433, node 101'),(64950,969,0,'Peacebloom zone 3433, node 102'),(64965,969,0,'Peacebloom zone 3433, node 103'),(64966,969,0,'Peacebloom zone 3433, node 104'),(64967,969,0,'Peacebloom zone 3433, node 105'),(64968,969,0,'Peacebloom zone 3433, node 106'),(64984,969,0,'Earthroot zone 3433, node 107'),(64991,969,0,'Earthroot zone 3433, node 108'),(64995,969,0,'Earthroot zone 3433, node 109'),(65006,969,0,'Mageroyal zone 3433, node 110'),(65015,969,0,'Mageroyal zone 3433, node 111'),(65021,969,0,'Mageroyal zone 3433, node 112'),(65024,969,0,'Briarthorn zone 3433, node 113'),(65025,969,0,'Briarthorn zone 3433, node 114'),(65045,969,0,'Briarthorn zone 3433, node 115'),(65064,969,0,'Bruiseweed zone 3433, node 116');
/*!40000 ALTER TABLE `pool_gameobject` ENABLE KEYS */;
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

