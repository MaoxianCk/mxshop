/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : mxshop

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-07 15:44:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `origin_price` double NOT NULL,
  `real_price` double DEFAULT NULL,
  `paid_price` double DEFAULT NULL,
  `paid_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '2019-06-07 14:41:25', null, '267', null, null, null, '1');
INSERT INTO `orders` VALUES ('2', '1', '2019-06-07 14:41:34', null, '267', null, null, null, '1');
INSERT INTO `orders` VALUES ('3', '1', '2019-06-07 14:41:59', null, '267', null, null, null, '1');
INSERT INTO `orders` VALUES ('4', '1', '2019-06-07 14:42:17', null, '267', null, null, null, '1');
INSERT INTO `orders` VALUES ('5', '1', '2019-06-07 14:43:04', null, '267', null, null, null, '1');
INSERT INTO `orders` VALUES ('6', '1', '2019-06-07 14:44:20', null, '267', null, null, null, '1');
INSERT INTO `orders` VALUES ('7', '1', '2019-06-07 14:45:25', null, '267', null, null, null, '1');
INSERT INTO `orders` VALUES ('8', '1', '2019-06-07 14:46:54', null, '267', null, null, null, '1');
INSERT INTO `orders` VALUES ('9', '1', '2019-06-07 14:47:20', null, '356', null, null, null, '1');
INSERT INTO `orders` VALUES ('10', '1', '2019-06-07 14:48:49', null, '356', null, null, null, '1');
INSERT INTO `orders` VALUES ('11', '1', '2019-06-07 14:49:14', null, '712', null, null, null, '1');
INSERT INTO `orders` VALUES ('12', '1', '2019-06-07 14:50:39', null, '712', null, null, null, '1');
INSERT INTO `orders` VALUES ('13', '1', '2019-06-07 15:36:23', null, '1864', null, null, null, '1');
INSERT INTO `orders` VALUES ('14', '1', '2019-06-07 15:36:42', null, '1508', null, null, null, '1');
INSERT INTO `orders` VALUES ('15', '1', '2019-06-07 15:37:04', null, '1508', null, null, null, '1');
INSERT INTO `orders` VALUES ('16', '1', '2019-06-07 15:42:24', null, '196', null, null, null, '1');

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES ('1', '1', '1', '3');
INSERT INTO `order_product` VALUES ('2', '2', '1', '3');
INSERT INTO `order_product` VALUES ('3', '3', '1', '3');
INSERT INTO `order_product` VALUES ('4', '4', '1', '3');
INSERT INTO `order_product` VALUES ('5', '5', '1', '3');
INSERT INTO `order_product` VALUES ('6', '6', '1', '3');
INSERT INTO `order_product` VALUES ('7', '7', '1', '3');
INSERT INTO `order_product` VALUES ('8', '8', '1', '3');
INSERT INTO `order_product` VALUES ('9', '9', '1', '4');
INSERT INTO `order_product` VALUES ('10', '10', '1', '4');
INSERT INTO `order_product` VALUES ('11', '15', '1', '5');
INSERT INTO `order_product` VALUES ('12', '15', '3', '3');
INSERT INTO `order_product` VALUES ('13', '15', '17', '3');
INSERT INTO `order_product` VALUES ('14', '15', '9', '1');
INSERT INTO `order_product` VALUES ('15', '16', '9', '4');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_classify_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `number` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0关闭 1正常',
  `content` text,
  `image` varchar(100) DEFAULT NULL,
  `big_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '1', '荣事达智能养生壶   1.8L 多功能自动断电煎药壶  煮茶壶YSH18F13', '89', '0', '1', '电热开水瓶    热水瓶材质：高硼硅玻璃  功率：800W  11段保温功能 易触控钢化面板', 'YSH18_S.jpg', 'YSH18_1.jpg');
