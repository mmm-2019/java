/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test218

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-02-18 11:12:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hzx_base_company_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_company_info`;
CREATE TABLE `hzx_base_company_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `CompanyName` varchar(100) NOT NULL COMMENT '项目名称',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `acount` bigint(20) DEFAULT NULL COMMENT '主账号',
  `Name` varchar(100) NOT NULL COMMENT '公司名称',
  `AddUserName` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公司信息表';

-- ----------------------------
-- Table structure for hzx_base_company_project_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_company_project_info`;
CREATE TABLE `hzx_base_company_project_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `CompanyID` bigint(20) NOT NULL COMMENT '公司ID',
  `ProjectName` varchar(100) NOT NULL COMMENT '项目名称',
  `ProjectType` int(11) DEFAULT NULL COMMENT '项目类别（0：排查；1：评估）',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `SubmitState` smallint(6) DEFAULT NULL COMMENT '提交状态(0->未提交 1->已提交)',
  `PendingState` smallint(6) DEFAULT NULL COMMENT '待办状态(0->待办 1->移除待办)',
  `acount` bigint(20) DEFAULT NULL COMMENT '主账号',
  `AddUserName` varchar(50) NOT NULL,
  `TotalScore` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公司项目名称表';

-- ----------------------------
-- Table structure for hzx_base_crafts_data
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_crafts_data`;
CREATE TABLE `hzx_base_crafts_data` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `CraftsCode` varchar(64) NOT NULL COMMENT '评估依据编号',
  `EvaluationBasis` varchar(100) DEFAULT NULL COMMENT '评估依据名称',
  `BasisScore` int(11) DEFAULT NULL COMMENT '分值',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `AddTime` datetime DEFAULT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for hzx_base_emergency_item
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_emergency_item`;
CREATE TABLE `hzx_base_emergency_item` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `ItemCode` varchar(50) DEFAULT NULL COMMENT '排查项目编号',
  `FatherItemCode` varchar(50) DEFAULT NULL COMMENT '上级项目编号',
  `IsFill` smallint(6) DEFAULT NULL COMMENT '是否评估(0->否 1->是)',
  `IsDisplayNumber` smallint(6) DEFAULT NULL COMMENT '是否显示序号(0->否 1->是)',
  `ItemNumber` int(11) DEFAULT NULL COMMENT '项目序号',
  `ItemContent` varchar(500) DEFAULT NULL COMMENT '项目内容',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='隐患检查排查项目信息表';

-- ----------------------------
-- Table structure for hzx_base_evaluate_module
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_evaluate_module`;
CREATE TABLE `hzx_base_evaluate_module` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `ModuleCode` varchar(50) NOT NULL COMMENT '模块编号',
  `ModuleName` varchar(100) NOT NULL COMMENT '模块名称',
  `ModuleScore` int(11) DEFAULT NULL COMMENT '模块分值',
  `MaxModuleScore` int(11) DEFAULT NULL COMMENT '模块最大分值',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='环境风险评估模块信息表';

-- ----------------------------
-- Table structure for hzx_base_evaluate_submodule
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_evaluate_submodule`;
CREATE TABLE `hzx_base_evaluate_submodule` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `ModuleCode` varchar(50) NOT NULL COMMENT '模块编号',
  `SubmoduleCode` varchar(50) NOT NULL COMMENT '子模块编号',
  `SubmoduleName` varchar(100) NOT NULL COMMENT '子模块名称',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='环境风险评估子模块信息表';

-- ----------------------------
-- Table structure for hzx_base_gas_basis
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_gas_basis`;
CREATE TABLE `hzx_base_gas_basis` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateIndex` varchar(50) DEFAULT NULL COMMENT '评估指标',
  `BasisCode` varchar(50) DEFAULT NULL COMMENT '评估依据编号',
  `BasisContent` varchar(500) DEFAULT NULL COMMENT '评估依据',
  `IsDisplayNumber` smallint(6) DEFAULT NULL COMMENT '是否显示序号(0->否 1->是)',
  `BasisNumber` int(11) DEFAULT NULL COMMENT '序号',
  `score` int(11) DEFAULT NULL COMMENT '分值',
  `IsMergeScore` smallint(6) DEFAULT NULL COMMENT '分值是否合并(0->否 1->是)',
  `MergeNumber` int(11) DEFAULT NULL COMMENT '合并序号',
  `isMergeActual` smallint(6) DEFAULT NULL COMMENT '实际分值是否合并(0->否 1->是)',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉气评估依据信息表';

-- ----------------------------
-- Table structure for hzx_base_gas_receptor_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_gas_receptor_info`;
CREATE TABLE `hzx_base_gas_receptor_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `CategoryCode` varchar(30) DEFAULT NULL COMMENT '类别编号',
  `CategoryName` varchar(100) DEFAULT NULL COMMENT '类别',
  `ReceptorCode` varchar(50) DEFAULT NULL COMMENT '受体编号',
  `ReceptorDesc` varchar(500) DEFAULT NULL COMMENT '受体情况',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='大气受体信息表';

