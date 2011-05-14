
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
DROP TABLE IF EXISTS `pool_pool`;
CREATE TABLE `pool_pool` (
  `pool_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mother_pool` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pool_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `pool_pool` WRITE;
/*!40000 ALTER TABLE `pool_pool` DISABLE KEYS */;
INSERT INTO `pool_pool` VALUES (5240,5181,0,'Cobalt Grizzly Hills'),(5241,5181,0,'Cobalt Grizzly Hills'),(5242,5181,0,'Cobalt Grizzly Hills'),(5243,5181,0,'Cobalt Grizzly Hills'),(5244,5122,0,'Cobalt Dragonblight'),(5245,5122,0,'Cobalt Dragonblight'),(5246,5122,0,'Cobalt Dragonblight'),(5247,5122,0,'Cobalt Dragonblight'),(5248,5122,0,'Cobalt Dragonblight'),(5249,5122,0,'Cobalt Dragonblight'),(5250,5122,0,'Cobalt Dragonblight'),(5251,5122,0,'Cobalt Dragonblight'),(5252,5122,0,'Cobalt Dragonblight'),(5253,5122,0,'Cobalt Dragonblight'),(5254,5122,0,'Cobalt Dragonblight'),(5255,5122,0,'Cobalt Dragonblight'),(5256,5238,0,'ZulDrak'),(5257,5238,0,'ZulDrak'),(5258,5238,0,'ZulDrak'),(5259,5238,0,'ZulDrak'),(5260,5238,0,'ZulDrak'),(5261,5238,0,'ZulDrak'),(5262,5238,0,'ZulDrak'),(5263,5238,0,'ZulDrak'),(5264,5238,0,'ZulDrak'),(5265,5238,0,'ZulDrak'),(5266,5238,0,'ZulDrak'),(5267,5238,0,'ZulDrak'),(5268,5238,0,'ZulDrak'),(5269,5238,0,'ZulDrak'),(5270,5238,0,'ZulDrak'),(5271,5238,0,'ZulDrak'),(5272,5238,0,'ZulDrak'),(5273,5238,0,'ZulDrak'),(5274,5238,0,'ZulDrak'),(5275,5238,0,'ZulDrak'),(5276,5238,0,'ZulDrak'),(5277,5121,0,'Cobalt Howling Fjord'),(5278,5121,0,'Cobalt Howling Fjord'),(5279,5121,0,'Cobalt Howling Fjord'),(5280,5121,0,'Cobalt Howling Fjord'),(5281,5121,0,'Cobalt Howling Fjord'),(5282,5121,0,'Cobalt Howling Fjord'),(5283,5000,0,'Cobalt Node Borean'),(5284,5000,0,'Cobalt Node Borean'),(5285,5000,0,'Cobalt Node Borean'),(5286,5000,0,'Cobalt Node Borean'),(5287,5000,0,'Cobalt Node Borean'),(5288,5000,0,'Cobalt Node Borean'),(5289,5000,0,'Cobalt Node Borean'),(5290,5000,0,'Cobalt Node Borean'),(5291,5000,0,'Cobalt Node Borean'),(5001,5000,0,'Cobalt Node Borean'),(5002,5000,0,'Cobalt Node Borean'),(5003,5000,0,'Cobalt Node Borean'),(5004,5000,0,'Cobalt Node Borean'),(5005,5000,0,'Cobalt Node Borean'),(5006,5000,0,'Cobalt Node Borean'),(5007,5000,0,'Cobalt Node Borean'),(5008,5000,0,'Cobalt Node Borean'),(5009,5000,0,'Cobalt Node Borean'),(5010,5000,0,'Cobalt Node Borean'),(5011,5000,0,'Cobalt Node Borean'),(5012,5000,0,'Cobalt Node Borean'),(5013,5000,0,'Cobalt Node Borean'),(5014,5000,0,'Cobalt Node Borean'),(5015,5000,0,'Cobalt Node Borean'),(5016,5000,0,'Cobalt Node Borean'),(5017,5000,0,'Cobalt Node Borean'),(5018,5000,0,'Cobalt Node Borean'),(5019,5000,0,'Cobalt Node Borean'),(5020,5000,0,'Cobalt Node Borean'),(5021,5000,0,'Cobalt Node Borean'),(5022,5000,0,'Cobalt Node Borean'),(5023,5000,0,'Cobalt Node Borean'),(5024,5000,0,'Cobalt Node Borean'),(5025,5000,0,'Cobalt Node Borean'),(5026,5000,0,'Cobalt Node Borean'),(5027,5000,0,'Cobalt Node Borean'),(5028,5000,0,'Cobalt Node Borean'),(5029,5000,0,'Cobalt Node Borean'),(5030,5000,0,'Cobalt Node Borean'),(5031,5000,0,'Cobalt Node Borean'),(5032,5000,0,'Cobalt Node Borean'),(5033,5000,0,'Cobalt Node Borean'),(5034,5000,0,'Cobalt Node Borean'),(5035,5000,0,'Cobalt Node Borean'),(5036,5000,0,'Cobalt Node Borean'),(5037,5000,0,'Cobalt Node Borean'),(5038,5000,0,'Cobalt Node Borean'),(5039,5000,0,'Cobalt Node Borean'),(5040,5000,0,'Cobalt Node Borean'),(5041,5000,0,'Cobalt Node Borean'),(5042,5000,0,'Cobalt Node Borean'),(5043,5000,0,'Cobalt Node Borean'),(5044,5000,0,'Cobalt Node Borean'),(5045,5000,0,'Cobalt Node Borean'),(5046,5000,0,'Cobalt Node Borean'),(5047,5000,0,'Cobalt Node Borean'),(5048,5000,0,'Cobalt Node Borean'),(5049,5000,0,'Cobalt Node Borean'),(5050,5000,0,'Cobalt Node Borean'),(5051,5000,0,'Cobalt Node Borean'),(5052,5000,0,'Cobalt Node Borean'),(5053,5000,0,'Cobalt Node Borean'),(5054,5000,0,'Cobalt Node Borean'),(5055,5000,0,'Cobalt Node Borean'),(5056,5000,0,'Cobalt Node Borean'),(5057,5000,0,'Cobalt Node Borean'),(5058,5000,0,'Cobalt Node Borean'),(5059,5000,0,'Cobalt Node Borean'),(5060,5000,0,'Cobalt Node Borean'),(5061,5000,0,'Cobalt Node Borean'),(5062,5000,0,'Cobalt Node Borean'),(5063,5000,0,'Cobalt Node Borean'),(5064,5000,0,'Cobalt Node Borean'),(5065,5121,0,'Cobalt Howling Fjord'),(5066,5121,0,'Cobalt Howling Fjord'),(5067,5121,0,'Cobalt Howling Fjord'),(5068,5121,0,'Cobalt Howling Fjord'),(5069,5121,0,'Cobalt Howling Fjord'),(5070,5121,0,'Cobalt Howling Fjord'),(5071,5121,0,'Cobalt Howling Fjord'),(5072,5121,0,'Cobalt Howling Fjord'),(5073,5121,0,'Cobalt Howling Fjord'),(5074,5121,0,'Cobalt Howling Fjord'),(5075,5121,0,'Cobalt Howling Fjord'),(5076,5121,0,'Cobalt Howling Fjord'),(5077,5121,0,'Cobalt Howling Fjord'),(5078,5121,0,'Cobalt Howling Fjord'),(5079,5121,0,'Cobalt Howling Fjord'),(5080,5121,0,'Cobalt Howling Fjord'),(5081,5121,0,'Cobalt Howling Fjord'),(5082,5121,0,'Cobalt Howling Fjord'),(5083,5121,0,'Cobalt Howling Fjord'),(5084,5121,0,'Cobalt Howling Fjord'),(5085,5121,0,'Cobalt Howling Fjord'),(5086,5121,0,'Cobalt Howling Fjord'),(5087,5121,0,'Cobalt Howling Fjord'),(5088,5121,0,'Cobalt Howling Fjord'),(5089,5121,0,'Cobalt Howling Fjord'),(5090,5121,0,'Cobalt Howling Fjord'),(5091,5121,0,'Cobalt Howling Fjord'),(5092,5121,0,'Cobalt Howling Fjord'),(5093,5121,0,'Cobalt Howling Fjord'),(5094,5121,0,'Cobalt Howling Fjord'),(5095,5121,0,'Cobalt Howling Fjord'),(5096,5121,0,'Cobalt Howling Fjord'),(5097,5121,0,'Cobalt Howling Fjord'),(5098,5121,0,'Cobalt Howling Fjord'),(5099,5121,0,'Cobalt Howling Fjord'),(5100,5121,0,'Cobalt Howling Fjord'),(5101,5121,0,'Cobalt Howling Fjord'),(5102,5121,0,'Cobalt Howling Fjord'),(5103,5121,0,'Cobalt Howling Fjord'),(5104,5121,0,'Cobalt Howling Fjord'),(5105,5121,0,'Cobalt Howling Fjord'),(5106,5121,0,'Cobalt Howling Fjord'),(5107,5121,0,'Cobalt Howling Fjord'),(5108,5121,0,'Cobalt Howling Fjord'),(5109,5121,0,'Cobalt Howling Fjord'),(5110,5121,0,'Cobalt Howling Fjord'),(5111,5121,0,'Cobalt Howling Fjord'),(5112,5121,0,'Cobalt Howling Fjord'),(5113,5121,0,'Cobalt Howling Fjord'),(5114,5121,0,'Cobalt Howling Fjord'),(5115,5121,0,'Cobalt Howling Fjord'),(5116,5121,0,'Cobalt Howling Fjord'),(5117,5121,0,'Cobalt Howling Fjord'),(5118,5121,0,'Cobalt Howling Fjord'),(5119,5121,0,'Cobalt Howling Fjord'),(5120,5121,0,'Cobalt Howling Fjord'),(5123,5122,0,'Cobalt Dragonblight'),(5124,5122,0,'Cobalt Dragonblight'),(5125,5122,0,'Cobalt Dragonblight'),(5126,5122,0,'Cobalt Dragonblight'),(5127,5122,0,'Cobalt Dragonblight'),(5128,5122,0,'Cobalt Dragonblight'),(5129,5122,0,'Cobalt Dragonblight'),(5130,5122,0,'Cobalt Dragonblight'),(5131,5122,0,'Cobalt Dragonblight'),(5132,5122,0,'Cobalt Dragonblight'),(5133,5122,0,'Cobalt Dragonblight'),(5134,5122,0,'Cobalt Dragonblight'),(5135,5122,0,'Cobalt Dragonblight'),(5136,5122,0,'Cobalt Dragonblight'),(5137,5122,0,'Cobalt Dragonblight'),(5138,5122,0,'Cobalt Dragonblight'),(5139,5122,0,'Cobalt Dragonblight'),(5140,5122,0,'Cobalt Dragonblight'),(5141,5122,0,'Cobalt Dragonblight'),(5142,5122,0,'Cobalt Dragonblight'),(5143,5122,0,'Cobalt Dragonblight'),(5144,5122,0,'Cobalt Dragonblight'),(5145,5122,0,'Cobalt Dragonblight'),(5146,5122,0,'Cobalt Dragonblight'),(5147,5122,0,'Cobalt Dragonblight'),(5148,5122,0,'Cobalt Dragonblight'),(5149,5122,0,'Cobalt Dragonblight'),(5150,5122,0,'Cobalt Dragonblight'),(5151,5122,0,'Cobalt Dragonblight'),(5152,5122,0,'Cobalt Dragonblight'),(5153,5122,0,'Cobalt Dragonblight'),(5154,5122,0,'Cobalt Dragonblight'),(5155,5122,0,'Cobalt Dragonblight'),(5156,5122,0,'Cobalt Dragonblight'),(5157,5122,0,'Cobalt Dragonblight'),(5158,5122,0,'Cobalt Dragonblight'),(5159,5122,0,'Cobalt Dragonblight'),(5160,5122,0,'Cobalt Dragonblight'),(5161,5122,0,'Cobalt Dragonblight'),(5162,5122,0,'Cobalt Dragonblight'),(5163,5122,0,'Cobalt Dragonblight'),(5164,5122,0,'Cobalt Dragonblight'),(5165,5122,0,'Cobalt Dragonblight'),(5166,5122,0,'Cobalt Dragonblight'),(5167,5122,0,'Cobalt Dragonblight'),(5168,5122,0,'Cobalt Dragonblight'),(5169,5122,0,'Cobalt Dragonblight'),(5170,5122,0,'Cobalt Dragonblight'),(5171,5122,0,'Cobalt Dragonblight'),(5172,5122,0,'Cobalt Dragonblight'),(5173,5122,0,'Cobalt Dragonblight'),(5174,5122,0,'Cobalt Dragonblight'),(5175,5122,0,'Cobalt Dragonblight'),(5176,5122,0,'Cobalt Dragonblight'),(5177,5122,0,'Cobalt Dragonblight'),(5178,5122,0,'Cobalt Dragonblight'),(5179,5122,0,'Cobalt Dragonblight'),(5180,5122,0,'Cobalt Dragonblight'),(5239,5122,0,'Cobalt Dragonblight'),(5182,5181,0,'Cobalt Grizzly Hills'),(5183,5181,0,'Cobalt Grizzly Hills'),(5184,5181,0,'Cobalt Grizzly Hills'),(5185,5181,0,'Cobalt Grizzly Hills'),(5186,5181,0,'Cobalt Grizzly Hills'),(5187,5181,0,'Cobalt Grizzly Hills'),(5188,5181,0,'Cobalt Grizzly Hills'),(5189,5181,0,'Cobalt Grizzly Hills'),(5190,5181,0,'Cobalt Grizzly Hills'),(5191,5181,0,'Cobalt Grizzly Hills'),(5192,5181,0,'Cobalt Grizzly Hills'),(5193,5181,0,'Cobalt Grizzly Hills'),(5194,5181,0,'Cobalt Grizzly Hills'),(5195,5181,0,'Cobalt Grizzly Hills'),(5196,5181,0,'Cobalt Grizzly Hills'),(5197,5181,0,'Cobalt Grizzly Hills'),(5198,5181,0,'Cobalt Grizzly Hills'),(5199,5181,0,'Cobalt Grizzly Hills'),(5200,5181,0,'Cobalt Grizzly Hills'),(5201,5181,0,'Cobalt Grizzly Hills'),(5202,5181,0,'Cobalt Grizzly Hills'),(5203,5181,0,'Cobalt Grizzly Hills'),(5204,5181,0,'Cobalt Grizzly Hills'),(5205,5181,0,'Cobalt Grizzly Hills'),(5206,5181,0,'Cobalt Grizzly Hills'),(5207,5181,0,'Cobalt Grizzly Hills'),(5208,5181,0,'Cobalt Grizzly Hills'),(5209,5181,0,'Cobalt Grizzly Hills'),(5210,5181,0,'Cobalt Grizzly Hills'),(5211,5181,0,'Cobalt Grizzly Hills'),(5212,5181,0,'Cobalt Grizzly Hills'),(5213,5181,0,'Cobalt Grizzly Hills'),(5214,5181,0,'Cobalt Grizzly Hills'),(5215,5181,0,'Cobalt Grizzly Hills'),(5216,5181,0,'Cobalt Grizzly Hills'),(3000,2000,0,'Spawn Point 1 - Alterac Mountains (Inner Section)'),(3001,2000,0,'Spawn Point 2 - Alterac Mountains (Inner Section)'),(3002,2000,0,'Spawn Point 3 - Alterac Mountains (Inner Section)'),(3003,2000,0,'Spawn Point 4 - Alterac Mountains (Inner Section)'),(3004,2000,0,'Spawn Point 5 - Alterac Mountains (Inner Section)'),(3005,2000,0,'Spawn Point 6 - Alterac Mountains (Inner Section)'),(3006,2000,0,'Spawn Point 7 - Alterac Mountains (Inner Section)'),(3007,2000,0,'Spawn Point 8 - Alterac Mountains (Inner Section)'),(3008,2000,0,'Spawn Point 9 - Alterac Mountains (Inner Section)'),(3009,2000,0,'Spawn Point 10 - Alterac Mountains (Inner Section)'),(3010,2000,0,'Spawn Point 11 - Alterac Mountains (Inner Section)'),(3011,2000,0,'Spawn Point 12 - Alterac Mountains (Inner Section)'),(3012,2000,0,'Spawn Point 13 - Alterac Mountains (Inner Section)'),(3013,2000,0,'Spawn Point 14 - Alterac Mountains (Inner Section)'),(3014,2000,0,'Spawn Point 15 - Alterac Mountains (Inner Section)'),(3015,2000,0,'Spawn Point 16 - Alterac Mountains (Inner Section)'),(3016,2000,0,'Spawn Point 17 - Alterac Mountains (Inner Section)'),(3017,2000,0,'Spawn Point 18 - Alterac Mountains (Inner Section)'),(3018,2000,0,'Spawn Point 19 - Alterac Mountains (Inner Section)'),(3019,2000,0,'Spawn Point 20 - Alterac Mountains (Inner Section)'),(3020,2000,0,'Spawn Point 21 - Alterac Mountains (Inner Section)'),(3021,2000,0,'Spawn Point 22 - Alterac Mountains (Inner Section)'),(3022,2000,0,'Spawn Point 23 - Alterac Mountains (Inner Section)'),(3023,2000,0,'Spawn Point 24 - Alterac Mountains (Inner Section)'),(3024,2000,0,'Spawn Point 25 - Alterac Mountains (Inner Section)'),(3025,2000,0,'Spawn Point 26 - Alterac Mountains (Inner Section)'),(3026,2000,0,'Spawn Point 27 - Alterac Mountains (Inner Section)'),(3027,2000,0,'Spawn Point 28 - Alterac Mountains (Inner Section)'),(3028,2000,0,'Spawn Point 29 - Alterac Mountains (Inner Section)'),(3029,2000,0,'Spawn Point 30 - Alterac Mountains (Inner Section)'),(3030,2000,0,'Spawn Point 31 - Alterac Mountains (Inner Section)'),(3031,2000,0,'Spawn Point 32 - Alterac Mountains (Inner Section)'),(3032,2000,0,'Spawn Point 33 - Alterac Mountains (Inner Section)'),(3033,2000,0,'Spawn Point 34 - Alterac Mountains (Inner Section)'),(3034,2000,0,'Spawn Point 35 - Alterac Mountains (Inner Section)'),(3035,2000,0,'Spawn Point 36 - Alterac Mountains (Inner Section)'),(3036,2000,0,'Spawn Point 37 - Alterac Mountains (Inner Section)'),(3037,2000,0,'Spawn Point 38 - Alterac Mountains (Inner Section)'),(3038,2000,0,'Spawn Point 39 - Alterac Mountains (Inner Section)'),(3039,2000,0,'Spawn Point 40 - Alterac Mountains (Inner Section)'),(3040,2000,0,'Spawn Point 41 - Alterac Mountains (Inner Section)'),(3041,2000,0,'Spawn Point 42 - Alterac Mountains (Inner Section)'),(3042,2000,0,'Spawn Point 43 - Alterac Mountains (Inner Section)'),(3043,2000,0,'Spawn Point 44 - Alterac Mountains (Inner Section)'),(3044,2000,0,'Spawn Point 45 - Alterac Mountains (Inner Section)'),(3045,2000,0,'Spawn Point 46 - Alterac Mountains (Inner Section)'),(3046,2000,0,'Spawn Point 47 - Alterac Mountains (Inner Section)'),(3047,2000,0,'Spawn Point 48 - Alterac Mountains (Inner Section)'),(3048,2000,0,'Spawn Point 49 - Alterac Mountains (Inner Section)'),(3049,2000,0,'Spawn Point 50 - Alterac Mountains (Inner Section)'),(3050,2000,0,'Spawn Point 51 - Alterac Mountains (Inner Section)'),(3051,2000,0,'Spawn Point 52 - Alterac Mountains (Inner Section)'),(3052,2000,0,'Spawn Point 53 - Alterac Mountains (Inner Section)'),(3053,2000,0,'Spawn Point 54 - Alterac Mountains (Inner Section)'),(3054,2000,0,'Spawn Point 55 - Alterac Mountains (Inner Section)'),(3055,2000,0,'Spawn Point 56 - Alterac Mountains (Inner Section)'),(3056,2000,0,'Spawn Point 57 - Alterac Mountains (Inner Section)'),(3057,2000,0,'Spawn Point 58 - Alterac Mountains (Inner Section)'),(3058,2000,0,'Spawn Point 59 - Alterac Mountains (Inner Section)'),(3059,2000,0,'Spawn Point 60 - Alterac Mountains (Inner Section)'),(3060,2000,0,'Spawn Point 61 - Alterac Mountains (Inner Section)'),(3061,2000,0,'Spawn Point 62 - Alterac Mountains (Inner Section)'),(3062,2000,0,'Spawn Point 63 - Alterac Mountains (Inner Section)'),(3063,2000,0,'Spawn Point 64 - Alterac Mountains (Inner Section)'),(3064,2000,0,'Spawn Point 65 - Alterac Mountains (Inner Section)'),(3065,2000,0,'Spawn Point 66 - Alterac Mountains (Inner Section)'),(3066,2000,0,'Spawn Point 67 - Alterac Mountains (Inner Section)'),(3067,2000,0,'Spawn Point 68 - Alterac Mountains (Inner Section)'),(3068,2000,0,'Spawn Point 69 - Alterac Mountains (Inner Section)'),(3069,2000,0,'Spawn Point 70 - Alterac Mountains (Inner Section)'),(3070,2000,0,'Spawn Point 71 - Alterac Mountains (Inner Section)'),(3071,2000,0,'Spawn Point 72 - Alterac Mountains (Inner Section)'),(3072,2000,0,'Spawn Point 73 - Alterac Mountains (Inner Section)'),(3073,2000,0,'Spawn Point 74 - Alterac Mountains (Inner Section)'),(3074,2000,0,'Spawn Point 75 - Alterac Mountains (Inner Section)'),(3075,2000,0,'Spawn Point 76 - Alterac Mountains (Inner Section)'),(3076,2000,0,'Spawn Point 77 - Alterac Mountains (Inner Section)'),(3077,2000,0,'Spawn Point 78 - Alterac Mountains (Inner Section)'),(3078,2000,0,'Spawn Point 79 - Alterac Mountains (Inner Section)'),(3079,2000,0,'Spawn Point 80 - Alterac Mountains (Inner Section)'),(3080,2000,0,'Spawn Point 81 - Alterac Mountains (Inner Section)'),(3081,2000,0,'Spawn Point 82 - Alterac Mountains (Inner Section)'),(3121,2000,0,'Spawn Point 122 - Alterac Mountains (Inner Section)'),(3122,2000,0,'Spawn Point 123 - Alterac Mountains (Inner Section)'),(3123,2000,0,'Spawn Point 124 - Alterac Mountains (Inner Section)'),(3124,2000,0,'Spawn Point 125 - Alterac Mountains (Inner Section)'),(3125,2000,0,'Spawn Point 126 - Alterac Mountains (Inner Section)'),(3126,2000,0,'Spawn Point 127 - Alterac Mountains (Inner Section)'),(3127,2000,0,'Spawn Point 128 - Alterac Mountains (Inner Section)'),(3128,2000,0,'Spawn Point 129 - Alterac Mountains (Inner Section)'),(3129,2000,0,'Spawn Point 130 - Alterac Mountains (Inner Section)'),(3130,2000,0,'Spawn Point 131 - Alterac Mountains (Inner Section)'),(3131,2000,0,'Spawn Point 132 - Alterac Mountains (Inner Section)'),(3132,2000,0,'Spawn Point 133 - Alterac Mountains (Inner Section)'),(3154,2000,0,'Spawn Point 155 - Alterac Mountains (Inner Section)'),(3161,2000,0,'Spawn Point 162 - Alterac Mountains (Inner Section)'),(3082,2001,0,'Spawn Point 83 - Alterac Mountains (Outer Section)'),(3083,2001,0,'Spawn Point 84 - Alterac Mountains (Outer Section)'),(3084,2001,0,'Spawn Point 85 - Alterac Mountains (Outer Section)'),(3085,2001,0,'Spawn Point 86 - Alterac Mountains (Outer Section)'),(3086,2001,0,'Spawn Point 87 - Alterac Mountains (Outer Section)'),(3087,2001,0,'Spawn Point 88 - Alterac Mountains (Outer Section)'),(3088,2001,0,'Spawn Point 89 - Alterac Mountains (Outer Section)'),(3089,2001,0,'Spawn Point 90 - Alterac Mountains (Outer Section)'),(3090,2001,0,'Spawn Point 91 - Alterac Mountains (Outer Section)'),(3091,2001,0,'Spawn Point 92 - Alterac Mountains (Outer Section)'),(3092,2001,0,'Spawn Point 93 - Alterac Mountains (Outer Section)'),(3093,2001,0,'Spawn Point 94 - Alterac Mountains (Outer Section)'),(3094,2001,0,'Spawn Point 95 - Alterac Mountains (Outer Section)'),(3095,2001,0,'Spawn Point 96 - Alterac Mountains (Outer Section)'),(3096,2001,0,'Spawn Point 97 - Alterac Mountains (Outer Section)'),(3097,2001,0,'Spawn Point 98 - Alterac Mountains (Outer Section)'),(3098,2001,0,'Spawn Point 99 - Alterac Mountains (Outer Section)'),(3099,2001,0,'Spawn Point 100 - Alterac Mountains (Outer Section)'),(3100,2001,0,'Spawn Point 101 - Alterac Mountains (Outer Section)'),(3101,2001,0,'Spawn Point 102 - Alterac Mountains (Outer Section)'),(3102,2001,0,'Spawn Point 103 - Alterac Mountains (Outer Section)'),(3103,2001,0,'Spawn Point 104 - Alterac Mountains (Outer Section)'),(3104,2001,0,'Spawn Point 105 - Alterac Mountains (Outer Section)'),(3105,2001,0,'Spawn Point 106 - Alterac Mountains (Outer Section)'),(3106,2001,0,'Spawn Point 107 - Alterac Mountains (Outer Section)'),(3107,2001,0,'Spawn Point 108 - Alterac Mountains (Outer Section)'),(3108,2001,0,'Spawn Point 109 - Alterac Mountains (Outer Section)'),(3109,2001,0,'Spawn Point 110 - Alterac Mountains (Outer Section)'),(3110,2001,0,'Spawn Point 111 - Alterac Mountains (Outer Section)'),(3111,2001,0,'Spawn Point 112 - Alterac Mountains (Outer Section)'),(3112,2001,0,'Spawn Point 113 - Alterac Mountains (Outer Section)'),(3113,2001,0,'Spawn Point 114 - Alterac Mountains (Outer Section)'),(3114,2001,0,'Spawn Point 115 - Alterac Mountains (Outer Section)'),(3115,2001,0,'Spawn Point 116 - Alterac Mountains (Outer Section)'),(3116,2001,0,'Spawn Point 117 - Alterac Mountains (Outer Section)'),(3117,2001,0,'Spawn Point 118 - Alterac Mountains (Outer Section)'),(3118,2001,0,'Spawn Point 119 - Alterac Mountains (Outer Section)'),(3119,2001,0,'Spawn Point 120 - Alterac Mountains (Outer Section)'),(3120,2001,0,'Spawn Point 121 - Alterac Mountains (Outer Section)'),(3133,2001,0,'Spawn Point 134 - Alterac Mountains (Outer Section)'),(3134,2001,0,'Spawn Point 135 - Alterac Mountains (Outer Section)'),(3135,2001,0,'Spawn Point 136 - Alterac Mountains (Outer Section)'),(3136,2001,0,'Spawn Point 137 - Alterac Mountains (Outer Section)'),(3137,2001,0,'Spawn Point 138 - Alterac Mountains (Outer Section)'),(3138,2001,0,'Spawn Point 139 - Alterac Mountains (Outer Section)'),(3139,2001,0,'Spawn Point 140 - Alterac Mountains (Outer Section)'),(3140,2001,0,'Spawn Point 141 - Alterac Mountains (Outer Section)'),(3141,2001,0,'Spawn Point 142 - Alterac Mountains (Outer Section)'),(3142,2001,0,'Spawn Point 143 - Alterac Mountains (Outer Section)'),(3143,2001,0,'Spawn Point 144 - Alterac Mountains (Outer Section)'),(3144,2001,0,'Spawn Point 145 - Alterac Mountains (Outer Section)'),(3145,2001,0,'Spawn Point 146 - Alterac Mountains (Outer Section)'),(3146,2001,0,'Spawn Point 147 - Alterac Mountains (Outer Section)'),(3147,2001,0,'Spawn Point 148 - Alterac Mountains (Outer Section)'),(3148,2001,0,'Spawn Point 149 - Alterac Mountains (Outer Section)'),(3149,2001,0,'Spawn Point 150 - Alterac Mountains (Outer Section)'),(3150,2001,0,'Spawn Point 151 - Alterac Mountains (Outer Section)'),(3151,2001,0,'Spawn Point 152 - Alterac Mountains (Outer Section)'),(3152,2001,0,'Spawn Point 153 - Alterac Mountains (Outer Section)'),(3153,2001,0,'Spawn Point 154 - Alterac Mountains (Outer Section)'),(3155,2001,0,'Spawn Point 156 - Alterac Mountains (Outer Section)'),(3156,2001,0,'Spawn Point 157 - Alterac Mountains (Outer Section)'),(3157,2001,0,'Spawn Point 158 - Alterac Mountains (Outer Section)'),(3158,2001,0,'Spawn Point 159 - Alterac Mountains (Outer Section)'),(3159,2001,0,'Spawn Point 160 - Alterac Mountains (Outer Section)'),(3160,2001,0,'Spawn Point 161 - Alterac Mountains (Outer Section)'),(3200,2002,0,'Spawn Point 1 - Arathi Highlands'),(3201,2002,0,'Spawn Point 2 - Arathi Highlands'),(3202,2002,0,'Spawn Point 3 - Arathi Highlands'),(3203,2002,0,'Spawn Point 4 - Arathi Highlands'),(3204,2002,0,'Spawn Point 5 - Arathi Highlands'),(3205,2002,0,'Spawn Point 6 - Arathi Highlands'),(3206,2002,0,'Spawn Point 7 - Arathi Highlands'),(3207,2002,0,'Spawn Point 8 - Arathi Highlands'),(3208,2002,0,'Spawn Point 9 - Arathi Highlands'),(3209,2002,0,'Spawn Point 10 - Arathi Highlands'),(3210,2002,0,'Spawn Point 11 - Arathi Highlands'),(3211,2002,0,'Spawn Point 12 - Arathi Highlands'),(3212,2002,0,'Spawn Point 13 - Arathi Highlands'),(3213,2002,0,'Spawn Point 14 - Arathi Highlands'),(3214,2002,0,'Spawn Point 15 - Arathi Highlands'),(3215,2002,0,'Spawn Point 16 - Arathi Highlands'),(3216,2002,0,'Spawn Point 17 - Arathi Highlands'),(3217,2002,0,'Spawn Point 18 - Arathi Highlands'),(3218,2002,0,'Spawn Point 19 - Arathi Highlands'),(3219,2002,0,'Spawn Point 20 - Arathi Highlands'),(3220,2002,0,'Spawn Point 21 - Arathi Highlands'),(3221,2002,0,'Spawn Point 22 - Arathi Highlands'),(3222,2002,0,'Spawn Point 23 - Arathi Highlands'),(3223,2002,0,'Spawn Point 24 - Arathi Highlands'),(3224,2002,0,'Spawn Point 25 - Arathi Highlands'),(3225,2002,0,'Spawn Point 26 - Arathi Highlands'),(3226,2002,0,'Spawn Point 27 - Arathi Highlands'),(3227,2002,0,'Spawn Point 28 - Arathi Highlands'),(3228,2002,0,'Spawn Point 29 - Arathi Highlands'),(3229,2002,0,'Spawn Point 30 - Arathi Highlands'),(3230,2002,0,'Spawn Point 31 - Arathi Highlands'),(3231,2002,0,'Spawn Point 32 - Arathi Highlands'),(3232,2002,0,'Spawn Point 33 - Arathi Highlands'),(3233,2002,0,'Spawn Point 34 - Arathi Highlands'),(3234,2002,0,'Spawn Point 35 - Arathi Highlands'),(3235,2002,0,'Spawn Point 36 - Arathi Highlands'),(3236,2002,0,'Spawn Point 37 - Arathi Highlands'),(3237,2002,0,'Spawn Point 38 - Arathi Highlands'),(3238,2002,0,'Spawn Point 39 - Arathi Highlands'),(3239,2002,0,'Spawn Point 40 - Arathi Highlands'),(3240,2002,0,'Spawn Point 41 - Arathi Highlands'),(3241,2002,0,'Spawn Point 42 - Arathi Highlands'),(3242,2002,0,'Spawn Point 43 - Arathi Highlands'),(3243,2002,0,'Spawn Point 44 - Arathi Highlands'),(3244,2002,0,'Spawn Point 45 - Arathi Highlands'),(3245,2002,0,'Spawn Point 46 - Arathi Highlands'),(3246,2002,0,'Spawn Point 47 - Arathi Highlands'),(3247,2002,0,'Spawn Point 48 - Arathi Highlands'),(3248,2002,0,'Spawn Point 49 - Arathi Highlands'),(3249,2002,0,'Spawn Point 50 - Arathi Highlands'),(3250,2002,0,'Spawn Point 51 - Arathi Highlands'),(3251,2002,0,'Spawn Point 52 - Arathi Highlands'),(3252,2002,0,'Spawn Point 53 - Arathi Highlands'),(3253,2002,0,'Spawn Point 54 - Arathi Highlands'),(3254,2002,0,'Spawn Point 55 - Arathi Highlands'),(3255,2002,0,'Spawn Point 56 - Arathi Highlands'),(3256,2002,0,'Spawn Point 57 - Arathi Highlands'),(3257,2002,0,'Spawn Point 58 - Arathi Highlands'),(3258,2002,0,'Spawn Point 59 - Arathi Highlands'),(3259,2002,0,'Spawn Point 60 - Arathi Highlands'),(3260,2002,0,'Spawn Point 61 - Arathi Highlands'),(3261,2002,0,'Spawn Point 62 - Arathi Highlands'),(3262,2002,0,'Spawn Point 63 - Arathi Highlands'),(3263,2002,0,'Spawn Point 64 - Arathi Highlands'),(3264,2002,0,'Spawn Point 65 - Arathi Highlands'),(3265,2002,0,'Spawn Point 66 - Arathi Highlands'),(3266,2002,0,'Spawn Point 67 - Arathi Highlands'),(3267,2002,0,'Spawn Point 68 - Arathi Highlands'),(3268,2002,0,'Spawn Point 69 - Arathi Highlands'),(3269,2002,0,'Spawn Point 70 - Arathi Highlands'),(3270,2002,0,'Spawn Point 71 - Arathi Highlands'),(3271,2002,0,'Spawn Point 72 - Arathi Highlands'),(3272,2002,0,'Spawn Point 73 - Arathi Highlands'),(3273,2002,0,'Spawn Point 74 - Arathi Highlands'),(3274,2002,0,'Spawn Point 75 - Arathi Highlands'),(3275,2002,0,'Spawn Point 76 - Arathi Highlands'),(3276,2002,0,'Spawn Point 77 - Arathi Highlands'),(3277,2002,0,'Spawn Point 78 - Arathi Highlands'),(3278,2002,0,'Spawn Point 79 - Arathi Highlands'),(3279,2002,0,'Spawn Point 80 - Arathi Highlands'),(3280,2002,0,'Spawn Point 81 - Arathi Highlands'),(3281,2002,0,'Spawn Point 82 - Arathi Highlands'),(3282,2002,0,'Spawn Point 83 - Arathi Highlands'),(3283,2002,0,'Spawn Point 84 - Arathi Highlands'),(3284,2002,0,'Spawn Point 85 - Arathi Highlands'),(3285,2002,0,'Spawn Point 86 - Arathi Highlands'),(3286,2002,0,'Spawn Point 87 - Arathi Highlands'),(3287,2002,0,'Spawn Point 88 - Arathi Highlands'),(3288,2002,0,'Spawn Point 89 - Arathi Highlands'),(3289,2002,0,'Spawn Point 90 - Arathi Highlands'),(3290,2002,0,'Spawn Point 91 - Arathi Highlands'),(3291,2002,0,'Spawn Point 92 - Arathi Highlands'),(3292,2002,0,'Spawn Point 93 - Arathi Highlands'),(3293,2002,0,'Spawn Point 94 - Arathi Highlands'),(3294,2002,0,'Spawn Point 95 - Arathi Highlands'),(3295,2002,0,'Spawn Point 96 - Arathi Highlands'),(3296,2002,0,'Spawn Point 97 - Arathi Highlands'),(3297,2002,0,'Spawn Point 98 - Arathi Highlands'),(3298,2002,0,'Spawn Point 99 - Arathi Highlands'),(3299,2002,0,'Spawn Point 100 - Arathi Highlands'),(3300,2002,0,'Spawn Point 101 - Arathi Highlands'),(3301,2002,0,'Spawn Point 102 - Arathi Highlands'),(3302,2002,0,'Spawn Point 103 - Arathi Highlands'),(3303,2002,0,'Spawn Point 104 - Arathi Highlands'),(3304,2002,0,'Spawn Point 105 - Arathi Highlands'),(3305,2002,0,'Spawn Point 106 - Arathi Highlands'),(3306,2002,0,'Spawn Point 107 - Arathi Highlands'),(3307,2002,0,'Spawn Point 108 - Arathi Highlands'),(3308,2002,0,'Spawn Point 109 - Arathi Highlands'),(3309,2002,0,'Spawn Point 110 - Arathi Highlands'),(3310,2002,0,'Spawn Point 111 - Arathi Highlands'),(3311,2002,0,'Spawn Point 112 - Arathi Highlands'),(3312,2002,0,'Spawn Point 113 - Arathi Highlands'),(3313,2002,0,'Spawn Point 114 - Arathi Highlands'),(3314,2002,0,'Spawn Point 115 - Arathi Highlands'),(3315,2002,0,'Spawn Point 116 - Arathi Highlands'),(3316,2002,0,'Spawn Point 117 - Arathi Highlands'),(3317,2002,0,'Spawn Point 118 - Arathi Highlands'),(3318,2002,0,'Spawn Point 119 - Arathi Highlands'),(3319,2002,0,'Spawn Point 120 - Arathi Highlands'),(3320,2002,0,'Spawn Point 121 - Arathi Highlands'),(3321,2002,0,'Spawn Point 122 - Arathi Highlands'),(3322,2002,0,'Spawn Point 123 - Arathi Highlands'),(3323,2002,0,'Spawn Point 124 - Arathi Highlands'),(3324,2002,0,'Spawn Point 125 - Arathi Highlands'),(3325,2002,0,'Spawn Point 126 - Arathi Highlands'),(3326,2002,0,'Spawn Point 127 - Arathi Highlands'),(3327,2002,0,'Spawn Point 128 - Arathi Highlands'),(3328,2002,0,'Spawn Point 129 - Arathi Highlands'),(3329,2002,0,'Spawn Point 130 - Arathi Highlands'),(3330,2002,0,'Spawn Point 131 - Arathi Highlands'),(3331,2002,0,'Spawn Point 132 - Arathi Highlands'),(3332,2002,0,'Spawn Point 133 - Arathi Highlands'),(3333,2002,0,'Spawn Point 134 - Arathi Highlands'),(3334,2002,0,'Spawn Point 135 - Arathi Highlands'),(3335,2002,0,'Spawn Point 136 - Arathi Highlands'),(3336,2002,0,'Spawn Point 137 - Arathi Highlands'),(3337,2002,0,'Spawn Point 138 - Arathi Highlands'),(3338,2002,0,'Spawn Point 139 - Arathi Highlands'),(3339,2002,0,'Spawn Point 140 - Arathi Highlands'),(3340,2002,0,'Spawn Point 141 - Arathi Highlands'),(3341,2002,0,'Spawn Point 142 - Arathi Highlands'),(3342,2002,0,'Spawn Point 143 - Arathi Highlands'),(3343,2002,0,'Spawn Point 144 - Arathi Highlands'),(3344,2002,0,'Spawn Point 145 - Arathi Highlands'),(3345,2002,0,'Spawn Point 146 - Arathi Highlands'),(3346,2002,0,'Spawn Point 147 - Arathi Highlands'),(3347,2002,0,'Spawn Point 148 - Arathi Highlands'),(3348,2002,0,'Spawn Point 149 - Arathi Highlands'),(3349,2002,0,'Spawn Point 150 - Arathi Highlands'),(3350,2002,0,'Spawn Point 151 - Arathi Highlands'),(3351,2002,0,'Spawn Point 152 - Arathi Highlands'),(3352,2002,0,'Spawn Point 153 - Arathi Highlands'),(3353,2002,0,'Spawn Point 154 - Arathi Highlands'),(3354,2002,0,'Spawn Point 155 - Arathi Highlands'),(3355,2002,0,'Spawn Point 156 - Arathi Highlands'),(3356,2002,0,'Spawn Point 157 - Arathi Highlands'),(3357,2002,0,'Spawn Point 158 - Arathi Highlands'),(3358,2002,0,'Spawn Point 159 - Arathi Highlands'),(3359,2002,0,'Spawn Point 160 - Arathi Highlands'),(3360,2002,0,'Spawn Point 161 - Arathi Highlands'),(3361,2002,0,'Spawn Point 162 - Arathi Highlands'),(3362,2002,0,'Spawn Point 163 - Arathi Highlands'),(3363,2002,0,'Spawn Point 164 - Arathi Highlands'),(3364,2002,0,'Spawn Point 165 - Arathi Highlands'),(3365,2002,0,'Spawn Point 166 - Arathi Highlands'),(3366,2002,0,'Spawn Point 167 - Arathi Highlands'),(3367,2002,0,'Spawn Point 168 - Arathi Highlands'),(3368,2002,0,'Spawn Point 169 - Arathi Highlands'),(3369,2002,0,'Spawn Point 170 - Arathi Highlands'),(3370,2002,0,'Spawn Point 171 - Arathi Highlands'),(3371,2002,0,'Spawn Point 172 - Arathi Highlands'),(3372,2002,0,'Spawn Point 173 - Arathi Highlands'),(3373,2002,0,'Spawn Point 174 - Arathi Highlands'),(3374,2002,0,'Spawn Point 175 - Arathi Highlands'),(3375,2002,0,'Spawn Point 176 - Arathi Highlands'),(3376,2002,0,'Spawn Point 177 - Arathi Highlands'),(3377,2002,0,'Spawn Point 178 - Arathi Highlands'),(3378,2002,0,'Spawn Point 179 - Arathi Highlands'),(3379,2002,0,'Spawn Point 180 - Arathi Highlands'),(3380,2002,0,'Spawn Point 181 - Arathi Highlands'),(3381,2002,0,'Spawn Point 182 - Arathi Highlands'),(3382,2002,0,'Spawn Point 183 - Arathi Highlands'),(3383,2002,0,'Spawn Point 184 - Arathi Highlands'),(3384,2002,0,'Spawn Point 185 - Arathi Highlands'),(3385,2002,0,'Spawn Point 186 - Arathi Highlands'),(3386,2002,0,'Spawn Point 187 - Arathi Highlands'),(3387,2002,0,'Spawn Point 188 - Arathi Highlands'),(3388,2002,0,'Spawn Point 189 - Arathi Highlands'),(3389,2002,0,'Spawn Point 190 - Arathi Highlands'),(3390,2002,0,'Spawn Point 191 - Arathi Highlands'),(3391,2002,0,'Spawn Point 192 - Arathi Highlands'),(3392,2002,0,'Spawn Point 193 - Arathi Highlands'),(3393,2002,0,'Spawn Point 194 - Arathi Highlands'),(3394,2002,0,'Spawn Point 195 - Arathi Highlands'),(3395,2002,0,'Spawn Point 196 - Arathi Highlands'),(3396,2002,0,'Spawn Point 197 - Arathi Highlands'),(3397,2002,0,'Spawn Point 198 - Arathi Highlands'),(3398,2002,0,'Spawn Point 199 - Arathi Highlands'),(3399,2002,0,'Spawn Point 200 - Arathi Highlands'),(3400,2002,0,'Spawn Point 201 - Arathi Highlands'),(3401,2002,0,'Spawn Point 202 - Arathi Highlands'),(3402,2002,0,'Spawn Point 203 - Arathi Highlands'),(3403,2002,0,'Spawn Point 204 - Arathi Highlands'),(3404,2002,0,'Spawn Point 205 - Arathi Highlands'),(3405,2002,0,'Spawn Point 206 - Arathi Highlands'),(3406,2002,0,'Spawn Point 207 - Arathi Highlands'),(3407,2002,0,'Spawn Point 208 - Arathi Highlands'),(3408,2002,0,'Spawn Point 209 - Arathi Highlands'),(3409,2002,0,'Spawn Point 210 - Arathi Highlands'),(3410,2002,0,'Spawn Point 211 - Arathi Highlands'),(3411,2002,0,'Spawn Point 212 - Arathi Highlands'),(3412,2002,0,'Spawn Point 213 - Arathi Highlands'),(3413,2002,0,'Spawn Point 214 - Arathi Highlands'),(3414,2002,0,'Spawn Point 215 - Arathi Highlands'),(3415,2002,0,'Spawn Point 216 - Arathi Highlands'),(3416,2002,0,'Spawn Point 217 - Arathi Highlands'),(3417,2002,0,'Spawn Point 218 - Arathi Highlands'),(3418,2002,0,'Spawn Point 219 - Arathi Highlands'),(3419,2002,0,'Spawn Point 220 - Arathi Highlands'),(3420,2002,0,'Spawn Point 221 - Arathi Highlands'),(3421,2002,0,'Spawn Point 222 - Arathi Highlands'),(3422,2002,0,'Spawn Point 223 - Arathi Highlands'),(3423,2002,0,'Spawn Point 224 - Arathi Highlands'),(3424,2002,0,'Spawn Point 225 - Arathi Highlands'),(3425,2002,0,'Spawn Point 226 - Arathi Highlands'),(3426,2002,0,'Spawn Point 227 - Arathi Highlands'),(3427,2002,0,'Spawn Point 228 - Arathi Highlands'),(3428,2002,0,'Spawn Point 229 - Arathi Highlands'),(3429,2002,0,'Spawn Point 230 - Arathi Highlands'),(3430,2002,0,'Spawn Point 231 - Arathi Highlands'),(3431,2002,0,'Spawn Point 232 - Arathi Highlands'),(3432,2002,0,'Spawn Point 233 - Arathi Highlands'),(3433,2002,0,'Spawn Point 234 - Arathi Highlands'),(3434,2002,0,'Spawn Point 235 - Arathi Highlands'),(3435,2002,0,'Spawn Point 236 - Arathi Highlands'),(3436,2002,0,'Spawn Point 237 - Arathi Highlands'),(3437,2002,0,'Spawn Point 238 - Arathi Highlands'),(3438,2002,0,'Spawn Point 239 - Arathi Highlands'),(3439,2002,0,'Spawn Point 240 - Arathi Highlands'),(3440,2002,0,'Spawn Point 241 - Arathi Highlands'),(3441,2002,0,'Spawn Point 242 - Arathi Highlands'),(3442,2002,0,'Spawn Point 243 - Arathi Highlands'),(3443,2002,0,'Spawn Point 244 - Arathi Highlands'),(3444,2002,0,'Spawn Point 245 - Arathi Highlands'),(3445,2002,0,'Spawn Point 246 - Arathi Highlands'),(3446,2002,0,'Spawn Point 247 - Arathi Highlands'),(3447,2002,0,'Spawn Point 248 - Arathi Highlands'),(3448,2002,0,'Spawn Point 249 - Arathi Highlands'),(3449,2002,0,'Spawn Point 250 - Arathi Highlands'),(3450,2002,0,'Spawn Point 251 - Arathi Highlands'),(3451,2002,0,'Spawn Point 252 - Arathi Highlands'),(3452,2002,0,'Spawn Point 253 - Arathi Highlands'),(3453,2002,0,'Spawn Point 254 - Arathi Highlands'),(3454,2002,0,'Spawn Point 255 - Arathi Highlands'),(3455,2002,0,'Spawn Point 256 - Arathi Highlands'),(3456,2002,0,'Spawn Point 257 - Arathi Highlands'),(3457,2002,0,'Spawn Point 258 - Arathi Highlands'),(3458,2002,0,'Spawn Point 259 - Arathi Highlands'),(3459,2002,0,'Spawn Point 260 - Arathi Highlands'),(3460,2002,0,'Spawn Point 261 - Arathi Highlands'),(3461,2002,0,'Spawn Point 262 - Arathi Highlands'),(3462,2002,0,'Spawn Point 263 - Arathi Highlands'),(3463,2002,0,'Spawn Point 264 - Arathi Highlands'),(3464,2002,0,'Spawn Point 265 - Arathi Highlands'),(3465,2002,0,'Spawn Point 266 - Arathi Highlands'),(3466,2002,0,'Spawn Point 267 - Arathi Highlands'),(3467,2002,0,'Spawn Point 268 - Arathi Highlands'),(3468,2002,0,'Spawn Point 269 - Arathi Highlands'),(3469,2002,0,'Spawn Point 270 - Arathi Highlands'),(3470,2002,0,'Spawn Point 271 - Arathi Highlands'),(3471,2002,0,'Spawn Point 272 - Arathi Highlands'),(3472,2002,0,'Spawn Point 273 - Arathi Highlands'),(3473,2002,0,'Spawn Point 274 - Arathi Highlands'),(3474,2002,0,'Spawn Point 275 - Arathi Highlands'),(3475,2002,0,'Spawn Point 276 - Arathi Highlands'),(3476,2002,0,'Spawn Point 277 - Arathi Highlands'),(3477,2002,0,'Spawn Point 278 - Arathi Highlands'),(3478,2002,0,'Spawn Point 279 - Arathi Highlands'),(3479,2002,0,'Spawn Point 280 - Arathi Highlands'),(3480,2002,0,'Spawn Point 281 - Arathi Highlands'),(3481,2002,0,'Spawn Point 282 - Arathi Highlands'),(3482,2002,0,'Spawn Point 283 - Arathi Highlands'),(3483,2002,0,'Spawn Point 284 - Arathi Highlands'),(3484,2002,0,'Spawn Point 285 - Arathi Highlands'),(3485,2002,0,'Spawn Point 286 - Arathi Highlands'),(3486,2002,0,'Spawn Point 287 - Arathi Highlands'),(3487,2002,0,'Spawn Point 288 - Arathi Highlands'),(3488,2002,0,'Spawn Point 289 - Arathi Highlands'),(3489,2002,0,'Spawn Point 290 - Arathi Highlands'),(3490,2002,0,'Spawn Point 291 - Arathi Highlands'),(3491,2002,0,'Spawn Point 292 - Arathi Highlands'),(3492,2002,0,'Spawn Point 293 - Arathi Highlands'),(3493,2002,0,'Spawn Point 294 - Arathi Highlands'),(3494,2003,0,'Spawn Point 295 - Arathi Highlands'),(3495,2003,0,'Spawn Point 296 - Arathi Highlands'),(3496,2003,0,'Spawn Point 297 - Arathi Highlands'),(3497,2003,0,'Spawn Point 298 - Arathi Highlands'),(3498,2003,0,'Spawn Point 299 - Arathi Highlands'),(3499,2003,0,'Spawn Point 300 - Arathi Highlands'),(3500,2003,0,'Spawn Point 301 - Arathi Highlands'),(3501,2003,0,'Spawn Point 302 - Arathi Highlands'),(3502,2003,0,'Spawn Point 303 - Arathi Highlands'),(3503,2003,0,'Spawn Point 304 - Arathi Highlands'),(3504,2003,0,'Spawn Point 305 - Arathi Highlands'),(3505,2003,0,'Spawn Point 306 - Arathi Highlands'),(3506,2003,0,'Spawn Point 307 - Arathi Highlands'),(3507,2003,0,'Spawn Point 308 - Arathi Highlands'),(3508,2003,0,'Spawn Point 309 - Arathi Highlands'),(3509,2003,0,'Spawn Point 310 - Arathi Highlands'),(3510,2003,0,'Spawn Point 311 - Arathi Highlands'),(3511,2003,0,'Spawn Point 312 - Arathi Highlands'),(3512,2003,0,'Spawn Point 313 - Arathi Highlands'),(3513,2003,0,'Spawn Point 314 - Arathi Highlands'),(3514,2003,0,'Spawn Point 315 - Arathi Highlands'),(3515,2003,0,'Spawn Point 316 - Arathi Highlands'),(3516,2003,0,'Spawn Point 317 - Arathi Highlands'),(3517,2003,0,'Spawn Point 318 - Arathi Highlands'),(3518,2003,0,'Spawn Point 319 - Arathi Highlands'),(3519,2003,0,'Spawn Point 320 - Arathi Highlands'),(3520,2003,0,'Spawn Point 321 - Arathi Highlands'),(3521,2003,0,'Spawn Point 322 - Arathi Highlands'),(3522,2003,0,'Spawn Point 323 - Arathi Highlands'),(3600,2004,0,'Spawn Point 1 - Badlands'),(3601,2004,0,'Spawn Point 2 - Badlands'),(3602,2004,0,'Spawn Point 3 - Badlands'),(3603,2004,0,'Spawn Point 4 - Badlands'),(3604,2004,0,'Spawn Point 5 - Badlands'),(3605,2004,0,'Spawn Point 6 - Badlands'),(3606,2004,0,'Spawn Point 7 - Badlands'),(3607,2004,0,'Spawn Point 8 - Badlands'),(3608,2004,0,'Spawn Point 9 - Badlands'),(3609,2004,0,'Spawn Point 10 - Badlands'),(3610,2004,0,'Spawn Point 11 - Badlands'),(3611,2004,0,'Spawn Point 12 - Badlands'),(3612,2004,0,'Spawn Point 13 - Badlands'),(3613,2004,0,'Spawn Point 14 - Badlands'),(3614,2004,0,'Spawn Point 15 - Badlands'),(3615,2004,0,'Spawn Point 16 - Badlands'),(3616,2004,0,'Spawn Point 17 - Badlands'),(3617,2004,0,'Spawn Point 18 - Badlands'),(3618,2004,0,'Spawn Point 19 - Badlands'),(3619,2004,0,'Spawn Point 20 - Badlands'),(3620,2004,0,'Spawn Point 21 - Badlands'),(3621,2004,0,'Spawn Point 22 - Badlands'),(3622,2004,0,'Spawn Point 23 - Badlands'),(3623,2004,0,'Spawn Point 24 - Badlands'),(3624,2004,0,'Spawn Point 25 - Badlands'),(3625,2004,0,'Spawn Point 26 - Badlands'),(3626,2004,0,'Spawn Point 27 - Badlands'),(3627,2004,0,'Spawn Point 28 - Badlands'),(3628,2004,0,'Spawn Point 29 - Badlands'),(3629,2004,0,'Spawn Point 30 - Badlands'),(3630,2004,0,'Spawn Point 31 - Badlands'),(3631,2004,0,'Spawn Point 32 - Badlands'),(3632,2004,0,'Spawn Point 33 - Badlands'),(3633,2004,0,'Spawn Point 34 - Badlands'),(3634,2004,0,'Spawn Point 35 - Badlands'),(3635,2004,0,'Spawn Point 36 - Badlands'),(3636,2004,0,'Spawn Point 37 - Badlands'),(3637,2004,0,'Spawn Point 38 - Badlands'),(3638,2004,0,'Spawn Point 39 - Badlands'),(3639,2004,0,'Spawn Point 40 - Badlands'),(3640,2004,0,'Spawn Point 41 - Badlands'),(3641,2004,0,'Spawn Point 42 - Badlands'),(3642,2004,0,'Spawn Point 43 - Badlands'),(3643,2004,0,'Spawn Point 44 - Badlands'),(3644,2004,0,'Spawn Point 45 - Badlands'),(3645,2004,0,'Spawn Point 46 - Badlands'),(3646,2004,0,'Spawn Point 47 - Badlands'),(3647,2004,0,'Spawn Point 48 - Badlands'),(3648,2004,0,'Spawn Point 49 - Badlands'),(3649,2004,0,'Spawn Point 50 - Badlands'),(3650,2004,0,'Spawn Point 51 - Badlands'),(3651,2004,0,'Spawn Point 52 - Badlands'),(3652,2004,0,'Spawn Point 53 - Badlands'),(3653,2004,0,'Spawn Point 54 - Badlands'),(3654,2004,0,'Spawn Point 55 - Badlands'),(3655,2004,0,'Spawn Point 56 - Badlands'),(3656,2004,0,'Spawn Point 57 - Badlands'),(3657,2004,0,'Spawn Point 58 - Badlands'),(3658,2004,0,'Spawn Point 59 - Badlands'),(3659,2004,0,'Spawn Point 60 - Badlands'),(3660,2004,0,'Spawn Point 61 - Badlands'),(3661,2004,0,'Spawn Point 62 - Badlands'),(3662,2004,0,'Spawn Point 63 - Badlands'),(3663,2004,0,'Spawn Point 64 - Badlands'),(3664,2004,0,'Spawn Point 65 - Badlands'),(3665,2004,0,'Spawn Point 66 - Badlands'),(3666,2004,0,'Spawn Point 67 - Badlands'),(3667,2004,0,'Spawn Point 68 - Badlands'),(3668,2004,0,'Spawn Point 69 - Badlands'),(3669,2004,0,'Spawn Point 70 - Badlands'),(3670,2004,0,'Spawn Point 71 - Badlands'),(3671,2004,0,'Spawn Point 72 - Badlands'),(3672,2004,0,'Spawn Point 73 - Badlands'),(3673,2004,0,'Spawn Point 74 - Badlands'),(3674,2004,0,'Spawn Point 75 - Badlands'),(3675,2004,0,'Spawn Point 76 - Badlands'),(3676,2004,0,'Spawn Point 77 - Badlands'),(3677,2004,0,'Spawn Point 78 - Badlands'),(3678,2004,0,'Spawn Point 79 - Badlands'),(3679,2004,0,'Spawn Point 80 - Badlands'),(3680,2004,0,'Spawn Point 81 - Badlands'),(3681,2004,0,'Spawn Point 82 - Badlands'),(3682,2004,0,'Spawn Point 83 - Badlands'),(3683,2004,0,'Spawn Point 84 - Badlands'),(3684,2004,0,'Spawn Point 85 - Badlands'),(3685,2004,0,'Spawn Point 86 - Badlands'),(3686,2004,0,'Spawn Point 87 - Badlands'),(3687,2004,0,'Spawn Point 88 - Badlands'),(3688,2004,0,'Spawn Point 89 - Badlands'),(3689,2004,0,'Spawn Point 90 - Badlands'),(3690,2004,0,'Spawn Point 91 - Badlands'),(3691,2004,0,'Spawn Point 92 - Badlands'),(3692,2004,0,'Spawn Point 93 - Badlands'),(3693,2004,0,'Spawn Point 94 - Badlands'),(3694,2004,0,'Spawn Point 95 - Badlands'),(3695,2004,0,'Spawn Point 96 - Badlands'),(3696,2004,0,'Spawn Point 97 - Badlands'),(3697,2004,0,'Spawn Point 98 - Badlands'),(3698,2004,0,'Spawn Point 99 - Badlands'),(3699,2004,0,'Spawn Point 100 - Badlands'),(3700,2004,0,'Spawn Point 101 - Badlands'),(3701,2004,0,'Spawn Point 102 - Badlands'),(3702,2004,0,'Spawn Point 103 - Badlands'),(3703,2004,0,'Spawn Point 104 - Badlands'),(3704,2004,0,'Spawn Point 105 - Badlands'),(3705,2004,0,'Spawn Point 106 - Badlands'),(3706,2004,0,'Spawn Point 107 - Badlands'),(3707,2004,0,'Spawn Point 108 - Badlands'),(3708,2004,0,'Spawn Point 109 - Badlands'),(3709,2004,0,'Spawn Point 110 - Badlands'),(3710,2004,0,'Spawn Point 111 - Badlands'),(3711,2004,0,'Spawn Point 112 - Badlands'),(3712,2004,0,'Spawn Point 113 - Badlands'),(3713,2004,0,'Spawn Point 114 - Badlands'),(3714,2004,0,'Spawn Point 115 - Badlands'),(3715,2004,0,'Spawn Point 116 - Badlands'),(3716,2004,0,'Spawn Point 117 - Badlands'),(3717,2004,0,'Spawn Point 118 - Badlands'),(3718,2004,0,'Spawn Point 119 - Badlands'),(3719,2004,0,'Spawn Point 120 - Badlands'),(3720,2004,0,'Spawn Point 121 - Badlands'),(3721,2004,0,'Spawn Point 122 - Badlands'),(3722,2004,0,'Spawn Point 123 - Badlands'),(3723,2004,0,'Spawn Point 124 - Badlands'),(3724,2004,0,'Spawn Point 125 - Badlands'),(3725,2004,0,'Spawn Point 126 - Badlands'),(3726,2004,0,'Spawn Point 127 - Badlands'),(3727,2004,0,'Spawn Point 128 - Badlands'),(3728,2004,0,'Spawn Point 129 - Badlands'),(3729,2004,0,'Spawn Point 130 - Badlands'),(3730,2004,0,'Spawn Point 131 - Badlands'),(3731,2004,0,'Spawn Point 132 - Badlands'),(3732,2004,0,'Spawn Point 133 - Badlands'),(3733,2004,0,'Spawn Point 134 - Badlands'),(3734,2004,0,'Spawn Point 135 - Badlands'),(3735,2004,0,'Spawn Point 136 - Badlands'),(3736,2004,0,'Spawn Point 137 - Badlands'),(3737,2004,0,'Spawn Point 138 - Badlands'),(3738,2004,0,'Spawn Point 139 - Badlands'),(3739,2004,0,'Spawn Point 140 - Badlands'),(3740,2004,0,'Spawn Point 141 - Badlands'),(3741,2004,0,'Spawn Point 142 - Badlands'),(3742,2004,0,'Spawn Point 143 - Badlands'),(3743,2004,0,'Spawn Point 144 - Badlands'),(3744,2004,0,'Spawn Point 145 - Badlands'),(3745,2004,0,'Spawn Point 146 - Badlands'),(3746,2004,0,'Spawn Point 147 - Badlands'),(3747,2004,0,'Spawn Point 148 - Badlands'),(3748,2004,0,'Spawn Point 149 - Badlands'),(3749,2004,0,'Spawn Point 150 - Badlands'),(3750,2004,0,'Spawn Point 151 - Badlands'),(3751,2004,0,'Spawn Point 152 - Badlands'),(3752,2004,0,'Spawn Point 153 - Badlands'),(3753,2004,0,'Spawn Point 154 - Badlands'),(3754,2004,0,'Spawn Point 155 - Badlands'),(3755,2004,0,'Spawn Point 156 - Badlands'),(3756,2004,0,'Spawn Point 157 - Badlands'),(3900,2005,0,'Spawn Point 1 - Blasted Lands'),(3901,2005,0,'Spawn Point 2 - Blasted Lands'),(3902,2005,0,'Spawn Point 3 - Blasted Lands'),(3903,2005,0,'Spawn Point 4 - Blasted Lands'),(3904,2005,0,'Spawn Point 5 - Blasted Lands'),(3905,2005,0,'Spawn Point 6 - Blasted Lands'),(3906,2005,0,'Spawn Point 7 - Blasted Lands'),(3907,2005,0,'Spawn Point 8 - Blasted Lands'),(3908,2005,0,'Spawn Point 9 - Blasted Lands'),(3909,2005,0,'Spawn Point 10 - Blasted Lands'),(3910,2005,0,'Spawn Point 11 - Blasted Lands'),(3911,2005,0,'Spawn Point 12 - Blasted Lands'),(3912,2005,0,'Spawn Point 13 - Blasted Lands'),(3913,2005,0,'Spawn Point 14 - Blasted Lands'),(3914,2005,0,'Spawn Point 15 - Blasted Lands'),(3915,2005,0,'Spawn Point 16 - Blasted Lands'),(3916,2005,0,'Spawn Point 17 - Blasted Lands'),(3917,2005,0,'Spawn Point 18 - Blasted Lands'),(3918,2005,0,'Spawn Point 19 - Blasted Lands'),(3919,2005,0,'Spawn Point 20 - Blasted Lands'),(3920,2005,0,'Spawn Point 21 - Blasted Lands'),(3921,2005,0,'Spawn Point 22 - Blasted Lands'),(3922,2005,0,'Spawn Point 23 - Blasted Lands'),(3923,2005,0,'Spawn Point 24 - Blasted Lands'),(3924,2005,0,'Spawn Point 25 - Blasted Lands'),(3925,2005,0,'Spawn Point 26 - Blasted Lands'),(3926,2005,0,'Spawn Point 27 - Blasted Lands'),(3927,2005,0,'Spawn Point 28 - Blasted Lands'),(3928,2005,0,'Spawn Point 29 - Blasted Lands'),(3929,2005,0,'Spawn Point 30 - Blasted Lands'),(3930,2005,0,'Spawn Point 31 - Blasted Lands'),(3931,2005,0,'Spawn Point 32 - Blasted Lands'),(3932,2005,0,'Spawn Point 33 - Blasted Lands'),(3933,2005,0,'Spawn Point 34 - Blasted Lands'),(3934,2005,0,'Spawn Point 35 - Blasted Lands'),(3935,2005,0,'Spawn Point 36 - Blasted Lands'),(3936,2005,0,'Spawn Point 37 - Blasted Lands'),(3937,2005,0,'Spawn Point 38 - Blasted Lands'),(3938,2005,0,'Spawn Point 39 - Blasted Lands'),(3939,2005,0,'Spawn Point 40 - Blasted Lands'),(3940,2005,0,'Spawn Point 41 - Blasted Lands'),(3941,2005,0,'Spawn Point 42 - Blasted Lands'),(3942,2005,0,'Spawn Point 43 - Blasted Lands'),(3943,2005,0,'Spawn Point 44 - Blasted Lands'),(3944,2005,0,'Spawn Point 45 - Blasted Lands'),(3945,2005,0,'Spawn Point 46 - Blasted Lands'),(3946,2005,0,'Spawn Point 47 - Blasted Lands'),(3947,2005,0,'Spawn Point 48 - Blasted Lands'),(3948,2005,0,'Spawn Point 49 - Blasted Lands'),(3949,2005,0,'Spawn Point 50 - Blasted Lands'),(3950,2005,0,'Spawn Point 51 - Blasted Lands'),(3951,2005,0,'Spawn Point 52 - Blasted Lands'),(3952,2005,0,'Spawn Point 53 - Blasted Lands'),(3953,2005,0,'Spawn Point 54 - Blasted Lands'),(3954,2005,0,'Spawn Point 55 - Blasted Lands'),(3955,2005,0,'Spawn Point 56 - Blasted Lands'),(3956,2005,0,'Spawn Point 57 - Blasted Lands'),(3957,2005,0,'Spawn Point 58 - Blasted Lands'),(3958,2005,0,'Spawn Point 59 - Blasted Lands'),(3959,2005,0,'Spawn Point 60 - Blasted Lands'),(3960,2005,0,'Spawn Point 61 - Blasted Lands'),(3961,2005,0,'Spawn Point 62 - Blasted Lands'),(3962,2005,0,'Spawn Point 63 - Blasted Lands'),(3963,2005,0,'Spawn Point 64 - Blasted Lands'),(3964,2005,0,'Spawn Point 65 - Blasted Lands'),(3965,2005,0,'Spawn Point 66 - Blasted Lands'),(3966,2005,0,'Spawn Point 67 - Blasted Lands'),(3967,2005,0,'Spawn Point 68 - Blasted Lands'),(3968,2005,0,'Spawn Point 69 - Blasted Lands'),(3969,2005,0,'Spawn Point 70 - Blasted Lands'),(3970,2005,0,'Spawn Point 71 - Blasted Lands'),(3971,2005,0,'Spawn Point 72 - Blasted Lands'),(3972,2005,0,'Spawn Point 73 - Blasted Lands'),(3973,2005,0,'Spawn Point 74 - Blasted Lands'),(3974,2005,0,'Spawn Point 75 - Blasted Lands'),(3975,2005,0,'Spawn Point 76 - Blasted Lands'),(3976,2005,0,'Spawn Point 77 - Blasted Lands'),(3977,2005,0,'Spawn Point 78 - Blasted Lands'),(3978,2005,0,'Spawn Point 79 - Blasted Lands'),(3979,2005,0,'Spawn Point 80 - Blasted Lands'),(3980,2005,0,'Spawn Point 81 - Blasted Lands'),(3981,2005,0,'Spawn Point 82 - Blasted Lands'),(3982,2005,0,'Spawn Point 83 - Blasted Lands'),(3983,2005,0,'Spawn Point 84 - Blasted Lands'),(3984,2005,0,'Spawn Point 85 - Blasted Lands'),(3985,2005,0,'Spawn Point 86 - Blasted Lands'),(3986,2005,0,'Spawn Point 87 - Blasted Lands'),(3987,2005,0,'Spawn Point 88 - Blasted Lands'),(3988,2005,0,'Spawn Point 89 - Blasted Lands'),(3989,2005,0,'Spawn Point 90 - Blasted Lands'),(3990,2005,0,'Spawn Point 91 - Blasted Lands'),(3991,2005,0,'Spawn Point 92 - Blasted Lands'),(3992,2005,0,'Spawn Point 93 - Blasted Lands'),(3993,2005,0,'Spawn Point 94 - Blasted Lands'),(3994,2005,0,'Spawn Point 95 - Blasted Lands'),(3995,2005,0,'Spawn Point 96 - Blasted Lands'),(3996,2005,0,'Spawn Point 97 - Blasted Lands'),(3997,2005,0,'Spawn Point 98 - Blasted Lands'),(3998,2005,0,'Spawn Point 99 - Blasted Lands'),(3999,2005,0,'Spawn Point 100 - Blasted Lands'),(4000,2005,0,'Spawn Point 101 - Blasted Lands'),(4001,2005,0,'Spawn Point 102 - Blasted Lands'),(4002,2005,0,'Spawn Point 103 - Blasted Lands'),(4003,2005,0,'Spawn Point 104 - Blasted Lands'),(4004,2005,0,'Spawn Point 105 - Blasted Lands'),(4005,2005,0,'Spawn Point 106 - Blasted Lands'),(4006,2005,0,'Spawn Point 107 - Blasted Lands'),(4007,2005,0,'Spawn Point 108 - Blasted Lands'),(4008,2005,0,'Spawn Point 109 - Blasted Lands'),(4009,2005,0,'Spawn Point 110 - Blasted Lands'),(4010,2006,0,'Spawn Point 111 - Blasted Lands'),(4011,2006,0,'Spawn Point 112 - Blasted Lands'),(4012,2006,0,'Spawn Point 113 - Blasted Lands'),(4013,2006,0,'Spawn Point 114 - Blasted Lands'),(4014,2006,0,'Spawn Point 115 - Blasted Lands'),(4015,2006,0,'Spawn Point 116 - Blasted Lands'),(4016,2006,0,'Spawn Point 117 - Blasted Lands'),(4017,2006,0,'Spawn Point 118 - Blasted Lands'),(4018,2006,0,'Spawn Point 119 - Blasted Lands'),(4019,2006,0,'Spawn Point 120 - Blasted Lands'),(4020,2006,0,'Spawn Point 121 - Blasted Lands'),(4100,2007,0,'Spawn Point 1 - Burning Steppes'),(4101,2007,0,'Spawn Point 2 - Burning Steppes'),(4102,2007,0,'Spawn Point 3 - Burning Steppes'),(4103,2007,0,'Spawn Point 4 - Burning Steppes'),(4104,2007,0,'Spawn Point 5 - Burning Steppes'),(4105,2007,0,'Spawn Point 6 - Burning Steppes'),(4106,2007,0,'Spawn Point 7 - Burning Steppes'),(4107,2007,0,'Spawn Point 8 - Burning Steppes'),(4108,2007,0,'Spawn Point 9 - Burning Steppes'),(4109,2007,0,'Spawn Point 10 - Burning Steppes'),(4110,2007,0,'Spawn Point 11 - Burning Steppes'),(4111,2007,0,'Spawn Point 12 - Burning Steppes'),(4112,2007,0,'Spawn Point 13 - Burning Steppes'),(4113,2007,0,'Spawn Point 14 - Burning Steppes'),(4114,2007,0,'Spawn Point 15 - Burning Steppes'),(4115,2007,0,'Spawn Point 16 - Burning Steppes'),(4116,2007,0,'Spawn Point 17 - Burning Steppes'),(4117,2007,0,'Spawn Point 18 - Burning Steppes'),(4118,2007,0,'Spawn Point 19 - Burning Steppes'),(4119,2007,0,'Spawn Point 20 - Burning Steppes'),(4120,2007,0,'Spawn Point 21 - Burning Steppes'),(4121,2007,0,'Spawn Point 22 - Burning Steppes'),(4122,2007,0,'Spawn Point 23 - Burning Steppes'),(4123,2007,0,'Spawn Point 24 - Burning Steppes'),(4124,2007,0,'Spawn Point 25 - Burning Steppes'),(4125,2007,0,'Spawn Point 26 - Burning Steppes'),(4126,2007,0,'Spawn Point 27 - Burning Steppes'),(4127,2007,0,'Spawn Point 28 - Burning Steppes'),(4128,2007,0,'Spawn Point 29 - Burning Steppes'),(4129,2007,0,'Spawn Point 30 - Burning Steppes'),(4130,2007,0,'Spawn Point 31 - Burning Steppes'),(4131,2007,0,'Spawn Point 32 - Burning Steppes'),(4132,2007,0,'Spawn Point 33 - Burning Steppes'),(4133,2007,0,'Spawn Point 34 - Burning Steppes'),(4134,2007,0,'Spawn Point 35 - Burning Steppes'),(4135,2007,0,'Spawn Point 36 - Burning Steppes'),(4136,2007,0,'Spawn Point 37 - Burning Steppes'),(4137,2007,0,'Spawn Point 38 - Burning Steppes'),(4138,2007,0,'Spawn Point 39 - Burning Steppes'),(4139,2007,0,'Spawn Point 40 - Burning Steppes'),(4140,2007,0,'Spawn Point 41 - Burning Steppes'),(4141,2007,0,'Spawn Point 42 - Burning Steppes'),(4142,2007,0,'Spawn Point 43 - Burning Steppes'),(4143,2007,0,'Spawn Point 44 - Burning Steppes'),(4144,2007,0,'Spawn Point 45 - Burning Steppes'),(4145,2007,0,'Spawn Point 46 - Burning Steppes'),(4146,2007,0,'Spawn Point 47 - Burning Steppes'),(4147,2007,0,'Spawn Point 48 - Burning Steppes'),(4148,2007,0,'Spawn Point 49 - Burning Steppes'),(4149,2007,0,'Spawn Point 50 - Burning Steppes'),(4150,2007,0,'Spawn Point 51 - Burning Steppes'),(4151,2007,0,'Spawn Point 52 - Burning Steppes'),(4152,2007,0,'Spawn Point 53 - Burning Steppes'),(4153,2007,0,'Spawn Point 54 - Burning Steppes'),(4154,2007,0,'Spawn Point 55 - Burning Steppes'),(4155,2007,0,'Spawn Point 56 - Burning Steppes'),(4156,2007,0,'Spawn Point 57 - Burning Steppes'),(4157,2007,0,'Spawn Point 58 - Burning Steppes'),(4158,2007,0,'Spawn Point 59 - Burning Steppes'),(4159,2007,0,'Spawn Point 60 - Burning Steppes'),(4160,2007,0,'Spawn Point 61 - Burning Steppes'),(4161,2007,0,'Spawn Point 62 - Burning Steppes'),(4162,2007,0,'Spawn Point 63 - Burning Steppes'),(4163,2007,0,'Spawn Point 64 - Burning Steppes'),(4164,2007,0,'Spawn Point 65 - Burning Steppes'),(4165,2007,0,'Spawn Point 66 - Burning Steppes'),(4166,2007,0,'Spawn Point 67 - Burning Steppes'),(4167,2007,0,'Spawn Point 68 - Burning Steppes'),(4168,2007,0,'Spawn Point 69 - Burning Steppes'),(4169,2007,0,'Spawn Point 70 - Burning Steppes'),(4170,2007,0,'Spawn Point 71 - Burning Steppes'),(4171,2007,0,'Spawn Point 72 - Burning Steppes'),(4172,2007,0,'Spawn Point 73 - Burning Steppes'),(4173,2007,0,'Spawn Point 74 - Burning Steppes'),(4174,2007,0,'Spawn Point 75 - Burning Steppes'),(4175,2007,0,'Spawn Point 76 - Burning Steppes'),(4176,2007,0,'Spawn Point 77 - Burning Steppes'),(4177,2007,0,'Spawn Point 78 - Burning Steppes'),(4178,2007,0,'Spawn Point 79 - Burning Steppes'),(4179,2007,0,'Spawn Point 80 - Burning Steppes'),(4180,2007,0,'Spawn Point 81 - Burning Steppes'),(4181,2007,0,'Spawn Point 82 - Burning Steppes'),(4182,2007,0,'Spawn Point 83 - Burning Steppes'),(4183,2007,0,'Spawn Point 84 - Burning Steppes'),(4184,2007,0,'Spawn Point 85 - Burning Steppes'),(4185,2007,0,'Spawn Point 86 - Burning Steppes'),(4186,2007,0,'Spawn Point 87 - Burning Steppes'),(4187,2007,0,'Spawn Point 88 - Burning Steppes'),(4188,2007,0,'Spawn Point 89 - Burning Steppes'),(4189,2007,0,'Spawn Point 90 - Burning Steppes'),(4190,2007,0,'Spawn Point 91 - Burning Steppes'),(4191,2007,0,'Spawn Point 92 - Burning Steppes'),(4192,2007,0,'Spawn Point 93 - Burning Steppes'),(4193,2007,0,'Spawn Point 94 - Burning Steppes'),(4194,2007,0,'Spawn Point 95 - Burning Steppes'),(4195,2007,0,'Spawn Point 96 - Burning Steppes'),(4196,2007,0,'Spawn Point 97 - Burning Steppes'),(4197,2007,0,'Spawn Point 98 - Burning Steppes'),(4198,2007,0,'Spawn Point 99 - Burning Steppes'),(4199,2007,0,'Spawn Point 100 - Burning Steppes'),(4200,2007,0,'Spawn Point 101 - Burning Steppes'),(4201,2007,0,'Spawn Point 102 - Burning Steppes'),(4202,2007,0,'Spawn Point 103 - Burning Steppes'),(4203,2007,0,'Spawn Point 104 - Burning Steppes'),(4204,2007,0,'Spawn Point 105 - Burning Steppes'),(4205,2007,0,'Spawn Point 106 - Burning Steppes'),(4206,2007,0,'Spawn Point 107 - Burning Steppes'),(4207,2007,0,'Spawn Point 108 - Burning Steppes'),(4208,2007,0,'Spawn Point 109 - Burning Steppes'),(4209,2007,0,'Spawn Point 110 - Burning Steppes'),(4210,2007,0,'Spawn Point 111 - Burning Steppes'),(4211,2007,0,'Spawn Point 112 - Burning Steppes'),(4212,2007,0,'Spawn Point 113 - Burning Steppes'),(4213,2007,0,'Spawn Point 114 - Burning Steppes'),(4214,2007,0,'Spawn Point 115 - Burning Steppes'),(4215,2007,0,'Spawn Point 116 - Burning Steppes'),(4216,2007,0,'Spawn Point 117 - Burning Steppes'),(4217,2007,0,'Spawn Point 118 - Burning Steppes'),(4218,2007,0,'Spawn Point 119 - Burning Steppes'),(4219,2007,0,'Spawn Point 120 - Burning Steppes'),(4220,2007,0,'Spawn Point 121 - Burning Steppes'),(4221,2007,0,'Spawn Point 122 - Burning Steppes'),(4222,2007,0,'Spawn Point 123 - Burning Steppes'),(4223,2007,0,'Spawn Point 124 - Burning Steppes'),(4224,2007,0,'Spawn Point 125 - Burning Steppes'),(4225,2007,0,'Spawn Point 126 - Burning Steppes'),(4226,2007,0,'Spawn Point 127 - Burning Steppes'),(4227,2007,0,'Spawn Point 128 - Burning Steppes'),(4228,2007,0,'Spawn Point 129 - Burning Steppes'),(4229,2007,0,'Spawn Point 130 - Burning Steppes'),(4230,2007,0,'Spawn Point 131 - Burning Steppes'),(4231,2007,0,'Spawn Point 132 - Burning Steppes'),(4232,2007,0,'Spawn Point 133 - Burning Steppes'),(4233,2007,0,'Spawn Point 134 - Burning Steppes'),(4234,2007,0,'Spawn Point 135 - Burning Steppes'),(4235,2007,0,'Spawn Point 136 - Burning Steppes'),(4236,2007,0,'Spawn Point 137 - Burning Steppes'),(4237,2007,0,'Spawn Point 138 - Burning Steppes'),(4238,2007,0,'Spawn Point 139 - Burning Steppes'),(4239,2007,0,'Spawn Point 140 - Burning Steppes'),(4240,2007,0,'Spawn Point 141 - Burning Steppes'),(4241,2007,0,'Spawn Point 142 - Burning Steppes'),(4242,2007,0,'Spawn Point 143 - Burning Steppes'),(4243,2007,0,'Spawn Point 144 - Burning Steppes'),(4244,2007,0,'Spawn Point 145 - Burning Steppes'),(4245,2007,0,'Spawn Point 146 - Burning Steppes'),(4246,2007,0,'Spawn Point 147 - Burning Steppes'),(4247,2007,0,'Spawn Point 148 - Burning Steppes'),(4248,2007,0,'Spawn Point 149 - Burning Steppes'),(4249,2007,0,'Spawn Point 150 - Burning Steppes'),(4250,2007,0,'Spawn Point 151 - Burning Steppes'),(4251,2007,0,'Spawn Point 152 - Burning Steppes'),(4252,2007,0,'Spawn Point 153 - Burning Steppes'),(4253,2007,0,'Spawn Point 154 - Burning Steppes'),(4254,2007,0,'Spawn Point 155 - Burning Steppes'),(4255,2007,0,'Spawn Point 156 - Burning Steppes'),(4256,2007,0,'Spawn Point 157 - Burning Steppes'),(4257,2007,0,'Spawn Point 158 - Burning Steppes'),(4258,2007,0,'Spawn Point 159 - Burning Steppes'),(4259,2007,0,'Spawn Point 160 - Burning Steppes'),(4260,2007,0,'Spawn Point 161 - Burning Steppes'),(4261,2007,0,'Spawn Point 162 - Burning Steppes'),(4262,2007,0,'Spawn Point 163 - Burning Steppes'),(4263,2007,0,'Spawn Point 164 - Burning Steppes'),(4264,2007,0,'Spawn Point 165 - Burning Steppes'),(4265,2007,0,'Spawn Point 166 - Burning Steppes'),(4266,2007,0,'Spawn Point 167 - Burning Steppes'),(4267,2007,0,'Spawn Point 168 - Burning Steppes'),(4268,2007,0,'Spawn Point 169 - Burning Steppes'),(4269,2007,0,'Spawn Point 170 - Burning Steppes'),(4270,2007,0,'Spawn Point 171 - Burning Steppes'),(4271,2007,0,'Spawn Point 172 - Burning Steppes'),(4272,2007,0,'Spawn Point 173 - Burning Steppes'),(4273,2007,0,'Spawn Point 174 - Burning Steppes'),(4274,2007,0,'Spawn Point 175 - Burning Steppes'),(4275,2007,0,'Spawn Point 176 - Burning Steppes'),(4276,2007,0,'Spawn Point 177 - Burning Steppes'),(4277,2007,0,'Spawn Point 178 - Burning Steppes'),(4278,2007,0,'Spawn Point 179 - Burning Steppes'),(4279,2007,0,'Spawn Point 180 - Burning Steppes'),(4280,2007,0,'Spawn Point 181 - Burning Steppes'),(4281,2007,0,'Spawn Point 182 - Burning Steppes'),(4282,2007,0,'Spawn Point 183 - Burning Steppes'),(4283,2007,0,'Spawn Point 184 - Burning Steppes'),(4284,2007,0,'Spawn Point 185 - Burning Steppes'),(4285,2007,0,'Spawn Point 186 - Burning Steppes'),(4286,2007,0,'Spawn Point 187 - Burning Steppes'),(4287,2007,0,'Spawn Point 188 - Burning Steppes'),(4288,2007,0,'Spawn Point 189 - Burning Steppes'),(4289,2007,0,'Spawn Point 190 - Burning Steppes'),(4290,2007,0,'Spawn Point 191 - Burning Steppes'),(4291,2007,0,'Spawn Point 192 - Burning Steppes'),(4292,2007,0,'Spawn Point 193 - Burning Steppes'),(4293,2007,0,'Spawn Point 194 - Burning Steppes'),(4294,2007,0,'Spawn Point 195 - Burning Steppes'),(4295,2007,0,'Spawn Point 196 - Burning Steppes'),(4296,2007,0,'Spawn Point 197 - Burning Steppes'),(4297,2007,0,'Spawn Point 198 - Burning Steppes'),(4298,2007,0,'Spawn Point 199 - Burning Steppes'),(4299,2007,0,'Spawn Point 200 - Burning Steppes'),(4300,2007,0,'Spawn Point 201 - Burning Steppes'),(4301,2007,0,'Spawn Point 202 - Burning Steppes'),(4302,2007,0,'Spawn Point 203 - Burning Steppes'),(4303,2007,0,'Spawn Point 204 - Burning Steppes'),(4304,2007,0,'Spawn Point 205 - Burning Steppes'),(4305,2007,0,'Spawn Point 206 - Burning Steppes'),(4306,2007,0,'Spawn Point 207 - Burning Steppes'),(4307,2007,0,'Spawn Point 208 - Burning Steppes'),(4308,2007,0,'Spawn Point 209 - Burning Steppes'),(4309,2007,0,'Spawn Point 210 - Burning Steppes'),(4310,2007,0,'Spawn Point 211 - Burning Steppes'),(4311,2007,0,'Spawn Point 212 - Burning Steppes'),(4312,2007,0,'Spawn Point 213 - Burning Steppes'),(4313,2007,0,'Spawn Point 214 - Burning Steppes'),(4314,2007,0,'Spawn Point 215 - Burning Steppes'),(4315,2007,0,'Spawn Point 216 - Burning Steppes'),(4316,2007,0,'Spawn Point 217 - Burning Steppes'),(4317,2007,0,'Spawn Point 218 - Burning Steppes'),(4318,2007,0,'Spawn Point 219 - Burning Steppes'),(4319,2007,0,'Spawn Point 220 - Burning Steppes'),(4320,2007,0,'Spawn Point 221 - Burning Steppes'),(4321,2007,0,'Spawn Point 222 - Burning Steppes'),(4322,2007,0,'Spawn Point 223 - Burning Steppes'),(4323,2007,0,'Spawn Point 224 - Burning Steppes'),(4324,2007,0,'Spawn Point 225 - Burning Steppes'),(4325,2007,0,'Spawn Point 226 - Burning Steppes'),(4326,2007,0,'Spawn Point 227 - Burning Steppes'),(4327,2007,0,'Spawn Point 228 - Burning Steppes'),(4328,2007,0,'Spawn Point 229 - Burning Steppes'),(4329,2007,0,'Spawn Point 230 - Burning Steppes'),(4330,2007,0,'Spawn Point 231 - Burning Steppes'),(4331,2007,0,'Spawn Point 232 - Burning Steppes'),(4332,2007,0,'Spawn Point 233 - Burning Steppes'),(4333,2007,0,'Spawn Point 234 - Burning Steppes'),(4334,2007,0,'Spawn Point 235 - Burning Steppes'),(4335,2007,0,'Spawn Point 236 - Burning Steppes'),(4336,2007,0,'Spawn Point 237 - Burning Steppes'),(4337,2007,0,'Spawn Point 238 - Burning Steppes'),(4338,2007,0,'Spawn Point 239 - Burning Steppes'),(4339,2007,0,'Spawn Point 240 - Burning Steppes'),(4400,2009,0,'Spawn Point 1 - Duskwood'),(4401,2009,0,'Spawn Point 2 - Duskwood'),(4402,2009,0,'Spawn Point 3 - Duskwood'),(4403,2009,0,'Spawn Point 4 - Duskwood'),(4404,2009,0,'Spawn Point 5 - Duskwood'),(4405,2009,0,'Spawn Point 6 - Duskwood'),(4406,2009,0,'Spawn Point 7 - Duskwood'),(4407,2009,0,'Spawn Point 8 - Duskwood'),(4408,2009,0,'Spawn Point 9 - Duskwood'),(4409,2009,0,'Spawn Point 10 - Duskwood'),(4410,2009,0,'Spawn Point 11 - Duskwood'),(4411,2009,0,'Spawn Point 12 - Duskwood'),(4412,2009,0,'Spawn Point 13 - Duskwood'),(4413,2009,0,'Spawn Point 14 - Duskwood'),(4414,2009,0,'Spawn Point 15 - Duskwood'),(4415,2009,0,'Spawn Point 16 - Duskwood'),(4416,2009,0,'Spawn Point 17 - Duskwood'),(4417,2009,0,'Spawn Point 18 - Duskwood'),(4418,2009,0,'Spawn Point 19 - Duskwood'),(4419,2009,0,'Spawn Point 20 - Duskwood'),(4420,2009,0,'Spawn Point 21 - Duskwood'),(4421,2009,0,'Spawn Point 22 - Duskwood'),(4422,2009,0,'Spawn Point 23 - Duskwood'),(4423,2009,0,'Spawn Point 24 - Duskwood'),(4424,2009,0,'Spawn Point 25 - Duskwood'),(4425,2009,0,'Spawn Point 26 - Duskwood'),(4426,2009,0,'Spawn Point 27 - Duskwood'),(4427,2009,0,'Spawn Point 28 - Duskwood'),(4428,2009,0,'Spawn Point 29 - Duskwood'),(4429,2009,0,'Spawn Point 30 - Duskwood'),(4430,2009,0,'Spawn Point 31 - Duskwood'),(4431,2009,0,'Spawn Point 32 - Duskwood'),(4432,2009,0,'Spawn Point 33 - Duskwood'),(4433,2009,0,'Spawn Point 34 - Duskwood'),(4434,2009,0,'Spawn Point 35 - Duskwood'),(4435,2009,0,'Spawn Point 36 - Duskwood'),(4436,2009,0,'Spawn Point 37 - Duskwood'),(4437,2009,0,'Spawn Point 38 - Duskwood'),(4438,2009,0,'Spawn Point 39 - Duskwood'),(4439,2009,0,'Spawn Point 40 - Duskwood'),(4440,2009,0,'Spawn Point 41 - Duskwood'),(4441,2009,0,'Spawn Point 42 - Duskwood'),(4442,2009,0,'Spawn Point 43 - Duskwood'),(4443,2009,0,'Spawn Point 44 - Duskwood'),(4444,2009,0,'Spawn Point 45 - Duskwood'),(4445,2009,0,'Spawn Point 46 - Duskwood'),(4446,2009,0,'Spawn Point 47 - Duskwood'),(4447,2009,0,'Spawn Point 48 - Duskwood'),(4448,2009,0,'Spawn Point 49 - Duskwood'),(4449,2009,0,'Spawn Point 50 - Duskwood'),(4450,2009,0,'Spawn Point 51 - Duskwood'),(4451,2009,0,'Spawn Point 52 - Duskwood'),(4452,2009,0,'Spawn Point 53 - Duskwood'),(4453,2009,0,'Spawn Point 54 - Duskwood'),(4454,2009,0,'Spawn Point 55 - Duskwood'),(4455,2009,0,'Spawn Point 56 - Duskwood'),(4456,2009,0,'Spawn Point 57 - Duskwood'),(4457,2009,0,'Spawn Point 58 - Duskwood'),(4458,2009,0,'Spawn Point 59 - Duskwood'),(4459,2009,0,'Spawn Point 60 - Duskwood'),(4460,2009,0,'Spawn Point 61 - Duskwood'),(4461,2009,0,'Spawn Point 62 - Duskwood'),(4462,2009,0,'Spawn Point 63 - Duskwood'),(4463,2009,0,'Spawn Point 64 - Duskwood'),(4464,2009,0,'Spawn Point 65 - Duskwood'),(4465,2009,0,'Spawn Point 66 - Duskwood'),(4466,2009,0,'Spawn Point 67 - Duskwood'),(4467,2009,0,'Spawn Point 68 - Duskwood'),(4468,2009,0,'Spawn Point 69 - Duskwood'),(4469,2009,0,'Spawn Point 70 - Duskwood'),(4470,2009,0,'Spawn Point 71 - Duskwood'),(4471,2009,0,'Spawn Point 72 - Duskwood'),(4472,2009,0,'Spawn Point 73 - Duskwood'),(4473,2009,0,'Spawn Point 74 - Duskwood'),(4474,2009,0,'Spawn Point 75 - Duskwood'),(4475,2009,0,'Spawn Point 76 - Duskwood'),(4476,2009,0,'Spawn Point 77 - Duskwood'),(4477,2009,0,'Spawn Point 78 - Duskwood'),(4478,2009,0,'Spawn Point 79 - Duskwood'),(4479,2009,0,'Spawn Point 80 - Duskwood'),(4480,2009,0,'Spawn Point 81 - Duskwood'),(4481,2009,0,'Spawn Point 82 - Duskwood'),(4482,2009,0,'Spawn Point 83 - Duskwood'),(4483,2009,0,'Spawn Point 84 - Duskwood'),(4484,2009,0,'Spawn Point 85 - Duskwood'),(4485,2009,0,'Spawn Point 86 - Duskwood'),(4486,2009,0,'Spawn Point 87 - Duskwood'),(4487,2009,0,'Spawn Point 88 - Duskwood'),(4488,2009,0,'Spawn Point 89 - Duskwood'),(4489,2009,0,'Spawn Point 90 - Duskwood'),(4490,2009,0,'Spawn Point 91 - Duskwood'),(4491,2009,0,'Spawn Point 92 - Duskwood'),(4492,2009,0,'Spawn Point 93 - Duskwood'),(4493,2009,0,'Spawn Point 94 - Duskwood'),(4494,2009,0,'Spawn Point 95 - Duskwood'),(4495,2009,0,'Spawn Point 96 - Duskwood'),(4496,2009,0,'Spawn Point 97 - Duskwood'),(4497,2009,0,'Spawn Point 98 - Duskwood'),(4498,2009,0,'Spawn Point 99 - Duskwood'),(4499,2009,0,'Spawn Point 100 - Duskwood'),(4500,2009,0,'Spawn Point 101 - Duskwood'),(4501,2009,0,'Spawn Point 102 - Duskwood'),(4502,2009,0,'Spawn Point 103 - Duskwood'),(4503,2009,0,'Spawn Point 104 - Duskwood'),(4504,2009,0,'Spawn Point 105 - Duskwood'),(4505,2009,0,'Spawn Point 106 - Duskwood'),(4506,2009,0,'Spawn Point 107 - Duskwood'),(4507,2009,0,'Spawn Point 108 - Duskwood'),(4508,2009,0,'Spawn Point 109 - Duskwood'),(4509,2009,0,'Spawn Point 110 - Duskwood'),(4510,2009,0,'Spawn Point 111 - Duskwood'),(4511,2009,0,'Spawn Point 112 - Duskwood'),(4512,2009,0,'Spawn Point 113 - Duskwood'),(4600,2010,0,'Spawn Point 1 - Eastern Plaguelands'),(4601,2010,0,'Spawn Point 2 - Eastern Plaguelands'),(4602,2010,0,'Spawn Point 3 - Eastern Plaguelands'),(4603,2010,0,'Spawn Point 4 - Eastern Plaguelands'),(4604,2010,0,'Spawn Point 5 - Eastern Plaguelands'),(4605,2010,0,'Spawn Point 6 - Eastern Plaguelands'),(4606,2010,0,'Spawn Point 7 - Eastern Plaguelands'),(4607,2010,0,'Spawn Point 8 - Eastern Plaguelands'),(4608,2010,0,'Spawn Point 9 - Eastern Plaguelands'),(4609,2010,0,'Spawn Point 10 - Eastern Plaguelands'),(4610,2010,0,'Spawn Point 11 - Eastern Plaguelands'),(4611,2010,0,'Spawn Point 12 - Eastern Plaguelands'),(4612,2010,0,'Spawn Point 13 - Eastern Plaguelands'),(4613,2010,0,'Spawn Point 14 - Eastern Plaguelands'),(4614,2010,0,'Spawn Point 15 - Eastern Plaguelands'),(4615,2010,0,'Spawn Point 16 - Eastern Plaguelands'),(4616,2010,0,'Spawn Point 17 - Eastern Plaguelands'),(4617,2010,0,'Spawn Point 18 - Eastern Plaguelands'),(4618,2010,0,'Spawn Point 19 - Eastern Plaguelands'),(4619,2010,0,'Spawn Point 20 - Eastern Plaguelands'),(4620,2010,0,'Spawn Point 21 - Eastern Plaguelands'),(4621,2010,0,'Spawn Point 22 - Eastern Plaguelands'),(4622,2010,0,'Spawn Point 23 - Eastern Plaguelands'),(4623,2010,0,'Spawn Point 24 - Eastern Plaguelands'),(4624,2010,0,'Spawn Point 25 - Eastern Plaguelands'),(4625,2010,0,'Spawn Point 26 - Eastern Plaguelands'),(4626,2010,0,'Spawn Point 27 - Eastern Plaguelands'),(4627,2010,0,'Spawn Point 28 - Eastern Plaguelands'),(4628,2010,0,'Spawn Point 29 - Eastern Plaguelands'),(4629,2010,0,'Spawn Point 30 - Eastern Plaguelands'),(4630,2010,0,'Spawn Point 31 - Eastern Plaguelands'),(4631,2010,0,'Spawn Point 32 - Eastern Plaguelands'),(4632,2010,0,'Spawn Point 33 - Eastern Plaguelands'),(4633,2010,0,'Spawn Point 34 - Eastern Plaguelands'),(4634,2010,0,'Spawn Point 35 - Eastern Plaguelands'),(4635,2010,0,'Spawn Point 36 - Eastern Plaguelands'),(4636,2010,0,'Spawn Point 37 - Eastern Plaguelands'),(4637,2010,0,'Spawn Point 38 - Eastern Plaguelands'),(4638,2010,0,'Spawn Point 39 - Eastern Plaguelands'),(4639,2010,0,'Spawn Point 40 - Eastern Plaguelands'),(4640,2010,0,'Spawn Point 41 - Eastern Plaguelands'),(4641,2010,0,'Spawn Point 42 - Eastern Plaguelands'),(4642,2010,0,'Spawn Point 43 - Eastern Plaguelands'),(4643,2010,0,'Spawn Point 44 - Eastern Plaguelands'),(4644,2010,0,'Spawn Point 45 - Eastern Plaguelands'),(4645,2010,0,'Spawn Point 46 - Eastern Plaguelands'),(4646,2010,0,'Spawn Point 47 - Eastern Plaguelands'),(4647,2010,0,'Spawn Point 48 - Eastern Plaguelands'),(4648,2010,0,'Spawn Point 49 - Eastern Plaguelands'),(4649,2010,0,'Spawn Point 50 - Eastern Plaguelands'),(4650,2010,0,'Spawn Point 51 - Eastern Plaguelands'),(4651,2010,0,'Spawn Point 52 - Eastern Plaguelands'),(4652,2010,0,'Spawn Point 53 - Eastern Plaguelands'),(4653,2010,0,'Spawn Point 54 - Eastern Plaguelands'),(4654,2010,0,'Spawn Point 55 - Eastern Plaguelands'),(4655,2010,0,'Spawn Point 56 - Eastern Plaguelands'),(4656,2010,0,'Spawn Point 57 - Eastern Plaguelands'),(4657,2010,0,'Spawn Point 58 - Eastern Plaguelands'),(4658,2010,0,'Spawn Point 59 - Eastern Plaguelands'),(4659,2010,0,'Spawn Point 60 - Eastern Plaguelands'),(4660,2010,0,'Spawn Point 61 - Eastern Plaguelands'),(4661,2010,0,'Spawn Point 62 - Eastern Plaguelands'),(4662,2010,0,'Spawn Point 63 - Eastern Plaguelands'),(4663,2010,0,'Spawn Point 64 - Eastern Plaguelands'),(4664,2010,0,'Spawn Point 65 - Eastern Plaguelands'),(4665,2010,0,'Spawn Point 66 - Eastern Plaguelands'),(4666,2010,0,'Spawn Point 67 - Eastern Plaguelands'),(4667,2010,0,'Spawn Point 68 - Eastern Plaguelands'),(4668,2010,0,'Spawn Point 69 - Eastern Plaguelands'),(4669,2010,0,'Spawn Point 70 - Eastern Plaguelands'),(4670,2010,0,'Spawn Point 71 - Eastern Plaguelands'),(4671,2010,0,'Spawn Point 72 - Eastern Plaguelands'),(4672,2010,0,'Spawn Point 73 - Eastern Plaguelands'),(4673,2010,0,'Spawn Point 74 - Eastern Plaguelands'),(4674,2010,0,'Spawn Point 75 - Eastern Plaguelands'),(4675,2010,0,'Spawn Point 76 - Eastern Plaguelands'),(4676,2010,0,'Spawn Point 77 - Eastern Plaguelands'),(4700,2013,0,'Spawn Point 1 - Ghostlands'),(4701,2013,0,'Spawn Point 2 - Ghostlands'),(4702,2013,0,'Spawn Point 3 - Ghostlands'),(4703,2013,0,'Spawn Point 4 - Ghostlands'),(4704,2013,0,'Spawn Point 5 - Ghostlands'),(4705,2013,0,'Spawn Point 6 - Ghostlands'),(4706,2013,0,'Spawn Point 7 - Ghostlands'),(4707,2013,0,'Spawn Point 8 - Ghostlands'),(4708,2013,0,'Spawn Point 9 - Ghostlands'),(4709,2013,0,'Spawn Point 10 - Ghostlands'),(4710,2013,0,'Spawn Point 11 - Ghostlands'),(4711,2013,0,'Spawn Point 12 - Ghostlands'),(4712,2013,0,'Spawn Point 13 - Ghostlands'),(4713,2013,0,'Spawn Point 14 - Ghostlands'),(4714,2013,0,'Spawn Point 15 - Ghostlands'),(4715,2013,0,'Spawn Point 16 - Ghostlands'),(4716,2013,0,'Spawn Point 17 - Ghostlands'),(4717,2013,0,'Spawn Point 18 - Ghostlands'),(4718,2013,0,'Spawn Point 19 - Ghostlands'),(4719,2013,0,'Spawn Point 20 - Ghostlands'),(4720,2013,0,'Spawn Point 21 - Ghostlands'),(4721,2013,0,'Spawn Point 22 - Ghostlands'),(4722,2013,0,'Spawn Point 23 - Ghostlands'),(4723,2013,0,'Spawn Point 24 - Ghostlands'),(4724,2013,0,'Spawn Point 25 - Ghostlands'),(4725,2013,0,'Spawn Point 26 - Ghostlands'),(4726,2013,0,'Spawn Point 27 - Ghostlands'),(4727,2013,0,'Spawn Point 28 - Ghostlands'),(4728,2013,0,'Spawn Point 29 - Ghostlands'),(4729,2013,0,'Spawn Point 30 - Ghostlands'),(4730,2013,0,'Spawn Point 31 - Ghostlands'),(4731,2013,0,'Spawn Point 32 - Ghostlands'),(4732,2013,0,'Spawn Point 33 - Ghostlands'),(4733,2013,0,'Spawn Point 34 - Ghostlands'),(4734,2013,0,'Spawn Point 35 - Ghostlands'),(4735,2013,0,'Spawn Point 36 - Ghostlands'),(4736,2013,0,'Spawn Point 37 - Ghostlands'),(4737,2013,0,'Spawn Point 38 - Ghostlands'),(4738,2013,0,'Spawn Point 39 - Ghostlands'),(4739,2013,0,'Spawn Point 40 - Ghostlands'),(4750,2014,0,'Spawn Point 1 - Hillsbrad Foothills'),(4751,2014,0,'Spawn Point 2 - Hillsbrad Foothills'),(4752,2014,0,'Spawn Point 3 - Hillsbrad Foothills'),(4753,2014,0,'Spawn Point 4 - Hillsbrad Foothills'),(4754,2014,0,'Spawn Point 5 - Hillsbrad Foothills'),(4755,2014,0,'Spawn Point 6 - Hillsbrad Foothills'),(4756,2014,0,'Spawn Point 7 - Hillsbrad Foothills'),(4757,2014,0,'Spawn Point 8 - Hillsbrad Foothills'),(4758,2014,0,'Spawn Point 9 - Hillsbrad Foothills'),(4759,2014,0,'Spawn Point 10 - Hillsbrad Foothills'),(4760,2014,0,'Spawn Point 11 - Hillsbrad Foothills'),(4761,2014,0,'Spawn Point 12 - Hillsbrad Foothills'),(4762,2014,0,'Spawn Point 13 - Hillsbrad Foothills'),(4763,2014,0,'Spawn Point 14 - Hillsbrad Foothills'),(4764,2014,0,'Spawn Point 15 - Hillsbrad Foothills'),(4765,2014,0,'Spawn Point 16 - Hillsbrad Foothills'),(4766,2014,0,'Spawn Point 17 - Hillsbrad Foothills'),(4767,2014,0,'Spawn Point 18 - Hillsbrad Foothills'),(4768,2014,0,'Spawn Point 19 - Hillsbrad Foothills'),(4769,2014,0,'Spawn Point 20 - Hillsbrad Foothills'),(4770,2014,0,'Spawn Point 21 - Hillsbrad Foothills'),(4771,2014,0,'Spawn Point 22 - Hillsbrad Foothills'),(4772,2014,0,'Spawn Point 23 - Hillsbrad Foothills'),(4773,2014,0,'Spawn Point 24 - Hillsbrad Foothills'),(4774,2014,0,'Spawn Point 25 - Hillsbrad Foothills'),(4775,2014,0,'Spawn Point 26 - Hillsbrad Foothills'),(4776,2014,0,'Spawn Point 27 - Hillsbrad Foothills'),(4777,2014,0,'Spawn Point 28 - Hillsbrad Foothills'),(4778,2014,0,'Spawn Point 29 - Hillsbrad Foothills'),(4779,2014,0,'Spawn Point 30 - Hillsbrad Foothills'),(4780,2014,0,'Spawn Point 31 - Hillsbrad Foothills'),(4781,2014,0,'Spawn Point 32 - Hillsbrad Foothills'),(4782,2014,0,'Spawn Point 33 - Hillsbrad Foothills'),(4783,2014,0,'Spawn Point 34 - Hillsbrad Foothills'),(4784,2014,0,'Spawn Point 35 - Hillsbrad Foothills'),(4785,2014,0,'Spawn Point 36 - Hillsbrad Foothills'),(4786,2014,0,'Spawn Point 37 - Hillsbrad Foothills'),(4787,2014,0,'Spawn Point 38 - Hillsbrad Foothills'),(4788,2014,0,'Spawn Point 39 - Hillsbrad Foothills'),(4789,2014,0,'Spawn Point 40 - Hillsbrad Foothills'),(4790,2014,0,'Spawn Point 41 - Hillsbrad Foothills'),(4791,2014,0,'Spawn Point 42 - Hillsbrad Foothills'),(4792,2014,0,'Spawn Point 43 - Hillsbrad Foothills'),(4793,2014,0,'Spawn Point 44 - Hillsbrad Foothills'),(4794,2014,0,'Spawn Point 45 - Hillsbrad Foothills'),(4795,2014,0,'Spawn Point 46 - Hillsbrad Foothills'),(4796,2014,0,'Spawn Point 47 - Hillsbrad Foothills'),(4797,2014,0,'Spawn Point 48 - Hillsbrad Foothills'),(4798,2014,0,'Spawn Point 49 - Hillsbrad Foothills'),(4799,2014,0,'Spawn Point 50 - Hillsbrad Foothills'),(4800,2014,0,'Spawn Point 51 - Hillsbrad Foothills'),(4801,2014,0,'Spawn Point 52 - Hillsbrad Foothills'),(4802,2014,0,'Spawn Point 53 - Hillsbrad Foothills'),(4803,2014,0,'Spawn Point 54 - Hillsbrad Foothills'),(4804,2014,0,'Spawn Point 55 - Hillsbrad Foothills'),(4805,2014,0,'Spawn Point 56 - Hillsbrad Foothills'),(4806,2014,0,'Spawn Point 57 - Hillsbrad Foothills'),(4807,2014,0,'Spawn Point 58 - Hillsbrad Foothills'),(4808,2014,0,'Spawn Point 59 - Hillsbrad Foothills'),(4809,2014,0,'Spawn Point 60 - Hillsbrad Foothills'),(4810,2014,0,'Spawn Point 61 - Hillsbrad Foothills'),(4811,2014,0,'Spawn Point 62 - Hillsbrad Foothills'),(4812,2014,0,'Spawn Point 63 - Hillsbrad Foothills'),(4813,2014,0,'Spawn Point 64 - Hillsbrad Foothills'),(4814,2014,0,'Spawn Point 65 - Hillsbrad Foothills'),(4815,2014,0,'Spawn Point 66 - Hillsbrad Foothills'),(4816,2014,0,'Spawn Point 67 - Hillsbrad Foothills'),(4817,2014,0,'Spawn Point 68 - Hillsbrad Foothills'),(4818,2014,0,'Spawn Point 69 - Hillsbrad Foothills'),(4819,2015,0,'Spawn Point 70 - Hillsbrad Foothills'),(4820,2015,0,'Spawn Point 71 - Hillsbrad Foothills'),(4821,2015,0,'Spawn Point 72 - Hillsbrad Foothills'),(4822,2015,0,'Spawn Point 73 - Hillsbrad Foothills'),(4823,2015,0,'Spawn Point 74 - Hillsbrad Foothills'),(4824,2015,0,'Spawn Point 75 - Hillsbrad Foothills'),(4825,2015,0,'Spawn Point 76 - Hillsbrad Foothills'),(4826,2015,0,'Spawn Point 77 - Hillsbrad Foothills'),(4827,2015,0,'Spawn Point 78 - Hillsbrad Foothills'),(4828,2015,0,'Spawn Point 79 - Hillsbrad Foothills'),(4829,2015,0,'Spawn Point 80 - Hillsbrad Foothills'),(4830,2015,0,'Spawn Point 81 - Hillsbrad Foothills'),(4831,2015,0,'Spawn Point 82 - Hillsbrad Foothills'),(4832,2015,0,'Spawn Point 83 - Hillsbrad Foothills'),(4833,2015,0,'Spawn Point 84 - Hillsbrad Foothills'),(4834,2015,0,'Spawn Point 85 - Hillsbrad Foothills'),(4835,2015,0,'Spawn Point 86 - Hillsbrad Foothills'),(4836,2015,0,'Spawn Point 87 - Hillsbrad Foothills'),(4837,2015,0,'Spawn Point 88 - Hillsbrad Foothills'),(4838,2015,0,'Spawn Point 89 - Hillsbrad Foothills'),(4839,2015,0,'Spawn Point 90 - Hillsbrad Foothills'),(4840,2015,0,'Spawn Point 91 - Hillsbrad Foothills'),(4841,2015,0,'Spawn Point 92 - Hillsbrad Foothills'),(4842,2015,0,'Spawn Point 93 - Hillsbrad Foothills'),(4843,2015,0,'Spawn Point 94 - Hillsbrad Foothills'),(4844,2015,0,'Spawn Point 95 - Hillsbrad Foothills'),(4845,2015,0,'Spawn Point 96 - Hillsbrad Foothills'),(4846,2015,0,'Spawn Point 97 - Hillsbrad Foothills'),(4847,2015,0,'Spawn Point 98 - Hillsbrad Foothills'),(4870,2017,0,'Spawn Point 1 - Isle of Quel\'Danas'),(4871,2017,0,'Spawn Point 2 - Isle of Quel\'Danas'),(4872,2017,0,'Spawn Point 3 - Isle of Quel\'Danas'),(4873,2017,0,'Spawn Point 4 - Isle of Quel\'Danas'),(4874,2017,0,'Spawn Point 5 - Isle of Quel\'Danas'),(4875,2017,0,'Spawn Point 6 - Isle of Quel\'Danas'),(4880,2018,0,'Spawn Point 1 - Loch Modan'),(4881,2018,0,'Spawn Point 2 - Loch Modan'),(4882,2018,0,'Spawn Point 3 - Loch Modan'),(4883,2018,0,'Spawn Point 4 - Loch Modan'),(4884,2018,0,'Spawn Point 5 - Loch Modan'),(4885,2018,0,'Spawn Point 6 - Loch Modan'),(4886,2018,0,'Spawn Point 7 - Loch Modan'),(4887,2018,0,'Spawn Point 8 - Loch Modan'),(4888,2018,0,'Spawn Point 9 - Loch Modan'),(4889,2018,0,'Spawn Point 10 - Loch Modan'),(4890,2018,0,'Spawn Point 11 - Loch Modan'),(4891,2018,0,'Spawn Point 12 - Loch Modan'),(4892,2018,0,'Spawn Point 13 - Loch Modan'),(4893,2018,0,'Spawn Point 14 - Loch Modan'),(4894,2018,0,'Spawn Point 15 - Loch Modan'),(4895,2018,0,'Spawn Point 16 - Loch Modan'),(4896,2018,0,'Spawn Point 17 - Loch Modan'),(4897,2018,0,'Spawn Point 18 - Loch Modan'),(4898,2018,0,'Spawn Point 19 - Loch Modan'),(4899,2018,0,'Spawn Point 20 - Loch Modan'),(4900,2018,0,'Spawn Point 21 - Loch Modan'),(4901,2018,0,'Spawn Point 22 - Loch Modan'),(4902,2018,0,'Spawn Point 23 - Loch Modan'),(4903,2018,0,'Spawn Point 24 - Loch Modan'),(4904,2018,0,'Spawn Point 25 - Loch Modan'),(4905,2018,0,'Spawn Point 26 - Loch Modan'),(4906,2018,0,'Spawn Point 27 - Loch Modan'),(4907,2018,0,'Spawn Point 28 - Loch Modan'),(4908,2018,0,'Spawn Point 29 - Loch Modan'),(4909,2018,0,'Spawn Point 30 - Loch Modan'),(4910,2018,0,'Spawn Point 31 - Loch Modan'),(4911,2018,0,'Spawn Point 32 - Loch Modan'),(4912,2018,0,'Spawn Point 33 - Loch Modan'),(4913,2018,0,'Spawn Point 34 - Loch Modan'),(4914,2018,0,'Spawn Point 35 - Loch Modan'),(4915,2018,0,'Spawn Point 36 - Loch Modan'),(4916,2018,0,'Spawn Point 37 - Loch Modan'),(4917,2018,0,'Spawn Point 38 - Loch Modan'),(4918,2018,0,'Spawn Point 39 - Loch Modan'),(4919,2018,0,'Spawn Point 40 - Loch Modan'),(4920,2018,0,'Spawn Point 41 - Loch Modan'),(4921,2018,0,'Spawn Point 42 - Loch Modan'),(4922,2018,0,'Spawn Point 43 - Loch Modan'),(4923,2018,0,'Spawn Point 44 - Loch Modan'),(4924,2018,0,'Spawn Point 45 - Loch Modan'),(4925,2018,0,'Spawn Point 46 - Loch Modan'),(4926,2018,0,'Spawn Point 47 - Loch Modan'),(4927,2018,0,'Spawn Point 48 - Loch Modan'),(4928,2018,0,'Spawn Point 49 - Loch Modan'),(4929,2018,0,'Spawn Point 50 - Loch Modan'),(4930,2018,0,'Spawn Point 51 - Loch Modan'),(4931,2018,0,'Spawn Point 52 - Loch Modan'),(4932,2018,0,'Spawn Point 53 - Loch Modan'),(4933,2018,0,'Spawn Point 54 - Loch Modan'),(4934,2018,0,'Spawn Point 55 - Loch Modan'),(4935,2018,0,'Spawn Point 56 - Loch Modan'),(4936,2018,0,'Spawn Point 57 - Loch Modan'),(4937,2018,0,'Spawn Point 58 - Loch Modan'),(4938,2018,0,'Spawn Point 59 - Loch Modan'),(4939,2018,0,'Spawn Point 60 - Loch Modan'),(4940,2018,0,'Spawn Point 61 - Loch Modan'),(4941,2018,0,'Spawn Point 62 - Loch Modan'),(4942,2018,0,'Spawn Point 63 - Loch Modan'),(4943,2018,0,'Spawn Point 64 - Loch Modan'),(4944,2018,0,'Spawn Point 65 - Loch Modan'),(4945,2018,0,'Spawn Point 66 - Loch Modan'),(4946,2018,0,'Spawn Point 67 - Loch Modan'),(4947,2018,0,'Spawn Point 68 - Loch Modan'),(4948,2018,0,'Spawn Point 69 - Loch Modan'),(4949,2018,0,'Spawn Point 70 - Loch Modan'),(4950,2018,0,'Spawn Point 71 - Loch Modan'),(4951,2018,0,'Spawn Point 72 - Loch Modan'),(4952,2018,0,'Spawn Point 73 - Loch Modan'),(4953,2018,0,'Spawn Point 74 - Loch Modan'),(4954,2018,0,'Spawn Point 75 - Loch Modan'),(4955,2018,0,'Spawn Point 76 - Loch Modan'),(4956,2018,0,'Spawn Point 77 - Loch Modan'),(4957,2018,0,'Spawn Point 78 - Loch Modan'),(4958,2018,0,'Spawn Point 79 - Loch Modan'),(4959,2018,0,'Spawn Point 80 - Loch Modan'),(4960,2018,0,'Spawn Point 81 - Loch Modan'),(4961,2018,0,'Spawn Point 82 - Loch Modan'),(4962,2018,0,'Spawn Point 83 - Loch Modan'),(4963,2018,0,'Spawn Point 84 - Loch Modan'),(4964,2018,0,'Spawn Point 85 - Loch Modan'),(4965,2018,0,'Spawn Point 86 - Loch Modan'),(4966,2018,0,'Spawn Point 87 - Loch Modan'),(4967,2018,0,'Spawn Point 88 - Loch Modan'),(4968,2018,0,'Spawn Point 89 - Loch Modan'),(4969,2018,0,'Spawn Point 90 - Loch Modan'),(4970,2018,0,'Spawn Point 91 - Loch Modan'),(4971,2018,0,'Spawn Point 92 - Loch Modan'),(4972,2018,0,'Spawn Point 93 - Loch Modan'),(4973,2018,0,'Spawn Point 94 - Loch Modan'),(4974,2018,0,'Spawn Point 95 - Loch Modan'),(4975,2018,0,'Spawn Point 96 - Loch Modan'),(4976,2018,0,'Spawn Point 97 - Loch Modan'),(4977,2018,0,'Spawn Point 98 - Loch Modan'),(4978,2018,0,'Spawn Point 99 - Loch Modan'),(4979,2018,0,'Spawn Point 100 - Loch Modan'),(4980,2018,0,'Spawn Point 101 - Loch Modan'),(4981,2018,0,'Spawn Point 102 - Loch Modan'),(4982,2018,0,'Spawn Point 103 - Loch Modan'),(4983,2018,0,'Spawn Point 104 - Loch Modan'),(4984,2018,0,'Spawn Point 105 - Loch Modan'),(4985,2018,0,'Spawn Point 106 - Loch Modan'),(4986,2018,0,'Spawn Point 107 - Loch Modan'),(4987,2018,0,'Spawn Point 108 - Loch Modan'),(4988,2018,0,'Spawn Point 109 - Loch Modan'),(4989,2018,0,'Spawn Point 110 - Loch Modan'),(4990,2018,0,'Spawn Point 111 - Loch Modan'),(4991,2018,0,'Spawn Point 112 - Loch Modan'),(4992,2018,0,'Spawn Point 113 - Loch Modan'),(5292,899,0,'Sholazar Basin mineral, node 1'),(5293,899,0,'Sholazar Basin mineral, node 2'),(5294,899,0,'Sholazar Basin mineral, node 3'),(5295,899,0,'Sholazar Basin mineral, node 4'),(5296,899,0,'Sholazar Basin mineral, node 5'),(5297,899,0,'Sholazar Basin mineral, node 6'),(5298,899,0,'Sholazar Basin mineral, node 7'),(5299,899,0,'Sholazar Basin mineral, node 8'),(5300,899,0,'Sholazar Basin mineral, node 9'),(5301,899,0,'Sholazar Basin mineral, node 10'),(5302,899,0,'Sholazar Basin mineral, node 11'),(5303,899,0,'Sholazar Basin mineral, node 12'),(5304,899,0,'Sholazar Basin mineral, node 13'),(5305,899,0,'Sholazar Basin mineral, node 14'),(5306,899,0,'Sholazar Basin mineral, node 15'),(5307,899,0,'Sholazar Basin mineral, node 16'),(5308,899,0,'Sholazar Basin mineral, node 17'),(5309,899,0,'Sholazar Basin mineral, node 18'),(5310,899,0,'Sholazar Basin mineral, node 19'),(5311,899,0,'Sholazar Basin mineral, node 20'),(5312,899,0,'Sholazar Basin mineral, node 21'),(5313,899,0,'Sholazar Basin mineral, node 22'),(5314,899,0,'Sholazar Basin mineral, node 23'),(5315,899,0,'Sholazar Basin mineral, node 24'),(5316,899,0,'Sholazar Basin mineral, node 25'),(5317,899,0,'Sholazar Basin mineral, node 26'),(5318,899,0,'Sholazar Basin mineral, node 27'),(5319,899,0,'Sholazar Basin mineral, node 28'),(5320,899,0,'Sholazar Basin mineral, node 29'),(5321,899,0,'Sholazar Basin mineral, node 30'),(5322,899,0,'Sholazar Basin mineral, node 31'),(5323,899,0,'Sholazar Basin mineral, node 32'),(5324,899,0,'Sholazar Basin mineral, node 33'),(5325,899,0,'Sholazar Basin mineral, node 34'),(5326,899,0,'Sholazar Basin mineral, node 35'),(5327,899,0,'Sholazar Basin mineral, node 36'),(5328,899,0,'Sholazar Basin mineral, node 37'),(5329,899,0,'Sholazar Basin mineral, node 38'),(5330,899,0,'Sholazar Basin mineral, node 39'),(5331,899,0,'Sholazar Basin mineral, node 40'),(5332,899,0,'Sholazar Basin mineral, node 41'),(5333,899,0,'Sholazar Basin mineral, node 42'),(5334,899,0,'Sholazar Basin mineral, node 43'),(5335,899,0,'Sholazar Basin mineral, node 44'),(5336,899,0,'Sholazar Basin mineral, node 45'),(5337,899,0,'Sholazar Basin mineral, node 46'),(5338,899,0,'Sholazar Basin mineral, node 47'),(5339,899,0,'Sholazar Basin mineral, node 48'),(5340,899,0,'Sholazar Basin mineral, node 49'),(5341,899,0,'Sholazar Basin mineral, node 50'),(5342,899,0,'Sholazar Basin mineral, node 51'),(5343,899,0,'Sholazar Basin mineral, node 52'),(5344,899,0,'Sholazar Basin mineral, node 53'),(5345,899,0,'Sholazar Basin mineral, node 54'),(5346,899,0,'Sholazar Basin mineral, node 55'),(5347,899,0,'Sholazar Basin mineral, node 56'),(5348,899,0,'Sholazar Basin mineral, node 57'),(5349,899,0,'Sholazar Basin mineral, node 58'),(5350,899,0,'Sholazar Basin mineral, node 59'),(5351,899,0,'Sholazar Basin mineral, node 60'),(5352,899,0,'Sholazar Basin mineral, node 61'),(5353,899,0,'Sholazar Basin mineral, node 62'),(5354,899,0,'Sholazar Basin mineral, node 63'),(5355,899,0,'Sholazar Basin mineral, node 64'),(5356,899,0,'Sholazar Basin mineral, node 65'),(5357,899,0,'Sholazar Basin mineral, node 66'),(5358,899,0,'Sholazar Basin mineral, node 67'),(5359,899,0,'Sholazar Basin mineral, node 68'),(5360,899,0,'Sholazar Basin mineral, node 69'),(5361,899,0,'Sholazar Basin mineral, node 70'),(5362,899,0,'Sholazar Basin mineral, node 71'),(5363,899,0,'Sholazar Basin mineral, node 72'),(5364,899,0,'Sholazar Basin mineral, node 73'),(5365,899,0,'Sholazar Basin mineral, node 74'),(5366,899,0,'Sholazar Basin mineral, node 75'),(5367,899,0,'Sholazar Basin mineral, node 76'),(5368,899,0,'Sholazar Basin mineral, node 77'),(5369,899,0,'Sholazar Basin mineral, node 78'),(5370,899,0,'Sholazar Basin mineral, node 79'),(5371,899,0,'Sholazar Basin mineral, node 80'),(5372,899,0,'Sholazar Basin mineral, node 81'),(5373,899,0,'Sholazar Basin mineral, node 82'),(5374,899,0,'Sholazar Basin mineral, node 83'),(5375,899,0,'Sholazar Basin mineral, node 84'),(5376,898,0,'Storm Peaks mineral, node 1'),(5377,898,0,'Storm Peaks mineral, node 2'),(5378,898,0,'Storm Peaks mineral, node 3'),(5379,898,0,'Storm Peaks mineral, node 4'),(5380,898,0,'Storm Peaks mineral, node 5'),(5381,898,0,'Storm Peaks mineral, node 6'),(5382,898,0,'Storm Peaks mineral, node 7'),(5383,898,0,'Storm Peaks mineral, node 8'),(5384,898,0,'Storm Peaks mineral, node 9'),(5385,898,0,'Storm Peaks mineral, node 10'),(5386,898,0,'Storm Peaks mineral, node 11'),(5387,898,0,'Storm Peaks mineral, node 12'),(5388,898,0,'Storm Peaks mineral, node 13'),(5389,898,0,'Storm Peaks mineral, node 14'),(5390,898,0,'Storm Peaks mineral, node 15'),(5391,898,0,'Storm Peaks mineral, node 16'),(5392,898,0,'Storm Peaks mineral, node 17'),(5393,898,0,'Storm Peaks mineral, node 18'),(5394,898,0,'Storm Peaks mineral, node 19'),(5395,898,0,'Storm Peaks mineral, node 20'),(5396,898,0,'Storm Peaks mineral, node 21'),(5397,898,0,'Storm Peaks mineral, node 22'),(5398,898,0,'Storm Peaks mineral, node 23'),(5399,898,0,'Storm Peaks mineral, node 24'),(5400,898,0,'Storm Peaks mineral, node 25'),(5401,898,0,'Storm Peaks mineral, node 26'),(5402,898,0,'Storm Peaks mineral, node 27'),(5403,898,0,'Storm Peaks mineral, node 28'),(5404,898,0,'Storm Peaks mineral, node 29'),(5405,898,0,'Storm Peaks mineral, node 30'),(5406,898,0,'Storm Peaks mineral, node 31'),(5407,898,0,'Storm Peaks mineral, node 32'),(5408,898,0,'Storm Peaks mineral, node 33'),(5409,898,0,'Storm Peaks mineral, node 34'),(5410,898,0,'Storm Peaks mineral, node 35'),(5411,898,0,'Storm Peaks mineral, node 36'),(5412,898,0,'Storm Peaks mineral, node 37'),(5413,898,0,'Storm Peaks mineral, node 38'),(5414,898,0,'Storm Peaks mineral, node 39'),(5415,898,0,'Storm Peaks mineral, node 40'),(5416,898,0,'Storm Peaks mineral, node 41'),(5417,898,0,'Storm Peaks mineral, node 42'),(5418,898,0,'Storm Peaks mineral, node 43'),(5419,898,0,'Storm Peaks mineral, node 44'),(5420,898,0,'Storm Peaks mineral, node 45'),(5421,898,0,'Storm Peaks mineral, node 46'),(5422,898,0,'Storm Peaks mineral, node 47'),(5423,898,0,'Storm Peaks mineral, node 48'),(5424,898,0,'Storm Peaks mineral, node 49'),(5425,898,0,'Storm Peaks mineral, node 50'),(5426,898,0,'Storm Peaks mineral, node 51'),(5427,898,0,'Storm Peaks mineral, node 52'),(5428,898,0,'Storm Peaks mineral, node 53'),(5429,898,0,'Storm Peaks mineral, node 54'),(5430,898,0,'Storm Peaks mineral, node 55'),(5431,898,0,'Storm Peaks mineral, node 56'),(5432,898,0,'Storm Peaks mineral, node 57'),(5433,898,0,'Storm Peaks mineral, node 58'),(5434,898,0,'Storm Peaks mineral, node 59'),(5435,898,0,'Storm Peaks mineral, node 60'),(5436,898,0,'Storm Peaks mineral, node 61'),(5437,898,0,'Storm Peaks mineral, node 62'),(5438,898,0,'Storm Peaks mineral, node 63'),(5439,898,0,'Storm Peaks mineral, node 64'),(5440,898,0,'Storm Peaks mineral, node 65'),(5441,898,0,'Storm Peaks mineral, node 66'),(5442,898,0,'Storm Peaks mineral, node 67'),(5443,898,0,'Storm Peaks mineral, node 68'),(5444,898,0,'Storm Peaks mineral, node 69'),(5445,898,0,'Storm Peaks mineral, node 70'),(5446,898,0,'Storm Peaks mineral, node 71'),(5447,898,0,'Storm Peaks mineral, node 72'),(5448,897,0,'Icecrown mineral, node 1'),(5449,897,0,'Icecrown mineral, node 2'),(5450,897,0,'Icecrown mineral, node 3'),(5451,897,0,'Icecrown mineral, node 4'),(5452,897,0,'Icecrown mineral, node 5'),(5453,897,0,'Icecrown mineral, node 6'),(5454,897,0,'Icecrown mineral, node 7'),(5455,897,0,'Icecrown mineral, node 8'),(5456,897,0,'Icecrown mineral, node 9'),(5457,897,0,'Icecrown mineral, node 10'),(5458,897,0,'Icecrown mineral, node 11'),(5459,897,0,'Icecrown mineral, node 12'),(5460,897,0,'Icecrown mineral, node 13'),(5461,897,0,'Icecrown mineral, node 14'),(5462,897,0,'Icecrown mineral, node 15'),(5463,897,0,'Icecrown mineral, node 16'),(5464,897,0,'Icecrown mineral, node 17'),(5465,897,0,'Icecrown mineral, node 18'),(5466,897,0,'Icecrown mineral, node 19'),(5467,897,0,'Icecrown mineral, node 20'),(5468,897,0,'Icecrown mineral, node 21'),(5469,897,0,'Icecrown mineral, node 22'),(5470,897,0,'Icecrown mineral, node 23'),(5471,897,0,'Icecrown mineral, node 24'),(5472,897,0,'Icecrown mineral, node 25'),(5473,897,0,'Icecrown mineral, node 26'),(5474,897,0,'Icecrown mineral, node 27'),(5475,897,0,'Icecrown mineral, node 28'),(5476,897,0,'Icecrown mineral, node 29'),(5477,897,0,'Icecrown mineral, node 30'),(5478,897,0,'Icecrown mineral, node 31'),(5479,897,0,'Icecrown mineral, node 32'),(5480,897,0,'Icecrown mineral, node 33'),(5481,897,0,'Icecrown mineral, node 34'),(5482,897,0,'Icecrown mineral, node 35'),(5483,897,0,'Icecrown mineral, node 36'),(5484,897,0,'Icecrown mineral, node 37'),(5485,897,0,'Icecrown mineral, node 38'),(5486,897,0,'Icecrown mineral, node 39'),(5487,897,0,'Icecrown mineral, node 40'),(5488,897,0,'Icecrown mineral, node 41'),(5489,897,0,'Icecrown mineral, node 42'),(5490,897,0,'Icecrown mineral, node 43'),(5491,897,0,'Icecrown mineral, node 44'),(5492,897,0,'Icecrown mineral, node 45'),(5493,897,0,'Icecrown mineral, node 46'),(5494,897,0,'Icecrown mineral, node 47'),(5495,897,0,'Icecrown mineral, node 48'),(5496,897,0,'Icecrown mineral, node 49'),(5497,897,0,'Icecrown mineral, node 50'),(5498,897,0,'Icecrown mineral, node 51'),(5499,897,0,'Icecrown mineral, node 52'),(5500,897,0,'Icecrown mineral, node 53'),(5501,897,0,'Icecrown mineral, node 54'),(5502,897,0,'Icecrown mineral, node 55'),(5503,897,0,'Icecrown mineral, node 56'),(5504,897,0,'Icecrown mineral, node 57'),(5505,897,0,'Icecrown mineral, node 58'),(5506,897,0,'Icecrown mineral, node 59'),(5507,897,0,'Icecrown mineral, node 60'),(5508,897,0,'Icecrown mineral, node 61'),(5509,897,0,'Icecrown mineral, node 62'),(5510,897,0,'Icecrown mineral, node 63'),(5511,897,0,'Icecrown mineral, node 64'),(5512,897,0,'Icecrown mineral, node 65'),(5513,897,0,'Icecrown mineral, node 66'),(5514,897,0,'Icecrown mineral, node 67'),(5515,897,0,'Icecrown mineral, node 68'),(5516,897,0,'Icecrown mineral, node 69'),(5517,897,0,'Icecrown mineral, node 70'),(5518,897,0,'Icecrown mineral, node 71'),(5519,897,0,'Icecrown mineral, node 72'),(5520,897,0,'Icecrown mineral, node 73'),(5521,897,0,'Icecrown mineral, node 74'),(5522,897,0,'Icecrown mineral, node 75'),(5523,897,0,'Icecrown mineral, node 76'),(5524,897,0,'Icecrown mineral, node 77'),(5525,897,0,'Icecrown mineral, node 78'),(5526,897,0,'Icecrown mineral, node 79'),(5527,897,0,'Icecrown mineral, node 80'),(5528,897,0,'Icecrown mineral, node 81'),(5529,897,0,'Icecrown mineral, node 82'),(5530,897,0,'Icecrown mineral, node 83'),(5531,897,0,'Icecrown mineral, node 84'),(5532,897,0,'Icecrown mineral, node 85'),(5533,897,0,'Icecrown mineral, node 86'),(5534,897,0,'Icecrown mineral, node 87'),(5535,897,0,'Icecrown mineral, node 88'),(5536,897,0,'Icecrown mineral, node 89'),(5537,897,0,'Icecrown mineral, node 90'),(5538,897,0,'Icecrown mineral, node 91'),(5539,897,0,'Icecrown mineral, node 92'),(5540,897,0,'Icecrown mineral, node 93'),(5541,897,0,'Icecrown mineral, node 94'),(5542,897,0,'Icecrown mineral, node 95'),(5543,897,0,'Icecrown mineral, node 96'),(5544,897,0,'Icecrown mineral, node 97'),(5545,897,0,'Icecrown mineral, node 98'),(5546,897,0,'Icecrown mineral, node 99'),(5547,897,0,'Icecrown mineral, node 100'),(5548,897,0,'Icecrown mineral, node 101'),(5549,897,0,'Icecrown mineral, node 102'),(5550,897,0,'Icecrown mineral, node 103'),(5551,897,0,'Icecrown mineral, node 104'),(5552,897,0,'Icecrown mineral, node 105'),(5553,897,0,'Icecrown mineral, node 106'),(5554,897,0,'Icecrown mineral, node 107'),(5555,897,0,'Icecrown mineral, node 108'),(5556,897,0,'Icecrown mineral, node 109'),(5557,897,0,'Icecrown mineral, node 110'),(5558,897,0,'Icecrown mineral, node 111'),(5559,897,0,'Icecrown mineral, node 112'),(5560,897,0,'Icecrown mineral, node 113'),(5561,897,0,'Icecrown mineral, node 114'),(5562,897,0,'Icecrown mineral, node 115'),(5563,897,0,'Icecrown mineral, node 116'),(5564,897,0,'Icecrown mineral, node 117'),(5565,897,0,'Icecrown mineral, node 118'),(5566,897,0,'Icecrown mineral, node 119'),(5567,897,0,'Icecrown mineral, node 120'),(5568,897,0,'Icecrown mineral, node 121'),(5569,897,0,'Icecrown mineral, node 122'),(5570,897,0,'Icecrown mineral, node 123'),(5571,897,0,'Icecrown mineral, node 124'),(5572,897,0,'Icecrown mineral, node 125'),(5573,897,0,'Icecrown mineral, node 126'),(5574,897,0,'Icecrown mineral, node 127'),(5575,897,0,'Icecrown mineral, node 128'),(5576,897,0,'Icecrown mineral, node 129'),(5577,897,0,'Icecrown mineral, node 130'),(5578,897,0,'Icecrown mineral, node 131'),(5579,897,0,'Icecrown mineral, node 132'),(5580,897,0,'Icecrown mineral, node 133'),(5581,897,0,'Icecrown mineral, node 134'),(5582,897,0,'Icecrown mineral, node 135'),(5583,897,0,'Icecrown mineral, node 136'),(5584,897,0,'Icecrown mineral, node 137'),(5585,897,0,'Icecrown mineral, node 138'),(5586,897,0,'Icecrown mineral, node 139'),(5587,897,0,'Icecrown mineral, node 140'),(5588,897,0,'Icecrown mineral, node 141'),(5589,897,0,'Icecrown mineral, node 142'),(5590,897,0,'Icecrown mineral, node 143'),(5591,897,0,'Icecrown mineral, node 144'),(5592,897,0,'Icecrown mineral, node 145'),(5593,897,0,'Icecrown mineral, node 146'),(5594,897,0,'Icecrown mineral, node 147'),(5595,897,0,'Icecrown mineral, node 148'),(5596,897,0,'Icecrown mineral, node 149'),(5597,897,0,'Icecrown mineral, node 150'),(5598,897,0,'Icecrown mineral, node 151'),(5599,897,0,'Icecrown mineral, node 152'),(5600,897,0,'Icecrown mineral, node 153'),(5601,897,0,'Icecrown mineral, node 154'),(5602,897,0,'Icecrown mineral, node 155'),(5603,897,0,'Icecrown mineral, node 156'),(5604,897,0,'Icecrown mineral, node 157'),(5605,897,0,'Icecrown mineral, node 158'),(5606,897,0,'Icecrown mineral, node 159'),(5607,897,0,'Icecrown mineral, node 160'),(5608,897,0,'Icecrown mineral, node 161'),(5609,897,0,'Icecrown mineral, node 162'),(5610,897,0,'Icecrown mineral, node 163'),(5611,897,0,'Icecrown mineral, node 164'),(5612,897,0,'Icecrown mineral, node 165'),(5613,897,0,'Icecrown mineral, node 166'),(5614,897,0,'Icecrown mineral, node 167'),(5615,897,0,'Icecrown mineral, node 168'),(5616,897,0,'Icecrown mineral, node 169'),(5617,896,0,'Wintergrasp mineral, node 1'),(5618,896,0,'Wintergrasp mineral, node 2'),(5619,896,0,'Wintergrasp mineral, node 3'),(5620,896,0,'Wintergrasp mineral, node 4'),(5621,896,0,'Wintergrasp mineral, node 5'),(5622,896,0,'Wintergrasp mineral, node 6'),(5623,896,0,'Wintergrasp mineral, node 7'),(5624,896,0,'Wintergrasp mineral, node 8'),(5625,896,0,'Wintergrasp mineral, node 9'),(5626,896,0,'Wintergrasp mineral, node 10'),(5627,896,0,'Wintergrasp mineral, node 11'),(5628,896,0,'Wintergrasp mineral, node 12'),(5629,896,0,'Wintergrasp mineral, node 13'),(5630,896,0,'Wintergrasp mineral, node 14'),(5631,896,0,'Wintergrasp mineral, node 15'),(5632,896,0,'Wintergrasp mineral, node 16'),(5633,896,0,'Wintergrasp mineral, node 17'),(5634,896,0,'Wintergrasp mineral, node 18'),(5635,896,0,'Wintergrasp mineral, node 19'),(5636,896,0,'Wintergrasp mineral, node 20'),(5637,896,0,'Wintergrasp mineral, node 21'),(5638,896,0,'Wintergrasp mineral, node 22'),(5639,896,0,'Wintergrasp mineral, node 23'),(5640,896,0,'Wintergrasp mineral, node 24'),(5641,896,0,'Wintergrasp mineral, node 25'),(5642,896,0,'Wintergrasp mineral, node 26'),(5643,896,0,'Wintergrasp mineral, node 27'),(5644,896,0,'Wintergrasp mineral, node 28'),(5645,896,0,'Wintergrasp mineral, node 29'),(5646,896,0,'Wintergrasp mineral, node 30'),(5647,896,0,'Wintergrasp mineral, node 31'),(5648,896,0,'Wintergrasp mineral, node 32'),(5649,896,0,'Wintergrasp mineral, node 33'),(5650,896,0,'Wintergrasp mineral, node 34'),(5651,896,0,'Wintergrasp mineral, node 35'),(5652,896,0,'Wintergrasp mineral, node 36'),(5653,896,0,'Wintergrasp mineral, node 37'),(5654,896,0,'Wintergrasp mineral, node 38'),(5655,896,0,'Wintergrasp mineral, node 39'),(5656,896,0,'Wintergrasp mineral, node 40'),(5657,896,0,'Wintergrasp mineral, node 41'),(5658,896,0,'Wintergrasp mineral, node 42'),(5659,896,0,'Wintergrasp mineral, node 43'),(5660,896,0,'Wintergrasp mineral, node 44'),(5661,896,0,'Wintergrasp mineral, node 45');
/*!40000 ALTER TABLE `pool_pool` ENABLE KEYS */;
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

