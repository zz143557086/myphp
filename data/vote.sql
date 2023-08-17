/*
 Navicat Premium Data Transfer

 Source Server         : lin
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : vote

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 17/08/2023 22:06:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('123456', '张三', '123456');

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `star_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `judge_num` int(11) NULL DEFAULT NULL,
  `player_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES (1, '表演大赛', '2016-02-02 08:15:27', '2023-06-24 08:33:01', 4, 11);
INSERT INTO `game` VALUES (2, '摄影比赛', '2016-12-08 03:08:03', '2023-06-24 02:12:27', 3, 10);
INSERT INTO `game` VALUES (3, '艺术比赛', '2022-01-29 17:11:46', '2023-06-24 20:28:32', 3, 10);
INSERT INTO `game` VALUES (4, '舞蹈比赛', '2004-04-28 16:28:42', '2023-06-24 13:16:04', 3, 10);

-- ----------------------------
-- Table structure for game_judge
-- ----------------------------
DROP TABLE IF EXISTS `game_judge`;
CREATE TABLE `game_judge`  (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `game_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_judge
-- ----------------------------
INSERT INTO `game_judge` VALUES (3, 1, '64', '程嘉可');
INSERT INTO `game_judge` VALUES (2, 1, '81', '孟云熙');
INSERT INTO `game_judge` VALUES (1, 1, '76', '顾宇宁');

-- ----------------------------
-- Table structure for game_player
-- ----------------------------
DROP TABLE IF EXISTS `game_player`;
CREATE TABLE `game_player`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `order` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `motto` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `works` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_player
-- ----------------------------
INSERT INTO `game_player` VALUES (1, 1, '193', '1', '金岚ds', '大大撒打算', '双打和健康的', NULL);
INSERT INTO `game_player` VALUES (2, 1, '148', '2', '龚致远', '大飒飒的', 'dsadasd', NULL);
INSERT INTO `game_player` VALUES (3, 1, '70', '3', '江杰宏', 'dsadsadsa', '大撒', NULL);
INSERT INTO `game_player` VALUES (4, 1, '30', '4', '雷杰宏', '的撒大苏打', '大撒大撒', NULL);
INSERT INTO `game_player` VALUES (5, 1, '25', '5', '曹嘉伦', '而特尔特人问题', '大飒飒的', NULL);
INSERT INTO `game_player` VALUES (6, 1, '10', '6', '龚宇宁', '和个股分化', 'dada', NULL);
INSERT INTO `game_player` VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `game_player` VALUES (14, 1, '5', '7', '贾秀英', '艺术大师的', '大撒大撒', 1);

-- ----------------------------
-- Table structure for game_user
-- ----------------------------
DROP TABLE IF EXISTS `game_user`;
CREATE TABLE `game_user`  (
  `id` int(11) NULL DEFAULT NULL,
  `game_id` int(11) NULL DEFAULT NULL,
  `player_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_user
-- ----------------------------
INSERT INTO `game_user` VALUES (29, 1, 4, '谢嘉伦');
INSERT INTO `game_user` VALUES (28, 1, 5, '段璐');
INSERT INTO `game_user` VALUES (27, 1, 1, '叶晓明');
INSERT INTO `game_user` VALUES (26, 1, 1, '段璐');
INSERT INTO `game_user` VALUES (25, 1, 3, '余晓明');
INSERT INTO `game_user` VALUES (1053, 1, NULL, '郑世林');
INSERT INTO `game_user` VALUES (23, 1, 3, '魏宇宁');
INSERT INTO `game_user` VALUES (22, 1, 3, '史安琪');
INSERT INTO `game_user` VALUES (21, 1, 2, '卢致远');
INSERT INTO `game_user` VALUES (20, 1, 4, '宋云熙');
INSERT INTO `game_user` VALUES (19, 1, 3, '江震南');
INSERT INTO `game_user` VALUES (18, 1, 3, '崔岚');
INSERT INTO `game_user` VALUES (17, 1, 3, '孟子异');
INSERT INTO `game_user` VALUES (16, 1, 1, '周杰宏');
INSERT INTO `game_user` VALUES (15, 1, 4, '宋致远');
INSERT INTO `game_user` VALUES (14, 1, 3, '徐嘉伦');
INSERT INTO `game_user` VALUES (13, 1, 5, '姜晓明');
INSERT INTO `game_user` VALUES (12, 1, 1, '陆云熙');
INSERT INTO `game_user` VALUES (11, 1, 3, '廖嘉伦');
INSERT INTO `game_user` VALUES (10, 1, 4, '郭睿');
INSERT INTO `game_user` VALUES (9, 1, 3, '黄安琪');
INSERT INTO `game_user` VALUES (8, 1, 1, '孔宇宁');
INSERT INTO `game_user` VALUES (7, 1, 5, '姜杰宏');
INSERT INTO `game_user` VALUES (6, 1, 1, '邓子');
INSERT INTO `game_user` VALUES (5, 1, 1, '唐子异');
INSERT INTO `game_user` VALUES (4, 3, 1, '冯安琪');
INSERT INTO `game_user` VALUES (3, 2, 1, '冯子');
INSERT INTO `game_user` VALUES (31, 1, 3, '郭杰宏');
INSERT INTO `game_user` VALUES (32, 1, 2, '李宇宁');
INSERT INTO `game_user` VALUES (33, 1, 3, '尹晓明');
INSERT INTO `game_user` VALUES (34, 1, 2, '陶子异');
INSERT INTO `game_user` VALUES (35, 1, 1, '冯璐');
INSERT INTO `game_user` VALUES (36, 1, 2, '韩秀英');
INSERT INTO `game_user` VALUES (37, 1, 3, '金詩涵');
INSERT INTO `game_user` VALUES (38, 1, 2, '高安琪');
INSERT INTO `game_user` VALUES (39, 1, 2, '金詩涵');
INSERT INTO `game_user` VALUES (40, 1, 1, '韩秀英');
INSERT INTO `game_user` VALUES (41, 1, 1, '顾璐');
INSERT INTO `game_user` VALUES (42, 1, 2, '傅杰宏');
INSERT INTO `game_user` VALUES (43, 1, 2, '沈嘉伦');
INSERT INTO `game_user` VALUES (44, 1, 1, '韦云熙');
INSERT INTO `game_user` VALUES (45, 1, 3, '江晓明');
INSERT INTO `game_user` VALUES (46, 1, 2, '魏致远');
INSERT INTO `game_user` VALUES (47, 1, 2, '贾秀英');
INSERT INTO `game_user` VALUES (48, 1, 4, '杜震南');
INSERT INTO `game_user` VALUES (49, 1, 5, '向震南');
INSERT INTO `game_user` VALUES (50, 1, 1, '苏致远');
INSERT INTO `game_user` VALUES (1, 2, NULL, '贾秀英');
INSERT INTO `game_user` VALUES (2, 1, NULL, '蒋子');
INSERT INTO `game_user` VALUES (46, 1, 6, NULL);
INSERT INTO `game_user` VALUES (1, 2, 1, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 1, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 1, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 1, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 1, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 1, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 1, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 2, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 3, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, 4, '贾秀英');
INSERT INTO `game_user` VALUES (1, 2, NULL, '贾秀英');
INSERT INTO `game_user` VALUES (46, 1, 2, NULL);
INSERT INTO `game_user` VALUES (46, 1, 5, NULL);
INSERT INTO `game_user` VALUES (46, 1, 6, NULL);
INSERT INTO `game_user` VALUES (46, 1, 14, NULL);

-- ----------------------------
-- Table structure for judge
-- ----------------------------
DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge`  (
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `order` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of judge
-- ----------------------------
INSERT INTO `judge` VALUES ('123456', '123456', 1, '程嘉可', NULL, NULL);
INSERT INTO `judge` VALUES ('330560', '717470', 2, '孟云熙', NULL, NULL);
INSERT INTO `judge` VALUES ('929761', '931732', 3, '顾宇宁', NULL, NULL);
INSERT INTO `judge` VALUES ('093913', '768701', 5, '郝嘉伦', NULL, NULL);
INSERT INTO `judge` VALUES ('323168', '313987', 6, '汤詩涵', NULL, NULL);
INSERT INTO `judge` VALUES ('517910', '035311', 7, '邵杰宏', NULL, NULL);
INSERT INTO `judge` VALUES ('822343', '712074', 8, '阎致远', NULL, NULL);
INSERT INTO `judge` VALUES ('080731', '788303', 9, '王安琪', NULL, NULL);
INSERT INTO `judge` VALUES ('cxzcz', 'dsasd', 13, '学习通', NULL, NULL);

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `order` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `motto` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES (1, '123456', '贾秀英', '123456', NULL, NULL, NULL);
INSERT INTO `player` VALUES (2, '911730', '龚致远', '087349', NULL, NULL, NULL);
INSERT INTO `player` VALUES (3, '913539', '江杰宏', '624626', NULL, NULL, NULL);
INSERT INTO `player` VALUES (4, '873456', '雷杰宏', '141467', NULL, NULL, NULL);
INSERT INTO `player` VALUES (5, '445968', '曹嘉伦', '121220', NULL, NULL, NULL);
INSERT INTO `player` VALUES (6, '810325', '龚宇宁', '893167', NULL, NULL, NULL);
INSERT INTO `player` VALUES (7, '152346', '常云熙', '369254', NULL, NULL, NULL);
INSERT INTO `player` VALUES (8, '667724', '冯詩涵', '030793', NULL, NULL, NULL);
INSERT INTO `player` VALUES (9, '848049', '冯嘉伦', '157721', NULL, NULL, NULL);
INSERT INTO `player` VALUES (11, '1234568', '的话', '123456', NULL, NULL, NULL);
INSERT INTO `player` VALUES (13, '892812', '学大飒飒的', '710059', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for request
-- ----------------------------
DROP TABLE IF EXISTS `request`;
CREATE TABLE `request`  (
  `id` int(11) NULL DEFAULT NULL,
  `static` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `game_id` int(11) NULL DEFAULT NULL,
  `motto` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `works` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of request
-- ----------------------------

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `player_id` int(11) NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `game_id` int(11) NOT NULL,
  `judge_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `game_audience` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (2, '88', 1, '1', NULL);
INSERT INTO `score` VALUES (1, '88', 1, '1', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1055 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123456', '123456', '贾秀英', '13863442063', 1);
INSERT INTO `user` VALUES ('111111', '111111', '蒋子', '16574168071', 2);
INSERT INTO `user` VALUES ('237938', '730962', '冯子', '17324273361', 3);
INSERT INTO `user` VALUES ('217957', '253065', '冯安琪', '17142564843', 4);
INSERT INTO `user` VALUES ('747530', '866689', '唐子异', '75548384357', 5);
INSERT INTO `user` VALUES ('656341', '672736', '邓子', '16510186665', 6);
INSERT INTO `user` VALUES ('356244', '784205', '姜杰宏', '16019485789', 7);
INSERT INTO `user` VALUES ('069579', '442777', '孔宇宁', '13219523326', 8);
INSERT INTO `user` VALUES ('254223', '780626', '黄安琪', '75528885321', 9);
INSERT INTO `user` VALUES ('188668', '760508', '郭睿', '19762385295', 10);
INSERT INTO `user` VALUES ('361674', '551606', '廖嘉伦', '15214199294', 11);
INSERT INTO `user` VALUES ('868584', '106674', '陆云熙', '7556601644', 12);
INSERT INTO `user` VALUES ('512749', '927751', '姜晓明', '75598222881', 13);
INSERT INTO `user` VALUES ('700950', '910111', '徐嘉伦', '100649040', 14);
INSERT INTO `user` VALUES ('950581', '098206', '宋致远', '209555585', 15);
INSERT INTO `user` VALUES ('865888', '376233', '周杰宏', '14847316133', 16);
INSERT INTO `user` VALUES ('688386', '225186', '孟子异', '7557451845', 17);
INSERT INTO `user` VALUES ('157302', '067248', '崔岚', '287766365', 18);
INSERT INTO `user` VALUES ('714399', '368162', '江震南', '15132969821', 19);
INSERT INTO `user` VALUES ('503595', '997445', '宋云熙', '17373709895', 20);
INSERT INTO `user` VALUES ('768470', '645606', '卢致远', '209656809', 21);
INSERT INTO `user` VALUES ('264344', '354965', '史安琪', '14874419810', 22);
INSERT INTO `user` VALUES ('487925', '304772', '魏宇宁', '14303384872', 23);
INSERT INTO `user` VALUES ('351256', '984765', '陆安琪', '76931233433', 24);
INSERT INTO `user` VALUES ('128681', '774121', '余晓明', '15643350947', 25);
INSERT INTO `user` VALUES ('725663', '707122', '段璐', '76052397273', 26);
INSERT INTO `user` VALUES ('755321', '200773', '叶晓明', '17707129499', 27);
INSERT INTO `user` VALUES ('702554', '891275', '段璐', '18472529862', 28);
INSERT INTO `user` VALUES ('875062', '754382', '谢嘉伦', '14769213428', 29);
INSERT INTO `user` VALUES ('317152', '489823', '胡岚', '76093142450', 30);
INSERT INTO `user` VALUES ('075721', '091004', '郭杰宏', '18989730181', 31);
INSERT INTO `user` VALUES ('907966', '035426', '李宇宁', '105240962', 32);
INSERT INTO `user` VALUES ('890681', '622291', '尹晓明', '2841950282', 33);
INSERT INTO `user` VALUES ('057041', '925687', '陶子异', '7609567170', 34);
INSERT INTO `user` VALUES ('212755', '359079', '冯璐', '7693194336', 35);
INSERT INTO `user` VALUES ('185935', '749081', '韩秀英', '75502715278', 36);
INSERT INTO `user` VALUES ('971536', '267055', '金詩涵', '19862386175', 37);
INSERT INTO `user` VALUES ('234793', '662456', '高安琪', '2166481914', 38);
INSERT INTO `user` VALUES ('419305', '311314', '金詩涵', '13071966835', 39);
INSERT INTO `user` VALUES ('404005', '653361', '韩秀英', '7605715843', 40);
INSERT INTO `user` VALUES ('874308', '622942', '顾璐', '14227868665', 41);
INSERT INTO `user` VALUES ('144975', '469012', '傅杰宏', '14594516674', 42);
INSERT INTO `user` VALUES ('414798', '461195', '沈嘉伦', '216992811', 43);
INSERT INTO `user` VALUES ('524584', '684637', '韦云熙', '18095953714', 44);
INSERT INTO `user` VALUES ('409904', '511108', '江晓明', '13290871006', 45);
INSERT INTO `user` VALUES ('000000', '000000', '魏致远', '76943115383', 46);
INSERT INTO `user` VALUES ('575461', '977780', '贾秀英', '17904388424', 47);
INSERT INTO `user` VALUES ('009802', '935194', '杜震南', '13815699809', 48);
INSERT INTO `user` VALUES ('245225', '961001', '向震南', '15790527708', 49);
INSERT INTO `user` VALUES ('964851', '853850', '苏致远', '14451442148', 50);
INSERT INTO `user` VALUES ('049548', '133493', '曹岚', '15869394024', 51);
INSERT INTO `user` VALUES ('140703', '825558', '冯岚', '75556933522', 52);
INSERT INTO `user` VALUES ('384270', '658603', '苏岚', '2856831704', 53);
INSERT INTO `user` VALUES ('463224', '652271', '姜嘉伦', '207594175', 54);
INSERT INTO `user` VALUES ('624689', '050883', '郝璐', '16587054403', 55);
INSERT INTO `user` VALUES ('395832', '915692', '侯杰宏', '14525894335', 56);
INSERT INTO `user` VALUES ('873594', '602914', '马嘉伦', '76902802143', 57);
INSERT INTO `user` VALUES ('511652', '566861', '崔晓明', '2804247381', 58);
INSERT INTO `user` VALUES ('620636', '175651', '史岚', '75512246881', 59);
INSERT INTO `user` VALUES ('597146', '430503', '林杰宏', '14833480763', 60);
INSERT INTO `user` VALUES ('437029', '692276', '叶詩涵', '208317969', 61);
INSERT INTO `user` VALUES ('988960', '372212', '彭杰宏', '18138158628', 62);
INSERT INTO `user` VALUES ('616638', '183803', '向晓明', '2117722736', 63);
INSERT INTO `user` VALUES ('500177', '211863', '许杰宏', '17186196182', 64);
INSERT INTO `user` VALUES ('156167', '103643', '邓云熙', '76977957792', 65);
INSERT INTO `user` VALUES ('519733', '556134', '黎詩涵', '19845520797', 66);
INSERT INTO `user` VALUES ('881227', '641880', '高子韬', '209304823', 67);
INSERT INTO `user` VALUES ('730484', '345126', '马嘉伦', '76970046653', 68);
INSERT INTO `user` VALUES ('305542', '807573', '陶云熙', '16951935368', 69);
INSERT INTO `user` VALUES ('294723', '905821', '姜宇宁', '15135075389', 70);
INSERT INTO `user` VALUES ('675806', '209763', '常子异', '2016343094', 71);
INSERT INTO `user` VALUES ('391290', '188466', '秦震南', '2158161388', 72);
INSERT INTO `user` VALUES ('678295', '650982', '钟震南', '19240696685', 73);
INSERT INTO `user` VALUES ('880909', '468915', '廖杰宏', '17886749926', 74);
INSERT INTO `user` VALUES ('569939', '781463', '金璐', '2173976721', 75);
INSERT INTO `user` VALUES ('697325', '103428', '邱岚', '1054386122', 76);
INSERT INTO `user` VALUES ('104059', '258118', '毛詩涵', '76017260584', 77);
INSERT INTO `user` VALUES ('915880', '238919', '钟岚', '286593102', 78);
INSERT INTO `user` VALUES ('614412', '745237', '侯秀英', '219588173', 79);
INSERT INTO `user` VALUES ('096952', '621099', '孔詩涵', '7690858502', 80);
INSERT INTO `user` VALUES ('474002', '082911', '莫震南', '7691189083', 81);
INSERT INTO `user` VALUES ('631909', '602364', '潘嘉伦', '15805126418', 82);
INSERT INTO `user` VALUES ('234239', '670874', '余安琪', '17146670765', 83);
INSERT INTO `user` VALUES ('167945', '549523', '龚璐', '17235455638', 84);
INSERT INTO `user` VALUES ('868803', '050158', '余安琪', '15827582243', 85);
INSERT INTO `user` VALUES ('236244', '269208', '邵岚', '15924210187', 86);
INSERT INTO `user` VALUES ('419020', '350474', '廖秀英', '104391879', 87);
INSERT INTO `user` VALUES ('609533', '174902', '廖詩涵', '16201565664', 88);
INSERT INTO `user` VALUES ('310813', '108717', '程宇宁', '16011280409', 89);
INSERT INTO `user` VALUES ('039812', '650590', '袁秀英', '16869383438', 90);
INSERT INTO `user` VALUES ('652864', '178189', '廖璐', '2874544960', 91);
INSERT INTO `user` VALUES ('743381', '160809', '熊晓明', '19734210062', 92);
INSERT INTO `user` VALUES ('023517', '878686', '魏璐', '7558642904', 93);
INSERT INTO `user` VALUES ('321363', '556890', '卢岚', '16469857457', 94);
INSERT INTO `user` VALUES ('374585', '889343', '武子异', '7552607742', 95);
INSERT INTO `user` VALUES ('607518', '226997', '郝子异', '104445578', 96);
INSERT INTO `user` VALUES ('807163', '534659', '任睿', '18377524009', 97);
INSERT INTO `user` VALUES ('764320', '219140', '廖宇宁', '200028415', 98);
INSERT INTO `user` VALUES ('074446', '917572', '孟安琪', '7606695243', 99);
INSERT INTO `user` VALUES ('126627', '896366', '常睿', '19234173480', 100);
INSERT INTO `user` VALUES ('836574', '737317', '袁睿', '75532374139', 101);
INSERT INTO `user` VALUES ('067675', '632230', '钟震南', '17809105989', 102);
INSERT INTO `user` VALUES ('624369', '071897', '孟宇宁', '19584018721', 103);
INSERT INTO `user` VALUES ('796774', '151362', '赵璐', '15496003237', 104);
INSERT INTO `user` VALUES ('203515', '820754', '曾嘉伦', '2052850017', 105);
INSERT INTO `user` VALUES ('549862', '668417', '莫宇宁', '15228171612', 106);
INSERT INTO `user` VALUES ('171492', '581914', '雷睿', '14297973134', 107);
INSERT INTO `user` VALUES ('275014', '769531', '雷子异', '16444964991', 108);
INSERT INTO `user` VALUES ('499701', '325884', '郝睿', '18073784687', 109);
INSERT INTO `user` VALUES ('496362', '646442', '谢震南', '18491759008', 110);
INSERT INTO `user` VALUES ('409145', '096400', '姚杰宏', '19166649529', 111);
INSERT INTO `user` VALUES ('839205', '235030', '蒋安琪', '19275945582', 112);
INSERT INTO `user` VALUES ('734174', '665502', '杨子异', '76043941905', 113);
INSERT INTO `user` VALUES ('789167', '009832', '金岚', '7550684744', 114);
INSERT INTO `user` VALUES ('817754', '609892', '吴詩涵', '76934167550', 115);
INSERT INTO `user` VALUES ('161948', '352813', '马子韬', '7690009639', 116);
INSERT INTO `user` VALUES ('358117', '181706', '谢杰宏', '1064225106', 117);
INSERT INTO `user` VALUES ('820150', '478654', '熊子韬', '76966602686', 118);
INSERT INTO `user` VALUES ('297738', '546536', '林秀英', '2803128505', 119);
INSERT INTO `user` VALUES ('842321', '649192', '于詩涵', '17933704953', 120);
INSERT INTO `user` VALUES ('282892', '333187', '田云熙', '76061653339', 121);
INSERT INTO `user` VALUES ('154335', '211614', '阎子韬', '15248807967', 122);
INSERT INTO `user` VALUES ('410302', '550372', '戴杰宏', '2845696991', 123);
INSERT INTO `user` VALUES ('421426', '602833', '龙云熙', '17415345828', 124);
INSERT INTO `user` VALUES ('657027', '579040', '蔡子异', '18696957211', 125);
INSERT INTO `user` VALUES ('385732', '331307', '邹杰宏', '1053199556', 126);
INSERT INTO `user` VALUES ('388443', '732211', '徐秀英', '2883387576', 127);
INSERT INTO `user` VALUES ('805087', '771005', '邱震南', '16030683430', 128);
INSERT INTO `user` VALUES ('230382', '811473', '常杰宏', '76056033360', 129);
INSERT INTO `user` VALUES ('412042', '010239', '彭杰宏', '75559245103', 130);
INSERT INTO `user` VALUES ('617234', '468096', '杨云熙', '15867328895', 131);
INSERT INTO `user` VALUES ('736363', '717433', '杜睿', '289652502', 132);
INSERT INTO `user` VALUES ('948027', '607051', '黎睿', '206665834', 133);
INSERT INTO `user` VALUES ('144077', '901692', '李秀英', '7696280931', 134);
INSERT INTO `user` VALUES ('018380', '167598', '蒋致远', '2862067684', 135);
INSERT INTO `user` VALUES ('307456', '971673', '常震南', '18948072247', 136);
INSERT INTO `user` VALUES ('445954', '868937', '曾嘉伦', '75560096951', 137);
INSERT INTO `user` VALUES ('557231', '280891', '史云熙', '106542588', 138);
INSERT INTO `user` VALUES ('501054', '294906', '李晓明', '105224673', 139);
INSERT INTO `user` VALUES ('277414', '813223', '周嘉伦', '219887748', 140);
INSERT INTO `user` VALUES ('678930', '690076', '傅安琪', '75586910875', 141);
INSERT INTO `user` VALUES ('345227', '322771', '阎宇宁', '13145494696', 142);
INSERT INTO `user` VALUES ('687569', '379285', '汪震南', '2168830958', 143);
INSERT INTO `user` VALUES ('539868', '125206', '许岚', '280034968', 144);
INSERT INTO `user` VALUES ('796651', '983596', '史嘉伦', '13115596676', 145);
INSERT INTO `user` VALUES ('311501', '860120', '邹致远', '7604124191', 146);
INSERT INTO `user` VALUES ('883554', '663232', '史子韬', '7550038016', 147);
INSERT INTO `user` VALUES ('946339', '035928', '孙詩涵', '1001558672', 148);
INSERT INTO `user` VALUES ('659649', '975798', '陈震南', '16608921787', 149);
INSERT INTO `user` VALUES ('366250', '688075', '侯嘉伦', '14281762118', 150);
INSERT INTO `user` VALUES ('664685', '463888', '韩睿', '219206835', 151);
INSERT INTO `user` VALUES ('919007', '971011', '赵致远', '76092475854', 152);
INSERT INTO `user` VALUES ('286809', '596849', '郝宇宁', '16066448039', 153);
INSERT INTO `user` VALUES ('880274', '068533', '邵璐', '14662038449', 154);
INSERT INTO `user` VALUES ('563636', '763445', '罗晓明', '75502885331', 155);
INSERT INTO `user` VALUES ('054432', '407498', '曾杰宏', '17812926065', 156);
INSERT INTO `user` VALUES ('887455', '972245', '郭晓明', '13776320046', 157);
INSERT INTO `user` VALUES ('588770', '822356', '武子异', '16583389126', 158);
INSERT INTO `user` VALUES ('062909', '897089', '何秀英', '15163730859', 159);
INSERT INTO `user` VALUES ('688400', '048812', '侯睿', '213466767', 160);
INSERT INTO `user` VALUES ('330547', '854420', '程云熙', '15555304386', 161);
INSERT INTO `user` VALUES ('396846', '468753', '张璐', '18256605684', 162);
INSERT INTO `user` VALUES ('530025', '066718', '段秀英', '18141555140', 163);
INSERT INTO `user` VALUES ('436652', '867866', '郑子异', '16510029159', 164);
INSERT INTO `user` VALUES ('220441', '630594', '董秀英', '17898144762', 165);
INSERT INTO `user` VALUES ('003079', '244011', '郑致远', '15856922196', 166);
INSERT INTO `user` VALUES ('628580', '090907', '于晓明', '1078624075', 167);
INSERT INTO `user` VALUES ('498780', '962788', '吕詩涵', '19194833983', 168);
INSERT INTO `user` VALUES ('789658', '210781', '尹杰宏', '1010148682', 169);
INSERT INTO `user` VALUES ('140362', '791412', '夏岚', '76035427269', 170);
INSERT INTO `user` VALUES ('600541', '653723', '陆云熙', '14638413486', 171);
INSERT INTO `user` VALUES ('040193', '395489', '石岚', '17955431958', 172);
INSERT INTO `user` VALUES ('875792', '900579', '郝秀英', '218817095', 173);
INSERT INTO `user` VALUES ('800441', '222820', '韦秀英', '7552994394', 174);
INSERT INTO `user` VALUES ('401888', '879098', '郝安琪', '105500880', 175);
INSERT INTO `user` VALUES ('945764', '002711', '毛子异', '7604622918', 176);
INSERT INTO `user` VALUES ('762732', '646682', '梁睿', '17040578932', 177);
INSERT INTO `user` VALUES ('627633', '651846', '戴璐', '18546882124', 178);
INSERT INTO `user` VALUES ('819246', '854558', '徐璐', '2829089358', 179);
INSERT INTO `user` VALUES ('245278', '579208', '方宇宁', '7690017088', 180);
INSERT INTO `user` VALUES ('721905', '987163', '罗嘉伦', '76903153734', 181);
INSERT INTO `user` VALUES ('725997', '437901', '陈震南', '15739064789', 182);
INSERT INTO `user` VALUES ('707436', '616953', '何秀英', '2887354256', 183);
INSERT INTO `user` VALUES ('335877', '249123', '邹子异', '7699955237', 184);
INSERT INTO `user` VALUES ('255410', '128025', '段璐', '7552894998', 185);
INSERT INTO `user` VALUES ('383308', '516340', '周子韬', '76956168722', 186);
INSERT INTO `user` VALUES ('600772', '587007', '崔震南', '7558818301', 187);
INSERT INTO `user` VALUES ('604654', '748671', '钟宇宁', '16120745861', 188);
INSERT INTO `user` VALUES ('049011', '719572', '周詩涵', '2095491185', 189);
INSERT INTO `user` VALUES ('011885', '889537', '沈璐', '7551755934', 190);
INSERT INTO `user` VALUES ('855459', '133601', '梁子异', '217422695', 191);
INSERT INTO `user` VALUES ('194245', '543941', '高致远', '76972556117', 192);
INSERT INTO `user` VALUES ('642908', '825674', '傅秀英', '16272279185', 193);
INSERT INTO `user` VALUES ('403206', '042037', '孔秀英', '15713027388', 194);
INSERT INTO `user` VALUES ('379986', '885688', '程安琪', '19972296169', 195);
INSERT INTO `user` VALUES ('632712', '034333', '黄致远', '14479333588', 196);
INSERT INTO `user` VALUES ('922477', '939650', '崔詩涵', '7556257217', 197);
INSERT INTO `user` VALUES ('792211', '816516', '方晓明', '15090542930', 198);
INSERT INTO `user` VALUES ('936962', '125926', '傅云熙', '104729578', 199);
INSERT INTO `user` VALUES ('842787', '734186', '许嘉伦', '13408989763', 200);
INSERT INTO `user` VALUES ('396719', '504366', '梁秀英', '7600577446', 201);
INSERT INTO `user` VALUES ('927223', '950715', '顾致远', '15587629213', 202);
INSERT INTO `user` VALUES ('292342', '085827', '段岚', '201052685', 203);
INSERT INTO `user` VALUES ('115337', '411494', '段嘉伦', '16255071599', 204);
INSERT INTO `user` VALUES ('967472', '029575', '陈安琪', '7603613563', 205);
INSERT INTO `user` VALUES ('950215', '211407', '孙嘉伦', '17206098630', 206);
INSERT INTO `user` VALUES ('269270', '209730', '邓子韬', '213123481', 207);
INSERT INTO `user` VALUES ('826014', '983868', '汤子异', '19845515126', 208);
INSERT INTO `user` VALUES ('999916', '088201', '曹詩涵', '17421379827', 209);
INSERT INTO `user` VALUES ('126553', '326194', '夏秀英', '17777497120', 210);
INSERT INTO `user` VALUES ('450684', '891969', '贾震南', '18189635462', 211);
INSERT INTO `user` VALUES ('908881', '731484', '曾子异', '7552094179', 212);
INSERT INTO `user` VALUES ('114214', '826519', '邱秀英', '16280563598', 213);
INSERT INTO `user` VALUES ('518861', '126895', '杜子异', '76084470637', 214);
INSERT INTO `user` VALUES ('050479', '811856', '魏晓明', '15481874219', 215);
INSERT INTO `user` VALUES ('718134', '537949', '徐子异', '14134940998', 216);
INSERT INTO `user` VALUES ('967812', '863541', '邓晓明', '211321246', 217);
INSERT INTO `user` VALUES ('737785', '133389', '邱秀英', '13442286678', 218);
INSERT INTO `user` VALUES ('577760', '771455', '汪嘉伦', '101068380', 219);
INSERT INTO `user` VALUES ('705852', '077343', '郝宇宁', '2857112224', 220);
INSERT INTO `user` VALUES ('833744', '369322', '戴璐', '13607593346', 221);
INSERT INTO `user` VALUES ('443104', '705817', '魏璐', '281740497', 222);
INSERT INTO `user` VALUES ('371884', '113816', '潘云熙', '19456758283', 223);
INSERT INTO `user` VALUES ('332674', '364078', '丁安琪', '15924313954', 224);
INSERT INTO `user` VALUES ('539131', '169735', '刘致远', '7691737694', 225);
INSERT INTO `user` VALUES ('005615', '262406', '顾璐', '2022550574', 226);
INSERT INTO `user` VALUES ('166410', '431028', '常子异', '18320715662', 227);
INSERT INTO `user` VALUES ('930947', '229375', '沈安琪', '213607464', 228);
INSERT INTO `user` VALUES ('220693', '177221', '程晓明', '13879340899', 229);
INSERT INTO `user` VALUES ('924133', '220653', '周致远', '7601598346', 230);
INSERT INTO `user` VALUES ('826443', '562980', '任安琪', '2019000366', 231);
INSERT INTO `user` VALUES ('831366', '253266', '任岚', '205701971', 232);
INSERT INTO `user` VALUES ('066870', '128706', '唐杰宏', '7608705104', 233);
INSERT INTO `user` VALUES ('904725', '580084', '董子韬', '14117729132', 234);
INSERT INTO `user` VALUES ('059394', '611583', '陆子异', '7600442973', 235);
INSERT INTO `user` VALUES ('793244', '655153', '高杰宏', '13319094319', 236);
INSERT INTO `user` VALUES ('696328', '151117', '傅震南', '14409738885', 237);
INSERT INTO `user` VALUES ('403432', '157566', '韩詩涵', '13308040221', 238);
INSERT INTO `user` VALUES ('842637', '303611', '吴安琪', '76062034596', 239);
INSERT INTO `user` VALUES ('426451', '712915', '杨岚', '16434459710', 240);
INSERT INTO `user` VALUES ('533046', '576785', '杨璐', '15587148880', 241);
INSERT INTO `user` VALUES ('505183', '744066', '阎震南', '15836822634', 242);
INSERT INTO `user` VALUES ('065417', '621785', '黎子异', '7699288100', 243);
INSERT INTO `user` VALUES ('677863', '616236', '姚晓明', '214697173', 244);
INSERT INTO `user` VALUES ('299108', '687045', '黄秀英', '2892324402', 245);
INSERT INTO `user` VALUES ('152965', '244726', '汤晓明', '13772671669', 246);
INSERT INTO `user` VALUES ('983975', '480929', '许睿', '13201078606', 247);
INSERT INTO `user` VALUES ('687879', '893532', '高安琪', '13450964497', 248);
INSERT INTO `user` VALUES ('663822', '699037', '赵云熙', '16967643339', 249);
INSERT INTO `user` VALUES ('975102', '897171', '张安琪', '18617745481', 250);
INSERT INTO `user` VALUES ('447730', '427438', '吕杰宏', '282264268', 251);
INSERT INTO `user` VALUES ('270506', '449556', '蒋宇宁', '14351493909', 252);
INSERT INTO `user` VALUES ('617677', '302411', '严杰宏', '14115007469', 253);
INSERT INTO `user` VALUES ('298639', '077875', '杜子韬', '2823497193', 254);
INSERT INTO `user` VALUES ('776812', '292320', '梁震南', '7558144818', 255);
INSERT INTO `user` VALUES ('958363', '279933', '廖璐', '7607164072', 256);
INSERT INTO `user` VALUES ('546886', '060849', '王震南', '17893592913', 257);
INSERT INTO `user` VALUES ('893488', '536847', '顾杰宏', '16139705417', 258);
INSERT INTO `user` VALUES ('447152', '973634', '龙晓明', '14133180989', 259);
INSERT INTO `user` VALUES ('051050', '440471', '袁震南', '1086805559', 260);
INSERT INTO `user` VALUES ('857070', '390141', '邹云熙', '19038574252', 261);
INSERT INTO `user` VALUES ('312148', '212060', '秦安琪', '19828162920', 262);
INSERT INTO `user` VALUES ('474567', '365723', '钱詩涵', '13584097113', 263);
INSERT INTO `user` VALUES ('973454', '836565', '阎致远', '75526907967', 264);
INSERT INTO `user` VALUES ('754916', '060244', '方詩涵', '18936323197', 265);
INSERT INTO `user` VALUES ('954602', '104647', '史宇宁', '289664562', 266);
INSERT INTO `user` VALUES ('625875', '966150', '吴岚', '2123905306', 267);
INSERT INTO `user` VALUES ('020490', '802085', '林晓明', '103047978', 268);
INSERT INTO `user` VALUES ('183933', '722532', '常子韬', '15009711932', 269);
INSERT INTO `user` VALUES ('374155', '595528', '梁宇宁', '19311067087', 270);
INSERT INTO `user` VALUES ('922952', '023904', '贾秀英', '1057672354', 271);
INSERT INTO `user` VALUES ('512835', '134660', '徐子韬', '18339574973', 272);
INSERT INTO `user` VALUES ('920770', '259436', '武岚', '7556386047', 273);
INSERT INTO `user` VALUES ('862311', '080244', '曾子异', '76906482853', 274);
INSERT INTO `user` VALUES ('915764', '653462', '钟璐', '13048491610', 275);
INSERT INTO `user` VALUES ('271234', '025225', '苏岚', '76986864704', 276);
INSERT INTO `user` VALUES ('831174', '852520', '薛岚', '205788749', 277);
INSERT INTO `user` VALUES ('306885', '491526', '叶晓明', '13693377998', 278);
INSERT INTO `user` VALUES ('198866', '065070', '陈晓明', '18647882100', 279);
INSERT INTO `user` VALUES ('895324', '925810', '苏云熙', '18946403351', 280);
INSERT INTO `user` VALUES ('350010', '370531', '孔杰宏', '76082615117', 281);
INSERT INTO `user` VALUES ('073499', '599653', '段詩涵', '2868947288', 282);
INSERT INTO `user` VALUES ('199165', '488244', '龚震南', '2158562237', 283);
INSERT INTO `user` VALUES ('588649', '828517', '梁子韬', '7551223642', 284);
INSERT INTO `user` VALUES ('545558', '790704', '范致远', '76912501555', 285);
INSERT INTO `user` VALUES ('308361', '475371', '孙震南', '2873254177', 286);
INSERT INTO `user` VALUES ('751896', '347152', '曹子异', '207891260', 287);
INSERT INTO `user` VALUES ('836583', '061569', '尹岚', '14583743436', 288);
INSERT INTO `user` VALUES ('415822', '503862', '马詩涵', '7556034097', 289);
INSERT INTO `user` VALUES ('795188', '976401', '钟子韬', '7691705933', 290);
INSERT INTO `user` VALUES ('613016', '240627', '杜璐', '19971020615', 291);
INSERT INTO `user` VALUES ('288072', '083986', '莫子韬', '2064760799', 292);
INSERT INTO `user` VALUES ('421393', '778759', '周子韬', '19114021762', 293);
INSERT INTO `user` VALUES ('791512', '867910', '孔宇宁', '14519409962', 294);
INSERT INTO `user` VALUES ('941599', '614852', '孔詩涵', '7698507927', 295);
INSERT INTO `user` VALUES ('339316', '629229', '钟嘉伦', '19735895681', 296);
INSERT INTO `user` VALUES ('159416', '817196', '曾致远', '76944961599', 297);
INSERT INTO `user` VALUES ('435018', '868679', '潘致远', '16895909098', 298);
INSERT INTO `user` VALUES ('637214', '144526', '邵秀英', '218410831', 299);
INSERT INTO `user` VALUES ('471530', '877163', '孟子异', '2885460756', 300);
INSERT INTO `user` VALUES ('343733', '671631', '汪宇宁', '7601308734', 301);
INSERT INTO `user` VALUES ('810597', '586393', '宋杰宏', '2198671145', 302);
INSERT INTO `user` VALUES ('682867', '952793', '杨秀英', '109565633', 303);
INSERT INTO `user` VALUES ('742830', '478042', '邓嘉伦', '14549574139', 304);
INSERT INTO `user` VALUES ('438554', '904305', '毛震南', '18816018944', 305);
INSERT INTO `user` VALUES ('793929', '836554', '尹杰宏', '75553749453', 306);
INSERT INTO `user` VALUES ('114953', '236689', '陈宇宁', '76013569564', 307);
INSERT INTO `user` VALUES ('228893', '928220', '杨子韬', '215785267', 308);
INSERT INTO `user` VALUES ('389054', '279402', '江杰宏', '16532105178', 309);
INSERT INTO `user` VALUES ('229488', '898612', '范晓明', '16885400917', 310);
INSERT INTO `user` VALUES ('649524', '944443', '朱睿', '219013700', 311);
INSERT INTO `user` VALUES ('747926', '829872', '常子韬', '76967685565', 312);
INSERT INTO `user` VALUES ('177616', '599965', '钱子韬', '76922792318', 313);
INSERT INTO `user` VALUES ('821559', '686501', '许安琪', '16517964333', 314);
INSERT INTO `user` VALUES ('403184', '336406', '余璐', '19246846541', 315);
INSERT INTO `user` VALUES ('565374', '220851', '戴詩涵', '18691240945', 316);
INSERT INTO `user` VALUES ('681796', '079290', '范岚', '76054696629', 317);
INSERT INTO `user` VALUES ('137370', '235056', '卢晓明', '2047350847', 318);
INSERT INTO `user` VALUES ('398430', '097271', '张子异', '213012057', 319);
INSERT INTO `user` VALUES ('768788', '285825', '潘嘉伦', '16063438790', 320);
INSERT INTO `user` VALUES ('636928', '069932', '高安琪', '219575619', 321);
INSERT INTO `user` VALUES ('765617', '989140', '向子异', '2178236260', 322);
INSERT INTO `user` VALUES ('881455', '613353', '邹晓明', '15067933739', 323);
INSERT INTO `user` VALUES ('638233', '148337', '姜岚', '7555543173', 324);
INSERT INTO `user` VALUES ('385729', '016666', '贺致远', '14453099110', 325);
INSERT INTO `user` VALUES ('527595', '151960', '贾云熙', '14659047882', 326);
INSERT INTO `user` VALUES ('120851', '507715', '蒋云熙', '14519856773', 327);
INSERT INTO `user` VALUES ('316907', '992518', '张宇宁', '7699110928', 328);
INSERT INTO `user` VALUES ('006962', '185899', '蔡璐', '15241249545', 329);
INSERT INTO `user` VALUES ('695016', '194625', '崔子韬', '13486649897', 330);
INSERT INTO `user` VALUES ('113983', '887766', '孟睿', '2160756457', 331);
INSERT INTO `user` VALUES ('127415', '493399', '钱震南', '15931526768', 332);
INSERT INTO `user` VALUES ('831922', '551359', '萧宇宁', '18575135543', 333);
INSERT INTO `user` VALUES ('591830', '206948', '石子异', '16510551680', 334);
INSERT INTO `user` VALUES ('331098', '131023', '方詩涵', '75569603301', 335);
INSERT INTO `user` VALUES ('466090', '040051', '向岚', '1010954298', 336);
INSERT INTO `user` VALUES ('226666', '075764', '黄詩涵', '7606381614', 337);
INSERT INTO `user` VALUES ('524563', '109528', '尹岚', '13170784978', 338);
INSERT INTO `user` VALUES ('430284', '475875', '梁云熙', '17979612467', 339);
INSERT INTO `user` VALUES ('621388', '734693', '董晓明', '18866789382', 340);
INSERT INTO `user` VALUES ('284676', '170913', '雷震南', '76938188343', 341);
INSERT INTO `user` VALUES ('616834', '572779', '田秀英', '7557806958', 342);
INSERT INTO `user` VALUES ('760794', '103510', '韩云熙', '7697201568', 343);
INSERT INTO `user` VALUES ('815953', '586337', '姜致远', '18988046551', 344);
INSERT INTO `user` VALUES ('980497', '083720', '蒋璐', '202300529', 345);
INSERT INTO `user` VALUES ('737595', '976184', '王璐', '2021256264', 346);
INSERT INTO `user` VALUES ('958652', '447648', '郑岚', '19415183162', 347);
INSERT INTO `user` VALUES ('279961', '828207', '沈杰宏', '17354408360', 348);
INSERT INTO `user` VALUES ('181561', '859056', '谢子韬', '106111685', 349);
INSERT INTO `user` VALUES ('762730', '311785', '于安琪', '13364546158', 350);
INSERT INTO `user` VALUES ('919292', '284203', '蒋晓明', '16659155545', 351);
INSERT INTO `user` VALUES ('838876', '900968', '杨璐', '16687806490', 352);
INSERT INTO `user` VALUES ('865288', '874222', '杜睿', '13904269638', 353);
INSERT INTO `user` VALUES ('002106', '064677', '罗杰宏', '2048904282', 354);
INSERT INTO `user` VALUES ('481043', '694638', '阎秀英', '19550221012', 355);
INSERT INTO `user` VALUES ('582580', '868747', '严震南', '16821772647', 356);
INSERT INTO `user` VALUES ('441892', '462410', '谢子韬', '103490406', 357);
INSERT INTO `user` VALUES ('898345', '335796', '史云熙', '15633685738', 358);
INSERT INTO `user` VALUES ('488810', '403638', '吕晓明', '7559983719', 359);
INSERT INTO `user` VALUES ('391779', '643305', '秦宇宁', '14928233905', 360);
INSERT INTO `user` VALUES ('011792', '031254', '贺秀英', '18298196129', 361);
INSERT INTO `user` VALUES ('036887', '477439', '董子异', '15373413969', 362);
INSERT INTO `user` VALUES ('027478', '215101', '陆嘉伦', '15397729495', 363);
INSERT INTO `user` VALUES ('703750', '789693', '陶杰宏', '2898063408', 364);
INSERT INTO `user` VALUES ('792152', '062047', '丁子韬', '19375944697', 365);
INSERT INTO `user` VALUES ('392654', '657035', '李晓明', '2178952533', 366);
INSERT INTO `user` VALUES ('249660', '542887', '戴嘉伦', '205038682', 367);
INSERT INTO `user` VALUES ('143456', '415840', '董震南', '75579020929', 368);
INSERT INTO `user` VALUES ('466004', '800492', '赵杰宏', '19856865179', 369);
INSERT INTO `user` VALUES ('011159', '646782', '何秀英', '17217524596', 370);
INSERT INTO `user` VALUES ('010237', '323733', '朱安琪', '104580217', 371);
INSERT INTO `user` VALUES ('171071', '276387', '王秀英', '17855219255', 372);
INSERT INTO `user` VALUES ('785587', '319804', '张云熙', '16115088142', 373);
INSERT INTO `user` VALUES ('025653', '994945', '熊云熙', '18236490538', 374);
INSERT INTO `user` VALUES ('124826', '603023', '许嘉伦', '15513776585', 375);
INSERT INTO `user` VALUES ('839743', '239122', '顾璐', '7604562104', 376);
INSERT INTO `user` VALUES ('970255', '076692', '吕璐', '2075747515', 377);
INSERT INTO `user` VALUES ('360542', '839578', '吕秀英', '15092235460', 378);
INSERT INTO `user` VALUES ('986030', '411696', '田詩涵', '7558946535', 379);
INSERT INTO `user` VALUES ('998112', '868961', '金杰宏', '7603617156', 380);
INSERT INTO `user` VALUES ('159228', '990159', '罗宇宁', '284025134', 381);
INSERT INTO `user` VALUES ('364787', '882779', '黎睿', '75552233961', 382);
INSERT INTO `user` VALUES ('501030', '350048', '石璐', '76973089450', 383);
INSERT INTO `user` VALUES ('733384', '914220', '姚秀英', '15592123595', 384);
INSERT INTO `user` VALUES ('220536', '956080', '卢震南', '282073733', 385);
INSERT INTO `user` VALUES ('125993', '419969', '张詩涵', '2869388493', 386);
INSERT INTO `user` VALUES ('506882', '854126', '韩睿', '17307621364', 387);
INSERT INTO `user` VALUES ('745381', '586545', '陶宇宁', '15701573244', 388);
INSERT INTO `user` VALUES ('848025', '618555', '沈詩涵', '287789908', 389);
INSERT INTO `user` VALUES ('056074', '118612', '宋宇宁', '2090183235', 390);
INSERT INTO `user` VALUES ('015014', '896702', '李震南', '76087144804', 391);
INSERT INTO `user` VALUES ('433350', '227116', '熊安琪', '18764539347', 392);
INSERT INTO `user` VALUES ('271163', '361845', '蒋璐', '16414488373', 393);
INSERT INTO `user` VALUES ('464648', '171548', '马晓明', '17237885005', 394);
INSERT INTO `user` VALUES ('193509', '056913', '方震南', '282357307', 395);
INSERT INTO `user` VALUES ('397222', '388945', '郝子异', '7690888034', 396);
INSERT INTO `user` VALUES ('501371', '078210', '姜詩涵', '14579933685', 397);
INSERT INTO `user` VALUES ('027473', '594033', '武震南', '19973075757', 398);
INSERT INTO `user` VALUES ('382378', '121052', '邱云熙', '202801281', 399);
INSERT INTO `user` VALUES ('429438', '722916', '孙宇宁', '14711868633', 400);
INSERT INTO `user` VALUES ('437938', '816059', '严睿', '281722185', 401);
INSERT INTO `user` VALUES ('769364', '504390', '钱安琪', '14870770021', 402);
INSERT INTO `user` VALUES ('873234', '293864', '邓璐', '14139582901', 403);
INSERT INTO `user` VALUES ('673856', '357559', '邵嘉伦', '75535295101', 404);
INSERT INTO `user` VALUES ('557561', '251552', '邱璐', '286047711', 405);
INSERT INTO `user` VALUES ('488808', '989963', '金震南', '2000359771', 406);
INSERT INTO `user` VALUES ('972379', '327727', '冯詩涵', '2168155634', 407);
INSERT INTO `user` VALUES ('517063', '784267', '胡震南', '15392388921', 408);
INSERT INTO `user` VALUES ('712205', '892235', '范安琪', '2136292009', 409);
INSERT INTO `user` VALUES ('049398', '325152', '唐睿', '2835063875', 410);
INSERT INTO `user` VALUES ('446010', '040038', '邹杰宏', '2083168478', 411);
INSERT INTO `user` VALUES ('130875', '935151', '蒋云熙', '16535245568', 412);
INSERT INTO `user` VALUES ('017920', '328008', '苏子韬', '1087338516', 413);
INSERT INTO `user` VALUES ('008924', '972180', '黄杰宏', '7601142935', 414);
INSERT INTO `user` VALUES ('064836', '793782', '蔡云熙', '16136718393', 415);
INSERT INTO `user` VALUES ('912058', '750314', '杜睿', '16120814506', 416);
INSERT INTO `user` VALUES ('056891', '636625', '郭致远', '2105695165', 417);
INSERT INTO `user` VALUES ('228571', '007755', '冯秀英', '7696147839', 418);
INSERT INTO `user` VALUES ('706059', '477682', '潘睿', '19532595445', 419);
INSERT INTO `user` VALUES ('834453', '673847', '戴致远', '15376083826', 420);
INSERT INTO `user` VALUES ('305031', '128206', '顾秀英', '2886017934', 421);
INSERT INTO `user` VALUES ('030890', '976928', '梁岚', '15113396805', 422);
INSERT INTO `user` VALUES ('484197', '087592', '汤子异', '15355031710', 423);
INSERT INTO `user` VALUES ('001825', '400508', '段致远', '13409591400', 424);
INSERT INTO `user` VALUES ('003099', '581432', '邱安琪', '14203237560', 425);
INSERT INTO `user` VALUES ('978187', '189692', '何子韬', '283455211', 426);
INSERT INTO `user` VALUES ('958253', '618947', '史震南', '17231422064', 427);
INSERT INTO `user` VALUES ('316744', '382712', '汪秀英', '14754340368', 428);
INSERT INTO `user` VALUES ('248414', '610236', '周詩涵', '1099955723', 429);
INSERT INTO `user` VALUES ('368541', '894120', '傅晓明', '2843123443', 430);
INSERT INTO `user` VALUES ('165706', '820491', '赵子韬', '17262004614', 431);
INSERT INTO `user` VALUES ('057565', '076418', '夏璐', '16844935537', 432);
INSERT INTO `user` VALUES ('282140', '396087', '夏致远', '1029565268', 433);
INSERT INTO `user` VALUES ('597126', '454589', '常秀英', '7600324442', 434);
INSERT INTO `user` VALUES ('425081', '903111', '孟子异', '17127971018', 435);
INSERT INTO `user` VALUES ('600964', '526177', '彭岚', '1022813034', 436);
INSERT INTO `user` VALUES ('961534', '470187', '韦晓明', '76925059526', 437);
INSERT INTO `user` VALUES ('386538', '292389', '邱睿', '76054316309', 438);
INSERT INTO `user` VALUES ('138262', '609626', '毛安琪', '16225814985', 439);
INSERT INTO `user` VALUES ('111389', '063939', '梁晓明', '15412863389', 440);
INSERT INTO `user` VALUES ('902811', '077685', '莫子韬', '15896449257', 441);
INSERT INTO `user` VALUES ('256676', '485324', '毛秀英', '18438575256', 442);
INSERT INTO `user` VALUES ('784287', '979110', '罗岚', '2064723069', 443);
INSERT INTO `user` VALUES ('451827', '232351', '王岚', '76043625818', 444);
INSERT INTO `user` VALUES ('999884', '692660', '于子韬', '13326846438', 445);
INSERT INTO `user` VALUES ('780496', '359966', '姜宇宁', '76976179192', 446);
INSERT INTO `user` VALUES ('161915', '280838', '史秀英', '206746900', 447);
INSERT INTO `user` VALUES ('941830', '534165', '吕致远', '19662565384', 448);
INSERT INTO `user` VALUES ('618557', '359959', '胡睿', '16507348440', 449);
INSERT INTO `user` VALUES ('256859', '763876', '史嘉伦', '13918903251', 450);
INSERT INTO `user` VALUES ('766077', '289809', '陈云熙', '18389042633', 451);
INSERT INTO `user` VALUES ('468254', '034343', '熊璐', '76010851496', 452);
INSERT INTO `user` VALUES ('609498', '276514', '曹安琪', '1097810043', 453);
INSERT INTO `user` VALUES ('785962', '511251', '董睿', '2815515536', 454);
INSERT INTO `user` VALUES ('430038', '034357', '阎子异', '14315248961', 455);
INSERT INTO `user` VALUES ('135251', '600148', '戴晓明', '104508557', 456);
INSERT INTO `user` VALUES ('403339', '074921', '于秀英', '14196471450', 457);
INSERT INTO `user` VALUES ('955490', '283787', '赵云熙', '19174673855', 458);
INSERT INTO `user` VALUES ('101550', '187983', '廖嘉伦', '17720844127', 459);
INSERT INTO `user` VALUES ('334056', '195808', '陶云熙', '7692873595', 460);
INSERT INTO `user` VALUES ('458741', '093062', '何嘉伦', '2837446894', 461);
INSERT INTO `user` VALUES ('818431', '940129', '方秀英', '13245383159', 462);
INSERT INTO `user` VALUES ('788136', '968229', '段云熙', '16605195607', 463);
INSERT INTO `user` VALUES ('234846', '466206', '严岚', '14180492156', 464);
INSERT INTO `user` VALUES ('573233', '830751', '杜子韬', '7552593583', 465);
INSERT INTO `user` VALUES ('937161', '378589', '于震南', '216268915', 466);
INSERT INTO `user` VALUES ('154948', '591957', '廖睿', '13909578425', 467);
INSERT INTO `user` VALUES ('265401', '065994', '赵宇宁', '2845668416', 468);
INSERT INTO `user` VALUES ('740528', '289419', '陶子韬', '14950847550', 469);
INSERT INTO `user` VALUES ('488544', '893767', '杜岚', '16653104328', 470);
INSERT INTO `user` VALUES ('998978', '332204', '许致远', '19762718683', 471);
INSERT INTO `user` VALUES ('179892', '105984', '于杰宏', '13066578798', 472);
INSERT INTO `user` VALUES ('264778', '581977', '薛杰宏', '2172088185', 473);
INSERT INTO `user` VALUES ('480623', '977793', '郑致远', '7607679841', 474);
INSERT INTO `user` VALUES ('402909', '461794', '韦云熙', '2163264901', 475);
INSERT INTO `user` VALUES ('067585', '450725', '张秀英', '13247845323', 476);
INSERT INTO `user` VALUES ('154976', '279709', '汤璐', '18509006112', 477);
INSERT INTO `user` VALUES ('347912', '153038', '赵子异', '15874832549', 478);
INSERT INTO `user` VALUES ('849831', '068604', '韩嘉伦', '76097281407', 479);
INSERT INTO `user` VALUES ('240528', '157884', '魏岚', '2812025602', 480);
INSERT INTO `user` VALUES ('152919', '830613', '谢子异', '13309864807', 481);
INSERT INTO `user` VALUES ('195521', '732555', '冯子异', '280406617', 482);
INSERT INTO `user` VALUES ('913979', '262190', '贺睿', '18911805601', 483);
INSERT INTO `user` VALUES ('760491', '513226', '雷秀英', '75501746843', 484);
INSERT INTO `user` VALUES ('110940', '532270', '孔晓明', '14466101994', 485);
INSERT INTO `user` VALUES ('280899', '121566', '蔡秀英', '7608813575', 486);
INSERT INTO `user` VALUES ('776464', '230474', '黄致远', '7605297654', 487);
INSERT INTO `user` VALUES ('888768', '189790', '余震南', '16481532505', 488);
INSERT INTO `user` VALUES ('281489', '936920', '侯宇宁', '18540948160', 489);
INSERT INTO `user` VALUES ('144711', '102863', '林璐', '2890983622', 490);
INSERT INTO `user` VALUES ('702325', '739281', '王睿', '18124615105', 491);
INSERT INTO `user` VALUES ('883014', '706177', '吕安琪', '282506827', 492);
INSERT INTO `user` VALUES ('014506', '090084', '姚安琪', '76098937439', 493);
INSERT INTO `user` VALUES ('574262', '734951', '程致远', '16659991416', 494);
INSERT INTO `user` VALUES ('190999', '330800', '孔岚', '2821756584', 495);
INSERT INTO `user` VALUES ('005590', '690149', '魏璐', '7600245510', 496);
INSERT INTO `user` VALUES ('774174', '797085', '潘子韬', '280584263', 497);
INSERT INTO `user` VALUES ('941199', '985771', '余致远', '13204578189', 498);
INSERT INTO `user` VALUES ('978327', '485635', '范杰宏', '100570144', 499);
INSERT INTO `user` VALUES ('407538', '839433', '谢岚', '18667427683', 500);
INSERT INTO `user` VALUES ('043362', '003978', '潘宇宁', '16017830616', 501);
INSERT INTO `user` VALUES ('051481', '058160', '陈震南', '19288377934', 502);
INSERT INTO `user` VALUES ('725591', '245652', '李睿', '2042606663', 503);
INSERT INTO `user` VALUES ('725176', '392645', '贾震南', '75572730535', 504);
INSERT INTO `user` VALUES ('106906', '046278', '莫岚', '13357484873', 505);
INSERT INTO `user` VALUES ('868764', '794755', '董秀英', '2102353797', 506);
INSERT INTO `user` VALUES ('250058', '441116', '冯震南', '18471697558', 507);
INSERT INTO `user` VALUES ('989173', '280944', '武嘉伦', '16525313452', 508);
INSERT INTO `user` VALUES ('743251', '206382', '汤璐', '13987957353', 509);
INSERT INTO `user` VALUES ('655880', '210399', '朱云熙', '7558879848', 510);
INSERT INTO `user` VALUES ('098104', '712743', '韦宇宁', '17381213345', 511);
INSERT INTO `user` VALUES ('480981', '774020', '龙子韬', '104626690', 512);
INSERT INTO `user` VALUES ('658562', '824259', '谭子韬', '7692931373', 513);
INSERT INTO `user` VALUES ('568792', '358019', '郝岚', '7608789751', 514);
INSERT INTO `user` VALUES ('612463', '949892', '金宇宁', '17147161125', 515);
INSERT INTO `user` VALUES ('843847', '210164', '徐云熙', '14893334657', 516);
INSERT INTO `user` VALUES ('821480', '305989', '徐詩涵', '75581088811', 517);
INSERT INTO `user` VALUES ('144459', '027984', '邵詩涵', '15570261447', 518);
INSERT INTO `user` VALUES ('745425', '948746', '马子异', '280484673', 519);
INSERT INTO `user` VALUES ('541472', '063296', '金宇宁', '288804401', 520);
INSERT INTO `user` VALUES ('487531', '790592', '丁子异', '18143885357', 521);
INSERT INTO `user` VALUES ('952617', '979970', '蒋宇宁', '2040782999', 522);
INSERT INTO `user` VALUES ('877648', '790345', '贾晓明', '19187822293', 523);
INSERT INTO `user` VALUES ('736345', '985695', '熊璐', '18498872243', 524);
INSERT INTO `user` VALUES ('829905', '735450', '何震南', '16242669051', 525);
INSERT INTO `user` VALUES ('794045', '971651', '范子韬', '15123833156', 526);
INSERT INTO `user` VALUES ('003804', '076301', '薛璐', '16052282674', 527);
INSERT INTO `user` VALUES ('931467', '707128', '薛安琪', '18378132966', 528);
INSERT INTO `user` VALUES ('773835', '803518', '董璐', '212462016', 529);
INSERT INTO `user` VALUES ('489166', '281940', '李晓明', '75569629787', 530);
INSERT INTO `user` VALUES ('590208', '921267', '金詩涵', '16364235675', 531);
INSERT INTO `user` VALUES ('598154', '720091', '姚嘉伦', '18303250303', 532);
INSERT INTO `user` VALUES ('282225', '490941', '赵子异', '7605205770', 533);
INSERT INTO `user` VALUES ('820480', '428011', '方岚', '212715555', 534);
INSERT INTO `user` VALUES ('367943', '171929', '罗子异', '1093864183', 535);
INSERT INTO `user` VALUES ('635327', '140561', '黄秀英', '2821170314', 536);
INSERT INTO `user` VALUES ('582071', '509159', '黎云熙', '15225635114', 537);
INSERT INTO `user` VALUES ('353713', '901120', '魏子异', '7606282239', 538);
INSERT INTO `user` VALUES ('812565', '947370', '常震南', '2007236919', 539);
INSERT INTO `user` VALUES ('013500', '576266', '张震南', '7606435693', 540);
INSERT INTO `user` VALUES ('438638', '398881', '廖致远', '201527416', 541);
INSERT INTO `user` VALUES ('837720', '630331', '陶宇宁', '19255110914', 542);
INSERT INTO `user` VALUES ('705330', '460686', '毛子异', '215318282', 543);
INSERT INTO `user` VALUES ('591907', '434343', '罗秀英', '76031945265', 544);
INSERT INTO `user` VALUES ('121307', '733265', '林岚', '17025639310', 545);
INSERT INTO `user` VALUES ('114376', '551113', '贾震南', '75534856456', 546);
INSERT INTO `user` VALUES ('058794', '766735', '石璐', '217289370', 547);
INSERT INTO `user` VALUES ('047978', '356701', '尹云熙', '19456865057', 548);
INSERT INTO `user` VALUES ('084938', '496209', '贺詩涵', '107059971', 549);
INSERT INTO `user` VALUES ('148811', '190952', '史子异', '205969343', 550);
INSERT INTO `user` VALUES ('426937', '419917', '罗岚', '1017094377', 551);
INSERT INTO `user` VALUES ('197162', '702276', '田云熙', '2046674654', 552);
INSERT INTO `user` VALUES ('233236', '833145', '方杰宏', '17855542091', 553);
INSERT INTO `user` VALUES ('887897', '992913', '汤晓明', '76986520334', 554);
INSERT INTO `user` VALUES ('927412', '531639', '韦詩涵', '19260783116', 555);
INSERT INTO `user` VALUES ('169179', '001903', '曹璐', '75508659042', 556);
INSERT INTO `user` VALUES ('354573', '475095', '高秀英', '203109334', 557);
INSERT INTO `user` VALUES ('120913', '926827', '邹秀英', '19419064811', 558);
INSERT INTO `user` VALUES ('293632', '377611', '魏晓明', '214671093', 559);
INSERT INTO `user` VALUES ('772722', '365074', '江子异', '219037687', 560);
INSERT INTO `user` VALUES ('133525', '060530', '汤安琪', '101459657', 561);
INSERT INTO `user` VALUES ('187730', '405072', '林致远', '14499894649', 562);
INSERT INTO `user` VALUES ('890893', '597378', '叶岚', '7551322813', 563);
INSERT INTO `user` VALUES ('601612', '809966', '廖宇宁', '2838016856', 564);
INSERT INTO `user` VALUES ('984089', '774881', '贺睿', '14372328862', 565);
INSERT INTO `user` VALUES ('807966', '238954', '吴子韬', '16840297172', 566);
INSERT INTO `user` VALUES ('063467', '006190', '张岚', '18932891958', 567);
INSERT INTO `user` VALUES ('183404', '014125', '韩璐', '13023086692', 568);
INSERT INTO `user` VALUES ('909063', '286972', '孔宇宁', '18695540354', 569);
INSERT INTO `user` VALUES ('820189', '949408', '廖震南', '14511895363', 570);
INSERT INTO `user` VALUES ('455950', '055331', '武云熙', '19848195697', 571);
INSERT INTO `user` VALUES ('240954', '833823', '江云熙', '18962409115', 572);
INSERT INTO `user` VALUES ('011366', '599760', '宋嘉伦', '7558650211', 573);
INSERT INTO `user` VALUES ('726915', '162557', '董詩涵', '13653169244', 574);
INSERT INTO `user` VALUES ('870751', '892873', '吴子韬', '104212247', 575);
INSERT INTO `user` VALUES ('460688', '163007', '萧宇宁', '7557831713', 576);
INSERT INTO `user` VALUES ('197877', '196257', '毛安琪', '13719902855', 577);
INSERT INTO `user` VALUES ('703336', '334510', '贾安琪', '19079157683', 578);
INSERT INTO `user` VALUES ('551826', '637722', '曾詩涵', '13181611494', 579);
INSERT INTO `user` VALUES ('670730', '236911', '崔詩涵', '16930612505', 580);
INSERT INTO `user` VALUES ('243754', '402902', '钱秀英', '14604867037', 581);
INSERT INTO `user` VALUES ('712965', '814643', '沈安琪', '13916310096', 582);
INSERT INTO `user` VALUES ('772295', '651185', '萧睿', '14834867971', 583);
INSERT INTO `user` VALUES ('522960', '419016', '赵安琪', '18964715860', 584);
INSERT INTO `user` VALUES ('385366', '917240', '曾子异', '17368259681', 585);
INSERT INTO `user` VALUES ('493265', '593072', '汤秀英', '19778795957', 586);
INSERT INTO `user` VALUES ('416632', '613383', '孙璐', '216593428', 587);
INSERT INTO `user` VALUES ('221753', '068732', '姚睿', '17159352000', 588);
INSERT INTO `user` VALUES ('153910', '308495', '钱子韬', '15406014270', 589);
INSERT INTO `user` VALUES ('202777', '482069', '袁子韬', '18122484015', 590);
INSERT INTO `user` VALUES ('044339', '165146', '李岚', '75561450765', 591);
INSERT INTO `user` VALUES ('689415', '368754', '邹致远', '2892376629', 592);
INSERT INTO `user` VALUES ('386781', '674864', '邹岚', '2081988072', 593);
INSERT INTO `user` VALUES ('351908', '733683', '宋詩涵', '282570586', 594);
INSERT INTO `user` VALUES ('004643', '529216', '邓睿', '204081707', 595);
INSERT INTO `user` VALUES ('655565', '189404', '曾睿', '75508274413', 596);
INSERT INTO `user` VALUES ('171052', '807861', '谭子异', '15363526764', 597);
INSERT INTO `user` VALUES ('992233', '574483', '谢晓明', '13700603628', 598);
INSERT INTO `user` VALUES ('890594', '136704', '袁晓明', '13355618167', 599);
INSERT INTO `user` VALUES ('045704', '376589', '戴安琪', '2064846227', 600);
INSERT INTO `user` VALUES ('939337', '170745', '吕岚', '19848195039', 601);
INSERT INTO `user` VALUES ('850327', '010303', '孔安琪', '213762427', 602);
INSERT INTO `user` VALUES ('747950', '183130', '郭致远', '16329400057', 603);
INSERT INTO `user` VALUES ('572091', '673509', '邱杰宏', '13048514974', 604);
INSERT INTO `user` VALUES ('181918', '724049', '董宇宁', '7603683882', 605);
INSERT INTO `user` VALUES ('253307', '068760', '罗震南', '7696944193', 606);
INSERT INTO `user` VALUES ('491089', '084468', '韦岚', '13010287911', 607);
INSERT INTO `user` VALUES ('885781', '421280', '阎睿', '75509613328', 608);
INSERT INTO `user` VALUES ('931101', '544166', '姜璐', '76909239157', 609);
INSERT INTO `user` VALUES ('615618', '458764', '谭秀英', '14371475488', 610);
INSERT INTO `user` VALUES ('605815', '851678', '顾安琪', '14121907218', 611);
INSERT INTO `user` VALUES ('762735', '505761', '严岚', '14295863033', 612);
INSERT INTO `user` VALUES ('907692', '005963', '蒋岚', '102449680', 613);
INSERT INTO `user` VALUES ('776361', '262718', '杨子异', '2053138500', 614);
INSERT INTO `user` VALUES ('118871', '710983', '何震南', '2131923237', 615);
INSERT INTO `user` VALUES ('262135', '573287', '向致远', '1038169776', 616);
INSERT INTO `user` VALUES ('037102', '990951', '金秀英', '18432638466', 617);
INSERT INTO `user` VALUES ('745098', '278727', '蒋睿', '14632850628', 618);
INSERT INTO `user` VALUES ('397433', '489477', '吕詩涵', '18726965095', 619);
INSERT INTO `user` VALUES ('118241', '331895', '陆岚', '2048521338', 620);
INSERT INTO `user` VALUES ('503331', '824497', '于云熙', '14785551048', 621);
INSERT INTO `user` VALUES ('645679', '510310', '孔嘉伦', '15810842566', 622);
INSERT INTO `user` VALUES ('374388', '890465', '程嘉伦', '17476113672', 623);
INSERT INTO `user` VALUES ('534672', '679718', '高睿', '16599484415', 624);
INSERT INTO `user` VALUES ('984967', '585709', '姜秀英', '2014600640', 625);
INSERT INTO `user` VALUES ('515845', '410264', '许秀英', '17000426959', 626);
INSERT INTO `user` VALUES ('490435', '649316', '程致远', '7554614562', 627);
INSERT INTO `user` VALUES ('983610', '882786', '夏子韬', '200772616', 628);
INSERT INTO `user` VALUES ('016892', '098766', '郝睿', '18960438077', 629);
INSERT INTO `user` VALUES ('079487', '536905', '邹子异', '16513417040', 630);
INSERT INTO `user` VALUES ('663862', '445499', '任云熙', '15628088515', 631);
INSERT INTO `user` VALUES ('857811', '665460', '沈子韬', '14001091272', 632);
INSERT INTO `user` VALUES ('127311', '662778', '王致远', '2133652784', 633);
INSERT INTO `user` VALUES ('693239', '494012', '胡云熙', '76095225483', 634);
INSERT INTO `user` VALUES ('657427', '003510', '陆睿', '19487316379', 635);
INSERT INTO `user` VALUES ('815112', '764126', '许嘉伦', '210270884', 636);
INSERT INTO `user` VALUES ('456594', '943474', '陶嘉伦', '15055522663', 637);
INSERT INTO `user` VALUES ('982071', '526089', '熊安琪', '15435507479', 638);
INSERT INTO `user` VALUES ('870669', '570269', '杜岚', '76023770193', 639);
INSERT INTO `user` VALUES ('531511', '872567', '叶子韬', '285158555', 640);
INSERT INTO `user` VALUES ('911491', '328514', '雷杰宏', '2176481309', 641);
INSERT INTO `user` VALUES ('078892', '242669', '段詩涵', '102340147', 642);
INSERT INTO `user` VALUES ('932589', '205304', '莫子韬', '14659897041', 643);
INSERT INTO `user` VALUES ('555237', '951013', '夏晓明', '16153796736', 644);
INSERT INTO `user` VALUES ('913876', '137056', '董云熙', '7609118934', 645);
INSERT INTO `user` VALUES ('686619', '728542', '贾嘉伦', '13757562809', 646);
INSERT INTO `user` VALUES ('128735', '567822', '赵璐', '7551326159', 647);
INSERT INTO `user` VALUES ('895925', '027526', '徐子韬', '212613580', 648);
INSERT INTO `user` VALUES ('084216', '006920', '江杰宏', '16552413176', 649);
INSERT INTO `user` VALUES ('985933', '056347', '史安琪', '17867662949', 650);
INSERT INTO `user` VALUES ('685933', '083938', '雷宇宁', '76002640541', 651);
INSERT INTO `user` VALUES ('079443', '962686', '郝岚', '18213907638', 652);
INSERT INTO `user` VALUES ('418141', '272376', '段震南', '17521772600', 653);
INSERT INTO `user` VALUES ('243232', '685436', '林璐', '214329876', 654);
INSERT INTO `user` VALUES ('157132', '694384', '萧晓明', '19323273886', 655);
INSERT INTO `user` VALUES ('578119', '939770', '许云熙', '285475999', 656);
INSERT INTO `user` VALUES ('564220', '974456', '任震南', '7696838499', 657);
INSERT INTO `user` VALUES ('950401', '691767', '范致远', '1028210099', 658);
INSERT INTO `user` VALUES ('008508', '307332', '王詩涵', '216371960', 659);
INSERT INTO `user` VALUES ('280973', '289235', '马震南', '14658906586', 660);
INSERT INTO `user` VALUES ('409668', '638788', '李子异', '13888775592', 661);
INSERT INTO `user` VALUES ('099094', '989501', '罗震南', '7691710734', 662);
INSERT INTO `user` VALUES ('582602', '174667', '石震南', '75591336060', 663);
INSERT INTO `user` VALUES ('670855', '876804', '蔡晓明', '7690781699', 664);
INSERT INTO `user` VALUES ('812676', '371738', '龙宇宁', '2808411298', 665);
INSERT INTO `user` VALUES ('694221', '244923', '卢秀英', '15830469521', 666);
INSERT INTO `user` VALUES ('241585', '303790', '吴致远', '2006965435', 667);
INSERT INTO `user` VALUES ('659807', '431063', '雷子异', '17894672415', 668);
INSERT INTO `user` VALUES ('649040', '892156', '姜睿', '17057864870', 669);
INSERT INTO `user` VALUES ('482135', '299441', '韩震南', '17837605340', 670);
INSERT INTO `user` VALUES ('407575', '050552', '谭杰宏', '76903910985', 671);
INSERT INTO `user` VALUES ('086825', '644426', '林云熙', '7696363345', 672);
INSERT INTO `user` VALUES ('370329', '237367', '龙詩涵', '19404064972', 673);
INSERT INTO `user` VALUES ('304510', '709918', '汪嘉伦', '7552638616', 674);
INSERT INTO `user` VALUES ('723219', '219215', '沈秀英', '2136144425', 675);
INSERT INTO `user` VALUES ('384024', '975640', '龙璐', '2892199044', 676);
INSERT INTO `user` VALUES ('544177', '670984', '尹震南', '14072412631', 677);
INSERT INTO `user` VALUES ('778889', '598330', '孟子异', '18967977965', 678);
INSERT INTO `user` VALUES ('290303', '648338', '冯子异', '13106976839', 679);
INSERT INTO `user` VALUES ('644407', '458742', '严睿', '285999131', 680);
INSERT INTO `user` VALUES ('955356', '347519', '夏睿', '2114583649', 681);
INSERT INTO `user` VALUES ('139779', '085958', '吴云熙', '13747308470', 682);
INSERT INTO `user` VALUES ('658185', '299287', '吕安琪', '75554424248', 683);
INSERT INTO `user` VALUES ('459423', '669157', '邓杰宏', '2102752848', 684);
INSERT INTO `user` VALUES ('130469', '660003', '叶睿', '2839638958', 685);
INSERT INTO `user` VALUES ('803872', '982124', '萧安琪', '2079466612', 686);
INSERT INTO `user` VALUES ('058015', '192073', '董岚', '19539954189', 687);
INSERT INTO `user` VALUES ('107463', '550996', '龙子异', '15257319885', 688);
INSERT INTO `user` VALUES ('212166', '547419', '孟詩涵', '2899190168', 689);
INSERT INTO `user` VALUES ('791729', '562194', '郝晓明', '7555110808', 690);
INSERT INTO `user` VALUES ('642831', '475512', '于子韬', '17524637407', 691);
INSERT INTO `user` VALUES ('733422', '936477', '吕睿', '7556673539', 692);
INSERT INTO `user` VALUES ('693694', '954115', '袁云熙', '7698362023', 693);
INSERT INTO `user` VALUES ('085670', '258490', '程睿', '13061042649', 694);
INSERT INTO `user` VALUES ('460527', '989051', '武岚', '1027566752', 695);
INSERT INTO `user` VALUES ('675777', '619595', '谭云熙', '13490202980', 696);
INSERT INTO `user` VALUES ('320446', '172110', '金晓明', '210241640', 697);
INSERT INTO `user` VALUES ('725698', '643600', '秦宇宁', '75536150677', 698);
INSERT INTO `user` VALUES ('833945', '275353', '崔晓明', '18653220872', 699);
INSERT INTO `user` VALUES ('210714', '182736', '段璐', '18036323932', 700);
INSERT INTO `user` VALUES ('815875', '407580', '曾宇宁', '2101290272', 701);
INSERT INTO `user` VALUES ('244315', '288227', '孟秀英', '14087035665', 702);
INSERT INTO `user` VALUES ('461704', '128709', '唐秀英', '17187898494', 703);
INSERT INTO `user` VALUES ('341791', '775550', '曹震南', '13854429599', 704);
INSERT INTO `user` VALUES ('919386', '399194', '邓秀英', '106830736', 705);
INSERT INTO `user` VALUES ('752939', '524108', '汤宇宁', '15106633789', 706);
INSERT INTO `user` VALUES ('459113', '056415', '唐岚', '7606540236', 707);
INSERT INTO `user` VALUES ('145203', '371955', '贾致远', '14068783149', 708);
INSERT INTO `user` VALUES ('316691', '549777', '马子韬', '17033905582', 709);
INSERT INTO `user` VALUES ('356591', '017539', '胡璐', '7557606058', 710);
INSERT INTO `user` VALUES ('110551', '829653', '田秀英', '16527677845', 711);
INSERT INTO `user` VALUES ('671815', '967042', '姚晓明', '1052385456', 712);
INSERT INTO `user` VALUES ('146557', '980820', '马云熙', '15333455995', 713);
INSERT INTO `user` VALUES ('944158', '966463', '董震南', '18741697390', 714);
INSERT INTO `user` VALUES ('281583', '964597', '田震南', '13523240581', 715);
INSERT INTO `user` VALUES ('619096', '127229', '贺子异', '13261690251', 716);
INSERT INTO `user` VALUES ('077575', '916623', '金云熙', '7557059326', 717);
INSERT INTO `user` VALUES ('869565', '713329', '毛杰宏', '75596764061', 718);
INSERT INTO `user` VALUES ('764041', '543673', '蒋子韬', '19420730274', 719);
INSERT INTO `user` VALUES ('600567', '874243', '姜晓明', '281544746', 720);
INSERT INTO `user` VALUES ('732631', '839691', '卢子韬', '219793609', 721);
INSERT INTO `user` VALUES ('885302', '112204', '高云熙', '16871390718', 722);
INSERT INTO `user` VALUES ('214545', '088496', '曹晓明', '16461102663', 723);
INSERT INTO `user` VALUES ('751900', '304051', '莫安琪', '13792465960', 724);
INSERT INTO `user` VALUES ('279859', '889846', '金致远', '19729671781', 725);
INSERT INTO `user` VALUES ('099083', '982328', '傅震南', '18441380201', 726);
INSERT INTO `user` VALUES ('397477', '826595', '尹致远', '282369726', 727);
INSERT INTO `user` VALUES ('336093', '291878', '胡宇宁', '14305370001', 728);
INSERT INTO `user` VALUES ('132088', '896468', '高宇宁', '7695774098', 729);
INSERT INTO `user` VALUES ('989567', '725932', '严岚', '19091509965', 730);
INSERT INTO `user` VALUES ('241372', '015869', '袁秀英', '17225415646', 731);
INSERT INTO `user` VALUES ('860396', '069450', '黎睿', '282441671', 732);
INSERT INTO `user` VALUES ('623212', '184464', '许岚', '16608904868', 733);
INSERT INTO `user` VALUES ('030901', '372731', '邹晓明', '76993185119', 734);
INSERT INTO `user` VALUES ('056860', '845815', '谢宇宁', '75547839618', 735);
INSERT INTO `user` VALUES ('957874', '086031', '曾晓明', '207229300', 736);
INSERT INTO `user` VALUES ('893623', '400085', '常秀英', '13309806159', 737);
INSERT INTO `user` VALUES ('454458', '666255', '孔嘉伦', '7557624415', 738);
INSERT INTO `user` VALUES ('446231', '333735', '向云熙', '13358114111', 739);
INSERT INTO `user` VALUES ('838440', '699198', '田岚', '19996600422', 740);
INSERT INTO `user` VALUES ('214868', '432441', '范岚', '14378477563', 741);
INSERT INTO `user` VALUES ('247580', '358727', '袁詩涵', '17802590943', 742);
INSERT INTO `user` VALUES ('606084', '754999', '陈岚', '2880365350', 743);
INSERT INTO `user` VALUES ('527588', '273996', '李詩涵', '17535411640', 744);
INSERT INTO `user` VALUES ('319345', '723746', '王杰宏', '18162647254', 745);
INSERT INTO `user` VALUES ('541953', '422713', '贺杰宏', '19286028966', 746);
INSERT INTO `user` VALUES ('801076', '060803', '潘子韬', '17512989816', 747);
INSERT INTO `user` VALUES ('531314', '056427', '唐致远', '1015621405', 748);
INSERT INTO `user` VALUES ('970318', '971539', '钱晓明', '2861002080', 749);
INSERT INTO `user` VALUES ('641308', '338820', '赵安琪', '17534446925', 750);
INSERT INTO `user` VALUES ('962839', '248425', '雷安琪', '18602721354', 751);
INSERT INTO `user` VALUES ('731098', '375017', '江璐', '13832806021', 752);
INSERT INTO `user` VALUES ('085471', '366325', '顾岚', '76935363155', 753);
INSERT INTO `user` VALUES ('401353', '148795', '袁杰宏', '76057610532', 754);
INSERT INTO `user` VALUES ('320672', '146467', '贺子韬', '2031251316', 755);
INSERT INTO `user` VALUES ('562291', '932853', '曾杰宏', '281788667', 756);
INSERT INTO `user` VALUES ('649176', '182320', '邱致远', '15526899459', 757);
INSERT INTO `user` VALUES ('788639', '775972', '傅岚', '16757424829', 758);
INSERT INTO `user` VALUES ('175250', '838592', '姜云熙', '16513832798', 759);
INSERT INTO `user` VALUES ('149156', '070019', '孙嘉伦', '2882742194', 760);
INSERT INTO `user` VALUES ('725982', '840121', '魏子异', '18472055286', 761);
INSERT INTO `user` VALUES ('853376', '114772', '姚嘉伦', '207317079', 762);
INSERT INTO `user` VALUES ('749327', '522545', '陶云熙', '204727668', 763);
INSERT INTO `user` VALUES ('742509', '247973', '杨晓明', '18457106749', 764);
INSERT INTO `user` VALUES ('014766', '356344', '向嘉伦', '76000980016', 765);
INSERT INTO `user` VALUES ('081829', '965029', '冯岚', '7692010132', 766);
INSERT INTO `user` VALUES ('904071', '364663', '邓子异', '19499706588', 767);
INSERT INTO `user` VALUES ('561465', '324700', '贺宇宁', '15626609641', 768);
INSERT INTO `user` VALUES ('543144', '894998', '邹晓明', '7603736214', 769);
INSERT INTO `user` VALUES ('419296', '169358', '李安琪', '1090254140', 770);
INSERT INTO `user` VALUES ('919696', '962329', '杨子异', '14691843074', 771);
INSERT INTO `user` VALUES ('637148', '842609', '罗宇宁', '16257079165', 772);
INSERT INTO `user` VALUES ('629756', '279007', '曹岚', '16611338053', 773);
INSERT INTO `user` VALUES ('003454', '911921', '顾詩涵', '14113324725', 774);
INSERT INTO `user` VALUES ('428851', '638421', '廖震南', '19366352593', 775);
INSERT INTO `user` VALUES ('739674', '305028', '韩子韬', '7604439497', 776);
INSERT INTO `user` VALUES ('250180', '517144', '潘晓明', '17954860311', 777);
INSERT INTO `user` VALUES ('441668', '113021', '许子韬', '17213554774', 778);
INSERT INTO `user` VALUES ('020808', '456643', '王震南', '7691250122', 779);
INSERT INTO `user` VALUES ('824092', '784448', '姚秀英', '16386331130', 780);
INSERT INTO `user` VALUES ('025047', '201819', '胡詩涵', '17002953165', 781);
INSERT INTO `user` VALUES ('711793', '134127', '廖云熙', '17326059626', 782);
INSERT INTO `user` VALUES ('676812', '132502', '郭岚', '19748269808', 783);
INSERT INTO `user` VALUES ('126426', '825851', '程岚', '14215519189', 784);
INSERT INTO `user` VALUES ('538641', '775397', '吕震南', '13624848892', 785);
INSERT INTO `user` VALUES ('598355', '008775', '戴岚', '14654176105', 786);
INSERT INTO `user` VALUES ('840006', '210613', '武杰宏', '16851155288', 787);
INSERT INTO `user` VALUES ('882854', '788909', '田杰宏', '76008383094', 788);
INSERT INTO `user` VALUES ('054119', '411820', '苏岚', '1077489747', 789);
INSERT INTO `user` VALUES ('523411', '057311', '钱詩涵', '7559432096', 790);
INSERT INTO `user` VALUES ('879745', '786151', '余子韬', '15167425813', 791);
INSERT INTO `user` VALUES ('364152', '715307', '段詩涵', '14453544312', 792);
INSERT INTO `user` VALUES ('757170', '179352', '蒋子异', '1020496166', 793);
INSERT INTO `user` VALUES ('491936', '134110', '赵岚', '2091600308', 794);
INSERT INTO `user` VALUES ('567966', '454357', '雷嘉伦', '2150295329', 795);
INSERT INTO `user` VALUES ('012584', '876408', '武秀英', '76977660027', 796);
INSERT INTO `user` VALUES ('028750', '516326', '袁詩涵', '14879177995', 797);
INSERT INTO `user` VALUES ('565037', '094934', '黄睿', '7698990489', 798);
INSERT INTO `user` VALUES ('357708', '945748', '向安琪', '13159657868', 799);
INSERT INTO `user` VALUES ('286492', '892090', '谢秀英', '17406778765', 800);
INSERT INTO `user` VALUES ('252007', '767021', '侯秀英', '201899699', 801);
INSERT INTO `user` VALUES ('346039', '288206', '顾子韬', '18674068152', 802);
INSERT INTO `user` VALUES ('844683', '277932', '郝詩涵', '204075460', 803);
INSERT INTO `user` VALUES ('183892', '423623', '丁安琪', '1090625747', 804);
INSERT INTO `user` VALUES ('675119', '753463', '黎睿', '208384487', 805);
INSERT INTO `user` VALUES ('660133', '247971', '于璐', '19492898743', 806);
INSERT INTO `user` VALUES ('375413', '248424', '石嘉伦', '13529436704', 807);
INSERT INTO `user` VALUES ('269278', '012056', '卢致远', '16900117331', 808);
INSERT INTO `user` VALUES ('674674', '465470', '程晓明', '7556999742', 809);
INSERT INTO `user` VALUES ('549187', '596349', '赵致远', '75508052008', 810);
INSERT INTO `user` VALUES ('180243', '165908', '赵嘉伦', '16958121348', 811);
INSERT INTO `user` VALUES ('618214', '304897', '郑震南', '2870855562', 812);
INSERT INTO `user` VALUES ('518126', '382090', '孟璐', '287604995', 813);
INSERT INTO `user` VALUES ('424842', '403832', '陈宇宁', '76056812631', 814);
INSERT INTO `user` VALUES ('465315', '884602', '傅子韬', '14934023280', 815);
INSERT INTO `user` VALUES ('887653', '961665', '郭睿', '7608413078', 816);
INSERT INTO `user` VALUES ('576880', '051561', '于秀英', '76971293562', 817);
INSERT INTO `user` VALUES ('292651', '123969', '冯詩涵', '19538162309', 818);
INSERT INTO `user` VALUES ('534620', '791502', '蒋晓明', '15995986617', 819);
INSERT INTO `user` VALUES ('301999', '054722', '石杰宏', '15155579929', 820);
INSERT INTO `user` VALUES ('415262', '464902', '石詩涵', '19143768938', 821);
INSERT INTO `user` VALUES ('166539', '734202', '丁杰宏', '75537244247', 822);
INSERT INTO `user` VALUES ('795211', '002067', '薛致远', '2018130922', 823);
INSERT INTO `user` VALUES ('663170', '956509', '吕詩涵', '76936171341', 824);
INSERT INTO `user` VALUES ('269920', '466762', '段詩涵', '17444182005', 825);
INSERT INTO `user` VALUES ('429022', '741956', '崔睿', '215298790', 826);
INSERT INTO `user` VALUES ('671945', '028014', '许秀英', '15862737686', 827);
INSERT INTO `user` VALUES ('406688', '637177', '钱云熙', '208966100', 828);
INSERT INTO `user` VALUES ('134384', '231595', '秦安琪', '14210067998', 829);
INSERT INTO `user` VALUES ('553151', '005792', '郭致远', '75519610864', 830);
INSERT INTO `user` VALUES ('564581', '077285', '孙致远', '15059984198', 831);
INSERT INTO `user` VALUES ('808462', '577334', '彭宇宁', '7551635136', 832);
INSERT INTO `user` VALUES ('601931', '736291', '吕睿', '2103776637', 833);
INSERT INTO `user` VALUES ('190169', '038266', '傅子韬', '76070545817', 834);
INSERT INTO `user` VALUES ('379341', '961842', '郭宇宁', '101033758', 835);
INSERT INTO `user` VALUES ('802149', '680991', '徐云熙', '18032282569', 836);
INSERT INTO `user` VALUES ('849471', '729862', '龚睿', '75599374554', 837);
INSERT INTO `user` VALUES ('643425', '136631', '徐云熙', '18348686366', 838);
INSERT INTO `user` VALUES ('342294', '633790', '莫晓明', '19598043004', 839);
INSERT INTO `user` VALUES ('542850', '068770', '方璐', '2142524424', 840);
INSERT INTO `user` VALUES ('807481', '308854', '吕震南', '7699723009', 841);
INSERT INTO `user` VALUES ('856712', '374486', '谭安琪', '2014467354', 842);
INSERT INTO `user` VALUES ('970439', '785343', '石詩涵', '2823163106', 843);
INSERT INTO `user` VALUES ('670949', '111239', '莫睿', '16495739357', 844);
INSERT INTO `user` VALUES ('155680', '060708', '徐岚', '14770804202', 845);
INSERT INTO `user` VALUES ('141778', '155369', '叶安琪', '2114368586', 846);
INSERT INTO `user` VALUES ('365649', '615767', '魏云熙', '2884285196', 847);
INSERT INTO `user` VALUES ('118748', '024367', '高宇宁', '7551296047', 848);
INSERT INTO `user` VALUES ('644592', '341863', '陆秀英', '7555261445', 849);
INSERT INTO `user` VALUES ('403225', '209409', '韦安琪', '19059381611', 850);
INSERT INTO `user` VALUES ('676634', '676395', '梁子异', '15790864168', 851);
INSERT INTO `user` VALUES ('841916', '751667', '江安琪', '75595436664', 852);
INSERT INTO `user` VALUES ('293468', '852330', '贺秀英', '2845569713', 853);
INSERT INTO `user` VALUES ('185040', '140416', '孔安琪', '13268458259', 854);
INSERT INTO `user` VALUES ('089335', '142957', '曹嘉伦', '7606140893', 855);
INSERT INTO `user` VALUES ('328661', '182872', '宋安琪', '7608912742', 856);
INSERT INTO `user` VALUES ('007013', '130749', '卢岚', '75597299398', 857);
INSERT INTO `user` VALUES ('252080', '623376', '蒋璐', '14653194759', 858);
INSERT INTO `user` VALUES ('679140', '476182', '廖晓明', '209491826', 859);
INSERT INTO `user` VALUES ('704070', '861767', '曾震南', '2094829172', 860);
INSERT INTO `user` VALUES ('353396', '203831', '蒋嘉伦', '18484243131', 861);
INSERT INTO `user` VALUES ('322246', '694796', '史詩涵', '13782558261', 862);
INSERT INTO `user` VALUES ('226194', '219686', '张晓明', '14569883971', 863);
INSERT INTO `user` VALUES ('504582', '017611', '马晓明', '7600241890', 864);
INSERT INTO `user` VALUES ('247107', '960975', '刘安琪', '18138925193', 865);
INSERT INTO `user` VALUES ('276267', '038729', '张云熙', '101758929', 866);
INSERT INTO `user` VALUES ('208328', '484683', '林致远', '19878829303', 867);
INSERT INTO `user` VALUES ('775083', '902534', '曾晓明', '15906124159', 868);
INSERT INTO `user` VALUES ('994558', '477990', '何睿', '19425089208', 869);
INSERT INTO `user` VALUES ('586629', '703516', '唐子韬', '75513245371', 870);
INSERT INTO `user` VALUES ('667333', '469843', '卢云熙', '13657858070', 871);
INSERT INTO `user` VALUES ('187289', '839307', '唐云熙', '17521411429', 872);
INSERT INTO `user` VALUES ('945542', '328749', '叶云熙', '16641053296', 873);
INSERT INTO `user` VALUES ('041250', '472154', '彭睿', '217234648', 874);
INSERT INTO `user` VALUES ('151618', '638890', '郑晓明', '7606222680', 875);
INSERT INTO `user` VALUES ('901771', '112716', '莫杰宏', '109705582', 876);
INSERT INTO `user` VALUES ('786078', '356550', '贾致远', '7607500086', 877);
INSERT INTO `user` VALUES ('950405', '223151', '高杰宏', '7550571412', 878);
INSERT INTO `user` VALUES ('908033', '381918', '张子异', '18938985730', 879);
INSERT INTO `user` VALUES ('571791', '341713', '宋子韬', '16784033182', 880);
INSERT INTO `user` VALUES ('349046', '041459', '许云熙', '17858907770', 881);
INSERT INTO `user` VALUES ('706779', '143072', '谢睿', '19945033787', 882);
INSERT INTO `user` VALUES ('001510', '867684', '林秀英', '106898248', 883);
INSERT INTO `user` VALUES ('709524', '066999', '何嘉伦', '7608238186', 884);
INSERT INTO `user` VALUES ('769568', '744073', '邹震南', '2850865748', 885);
INSERT INTO `user` VALUES ('240576', '345048', '戴嘉伦', '75562893788', 886);
INSERT INTO `user` VALUES ('591066', '112569', '郝詩涵', '280791001', 887);
INSERT INTO `user` VALUES ('768057', '406380', '孙晓明', '18839115008', 888);
INSERT INTO `user` VALUES ('258529', '148913', '段杰宏', '7699796449', 889);
INSERT INTO `user` VALUES ('544090', '635734', '侯嘉伦', '107589527', 890);
INSERT INTO `user` VALUES ('821089', '503912', '潘子韬', '76947458649', 891);
INSERT INTO `user` VALUES ('994146', '614931', '江璐', '285159837', 892);
INSERT INTO `user` VALUES ('225204', '549122', '钟秀英', '14261955802', 893);
INSERT INTO `user` VALUES ('804312', '066194', '毛嘉伦', '13370959010', 894);
INSERT INTO `user` VALUES ('618174', '708564', '赵云熙', '76928810314', 895);
INSERT INTO `user` VALUES ('841281', '019208', '曹宇宁', '100573381', 896);
INSERT INTO `user` VALUES ('810968', '919881', '韦安琪', '2098780238', 897);
INSERT INTO `user` VALUES ('387737', '315739', '石詩涵', '1082229285', 898);
INSERT INTO `user` VALUES ('123758', '588928', '廖秀英', '15798837157', 899);
INSERT INTO `user` VALUES ('573218', '731380', '黎岚', '76055552899', 900);
INSERT INTO `user` VALUES ('401793', '623303', '胡嘉伦', '2033533684', 901);
INSERT INTO `user` VALUES ('963138', '066347', '金震南', '15910948479', 902);
INSERT INTO `user` VALUES ('732859', '548586', '龙秀英', '17087245577', 903);
INSERT INTO `user` VALUES ('241073', '032321', '贺安琪', '2158409938', 904);
INSERT INTO `user` VALUES ('387486', '435714', '陈宇宁', '13487431239', 905);
INSERT INTO `user` VALUES ('472262', '266410', '孔璐', '18829418501', 906);
INSERT INTO `user` VALUES ('599784', '285236', '张杰宏', '19101386010', 907);
INSERT INTO `user` VALUES ('878897', '359363', '雷詩涵', '76091877906', 908);
INSERT INTO `user` VALUES ('456649', '729513', '傅岚', '1071200202', 909);
INSERT INTO `user` VALUES ('261776', '249132', '郭子异', '76935732167', 910);
INSERT INTO `user` VALUES ('821986', '837135', '王子韬', '13542439778', 911);
INSERT INTO `user` VALUES ('355623', '452276', '叶云熙', '2808133936', 912);
INSERT INTO `user` VALUES ('198769', '697444', '廖云熙', '76992798545', 913);
INSERT INTO `user` VALUES ('235717', '278378', '杜嘉伦', '14717780928', 914);
INSERT INTO `user` VALUES ('531218', '394347', '孙子韬', '7695034795', 915);
INSERT INTO `user` VALUES ('708183', '019281', '陶杰宏', '2810213934', 916);
INSERT INTO `user` VALUES ('177316', '952098', '吕云熙', '105837785', 917);
INSERT INTO `user` VALUES ('770366', '720876', '陈璐', '7693617964', 918);
INSERT INTO `user` VALUES ('819090', '355590', '汤云熙', '284827785', 919);
INSERT INTO `user` VALUES ('042522', '586591', '郑宇宁', '7692130911', 920);
INSERT INTO `user` VALUES ('299463', '417866', '孟安琪', '19458801779', 921);
INSERT INTO `user` VALUES ('527910', '537796', '马杰宏', '17586056029', 922);
INSERT INTO `user` VALUES ('706551', '459711', '莫岚', '16443726706', 923);
INSERT INTO `user` VALUES ('632601', '838859', '廖秀英', '13956747359', 924);
INSERT INTO `user` VALUES ('080070', '670122', '向杰宏', '16979282605', 925);
INSERT INTO `user` VALUES ('495332', '287257', '贺震南', '18512276941', 926);
INSERT INTO `user` VALUES ('415741', '218285', '杨子异', '14807491848', 927);
INSERT INTO `user` VALUES ('228537', '337008', '蔡睿', '16642711913', 928);
INSERT INTO `user` VALUES ('558024', '716751', '侯睿', '2810233430', 929);
INSERT INTO `user` VALUES ('937972', '999167', '杨晓明', '15900902898', 930);
INSERT INTO `user` VALUES ('061121', '490260', '高嘉伦', '15021941238', 931);
INSERT INTO `user` VALUES ('475641', '033085', '谢秀英', '2140650853', 932);
INSERT INTO `user` VALUES ('281918', '304998', '苏子韬', '14188426632', 933);
INSERT INTO `user` VALUES ('178871', '682225', '谭璐', '14774770642', 934);
INSERT INTO `user` VALUES ('086329', '056276', '钟安琪', '19911226757', 935);
INSERT INTO `user` VALUES ('244711', '444455', '曹晓明', '1070691708', 936);
INSERT INTO `user` VALUES ('366133', '705752', '莫岚', '289901067', 937);
INSERT INTO `user` VALUES ('891087', '204773', '谭云熙', '14916977775', 938);
INSERT INTO `user` VALUES ('197041', '495114', '罗嘉伦', '7693901740', 939);
INSERT INTO `user` VALUES ('741877', '989208', '沈杰宏', '202207267', 940);
INSERT INTO `user` VALUES ('465150', '698731', '姚杰宏', '15756829828', 941);
INSERT INTO `user` VALUES ('147418', '890328', '李璐', '16995757840', 942);
INSERT INTO `user` VALUES ('627882', '539440', '潘睿', '18965006482', 943);
INSERT INTO `user` VALUES ('060198', '760210', '谭睿', '15005877172', 944);
INSERT INTO `user` VALUES ('044920', '789509', '魏璐', '76908573467', 945);
INSERT INTO `user` VALUES ('162015', '574277', '蒋云熙', '13879842460', 946);
INSERT INTO `user` VALUES ('309975', '276354', '金嘉伦', '16461392737', 947);
INSERT INTO `user` VALUES ('064242', '509627', '谭秀英', '19275969534', 948);
INSERT INTO `user` VALUES ('149550', '229721', '薛致远', '19243965610', 949);
INSERT INTO `user` VALUES ('406616', '509488', '蔡璐', '13692445918', 950);
INSERT INTO `user` VALUES ('313124', '472225', '孙子异', '19596073852', 951);
INSERT INTO `user` VALUES ('607118', '680820', '萧子韬', '14734691053', 952);
INSERT INTO `user` VALUES ('426617', '818561', '袁宇宁', '2179486724', 953);
INSERT INTO `user` VALUES ('260954', '970049', '罗云熙', '14084910077', 954);
INSERT INTO `user` VALUES ('682758', '948368', '谭震南', '17219852688', 955);
INSERT INTO `user` VALUES ('818658', '527344', '朱嘉伦', '19144613102', 956);
INSERT INTO `user` VALUES ('734394', '584523', '雷璐', '76064101347', 957);
INSERT INTO `user` VALUES ('958462', '829506', '潘云熙', '13704960763', 958);
INSERT INTO `user` VALUES ('049480', '646554', '熊璐', '76098112583', 959);
INSERT INTO `user` VALUES ('912331', '689413', '周晓明', '16577263442', 960);
INSERT INTO `user` VALUES ('859558', '360109', '林致远', '2072936109', 961);
INSERT INTO `user` VALUES ('021149', '083515', '顾杰宏', '289959023', 962);
INSERT INTO `user` VALUES ('374404', '597084', '魏子韬', '104221574', 963);
INSERT INTO `user` VALUES ('452893', '210063', '魏岚', '7551649422', 964);
INSERT INTO `user` VALUES ('350950', '345068', '唐震南', '75521433947', 965);
INSERT INTO `user` VALUES ('989532', '558611', '张云熙', '2055286258', 966);
INSERT INTO `user` VALUES ('086935', '614958', '秦云熙', '211804102', 967);
INSERT INTO `user` VALUES ('283684', '494759', '马云熙', '76038377253', 968);
INSERT INTO `user` VALUES ('506725', '092925', '汪杰宏', '15099995918', 969);
INSERT INTO `user` VALUES ('736402', '978573', '卢詩涵', '76023887383', 970);
INSERT INTO `user` VALUES ('768950', '281778', '杨致远', '19539530458', 971);
INSERT INTO `user` VALUES ('173626', '286592', '蒋安琪', '14633867677', 972);
INSERT INTO `user` VALUES ('701383', '092390', '谭嘉伦', '18187893905', 973);
INSERT INTO `user` VALUES ('828576', '870553', '朱秀英', '1039783966', 974);
INSERT INTO `user` VALUES ('978561', '749351', '夏杰宏', '1087046175', 975);
INSERT INTO `user` VALUES ('658056', '982856', '黎岚', '16272139787', 976);
INSERT INTO `user` VALUES ('805621', '809221', '冯杰宏', '14861096086', 977);
INSERT INTO `user` VALUES ('966675', '021465', '范璐', '18494635267', 978);
INSERT INTO `user` VALUES ('017857', '681592', '黎嘉伦', '2817859335', 979);
INSERT INTO `user` VALUES ('864630', '527968', '孔秀英', '75592866871', 980);
INSERT INTO `user` VALUES ('766825', '123397', '邓睿', '15911726829', 981);
INSERT INTO `user` VALUES ('155810', '802151', '余安琪', '2142865661', 982);
INSERT INTO `user` VALUES ('574154', '748276', '林岚', '75531072340', 983);
INSERT INTO `user` VALUES ('378237', '058725', '方晓明', '76933822867', 984);
INSERT INTO `user` VALUES ('869628', '293310', '秦震南', '7693646174', 985);
INSERT INTO `user` VALUES ('993942', '270082', '周璐', '13879718167', 986);
INSERT INTO `user` VALUES ('734447', '711745', '阎震南', '19346248053', 987);
INSERT INTO `user` VALUES ('107190', '945930', '马晓明', '7558769935', 988);
INSERT INTO `user` VALUES ('057120', '827476', '严岚', '2038043154', 989);
INSERT INTO `user` VALUES ('983963', '101503', '石詩涵', '18043102888', 990);
INSERT INTO `user` VALUES ('505813', '048318', '姜子异', '17638954452', 991);
INSERT INTO `user` VALUES ('458938', '437174', '韦宇宁', '2047003328', 992);
INSERT INTO `user` VALUES ('688336', '870125', '崔睿', '13151715812', 993);
INSERT INTO `user` VALUES ('929733', '303592', '孙震南', '2878763689', 994);
INSERT INTO `user` VALUES ('484829', '737103', '黎震南', '281267256', 995);
INSERT INTO `user` VALUES ('183952', '497935', '徐子异', '2117565793', 996);
INSERT INTO `user` VALUES ('772372', '701063', '程秀英', '16354232706', 997);
INSERT INTO `user` VALUES ('562619', '155316', '严杰宏', '16997398924', 998);
INSERT INTO `user` VALUES ('326967', '012370', '傅杰宏', '18035535217', 999);
INSERT INTO `user` VALUES ('357997', '687000', '毛詩涵', '18770072659', 1000);
INSERT INTO `user` VALUES ('583152', '399607', '贾嘉伦', '18384915402', 1001);
INSERT INTO `user` VALUES ('595845', '644588', '董嘉伦', '17427349337', 1002);
INSERT INTO `user` VALUES ('951409', '897251', '汤岚', '17821510213', 1003);
INSERT INTO `user` VALUES ('993573', '997218', '沈杰宏', '13692565041', 1004);
INSERT INTO `user` VALUES ('244704', '693768', '蒋岚', '7698169573', 1005);
INSERT INTO `user` VALUES ('871273', '109657', '潘晓明', '15945313349', 1006);
INSERT INTO `user` VALUES ('119206', '686338', '傅晓明', '1080214736', 1007);
INSERT INTO `user` VALUES ('476221', '118783', '刘睿', '1030612109', 1008);
INSERT INTO `user` VALUES ('978761', '472922', '韩秀英', '17501289433', 1009);
INSERT INTO `user` VALUES ('661514', '798242', '冯震南', '16233283210', 1010);
INSERT INTO `user` VALUES ('905961', '974000', '武安琪', '7605980397', 1011);
INSERT INTO `user` VALUES ('666402', '419747', '杨宇宁', '7693028353', 1012);
INSERT INTO `user` VALUES ('961572', '470621', '傅宇宁', '2843471626', 1013);
INSERT INTO `user` VALUES ('536305', '828086', '阎嘉伦', '2144932668', 1014);
INSERT INTO `user` VALUES ('329693', '770584', '曹子韬', '17170373083', 1015);
INSERT INTO `user` VALUES ('371989', '978405', '曹安琪', '18612343425', 1016);
INSERT INTO `user` VALUES ('952706', '678513', '马安琪', '18964856772', 1017);
INSERT INTO `user` VALUES ('122614', '373731', '曾子异', '16692958618', 1018);
INSERT INTO `user` VALUES ('641772', '692007', '夏子韬', '15652522408', 1019);
INSERT INTO `user` VALUES ('417145', '210818', '郭詩涵', '13488521713', 1020);
INSERT INTO `user` VALUES ('027474', '186608', '梁秀英', '18429783623', 1021);
INSERT INTO `user` VALUES ('713571', '607708', '金睿', '14905478593', 1022);
INSERT INTO `user` VALUES ('921456', '990871', '萧子韬', '13664448921', 1023);
INSERT INTO `user` VALUES ('732812', '977808', '袁睿', '14818244450', 1024);
INSERT INTO `user` VALUES ('256772', '071375', '侯秀英', '13701338391', 1025);
INSERT INTO `user` VALUES ('851010', '485178', '雷致远', '14341888963', 1026);
INSERT INTO `user` VALUES ('564827', '189343', '姜璐', '7557665731', 1027);
INSERT INTO `user` VALUES ('722932', '680029', '韩子韬', '14990354976', 1028);
INSERT INTO `user` VALUES ('524011', '787618', '阎子韬', '7554995078', 1029);
INSERT INTO `user` VALUES ('774746', '091865', '姜詩涵', '15982217129', 1030);
INSERT INTO `user` VALUES ('112060', '652384', '莫子异', '15198724466', 1031);
INSERT INTO `user` VALUES ('681543', '605472', '孙嘉伦', '14961091924', 1032);
INSERT INTO `user` VALUES ('622718', '602113', '杨安琪', '218663234', 1033);
INSERT INTO `user` VALUES ('518165', '795223', '高震南', '7607837578', 1034);
INSERT INTO `user` VALUES ('066156', '971293', '范睿', '2026667996', 1035);
INSERT INTO `user` VALUES ('646898', '287048', '顾云熙', '18213593234', 1036);
INSERT INTO `user` VALUES ('018981', '660146', '侯璐', '7559569245', 1037);
INSERT INTO `user` VALUES ('497882', '505948', '黄晓明', '2827033377', 1038);
INSERT INTO `user` VALUES ('798452', '409207', '戴秀英', '7609261914', 1039);
INSERT INTO `user` VALUES ('619377', '077597', '陈岚', '7604463241', 1040);
INSERT INTO `user` VALUES ('648547', '777185', '钟詩涵', '7601653760', 1041);
INSERT INTO `user` VALUES ('505273', '279498', '周嘉伦', '106733840', 1042);
INSERT INTO `user` VALUES ('370728', '040406', '杨云熙', '15860024871', 1043);
INSERT INTO `user` VALUES ('912608', '014036', '吕璐', '18500118013', 1044);
INSERT INTO `user` VALUES ('105653', '590802', '侯秀英', '17556317600', 1045);
INSERT INTO `user` VALUES ('900651', '616996', '袁嘉伦', '201103682', 1046);
INSERT INTO `user` VALUES ('891580', '381252', '龚安琪', '19768057662', 1047);
INSERT INTO `user` VALUES ('322726', '225453', '薛宇宁', '2165422649', 1048);
INSERT INTO `user` VALUES ('605892', '543926', '顾子异', '76089092297', 1049);
INSERT INTO `user` VALUES ('783241', '124157', '廖秀英', '2160276275', 1050);

SET FOREIGN_KEY_CHECKS = 1;