-- ----------------------------
-- Table structure for hzx_base_help
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_help`;
CREATE TABLE `hzx_base_help` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `Name` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `Url` varchar(200) DEFAULT NULL COMMENT '地址',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `Content` text COMMENT '描述',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='帮助信息表';

-- ----------------------------
-- Table structure for hzx_base_industry_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_industry_info`;
CREATE TABLE `hzx_base_industry_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `IndustryCode` varchar(30) NOT NULL COMMENT '行业编号',
  `IndustryName` varchar(255) NOT NULL COMMENT '行业名称',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='行业类别表';

-- ----------------------------
-- Table structure for hzx_base_prevention_item
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_prevention_item`;
CREATE TABLE `hzx_base_prevention_item` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `ItemCode` varchar(50) DEFAULT NULL COMMENT '排查项目编号',
  `FatherItemCode` varchar(50) DEFAULT NULL COMMENT '上级项目编号',
  `IsFill` smallint(6) DEFAULT NULL COMMENT '是否评估(0->否 1->是)',
  `IsDisplayNumber` smallint(6) DEFAULT NULL COMMENT '是否显示序号(0->否 1->是)',
  `ItemNumber` int(11) DEFAULT NULL COMMENT '项目序号',
  `ItemContent` varchar(500) DEFAULT NULL COMMENT '项目内容',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='隐患分析排查项目信息表';

-- ----------------------------
-- Table structure for hzx_base_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_resource_category`;
CREATE TABLE `hzx_base_resource_category` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `TableCode` varchar(100) NOT NULL COMMENT '表格编号',
  `TableName` varchar(255) NOT NULL COMMENT '表格名称',
  `CategoryCode` varchar(100) NOT NULL COMMENT '资源类别编号',
  `CategoryName` varchar(255) NOT NULL COMMENT '资源类别名称',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评估资源信息表';

-- ----------------------------
-- Table structure for hzx_base_riskcritical_data
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_riskcritical_data`;
CREATE TABLE `hzx_base_riskcritical_data` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `CraftsCode` varchar(64) NOT NULL COMMENT '评估依据编号',
  `EvaluationBasis` varchar(100) DEFAULT NULL COMMENT '评估依据名称',
  `BasisScore` varchar(500) DEFAULT NULL COMMENT 'CAS号',
  `LjlNumber` varchar(500) DEFAULT NULL COMMENT '临界量w（dune）',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for hzx_base_table_state_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_table_state_info`;
CREATE TABLE `hzx_base_table_state_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `title` varchar(1000) DEFAULT NULL COMMENT '标题',
  `FatherItemCode` varchar(64) DEFAULT NULL COMMENT '父ID',
  `TableName` varchar(100) DEFAULT NULL COMMENT '表标识',
  `CaozuoState` smallint(6) DEFAULT NULL COMMENT '操作状态(0->待进行 1->进行中 2->已完成)',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `ItemCode` varchar(50) DEFAULT NULL COMMENT '子ID',
  `category` smallint(6) DEFAULT NULL COMMENT '项目类别,(1->评估 2->排查)',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for hzx_base_water_basis
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_water_basis`;
CREATE TABLE `hzx_base_water_basis` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateIndex` varchar(50) DEFAULT NULL COMMENT '评估指标',
  `FatherBasisCode` varchar(50) DEFAULT NULL COMMENT '评估依据编号',
  `BasisCode` varchar(50) DEFAULT NULL COMMENT '评估依据编号',
  `BasisContent` varchar(500) DEFAULT NULL COMMENT '评估依据',
  `IsEvaluate` smallint(6) DEFAULT NULL COMMENT '是否评估(0->否 1->是)',
  `IsDisplayNumber` smallint(6) DEFAULT NULL COMMENT '是否显示序号(0->否 1->是)',
  `BasisNumber` int(11) DEFAULT NULL COMMENT '序号',
  `score` int(11) DEFAULT NULL COMMENT '分值',
  `isMergeScore` smallint(6) DEFAULT NULL COMMENT '分值是否合并(0->否 1->是)',
  `mergeNumber` int(11) DEFAULT NULL COMMENT '合并序号',
  `IsMergeActual` smallint(6) DEFAULT NULL COMMENT '实际分值是否合并(0->否 1->是)',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉气评估依据信息表';

-- ----------------------------
-- Table structure for hzx_base_water_receptor_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_base_water_receptor_info`;
CREATE TABLE `hzx_base_water_receptor_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `CategoryCode` varchar(30) DEFAULT NULL COMMENT '类别编号',
  `CategoryName` varchar(100) DEFAULT NULL COMMENT '类别',
  `ReceptorCode` varchar(50) DEFAULT NULL COMMENT '受体编号',
  `ReceptorName` varchar(500) DEFAULT NULL COMMENT '受体情况',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='水受体信息表';

