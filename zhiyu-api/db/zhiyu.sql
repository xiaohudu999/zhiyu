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
  `password_update_time` datetime DEFAULT NULL COMMENT '密码更新时间',
  `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `is_deleted` tinyint(1) DEFAULT 0 COMMENT '删除标志(0-存在,1-删除)',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父id',
  `id_path` text COMMENT 'id路径',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `is_deleted` tinyint(1) DEFAULT 0 COMMENT '删除标志(0-存在,1-删除)',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='组织表';

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `name` varchar(30) NOT NULL COMMENT '岗位名称',
  `position_code` varchar(30) NOT NULL COMMENT '岗位编码',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='组织表';

-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父id',
  `id_path` text COMMENT 'id路径',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `path` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  `module_type` varchar(100) NOT NULL COMMENT '模块类型(字典值)',
  `sort_no` int(10) DEFAULT NULL COMMENT '排序',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `hide_in_menu` tinyint(1) DEFAULT 0 COMMENT '是否隐藏菜单(0-否,1-是)',
  `code` varchar(255) DEFAULT NULL COMMENT '按钮标识',
  `permission` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='模块表';

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
    `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
    `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
    PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';

-- ----------------------------
-- Table structure for sys_role_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_module`;
CREATE TABLE `sys_role_module` (
   `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
   `module_id` bigint(20) DEFAULT NULL COMMENT '模块id',
   PRIMARY KEY (`role_id`, `module_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色模块关联表';

-- ----------------------------
-- Table structure for sys_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_organization`;
CREATE TABLE `sys_user_organization` (
     `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
     `organization_id` bigint(20) DEFAULT NULL COMMENT '组织id',
     PRIMARY KEY (`user_id`, `organization_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户组织关联表';

-- ----------------------------
-- Table structure for sys_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_position`;
CREATE TABLE `sys_user_position` (
     `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
     `position_id` bigint(20) DEFAULT NULL COMMENT '岗位id',
     PRIMARY KEY (`user_id`, `position_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户岗位关联表';


-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
    `id` bigint(20) NOT NULL COMMENT '主键id',
    `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
    `dict_code` varchar(100) NOT NULL COMMENT '字典编码',
    `dict_type` varchar(100) DEFAULT NULL COMMENT '字典类型(字典值)',
    `description` varchar(255) DEFAULT NULL COMMENT '描述',
    `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
    `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `uk_sys_dict_dict_name` (`dict_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item` (
     `id` bigint(20) NOT NULL COMMENT '主键id',
     `dict_id` bigint(20) NOT NULL COMMENT '字典id',
     `item_text` varchar(100) NOT NULL COMMENT '字典项文本',
     `item_value` varchar(100) NOT NULL COMMENT '字典项值',
     `description` varchar(255) DEFAULT NULL COMMENT '描述',
     `sort_no` int(10) DEFAULT NULL COMMENT '排序',
     `status` varchar(100) DEFAULT NULL COMMENT '状态(字典值)',
     `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
     `create_time` datetime DEFAULT NULL COMMENT '创建时间',
     `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
     `update_time` datetime DEFAULT NULL COMMENT '更新时间',
     PRIMARY KEY (`id`) USING BTREE,
     UNIQUE KEY `uk_sys_dict_item_dict_id_item_value` (`dict_id`,`item_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典项表';

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
     `id` bigint(20) NOT NULL COMMENT '主键id',
     `name` varchar(100) NOT NULL COMMENT '参数名称',
     `key` varchar(100) NOT NULL COMMENT '参数键名',
     `value` varchar(255) NOT NULL COMMENT '参数键值',
     `config_type` varchar(100) DEFAULT NULL COMMENT '配置类型(字典值)',
     `remark` varchar(255) DEFAULT NULL COMMENT '备注',
     `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
     `create_time` datetime DEFAULT NULL COMMENT '创建时间',
     `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
     `update_time` datetime DEFAULT NULL COMMENT '更新时间',
     PRIMARY KEY (`id`) USING BTREE,
     UNIQUE KEY `uk_sys_config_key` (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';

-- ----------------------------
-- Table structure for mon_api_log
-- ----------------------------
DROP TABLE IF EXISTS `mon_api_log`;
CREATE TABLE `mon_api_log` (
   `id` bigint(20) NOT NULL COMMENT '主键id',
   `title` varchar(100) DEFAULT NULL COMMENT 'API名称',
   `path` varchar(255) DEFAULT NULL COMMENT '请求路径',
   `http_method` varchar(10) DEFAULT NULL COMMENT '请求方法',
   `ip` varchar(15) DEFAULT NULL COMMENT 'ip地址',
   `status_code` int(3) DEFAULT NULL COMMENT '响应码',
   `class_method` varchar(255) DEFAULT NULL COMMENT '类方法',
   `start_time` datetime DEFAULT NULL COMMENT '开始时间',
   `duration` bigint(10) DEFAULT NULL COMMENT '耗时',
   `user_agent` text COMMENT 'user-agent',
   `request_query` text COMMENT '请求query',
   `request_body` text COMMENT '请求body',
   `response` text COMMENT '响应',
   `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
   `create_time` datetime DEFAULT NULL COMMENT '创建时间',
   `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
   `update_time` datetime DEFAULT NULL COMMENT '更新时间',
   PRIMARY KEY (`id`) USING BTREE,
   KEY `idx_mon_api_log_status_code` (`status_code`) USING BTREE,
   KEY `idx_mon_api_log_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='api日志表';

-- ----------------------------
-- Table structure for mon_login_log
-- ----------------------------
DROP TABLE IF EXISTS `mon_login_log`;
CREATE TABLE `mon_login_log` (
   `id` bigint(20) NOT NULL COMMENT '主键id',
   `user_name` varchar(30) DEFAULT NULL COMMENT '账号',
   `path` varchar(255) DEFAULT NULL COMMENT '请求路径',
   `http_method` varchar(10) DEFAULT NULL COMMENT '请求方法',
   `ip` varchar(15) DEFAULT NULL COMMENT 'ip地址',
   `status_code` int(3) DEFAULT NULL COMMENT '响应码',
   `class_method` varchar(255) DEFAULT NULL COMMENT '类方法',
   `start_time` datetime DEFAULT NULL COMMENT '开始时间',
   `duration` bigint(10) DEFAULT NULL COMMENT '耗时',
   `user_agent` text COMMENT 'user-agent',
   `request_query` text COMMENT '请求query',
   `request_body` text COMMENT '请求body',
   `response` text COMMENT '响应',
   PRIMARY KEY (`id`) USING BTREE,
   KEY `idx_mon_api_log_status_code` (`status_code`) USING BTREE,
   KEY `idx_mon_api_log_start_time` (`start_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='登录日志表';

