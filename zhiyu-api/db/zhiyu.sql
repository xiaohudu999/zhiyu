-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `user_name` varchar(30) DEFAULT NULL COMMENT '账号',
  `real_name` varchar(30) DEFAULT NULL COMMENT '名称',
  `nick_name` varchar(30) DEFAULT NULL COMMENT '昵称',
  `user_type` varchar(30) DEFAULT NULL COMMENT '用户类型',
  `avatar_id` bigint(20) DEFAULT NULL COMMENT '头像(文件ID)',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `gender` varchar(100) DEFAULT NULL COMMENT '性别(字典值)',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `parent_id` varchar(20) DEFAULT NULL COMMENT '父id',
  `id_path` mediumtext COMMENT 'id路径',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='组织表';

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='组织表';