-- ----------------------------
-- Table structure for hzx_city_disaster
-- ----------------------------
DROP TABLE IF EXISTS `hzx_city_disaster`;
CREATE TABLE `hzx_city_disaster` (
  `ID` varchar(64) NOT NULL COMMENT '主键ID',
  `CityName` varchar(255) DEFAULT NULL COMMENT '城市名称',
  `MeteorologicaRisk` longtext COMMENT '灾害名称',
  `GeologyRisk` longtext COMMENT '灾害简介',
  `DelFlag` smallint(6) NOT NULL COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hzx_company_around_receptor
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_around_receptor`;
CREATE TABLE `hzx_company_around_receptor` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `category` varchar(100) DEFAULT NULL COMMENT '类别',
  `PointName` varchar(100) DEFAULT NULL COMMENT '环境敏感点名称',
  `position` varchar(255) DEFAULT NULL COMMENT '方位',
  `RecentDistance` decimal(18,6) DEFAULT NULL COMMENT '距企业最近距离（m）',
  `PeopleNumber` int(11) DEFAULT NULL COMMENT '人数',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `CanDel` smallint(6) DEFAULT NULL COMMENT '能否删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公司厂区边界外5km范围内的风险受体统计表';

-- ----------------------------
-- Table structure for hzx_company_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_basic_info`;
CREATE TABLE `hzx_company_basic_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `CompanyName` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `ParentCompanyName` varchar(100) DEFAULT NULL COMMENT '上级公司名称',
  `GroupHeadOfficeName` varchar(100) DEFAULT NULL COMMENT '所属集团总公司名称',
  `BuildingDate` datetime DEFAULT NULL COMMENT '建厂年月日',
  `LastRebuildingDate` datetime DEFAULT NULL COMMENT '最近改扩建年月日',
  `LocationProvince` varchar(50) DEFAULT NULL COMMENT '单位所在省份',
  `LocationCity` varchar(50) DEFAULT NULL COMMENT '单位所在市',
  `LocationArea` varchar(50) DEFAULT NULL COMMENT '单位所在区',
  `LocationAddress` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `BusinessScope` text COMMENT '主要经营范围',
  `CenterLongitude` decimal(18,10) DEFAULT NULL COMMENT '中心经度',
  `CenterLatitude` decimal(18,10) DEFAULT NULL COMMENT '中心维度',
  `LegalPerson` varchar(50) DEFAULT NULL COMMENT '法定代表人',
  `ContactPerson` varchar(50) DEFAULT NULL COMMENT '联系人',
  `SocialCreditCode` varchar(100) DEFAULT NULL COMMENT '唯一社会信用代码',
  `ContactNumber` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `PostalCode` varchar(50) DEFAULT NULL COMMENT '邮政编码',
  `EmployeesNumber` int(11) DEFAULT NULL COMMENT '职工人数（人）',
  `IndustryCategory` varchar(50) DEFAULT NULL COMMENT '所属行业类型',
  `FactoryArea` decimal(18,6) DEFAULT NULL COMMENT '厂区占地面积',
  `ProductionArea` decimal(18,6) DEFAULT NULL COMMENT '生产区建筑面积',
  `OfficeArea` decimal(18,6) DEFAULT NULL COMMENT '办公区面积',
  `GreenArea` decimal(18,6) DEFAULT NULL COMMENT '绿化面积',
  `DesignProduce` decimal(18,6) DEFAULT NULL COMMENT '设计生产能力（万吨/年）',
  `AgedProduce` decimal(18,6) DEFAULT NULL COMMENT '上年度实际生产量（万吨）',
  `AgedSales` decimal(18,6) DEFAULT NULL COMMENT '上年度销售额（万元）',
  `AgedProfit` decimal(18,6) DEFAULT NULL COMMENT '上年度利润总额（万元）',
  `AgedSafety` decimal(18,6) DEFAULT NULL COMMENT '上年度安全生产投入（万元）',
  `OverhaulSystem` decimal(18,6) DEFAULT NULL COMMENT '检修制度（天/年）',
  `WastewaterDischarge` decimal(18,6) DEFAULT NULL COMMENT '废水排放量（吨）',
  `WastewaterGo` text COMMENT '废水去向',
  `WorkDays` decimal(18,3) DEFAULT NULL COMMENT '年工作天数',
  `WorkingHours` decimal(18,3) DEFAULT NULL COMMENT '工作时数总计（h/a）',
  `ClassNumber` decimal(18,3) DEFAULT NULL COMMENT '一天班次数',
  `IsSurroundingEvent` smallint(6) DEFAULT NULL COMMENT '近5年内是否有历史突发环境事件(0->否 1->是)',
  `SurroundingEventContent` text COMMENT '近5年内历史突发环境事件内容',
  `DrillsNumber` int(11) DEFAULT NULL COMMENT '年环境应急演练次数（次/年）',
  `SafetyAccidentLevel` smallint(6) DEFAULT NULL COMMENT '近5年内安全生产事故(0->无事故发生 1->一般事故 2->较大事故 3->重大事故 4->特别重大事故)',
  `SafetyAccidentContent` text COMMENT '近5年内安全生产事故内容',
  `PreventionControl` text COMMENT '环评及批复文件的各项环境风险防控和应急措施',
  `ApprovalNumber` varchar(500) DEFAULT NULL COMMENT '项目批复文号（包括立项、环评、环保验收）',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业基本信息采集表';

-- ----------------------------
-- Table structure for hzx_company_crafts
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_crafts`;
CREATE TABLE `hzx_company_crafts` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `score` decimal(18,2) DEFAULT NULL COMMENT '小计得分',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业生产工艺过程评估';

-- ----------------------------
-- Table structure for hzx_company_crafts_detail
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_crafts_detail`;
CREATE TABLE `hzx_company_crafts_detail` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `CraftsID` bigint(20) NOT NULL COMMENT '工艺评估编号',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '项目评估id',
  `BaseID` bigint(20) DEFAULT NULL COMMENT '评估基础id',
  `IsHave` smallint(6) DEFAULT NULL COMMENT '是否包含（0->否 1->是）',
  `SetsNumber` decimal(18,6) DEFAULT NULL COMMENT '套数',
  `UnitName` varchar(150) DEFAULT NULL COMMENT '风险单元名称',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业生产工艺过程评估明细';

-- ----------------------------
-- Table structure for hzx_company_crafts_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_crafts_info`;
CREATE TABLE `hzx_company_crafts_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `CraftsDesc` longtext COMMENT '生产工艺说明',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='生产工艺说明';

-- ----------------------------
-- Table structure for hzx_company_design_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_design_info`;
CREATE TABLE `hzx_company_design_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) NOT NULL COMMENT '评估编号',
  `ProjectName` varchar(255) DEFAULT NULL COMMENT '工程名称',
  `DesignCompany` varchar(255) DEFAULT NULL COMMENT '设计企业',
  `DesignQualification` smallint(6) DEFAULT NULL COMMENT '设计方资质（1->甲级 2->乙级 3->丙级）',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主体工程设计企业及资质';

-- ----------------------------
-- Table structure for hzx_company_division_quality
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_division_quality`;
CREATE TABLE `hzx_company_division_quality` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `FunctionDivision` longtext COMMENT '环境功能区划情况',
  `SurfaceWaterQuality` longtext COMMENT '最近一年地表水环境质量现状',
  `GroundwaterQuality` longtext COMMENT '最近一年地下水环境质量现状',
  `AtmosphereQuality` longtext COMMENT '最近一年大气环境质量现状',
  `SoilQuality` longtext COMMENT '最近一年土壤环境质量现状',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='环境功能区划及环境质量现状';

-- ----------------------------
-- Table structure for hzx_company_emergency_agency
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_emergency_agency`;
CREATE TABLE `hzx_company_emergency_agency` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `AgencyName` varchar(150) DEFAULT NULL COMMENT '单位名称',
  `IsHave` smallint(6) DEFAULT NULL COMMENT '选择项内容(0-无 1->有)',
  `content` longtext COMMENT '填写内容',
  `ContactNumber` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业外部应急救援机构及联系方式统计表';

-- ----------------------------
-- Table structure for hzx_company_emergency_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_emergency_info`;
CREATE TABLE `hzx_company_emergency_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `SuppliesName` varchar(100) DEFAULT NULL COMMENT '名称',
  `SuppliesModel` varchar(100) DEFAULT NULL COMMENT '型号',
  `SuppliesUnit` varchar(30) DEFAULT NULL COMMENT '单位',
  `SuppliesNumber` decimal(18,3) DEFAULT NULL COMMENT '数量',
  `ScrappedDate` datetime DEFAULT NULL COMMENT '报废日期',
  `StorageArea` varchar(255) DEFAULT NULL COMMENT '储存区域',
  `SuppliesUse` varchar(255) DEFAULT NULL COMMENT '用途',
  `BelongUnit` varchar(255) DEFAULT NULL COMMENT '所属单位',
  `AreaCode` varchar(150) DEFAULT NULL COMMENT '行政区划代码',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `longitude` varchar(200) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(200) DEFAULT NULL COMMENT '纬度',
  `ContactName` varchar(50) DEFAULT NULL COMMENT '联系人姓名',
  `ContactNumber` varchar(100) DEFAULT NULL COMMENT '联系人联系电话',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业现有应急物资与装备统计表';

-- ----------------------------
-- Table structure for hzx_company_emergency_manage
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_emergency_manage`;
CREATE TABLE `hzx_company_emergency_manage` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `CheckCode` varchar(64) NOT NULL COMMENT '排查内容编号(base_emergency_item表item_code)',
  `CheckResult` smallint(6) DEFAULT NULL COMMENT '检查结果(0->否 1->是 2->其他)',
  `CheckResultDesc` text COMMENT '检查情况具体情况说明',
  `GovernPeriod` varchar(64) DEFAULT NULL COMMENT '治理期限(短/中/长期)',
  `GovernDate` datetime DEFAULT NULL COMMENT '完成期限',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业突发环境事件应急管理隐患检查表';

-- ----------------------------
-- Table structure for hzx_company_emergency_organization
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_emergency_organization`;
CREATE TABLE `hzx_company_emergency_organization` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `OrganizationName` varchar(100) DEFAULT NULL COMMENT '应急机构',
  `ServiceNumber` varchar(50) DEFAULT NULL COMMENT '应急服务热线',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `CanDel` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业内部应急救援组织架构表';

-- ----------------------------
-- Table structure for hzx_company_equipment_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_equipment_info`;
CREATE TABLE `hzx_company_equipment_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `EquipmentCategory` varchar(150) DEFAULT NULL COMMENT '类别',
  `EquipmentName` varchar(150) DEFAULT NULL COMMENT '设备名称',
  `EquipmentModel` varchar(150) DEFAULT NULL COMMENT '型号',
  `EquipmentNumber` decimal(18,3) DEFAULT NULL COMMENT '数量',
  `EquipmentUnit` varchar(30) DEFAULT NULL COMMENT '单位',
  `manufacturer` char(10) DEFAULT NULL COMMENT '生产厂家',
  `PurchaseDate` datetime DEFAULT NULL COMMENT '采购日期',
  `InvolveCrafts` longtext COMMENT '涉及生产工艺过程',
  `IsTimeOut` smallint(6) DEFAULT NULL COMMENT '是否属于国家规定的限期淘汰的工艺名录和设备(0->否 1->是)',
  `IsOtherCrafts` smallint(6) DEFAULT NULL COMMENT '是否涉及其他高温或高压、涉及易燃易爆等物质的工艺过程(0->否 1->是)',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主要生产设备一览表';

-- ----------------------------
-- Table structure for hzx_company_evaluate_module
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_evaluate_module`;
CREATE TABLE `hzx_company_evaluate_module` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估id',
  `ModuleCode` varchar(50) DEFAULT NULL COMMENT '评估模块编号',
  `ModuleScore` int(11) DEFAULT NULL COMMENT '评估模块得分',
  `MaxModuleScore` int(11) DEFAULT NULL COMMENT '模块最大分值',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='环境风险评估水平量化模块明细表';

-- ----------------------------
-- Table structure for hzx_company_evaluate_module_base
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_evaluate_module_base`;
CREATE TABLE `hzx_company_evaluate_module_base` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `ModuleCode` varchar(50) DEFAULT NULL COMMENT '评估模块编号',
  `ModuleScore` int(11) DEFAULT NULL COMMENT '评估模块得分',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='环境风险评估水平量化模块分值表基础表';

-- ----------------------------
-- Table structure for hzx_company_evaluate_resource
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_evaluate_resource`;
CREATE TABLE `hzx_company_evaluate_resource` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `BelongDataID` bigint(20) DEFAULT NULL COMMENT '资源所属数据编号',
  `ResourceCategoryCode` varchar(150) NOT NULL COMMENT '资源类别编号（base_resource_category表category_code列）',
  `ResourceFormat` smallint(6) NOT NULL COMMENT '资源格式（1->图片 2->视频）',
  `ResourceUrl` varchar(500) NOT NULL COMMENT '资源地址',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `Width` smallint(6) DEFAULT '0',
  `Height` smallint(6) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评估资源信息表';

-- ----------------------------
-- Table structure for hzx_company_evaluate_score
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_evaluate_score`;
CREATE TABLE `hzx_company_evaluate_score` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `EvaluateScore` int(11) DEFAULT NULL COMMENT '企业环境风险水平量化分值',
  `RiskLevel` varchar(100) DEFAULT NULL COMMENT '企业环境风险等级（风险程度）',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='环境风险评估水平量化分值等级表';

-- ----------------------------
-- Table structure for hzx_company_evaluate_submodule
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_evaluate_submodule`;
CREATE TABLE `hzx_company_evaluate_submodule` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估id',
  `ModuleCode` varchar(50) DEFAULT NULL COMMENT '评估模块编号',
  `EvaluateCode` varchar(255) DEFAULT NULL COMMENT '子模块评估编码',
  `result` varchar(255) DEFAULT NULL COMMENT '子模块评估结果',
  `score` int(11) DEFAULT NULL COMMENT '得分',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='环境风险评估水平量化子模块明细表';

-- ----------------------------
-- Table structure for hzx_company_gas_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_gas_evaluate`;
CREATE TABLE `hzx_company_gas_evaluate` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `TotalScore` int(11) DEFAULT NULL COMMENT '得分',
  `LevelValue` decimal(18,2) DEFAULT NULL COMMENT '水平值',
  `LevelType` varchar(20) DEFAULT NULL COMMENT '水平类型',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for hzx_company_gas_evaluate_detail
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_gas_evaluate_detail`;
CREATE TABLE `hzx_company_gas_evaluate_detail` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `GasEvaluateId` bigint(20) NOT NULL COMMENT '涉气评估ID',
  `BasisCode` varchar(50) DEFAULT NULL COMMENT '评估依据编号(base_gas_basis表basis_code列)',
  `EvaluateResult` smallint(6) DEFAULT NULL COMMENT '是否(0->否 1->是)',
  `ActualScore` int(11) DEFAULT NULL COMMENT '实际得分',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉气环境风险防控措施与突发大气环境事件发生情况评估明细';

-- ----------------------------
-- Table structure for hzx_company_gas_ratio
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_gas_ratio`;
CREATE TABLE `hzx_company_gas_ratio` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `ratio` decimal(18,2) DEFAULT NULL COMMENT '企业环境风险物质与临界量比值',
  `QLevel` varchar(20) DEFAULT NULL COMMENT 'Q水平',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉气风险物质数量与临界值比值';

-- ----------------------------
-- Table structure for hzx_company_gas_receptor
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_gas_receptor`;
CREATE TABLE `hzx_company_gas_receptor` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `ReceptorType` varchar(100) DEFAULT NULL COMMENT '大气环境风险受体类型',
  `SummaryDesc` longtext COMMENT '总结性说明',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='大气环境风险受体敏感程度类型划分表';

-- ----------------------------
-- Table structure for hzx_company_gas_receptor_detail
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_gas_receptor_detail`;
CREATE TABLE `hzx_company_gas_receptor_detail` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `ReceptorTypeID` bigint(20) NOT NULL COMMENT '受体类型编号',
  `ReceptorCode` varchar(100) DEFAULT NULL COMMENT '环境风险受体编号',
  `result` smallint(6) DEFAULT NULL COMMENT '结果(0->否 1->是)',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='大气环境风险受体敏感程度类型划分表明细';

-- ----------------------------
-- Table structure for hzx_company_instal_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_instal_info`;
CREATE TABLE `hzx_company_instal_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) NOT NULL COMMENT '评估编号',
  `ProjectName` varchar(255) DEFAULT NULL COMMENT '工程名称',
  `InstalCompany` varchar(255) DEFAULT NULL COMMENT '安装企业',
  `InstalQualification` smallint(6) DEFAULT NULL COMMENT '安装方资质（1->甲级 2->乙级 3->丙级）',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主体工程安装企业及资质';

-- ----------------------------
-- Table structure for hzx_company_natural_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_natural_info`;
CREATE TABLE `hzx_company_natural_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) NOT NULL COMMENT '评估编号',
  `GeologyRisk` longtext COMMENT '地质情况及地址灾害风险',
  `MeteorologicalRisk` longtext COMMENT '气象情况及气象灾害风险',
  `OtherRisk` longtext COMMENT '其他突发意外事故风险',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自然环境概表';

-- ----------------------------
-- Table structure for hzx_company_organization_person
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_organization_person`;
CREATE TABLE `hzx_company_organization_person` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `OrganizationID` bigint(20) NOT NULL COMMENT '应急救援组织ID',
  `position` varchar(100) DEFAULT NULL COMMENT '应急指挥部职务',
  `CompanyPost` varchar(100) DEFAULT NULL COMMENT '公司岗位',
  `PersonName` varchar(100) DEFAULT NULL COMMENT '人员姓名',
  `PhoneNumber` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `CanDel` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业内部应急救援组织成员表';

-- ----------------------------
-- Table structure for hzx_company_pollution_analysis
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_pollution_analysis`;
CREATE TABLE `hzx_company_pollution_analysis` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `PollutionCategory` smallint(6) DEFAULT NULL COMMENT '污染物类别(1->废气 2->废水 3->固体废物 4->噪音)',
  `AnalysisContent` longtext COMMENT '产污环节分析',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='产污环节分析';

-- ----------------------------
-- Table structure for hzx_company_prevention_control
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_prevention_control`;
CREATE TABLE `hzx_company_prevention_control` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `ProjectCode` varchar(50) DEFAULT NULL COMMENT '排查项目编号(base_prevention_item表item_code)',
  `IsTally` smallint(6) DEFAULT NULL COMMENT '是否符合(0->否 1->是)',
  `StatusQuo` longtext COMMENT '现状',
  `MaybeHarm` longtext COMMENT '可能导致的危害',
  `HiddenLevel` varchar(50) DEFAULT NULL COMMENT '隐患级别',
  `GovernPeriod` varchar(64) DEFAULT NULL COMMENT '治理期限(短/中/长期)',
  `GovernDate` datetime DEFAULT NULL COMMENT '治理完成日期',
  `DifferenceAnalysis` longtext COMMENT '与标准的差异分析',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业突发环境事件风险防控措施隐患分析表';

-- ----------------------------
-- Table structure for hzx_company_protection_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_protection_info`;
CREATE TABLE `hzx_company_protection_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) NOT NULL COMMENT '评估编号',
  `IsGreening` smallint(6) DEFAULT NULL COMMENT '是否有绿化工程(0->无 1->有)',
  `IsExhaustGas` smallint(6) DEFAULT NULL COMMENT '是否有废气处理系统(0->无 1->有)',
  `IsWasteWater` smallint(6) DEFAULT NULL COMMENT '是否有废水处理系统(0->无 1->有)',
  `IsSolidWaste` smallint(6) DEFAULT NULL COMMENT '是否有固废处理设施(0->无 1->有)',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='环保工程一览表';