INSERT INTO `product` VALUES ('2', '1', '荣事达便携式果汁机 轻巧便携 易清易洗 应急充电宝RZ-68V9', '84', '100', '1', '榨汁/搅拌/料理机类型：搅拌料理机 三档自由调速，高速破壁细腻无渣', '', '');
INSERT INTO `product` VALUES ('3', '1', '美的Midea落地风扇  落地立式两用一级能效 3档风速 FS40-18C', '239', '97', '1', '额定功率：40W   7.5H定时 静音送风 远程遥控  高精密电机，送风更稳定', 'FS40-18_s.jpg', 'FS40-18_1.jpg');
INSERT INTO `product` VALUES ('4', '1', 'ACA/北美电器烤面包机 家用早餐吐司机2片全自动多士炉 AT-P0802C', '158', '100', '1', '面包机材质：不锈钢   5档烧色选择  宽型设计 适用于多种面包片', 'AT-P0802C_s.jpg', 'AT-P0802C_1.jpg');
INSERT INTO `product` VALUES ('5', '1', '美的（Midea）电烤箱38L家用大容量多功能MG38CB-AA四层烤架', '339', '100', '1', '四层烤架      电烤箱容量：38L  热风循环加热更均匀  大容量家庭实用型', 'MG38CB-AA_s.jpg', 'MG38CB-AA_1.jpg');
INSERT INTO `product` VALUES ('6', '1', '苏泊尔 电磁炉SDHCB8E45', '229', '100', '1', '操作方式：触摸式    功率：2000W  8段火力调节 4D防水设计', 'SDHCB8E45_s.jpg', 'SDHCB8E45_1.jpg');
INSERT INTO `product` VALUES ('7', '1', 'Midea/美的 电压力锅双胆4.8L家用智能可预约电高压饭煲MY-YL5 ', '280', '100', '1', '家用智能 双釜灶 大屏大数显 多功能  适用人数：3-6人控制方式：电脑式 双胆功率：1000W', 'SDHCB8E45_s.jpg', 'MY-YL5_1.jpg');
INSERT INTO `product` VALUES ('8', '1', '宝家丽干湿吹三用大功率桶式商用家用吸尘器DC206', '245', '100', '1', '吸力噪音可调控；干湿吹三用   1200W大功率   多头替换 5重过滤 12L大容量', 'DC206_s.jpg', 'DC206_1.jpg');
INSERT INTO `product` VALUES ('9', '2', '坚果零食 手剥松子 45gx3袋', '49', '95', '1', '品牌：壳壳果  45克/袋  颗颗饱满、易剥 巴西松子 酥脆不油腻 色泽纯正 保质期240天', 'SBSZ_S.jpg', 'SBSZ_1.jpg');
INSERT INTO `product` VALUES ('10', '2', '新疆特产红枣大枣 若羌灰枣 肉厚核小 灰枣500g/袋', '31.9', '31', '1', '品牌：方家铺子  肉质厚实，核小皮薄  肉细绵密 色泽诱人', 'qrz_s.jpg', 'qrz_1.jpg');
INSERT INTO `product` VALUES ('11', '2', '坚果零食 开心果165gx3袋', '69.9', '100', '1', '香酥易剥满口脆，粒粒饱满  色泽诱人 保持期8个月', 'kxg_s.jpg', 'kxg_1.jpg');
INSERT INTO `product` VALUES ('12', '2', '华美 纸盒装蛋卷一盒260g', '11', '100', '1', '原产地广东  保质期12个月  ', 'HMDJ_1.jpg', 'HMDJ_S.jpg');
INSERT INTO `product` VALUES ('13', '2', '经典玫瑰饼 300g 礼袋 云南特产零食 传统糕点', '36', '100', '1', '自有3000亩食用玫瑰庄园 新鲜采摘，新鲜烤制  保质期30天  玫瑰花浓香润滑', 'MGB_s.jpg', 'MGB_1.jpg');
INSERT INTO `product` VALUES ('14', '2', '南国食品开心椰球100gX3盒', '21.9', '100', '1', '椰子味 芒果味 榴莲味 三种口味可选，软糯Q弹  口感甜蜜', 'KXYQ_s.jpg', 'KXYQ_1.jpg');
INSERT INTO `product` VALUES ('15', '2', '真心 手撕面包1000g×2箱', '59.9', '100', '1', '多款面包糕点可选  乳优面包720g×2箱   吐司面包720g×2箱  山药片60g×6包', 'SSMB_s.jpg', 'SSMB_1.jpg');
INSERT INTO `product` VALUES ('16', '2', '凉茶红豆龟苓膏果冻布丁', '16', '50', '1', '细嫩爽滑的龟苓膏，香甜软糯的红豆 Q弹甜蜜滋味', 'GDBD_s.jpg', 'GDBD_1.jpg');
INSERT INTO `product` VALUES ('17', '3', '阿芙精油口红', '99', '96', '1', '持久补水保湿滋润防干裂 不掉色润唇膏 滋润唇部，缓解干皮', 'FYKH_s.jpg', 'FYKH_1.jpg');
INSERT INTO `product` VALUES ('18', '3', '雅诗泉  补水保湿滋润护唇', '68', '55', '1', '淡化唇纹唇色  可以吃的唇部护理: 草莓提取物 牛油果 维生素E', 'YSQ_1.jpg', 'YSQ_s.jpg');
INSERT INTO `product` VALUES ('19', '3', '卡姿兰花漾嫩色胭脂腮红', '78', '100', '1', '塑造V脸必备 健康红润 提升气色 塑造V脸必备', 'KZL_s.jpg', 'KZL_1.jpg');
INSERT INTO `product` VALUES ('20', '3', '波斯顿正品男士传奇香水', '119', '15', '1', '清新舒爽 洁净植物淡香调  檀香、柏木、地中海辛香', 'CQXS_s.jpg', 'CQXS_1.jpg');
INSERT INTO `product` VALUES ('21', '3', 'Olay玉兰油多效修护霜50g', '129', '111', '1', '蕴含修护精华，帮助改善肤质，提亮肤色，紧致肌肤，保湿滋润，细致毛孔', 'YSQ_s.jpg', 'YSQ_1.jpg');
INSERT INTO `product` VALUES ('22', '3', '海润珍珠玻尿酸深层保湿霜50g', '48', '555', '1', '水解珍珠护肤元素，天然玻尿酸精华液更有效地解决肌肤问题', 'BSS_s.jpg', 'BSS_1.jpg');
INSERT INTO `product` VALUES ('23', '3', '丸美BB新肌明星BB霜40g', '103', '123', '1', '修颜遮瑕 润泽保湿   人参果提取物融合珍珠提取物，具有亮肤成分。', 'WMBBS_s.jpg ', 'WMBBS_1.jpg ');
INSERT INTO `product` VALUES ('24', '3', '形象美男士 洗面奶150克', '55', '123', '1', '洁面乳清爽洁净  炭泥吸附 温和控油不紧绷', 'XMN_s.jpg', 'XMN_1.jpg');

-- ----------------------------
-- Table structure for product_classify
-- ----------------------------
DROP TABLE IF EXISTS `product_classify`;
CREATE TABLE `product_classify` (
  `product_classify_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`product_classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_classify
-- ----------------------------
INSERT INTO `product_classify` VALUES ('1', '小家电');
INSERT INTO `product_classify` VALUES ('2', '休闲食品');
INSERT INTO `product_classify` VALUES ('3', '化妆品');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `role` tinyint(1) NOT NULL COMMENT '0管理员，1用户',
  `status` tinyint(1) NOT NULL COMMENT '0删除，1正常',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'maoxian', '$2y$10$mxUrQZrp5.m215Arb9fwm.3JjUcFBXVOPMC3e95F.p9LqGYZRkQu.', 'Maoxian', '2019-06-07 14:02:29', '2', '1');
INSERT INTO `user` VALUES ('2', 'aaa', '$2y$10$2lM.4SFIDFhmmIyY50MkkeHPsfQC7M8l4pAi.qU4KsrrJbpcDk3nq', '未命名2', '2019-06-07 14:10:55', '1', '1');
