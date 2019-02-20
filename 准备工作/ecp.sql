/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ecp

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-02-20 15:02:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ecp_assets_info
-- ----------------------------
DROP TABLE IF EXISTS `ecp_assets_info`;
CREATE TABLE `ecp_assets_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `UserID` bigint(20) DEFAULT NULL COMMENT '主账号ID',
  `AssetsType` smallint(6) DEFAULT NULL COMMENT '类型，次卡或年卡',
  `SurplusCount` smallint(6) DEFAULT NULL COMMENT '剩余次数',
  `OpeningMonth` smallint(6) DEFAULT NULL COMMENT '开通月份',
  `BeginTime` datetime DEFAULT NULL COMMENT '年卡开始日期',
  `EndTime` datetime DEFAULT NULL COMMENT '年卡终止日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='账户财产信息表';

-- ----------------------------
-- Records of ecp_assets_info
-- ----------------------------

-- ----------------------------
-- Table structure for ecp_assets_log_info
-- ----------------------------
DROP TABLE IF EXISTS `ecp_assets_log_info`;
CREATE TABLE `ecp_assets_log_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `Type` smallint(6) DEFAULT NULL COMMENT '增加或支出',
  `AssetsType` smallint(6) DEFAULT NULL COMMENT '类型，次卡或年卡',
  `Count` smallint(6) DEFAULT NULL COMMENT '次数',
  `OpeningMonth` smallint(6) DEFAULT NULL COMMENT '开通月份',
  `BeginTime` datetime DEFAULT NULL COMMENT '年卡开始日期',
  `EndTime` datetime DEFAULT NULL COMMENT '年卡终止日期',
  `OperateTime` datetime DEFAULT NULL COMMENT '操作时间',
  `Remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ProjectID` bigint(20) DEFAULT NULL COMMENT '项目ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='test';

-- ----------------------------
-- Records of ecp_assets_log_info
-- ----------------------------

-- ----------------------------
-- Table structure for ecp_login_info
-- ----------------------------
DROP TABLE IF EXISTS `ecp_login_info`;
CREATE TABLE `ecp_login_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `LoginIP` varchar(50) DEFAULT NULL COMMENT '登录IP',
  `LoginAddress` varchar(100) DEFAULT NULL COMMENT '登录所在地',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='账户登录信息表';

-- ----------------------------
-- Records of ecp_login_info
-- ----------------------------

-- ----------------------------
-- Table structure for ecp_user_info
-- ----------------------------
DROP TABLE IF EXISTS `ecp_user_info`;
CREATE TABLE `ecp_user_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `UserType` smallint(6) DEFAULT NULL COMMENT '账户类型',
  `UserGrade` smallint(6) DEFAULT NULL COMMENT '账户等级',
  `UserName` varchar(50) DEFAULT NULL COMMENT '用户中文名',
  `PhoneNumber` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `CompanyName` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `ParentUserID` bigint(20) DEFAULT NULL COMMENT '主账号ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='账户信息表';

-- ----------------------------
-- Records of ecp_user_info
-- ----------------------------