-- ----------------------------
-- Table structure for hzx_company_risk_level
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_risk_level`;
CREATE TABLE `hzx_company_risk_level` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `RiskLevelResult` varchar(255) DEFAULT NULL COMMENT '综合企业风险等级',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业环境风险等级计算表';

-- ----------------------------
-- Table structure for hzx_company_risk_result
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_risk_result`;
CREATE TABLE `hzx_company_risk_result` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `RiskKey` varchar(64) NOT NULL COMMENT '拼接结果',
  `result` varchar(64) NOT NULL COMMENT '结果 一般、较大、重大环境风险',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业环境风险等级计算依据表';

-- ----------------------------
-- Table structure for hzx_company_risk_substance_discern_type
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_risk_substance_discern_type`;
CREATE TABLE `hzx_company_risk_substance_discern_type` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `type` varchar(50) DEFAULT NULL COMMENT '类别',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='突发环境事件风险企业类别';

-- ----------------------------
-- Table structure for hzx_company_risk_substance_info
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_risk_substance_info`;
CREATE TABLE `hzx_company_risk_substance_info` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `category` varchar(50) DEFAULT NULL COMMENT '类别',
  `SubstanceName` varchar(255) DEFAULT NULL COMMENT '名称',
  `MainIngredient` varchar(255) DEFAULT NULL COMMENT '主要化学成分',
  `unit` varchar(50) DEFAULT NULL COMMENT '单位',
  `CurrentNumber` decimal(18,3) DEFAULT NULL COMMENT '目前数量',
  `YearMaxNumber` decimal(18,3) DEFAULT NULL COMMENT '年最大存在量',
  `RiskUnitName` varchar(150) DEFAULT NULL COMMENT '环境风险单位名称',
  `StoragePlace` varchar(500) DEFAULT NULL COMMENT '储存场所',
  `MaxExistAmountWater` decimal(18,3) DEFAULT NULL,
  `MaxExistAmountGas` decimal(18,3) DEFAULT NULL COMMENT '年度风险物质在厂界内的最大存在量（吨）',
  `source` varchar(500) DEFAULT NULL COMMENT '来源',
  `TransportMode` varchar(255) DEFAULT NULL COMMENT '运输方式',
  `identification` smallint(6) DEFAULT NULL COMMENT '风险物质辨识(0->否 1->是)',
  `CasNumber` varchar(150) DEFAULT NULL,
  `SubstanceCategory` smallint(6) DEFAULT NULL,
  `CRITICALAMOUNT` decimal(18,3) DEFAULT NULL COMMENT '临界量',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  `CanDel` smallint(6) DEFAULT NULL COMMENT '能否删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业风险物质统计表';

