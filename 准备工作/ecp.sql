/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : ecp

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-02-21 21:33:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `ecp_assets_info`
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
  `AssetsType` smallint(6) DEFAULT NULL COMMENT '类型 1：次卡 2：年卡',
  `SurplusCount` smallint(6) DEFAULT NULL COMMENT '剩余次数',
  `OpeningMonth` smallint(6) DEFAULT NULL COMMENT '开通月份',
  `BeginTime` datetime DEFAULT NULL COMMENT '年卡开始日期',
  `EndTime` datetime DEFAULT NULL COMMENT '年卡终止日期',
  `ProjectType` smallint(6) DEFAULT NULL COMMENT '项目类型 1：风险评估 2：应急预案',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='账户财产信息表';

-- ----------------------------
-- Records of ecp_assets_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_assets_log_info`
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
  `ProjectType` bigint(6) DEFAULT NULL COMMENT '项目类型1：风险评估2：应急预案',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='test';

-- ----------------------------
-- Records of ecp_assets_log_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_billboard_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_billboard_info`;
CREATE TABLE `ecp_billboard_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `BillboardName` varchar(30) DEFAULT NULL COMMENT '公告名称',
  `BillboardContent` text COMMENT '公告内容',
  `FileName` varchar(100) DEFAULT NULL COMMENT '附件名称',
  `FileUrl` varchar(300) DEFAULT NULL COMMENT '附件地址',
  `BillboardStatus` smallint(6) DEFAULT NULL COMMENT '状态 1：待发布，2：已发布',
  `ReleaseTime` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公告表';

-- ----------------------------
-- Records of ecp_billboard_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_emergency_environmental_events`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_emergency_environmental_events`;
CREATE TABLE `ecp_emergency_environmental_events` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `IndustryCategories` varchar(30) DEFAULT NULL COMMENT '行业类别及代码',
  `HappenTime` varchar(30) DEFAULT NULL COMMENT '时间',
  `HappenPlace` varchar(30) DEFAULT NULL COMMENT '地点',
  `DeviceScale` varchar(300) DEFAULT NULL COMMENT '装置规模',
  `Causes` text COMMENT '引发原因',
  `MaterialLeakage` varchar(100) DEFAULT NULL COMMENT '物料泄露量',
  `EmergencyMeasuresTaken` text COMMENT '采取的应急措施',
  `EventImpact` text COMMENT '事件影响（影响范围，事件损失）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='突发环境事件';

-- ----------------------------
-- Records of ecp_emergency_environmental_events
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_help_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_help_info`;
CREATE TABLE `ecp_help_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `HelpName` varchar(50) DEFAULT NULL COMMENT '文档名称',
  `HelpTypeId` smallint(6) DEFAULT NULL COMMENT '类型ID',
  `FileName` varchar(100) DEFAULT NULL COMMENT '资源名称',
  `FileUrl` varchar(300) NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='帮助中心';

-- ----------------------------
-- Records of ecp_help_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_help_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_help_type`;
CREATE TABLE `ecp_help_type` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `TypeName` varchar(10) DEFAULT NULL COMMENT '单菜名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公告类型';

-- ----------------------------
-- Records of ecp_help_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_login_info`
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
-- Table structure for `ecp_natural_environment`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_natural_environment`;
CREATE TABLE `ecp_natural_environment` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `Region` varchar(30) DEFAULT NULL COMMENT '地区',
  `TopographicFeatures` text COMMENT '地形地貌',
  `MeanTemperature` varchar(10) DEFAULT NULL COMMENT '年平均气温',
  `MaximumTemperature` varchar(10) DEFAULT NULL COMMENT '年最高气温',
  `MinimumTemperature` varchar(10) DEFAULT NULL COMMENT '年最低气温',
  `MeanWindSpeed` varchar(10) DEFAULT NULL COMMENT '年平均风速',
  `MaximumWindSpeed` varchar(10) DEFAULT NULL COMMENT '最大风速',
  `AverageAtmosphericPressure` varchar(10) DEFAULT NULL COMMENT '年平均大气压',
  `AveragePrecipitation` varchar(10) DEFAULT NULL COMMENT '年平均降水量',
  `LongestDurationPrecipitation` varchar(10) DEFAULT NULL COMMENT '最长历时降水量',
  `MaximumPrecipitation` varchar(10) DEFAULT NULL COMMENT '小时最大降水量',
  `AverageThunderstormDays` varchar(10) DEFAULT NULL COMMENT '年平均暴雷日数',
  `PrevailingWindDirection` varchar(10) DEFAULT NULL COMMENT '全年主导风向',
  `WinterDominantWindDirection` varchar(10) DEFAULT NULL COMMENT '冬季主导风向',
  `SummerPrevailingWindDirection` varchar(10) DEFAULT NULL COMMENT '夏季主导风向',
  `NaturalDisaster` text COMMENT '历史上层发生过的极端天气情况和自然灾害情况',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自然环境概况';

