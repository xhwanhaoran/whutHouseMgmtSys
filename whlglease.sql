/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : whlglease

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 27/11/2017 19:46:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Hs_Building
-- ----------------------------
DROP TABLE IF EXISTS `Hs_Building`;
CREATE TABLE `Hs_Building`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋楼栋编号',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '楼栋名称',
  `FinishTime` date NOT NULL COMMENT '竣工时间',
  `FloorArea` float NOT NULL COMMENT '占地面积',
  `UsedArea` float NOT NULL COMMENT '使用面积',
  `FloorCount` int(11) DEFAULT NULL COMMENT '楼层数',
  `RegionId` int(11) DEFAULT NULL COMMENT '楼栋所属地区',
  `Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '楼栋描述',
  `SupportFund` decimal(18, 0) DEFAULT 0 COMMENT '维修基金',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `BuildingRegion`(`RegionId`) USING BTREE,
  INDEX `BuildingId`(`Id`) USING BTREE,
  INDEX `BuildingId_2`(`Id`) USING BTREE,
  INDEX `BuildingId_3`(`Id`) USING BTREE,
  INDEX `BuildingId_4`(`Id`) USING BTREE,
  INDEX `BuildingId_5`(`Id`) USING BTREE,
  INDEX `BuildingId_6`(`Id`) USING BTREE,
  INDEX `BuildingId_7`(`Id`) USING BTREE,
  INDEX `BuildingId_8`(`Id`) USING BTREE,
  INDEX `BuildingId_9`(`Id`) USING BTREE,
  INDEX `Id`(`Id`) USING BTREE,
  INDEX `Id_2`(`Id`) USING BTREE,
  INDEX `Id_3`(`Id`) USING BTREE,
  INDEX `Id_4`(`Id`) USING BTREE,
  INDEX `Id_5`(`Id`) USING BTREE,
  INDEX `Id_6`(`Id`) USING BTREE,
  INDEX `Id_7`(`Id`) USING BTREE,
  INDEX `Id_8`(`Id`) USING BTREE,
  CONSTRAINT `hs_building_ibfk_1` FOREIGN KEY (`RegionId`) REFERENCES `Hs_Region` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '楼栋信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Hs_Building
-- ----------------------------
INSERT INTO `Hs_Building` VALUES (1, '1栋', '1978-01-01', 0, 0, 4, 1, '', NULL);
INSERT INTO `Hs_Building` VALUES (2, '2栋', '1978-01-01', 0, 0, 4, 1, '5单元4层2室', 0);
INSERT INTO `Hs_Building` VALUES (3, '1栋11', '2017-11-04', 41.4, 41.22, 66, 2, '南湖大草原', 0);
INSERT INTO `Hs_Building` VALUES (4, '8栋（原307）', '2012-04-24', 0, 0, 0, 1, '3单元7层2室，原307', 0);
INSERT INTO `Hs_Building` VALUES (5, '9栋', '2012-04-24', 0, 0, 0, 1, '3单元6层2室', 0);
INSERT INTO `Hs_Building` VALUES (6, '10栋', '2012-04-24', 0, 0, 0, 1, '3单元3层2室', 0);
INSERT INTO `Hs_Building` VALUES (7, '11栋', '2012-04-24', 0, 0, 0, 1, '2单元7层2室', 0);
INSERT INTO `Hs_Building` VALUES (8, '12栋', '2012-04-24', 0, 0, 0, 1, '4单元3层2室', 0);
INSERT INTO `Hs_Building` VALUES (9, '13栋', '2012-04-24', 0, 0, 0, 1, '3单元3层2室', 0);
INSERT INTO `Hs_Building` VALUES (10, '14栋', '2012-04-24', 0, 0, 0, 1, '3单元5层2室', 0);
INSERT INTO `Hs_Building` VALUES (11, '15栋', '2012-04-24', 0, 0, 0, 1, '2单元3层2室', 0);
INSERT INTO `Hs_Building` VALUES (13, '18栋', '2012-04-24', 0, 0, 0, 1, '4单元4层2室', 0);
INSERT INTO `Hs_Building` VALUES (14, '19栋（原304）', '2012-04-24', 0, 0, 0, 1, '2单元7层2室，原304栋', 0);
INSERT INTO `Hs_Building` VALUES (15, '20栋（原305）', '2012-04-24', 0, 0, 0, 1, '3单元7层2室，原305', 0);
INSERT INTO `Hs_Building` VALUES (16, '21栋（原306）', '2012-04-24', 0, 0, 0, 1, '3单元7层2室，原306栋', 0);
INSERT INTO `Hs_Building` VALUES (17, '24栋', '2012-04-24', 0, 0, 0, 1, '1单元5层3室', 0);
INSERT INTO `Hs_Building` VALUES (18, '25栋', '2012-04-24', 0, 0, 0, 1, '1单元5层3室', 0);
INSERT INTO `Hs_Building` VALUES (19, '26栋', '2012-04-24', 0, 0, 0, 1, '1单元5层3室', 0);
INSERT INTO `Hs_Building` VALUES (20, '27栋', '2012-04-24', 0, 0, 0, 1, '1单元5层3室', 0);
INSERT INTO `Hs_Building` VALUES (21, '28栋', '2012-04-24', 0, 0, 0, 1, '1单元5层3室', 0);
INSERT INTO `Hs_Building` VALUES (22, '29栋（原301）', '2012-04-24', 0, 0, 0, 1, '5单元7层2室，原301栋', 0);
INSERT INTO `Hs_Building` VALUES (23, '30栋（原302）', '2012-04-24', 0, 0, 0, 1, '3单元7层2室，原302栋', 0);
INSERT INTO `Hs_Building` VALUES (24, '1栋（原201）', '2012-04-24', 0, 0, 0, 2, '3单元7层2室，原201栋', 0);
INSERT INTO `Hs_Building` VALUES (25, '2栋（原202）', '2012-04-24', 0, 0, 0, 2, '2单元7层2室，原202栋', 0);
INSERT INTO `Hs_Building` VALUES (26, '3栋（原203）', '2012-04-24', 0, 0, 0, 2, '4单元8层2室，原203栋', 0);
INSERT INTO `Hs_Building` VALUES (27, '4栋（原204）', '2012-04-24', 0, 0, 0, 2, '2单元8层2室，原204栋', 0);
INSERT INTO `Hs_Building` VALUES (28, '1栋（原鉴湖401栋）', '2012-04-24', 0, 0, 0, 3, '1单元7层6室，原鉴湖401栋', 0);
INSERT INTO `Hs_Building` VALUES (29, '2栋（原鉴湖402栋）', '2012-04-24', 0, 0, 0, 3, '1单元7楼6室，原鉴湖402栋', 0);
INSERT INTO `Hs_Building` VALUES (30, '3栋（原鉴湖403栋）', '2012-04-24', 0, 0, 0, 3, '1单元7楼6室，原鉴湖403栋', 0);
INSERT INTO `Hs_Building` VALUES (31, '4栋（原鉴湖404栋）', '2012-04-24', 0, 0, 0, 3, '1单元7楼6室，原鉴湖404栋', 0);
INSERT INTO `Hs_Building` VALUES (32, '1栋（原15亩30）', '2012-04-24', 0, 0, 0, 4, '3单元6楼2室，原15亩地30栋', 0);
INSERT INTO `Hs_Building` VALUES (33, '2栋（原15亩31）', '2012-04-24', 0, 0, 0, 4, '3单元6楼2室，原15亩地31栋', 0);
INSERT INTO `Hs_Building` VALUES (34, '3栋（原15亩32）', '2012-04-24', 0, 0, 0, 4, '3单元6楼2室，原15亩地32栋', 0);
INSERT INTO `Hs_Building` VALUES (35, '4栋（原15亩33AB楼）', '2012-04-24', 0, 0, 0, 4, '5单元8楼2室，原15亩地33栋、AB楼', 0);
INSERT INTO `Hs_Building` VALUES (36, '5栋（原15亩34青年楼）', '2012-04-24', 0, 0, 0, 4, '7单元8楼2室，原15亩地34栋、青年楼', 0);
INSERT INTO `Hs_Building` VALUES (37, '6栋（原15亩35青年楼）', '2012-04-24', 0, 0, 0, 4, '8单元8楼2室，原15亩地35栋、青年楼', 0);
INSERT INTO `Hs_Building` VALUES (38, '1栋（原荷花村101）', '2012-04-24', 0, 0, 0, 5, '3单元6楼2室，原荷花村101栋', 0);
INSERT INTO `Hs_Building` VALUES (39, '2栋（原荷花村102）', '2012-04-24', 0, 0, 0, 5, '3单元6楼2室，原荷花村102栋', 0);
INSERT INTO `Hs_Building` VALUES (40, '3栋（原荷花村103）', '2012-04-24', 0, 0, 0, 5, '4单元6楼2室，原荷花村103栋', 0);
INSERT INTO `Hs_Building` VALUES (41, '4栋（原荷花村104）', '2012-04-24', 0, 0, 0, 5, '3单元6楼2室，原荷花村104栋', 0);
INSERT INTO `Hs_Building` VALUES (42, '5栋（原荷花村105）', '2012-04-24', 0, 0, 0, 5, '3单元6楼2室，原荷花村105栋', 0);
INSERT INTO `Hs_Building` VALUES (43, '6栋（原荷花村106）', '2012-04-24', 0, 0, 0, 5, '3单元6楼2室，原荷花村106栋', 0);
INSERT INTO `Hs_Building` VALUES (44, '7栋（原荷花村107）', '2012-04-24', 0, 0, 0, 5, '2单元6楼2室，原荷花村107栋', 0);
INSERT INTO `Hs_Building` VALUES (45, '1栋（原化专楼108）', '2012-04-24', 0, 0, 0, 6, '2单元7楼2室，原化专楼108栋', 0);
INSERT INTO `Hs_Building` VALUES (46, '2栋（原化专楼109）', '2012-04-24', 0, 0, 0, 6, '2单元7楼2室，原化专楼109栋', 0);
INSERT INTO `Hs_Building` VALUES (47, '3栋（原化专楼110）', '2012-04-24', 0, 0, 0, 6, '2单元7楼2室，原化专楼110栋', 0);
INSERT INTO `Hs_Building` VALUES (48, '4栋（原化专楼111）', '2012-04-24', 0, 0, 0, 6, '2单元7楼2室，原化专楼111栋', 0);
INSERT INTO `Hs_Building` VALUES (49, '4栋（原西区4）', '2012-04-24', 0, 0, 0, 7, '2单元7楼2室，西区4栋', 0);
INSERT INTO `Hs_Building` VALUES (50, '5栋（原西区5）', '2012-04-24', 0, 0, 0, 7, '2单元7楼2室，西区5栋', 0);
INSERT INTO `Hs_Building` VALUES (51, '6栋（原西区6）', '2012-04-24', 0, 0, 0, 7, '3单元6楼2室，西区6栋', 0);
INSERT INTO `Hs_Building` VALUES (52, '7栋（原西区7）', '2012-04-24', 0, 0, 0, 7, '2单元7楼2室，西区7栋', 0);
INSERT INTO `Hs_Building` VALUES (53, '8栋（原西区8）', '2012-04-24', 0, 0, 0, 7, '3单元7楼2室，西区8栋', 0);
INSERT INTO `Hs_Building` VALUES (54, '9栋（原西区9）', '2012-04-24', 0, 0, 0, 7, '2单元7楼2室，西区9栋', 0);
INSERT INTO `Hs_Building` VALUES (55, '10栋（原西区10）', '2012-04-24', 0, 0, 0, 7, '3单元5楼2室，西区10栋', 0);
INSERT INTO `Hs_Building` VALUES (56, '11栋（原西区11）', '2012-04-24', 0, 0, 0, 7, '2单元8楼2室，西区11栋', 0);
INSERT INTO `Hs_Building` VALUES (57, '14栋（原西区14）', '2012-04-24', 0, 0, 0, 7, '1单元15楼6室，西区14栋', 0);
INSERT INTO `Hs_Building` VALUES (58, '15栋（原西区15）', '2012-04-24', 0, 0, 0, 7, '1单元15楼6室，西区15栋', 0);
INSERT INTO `Hs_Building` VALUES (59, '16栋（原西区16）', '2012-04-24', 0, 0, 0, 7, '2单元5楼2室，西区16栋', 0);
INSERT INTO `Hs_Building` VALUES (60, '17栋（原西区17）', '2012-04-24', 0, 0, 0, 7, '2单元5楼2室，西区17栋', 0);
INSERT INTO `Hs_Building` VALUES (61, '18栋（原西区18）', '2012-04-24', 0, 0, 0, 7, '3单元6楼2室，西区18栋', 0);
INSERT INTO `Hs_Building` VALUES (62, '19栋（原西区19）', '2012-04-24', 0, 0, 0, 7, '2单元6楼2室，西区19栋', 0);
INSERT INTO `Hs_Building` VALUES (63, '20栋（原西区20）', '2012-04-24', 0, 0, 0, 7, '2单元6楼2室，西区20栋', 0);
INSERT INTO `Hs_Building` VALUES (64, '21栋（原西区21）', '2012-04-24', 0, 0, 0, 7, '2单元6楼2室，西区21栋', 0);
INSERT INTO `Hs_Building` VALUES (65, '22栋（原西区22）', '2012-04-24', 0, 0, 0, 7, '2单元6楼2室，西区22栋', 0);
INSERT INTO `Hs_Building` VALUES (66, '23栋（原西区23）', '2012-04-24', 0, 0, 0, 7, '2单元6楼2室，西区23栋', 0);
INSERT INTO `Hs_Building` VALUES (67, '24栋（原西区24）', '2012-04-24', 0, 0, 0, 7, '7单元6楼2室，西区24栋', 0);
INSERT INTO `Hs_Building` VALUES (68, '25栋（原西区25）', '2012-04-24', 0, 0, 0, 7, '6单元6楼2室，西区25栋', 0);
INSERT INTO `Hs_Building` VALUES (69, '26栋（原西区26）', '2012-04-24', 0, 0, 0, 7, '4单元6楼2室，西区26栋', 0);
INSERT INTO `Hs_Building` VALUES (70, '27栋（原西区27）', '2012-04-24', 0, 0, 0, 7, '2单元6楼2室，西区27栋', 0);
INSERT INTO `Hs_Building` VALUES (71, '28栋（原西区28）', '2012-04-24', 0, 0, 0, 7, '5单元7楼2室，西区28栋', 0);
INSERT INTO `Hs_Building` VALUES (72, '29栋（原西区29）', '2012-04-24', 0, 0, 0, 7, '2单元8楼2室，西区29栋', 0);
INSERT INTO `Hs_Building` VALUES (73, '36栋（原东区6）', '2012-04-24', 0, 0, 0, 7, '1单元3楼2室，东区6栋', 0);
INSERT INTO `Hs_Building` VALUES (74, '37栋（原东区7）', '2012-04-24', 0, 0, 0, 7, '1单元3楼2室，东区7栋', 0);
INSERT INTO `Hs_Building` VALUES (75, '38栋（原东区8）', '2012-04-24', 0, 0, 0, 7, '1单元3楼2室，东区8栋', 0);
INSERT INTO `Hs_Building` VALUES (76, '39栋（原东区9）', '2012-04-24', 0, 0, 0, 7, '3单元7楼3室，东区9栋', 0);
INSERT INTO `Hs_Building` VALUES (77, '40栋（原东区10）', '2012-04-24', 0, 0, 0, 7, '3单元7楼3室，东区10栋', 0);
INSERT INTO `Hs_Building` VALUES (78, '41栋（原南区1）', '2012-04-24', 0, 0, 0, 7, '4单元7楼2室，南区1栋', 0);
INSERT INTO `Hs_Building` VALUES (79, '42栋（原南区2）', '2012-04-24', 0, 0, 0, 7, '4单元7楼2室，南区2栋', 0);
INSERT INTO `Hs_Building` VALUES (80, '43栋（原南区3）', '2012-04-24', 0, 0, 0, 7, '3单元7楼2室，南区3栋', 0);
INSERT INTO `Hs_Building` VALUES (81, '44栋（原南区4）', '2012-04-24', 0, 0, 0, 7, '3单元7楼2室，南区4栋', 0);
INSERT INTO `Hs_Building` VALUES (82, '45栋（原南区5）', '2012-04-24', 0, 0, 0, 7, '3单元7楼2室，南区5栋', 0);
INSERT INTO `Hs_Building` VALUES (83, '46栋（原南区6）', '2012-04-24', 0, 0, 0, 7, '6单元6楼2室，南区6栋', 0);
INSERT INTO `Hs_Building` VALUES (84, '47栋（原南区7）', '2012-04-24', 0, 0, 0, 7, '6单元6楼2室，南区7栋', 0);
INSERT INTO `Hs_Building` VALUES (85, '48栋（原南区8）', '2012-04-24', 0, 0, 0, 7, '3单元7楼2室，南区8栋', 0);
INSERT INTO `Hs_Building` VALUES (86, '北1栋', '2012-04-24', 0, 0, 6, 8, '2单元6楼2室', 0);
INSERT INTO `Hs_Building` VALUES (87, '北2栋', '2012-04-24', 0, 0, 6, 8, '5单元6楼2室', 0);
INSERT INTO `Hs_Building` VALUES (88, '北3栋', '2012-04-24', 0, 0, 0, 8, '4单元6楼2室', 0);
INSERT INTO `Hs_Building` VALUES (89, '北4栋', '2012-04-24', 0, 0, 6, 8, '3单元6楼2室', 0);
INSERT INTO `Hs_Building` VALUES (90, '北5栋（原北7栋）', '2012-04-24', 0, 0, 6, 8, '5单元6楼2层，原北7栋', 0);
INSERT INTO `Hs_Building` VALUES (91, '北6栋（原北11栋）', '2012-04-24', 0, 0, 6, 8, '4单元6楼2室，原北11栋', 0);
INSERT INTO `Hs_Building` VALUES (92, '北7栋（原北12栋）', '2012-04-24', 0, 0, 6, 8, '3单元6楼3室，原北12栋', 0);
INSERT INTO `Hs_Building` VALUES (93, '北8栋（原北13栋）', '2012-04-24', 0, 0, 6, 8, '5单元6楼2室，原北13栋', 0);
INSERT INTO `Hs_Building` VALUES (94, '北9栋（原北14栋）', '2012-04-24', 0, 0, 6, 8, '2单元6楼2室，原北14栋', 0);
INSERT INTO `Hs_Building` VALUES (95, '北10栋（原北17栋）', '2012-04-24', 0, 0, 6, 8, '3单元6楼2室，原北17栋', 0);
INSERT INTO `Hs_Building` VALUES (96, '北11栋（原北18栋）', '2012-04-24', 0, 0, 6, 8, '3单元6楼2室，原北18栋', 0);
INSERT INTO `Hs_Building` VALUES (97, '北12栋（原北19栋）', '2012-04-24', 0, 0, 6, 8, '3单元6楼2室，原北19栋', 0);
INSERT INTO `Hs_Building` VALUES (98, '北13栋（原北25栋）', '2012-04-24', 0, 0, 4, 8, '4单元4楼2室，原北25栋', 0);
INSERT INTO `Hs_Building` VALUES (99, '北14栋（原北26栋）', '2012-04-24', 0, 0, 4, 8, '2单元4楼2室，原北26栋', 0);
INSERT INTO `Hs_Building` VALUES (100, '南1栋', '2012-04-24', 0, 0, 5, 9, '1单元5楼2室', 0);
INSERT INTO `Hs_Building` VALUES (101, '南2栋', '2012-04-24', 0, 0, 5, 9, '1单元5楼2室', 0);
INSERT INTO `Hs_Building` VALUES (102, '南3栋', '2012-04-24', 0, 0, 4, 9, '4单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (103, '南4栋', '2012-04-24', 0, 0, 4, 9, '4单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (104, '南5栋', '2012-04-24', 0, 0, 4, 9, '5单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (105, '南6栋', '2012-04-24', 0, 0, 4, 9, '5单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (106, '南7栋', '2012-04-24', 0, 0, 4, 9, '5单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (107, '南8栋', '2012-04-24', 0, 0, 4, 9, '5单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (108, '南9栋', '2012-04-24', 0, 0, 4, 9, '4单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (109, '南10栋', '2012-04-24', 0, 0, 4, 9, '3单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (110, '南11栋', '2012-04-24', 0, 0, 4, 9, '3单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (111, '南12栋', '2012-04-24', 0, 0, 4, 9, '3单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (112, '南13栋', '2012-04-24', 0, 0, 4, 9, '3单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (113, '南14栋', '2012-04-24', 0, 0, 4, 9, '3单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (114, '南15栋', '2012-04-24', 0, 0, 4, 9, '3单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (115, '南16栋', '2012-04-24', 0, 0, 4, 9, '3单元4楼2室', 0);
INSERT INTO `Hs_Building` VALUES (116, '南17栋', '2012-04-24', 0, 0, 3, 9, '2单元3楼4室', 0);
INSERT INTO `Hs_Building` VALUES (117, '南18栋', '2012-04-24', 0, 0, 3, 9, '2单元3楼4室', 0);
INSERT INTO `Hs_Building` VALUES (118, '南19栋', '2012-04-24', 0, 0, 6, 9, '2单元4楼6室（第1层4室） ', 0);
INSERT INTO `Hs_Building` VALUES (119, '南20栋（原东-南22栋）', '2012-04-24', 0, 0, 6, 9, '1单元6楼2室，原东-南22栋', 0);
INSERT INTO `Hs_Building` VALUES (120, '南21栋（原东-南23栋）', '2012-04-24', 0, 0, 6, 9, '1单元6楼2室，原东-南23栋', 0);
INSERT INTO `Hs_Building` VALUES (121, '南22栋（原东-南24栋）', '2012-04-24', 0, 0, 5, 9, '4单元5楼2室，原东-南24栋', 0);
INSERT INTO `Hs_Building` VALUES (122, '南23栋（原东-南25栋）', '2012-04-24', 0, 0, 6, 9, '1单元6楼2室，原东-南25栋', 0);
INSERT INTO `Hs_Building` VALUES (123, '南24栋（原东-南26栋）', '2012-04-24', 0, 0, 5, 9, '4单元5楼2室，原东-南26栋', 0);
INSERT INTO `Hs_Building` VALUES (124, '南25栋（原东-南28栋）', '2012-04-24', 0, 0, 4, 9, '3单元4楼4室，原东-南22栋', 0);
INSERT INTO `Hs_Building` VALUES (125, '南26栋（原东-南29栋）', '2012-04-24', 0, 0, 6, 9, '3单元6楼2室，原东-南29栋', 0);
INSERT INTO `Hs_Building` VALUES (126, '南27栋（原东-南30栋）', '2012-04-24', 0, 0, 6, 9, '3单元6楼2室，原东-南30栋', 0);
INSERT INTO `Hs_Building` VALUES (127, '南28栋（原东-南31栋）', '2012-04-24', 0, 0, 6, 9, '3单元6楼2室，原东-南22栋', 0);
INSERT INTO `Hs_Building` VALUES (128, '南29栋（原东-南32栋）', '2012-04-24', 0, 0, 4, 9, '3单元4楼4室，原东-南32栋', 0);
INSERT INTO `Hs_Building` VALUES (129, '南30栋（原东-南35栋）', '2012-04-24', 0, 0, 5, 9, '4单元5楼2室，原东-南35栋', 0);
INSERT INTO `Hs_Building` VALUES (130, '南31栋（原东-南36栋）', '2012-04-24', 0, 0, 5, 9, '4单元5楼2室，原东-南36栋', 0);
INSERT INTO `Hs_Building` VALUES (131, '南32栋（原东-南37栋）', '2012-04-24', 0, 0, 5, 9, '4单元5楼2室，原东-南37栋', 0);
INSERT INTO `Hs_Building` VALUES (132, '南33栋（原东-南38栋）', '2012-04-24', 0, 0, 5, 9, '4单元5楼2室，原东-南38栋', 0);
INSERT INTO `Hs_Building` VALUES (133, '友谊小区1栋', '2012-04-24', 0, 0, 6, 10, '2单元6楼2室，原中1栋', 0);
INSERT INTO `Hs_Building` VALUES (134, '友谊小区2栋', '2012-04-24', 0, 0, 6, 10, '2单元6楼2室，原中2栋', 0);
INSERT INTO `Hs_Building` VALUES (135, '友谊小区3栋', '2012-04-24', 0, 0, 6, 10, '2单元6楼2室，原中3栋', 0);
INSERT INTO `Hs_Building` VALUES (136, '友谊小区4栋', '2012-04-24', 0, 0, 6, 10, '4单元6楼2室，原中4栋', 0);
INSERT INTO `Hs_Building` VALUES (137, '友谊小区5栋', '2012-04-24', 0, 0, 6, 10, '3单元6楼2室，原中5栋', 0);
INSERT INTO `Hs_Building` VALUES (138, '友谊小区6栋', '2012-04-24', 0, 0, 6, 10, '4单元6楼2室，原中6栋', 0);
INSERT INTO `Hs_Building` VALUES (139, '友谊小区7栋', '2012-04-24', 0, 0, 6, 10, '2单元6楼2室，原中7栋', 0);
INSERT INTO `Hs_Building` VALUES (140, '友谊小区8栋', '2012-04-24', 0, 0, 6, 10, '3单元6楼2室，原中8栋', 0);
INSERT INTO `Hs_Building` VALUES (141, '友谊小区9栋', '2012-04-24', 0, 0, 6, 10, '3单元6楼2室，原中9栋', 0);
INSERT INTO `Hs_Building` VALUES (142, '友谊小区10栋', '2012-04-24', 0, 0, 6, 10, '3单元6楼2室，原中10栋', 0);
INSERT INTO `Hs_Building` VALUES (143, '友谊小区11栋', '2012-04-24', 0, 0, 6, 10, '2单元6楼2室，原中11栋', 0);
INSERT INTO `Hs_Building` VALUES (144, '友谊小区12栋', '2012-04-24', 0, 0, 6, 10, '4单元6楼3室，原中12栋', 0);
INSERT INTO `Hs_Building` VALUES (145, '友谊小区13栋', '2012-04-24', 0, 0, 6, 10, '3单元6楼2室，原中13栋', 0);
INSERT INTO `Hs_Building` VALUES (146, '友谊小区14栋', '2012-04-24', 0, 0, 6, 10, '3单元6楼2室，原中14栋', 0);
INSERT INTO `Hs_Building` VALUES (147, '友谊小区15栋', '2012-04-24', 0, 0, 6, 10, '1单元6楼2室，原中15栋', 0);
INSERT INTO `Hs_Building` VALUES (148, '友谊小区16栋', '2012-04-24', 0, 0, 6, 10, '3单元6楼2室，原中16栋', 0);
INSERT INTO `Hs_Building` VALUES (149, '友谊小区17栋', '2012-04-24', 0, 0, 6, 10, '3单元6楼2室，原中17栋', 0);
INSERT INTO `Hs_Building` VALUES (150, '1栋（原余西6栋）', '2012-04-24', 0, 0, 3, 11, '2单元3楼4室，原余西6栋', 0);
INSERT INTO `Hs_Building` VALUES (151, '2栋（原余西7栋）', '2012-04-24', 0, 0, 3, 11, '2单元3楼4室，原余西7栋', 0);
INSERT INTO `Hs_Building` VALUES (152, '3栋（原余西8栋）', '2012-04-24', 0, 0, 5, 11, '2单元5楼3室，原余西8栋', 0);
INSERT INTO `Hs_Building` VALUES (153, '4栋（原余西9栋）', '2012-04-24', 0, 0, 5, 11, '2单元5楼3室，原余西9栋', 0);
INSERT INTO `Hs_Building` VALUES (154, '5栋（原余西10栋）', '2012-04-24', 0, 0, 5, 11, '3单元5楼2室，原余西10栋', 0);
INSERT INTO `Hs_Building` VALUES (155, '6栋（原余西11栋）', '2012-04-24', 0, 0, 5, 11, '3单元5楼2室，原余西11栋', 0);
INSERT INTO `Hs_Building` VALUES (156, '7栋（原余西12栋）', '2012-04-24', 0, 0, 5, 11, '3单元5楼2室，原余西12栋', 0);
INSERT INTO `Hs_Building` VALUES (157, '8栋（原余西13栋）', '2012-04-24', 0, 0, 5, 11, '3单元5楼2室，原余西13栋', 0);
INSERT INTO `Hs_Building` VALUES (158, '9栋（原余西14栋）', '2012-04-24', 0, 0, 5, 11, '3单元5楼2室，原余西14栋', 0);
INSERT INTO `Hs_Building` VALUES (159, '10栋（原余西15栋）', '2012-04-24', 0, 0, 8, 11, '1单元8楼3室，原余西15栋', 0);
INSERT INTO `Hs_Building` VALUES (160, '11栋（原余西16栋）', '2012-04-24', 0, 0, 8, 11, '1单元8楼3室，原余西16栋', 0);
INSERT INTO `Hs_Building` VALUES (161, '12栋（原余西18栋）', '2012-04-24', 0, 0, 6, 11, '3单元6楼2室，原余西18栋', 0);
INSERT INTO `Hs_Building` VALUES (164, '南湖', '2017-11-04', 41.4, 41.22, 66, 1, '南湖大草原', NULL);

-- ----------------------------
-- Table structure for Hs_House
-- ----------------------------
DROP TABLE IF EXISTS `Hs_House`;
CREATE TABLE `Hs_House`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋Id',
  `No` int(11) NOT NULL COMMENT '房屋编号',
  `Type` int(11) NOT NULL COMMENT '房屋类型',
  `Layout` int(11) NOT NULL COMMENT '户型',
  `Struct` int(11) NOT NULL COMMENT '房屋结构',
  `Status` int(11) NOT NULL COMMENT '房屋使用状态',
  `BuildArea` double DEFAULT NULL COMMENT '建筑面积',
  `UsedArea` double DEFAULT NULL COMMENT '使用面积',
  `BasementArea` double DEFAULT NULL COMMENT '地下室面积',
  `Address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `BuildingId` int(11) NOT NULL COMMENT '所属楼栋',
  `ProId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '房屋产权编号',
  `Remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `Image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `Rental` double DEFAULT NULL COMMENT '房屋租金',
  `FinishTime` date DEFAULT NULL COMMENT '竣工时间',
  `RecordStatus` int(11) DEFAULT NULL COMMENT '状态：0canselect 可选，1selected 已选,2active活动',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `HouseBuilding`(`BuildingId`) USING BTREE,
  INDEX `hs_house_type`(`Type`) USING BTREE,
  INDEX `hs_house_layout`(`Layout`) USING BTREE,
  INDEX `hs_house_struct`(`Struct`) USING BTREE,
  INDEX `hs_house_status`(`Status`) USING BTREE,
  CONSTRAINT `hs_house_ibfk_1` FOREIGN KEY (`BuildingId`) REFERENCES `Hs_Building` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_house_layout` FOREIGN KEY (`Layout`) REFERENCES `PM_HouseType` (`HouseParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_house_status` FOREIGN KEY (`Status`) REFERENCES `PM_HouseType` (`HouseParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_house_struct` FOREIGN KEY (`Struct`) REFERENCES `PM_HouseType` (`HouseParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_house_type` FOREIGN KEY (`Type`) REFERENCES `PM_HouseType` (`HouseParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Hs_House
-- ----------------------------
INSERT INTO `Hs_House` VALUES (1, 1, 6, 19, 29, 24, 37.95, 26.565, 0, '武汉市洪山区珞狮路122号1栋1门101号', 28, '0', '无', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (2, 2, 6, 19, 29, 24, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋1门102号', 29, '0', '1-1-102', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (3, 3, 6, 19, 29, 24, 37.95, 26.565, 0, '武汉市洪山区珞狮路122号1栋1门201号', 31, '0', '无', NULL, 1144, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (4, 4, 6, 19, 29, 24, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋1门202号', 28, '0', '无', NULL, 1143.86, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (5, 5, 6, 19, 29, 24, 37.95, 26.565, 0, '武汉市洪山区珞狮路122号1栋1门301号', 1, '0', '无', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (6, 6, 6, 19, 29, 24, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋1门302号', 1, '0', '无', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (7, 55, 6, 19, 29, 24, 66, 66, 66, '水立方', 5, '66', '凤梨酥', NULL, 26.9, '2017-11-15', 1);
INSERT INTO `Hs_House` VALUES (8, 8, 6, 19, 29, 24, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋1门402号', 1, '0', '1-1-402', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (9, 9, 6, 19, 29, 24, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋2门101号', 1, '0', '无', NULL, 1144, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (10, 10, 6, 19, 29, 24, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋2门102号', 1, '0', '无', NULL, 1144, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (11, 11, 6, 19, 29, 24, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋2门201号', 1, '0', '无', NULL, 1179, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (13, 14, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋2门302号', 1, '0', '无', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (14, 15, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋2门401号', 1, '0', '无', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (15, 16, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋2门402号', 1, '0', '1-2-402', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (16, 17, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋3门101号', 1, '0', '无', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (17, 18, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋3门102号', 1, '0', '1-3-102', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (18, 19, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋3门201号', 1, '0', '无', NULL, 1144, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (19, 20, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋3门202号', 1, '0', '无', NULL, 1359, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (20, 21, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋3门301号', 1, '0', '1-3-301', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (21, 22, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋3门302号', 1, '0', '无', NULL, 1144, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (22, 23, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋3门401号', 1, '0', '1-3-401', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (23, 24, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋3门402号', 1, '0', '无', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (24, 25, 6, 19, 29, 26, 51.38, 35.966, 0, '武汉市洪山区珞狮路122号1栋4门101号', 1, '0', '1-4-101', NULL, 1000, '2000-01-01', NULL);
INSERT INTO `Hs_House` VALUES (25, 40, 6, 19, 29, 26, 66, 66, 66, '水立方', 5, '66', '凤梨酥', NULL, 26.9, '2017-11-15', 1);

-- ----------------------------
-- Table structure for Hs_Region
-- ----------------------------
DROP TABLE IF EXISTS `Hs_Region`;
CREATE TABLE `Hs_Region`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋地区编号',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋地区名称',
  `Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '房屋地区描述',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `RegionId`(`Id`) USING BTREE,
  INDEX `Id`(`Id`) USING BTREE,
  INDEX `Id_2`(`Id`) USING BTREE,
  INDEX `Id_3`(`Id`) USING BTREE,
  INDEX `Id_4`(`Id`) USING BTREE,
  INDEX `Id_5`(`Id`) USING BTREE,
  INDEX `Id_6`(`Id`) USING BTREE,
  INDEX `Id_7`(`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房屋地区信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Hs_Region
-- ----------------------------
INSERT INTO `Hs_Region` VALUES (1, '北湖de南边', '北湖大草原');
INSERT INTO `Hs_Region` VALUES (2, '武汉市洪山区珞狮路157号', '理工大西社区');
INSERT INTO `Hs_Region` VALUES (3, '武汉市洪山区工大路20号', '理工大西社区');
INSERT INTO `Hs_Region` VALUES (4, '武汉市洪山区工大路21号', '理工大西社区');
INSERT INTO `Hs_Region` VALUES (5, '武汉市洪山区洪达巷79号（原石牌岭东一路11号荷花村）', '理工大西社区，原石牌岭东一路11号荷花村');
INSERT INTO `Hs_Region` VALUES (6, '武汉市洪山区洪达巷130号（原石牌岭东一路12号化专楼）', '理工大西社区，原石牌岭东一路12号化专楼');
INSERT INTO `Hs_Region` VALUES (7, '武汉市洪山区珞狮路205号', '理工大东社区');
INSERT INTO `Hs_Region` VALUES (8, '武汉市武昌区和平大道1174号（余家头校区北区）', '理工大余家头校区，原余家头校区北区');
INSERT INTO `Hs_Region` VALUES (9, '武汉市武昌区和平大道1174号（余家头校区南区）', '理工大余家头校区，原余家头校区南区');
INSERT INTO `Hs_Region` VALUES (10, '武汉市武昌区友谊大道382号（友谊小区）', '理工大余家头校区，友谊小区');
INSERT INTO `Hs_Region` VALUES (11, '武汉市武昌区友谊大道229号（三层楼）', '理工大余家头校区，三层楼');
INSERT INTO `Hs_Region` VALUES (14, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (15, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (16, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (17, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (18, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (19, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (20, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (21, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (22, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (23, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (24, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (25, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (26, '南湖', '南湖大草原');
INSERT INTO `Hs_Region` VALUES (27, '北冰洋', '南湖大草原');

-- ----------------------------
-- Table structure for Hs_Staff
-- ----------------------------
DROP TABLE IF EXISTS `Hs_Staff`;
CREATE TABLE `Hs_Staff`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工ID',
  `No` int(11) NOT NULL COMMENT '员工编号',
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工姓名',
  `Sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工性别',
  `MarriageState` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工婚姻情况',
  `Title` int(11) NOT NULL COMMENT '员工职称',
  `Post` int(11) NOT NULL COMMENT '员工职务',
  `Type` int(11) NOT NULL COMMENT '员工类型',
  `Status` int(11) NOT NULL COMMENT '员工状况',
  `Dept` int(11) NOT NULL COMMENT '员工部门',
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工身份证号',
  `JoinTime` date NOT NULL COMMENT '员工参加工作时间',
  `GoUniversityTime` date DEFAULT NULL COMMENT '员工上大学时间',
  `RetireTime` date DEFAULT NULL COMMENT '员工退休时间',
  `Tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工电话',
  `Remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工备注',
  `SpouseName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工配偶姓名',
  `SpouseCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工配偶身份证号',
  `SpouseTitle` int(11) DEFAULT NULL COMMENT '员工配偶职称',
  `SpousePost` int(11) DEFAULT NULL COMMENT '员工配偶职务',
  `SpouseDept` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工配偶工作单位（原为WorkPlace）',
  `SpouseKind` int(11) DEFAULT NULL COMMENT '员工单位性质',
  `IsDeptManage` tinyint(1) DEFAULT NULL COMMENT '是否为院系管理员',
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `BuyAccount` decimal(18, 0) DEFAULT NULL COMMENT '购房款',
  `FixFund` decimal(18, 0) DEFAULT NULL COMMENT '维修基金',
  `SecondJoinTime` date DEFAULT NULL COMMENT '？？',
  `SecondRetireTime` date DEFAULT NULL COMMENT '？？',
  `Dual` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '？？？',
  `Relation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工状态',
  `OtherVal` double DEFAULT NULL COMMENT '员工其他加分',
  `TimeVal` double DEFAULT NULL COMMENT '员工工龄分',
  `TotalVal` double DEFAULT NULL COMMENT '员工总分',
  `DiscountRate` double DEFAULT NULL COMMENT '员工优惠比率',
  `FamilyCode` int(11) DEFAULT NULL COMMENT '员工家庭编号',
  `FirstJobTime` date DEFAULT NULL COMMENT '员工参加工作时间',
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户登陆名',
  `IsSuper` tinyint(4) DEFAULT NULL COMMENT '？',
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `hs_staff_title`(`Title`) USING BTREE,
  INDEX `hs_staff_post`(`Post`) USING BTREE,
  INDEX `hs_staff_dept`(`Dept`) USING BTREE,
  INDEX `hs_staff_type`(`Type`) USING BTREE,
  INDEX `hs_staff_status`(`Status`) USING BTREE,
  INDEX `hs_staff_spouseTitle`(`SpouseTitle`) USING BTREE,
  INDEX `hs_staff_spousePost`(`SpousePost`) USING BTREE,
  CONSTRAINT `hs_staff_dept` FOREIGN KEY (`Dept`) REFERENCES `PM_StaffType` (`StaffParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_staff_post` FOREIGN KEY (`Post`) REFERENCES `PM_StaffType` (`StaffParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_staff_spousePost` FOREIGN KEY (`SpousePost`) REFERENCES `PM_StaffType` (`StaffParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_staff_spouseTitle` FOREIGN KEY (`SpouseTitle`) REFERENCES `PM_StaffType` (`StaffParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_staff_status` FOREIGN KEY (`Status`) REFERENCES `PM_StaffType` (`StaffParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_staff_title` FOREIGN KEY (`Title`) REFERENCES `PM_StaffType` (`StaffParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hs_staff_type` FOREIGN KEY (`Type`) REFERENCES `PM_StaffType` (`StaffParamId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Hs_Staff
-- ----------------------------
INSERT INTO `Hs_Staff` VALUES (1, 1, '翁成立\\\\程西玉', '女', '已婚', 95, 84, 144, 151, 48, '420115191907212822', '1965-05-01', '2015-12-17', '2015-12-17', '13871581704', 'null', '翁成立', 'null', 104, 176, '退休人员', 157, 0, '123', NULL, 189, '0000-00-00', '0000-00-00', NULL, 'active', NULL, NULL, NULL, NULL, 1, '2000-01-01', NULL, NULL);
INSERT INTO `Hs_Staff` VALUES (2, 2, '汤宇凌', '男', '已婚', 95, 84, 144, 151, 49, '420106196204264833', '1988-02-01', '2015-12-17', '2007-04-01', 'null', 'null', '施忠萍', '420111196401204048', 104, 176, '武汉灯泡厂', 157, 0, '123', NULL, 228, '0000-00-00', '0000-00-00', NULL, 'active', NULL, NULL, NULL, NULL, 1, '2000-01-01', NULL, NULL);
INSERT INTO `Hs_Staff` VALUES (3, 3, '郑慧敏', '女', '未知', 95, 89, 144, 151, 65, '42011119640717402X', '1983-09-01', '2015-12-17', '2014-07-01', '13545177093', 'null', '魏志国', '420106196306180315', 104, 176, 'null', 157, 0, '123', NULL, 115, '0000-00-00', '0000-00-00', NULL, 'active', NULL, NULL, NULL, NULL, 1, '2000-01-01', NULL, NULL);
INSERT INTO `Hs_Staff` VALUES (4, 4, '易桂荣', '女', '已婚', 106, 89, 146, 153, 65, '420106195601294900', '1977-01-01', '2015-12-17', '2006-01-01', '63981722', 'null', 'null', 'null', 104, 176, 'null', 157, 0, '123', NULL, 214, '0000-00-00', '0000-00-00', NULL, 'active', NULL, NULL, NULL, NULL, 1, '2000-01-01', NULL, NULL);
INSERT INTO `Hs_Staff` VALUES (5, 5, '张凤令', '男', '已婚', 106, 89, 146, 153, 65, '42010619190310481x', '1960-04-01', '2015-12-17', '1986-08-01', 'null', 'null', '邓淑珍', '420106250321482', 104, 176, '退休人员', 157, 0, '123', NULL, 72, '0000-00-00', '0000-00-00', NULL, 'active', NULL, NULL, NULL, NULL, 1, '2015-12-18', NULL, NULL);
INSERT INTO `Hs_Staff` VALUES (6, 6, '何谨然', '女', '已婚', 106, 89, 146, 153, 65, '422427197302130040', '1995-01-01', '2015-12-17', '2015-12-17', '13971178772', '<空值>#<空值>#<空值>#<空值>', '马骏', '422427197302130040', 104, 176, '华中农业大学楚天学院', 157, 0, '123', NULL, 266, '0000-00-00', '0000-00-00', NULL, 'active', NULL, NULL, NULL, NULL, 1, '2015-12-18', NULL, NULL);
INSERT INTO `Hs_Staff` VALUES (7, 7, '成春莲\\\\朱祖武', '女', '已婚', 106, 89, 146, 153, 65, '420111192205034020', '1954-03-01', '2015-12-17', '2015-12-17', 'null', 'null', '朱祖武', 'null', 104, 176, '退休人员', 157, 0, '123', NULL, 228, '0000-00-00', '0000-00-00', NULL, 'active', NULL, NULL, NULL, NULL, 1, '2000-01-01', NULL, NULL);
INSERT INTO `Hs_Staff` VALUES (8, 8, '段连荣\\\\林象元', '女', '已婚', 106, 89, 146, 153, 65, '420111191903124029', '1975-11-01', '2015-12-17', '1996-09-01', 'null', 'null', '林象元', 'null', 104, 176, '退休人员', 157, 0, '123', NULL, 82, '0000-00-00', '0000-00-00', NULL, 'active', NULL, NULL, NULL, NULL, 1, '2000-01-01', NULL, NULL);

-- ----------------------------
-- Table structure for PM_FixType
-- ----------------------------
DROP TABLE IF EXISTS `PM_FixType`;
CREATE TABLE `PM_FixType`  (
  `FixParamId` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修参数编号',
  `FixParamName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '维修参数名称',
  `ParamTypeId` int(11) NOT NULL COMMENT '维修类型编号',
  `ParamTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修类型名称',
  `IsDelete` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`FixParamId`) USING BTREE,
  INDEX `ParamTypeId`(`ParamTypeId`) USING BTREE,
  CONSTRAINT `PM_FixType_ibfk_1` FOREIGN KEY (`ParamTypeId`) REFERENCES `PM_ParamClass` (`ParamTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '维修参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PM_FixType
-- ----------------------------
INSERT INTO `PM_FixType` VALUES (2, '测试维修3是', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (4, '是', 16, NULL, NULL);
INSERT INTO `PM_FixType` VALUES (5, 'dsa a', 16, NULL, NULL);
INSERT INTO `PM_FixType` VALUES (6, '测试维修', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (12, '测试维修', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (13, '测试维修', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (14, '测试维修', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (15, '测试维修', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (16, '测试维修', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (17, '测试维修', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (18, '测试维修', 16, '维修内容', NULL);
INSERT INTO `PM_FixType` VALUES (19, '测试维修', 16, '维修内容', NULL);

-- ----------------------------
-- Table structure for PM_HouseType
-- ----------------------------
DROP TABLE IF EXISTS `PM_HouseType`;
CREATE TABLE `PM_HouseType`  (
  `HouseParamId` int(11) NOT NULL AUTO_INCREMENT COMMENT '住房参数编号',
  `HouseParamName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '住房参数名称',
  `ParamTypeId` int(11) NOT NULL COMMENT '参数类型编号',
  `ParamTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数类型名称',
  `HouseParamRel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '住房登记关系',
  `IsDelete` tinyint(1) UNSIGNED ZEROFILL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`HouseParamId`) USING BTREE,
  INDEX `ParamTypeId`(`ParamTypeId`) USING BTREE,
  INDEX `HouseParamId`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_2`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_3`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_4`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_5`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_6`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_7`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_8`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_9`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_10`(`HouseParamId`) USING BTREE,
  INDEX `HouseParamId_11`(`HouseParamId`) USING BTREE,
  CONSTRAINT `PM_HouseType_ibfk_1` FOREIGN KEY (`ParamTypeId`) REFERENCES `PM_ParamClass` (`ParamTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '住房参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PM_HouseType
-- ----------------------------
INSERT INTO `PM_HouseType` VALUES (6, '周转房342萨达', 1, '住房类型', '空闲,租赁,公房', 1);
INSERT INTO `PM_HouseType` VALUES (7, '房改房萨达', 1, '住房类型', '购买', 0);
INSERT INTO `PM_HouseType` VALUES (10, '一室一厅1143', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (12, '小三间11试试', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (13, '两室两厅', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (14, '三室一厅', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (15, '三室两厅', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (16, '四室一厅', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (17, '四室两厅', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (18, '套间', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (19, '两室', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (20, '两室半一厅', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (21, '三室半一厅', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (22, '一室半一厅', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (23, '三室', 2, '户型', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (24, '空闲112', 3, '使用状态', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (26, '购买', 3, '使用状态', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (28, '公房', 3, '使用状态', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (29, '钢混', 4, '住房结构', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (31, '砖木', 4, '住房结构', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (32, '砖混', 4, '住房结构', NULL, 0);
INSERT INTO `PM_HouseType` VALUES (77, '测试房1', 1, '住房类型', NULL, 0);

-- ----------------------------
-- Table structure for PM_ParamClass
-- ----------------------------
DROP TABLE IF EXISTS `PM_ParamClass`;
CREATE TABLE `PM_ParamClass`  (
  `ParamTypeId` int(11) NOT NULL COMMENT '参数类型编号',
  `ParamTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数类型名',
  `ParamTypeIName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数渲染用名',
  `ParamClassId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数类别编号',
  `ParamClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数类别名',
  PRIMARY KEY (`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_2`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_3`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_4`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_5`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_6`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_7`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_8`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_9`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_10`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_11`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_12`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_13`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_14`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_15`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_16`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_17`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_18`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_19`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_20`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_21`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_22`(`ParamTypeId`) USING BTREE,
  INDEX `ParamTypeId_23`(`ParamTypeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数类型编号' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PM_ParamClass
-- ----------------------------
INSERT INTO `PM_ParamClass` VALUES (0, '系统设置', 'sysSet', '0', '系统参数');
INSERT INTO `PM_ParamClass` VALUES (1, '住房类型', 'houseType', '1', '住房参数');
INSERT INTO `PM_ParamClass` VALUES (2, '户型', 'houseLayout', '1', '住房参数');
INSERT INTO `PM_ParamClass` VALUES (3, '使用状态', 'houseStatus', '1', '住房参数');
INSERT INTO `PM_ParamClass` VALUES (4, '住房结构', 'houseStruct', '1', '住房参数');
INSERT INTO `PM_ParamClass` VALUES (5, '工作部门', 'staffDept', '2', '职工参数');
INSERT INTO `PM_ParamClass` VALUES (6, '职务', 'staffPost', '2', '职工参数');
INSERT INTO `PM_ParamClass` VALUES (7, '职称', 'staffTitle', '2', '职工参数');
INSERT INTO `PM_ParamClass` VALUES (8, '职工类别', 'staffClass', '2', '职工参数');
INSERT INTO `PM_ParamClass` VALUES (9, '工作状态', 'staffStatus', '2', '职工参数');
INSERT INTO `PM_ParamClass` VALUES (10, '配偶单位性质', 'staffSpouse', '2', '职工参数');
INSERT INTO `PM_ParamClass` VALUES (11, '职务分', 'rentPostVal', '3', '租赁参数');
INSERT INTO `PM_ParamClass` VALUES (12, '职称分', 'rentTitleVal', '3', '租赁参数');
INSERT INTO `PM_ParamClass` VALUES (13, '职务面积', 'rentPostArea', '3', '租赁参数');
INSERT INTO `PM_ParamClass` VALUES (14, '职称面积', 'rentTitleArea', '3', '租赁参数');
INSERT INTO `PM_ParamClass` VALUES (15, '选房选项', 'rentOption', '3', '租赁参数');
INSERT INTO `PM_ParamClass` VALUES (16, '维修内容', 'fixContent', '4', '维修参数');
INSERT INTO `PM_ParamClass` VALUES (17, '租金优惠选项', 'rentalOption', '5', '租金参数');

-- ----------------------------
-- Table structure for PM_RentEvent
-- ----------------------------
DROP TABLE IF EXISTS `PM_RentEvent`;
CREATE TABLE `PM_RentEvent`  (
  `RentEventId` int(11) NOT NULL AUTO_INCREMENT,
  `ParamTypeId` int(11) NOT NULL,
  `ParamTypeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RentIsOpenSel` int(1) NOT NULL COMMENT '是否开启选房',
  `RentTimeBegin` date NOT NULL COMMENT '选房开始时间',
  `RentTimeRanges` date NOT NULL COMMENT '选房结束时间',
  `RentSelValReq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选房所需积分',
  `RentSelRules` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选房规则',
  `IsDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`RentEventId`) USING BTREE,
  INDEX `PM_RentEvent_ibfk_1`(`ParamTypeId`) USING BTREE,
  CONSTRAINT `PM_RentEvent_ibfk_1` FOREIGN KEY (`ParamTypeId`) REFERENCES `PM_ParamClass` (`ParamTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for PM_RentalType
-- ----------------------------
DROP TABLE IF EXISTS `PM_RentalType`;
CREATE TABLE `PM_RentalType`  (
  `RentalParamId` int(11) NOT NULL AUTO_INCREMENT,
  `RentalTimeDiv` int(11) NOT NULL COMMENT '新老职工时间分界点',
  `RentalOldDct` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '老职工优惠比例',
  `RentalNewDctYear` int(11) NOT NULL COMMENT '新职工优惠年限',
  `RentalNewDct` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新职工优惠比例',
  `ParamTypeId` int(255) NOT NULL,
  `ParamTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `IsDelete` tinyint(1) DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`RentalParamId`) USING BTREE,
  INDEX `ParamTypeId`(`RentalNewDctYear`) USING BTREE,
  INDEX `Get`(`IsDelete`) USING BTREE COMMENT '快速找到有效的一项',
  INDEX `pm_rental_paramTypeId`(`ParamTypeId`) USING BTREE,
  CONSTRAINT `pm_rental_paramTypeId` FOREIGN KEY (`ParamTypeId`) REFERENCES `PM_ParamClass` (`ParamTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '租金参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PM_RentalType
-- ----------------------------
INSERT INTO `PM_RentalType` VALUES (1, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (2, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (3, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (4, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (5, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (6, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (7, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (8, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (9, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (10, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (11, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 1);
INSERT INTO `PM_RentalType` VALUES (12, 2, '0.3', 5, '0.4', 17, '租金优惠选项', 0);

-- ----------------------------
-- Table structure for PM_StaffType
-- ----------------------------
DROP TABLE IF EXISTS `PM_StaffType`;
CREATE TABLE `PM_StaffType`  (
  `StaffParamId` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工参数编号',
  `StaffParamName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工参数名称',
  `ParamTypeId` int(11) NOT NULL COMMENT '员工类型编号',
  `ParamTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工类型名称',
  `StaffParamVal` int(11) DEFAULT NULL COMMENT '分数',
  `StaffParamSpouseVal` int(11) DEFAULT NULL COMMENT '配偶分数',
  `StaffParamHouseArea` float(11, 0) DEFAULT NULL COMMENT '享受面积',
  `IsDelete` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`StaffParamId`) USING BTREE,
  INDEX `ParamTypeId`(`ParamTypeId`) USING BTREE,
  INDEX `StaffParamId`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_2`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_3`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_4`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_5`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_6`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_7`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_8`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_9`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_10`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_11`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_12`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_13`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_14`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_15`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_16`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_17`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_18`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_19`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_20`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_21`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_22`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_23`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_24`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_25`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_26`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_27`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_28`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_29`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_30`(`StaffParamId`) USING BTREE,
  INDEX `StaffParamId_31`(`StaffParamId`) USING BTREE,
  CONSTRAINT `PM_StaffType_ibfk_1` FOREIGN KEY (`ParamTypeId`) REFERENCES `PM_ParamClass` (`ParamTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 189 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PM_StaffType
-- ----------------------------
INSERT INTO `PM_StaffType` VALUES (48, '绿色建材中心33', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (49, '道桥中心', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (50, '高教所', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (51, '档案馆', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (52, '图书馆', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (60, '后勤集团', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (64, '遗属', 5, '工作部门', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (65, '老干处', 5, '工作部门', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (66, '已故', 5, '工作部门', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (67, '未知', 5, '工作部门', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (69, '马克思主义学院', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (71, '智能中心', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (75, '团委', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (84, '厅级3', 6, '职务', 65, 5, 130, 0);
INSERT INTO `PM_StaffType` VALUES (89, '哈哈哈无', 6, '职务', 433, 11, 2, 0);
INSERT INTO `PM_StaffType` VALUES (95, '副研究员', 7, '职称', 6022, 522, 12311, 1);
INSERT INTO `PM_StaffType` VALUES (96, '副研究员', 7, '职称', 55, 4, 1001, 1);
INSERT INTO `PM_StaffType` VALUES (97, '研究员', 7, '职称', 6022, 522, 130232, 1);
INSERT INTO `PM_StaffType` VALUES (98, '实验员', 7, '职称', 50, 3, 80, 1);
INSERT INTO `PM_StaffType` VALUES (99, '助理实验师', 7, '职称', 55, 4, 100, 1);
INSERT INTO `PM_StaffType` VALUES (100, '实验师', 7, '职称', 75, 5, 190, 1);
INSERT INTO `PM_StaffType` VALUES (101, '高级实验师', 7, '职称', 50, 3, 80, 1);
INSERT INTO `PM_StaffType` VALUES (102, '管理员', 7, '职称', 50, 3, 80, 1);
INSERT INTO `PM_StaffType` VALUES (103, '助理馆员', 7, '职称', 47, 2, 70, 1);
INSERT INTO `PM_StaffType` VALUES (104, '馆员', 7, '职称', 50, 3, 80, 1);
INSERT INTO `PM_StaffType` VALUES (105, '副研究馆员', 7, '职称', 55, 4, 100, 1);
INSERT INTO `PM_StaffType` VALUES (106, '研究馆员', 7, '职称', 60, 5, 130, 1);
INSERT INTO `PM_StaffType` VALUES (107, '助理编辑', 7, '职称', 47, 2, 70, 1);
INSERT INTO `PM_StaffType` VALUES (108, '编辑', 7, '职称', 0, 0, 0, 1);
INSERT INTO `PM_StaffType` VALUES (109, '副编审', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (110, '编审', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (111, '技术设计员', 7, '职称', NULL, NULL, 123, 1);
INSERT INTO `PM_StaffType` VALUES (112, '助理技术编辑', 7, '职称', NULL, NULL, 22, 1);
INSERT INTO `PM_StaffType` VALUES (113, '技术编辑', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (114, '三级校对', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (115, '二级校对', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (116, '一级校对', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (117, '小学二级教师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (118, '小学一级教师', 7, '职称', NULL, NULL, 33, 1);
INSERT INTO `PM_StaffType` VALUES (119, '小学高级教师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (120, '中学三级教师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (121, '中学二级教师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (122, '中学一级教师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (123, '中学高级教师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (125, '医（护、药、技）师', 7, '职称', 21, 12, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (127, '主管护（药、技）师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (128, '副主任医（护、药、技）师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (129, '主任医师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (130, '技术员', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (131, '助理工程师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (132, '工程师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (133, '高级工程师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (134, '会计（审计）员', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (135, '助理会计（审计）师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (136, '会计（审计）师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (137, '高级会计（审计）师', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (138, '普工', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (139, '干部', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (140, '未知', 7, '职称', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (141, '其它', 7, '职称', 0, 0, 0, 0);
INSERT INTO `PM_StaffType` VALUES (142, 'DASDA', 7, '职称', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (144, '专业技术人员3', 8, '职工类别', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (145, '工勤人员', 8, '职工类别', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (146, '其它', 8, '职工类别', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (147, '单位用房', 8, '职工类别', NULL, NULL, NULL, 1);
INSERT INTO `PM_StaffType` VALUES (150, '退休3', 9, '工作状态', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (151, '调离', 9, '工作状态', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (152, '去世', 9, '工作状态', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (153, '出国', 9, '工作状态', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (154, '其它', 9, '工作状态', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (155, '重复', 9, '工作状态', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (157, '校内1122', 10, '配偶单位性质', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (162, '党员', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (164, '为嗯嗯', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (166, '洒洒水', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (167, '万事达啊', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (168, '大概', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (169, '111', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (170, 'aSDF', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (171, '萨达撒', 6, '职务', 44, 44, 12, 0);
INSERT INTO `PM_StaffType` VALUES (172, '党员', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (173, '润肤乳', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (174, '男男女女', 6, '职务', 44, 44, 2, 0);
INSERT INTO `PM_StaffType` VALUES (176, '张梦殊最漂亮', 6, '职务', 222, 333, 1212, 0);
INSERT INTO `PM_StaffType` VALUES (177, '手术室', 7, '职称', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (178, '222', 7, '职称', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (179, '试试', 7, '职称', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (182, '问问', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (184, '是', 9, '工作状态', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (186, '党员', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (187, '修改测试3', 5, '工作部门', NULL, NULL, NULL, 0);
INSERT INTO `PM_StaffType` VALUES (188, '党员', 5, '工作部门', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for PM_SysType
-- ----------------------------
DROP TABLE IF EXISTS `PM_SysType`;
CREATE TABLE `PM_SysType`  (
  `SysParamId` int(11) NOT NULL COMMENT '系统参数编号',
  `SysParamName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统参数名称',
  `ParamTypeId` int(11) NOT NULL COMMENT '参数类型编号',
  `ParamTypeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数类型名称',
  PRIMARY KEY (`SysParamId`) USING BTREE,
  INDEX `ParamTypeId`(`ParamTypeId`) USING BTREE,
  CONSTRAINT `PM_SysType_ibfk_1` FOREIGN KEY (`ParamTypeId`) REFERENCES `PM_ParamClass` (`ParamTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统参数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- View structure for view_pm_house
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_house`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_house` AS select `hs_house`.`Id` AS `Id`,`hs_house`.`No` AS `No`,`hs_house`.`Type` AS `Type`,`view_pm_housetype_type`.`HouseParamName` AS `TypeName`,`hs_house`.`Layout` AS `Layout`,`view_pm_housetype_layout`.`HouseParamName` AS `LayoutName`,`hs_house`.`Struct` AS `Struct`,`view_pm_housetype_struct`.`HouseParamName` AS `StructName`,`hs_house`.`Status` AS `Status`,`view_pm_housetype_status`.`HouseParamName` AS `StatusName`,`hs_house`.`BuildArea` AS `BuildArea`,`hs_house`.`UsedArea` AS `UsedArea`,`hs_house`.`BasementArea` AS `BasementArea`,`hs_house`.`Address` AS `Address`,`hs_house`.`BuildingId` AS `BuildingId`,`hs_building`.`Name` AS `BuildingName`,`hs_house`.`ProId` AS `ProId`,`hs_house`.`Remark` AS `Remark`,`hs_house`.`Image` AS `Image`,`hs_house`.`Rental` AS `Rental`,`hs_house`.`FinishTime` AS `FinishTime`,`hs_house`.`RecordStatus` AS `RecordStatus` from (((((`hs_house` join `view_pm_housetype_layout`) join `view_pm_housetype_status`) join `view_pm_housetype_struct`) join `view_pm_housetype_type`) join `hs_building`) where ((`hs_house`.`Type` = `view_pm_housetype_type`.`HouseParamId`) and (`hs_house`.`Layout` = `view_pm_housetype_layout`.`HouseParamId`) and (`hs_house`.`Struct` = `view_pm_housetype_struct`.`HouseParamId`) and (`hs_house`.`Status` = `view_pm_housetype_status`.`HouseParamId`) and (`hs_house`.`BuildingId` = `hs_building`.`Id`));

-- ----------------------------
-- View structure for view_pm_houseparam
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_houseparam`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_houseparam` AS select `pm_housetype`.`HouseParamId` AS `HouseParamId`,`pm_housetype`.`HouseParamName` AS `HouseParamName`,`pm_housetype`.`HouseParamRel` AS `HouseParamRel`,`pm_housetype`.`ParamTypeId` AS `ParamTypeId`,`pm_housetype`.`ParamTypeName` AS `ParamTypeName`,`pm_paramclass`.`ParamTypeIName` AS `ParamTypeIName`,`pm_paramclass`.`ParamClassId` AS `ParamClassId`,`pm_paramclass`.`ParamClassName` AS `ParamClassName` from (`pm_housetype` join `pm_paramclass`) where (`pm_housetype`.`ParamTypeId` = `pm_paramclass`.`ParamTypeId`);

-- ----------------------------
-- View structure for view_pm_housetype_layout
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_housetype_layout`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_housetype_layout` AS select `pm_housetype`.`HouseParamId` AS `HouseParamId`,`pm_housetype`.`HouseParamName` AS `HouseParamName`,`pm_housetype`.`ParamTypeId` AS `ParamTypeId`,`pm_housetype`.`ParamTypeName` AS `ParamTypeName`,`pm_housetype`.`HouseParamRel` AS `HouseParamRel`,`pm_housetype`.`IsDelete` AS `IsDelete` from `pm_housetype` where (`pm_housetype`.`ParamTypeId` = 2);

-- ----------------------------
-- View structure for view_pm_housetype_status
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_housetype_status`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_housetype_status` AS select `pm_housetype`.`HouseParamId` AS `HouseParamId`,`pm_housetype`.`HouseParamName` AS `HouseParamName`,`pm_housetype`.`ParamTypeId` AS `ParamTypeId`,`pm_housetype`.`ParamTypeName` AS `ParamTypeName`,`pm_housetype`.`HouseParamRel` AS `HouseParamRel`,`pm_housetype`.`IsDelete` AS `IsDelete` from `pm_housetype` where (`pm_housetype`.`ParamTypeId` = 3);

-- ----------------------------
-- View structure for view_pm_housetype_struct
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_housetype_struct`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_housetype_struct` AS select `pm_housetype`.`HouseParamId` AS `HouseParamId`,`pm_housetype`.`HouseParamName` AS `HouseParamName`,`pm_housetype`.`ParamTypeId` AS `ParamTypeId`,`pm_housetype`.`ParamTypeName` AS `ParamTypeName`,`pm_housetype`.`HouseParamRel` AS `HouseParamRel`,`pm_housetype`.`IsDelete` AS `IsDelete` from `pm_housetype` where (`pm_housetype`.`ParamTypeId` = 4);

-- ----------------------------
-- View structure for view_pm_housetype_type
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_housetype_type`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_housetype_type` AS select `pm_housetype`.`HouseParamId` AS `HouseParamId`,`pm_housetype`.`HouseParamName` AS `HouseParamName`,`pm_housetype`.`ParamTypeId` AS `ParamTypeId`,`pm_housetype`.`ParamTypeName` AS `ParamTypeName`,`pm_housetype`.`HouseParamRel` AS `HouseParamRel`,`pm_housetype`.`IsDelete` AS `IsDelete` from `pm_housetype` where (`pm_housetype`.`ParamTypeId` = 1);

-- ----------------------------
-- View structure for view_pm_staff
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_staff`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_staff` AS select `hs_staff`.`Id` AS `Id`,`hs_staff`.`No` AS `No`,`hs_staff`.`Name` AS `Name`,`hs_staff`.`Sex` AS `Sex`,`hs_staff`.`MarriageState` AS `MarriageState`,`hs_staff`.`Code` AS `Code`,`hs_staff`.`JoinTime` AS `JoinTime`,`hs_staff`.`GoUniversityTime` AS `GoUniversityTime`,`hs_staff`.`RetireTime` AS `RetireTime`,`hs_staff`.`Tel` AS `Tel`,`hs_staff`.`Remark` AS `Remark`,`hs_staff`.`SpouseName` AS `SpouseName`,`hs_staff`.`SpouseCode` AS `SpouseCode`,`hs_staff`.`SpouseTitle` AS `SpouseTitle`,`hs_staff`.`SpousePost` AS `SpousePost`,`hs_staff`.`SpouseDept` AS `SpouseDept`,`hs_staff`.`SpouseKind` AS `SpouseKind`,`hs_staff`.`IsDeptManage` AS `IsDeptManage`,`hs_staff`.`Password` AS `PasswordName`,`hs_staff`.`BuyAccount` AS `BuyAccount`,`hs_staff`.`FixFund` AS `FixFund`,`hs_staff`.`SecondJoinTime` AS `SecondJoinTime`,`hs_staff`.`SecondRetireTime` AS `SecondRetireTime`,`hs_staff`.`Dual` AS `DualName`,`hs_staff`.`Relation` AS `Relation`,`hs_staff`.`OtherVal` AS `OtherVal`,`hs_staff`.`TimeVal` AS `TimeVal`,`hs_staff`.`TotalVal` AS `TotalVal`,`hs_staff`.`DiscountRate` AS `DiscountRate`,`hs_staff`.`FamilyCode` AS `FamilyCode`,`hs_staff`.`FirstJobTime` AS `FirstJobTime`,`hs_staff`.`UserName` AS `UserName`,`hs_staff`.`IsSuper` AS `IsSuper`,`view_pm_stafftype_dept`.`StaffParamName` AS `DeptName`,`view_pm_stafftype_post`.`StaffParamName` AS `PostName`,`view_pm_stafftype_status`.`StaffParamName` AS `StatusName`,`view_pm_stafftype_title`.`StaffParamName` AS `TitleName`,`view_pm_stafftype_type`.`StaffParamName` AS `TypeName` from (((((`hs_staff` join `view_pm_stafftype_dept`) join `view_pm_stafftype_post`) join `view_pm_stafftype_status`) join `view_pm_stafftype_title`) join `view_pm_stafftype_type`) where ((`hs_staff`.`Dept` = `view_pm_stafftype_dept`.`StaffParamId`) and (`hs_staff`.`Post` = `view_pm_stafftype_post`.`StaffParamId`) and (`hs_staff`.`Title` = `view_pm_stafftype_title`.`StaffParamId`) and (`hs_staff`.`Type` = `view_pm_stafftype_type`.`StaffParamId`) and (`hs_staff`.`Status` = `view_pm_stafftype_status`.`StaffParamId`));

-- ----------------------------
-- View structure for view_pm_stafftype_dept
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_stafftype_dept`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_stafftype_dept` AS select `pm_stafftype`.`StaffParamId` AS `StaffParamId`,`pm_stafftype`.`StaffParamName` AS `StaffParamName`,`pm_stafftype`.`ParamTypeId` AS `ParamTypeId`,`pm_stafftype`.`ParamTypeName` AS `ParamTypeName`,`pm_stafftype`.`StaffParamVal` AS `StaffParamVal`,`pm_stafftype`.`StaffParamSpouseVal` AS `StaffParamSpouseVal`,`pm_stafftype`.`StaffParamHouseArea` AS `StaffParamHouseArea`,`pm_stafftype`.`IsDelete` AS `IsDelete` from `pm_stafftype` where (`pm_stafftype`.`ParamTypeId` = 5);

-- ----------------------------
-- View structure for view_pm_stafftype_post
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_stafftype_post`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_stafftype_post` AS select `pm_stafftype`.`StaffParamId` AS `StaffParamId`,`pm_stafftype`.`StaffParamName` AS `StaffParamName`,`pm_stafftype`.`ParamTypeId` AS `ParamTypeId`,`pm_stafftype`.`ParamTypeName` AS `ParamTypeName`,`pm_stafftype`.`StaffParamVal` AS `StaffParamVal`,`pm_stafftype`.`StaffParamSpouseVal` AS `StaffParamSpouseVal`,`pm_stafftype`.`StaffParamHouseArea` AS `StaffParamHouseArea`,`pm_stafftype`.`IsDelete` AS `IsDelete` from `pm_stafftype` where (`pm_stafftype`.`ParamTypeId` = 6);

-- ----------------------------
-- View structure for view_pm_stafftype_status
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_stafftype_status`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_stafftype_status` AS select `pm_stafftype`.`StaffParamId` AS `StaffParamId`,`pm_stafftype`.`StaffParamName` AS `StaffParamName`,`pm_stafftype`.`ParamTypeId` AS `ParamTypeId`,`pm_stafftype`.`ParamTypeName` AS `ParamTypeName`,`pm_stafftype`.`StaffParamVal` AS `StaffParamVal`,`pm_stafftype`.`StaffParamSpouseVal` AS `StaffParamSpouseVal`,`pm_stafftype`.`StaffParamHouseArea` AS `StaffParamHouseArea`,`pm_stafftype`.`IsDelete` AS `IsDelete` from `pm_stafftype` where (`pm_stafftype`.`ParamTypeId` = 9);

-- ----------------------------
-- View structure for view_pm_stafftype_title
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_stafftype_title`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_stafftype_title` AS select `pm_stafftype`.`StaffParamId` AS `StaffParamId`,`pm_stafftype`.`StaffParamName` AS `StaffParamName`,`pm_stafftype`.`ParamTypeId` AS `ParamTypeId`,`pm_stafftype`.`ParamTypeName` AS `ParamTypeName`,`pm_stafftype`.`StaffParamVal` AS `StaffParamVal`,`pm_stafftype`.`StaffParamSpouseVal` AS `StaffParamSpouseVal`,`pm_stafftype`.`StaffParamHouseArea` AS `StaffParamHouseArea`,`pm_stafftype`.`IsDelete` AS `IsDelete` from `pm_stafftype` where (`pm_stafftype`.`ParamTypeId` = 7);

-- ----------------------------
-- View structure for view_pm_stafftype_type
-- ----------------------------
DROP VIEW IF EXISTS `view_pm_stafftype_type`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `view_pm_stafftype_type` AS select `pm_stafftype`.`StaffParamId` AS `StaffParamId`,`pm_stafftype`.`StaffParamName` AS `StaffParamName`,`pm_stafftype`.`ParamTypeId` AS `ParamTypeId`,`pm_stafftype`.`ParamTypeName` AS `ParamTypeName`,`pm_stafftype`.`StaffParamVal` AS `StaffParamVal`,`pm_stafftype`.`StaffParamSpouseVal` AS `StaffParamSpouseVal`,`pm_stafftype`.`StaffParamHouseArea` AS `StaffParamHouseArea`,`pm_stafftype`.`IsDelete` AS `IsDelete` from `pm_stafftype` where (`pm_stafftype`.`ParamTypeId` = 8);

SET FOREIGN_KEY_CHECKS = 1;