-- ----------------------------
-- Table structure for hzx_company_safety
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_safety`;
CREATE TABLE `hzx_company_safety` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `FireAccepting` smallint(6) DEFAULT NULL COMMENT '消防验收意见(0->不合格 1->合格)',
  `LastFireResult` smallint(6) DEFAULT NULL COMMENT '最近一次消防检查结果(0->不合格 1->合格)',
  `IsDanger` smallint(6) DEFAULT NULL COMMENT '危险化工品生产企业(0->非 1->是)',
  `IsSafeLicense` smallint(6) DEFAULT NULL COMMENT '取得安全生产许可(0->未取得 1->取得)',
  `IsDangerSafe` smallint(6) DEFAULT NULL COMMENT '开展危险化学品安全评价(0->未开展 1->开展)',
  `IsSafeCompletion` smallint(6) DEFAULT NULL COMMENT '通过安全设施竣工验收(0->未通过 1->通过)',
  `IsMajorHazard` smallint(6) DEFAULT NULL COMMENT '重大危险源(0->无 1->所有都已备案 2->有未备案)',
  `SafetyLevel` smallint(6) DEFAULT NULL COMMENT '安全标准化等级(0->无 1->一级 2->二级 3->三级)',
  `ConditionCertify` smallint(6) DEFAULT NULL COMMENT '环境管理体系认证(0->无 1->有)',
  `HseSystem` smallint(6) DEFAULT NULL COMMENT 'HSE管理体系(0->无 1->有)',
  `SafetySystem` smallint(6) DEFAULT NULL COMMENT '安全生产管理制度(0->无 1->有)',
  `ContractorSystem` smallint(6) DEFAULT NULL COMMENT '承包商管理制度(0->无 1->有)',
  `HiddenDangerSystem` smallint(6) DEFAULT NULL COMMENT '隐患排查与治理制度(0->无 1->有)',
  `SafetyEducationSystem` smallint(6) DEFAULT NULL COMMENT '安全教育制度(0->无 1->有)',
  `SpecialSystem` smallint(6) DEFAULT NULL COMMENT '特种作业管理制度(0->无 1->有)',
  `HotSystem` smallint(6) DEFAULT NULL COMMENT '动火作业管理制度(0->无 1->有)',
  `FeatureDeviceSystem` smallint(6) DEFAULT NULL COMMENT '特征设备安全管理制度(0->无 1->有)',
  `FacilitySystem` smallint(6) DEFAULT NULL COMMENT '设施维修保养管理制度(0->无 1->有)',
  `NoSmokingManage` smallint(6) DEFAULT NULL COMMENT '禁烟制度内务管理(0->无 1->有)',
  `EmergencySystem` smallint(6) DEFAULT NULL COMMENT '应急预案演练制度(0->无 1->有)',
  `SafetyTrainingManage` smallint(6) DEFAULT NULL COMMENT '企业安全培训管理制度(0->无 1->有)',
  `TrainingProgram` longtext COMMENT '培训计划',
  `TrainingRecord` longtext COMMENT '培训记录',
  `ThunderMeasures` smallint(6) DEFAULT NULL COMMENT '防雷措施(0->无 1->有)',
  `ThunderMeasuresDesc` longtext COMMENT '防雷措施说明',
  `ElectricityMeasures` smallint(6) DEFAULT NULL COMMENT '防静电措施(0->无 1->有)',
  `ElectricityMeasuresDesc` longtext COMMENT '防静电措施说明',
  `ExplodeMeasures` smallint(6) DEFAULT NULL COMMENT '防爆措施(0->无 1->有)',
  `ExplodeMeasuresDesc` longtext COMMENT '防爆措施说明',
  `MonitorFacility` smallint(6) DEFAULT NULL COMMENT '监控设备设施(0->无 1->有)',
  `MonitorFacilityDesc` longtext COMMENT '监控设备设施说明',
  `WarningFacility` smallint(6) DEFAULT NULL COMMENT '预警设备设施(0->无 1->有)',
  `WarningFacilityDesc` longtext COMMENT '预警设备设施说明',
  `ProtectionFacility` smallint(6) DEFAULT NULL COMMENT '防护设备设施(0->无 1->有)',
  `ProtectionFacilityDesc` longtext COMMENT '防护设备设施说明',
  `FireMeasure` smallint(6) DEFAULT NULL COMMENT '存储区防火措施(0->无防火堤 1->防火堤有效（高度够、没有裂纹、堤阀常关） 2->有防火堤容量不够)',
  `FireMeasureDesc` longtext COMMENT '存储区防火措施说明',
  `PollutionMeasure` smallint(6) DEFAULT NULL COMMENT '环境污染管理措施(0->无 1->有)',
  `PollutionMeasureDesc` longtext COMMENT '环境污染管理措施说明',
  `LoadingSystem` smallint(6) DEFAULT NULL COMMENT '装卸操作管理制度(0->无 1->有)',
  `LoadingSystemDesc` longtext COMMENT '装卸操作管理制度说明',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='安全生产管理状况说明表';

-- ----------------------------
-- Table structure for hzx_company_water_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_water_evaluate`;
CREATE TABLE `hzx_company_water_evaluate` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) NOT NULL COMMENT '评估编号',
  `TotalScore` int(11) DEFAULT NULL COMMENT '得分',
  `LevelValue` decimal(18,2) DEFAULT NULL COMMENT '水平值',
  `LevelType` varchar(20) DEFAULT NULL COMMENT '水平类型',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉水环境风险防控措施与突发水环境事件发生情况评估';

