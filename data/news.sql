/*
 Navicat Premium Data Transfer

 Source Server         : lin
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : news

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 17/08/2023 22:06:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adv
-- ----------------------------
DROP TABLE IF EXISTS `adv`;
CREATE TABLE `adv`  (
  `advId` int(11) NOT NULL AUTO_INCREMENT,
  `merchant` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `advContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `advTitle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(11) NULL DEFAULT NULL,
  `news_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `static` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`advId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adv
-- ----------------------------
INSERT INTO `adv` VALUES (2, '商家B', '广告内容x', '广告标题x', 3, '5G技术发展趋势', NULL);
INSERT INTO `adv` VALUES (3, '商家C', '广告内容3', '广告标题3', 3, '5G技术发展趋势', NULL);
INSERT INTO `adv` VALUES (4, '商家D', '广告内容4', '广告标题4', 3, '5G技术发展趋势', NULL);
INSERT INTO `adv` VALUES (5, '商家E', '广告内容5', '就卡死的', 3, '5G技术发展趋势', NULL);
INSERT INTO `adv` VALUES (6, '六百', '我带的哈哈的垃圾德拉斯卡几大势力扩大', '大师傅', 3, '5G技术发展趋势', NULL);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `createTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '体育', '2023-05-29 14:15:37');
INSERT INTO `class` VALUES (2, '经济', '2023-05-29 14:15:37');
INSERT INTO `class` VALUES (3, '科技', '2023-05-29 14:15:37');
INSERT INTO `class` VALUES (4, '文艺', '2023-05-29 14:15:37');
INSERT INTO `class` VALUES (5, '美食', '2023-05-29 14:15:37');
INSERT INTO `class` VALUES (6, '娱乐', '2023-05-31 22:24:31');
INSERT INTO `class` VALUES (7, '环保', '2023-06-01 00:00:00');
INSERT INTO `class` VALUES (8, '时政', '2023-05-30 00:00:00');
INSERT INTO `class` VALUES (9, '军事', '2023-05-28 00:00:00');
INSERT INTO `class` VALUES (10, '社会', '2023-05-26 00:00:00');
INSERT INTO `class` VALUES (11, '教育', '2023-06-16 16:03:53');
INSERT INTO `class` VALUES (12, '财经', '2023-06-16 21:34:04');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1001', '123456', '张三');
INSERT INTO `manager` VALUES ('1002', '123456', '李四');
INSERT INTO `manager` VALUES ('1003', '123456', '王五');
INSERT INTO `manager` VALUES ('1004', '123456', '赵六');
INSERT INTO `manager` VALUES ('1005', '123456', '钱七');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `pageViews` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`news_id`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (4, '名家书法展', '文艺日报', '赵说大话', '2023-05-29 14:00:00', 8, '45', '科学家在离地球很远的地方发现了一颗类地行星！', '时政');
INSERT INTO `news` VALUES (7, '太阳系外发现类地行星', '科技新闻', '张三', '2023-06-01 00:00:00', 3, '40000', '科学家在离地球很远的地方发现了一颗类地行星！', '科技');
INSERT INTO `news` VALUES (8, '地球宣布进入气候紧急状态', '环保新闻', '李四', '2023-05-30 00:00:00', 7, '50000', '由于全球气候变化带来的威胁，地球宣布进入气候紧急状态！', '环保');
INSERT INTO `news` VALUES (9, '中国高铁又创新纪录', '财经新闻', '王五', '2023-05-28 00:00:00', 12, '55000', '中国高铁又创新纪录，本次运行速度达到XXX公里每小时！', '财经');
INSERT INTO `news` VALUES (10, '2023世界杯预选赛开战', '体育新闻', '赵六', '2023-05-26 00:00:00', 1, '60000', '2023世界杯预选赛开始了！谁将是冠军呢？', '体育');
INSERT INTO `news` VALUES (11, '新冠病毒疫情得到有效控制', '时政新闻', '张三', '2023-05-24 00:00:00', 1, '70000', '经过全球各国的努力，新冠疫情得到有效控制！', '体育');
INSERT INTO `news` VALUES (12, '我国首个航空母舰正式服役', '军事新闻', '李四', '2023-05-22 00:00:00', 9, '80000', '我国首个航空母舰正式服役，国防实力进一步提升！', '军事');
INSERT INTO `news` VALUES (13, '股市全面下跌', '财经新闻', '王五', '2023-05-20 00:00:00', 12, '90000', '股市全面下跌，投资者应该如何应对？', '财经');
INSERT INTO `news` VALUES (14, '世界最大规模的太阳能发电站开始运营', '环保新闻', '赵六', '2023-05-18 00:00:00', 7, '100000', '位于某国的世界最大规模的太阳能发电站开始正式运营，将给当地带来巨大的经济效益和社会效益！', '环保');
INSERT INTO `news` VALUES (15, '全国高考结束', '教育新闻', '张三', '2023-05-16 00:00:00', 11, '110000', '全国高考结束，祝所有考生都能取得好成绩！', '教育');
INSERT INTO `news` VALUES (16, '中国火星计划成功发射', '科技新闻', '李四', '2023-05-14 00:00:00', 3, '120000', '中国火星计划成功发射，将会进行一系列科学研究！', '科技');
INSERT INTO `news` VALUES (17, '一场大火造成20人伤亡', '社会新闻', '王五', '2023-05-12 00:00:00', 10, '130000', '某市一场大火造成20人伤亡，警方正在调查起火原因！', '社会');
INSERT INTO `news` VALUES (21, 'dsada', NULL, 'dsadas', '2023-06-01 21:14:20', 1, '0', 'dsadsa', '体育');

SET FOREIGN_KEY_CHECKS = 1;