-- ----------------------------
-- Records of ecp_natural_environment
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_physicochemical_properties`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_physicochemical_properties`;
CREATE TABLE `ecp_physicochemical_properties` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `ChemicalsChinese` varchar(50) DEFAULT NULL COMMENT '化学品中文名称',
  `ChemicalsEnglish` varchar(50) DEFAULT NULL COMMENT '化学品英文名称',
  `ChemicalsChinese2` varchar(50) DEFAULT NULL COMMENT '化学品中文名称1',
  `ChemicalsEnglish2` varchar(50) DEFAULT NULL COMMENT '化学品英文名称2',
  `TechnicalInstructionsCode` varchar(50) DEFAULT NULL COMMENT '技术说明书编码',
  `CasNo` varchar(50) DEFAULT NULL COMMENT 'CAS NO',
  `MolecularFormula` varchar(50) DEFAULT NULL COMMENT '分子式',
  `MolecularWeight` varchar(50) DEFAULT NULL COMMENT '分子量',
  `HarmfulComponents` varchar(50) DEFAULT NULL COMMENT '有害物成分',
  `HarmfulSubstanceContent` varchar(50) DEFAULT NULL COMMENT '有害物含量',
  `HarmfulSubstanceCasNo` varchar(50) DEFAULT NULL COMMENT '有害物 CAS NO',
  `RtecsNo` varchar(50) DEFAULT NULL COMMENT 'RTECS号',
  `HazardIdentification` varchar(300) DEFAULT NULL COMMENT '危险性类别',
  `InvasionPathway` varchar(300) DEFAULT NULL COMMENT '侵入途径',
  `HealthHazard` text COMMENT '健康危害',
  `EnvironmentalHazards` text COMMENT '环境危害',
  `RiskOfExplosion` varchar(300) DEFAULT NULL COMMENT '燃爆危险',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='理化性质';

-- ----------------------------
-- Records of ecp_physicochemical_properties
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_project_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_project_info`;
CREATE TABLE `ecp_project_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `Address` varchar(100) DEFAULT NULL COMMENT '企业地址',
  `ProjectType` smallint(6) DEFAULT NULL COMMENT '项目类型 1：风险评估 2：应急预案',
  `ProjectName` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `ProjectStatus` smallint(6) DEFAULT NULL COMMENT '项目状态 1：进行中 2：已完成 3：已冻结',
  `RiskLevel` smallint(6) DEFAULT NULL COMMENT '风险等级 1：一般 2：较大 3：重大',
  `ProjectSchedule` smallint(6) DEFAULT NULL COMMENT '项目进度 1：编辑中 2：检查中 3：审核中 4：二次确认中',
  `Province` varchar(30) DEFAULT NULL COMMENT '行政区域 省份',
  `City` varchar(30) DEFAULT NULL COMMENT '行政区域 市',
  `County` varchar(30) DEFAULT NULL COMMENT '行政区域 县',
  `Remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='项目表';

-- ----------------------------
-- Records of ecp_project_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_reference_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_reference_info`;
CREATE TABLE `ecp_reference_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `Schedule` varchar(30) DEFAULT NULL COMMENT '附表',
  `FileName` varchar(30) DEFAULT NULL COMMENT '文件名称',
  `Content` text COMMENT '内容',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='参照表';

-- ----------------------------
-- Records of ecp_reference_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ecp_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecp_user_info`;
CREATE TABLE `ecp_user_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间（注册时间）',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `UserType` smallint(6) DEFAULT NULL COMMENT '账户类型  1：使用客户 2：付费客户',
  `UserGrade` smallint(6) DEFAULT NULL COMMENT '账户等级 1：主账号 2：子账号',
  `UserName` varchar(50) DEFAULT NULL COMMENT '用户中文名',
  `PhoneNumber` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `CompanyName` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `ParentUserID` bigint(20) DEFAULT NULL COMMENT '主账号ID',
  `Email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='账户信息表';

-- ----------------------------
-- Records of ecp_user_info
-- ----------------------------
