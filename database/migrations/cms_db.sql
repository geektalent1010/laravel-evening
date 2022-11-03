/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : cms_db

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 02/11/2022 15:47:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `extra_admins_column1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '追加カラム1',
  `extra_admins_column2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '追加カラム2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admins_userid_unique`(`userid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, NULL, 'admin001', NULL, '$2y$10$tBedEThMH3tCEDyjWPIGqOo4tSyj9fNqhjVLiWpAKqLYHpfXU.7Tm', NULL, NULL, NULL, '2022-11-02 22:21:03', '2022-11-02 22:21:03');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for m_billdepart
-- ----------------------------
DROP TABLE IF EXISTS `m_billdepart`;
CREATE TABLE `m_billdepart`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `billdepart_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billdepart_short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_billdepart
-- ----------------------------
INSERT INTO `m_billdepart` VALUES (1, 'サンフェニックス株式会社', 'SPX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_billdepart` VALUES (2, '株式会社 カーディールページ', 'カーディール', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_billdepart` VALUES (3, 'サンフェニックス株式会社 関西支店', 'SPX(関西）', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_billdepart` VALUES (4, '日本トランス', '日トラ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_billdepart` VALUES (5, 'カナロアシッピング株式会社', 'カナロア', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_billdepart` VALUES (6, 'サンフェニックス株式会社 横浜支店', 'SPX(横浜）', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_billdepart` VALUES (7, '藤原運輸株式会社', '藤原', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_billdepart` VALUES (8, '株式会社ビィ・フォアード', '', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_cartype
-- ----------------------------
DROP TABLE IF EXISTS `m_cartype`;
CREATE TABLE `m_cartype`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `maker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cartype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 551 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_cartype
-- ----------------------------
INSERT INTO `m_cartype` VALUES (1, 'ALFA ROMEO', 'Giulietta', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (2, 'AUDI', 'A1', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (3, 'AUDI', 'A3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (4, 'AUDI', 'A4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (5, 'AUDI', 'A5', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (6, 'AUDI', 'A6', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (7, 'AUDI', 'A6 Allroad Quattro', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (8, 'AUDI', 'Coupe', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (9, 'AUDI', 'Q3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (10, 'AUDI', 'Q5', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (11, 'AUDI', 'Q7', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (12, 'AUDI', 'S3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (13, 'AUDI', 'S4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (14, 'AUDI', 'TT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (15, 'BENTLEY', 'Arnage', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (16, 'BMW', '1 Series', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (17, 'BMW', '2 Series', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (18, 'BMW', '3 Series', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (19, 'BMW', '5 Series', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (20, 'BMW', '6 Series', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (21, 'BMW', '7 Series', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (22, 'BMW', 'Alpina', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (23, 'BMW', 'BMW Others', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (24, 'BMW', 'I3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (25, 'BMW', 'M3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (26, 'BMW', 'MINI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (27, 'BMW', 'MINI Clubman', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (28, 'BMW', 'X1', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (29, 'BMW', 'X3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (30, 'BMW', 'X4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (31, 'BMW', 'X5', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (32, 'BMW', 'X6', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (33, 'BMW', 'Z4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (34, 'CADILLAC', 'DEVille', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (35, 'CADILLAC', 'Escalade', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (36, 'CHEVROLET', 'Captiva', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (37, 'CHEVROLET', 'Silverado', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (38, 'CHEVROLET', 'Tahoe', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (39, 'CHEVROLET', 'TrailBlazer', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (40, 'CHRYSLER', '300C', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (41, 'CHRYSLER', 'Ypsilon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (42, 'CITROEN', 'C3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (43, 'CITROEN', 'DS4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (44, 'DAIHATSU', 'Atrai Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (45, 'DAIHATSU', 'Be-Go', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (46, 'DAIHATSU', 'Boon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (47, 'DAIHATSU', 'Boon Luminas', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (48, 'DAIHATSU', 'Coo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (49, 'DAIHATSU', 'Delta Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (50, 'DAIHATSU', 'Hijet Cargo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (51, 'DAIHATSU', 'Hijet Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (52, 'DAIHATSU', 'Hijet Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (53, 'DAIHATSU', 'Midget II', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (54, 'DAIHATSU', 'Mira', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (55, 'DAIHATSU', 'Mira Custom', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (56, 'DAIHATSU', 'Mira ES', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (57, 'DAIHATSU', 'Miragino', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (58, 'DAIHATSU', 'Move', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (59, 'DAIHATSU', 'Move Conte', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (60, 'DAIHATSU', 'Move Custom', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (61, 'DAIHATSU', 'Tanto', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (62, 'DAIHATSU', 'Terios', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (63, 'DAIHATSU', 'Terios Kid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (64, 'Dodge', 'Caliber', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (65, 'Dodge', 'Charger', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (66, 'Dodge', 'Nitro', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (67, 'Dodge', 'RAM', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (68, 'Fiat', 'Panda', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (69, 'Fiat', 'Punto', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (70, 'Fiat', 'Punto Evo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (71, 'FORD', 'Escape', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (72, 'FORD', 'Explorer', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (73, 'FORD', 'Kuga', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (74, 'GMC', 'Yukon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (75, 'HINO', 'Dutro', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (76, 'HINO', 'Liesse II', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (77, 'HINO', 'Profia', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (78, 'HINO', 'Ranger', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (79, 'HINO', 'Ranger2', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (80, 'HONDA', 'Accord', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (81, 'HONDA', 'Accord Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (82, 'HONDA', 'Accord Tourer', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (83, 'HONDA', 'Accord Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (84, 'HONDA', 'Acty Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (85, 'HONDA', 'Acty Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (86, 'HONDA', 'Airwave', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (87, 'HONDA', 'Beat', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (88, 'HONDA', 'Civic', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (89, 'HONDA', 'Civic Ferio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (90, 'HONDA', 'Civic Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (91, 'HONDA', 'Crossroad', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (92, 'HONDA', 'CR-V', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (93, 'HONDA', 'CR-Z', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (94, 'HONDA', 'Element', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (95, 'HONDA', 'Elysion', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (96, 'HONDA', 'Fit', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (97, 'HONDA', 'Fit Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (98, 'HONDA', 'Fit Shuttle', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (99, 'HONDA', 'Fit Shuttle Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (100, 'HONDA', 'Freed', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (101, 'HONDA', 'Freed Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (102, 'HONDA', 'Freed Spike', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (103, 'HONDA', 'Grace', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (104, 'HONDA', 'HR-V', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (105, 'HONDA', 'Insight', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (106, 'HONDA', 'Insight Exclusive', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (107, 'HONDA', 'Inspire', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (108, 'HONDA', 'Integra', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (109, 'HONDA', 'Life', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (110, 'HONDA', 'MDX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (111, 'HONDA', 'N BOX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (112, 'HONDA', 'N BOX CUSTOM', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (113, 'HONDA', 'N BOX PLUS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (114, 'HONDA', 'N-ONE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (115, 'HONDA', 'N-WGN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (116, 'HONDA', 'Odyssey', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (117, 'HONDA', 'Shuttle', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (118, 'HONDA', 'Step WGN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (119, 'HONDA', 'Stream', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (120, 'HONDA', 'Street', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (121, 'HONDA', 'Today', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (122, 'HONDA', 'Vezel', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (123, 'HONDA', 'X4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (124, 'HONDA', 'Zest Spark', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (125, 'HONDA OF U.K', 'Civic', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (126, 'HUMMER', 'H2', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (127, 'HUMMER', 'H3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (128, 'HYUNDAI', 'Grand Starex', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (129, 'HYUNDAI', 'Santa Fe', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (130, 'HYUNDAI', 'Sonata', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (131, 'Infiniti', 'FX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (132, 'Infiniti', 'QX56', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (133, 'ISUZU', 'Bighorn', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (134, 'ISUZU', 'Como', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (135, 'ISUZU', 'Elf Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (136, 'ISUZU', 'Forward', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (137, 'ISUZU', 'Journey Bus', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (138, 'ISUZU', 'Juston', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (139, 'ISUZU', 'MU WIZARD', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (140, 'ISUZU', 'Vehicross', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (141, 'JAGUAR', 'XF', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (142, 'JAGUAR', 'XJ Series', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (143, 'JEEP', 'Compass', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (144, 'JEEP', 'Grand Cherokee', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (145, 'JEEP', 'Patriot', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (146, 'JEEP', 'Wrangler', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (147, 'KAWASAKI', 'KAWASAKI Others', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (148, 'LAND ROVER', 'Defender', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (149, 'LAND ROVER', 'Discovery 3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (150, 'LAND ROVER', 'DISCOVERY SPORT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (151, 'LAND ROVER', 'Freelander 2', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (152, 'LAND ROVER', 'Range Rover', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (153, 'LAND ROVER', 'Range Rover Evoque', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (154, 'LAND ROVER', 'Range Rover Sport', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (155, 'LEXUS', 'CT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (156, 'LEXUS', 'GS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (157, 'LEXUS', 'GS Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (158, 'LEXUS', 'HS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (159, 'LEXUS', 'IS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (160, 'LEXUS', 'LEXUS Others', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (161, 'LEXUS', 'LS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (162, 'LEXUS', 'LX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (163, 'LEXUS', 'NX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (164, 'LEXUS', 'RX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (165, 'Lincoln', 'MKX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (166, 'Lincoln', 'Navigator', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (167, 'MAN', 'TGA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (168, 'MAZDA', 'Atenza', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (169, 'MAZDA', 'Atenza Sport', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (170, 'MAZDA', 'Atenza Sport Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (171, 'MAZDA', 'Atenza Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (172, 'MAZDA', 'Axela', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (173, 'MAZDA', 'Axela Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (174, 'MAZDA', 'Axela Sport', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (175, 'MAZDA', 'AZ-Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (176, 'MAZDA', 'Biante', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (177, 'MAZDA', 'Bongo Brawny Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (178, 'MAZDA', 'Bongo Brawny Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (179, 'MAZDA', 'Bongo Friendee', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (180, 'MAZDA', 'Bongo Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (181, 'MAZDA', 'Bongo Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (182, 'MAZDA', 'Carol', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (183, 'MAZDA', 'CX-3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (184, 'MAZDA', 'CX-5', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (185, 'MAZDA', 'CX-7', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (186, 'MAZDA', 'Demio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (187, 'MAZDA', 'Enfini RX-7', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (188, 'MAZDA', 'Eunos Roadster', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (189, 'MAZDA', 'Familia Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (190, 'MAZDA', 'Flair', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (191, 'MAZDA', 'Mazda6', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (192, 'MAZDA', 'MPV', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (193, 'MAZDA', 'Premacy', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (194, 'MAZDA', 'Roadster', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (195, 'MAZDA', 'RX-7', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (196, 'MAZDA', 'Scrum Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (197, 'MAZDA', 'Scrum Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (198, 'MAZDA', 'Titan', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (199, 'MAZDA', 'Titan Dash', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (200, 'MAZDA', 'Tribute', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (201, 'MAZDA', 'Verisa', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (202, 'MERCEDES-BENZ', 'A-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (203, 'MERCEDES-BENZ', 'B-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (204, 'MERCEDES-BENZ', 'C-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (205, 'MERCEDES-BENZ', 'CLA-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (206, 'MERCEDES-BENZ', 'CLK-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (207, 'MERCEDES-BENZ', 'Cls-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (208, 'MERCEDES-BENZ', 'E-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (209, 'MERCEDES-BENZ', 'G-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (210, 'MERCEDES-BENZ', 'GLA-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (211, 'MERCEDES-BENZ', 'GL-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (212, 'MERCEDES-BENZ', 'GLE-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (213, 'MERCEDES-BENZ', 'M-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (214, 'MERCEDES-BENZ', 'S-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (215, 'MERCEDES-BENZ', 'SL-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (216, 'MERCEDES-BENZ', 'V-Class', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (217, 'MERCEDES-BENZ', 'Viano', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (218, 'MITSUBISHI', 'Aero Midi', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (219, 'MITSUBISHI', 'Airtrek', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (220, 'MITSUBISHI', 'Bravo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (221, 'MITSUBISHI', 'Canter', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (222, 'MITSUBISHI', 'Canter Guts', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (223, 'MITSUBISHI', 'Colt', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (224, 'MITSUBISHI', 'Coltplus', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (225, 'MITSUBISHI', 'Delica Cargo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (226, 'MITSUBISHI', 'Delica D2', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (227, 'MITSUBISHI', 'Delica D3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (228, 'MITSUBISHI', 'Delica D5', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (229, 'MITSUBISHI', 'Delica Spacegear', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (230, 'MITSUBISHI', 'Delica Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (231, 'MITSUBISHI', 'Delica Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (232, 'MITSUBISHI', 'Diamante Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (233, 'MITSUBISHI', 'ek Custom', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (234, 'MITSUBISHI', 'eK Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (235, 'MITSUBISHI', 'Fighter', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (236, 'MITSUBISHI', 'Fighter Mignon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (237, 'MITSUBISHI', 'FTO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (238, 'MITSUBISHI', 'Galant Fortis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (239, 'MITSUBISHI', 'Great', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (240, 'MITSUBISHI', 'GTO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (241, 'MITSUBISHI', 'Lancer Cargo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (242, 'MITSUBISHI', 'Lancer Cedia Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (243, 'MITSUBISHI', 'Lancer Evolution', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (244, 'MITSUBISHI', 'Lancer Evolution VIII', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (245, 'MITSUBISHI', 'Legnum', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (246, 'MITSUBISHI', 'Minicab Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (247, 'MITSUBISHI', 'Minicab Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (248, 'MITSUBISHI', 'Mirage', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (249, 'MITSUBISHI', 'Outlander', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (250, 'MITSUBISHI', 'Outlander PHEV', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (251, 'MITSUBISHI', 'Pajero', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (252, 'MITSUBISHI', 'Pajero iO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (253, 'MITSUBISHI', 'Pajero Jr', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (254, 'MITSUBISHI', 'Pajero Mini', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (255, 'MITSUBISHI', 'Rosa', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (256, 'MITSUBISHI', 'RVR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (257, 'MITSUBISHI', 'Super Great', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (258, 'MITSUBISHI', 'Triton', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (259, 'NISSAN', '180SX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (260, 'NISSAN', 'AD EXPERT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (261, 'NISSAN', 'Ad Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (262, 'NISSAN', 'Atlas', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (263, 'NISSAN', 'Avenir', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (264, 'NISSAN', 'Bassara', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (265, 'NISSAN', 'Bluebird Sylphy', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (266, 'NISSAN', 'Caravan Bus', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (267, 'NISSAN', 'Caravan Coach', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (268, 'NISSAN', 'Caravan Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (269, 'NISSAN', 'Caravan Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (270, 'NISSAN', 'Cedric Sedan', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (271, 'NISSAN', 'Cima', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (272, 'NISSAN', 'Cima Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (273, 'NISSAN', 'Civilian Bus', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (274, 'NISSAN', 'Clipper Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (275, 'NISSAN', 'Clipper Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (276, 'NISSAN', 'Condor', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (277, 'NISSAN', 'Cube', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (278, 'NISSAN', 'Datsun Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (279, 'NISSAN', 'Dayz', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (280, 'NISSAN', 'Dualis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (281, 'NISSAN', 'Elgrand', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (282, 'NISSAN', 'Fairlady', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (283, 'NISSAN', 'Fairlady Z', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (284, 'NISSAN', 'Fuga', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (285, 'NISSAN', 'Fuga Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (286, 'NISSAN', 'Gloria(sedan)', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (287, 'NISSAN', 'Homy Coach', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (288, 'NISSAN', 'JUKE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (289, 'NISSAN', 'Kix', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (290, 'NISSAN', 'Lafesta', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (291, 'NISSAN', 'Latio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (292, 'NISSAN', 'Laurel', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (293, 'NISSAN', 'Leaf', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (294, 'NISSAN', 'March', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (295, 'NISSAN', 'Micrac C+C', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (296, 'NISSAN', 'Moco', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (297, 'NISSAN', 'Murano', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (298, 'NISSAN', 'Note', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (299, 'NISSAN', 'NV150 AD', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (300, 'NISSAN', 'NV200Vanette Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (301, 'NISSAN', 'Otti', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (302, 'NISSAN', 'Primera', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (303, 'NISSAN', 'Rasheen', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (304, 'NISSAN', 'Roox', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (305, 'NISSAN', 'Serena', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (306, 'NISSAN', 'Silvia', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (307, 'NISSAN', 'Skyline', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (308, 'NISSAN', 'Skyline Coupe', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (309, 'NISSAN', 'Skyline Crossover', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (310, 'NISSAN', 'Stagea', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (311, 'NISSAN', 'Sylphy', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (312, 'NISSAN', 'Teana', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (313, 'NISSAN', 'Terrano', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (314, 'NISSAN', 'Tiida', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (315, 'NISSAN', 'Tiida Latio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (316, 'NISSAN', 'Vanette Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (317, 'NISSAN', 'Vanette Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (318, 'NISSAN', 'Wingroad', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (319, 'NISSAN', 'X-Trail', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (320, 'NISSAN', 'X-Trail Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (321, 'NISSAN MT', 'Latio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (322, 'NISSAN MT', 'March', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (323, 'NISSAN UK', 'Dualis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (324, 'PEUGEOT', '207', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (325, 'PEUGEOT', '208', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (326, 'PEUGEOT', '307', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (327, 'PEUGEOT', '308', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (328, 'PEUGEOT', '508', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (329, 'PEUGEOT', '2008', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (330, 'PEUGEOT', '3008', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (331, 'PEUGEOT', '5008', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (332, 'PEUGEOT', 'RCZ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (333, 'Porsche', '911', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (334, 'Porsche', 'Boxster', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (335, 'Porsche', 'Cayenne', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (336, 'Porsche', 'Cayman', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (337, 'Porsche', 'Panamera', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (338, 'Renault', 'CAPTUR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (339, 'Rolls-Royce', 'Silver Seraph', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (340, 'Scania', '94', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (341, 'Smart', 'ForTwo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (342, 'SUBARU', 'BRZ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (343, 'SUBARU', 'Exiga', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (344, 'SUBARU', 'Exiga Crossover 7', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (345, 'SUBARU', 'Forester', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (346, 'SUBARU', 'Impreza', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (347, 'SUBARU', 'Impreza Anesis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (348, 'SUBARU', 'Impreza G4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (349, 'SUBARU', 'Impreza Sports', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (350, 'SUBARU', 'Impreza Sportswagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (351, 'SUBARU', 'Impreza Wrx', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (352, 'SUBARU', 'Impreza Wrx Sti', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (353, 'SUBARU', 'Impreza XV', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (354, 'SUBARU', 'Impreza XV Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (355, 'SUBARU', 'Legacy B4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (356, 'SUBARU', 'Legacy Touring Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (357, 'SUBARU', 'Levorg', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (358, 'SUBARU', 'Outback', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (359, 'SUBARU', 'Pleo Plus', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (360, 'SUBARU', 'Sambar', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (361, 'SUBARU', 'Sambar Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (362, 'SUBARU', 'Stella', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (363, 'SUBARU', 'Trezia', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (364, 'SUBARU', 'Vivio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (365, 'SUBARU', 'WRX S4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (366, 'SUBARU', 'XV', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (367, 'SUZUKI', 'Alto', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (368, 'SUZUKI', 'Alto Works', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (369, 'SUZUKI', 'BANDIT1250S', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (370, 'SUZUKI', 'Cappuccino', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (371, 'SUZUKI', 'Carry Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (372, 'SUZUKI', 'Escudo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (373, 'SUZUKI', 'Every', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (374, 'SUZUKI', 'Grand Escudo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (375, 'SUZUKI', 'Hustler', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (376, 'SUZUKI', 'Ignis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (377, 'SUZUKI', 'Jimny', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (378, 'SUZUKI', 'Jimny Sierra', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (379, 'SUZUKI', 'Jimny Wide', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (380, 'SUZUKI', 'Landy', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (381, 'SUZUKI', 'Palette', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (382, 'SUZUKI', 'PaletteSW', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (383, 'SUZUKI', 'Solio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (384, 'SUZUKI', 'Spacia', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (385, 'SUZUKI', 'Splash', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (386, 'SUZUKI', 'SUZUKI Others', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (387, 'SUZUKI', 'Swift', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (388, 'SUZUKI', 'SX4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (389, 'SUZUKI', 'SX4 Sedan', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (390, 'SUZUKI', 'Wagon R', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (391, 'TMT', 'Hilux', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (392, 'TMUK', 'Avensis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (393, 'TOYOTA', '86', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (394, 'TOYOTA', 'Allex', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (395, 'TOYOTA', 'Allion', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (396, 'TOYOTA', 'Alphard', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (397, 'TOYOTA', 'Alphard Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (398, 'TOYOTA', 'Altezza', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (399, 'TOYOTA', 'Altezza Gita', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (400, 'TOYOTA', 'Aqua', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (401, 'TOYOTA', 'Aristo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (402, 'TOYOTA', 'Auris', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (403, 'TOYOTA', 'Avensis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (404, 'TOYOTA', 'Avensis Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (405, 'TOYOTA', 'bB', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (406, 'TOYOTA', 'Belta', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (407, 'TOYOTA', 'Blade', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (408, 'TOYOTA', 'Brevis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (409, 'TOYOTA', 'Cami', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (410, 'TOYOTA', 'Camry', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (411, 'TOYOTA', 'Camry Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (412, 'TOYOTA', 'Carina', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (413, 'TOYOTA', 'Celica', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (414, 'TOYOTA', 'Celsior', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (415, 'TOYOTA', 'Century', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (416, 'TOYOTA', 'Chaser', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (417, 'TOYOTA', 'C-HR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (418, 'TOYOTA', 'Coaster', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (419, 'TOYOTA', 'Corolla', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (420, 'TOYOTA', 'Corolla Axio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (421, 'TOYOTA', 'Corolla Fielder', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (422, 'TOYOTA', 'Corolla Levin', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (423, 'TOYOTA', 'Corolla Rumion', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (424, 'TOYOTA', 'Corolla Runx', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (425, 'TOYOTA', 'Corolla Sedan', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (426, 'TOYOTA', 'Corolla Spacio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (427, 'TOYOTA', 'Corolla Sport', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (428, 'TOYOTA', 'Corona Premio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (429, 'TOYOTA', 'Corsa', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (430, 'TOYOTA', 'Cresta', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (431, 'TOYOTA', 'Crown', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (432, 'TOYOTA', 'Crown Estate', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (433, 'TOYOTA', 'Crown Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (434, 'TOYOTA', 'Crown Majesta', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (435, 'TOYOTA', 'Dyna Route Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (436, 'TOYOTA', 'Dyna Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (437, 'TOYOTA', 'Esquire', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (438, 'TOYOTA', 'Estima', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (439, 'TOYOTA', 'Estima Emina', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (440, 'TOYOTA', 'Estima Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (441, 'TOYOTA', 'Estima Lucida', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (442, 'TOYOTA', 'FJ Cruiser', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (443, 'TOYOTA', 'Fun Cargo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (444, 'TOYOTA', 'Grand Hiace', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (445, 'TOYOTA', 'Granvia', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (446, 'TOYOTA', 'Harrier', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (447, 'TOYOTA', 'Harrier Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (448, 'TOYOTA', 'Hiace Commuter', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (449, 'TOYOTA', 'Hiace Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (450, 'TOYOTA', 'Hiace Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (451, 'TOYOTA', 'Hiace Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (452, 'TOYOTA', 'Hilux', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (453, 'TOYOTA', 'Hilux Sports Pickup', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (454, 'TOYOTA', 'Hilux Surf', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (455, 'TOYOTA', 'Ipsum', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (456, 'TOYOTA', 'IQ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (457, 'TOYOTA', 'Isis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (458, 'TOYOTA', 'IST', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (459, 'TOYOTA', 'Kluger', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (460, 'TOYOTA', 'Land Cruiser', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (461, 'TOYOTA', 'Land Cruiser Prado', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (462, 'TOYOTA', 'Liteace Noah', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (463, 'TOYOTA', 'Liteace Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (464, 'TOYOTA', 'Liteace Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (465, 'TOYOTA', 'Mark II', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (466, 'TOYOTA', 'Mark II Blit', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (467, 'TOYOTA', 'Mark II Qualis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (468, 'TOYOTA', 'Mark X', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (469, 'TOYOTA', 'Mark X Zio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (470, 'TOYOTA', 'MR2', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (471, 'TOYOTA', 'Nadia', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (472, 'TOYOTA', 'Noah', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (473, 'TOYOTA', 'Noah Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (474, 'TOYOTA', 'Passo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (475, 'TOYOTA', 'Passo Sette', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (476, 'TOYOTA', 'Pixis Epoch', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (477, 'TOYOTA', 'Pixis Space', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (478, 'TOYOTA', 'Pixis Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (479, 'TOYOTA', 'Porte', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (480, 'TOYOTA', 'Premio', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (481, 'TOYOTA', 'Prius', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (482, 'TOYOTA', 'Prius Alpha', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (483, 'TOYOTA', 'Prius PHV', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (484, 'TOYOTA', 'Probox Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (485, 'TOYOTA', 'Probox Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (486, 'TOYOTA', 'Ractis', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (487, 'TOYOTA', 'Raize', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (488, 'TOYOTA', 'Raum', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (489, 'TOYOTA', 'RAV4', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (490, 'TOYOTA', 'Regius Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (491, 'TOYOTA', 'Regiusace Commuter', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (492, 'TOYOTA', 'Regiusace Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (493, 'TOYOTA', 'Roomy', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (494, 'TOYOTA', 'Rush', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (495, 'TOYOTA', 'SAI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (496, 'TOYOTA', 'Sienta', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (497, 'TOYOTA', 'Soarer', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (498, 'TOYOTA', 'Spade', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (499, 'TOYOTA', 'Sprinter Carib', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (500, 'TOYOTA', 'Sprinter Sedan', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (501, 'TOYOTA', 'Sprinter Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (502, 'TOYOTA', 'Starlet', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (503, 'TOYOTA', 'Succeed Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (504, 'TOYOTA', 'Succeed Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (505, 'TOYOTA', 'Tank', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (506, 'TOYOTA', 'Tercel', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (507, 'TOYOTA', 'Touring Hiace', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (508, 'TOYOTA', 'Townace Noah', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (509, 'TOYOTA', 'Townace Truck', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (510, 'TOYOTA', 'Townace Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (511, 'TOYOTA', 'Townace Wagon', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (512, 'TOYOTA', 'Toyoace', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (513, 'TOYOTA', 'Toyoace Route Van', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (514, 'TOYOTA', 'TOYOTA Others', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (515, 'TOYOTA', 'Tundra', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (516, 'TOYOTA', 'Vanguard', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (517, 'TOYOTA', 'Vellfire', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (518, 'TOYOTA', 'Vellfire Hybrid', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (519, 'TOYOTA', 'Verossa', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (520, 'TOYOTA', 'Vitz', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (521, 'TOYOTA', 'Voltz', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (522, 'TOYOTA', 'Voxy', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (523, 'TOYOTA', 'Wish', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (524, 'UD TRUCKS', 'Condor', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (525, 'VOLKSWAGEN', 'CC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (526, 'VOLKSWAGEN', 'Cross Golf', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (527, 'VOLKSWAGEN', 'Golf', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (528, 'VOLKSWAGEN', 'Golf GTI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (529, 'VOLKSWAGEN', 'Golf Touran', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (530, 'VOLKSWAGEN', 'Golf Variant', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (531, 'VOLKSWAGEN', 'Jetta', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (532, 'VOLKSWAGEN', 'New Beetle', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (533, 'VOLKSWAGEN', 'Passat', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (534, 'VOLKSWAGEN', 'Passat CC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (535, 'VOLKSWAGEN', 'Polo', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (536, 'VOLKSWAGEN', 'Sharan', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (537, 'VOLKSWAGEN', 'Tiguan', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (538, 'VOLKSWAGEN', 'Touareg', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (539, 'VOLKSWAGEN', 'up!', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (540, 'VOLVO', 'C30', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (541, 'VOLVO', 'S60', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (542, 'VOLVO', 'S80', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (543, 'VOLVO', 'V40', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (544, 'VOLVO', 'V50', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (545, 'VOLVO', 'V60', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (546, 'VOLVO', 'V70', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (547, 'VOLVO', 'XC60', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (548, 'VOLVO', 'XC90', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (549, 'YAMAHA', 'MT-09', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_cartype` VALUES (550, 'YAMAHA', 'T-MAX530', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_checkdepart
-- ----------------------------
DROP TABLE IF EXISTS `m_checkdepart`;
CREATE TABLE `m_checkdepart`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `checkdepart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checktype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_checkdepart
-- ----------------------------
INSERT INTO `m_checkdepart` VALUES (1, 'EAA', '1', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_checkdepart` VALUES (2, 'JEVIC', '1', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_checkdepart` VALUES (3, 'QISJ', '1', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_checkdepart` VALUES (4, 'ATJ', '2', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_checkdepart` VALUES (5, 'JAAI', '3', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_checkfee
-- ----------------------------
DROP TABLE IF EXISTS `m_checkfee`;
CREATE TABLE `m_checkfee`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `check_depart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `yard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `car_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `car_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `displacement_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `check_fee` int NULL DEFAULT NULL,
  `management_fee` int NULL DEFAULT NULL,
  `gl_fee` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_checkfee
-- ----------------------------

-- ----------------------------
-- Table structure for m_color
-- ----------------------------
DROP TABLE IF EXISTS `m_color`;
CREATE TABLE `m_color`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_color
-- ----------------------------
INSERT INTO `m_color` VALUES (1, 'BEIGE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (2, 'BLACK', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (3, 'BLUE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (4, 'BRONZE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (5, 'BROWN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (6, 'GOLD', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (7, 'GRAY', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (8, 'GREEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (9, 'MAROON', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (10, 'ORANGE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (11, 'OTHER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (12, 'PEARL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (13, 'PINK', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (14, 'PURPLE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (15, 'RED', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (16, 'SILVER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (17, 'WHITE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_color` VALUES (18, 'YELLOW', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_depart
-- ----------------------------
DROP TABLE IF EXISTS `m_depart`;
CREATE TABLE `m_depart`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `depart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_depart
-- ----------------------------
INSERT INTO `m_depart` VALUES (1, '代表取締役', 0, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (2, '国内営業', 2, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (3, 'セールスワーク', 0, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (4, 'シッピング', 1, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (5, '海外営業', 1, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (6, '阪神エリア', 1, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (7, '神戸営業所', 1, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (8, '大阪営業所', 1, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (9, '名古屋営業所', 1, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (10, '横浜営業所', 1, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (11, '木更津営業所', 1, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (12, '経理/人事', 0, '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_depart` VALUES (13, 'システム', 0, '2022-11-02 15:10:32', '2022-11-02 15:10:32');

-- ----------------------------
-- Table structure for m_import
-- ----------------------------
DROP TABLE IF EXISTS `m_import`;
CREATE TABLE `m_import`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `shipper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_shoot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_check` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_import
-- ----------------------------
INSERT INTO `m_import` VALUES (1, 'ビィ・フォアード', '1', '1', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_import` VALUES (2, 'サンフェニックス', '0', '0', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_maker
-- ----------------------------
DROP TABLE IF EXISTS `m_maker`;
CREATE TABLE `m_maker`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `maker_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 252 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_maker
-- ----------------------------
INSERT INTO `m_maker` VALUES (1, 'TOYOTA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (2, 'NISSAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (3, 'HONDA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (4, 'MITSUBISHI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (5, 'MAZDA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (6, 'SUBARU', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (7, 'SUZUKI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (8, 'DAIHATSU', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (9, 'ISUZU', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (10, 'MITSUOKA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (11, 'GM', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (12, 'CHRYSLER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (13, 'SATURN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (14, 'STARCRAFT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (15, 'TIARA ROYAL STAR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (16, 'FORD', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (17, 'TVR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (18, 'ASTONMARTIN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (19, 'JAGUAR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (20, 'ROLLS-ROYCE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (21, 'BENTLEY', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (22, 'ROVER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (23, 'BMW', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (24, 'BMW ALPINA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (25, 'VSHUTRAL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (26, 'AUDI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (27, 'WEEKENDER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (28, 'OPEL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (29, 'VOLKSWAGEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (30, 'PORSCHE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (31, 'MERCEDES-BENZ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (32, 'AMG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (33, 'CITROEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (34, 'PEUGEOT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (35, 'RENAULT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (36, 'VENTURI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (37, 'AUTOBIANCHE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (38, 'ALFAROMEO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (39, 'FIAT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (40, 'FERRARI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (41, 'MASERATI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (42, 'LANCIA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (43, 'LAMBORGHINI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (44, 'SAAB', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (45, 'VOLVO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (46, 'DONKERVOORT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (47, 'KIA MOTORS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (48, 'BIRKIN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (49, 'MG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (50, 'WINNEBAGO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (51, 'AUSTIN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (52, 'MORGAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (53, 'LOTUS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (54, 'MCC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (55, 'DAEWOO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (56, 'HYUNDAI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (57, 'AMGENERAL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (58, 'AMC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (59, 'GMC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (60, 'RAINBOWSTAR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (61, 'HINO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (62, 'LAND ROVER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (63, 'PANTHER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (64, 'MAYBACH', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (65, 'OTHER ALL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (66, 'FORD JAPAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (67, 'EUROPE FORD', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (68, 'RUF', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (69, 'LORENZ&LANCLE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (70, 'RMA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (71, 'GERMANY OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (72, 'CARBODIES', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (73, 'WESTFIELD', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (74, 'CATERHAM', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (75, 'RELIANT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (76, 'MOKE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (77, 'MORRIS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (78, 'HEALEY', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (79, 'WOLSELEY', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (80, 'RILEY', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (81, 'MARCOS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (82, 'TRIUMPH', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (83, 'GP', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (84, 'U.K. OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (85, 'INNOCENTI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (86, 'BERTONE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (87, 'DETOMASO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (88, 'BUGATTI_OLD', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (89, 'ZAGATO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (90, 'ITALY OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (91, 'MVS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (92, 'MARTIN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (93, 'TEILHOL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (94, 'FRANCE OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (95, 'SWEDEN OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (96, 'HOLLAND OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (97, 'AVANTI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (98, 'VECTOR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (99, 'ACURA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (100, 'INFINITI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (101, 'VAN AMERICAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (102, 'U.SA. OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (103, 'SSANGYONG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (104, 'KOREA OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (105, 'LADA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (106, 'SEAT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (107, 'SPAIN OTHERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (108, 'APAL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (109, 'CAT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (110, 'IHI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (111, 'KATO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (112, 'KOBELCO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (113, 'KOMATSU', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (114, 'KAWASAKI INDUSTRY', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (115, 'SUMITOMO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (116, 'HITACHI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (117, 'TCM', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (118, 'NICHIYU', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (119, 'LEXUS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (120, 'NOBLE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (121, 'BUGATTI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (122, 'SALEEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (123, 'MITSUBISHI FUSO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (124, 'BUICK', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (125, 'CADILLAC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (126, 'CHEVROLET', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (127, 'HUMMER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (128, 'PONTIAC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (129, 'DODGE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (130, 'JEEP', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (131, 'LINCOLN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (132, 'MERCURY', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (133, 'DELOREAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (134, 'EAGLE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (135, 'MINI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (136, 'OLDSMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (137, 'SMART', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (138, 'STERLING', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (139, 'YUGO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (140, 'ABT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (141, 'ACCOBRA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (142, 'AC SCHNITZER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (143, 'ARDEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (144, 'ARIEL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (145, 'ASCARI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (146, 'AVTOVAZ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (147, 'BOGDAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (148, 'BRISTOL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (149, 'CI ZETA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (150, 'DAF', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (151, 'DE TOMAZO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (152, 'EDONIS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (153, 'FODEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (154, 'GAZ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (155, 'GEMBALLA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (156, 'GINETTA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (157, 'INVICTA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (158, 'IRMSCHER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (159, 'ISO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (160, 'IVECO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (161, 'JENSEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (162, 'JONCKHEERE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (163, 'KAMAZ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (164, 'KARLSSON', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (165, 'KOENIG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (166, 'KOENIGSEGG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (167, 'LEYAND TRUCKS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (168, 'MAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (169, 'OETTINGER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (170, 'PAGANI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (171, 'PERODUA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (172, 'PIAGGIO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (173, 'RENAULT TRUCKS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (174, 'SCANIA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (175, 'SETRA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (176, 'SPYKER CARS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (177, 'TATA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (178, 'TATRA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (179, 'TEMSA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (180, 'TROLLER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (181, 'UAZ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (182, 'URAL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (183, 'VANGOOL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (184, 'WESTFIELD', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (185, 'WIESMANN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (186, 'YES!', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (187, 'ZASTAVA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (188, 'ZIL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (189, 'CAMI AUTOMOTIVE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (190, 'DACIA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (191, 'HOLDEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (192, 'MG ROVER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (193, 'PROTON', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (194, 'SKODA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (195, 'VAUXHALL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (196, 'HINDUSTAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (197, 'MAHINDRA & MAHINDRA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (198, 'MARUTI UDYOG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (199, 'AGRALE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (200, 'JINDO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (201, 'RENAULT SAMSUNG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (202, 'BEIJING AUTOMOBILE WORKS (BAW)', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (203, 'HAFEI AUTO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (204, 'GUANGZHOU AUTOMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (205, 'GREAT WALL MOTOR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (206, 'CHERY AUTOMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (207, 'SHANGHAI AUTOMOTIVE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (208, 'FAW (FIRST AUTOMOBILE WORKS)', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (209, 'CHANGAN AUTOMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (210, 'DFM (DONGFENG MOTOR)', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (211, 'GEELY AUTOMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (212, 'FAW CAR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (213, 'DONGFENG PEUGEOT CITROEN AUTOMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (214, 'GUANGZHOU TOYOTA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (215, 'HONDA CHINA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (216, 'BEIJINGHYUNDAI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (217, 'BEJING BENZ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (218, 'BEIQI FOTON MOTOR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (219, 'NANJING FIAT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (220, 'NANJING SOYAT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (221, 'GEELY', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (222, 'GEELY SHANGHAI JEEP', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (223, 'HAFEI AUTOMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (224, 'CHANGHE SUZUKI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (225, 'CHANGHE AUTOMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (226, 'FORD CHINA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (227, 'CHANGAN SUZUKI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (228, 'BYD AUTOMOBILE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (229, 'TT AUTO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (230, 'SOUEAST MOTOR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (231, 'JINBEI AUTOMOTIVE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (232, 'BRILLIANCE BMW', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (233, 'SAMIL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (234, 'SAMAG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (235, 'CATERPILLAR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (236, 'JCB', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (237, 'YANMAR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (238, 'TAKEUCHI', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (239, 'BOMAG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (240, 'MERLO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (241, 'POTAIN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (242, 'LIEBHERR', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (243, 'TEREX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (244, 'DEMAG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (245, 'HAULOTTE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (246, 'TMC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (247, 'PUTZMEISTER', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (248, 'ABARTH', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (249, 'KUBOTA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (250, 'TMUK', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_maker` VALUES (251, 'TESLA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_member
-- ----------------------------
DROP TABLE IF EXISTS `m_member`;
CREATE TABLE `m_member`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_depart` int NOT NULL,
  `employee_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_member
-- ----------------------------
INSERT INTO `m_member` VALUES (1, 1, '山下 克則', 'yamashita@globaline.co.jp', 'yamashita', 'gl0001', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (2, 2, '平石 雄介', 'hiraishi@globaline.co.jp', 'hiraishi', 'gl0002', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (3, 2, '永安 友梨', 'nagayasu@globaline.co.jp', 'nagayasu', 'gl0003', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (4, 2, '若生 健太郎', 'wakaiki@globaline.co.jp', 'wakaiki', 'gl0004', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (5, 2, '平石 亜弓', 'a.hiraishi@globaline.co.jp', 'a.hiraishi', 'gl0005', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (6, 3, '粟田 咲子', 'awata@globaline.co.jp', 'awata', 'gl0006', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (7, 3, '山縣 ハニー', 'h.yamagata@globaline.co.jp', 'h.yamagata', 'gl0007', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (8, 4, '土居 幸市郎', 'k.doi@globaline.co.jp', 'k.doi', 'gl0008', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (9, 4, '小林 茜', 'a.kobayashi@globaline.co.jp', 'a.kobayashi', 'gl0009', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (10, 4, '古賀 英子', 'e.koga@globaline.co.jp', 'e.koga', 'gl0010', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (11, 4, 'ミッシェル 里菜', 'michel@globaline.co.jp', 'michel', 'gl0011', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (12, 5, '横山 浩二', 'yokoyama@globaline.co.jp', 'yokoyama', 'gl0012', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (13, 5, '田中 伴来', 't.tanaka@globaline.co.jp', 't.tanaka', 'gl0013', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (14, 6, '野田 雅夫', 'noda@globaline.co.jp', 'noda', 'gl0014', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (15, 7, '中村 卓省', 'nakamura@globaline.co.jp', 'nakamura', 'gl0015', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (16, 7, '岡 勇輝', 'oka@globaline.co.jp', 'oka', 'gl0016', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (17, 7, '上杉 雅彦', 'uesugi@globaline.co.jp', 'uesugi', 'gl0017', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (18, 7, '三浦 佳祐', 'miura@globaline.co.jp', 'miura', 'gl0018', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (19, 7, '小林 美和', 'm.kobayashi@globaline.co.jp', 'm.kobayashi', 'gl0020', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (20, 7, '酒井 智章', 'sakai@globaline.co.jp', 'sakai', 'gl0021', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (21, 7, 'スタイヤーノ　士文', 's.simon@globaline.co.jp', 's.simon', 'gl0022', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (22, 8, '寒川 慎介', 'samukawa@globaline.co.jp', 'samukawa', 'gl0023', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (23, 8, '森 美紀', 'm.mori@globaline.co.jp', 'm.mori', 'gl0024', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (24, 8, '篠尾 弘之', 'shinoo@globaline.co.jp', 'shinoo', 'gl0025', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (25, 8, '西宮 拓哉', 'nishimiya@globaline.co.jp', 'nishimiya', 'gl0026', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (26, 9, '小澤 慎也', 'ozawa@globaline.co.jp', 'ozawa', 'gl0027', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (27, 9, '加藤 択哉', 't.kato@globaline.co.jp', 't.kato', 'gl0028', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (28, 9, '小林 憲治', 'k.kobayashi@globaline.co.jp', 'k.kobayashi', 'gl0029', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (29, 9, '坪井 穂珠', 'tsuboi@globaline.co.jp', 'tsuboi', 'gl0030', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (30, 10, '三輪 剛史', 'miwa@globaline.co.jp', 'miwa', 'gl0031', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (31, 10, '加藤 寛幸', 'h.kato@globaline.co.jp', 'h.kato', 'gl0032', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (32, 10, '大野 俊明', 'ohno@globaline.co.jp', 'ohno', 'gl0033', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (33, 10, '石川 龍也', 'ishikawa@globaline.co.jp', 'ishikawa', 'gl0034', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (34, 10, '林 永也', 'e.hayashi@globaline.co.jp', 'e.hayashi', 'gl0035', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (35, 10, '河原 亘孝', 'kawahara@globaline.co.jp', 'kawahara', 'gl0036', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (36, 10, '黒川 陽介', 'y.kurokawa@globaline.co.jp', 'y.kurokawa', 'gl0037', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (37, 11, '海老根 勝充', 'ebine@globaline.co.jp', 'ebine', 'gl0038', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (38, 11, '渡邉 柚衣', 'sakuma@globaline.co.jp', 'sakuma', 'gl0039', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (39, 11, '近藤 朔翔', 'kondo@globaline.co.jp', 'kondo', 'gl0040', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (40, 11, '髙田 壮太', 's.takada@globaline.co.jp', 's.takada', 'gl0041', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (41, 11, '河部 寛朗', 'kawabe@globaline.co.jp', 'kawabe', 'gl0042', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (42, 11, '安藤 暢基', 'andou@globaline.co.jp', 'andou', 'gl0043', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (43, 11, '酒井 俊輔', 's.sakai@globaline.co.jp', 's.sakai', 'gl0044', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (44, 11, '長野 芙弥', 'nagano@globaline.co.jp', 'nagano', 'gl0045', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (45, 12, '山本 亜矢香', 'yamamoto@globaline.co.jp', 'yamamoto', 'gl0046', '2022-11-02 15:38:47', '2022-11-02 15:38:47');
INSERT INTO `m_member` VALUES (46, 13, '森 恵一郎', 'mori@globaline.co.jp', 'mori', 'gl0047', '2022-11-02 15:38:47', '2022-11-02 15:38:47');

-- ----------------------------
-- Table structure for m_ordertype1
-- ----------------------------
DROP TABLE IF EXISTS `m_ordertype1`;
CREATE TABLE `m_ordertype1`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ordertype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_ordertype1
-- ----------------------------
INSERT INTO `m_ordertype1` VALUES (1, '販売用撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype1` VALUES (2, '車輌チェック', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype1` VALUES (3, '軽作業', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype1` VALUES (4, '修理・整備', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype1` VALUES (5, '輸出検査', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_ordertype2
-- ----------------------------
DROP TABLE IF EXISTS `m_ordertype2`;
CREATE TABLE `m_ordertype2`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ordertype1` int NOT NULL,
  `ordertype2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_ordertype2
-- ----------------------------
INSERT INTO `m_ordertype2` VALUES (1, 1, 'BF撮影', '写真撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (2, 1, 'SBT撮影', '写真撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (3, 1, 'SBT撮影（カートル）', '写真撮影（カートル）', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (4, 1, 'GL撮影', '写真撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (5, 1, 'GL撮影（ライト）', '写真撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (6, 1, '動画撮影', '動画撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (7, 1, '360度撮影', '366度撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (8, 1, '追加写真', '追加撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (9, 1, 'C作業', 'C作業', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (10, 1, 'オーダー撮影', 'オーダー撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (11, 1, '再撮影', '写真撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (12, 2, '初期不良チェック', '初期チェック', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (13, 2, 'コンディションチェック', 'コンディションチェック', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (14, 2, 'NZ査定', '車両査定（NZ)', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (15, 2, '車両査定', '車両査定', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (16, 2, 'MAY受入検査', 'MAY受入検査', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (17, 2, 'WEB受入検査', 'WEB受入検査', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (18, 3, 'E/G NO.チェック（国産）', 'E/G NO.チェック（国産）', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (19, 3, 'E/G NO.チェック（外車）', 'E/G NO.チェック（外車）', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (20, 3, 'E/G NO.チェック', 'E/G NO.チェック', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (21, 3, 'ナンバー外し', 'ナンバー外し', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (22, 3, '備品積込', '備品積込', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (23, 3, '備品回収', '備品回収', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (24, 3, 'パーツ積込', 'パーツ積込', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (25, 3, 'パーツラッシング', 'パーツラッシング', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (26, 3, 'シートカバー取外し', 'シートカバー取外し', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (27, 3, '車両クリーニング', '車両クリーニング', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (28, 3, 'プレミアム洗車', 'プレミアム洗車', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (29, 3, '北米向け洗車', '北米向け洗車', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (30, 3, 'タイヤ処分', 'タイヤ処分', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (31, 3, 'インナー処分', 'インナー処分', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (32, 3, 'エラーコードリセット', 'エラーコードリセット', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (33, 3, 'ステッカー貼付け', 'ステッカー貼付け', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (34, 3, '外装テープ剥離', '外装テープ剥離', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (35, 3, 'キャリア取外し', 'キャリア取外し', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (36, 3, 'AA出品準備', 'AA出品準備', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (37, 3, '荷台加工品撤去', '荷台加工品撤去', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (38, 3, '荷室加工品撤去', '荷室加工品撤去', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (39, 3, '荷台幌撤去', '荷台幌撤去', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (40, 3, '陸送', '陸送', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (41, 3, '軽作業', '軽作業', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (42, 3, '現車確認', '現車確認', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (43, 4, '修理・整備', '都度内容変更', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (44, 4, '陸送', '陸送', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (45, 5, '輸出検査', '輸出検査料', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (46, 5, '検査会社管理', '検査会社管理料', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (47, 5, '輸検取扱い', '輸検取扱手数料', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_ordertype2` VALUES (48, 5, '再検査取扱い', '再検査取扱手数料', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_shipper
-- ----------------------------
DROP TABLE IF EXISTS `m_shipper`;
CREATE TABLE `m_shipper`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipper_short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_shipper
-- ----------------------------
INSERT INTO `m_shipper` VALUES (1, 'エクスネット株式会社', 'エクス', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (2, '株式会社ビィ・フォアード（付帯作業）', 'BF付', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (3, '株式会社ビィ・フォアード（シッピング）', 'BFシ', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (4, '株式会社 グーネットエクスチェンジ', 'GOO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (5, '株式会社 ズルフィカール モーターズ', 'ZUL', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (6, 'ジャパンカーズ', 'JCS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (7, '高橋商店', '高橋', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (8, 'ATONCE', 'ATO', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (9, 'KAITO(REIWA TRADING)', '海都', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (10, 'QUALITY VEHICLE EXPORTS', 'QVE', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (11, '横浜トヨペット', 'YTP', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (12, '株式会社 NTPカーモスト', 'NTP', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (13, '吉田オート', 'YDA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (14, 'マックス未来', 'MAX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (15, 'AUTOBACS SEVEN', 'ABC', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (16, 'ERST', 'ERS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (17, '株式会社 エクセア', 'EXS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (18, '株式会社BLOOM', 'BLM', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (19, '株式会社 モアナブルー', 'MAN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (20, '(有)エム・エー・アワン', 'MAA', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (21, '株式会社ノットグローバルホールディングス', 'NG', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (22, 'ケビビ グループ株式会社', 'KBB', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (23, '株式会社ライジング', 'RIS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (24, '株式会社NEXTO', 'NEX', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (25, '株式会社Benricom Autos', 'BEN', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (26, '株式会社ネクストドライブ', 'NET', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (27, '株式会社カーペイディーエム', 'CDP', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (28, 'グローバル貿易株式会社', 'GLB', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (29, '株式会社エスビーティー', 'SBT', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_shipper` VALUES (30, '株式会社アガスタ', 'AGS', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_status
-- ----------------------------
DROP TABLE IF EXISTS `m_status`;
CREATE TABLE `m_status`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_status
-- ----------------------------
INSERT INTO `m_status` VALUES (1, '未作業', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (2, '作業中', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (3, '回答待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (4, '部品未発注', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (5, '部品待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (6, '再撮影', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (7, '保留', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (8, '完了', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (9, 'キャンセル', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (10, '搬入待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (11, '確認中', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (12, '抹消待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (13, '見積中', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (14, '見積完了', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (15, '写真待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (16, '再検申込', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (17, '要搬出', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (18, '搬出手配中', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (19, '内貨戻し中', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (20, '更新待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (21, '確認中', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (22, 'BF切替待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (23, '動画待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');
INSERT INTO `m_status` VALUES (24, '撮影待ち', '2022-11-02 15:44:09', '2022-11-02 15:44:09');

-- ----------------------------
-- Table structure for m_yard
-- ----------------------------
DROP TABLE IF EXISTS `m_yard`;
CREATE TABLE `m_yard`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `yard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `depart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alias10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_yard
-- ----------------------------
INSERT INTO `m_yard` VALUES (1, '横浜 USロジ', '横浜支店', 'BFUSロジ横浜', '横浜(USロジ)', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (2, '横浜 大黒埠頭', '横浜支店', '大黒(SPX YCC前)', 'BF横浜大黒ふ頭', '横浜（サンフェニックス大黒ふ頭）', '横浜大黒ふ頭', '大黒(INTER 京浜港運T4)', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (3, '横浜 三井Ｊ号地', '横浜支店', '横浜(SYNC 三井倉庫J号地)', '横浜三井J号地', '苫小牧(シー・リンク柏原ヤード)', '苫小牧(シー・リンク あけぼのヤード)', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (4, '神戸 SPX京浜', '神戸営業所', '神戸（サンフェニックス京浜）', 'BF神戸ケイヒン', '神戸(SPXケイヒン)', '神戸SPXケイヒン', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (5, '神戸 SPX東友', '神戸営業所', '神戸（サンフェニックス東友）', 'BF神戸SPX東友', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (6, '神戸 GL日本トランス', '神戸営業所', '神戸六甲(GL 日本トランス)', 'BF神戸GL日本トランス', '神戸(GL 日本トランス)', '大阪(HUBオートセンターNo.3)', '神戸(GL新日本トランス)', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (7, '大阪 助松モアナブルー', '大阪営業所', '大阪(MOANA BLUE/ECLA)', 'BF大阪助松モアナブルー', '大阪助松モアナブルー', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (8, '大阪 SPX郵船港運', '大阪営業所', '大阪(サンフェニックス 郵船港運)', '大阪(サンフェニックス　郵船港運)', 'BF大阪SPX郵船港運', '大阪(サンフェニックス郵船港運）', '大阪(SPX郵船港運)', '大阪SPX郵船港運', '大阪(SPX郵船港運)', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (9, '大阪 ハマナス', '大阪営業所', '大阪(ハマナス)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (10, '長州出島', '下関営業所', '長州出島(リアル下関海陸)', 'BF長州出島', '長州出島', '長州出島(リアル下関海陸)', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (11, '名古屋 カナロア伊勢湾', '名古屋営業所', '名古屋(KANALOA　伊勢湾海運)', 'BF名古屋カナロア伊勢湾', '名古屋　(カナロア伊勢湾)', '名古屋（カナロア伊勢湾）', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (12, '名古屋 SPX上組空見', '名古屋営業所', '名古屋(SPX上組空見)', 'BF名古屋SPX上組空見', '名古屋上組空見', '名古屋旭運輸上組空見', '名古屋SPX上組空見', '名古屋(SPX上組 空見)', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (13, '名古屋 SPX上組金城', '名古屋営業所', '名古屋(サンフェニックス上組金城)', '名古屋(サンフェニックス上組金城No.3)', '名古屋上組金城 NO.3', '名古屋上組金城NO.3', '名古屋上組金城NO.3', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (14, '名古屋 モアナフラッシュライズ', '名古屋営業所', '名古屋(MOANA BLUE/F.RISE)', '名古屋モアナフラッシュライズ', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (15, '名古屋 JFA桑名', '名古屋営業所', '名古屋（JFA桑名）', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (16, '木更津 SPX', '木更津営業所', '木更津(SPX)', 'BFSPX木更津', '木更津SPX', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (17, '小山 フォーカスヤード', '横浜支店', '小山（フォーカスヤード）', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (18, '名古屋 SPX上組西五区', '名古屋営業所', '名古屋(SPX上組 西五区)', '名古屋（SPX上組西五区）', '名古屋西五区', 'SBT名古屋西五区', 'SBT名古屋SPX上組西五区', '名古屋上組西五区SBT', 'SBT名古屋上組西五区', '名古屋SPX上組西五区', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (19, '名古屋 旭運輸空見', '名古屋営業所', '名古屋旭運輸空見', '旭運輸空見', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (20, '神戸六甲 GL上組ダイハツ', '神戸営業所', '神戸六甲(GL上組ダイハツ)', '神戸(GL上組ダイハツ', '神戸(GL上組ダイハツ)', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (21, '野田 USロジ', '横浜支店', '野田(USロジ)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (22, '東扇島 三井埠頭', '横浜支店', '東扇島(三井埠頭)', '東扇島　SPX三井', '●東扇島(三井埠頭)', '東扇島SPX三井', '東扇島', '東扇島三井', 'SPX (三井埠頭)', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (23, '神戸 ハマナス', '神戸営業所', '神戸(ハマナス)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (24, '神戸六甲 HUB上組', '神戸営業所', '神戸六甲(HUB上組)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (25, 'SPX三井', '横浜支店', 'SPX三井', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (26, '川崎SPX千鳥町', '横浜支店', '川崎SPX千鳥町', '川崎(SPX千鳥町)', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (27, '神戸六甲 GL 神菱港運', '神戸営業所', '神戸六甲(GL 神菱港運)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (28, '神戸 MOANA BLUE/富士テクノトランス', '神戸営業所', '神戸(MOANA BLUE/富士テクノトランス)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (29, '大黒K号地 INTER 東商EX', '横浜支店', '大黒K号地(INTER 東商EX)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (30, '大阪 SYNC', '大阪営業所', '大阪(SYNC)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (31, '袖ヶ浦 SYNC アクアロジ', '横浜支店', '袖ヶ浦(SYNC アクアロジ)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (32, '浮島 サンフェニックス', '横浜支店', '浮島(サンフェニックス)', '川崎浮島(サンフェニックス)', '川崎(SPX浮島)', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (33, '横浜 SYNC ダイトーコーポレーション', '横浜支店', '横浜(SYNC ダイトーコーポレーション)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (34, '神戸六甲 INTER ECL', '神戸営業所', '神戸六甲(INTER ECL)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (35, '木更津･畑沢(SPX)', '木更津営業所', '木更津･畑沢(SPX)', '木更津・畑沢', '木更津・畑沢', 'SPX木更津・畑沢', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (36, '名古屋(SYNC 三井倉庫)', '名古屋営業所', '名古屋(SYNC 三井倉庫)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (37, '名古屋　旭運輸稲永', '名古屋営業所', '旭運輸稲永', '名古屋旭運輸稲永', 'SBT名古屋旭運輸稲永', 'SBT旭運輸稲永', 'SBT名古屋稲永', '名古屋(SPX旭運輸稲永)', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (38, '東扇島三井埠頭', '横浜支店', '東扇島三井埠頭', '●東扇島三井埠頭', '東扇島SPX三井', 'SPX東扇島三井', 'SBT三井', '川崎(SPX東扇島三井埠頭)', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (39, '神戸（サンフェニックスRS-B）', '神戸営業所', '神戸（サンフェニックスRS-B）', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (40, '川崎千鳥町(カズロジ INTER)', '横浜支店', '川崎千鳥町(カズロジ INTER)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (41, '大黒J号地(三井倉庫)', '横浜支店', '大黒J号地(三井倉庫)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (42, '新門司(INTER ECL)', '下関営業所', '新門司(INTER ECL)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (43, 'YCC前', '横浜支店', 'YCC前', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (44, '神戸(GL 住友倉庫)', '神戸営業所', '神戸(GL 住友倉庫)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (45, '横浜本牧(SYNC アベ物流センター)', '横浜支店', '横浜本牧(SYNC アベ物流センター)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (46, '名古屋(SYNC 東陽倉庫)', '名古屋営業所', '名古屋(SYNC 東陽倉庫)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (47, '博多(SYNC/other：Container)', '下関営業所', '博多(SYNC/other：Container)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (48, '野田(SYNCロジコヤード)', '木更津営業所', '野田(SYNCロジコヤード)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (49, '名古屋(INTER 東陽倉庫稲永)', '名古屋営業所', '名古屋(INTER 東陽倉庫稲永)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (50, '大阪(SYNC/other：Container)', '大阪営業所', '大阪(SYNC/other：Container)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (51, 'SPX NAGOYA YATOMI', '名古屋営業所', 'SPX NAGOYA YATOMI', 'SBT名古屋SPX弥富', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (52, '神戸港島(GL 新日本トランス)', '神戸営業所', '神戸港島(GL 新日本トランス)', '神戸港島(GL新日本トランス)', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (53, '名古屋弥富', '名古屋営業所', '名古屋弥富', '名古屋弥富SBT', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (54, '大阪夕凪SBT', '大阪営業所', '大阪夕凪SBT', 'SBT夕凪', 'SBT大阪夕凪', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (55, '新門司(SPX GENEQ)', '下関営業所', '新門司(SPX GENEQ)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (56, '茨城(坂東 BF)', '横浜支店', '茨城(坂東 BF)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (57, '木更津・畑沢第2ヤード(SPX)', '木更津営業所', '木更津・畑沢第2ヤード(SPX)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (58, '名古屋稲永SBT', '名古屋営業所', '名古屋稲永SBT', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (59, '木更津（INTER ECL/RORO)', '木更津営業所', '木更津（INTER ECL/RORO)', '木更津（INTER ECL/Container)', '木更津(MOANA BLUE/ECLA)', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (60, '名古屋(SPX上組金城NO3)', '名古屋営業所', '名古屋(SPX上組金城NO3)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (61, '名古屋(SPX上組弥富)', '名古屋営業所', '名古屋(SPX上組弥富)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (62, '神戸神菱港運', '神戸営業所', '神戸神菱港運', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (63, '畑沢(Ｊキャリー臨時ヤード)', '木更津営業所', '畑沢(Ｊキャリー臨時ヤード)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (64, '神戸六甲(三井GH)', '神戸営業所', '神戸六甲(三井GH)', '神戸(SPX三井GH)', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (65, '名古屋SBT西五区', '名古屋営業所', '名古屋SBT西五区', 'SBT上組西五区', '名古屋SPX西五区SBT', 'SBT西五区', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (66, '名古屋SBT稲永', '名古屋営業所', '名古屋SBT稲永', 'SBT稲永', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (67, '名古屋(SYNC/other：Container)', '名古屋営業所', '名古屋(SYNC/other：Container)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (68, '小山(マツミヤード)', '横浜支店', '小山(マツミヤード)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (69, '苅田(苅田港運)', 'BF用', '苅田(苅田港運)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (70, '大黒(SPX C-3ヤード)', '横浜支店', '大黒(SPX C-3ヤード)', '大黒(SPX C3ヤード)', '野田(シーリンクヤード)', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (71, '大黒(SPX ケイヒンI号地)', '横浜支店', '大黒(SPX ケイヒンI号地)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (72, '大阪(大運汐見)', '大阪営業所', '大阪(大運汐見)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (73, '神戸港島(GL上組STバース)', '神戸営業所', '神戸港島(GL上組STバース)', '神戸(GL上組STバース)', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (74, '神戸港島(GL 新日本トランス No.2)', '神戸営業所', '神戸港島(GL 新日本トランス No.2)', '神戸(GL新日本トランスNo.2)', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (75, '大阪南港(SYNC近畿港運)', '大阪営業所', '大阪南港(SYNC近畿港運)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (76, '神戸(SPX RS-B)', '神戸営業所', '神戸(SPX RS-B)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (77, '名古屋(SPX旭運輸弥冨)', '名古屋営業所', '名古屋(SPX旭運輸弥冨)', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (78, '●新潟(東港)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (79, '伊万里(MW-LINE)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (80, '茨城(常総 SYNCヤード)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (81, '横浜(SYNC 三井倉庫J号地)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (82, '国内代理掲載：愛知', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (83, '国内代理掲載：茨城', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (84, '国内代理掲載：岡山', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (85, '国内代理掲載：沖縄', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (86, '国内代理掲載：岩手', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (87, '国内代理掲載：岐阜', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (88, '国内代理掲載：宮崎', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (89, '国内代理掲載：宮城', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (90, '国内代理掲載：京都', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (91, '国内代理掲載：熊本', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (92, '国内代理掲載：群馬', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (93, '国内代理掲載：広島', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (94, '国内代理掲載：佐賀', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (95, '国内代理掲載：埼玉', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (96, '国内代理掲載：三重', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (97, '国内代理掲載：山形', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (98, '国内代理掲載：新潟', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (99, '国内代理掲載：神奈川', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (100, '国内代理掲載：青森', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (101, '国内代理掲載：静岡', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (102, '国内代理掲載：石川', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (103, '国内代理掲載：千葉', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (104, '国内代理掲載：大阪', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (105, '国内代理掲載：長野', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (106, '国内代理掲載：東京', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (107, '国内代理掲載：栃木', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (108, '国内代理掲載：富山', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (109, '国内代理掲載：福井', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (110, '国内代理掲載：福岡', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (111, '国内代理掲載：福島', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (112, '国内代理掲載：兵庫', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (113, '国内代理掲載：北海道', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (114, '小樽(H&S)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (115, '小樽(JAL)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (116, '新潟(MV LINE)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (117, '新門司(MOANA BLUE/ECLA)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (118, '神戸(JFA摩耶埠頭)', '神戸営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (119, '神戸(MOANA BLUE/富士テクノトランス)', '神戸営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (120, '神戸(SYNC Mikyフロンティア)', '神戸営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (121, '神戸（サンフェニックス京浜）', '神戸営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (122, '神戸六甲(GL上組ダイハツ)', '神戸営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (123, '神戸六甲(HUB上組)', '神戸営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (124, '川崎千鳥(SYNC グローバルロジ)', '横浜支店', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (125, '川崎千鳥町(臨 SYNCヤード)', '横浜支店', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (126, '大黒K号地(INTER 東商EX)', '横浜支店', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (127, '大阪(HUBオートセンターNo.3)', '大阪営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (128, '大阪(SYNC) in stock', '大阪営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (129, '大阪(SYNC) Order', '大阪営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (130, '大阪(サンフェニックス　郵船港運)', '大阪営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (131, '大阪助松(AUTOHUB)', '大阪営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (132, '大阪泉北（ECLA ※ロシア向け）', '大阪営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (133, '大阪泉北（JAL ECLA）', '大阪営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (134, '調布', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (135, '長州出島(リアル下関海陸)', '下関営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (136, '田野浦海岸（AUTOHUB GENEQ）', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (137, '唐津(JAL)', '下関営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (138, '東扇島(SYNC 日通)', '横浜支店', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (139, '桃太郎', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (140, '苫小牧(NAVIS)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (141, '博多(SYNC) Order', '下関営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (142, '富山 DV MOTORS(グリーンヤード)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (143, '富山 JAL(グリーンヤード)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (144, '富山 MIRAI-LINE(グリーンヤード)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (145, '富山 NAVIS(グリーンヤード)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (146, '富山(JAL)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (147, '富山(MIRAI LINE)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (148, '富山(MK GROUP)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (149, '富山(NAVIS)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (150, '富山(アクシス)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (151, '富津(INTER ECL)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (152, '舞鶴(JAL)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (153, '舞鶴（MW-LINE）', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (154, '福井(MK GROUP)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (155, '福島(POWERVEHICLE　代理掲載)', 'BF用', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (156, '名古屋(ECL 東陽倉庫稲永)', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (157, '名古屋(KANALOA　ナガセ自動車)', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (158, '名古屋(KANALOA　伊勢湾海運)', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (159, '名古屋(KANALOA弥富西モータープール)', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (160, '名古屋(MOANA BLUE/F.RISE)', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (161, '名古屋(SPX上組 西五区)', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (162, '名古屋(SPX上組空見)', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (163, '名古屋(SYNC操出)', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (164, '名古屋(SYNC操出)in stock※20211221', '名古屋営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (165, '木更津（ECLA ※ロシア向け）', '木更津営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (166, '木更津（INTER ECL)', '木更津営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (167, '木更津(JAL ECLA)', '木更津営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (168, '木更津(JFA)', '木更津営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (169, '木更津(MOANA BLUE/ECLA)', '木更津営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (170, '木更津(桃太郎 Kenya向け)', '木更津営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (171, '野田', '木更津営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');
INSERT INTO `m_yard` VALUES (172, '野田(シーリンクヤード)', '木更津営業所', '', '', '', '', '', '', '', '', '', '', '2022-11-02 15:10:32', '2022-11-02 15:10:32');

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `extra_members_column1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '追加カラム1',
  `extra_members_column2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '追加カラム2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `members_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of members
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_10_30_102811_create_car_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_10_30_102811_create_chat_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_10_30_102811_create_import_table', 1);
INSERT INTO `migrations` VALUES (8, '2022_10_30_102811_create_m_billdepart_table', 1);
INSERT INTO `migrations` VALUES (9, '2022_10_30_102811_create_m_cartype_table', 1);
INSERT INTO `migrations` VALUES (10, '2022_10_30_102811_create_m_checkdepart_table', 1);
INSERT INTO `migrations` VALUES (11, '2022_10_30_102811_create_m_checkfee_table', 1);
INSERT INTO `migrations` VALUES (12, '2022_10_30_102811_create_m_color_table', 1);
INSERT INTO `migrations` VALUES (13, '2022_10_30_102811_create_m_depart_table', 1);
INSERT INTO `migrations` VALUES (14, '2022_10_30_102811_create_m_import_table', 1);
INSERT INTO `migrations` VALUES (15, '2022_10_30_102811_create_m_maker_table', 1);
INSERT INTO `migrations` VALUES (16, '2022_10_30_102811_create_m_member_table', 1);
INSERT INTO `migrations` VALUES (17, '2022_10_30_102811_create_m_ordertype1_table', 1);
INSERT INTO `migrations` VALUES (18, '2022_10_30_102811_create_m_ordertype2_table', 1);
INSERT INTO `migrations` VALUES (19, '2022_10_30_102811_create_m_shipper_table', 1);
INSERT INTO `migrations` VALUES (20, '2022_10_30_102811_create_m_status_table', 1);
INSERT INTO `migrations` VALUES (21, '2022_10_30_102811_create_m_yard_table', 1);
INSERT INTO `migrations` VALUES (22, '2022_10_30_102811_create_newmaster_table', 1);
INSERT INTO `migrations` VALUES (23, '2022_10_30_102811_create_order_table', 1);
INSERT INTO `migrations` VALUES (24, '2022_12_14_000000_create_admins_table', 1);
INSERT INTO `migrations` VALUES (25, '2022_12_14_000000_create_members_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `gl_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipper_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maker_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `car_model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `car_body_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `colour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reg_date` date NULL DEFAULT NULL,
  `import_yard1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `import_yard2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `import_expect_date` date NULL DEFAULT NULL,
  `import_date` date NULL DEFAULT NULL,
  `shipping_date` date NULL DEFAULT NULL,
  `moving_date` date NULL DEFAULT NULL,
  `moving_yard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `purchase_total` int NULL DEFAULT NULL,
  `total_profit` int NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pdf_link1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pdf_link2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pdf_link3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_car
-- ----------------------------

-- ----------------------------
-- Table structure for t_chat
-- ----------------------------
DROP TABLE IF EXISTS `t_chat`;
CREATE TABLE `t_chat`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `chat_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_branch_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `chat_date` date NOT NULL,
  `chat_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `chat_belong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `chat_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `chat_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_chat
-- ----------------------------

-- ----------------------------
-- Table structure for t_import
-- ----------------------------
DROP TABLE IF EXISTS `t_import`;
CREATE TABLE `t_import`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `gl_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_order_no` int NOT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_date` date NULL DEFAULT NULL,
  `delivery_date` date NULL DEFAULT NULL,
  `purchasing_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `purchase_amount` int NULL DEFAULT NULL,
  `consumption_tax` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_import
-- ----------------------------

-- ----------------------------
-- Table structure for t_newmaster
-- ----------------------------
DROP TABLE IF EXISTS `t_newmaster`;
CREATE TABLE `t_newmaster`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `export_check` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `departure_scheduled_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sales_side_shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `car_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `public_flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sale_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `situation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sales_month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ref_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `maker_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `car_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `car_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `supply_date` date NULL DEFAULT NULL,
  `inventory_days` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `yard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `wise_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `export_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `regist_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `regist_month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `car_body_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `distance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `colour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_newmaster
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `gl_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_order_no` int NOT NULL,
  `requested_date` date NULL DEFAULT NULL,
  `passed_day_count` int NULL DEFAULT NULL,
  `order_category1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_division2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `priority_flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `billing_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `billing_amount` int NULL DEFAULT NULL,
  `tax_rate` int NULL DEFAULT NULL,
  `consumption_tax` int NULL DEFAULT NULL,
  `site_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sales_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deadline` date NULL DEFAULT NULL,
  `complete_date` date NULL DEFAULT NULL,
  `delivery_date` date NULL DEFAULT NULL,
  `chat_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `check_agency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bf_maintain_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `office_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `worker_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `save_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `check_date` date NULL DEFAULT NULL,
  `recheck_date` date NULL DEFAULT NULL,
  `pass_flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `failed_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `repair_destination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `repair_amount` int NULL DEFAULT NULL,
  `check_fee_payment_date` date NULL DEFAULT NULL,
  `deleted_original` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `certificate_receipt_date` date NULL DEFAULT NULL,
  `certificate_pass_date` date NULL DEFAULT NULL,
  `billing_month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `check_fee_excluding_tax` int NULL DEFAULT NULL,
  `manage_fee_with_tax` int NULL DEFAULT NULL,
  `business_trip_inspection_fee` int NULL DEFAULT NULL,
  `subcontract_depart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subcontract_fee` int NULL DEFAULT NULL,
  `gl_fee` int NULL DEFAULT NULL,
  `remark1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remark2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remark3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
