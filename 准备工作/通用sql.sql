
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `ID` bigint(20) NOT NULL COMMENT '主键ID',
  `AddUser` bigint(20) NOT NULL COMMENT '创建人',
  `AddTime` datetime NOT NULL COMMENT '创建时间',
  `ModifyUser` bigint(20) DEFAULT NULL COMMENT '修改人',
  `ModifyTime` datetime DEFAULT NULL COMMENT '修改时间',
  `DelFlag` smallint(6) DEFAULT 0 COMMENT '删除标识(0->正常 1->删除)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_general_ci COMMENT='test';


