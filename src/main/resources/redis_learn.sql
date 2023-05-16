/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : redis_learn

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 15/04/2021 21:39:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fabulous` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '商品1', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (2, '商品2', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (3, '商品3', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (4, '商品4', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (5, '商品5', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (6, '商品6', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (7, '商品7', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (8, '商品8', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (9, '商品9', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (10, '商品10', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (11, '商品11', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (12, '商品12', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (13, '商品13', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (14, '商品14', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');
INSERT INTO `product` VALUES (15, '商品15', 0, '2021-04-15 16:27:56', '2021-04-15 16:27:58');

-- ----------------------------
-- Table structure for user_pro_fabulous
-- ----------------------------
DROP TABLE IF EXISTS `user_pro_fabulous`;
CREATE TABLE `user_pro_fabulous`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(0) NULL DEFAULT NULL,
  `product_id` bigint(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL COMMENT '1点赞 0取消点赞',
  `num` int(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_pro_fabulous
-- ----------------------------
INSERT INTO `user_pro_fabulous` VALUES (1, 1, 7, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (2, 1, 4, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (3, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (4, 1, 9, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (5, 1, 6, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (6, 1, 7, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (7, 1, 11, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (8, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (9, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (10, 1, 7, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (11, 1, 6, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (12, 1, 8, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (13, 1, 11, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (14, 1, 11, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (15, 1, 5, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (16, 1, 2, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (17, 1, 7, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (18, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (19, 1, 14, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (20, 1, 2, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (21, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (22, 1, 3, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (23, 1, 10, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (24, 1, 15, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (25, 1, 2, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (26, 1, 9, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (27, 1, 14, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (28, 1, 1, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (29, 1, 6, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (30, 1, 10, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (31, 1, 11, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (32, 1, 1, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (33, 1, 15, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (34, 1, 6, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (35, 1, 4, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (36, 1, 10, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (37, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (38, 1, 4, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (39, 1, 2, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (40, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (41, 1, 10, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (42, 1, 5, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (43, 1, 3, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (44, 1, 5, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (45, 1, 4, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (46, 1, 4, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (47, 1, 6, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (48, 1, 3, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (49, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (50, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (51, 1, 11, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (52, 1, 11, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (53, 1, 8, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (54, 1, 1, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (55, 1, 4, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (56, 1, 13, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (57, 1, 10, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (58, 1, 15, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (59, 1, 6, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (60, 1, 9, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (61, 1, 4, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (62, 1, 8, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (63, 1, 7, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (64, 1, 12, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (65, 1, 6, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (66, 1, 14, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (67, 1, 8, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (68, 1, 4, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (69, 1, 9, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (70, 1, 11, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (71, 1, 15, 1, 1, '2021-04-15 21:25:48', '2021-04-15 21:25:48');
INSERT INTO `user_pro_fabulous` VALUES (72, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (73, 1, 2, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (74, 1, 8, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (75, 1, 6, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (76, 1, 8, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (77, 1, 4, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (78, 1, 9, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (79, 1, 3, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (80, 1, 12, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (81, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (82, 1, 11, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (83, 1, 14, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (84, 1, 6, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (85, 1, 6, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (86, 1, 4, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (87, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (88, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (89, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (90, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (91, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (92, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (93, 1, 10, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (94, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (95, 1, 12, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (96, 1, 4, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (97, 1, 4, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (98, 1, 9, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (99, 1, 2, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (100, 1, 4, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (101, 1, 10, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (102, 1, 7, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (103, 1, 8, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (104, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (105, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (106, 1, 4, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (107, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (108, 1, 14, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (109, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (110, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (111, 1, 2, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (112, 1, 11, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (113, 1, 14, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (114, 1, 10, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (115, 1, 3, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (116, 1, 14, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (117, 1, 9, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (118, 1, 12, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (119, 1, 12, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (120, 1, 3, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (121, 1, 12, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (122, 1, 3, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (123, 1, 11, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (124, 1, 9, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (125, 1, 10, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (126, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (127, 1, 7, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (128, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (129, 1, 11, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (130, 1, 14, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (131, 1, 6, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (132, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (133, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (134, 1, 9, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (135, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (136, 1, 6, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (137, 1, 4, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (138, 1, 8, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (139, 1, 7, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (140, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (141, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (142, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (143, 1, 15, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (144, 1, 14, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (145, 1, 8, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (146, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (147, 1, 3, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (148, 1, 8, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (149, 1, 10, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (150, 1, 10, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (151, 1, 2, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (152, 1, 2, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (153, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (154, 1, 12, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (155, 1, 9, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (156, 1, 1, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (157, 1, 14, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (158, 1, 12, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (159, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (160, 1, 9, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (161, 1, 12, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (162, 1, 6, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (163, 1, 10, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (164, 1, 4, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (165, 1, 14, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (166, 1, 6, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (167, 1, 13, 1, 1, '2021-04-15 21:25:49', '2021-04-15 21:25:49');
INSERT INTO `user_pro_fabulous` VALUES (168, 1, 5, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (169, 1, 12, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (170, 1, 4, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (171, 1, 5, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (172, 1, 12, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (173, 1, 11, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (174, 1, 3, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (175, 1, 1, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (176, 1, 14, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (177, 1, 11, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (178, 1, 11, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (179, 1, 10, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (180, 1, 2, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (181, 1, 13, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (182, 1, 10, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (183, 1, 12, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (184, 1, 1, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (185, 1, 13, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (186, 1, 4, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (187, 1, 15, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (188, 1, 11, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (189, 1, 4, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (190, 1, 13, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (191, 1, 2, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (192, 1, 7, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (193, 1, 12, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (194, 1, 4, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (195, 1, 14, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (196, 1, 6, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (197, 1, 9, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (198, 1, 13, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (199, 1, 10, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');
INSERT INTO `user_pro_fabulous` VALUES (200, 1, 10, 1, 1, '2021-04-15 21:25:50', '2021-04-15 21:25:50');

SET FOREIGN_KEY_CHECKS = 1;