-- ----------------------------
-- Table structure for hzx_company_water_evaluate_detail
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_water_evaluate_detail`;
CREATE TABLE `hzx_company_water_evaluate_detail` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `WaterEvaluateId` bigint(20) NOT NULL COMMENT '涉水评估ID',
  `BasisCode` varchar(50) DEFAULT NULL COMMENT '评估依据编号(base_water_basis表basis_code列)',
  `EvaluateResult` smallint(6) DEFAULT NULL COMMENT '是否(0->否 1->是)',
  `ActualScore` int(11) DEFAULT NULL COMMENT '实际得分',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉水环境风险防控措施与突发水环境事件发生情况评估明细';

-- ----------------------------
-- Table structure for hzx_company_water_ratio
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_water_ratio`;
CREATE TABLE `hzx_company_water_ratio` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `ratio` decimal(18,2) DEFAULT NULL COMMENT '企业环境风险物质与临界量比值',
  `QLevel` varchar(20) DEFAULT NULL COMMENT 'Q水平',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='涉水风险物质数量与临界量比值';

-- ----------------------------
-- Table structure for hzx_company_water_receptor
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_water_receptor`;
CREATE TABLE `hzx_company_water_receptor` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `EvaluateID` bigint(20) DEFAULT NULL COMMENT '评估ID(排查id)',
  `ReceptorType` varchar(50) DEFAULT NULL COMMENT '水环境风险受体类型',
  `SummaryDesc` text COMMENT '总结性说明',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='水环境风险受体敏感程度类型划分';

-- ----------------------------
-- Table structure for hzx_company_water_receptor_detail
-- ----------------------------
DROP TABLE IF EXISTS `hzx_company_water_receptor_detail`;
CREATE TABLE `hzx_company_water_receptor_detail` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `ReceptorTypeId` bigint(20) NOT NULL COMMENT '受体类型编号',
  `receptorCode` varchar(100) DEFAULT NULL COMMENT '环境风险受体编号',
  `result` smallint(6) DEFAULT NULL COMMENT '结果(0->否 1->是)',
  `resultName` varchar(150) DEFAULT NULL COMMENT '名称',
  `SortFlag` int(11) DEFAULT NULL COMMENT '排序',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `Remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `DelFlag` smallint(6) DEFAULT '0' COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='水环境风险受体敏感程度类型划分明细';
