/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost
 Source Database       : ferry

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : utf-8

 Date: 08/05/2021 15:07:42 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `casbin_rule`
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `p_type` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_casbin_rule_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `p_process_classify`
-- ----------------------------
DROP TABLE IF EXISTS `p_process_classify`;
CREATE TABLE `p_process_classify` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `creator` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_p_process_classify_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `p_process_info`
-- ----------------------------
DROP TABLE IF EXISTS `p_process_info`;
CREATE TABLE `p_process_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `structure` json DEFAULT NULL,
  `classify` int DEFAULT NULL,
  `tpls` json DEFAULT NULL,
  `task` json DEFAULT NULL,
  `submit_count` int DEFAULT '0',
  `creator` int DEFAULT NULL,
  `notice` json DEFAULT NULL,
  `remarks` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_p_process_info_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `p_task_history`
-- ----------------------------
DROP TABLE IF EXISTS `p_task_history`;
CREATE TABLE `p_task_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `task` int DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `task_type` int DEFAULT NULL,
  `execution_time` varchar(128) DEFAULT NULL,
  `result` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_p_task_history_delete_time` (`delete_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `p_task_info`
-- ----------------------------
DROP TABLE IF EXISTS `p_task_info`;
CREATE TABLE `p_task_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `task_type` varchar(45) DEFAULT NULL,
  `content` longtext,
  `creator` int DEFAULT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_p_task_info_delete_time` (`delete_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `p_tpl_info`
-- ----------------------------
DROP TABLE IF EXISTS `p_tpl_info`;
CREATE TABLE `p_tpl_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `form_structure` json DEFAULT NULL,
  `creator` int DEFAULT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_p_tpl_info_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `p_work_order_circulation_history`
-- ----------------------------
DROP TABLE IF EXISTS `p_work_order_circulation_history`;
CREATE TABLE `p_work_order_circulation_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `work_order` int DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `source` varchar(128) DEFAULT NULL,
  `target` varchar(128) DEFAULT NULL,
  `circulation` varchar(128) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `processor` varchar(45) DEFAULT NULL,
  `processor_id` int DEFAULT NULL,
  `cost_duration` int DEFAULT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_p_work_order_circulation_history_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `p_work_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `p_work_order_info`;
CREATE TABLE `p_work_order_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `process` int DEFAULT NULL,
  `classify` int DEFAULT NULL,
  `is_end` int DEFAULT '0',
  `is_denied` int DEFAULT '0',
  `state` json DEFAULT NULL,
  `related_person` json DEFAULT NULL,
  `creator` int DEFAULT NULL,
  `urge_count` int DEFAULT '0',
  `urge_last_time` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_p_work_order_info_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `p_work_order_tpl_data`
-- ----------------------------
DROP TABLE IF EXISTS `p_work_order_tpl_data`;
CREATE TABLE `p_work_order_tpl_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `work_order` int DEFAULT NULL,
  `form_structure` json DEFAULT NULL,
  `form_data` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_p_work_order_tpl_data_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `dept_path` varchar(255) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `leader` int DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `idx_sys_dept_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginlog`;
CREATE TABLE `sys_loginlog` (
  `info_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `ipaddr` varchar(255) DEFAULT NULL,
  `login_location` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_loginlog_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `paths` varchar(128) DEFAULT NULL,
  `menu_type` varchar(1) DEFAULT NULL,
  `action` varchar(16) DEFAULT NULL,
  `permission` varchar(32) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `no_cache` char(1) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `visible` char(1) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `is_frame` int DEFAULT '0',
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `idx_sys_menu_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_name` varchar(128) DEFAULT NULL,
  `post_code` varchar(128) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `idx_sys_post_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `role_key` varchar(128) DEFAULT NULL,
  `role_sort` int DEFAULT NULL,
  `flag` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `admin` char(1) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `idx_sys_role_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `role_name` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_settings`
-- ----------------------------
DROP TABLE IF EXISTS `sys_settings`;
CREATE TABLE `sys_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `classify` int DEFAULT NULL,
  `content` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_settings_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `delete_time` timestamp NULL DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_sys_user_delete_time` (`delete_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;

-- 开始初始化数据 ;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

BEGIN;
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menu', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/sysUserList', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/sysUser', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/sysUser', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/user/profile', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/rolelist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/role/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/role', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/role', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menurole', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/deptList', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/dept', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/dept', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/postlist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/post/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/post', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/post', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menu/:id', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/menuids', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/getinfo', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/deptTree', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/logout', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/classify', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/classify', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/classify', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/classify', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/tpl', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/tpl', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/tpl', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/tpl', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/tpl/details', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/process', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/process', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/process', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/process', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/process/details', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/process/classify', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/task', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/task', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/task', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/task', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/task/details', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/process/classify', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/work-order/create', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/work-order/handle', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/work-order/process-structure', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/work-order/list', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/work-order/unity', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/work-order/inversion', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/dashboard', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/work-order/urge', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/settings', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/settings', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'admin', '/api/v1/loginlog', 'DELETE', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(p_type, v0, v1, v2, v3, v4, v5) VALUES ('p', 'admin', '/api/v1/work-order/active-order/:id', 'PUT', null, null, null);
INSERT INTO `casbin_rule`(p_type, v0, v1, v2, v3, v4, v5) VALUES ('p', 'admin', '/api/v1/work-order/delete/:id', 'DELETE', null, null, null);
INSERT INTO `casbin_rule`(p_type, v0, v1, v2, v3, v4, v5) VALUES ('p', 'admin', '/api/v1/ordinaryDeptList', 'GET', null, null, null);
INSERT INTO `casbin_rule`(p_type, v0, v1, v2, v3, v4, v5) VALUES ('p', 'admin', '/api/v1/tpl/clone/:id', 'POST', null, null, null);
INSERT INTO `casbin_rule`(p_type, v0, v1, v2, v3, v4, v5) VALUES ('p', 'admin', '/api/v1/process/clone/:id', 'POST', null, null, null);
INSERT INTO `casbin_rule`(p_type, v0, v1, v2, v3, v4, v5) VALUES ('p', 'admin', '/api/v1/work-order/reopen/:id', 'POST', null, null, null);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/user/profile', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/menurole', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/menuids', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/getinfo', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/deptTree', 'GET', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/logout', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL);
INSERT INTO `casbin_rule`(`p_type`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'common', '/api/v1/dashboard', 'GET', NULL, NULL, NULL);
COMMIT;

BEGIN;
INSERT INTO `sys_dept`(`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, 0, '/0/1', '磊哥科技', 0, null, '', 'lanyulei@fdevops.com', 0, '1', '1', '2021-02-24 21:30:59', '2021-02-24 21:30:59');
INSERT INTO `sys_dept`(`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (7, 1, '/0/1/7', '研发部', 1, null, '', '', 0, '1', '1', '2021-02-24 21:30:59', '2021-02-24 21:30:59');
INSERT INTO `sys_dept`(`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (8, 1, '/0/1/8', '运维部', 0, null, '', '', 0, '1', NULL, '2021-02-24 21:30:59', '2021-02-24 21:30:59');
INSERT INTO `sys_dept`(`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (9, 1, '/0/1/9', '客服部', 0, null, '', '', 0, '1', NULL, '2021-02-24 21:30:59', '2021-02-24 21:30:59');
INSERT INTO `sys_dept`(`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (10, 1, '/0/1/10', '人力资源', 3, null, '', '', 1, '1', '1', '2021-02-24 21:30:59', '2021-02-24 21:30:59');
COMMIT;

BEGIN;
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (2, 'Upms', '系统管理', 'example', '/upms', '/0/2', 'M', '无', '', 0, '1', '', 'Layout', 20, '0', '1', '11', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (3, 'Sysuser', '用户管理', 'user', 'sysuser', '/0/2/3', 'C', '无', 'system:sysuser:list', 2, null, null, '/system/sysuser/index', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (43, null, '新增用户', null, '/api/v1/sysuser', '/0/2/3/43', 'F', 'POST', 'system:sysuser:add', 3, null, null, null, 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (44, null, '查询用户', null, '/api/v1/sysuser', '/0/2/3/44', 'F', 'GET', 'system:sysuser:query', 3, null, null, null, 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (45, null, '修改用户', null, '/api/v1/sysuser/', '/0/2/3/45', 'F', 'PUT', 'system:sysuser:edit', 3, null, null, null, 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (46, null, '删除用户', null, '/api/v1/sysuser/', '/0/2/3/46', 'F', 'DELETE', 'system:sysuser:remove', 3, null, null, null, 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (51, 'Menu', '菜单管理', 'tree-table', 'menu', '/0/2/51', 'C', '无', 'system:sysmenu:list', 2, '1', '', '/system/menu/index', 5, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (52, 'Role', '角色管理', 'peoples', 'role', '/0/2/52', 'C', '无', 'system:sysrole:list', 2, '1', '', '/system/role/index', 2, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (56, 'Dept', '部门管理', 'tree', 'dept', '/0/2/56', 'C', '无', 'system:sysdept:list', 2, '0', '', '/system/dept/index', 4, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (57, 'post', '岗位管理', 'pass', 'post', '/0/2/57', 'C', '无', 'system:syspost:list', 2, '0', '', '/system/post/index', 3, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (63, '', '接口权限', 'bug', '', '/0/63', 'M', '', '', 0, '0', '', '', 99, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (64, '', '用户管理', 'user', '', '/0/63/280/64', 'M', '', '', 280, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (66, '', '菜单管理', 'tree-table', '', '/0/63/280/66', 'C', '', '', 280, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (67, '', '菜单列表', 'tree-table', '/api/v1/menulist', '/0/63/66/67', 'A', 'GET', '', 66, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (68, '', '新建菜单', 'tree', '/api/v1/menu', '/0/63/66/68', 'A', 'POST', '', 66, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (72, '', '修改菜单', 'bug', '/api/v1/menu', '/0/63/66/72', 'A', 'PUT', '', 66, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (73, '', '删除菜单', 'bug', '/api/v1/menu/:id', '/0/63/66/73', 'A', 'DELETE', '', 66, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (74, null, '管理员列表', 'bug', '/api/v1/sysUserList', '/0/63/64/74', 'A', 'GET', null, 64, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (75, null, '根据id获取管理员', 'bug', '/api/v1/sysUser/:id', '/0/63/64/75', 'A', 'GET', null, 64, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (76, null, '获取管理员', 'bug', '/api/v1/sysUser/', '/0/63/64/76', 'A', 'GET', null, 64, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (77, null, '创建管理员', 'bug', '/api/v1/sysUser', '/0/63/64/77', 'A', 'POST', null, 64, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (78, null, '修改管理员', 'bug', '/api/v1/sysUser', '/0/63/64/78', 'A', 'PUT', null, 64, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (79, null, '删除管理员', 'bug', '/api/v1/sysUser/:id', '/0/63/64/79', 'A', 'DELETE', null, 64, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (80, null, '当前用户个人信息', 'bug', '/api/v1/user/profile', '/0/63/256/267/80', 'A', 'GET', null, 267, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (81, null, '角色列表', 'bug', '/api/v1/rolelist', '/0/63/201/81', 'A', 'GET', null, 201, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (82, null, '获取角色信息', 'bug', '/api/v1/role/:id', '/0/63/201/82', 'A', 'GET', null, 201, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (83, null, '创建角色', 'bug', '/api/v1/role', '/0/63/201/83', 'A', 'POST', null, 201, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (84, null, '修改角色', 'bug', '/api/v1/role', '/0/63/201/84', 'A', 'PUT', null, 201, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (85, null, '删除角色', 'bug', '/api/v1/role/:id', '/0/63/201/85', 'A', 'DELETE', null, 201, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (92, null, '获取角色菜单', 'bug', '/api/v1/menurole', '/0/63/256/92', 'A', 'GET', null, 256, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-09-27 22:46:35', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (93, null, '根据角色id获取角色', 'bug', '/api/v1/roleMenuTreeselect/:id', '/0/63/201/93', 'A', 'GET', null, 201, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (94, null, '获取菜单树', 'bug', '/api/v1/menuTreeselect', '/0/63/256/94', 'A', 'GET', null, 256, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (103, null, '部门菜单列表', 'bug', '/api/v1/deptList', '/0/63/203/103', 'A', 'GET', null, 203, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (104, null, '根据id获取部门信息', 'bug', '/api/v1/dept/:id', '/0/63/203/104', 'A', 'GET', null, 203, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (105, null, '创建部门', 'bug', '/api/v1/dept', '/0/63/203/105', 'A', 'POST', null, 203, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (106, null, '修改部门', 'bug', '/api/v1/dept', '/0/63/203/106', 'A', 'PUT', null, 203, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (107, null, '删除部门', 'bug', '/api/v1/dept/:id', '/0/63/203/107', 'A', 'DELETE', null, 203, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (119, null, '获取岗位列表', 'bug', '/api/v1/postlist', '/0/63/204/119', 'A', 'GET', null, 204, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (120, null, '通过id获取岗位信息', 'bug', '/api/v1/post/:id', '/0/63/204/120', 'A', 'GET', null, 204, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (121, null, '创建岗位', 'bug', '/api/v1/post', '/0/63/204/121', 'A', 'POST', null, 204, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (122, null, '修改岗位', 'bug', '/api/v1/post', '/0/63/204/122', 'A', 'PUT', null, 204, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (123, null, '删除岗位', 'bug', '/api/v1/post/:id', '/0/63/204/123', 'A', 'DELETE', null, 204, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (137, null, '菜单列表', 'bug', '/api/v1/menulist', '/0/63/66/137', 'A', 'GET', null, 66, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (138, null, '获取根据id菜单信息', 'bug', '/api/v1/menu/:id', '/0/63/66/138', 'A', 'GET', null, 66, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (139, null, '创建菜单', 'bug', '/api/v1/menu', '/0/63/66/139', 'A', 'POST', null, 66, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (140, null, '修改菜单', 'bug', '/api/v1/menu/:id', '/0/63/66/140', 'A', 'PUT', null, 66, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (141, null, '删除菜单', 'bug', '/api/v1/menu/:id', '', 'A', 'DELETE', null, 66, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (142, null, '获取角色对应的菜单id数组', 'bug', '/api/v1/menuids', '/0/63/256/142', 'A', 'GET', null, 256, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (201, '', '角色管理', 'peoples', '', '/0/63/280/201', 'C', 'GET', '', 280, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (203, '', '部门管理', 'tree', '', '/0/63/280/203', 'C', 'POST', '', 280, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (204, '', '岗位管理', 'pass', '', '/0/63/280/204', 'C', '', '', 280, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (212, 'LoginLog', '登录日志', 'logininfor', '/loginlog', '/0/2/212', 'C', '', 'system:sysloginlog:list', 2, '0', '', '/system/loginlog/index', 6, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-08-18 23:07:15', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (213, null, '获取登录日志', 'bug', '/api/v1/loginloglist', '/0/63/214/213', 'A', 'GET', null, 214, null, null, null, 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (214, '', '日志管理', 'log', '', '/0/63/280/214', 'M', 'GET', '', 280, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (215, '', '删除日志', 'bug', '/api/v1/loginlog/:id', '/0/63/214/215', 'A', 'DELETE', '', 214, '0', '', '', 1, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (220, '', '新增菜单', '', '', '/0/2/51/220', 'F', '', 'system:sysmenu:add', 51, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (221, '', '修改菜单', 'edit', '', '/0/2/51/221', 'F', '', 'system:sysmenu:edit', 51, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (222, '', '查询菜单', 'search', '', '/0/2/51/222', 'F', '', 'system:sysmenu:query', 51, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (223, '', '删除菜单', '', '', '/0/2/51/223', 'F', '', 'system:sysmenu:remove', 51, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (224, '', '新增角色', '', '', '/0/2/52/224', 'F', '', 'system:sysrole:add', 52, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (225, '', '查询角色', '', '', '/0/2/52/225', 'F', '', 'system:sysrole:query', 52, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (226, '', '修改角色', '', '', '/0/2/52/226', 'F', '', 'system:sysrole:edit', 52, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (227, '', '删除角色', '', '', '/0/2/52/227', 'F', '', 'system:sysrole:remove', 52, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (228, '', '查询部门', '', '', '/0/2/56/228', 'F', '', 'system:sysdept:query', 56, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (229, '', '新增部门', '', '', '/0/2/56/229', 'F', '', 'system:sysdept:add', 56, '0', '', '', 1, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (230, '', '修改部门', '', '', '/0/2/56/230', 'F', '', 'system:sysdept:edit', 56, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (231, '', '删除部门', '', '', '/0/2/56/231', 'F', '', 'system:sysdept:remove', 56, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (232, '', '查询岗位', '', '', '/0/2/57/232', 'F', '', 'system:syspost:query', 57, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (233, '', '新增岗位', '', '', '/0/2/57/233', 'F', '', 'system:syspost:add', 57, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (234, '', '修改岗位', '', '', '/0/2/57/234', 'F', '', 'system:syspost:edit', 57, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (235, '', '删除岗位', '', '', '/0/2/57/235', 'F', '', 'system:syspost:remove', 57, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (244, '', '查询参数', '', '', '/0/2/62/244', 'F', '', 'system:sysconfig:query', 62, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (245, '', '新增参数', '', '', '/0/2/62/245', 'F', '', 'system:sysconfig:add', 62, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (246, '', '修改参数', '', '', '/0/2/62/246', 'F', '', 'system:sysconfig:edit', 62, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (247, '', '删除参数', '', '', '/0/2/62/247', 'F', '', 'system:sysconfig:remove', 62, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (248, '', '查询登录日志', '', '', '/0/2/211/212/248', 'F', '', 'system:sysloginlog:query', 212, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (249, '', '删除登录日志', '', '', '/0/2/211/212/249', 'F', '', 'system:sysloginlog:remove', 212, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (250, '', '查询操作日志', '', '', '/0/2/211/216/250', 'F', '', 'system:sysoperlog:query', 216, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (251, '', '删除操作日志', '', '', '/0/2/211/216/251', 'F', '', 'system:sysoperlog:remove', 216, '0', '', '', 0, '0', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (252, '', '获取登录用户信息', '', '/api/v1/getinfo', '/0/63/256/252', 'A', 'GET', '', 256, '0', '', '', 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (254, '', '部门树接口【数据权限】', '', '/api/v1/roleDeptTreeselect/:id', '/0/63/256/254', 'A', 'GET', '', 256, '0', '', '', 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (255, '', '部门树【用户列表】', '', '/api/v1/deptTree', '/0/63/256/255', 'A', 'GET', '', 256, '0', '', '', 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (256, '', '必开接口', '', '', '/0/63/256', 'M', 'GET', '', 63, '0', '', '', 0, '1', '1', '', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (258, '', '退出登录', '', '/api/v1/logout', '/0/63/256/258', 'A', 'POST', '', 256, '0', '', '', 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (259, '', '头像上传', '', '/api/v1/user/avatar', '/0/63/256/267/259', 'A', 'POST', '', 267, '0', '', '', 0, '1', '1', '1', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (260, '', '修改密码', '', '/api/v1/user/pwd', '/0/63/256/260', 'A', 'PUT', '', 256, '0', '', '', 0, '1', '1', '', 0, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (267, '', '个人中心', '', '', '/0/63/256/267', 'M', '', '', 256, '0', '', '', 0, '1', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (268, 'Process', '工单系统', 'date-range', '/process', '/0/268', 'M', '', '', 0, '0', '', 'Layout', 10, '0', '1', '11', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (269, 'ApplyProcessList', '工单申请', 'form', '/process/apply-process-list', '/0/268/269', 'C', '', 'process:list:applyProcessList', 268, '0', '', '/process/list/apply-process-list', 0, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (270, 'ProcessUpcoming', '我的待办', 'dict', '/process/upcoming', '/0/268/270', 'C', '', 'process:list:upcoming', 268, '0', '', '/process/list/upcoming', 5, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (271, 'ProcessMyCreate', '我创建的', 'row', '/process/my-create', '/0/268/271', 'C', '', 'process:list:myCreate', 268, '0', '', '/process/list/my-create', 10, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (272, 'ProcessRelated', '我相关的', 'excel', '/process/related', '/0/268/272', 'C', '', 'process:list:related', 268, '0', '', '/process/list/related', 15, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (273, 'ProcessAll', '所有工单', 'nested', '/process/all', '/0/268/273', 'C', '', 'process:list:all', 268, '0', '', '/process/list/all', 20, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (274, 'ProcessAdmin', '后台管理', 'lock', '/process-admin', '/0/268/274', 'M', '', '', 268, '0', '', '/menu-nesting/index', 25, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (275, 'ProcessAdminClassify', '流程分类', 'clipboard', '/process/admin/classify', '/0/268/274/275', 'C', '', 'process:admin:classify', 274, '0', '', '/process/admin/classify', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (276, 'ProcessAdminTemplate', '模版管理', 'component', '/process/admin/template-manager', '/0/268/274/276', 'C', '', 'process:admin:template', 274, '0', '', '/process/admin/template-manager', 5, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (277, 'ProcessAdminManager', '流程管理', 'time-range', '/process/admin/process-manager', '/0/268/274/277', 'C', '', 'process:admin:manager', 274, '0', '', '/process/admin/process-manager', 10, '0', '1', '1', 1, '2020-07-26 21:51:44', '2021-02-19 23:16:33', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (278, 'ProcessAdminTask', '任务管理', 'checkbox', '/process/admin/task-manager', '/0/268/274/278', 'C', '', 'process:admin:task', 274, '0', '', '/process/admin/task-manager', 15, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (280, '', '系统管理', 'calendar', '', '/0/63/280', 'M', '', '', 63, '0', '', '', 10, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (281, '', '工单系统', 'date-range', '', '/0/63/281', 'M', '', '', 63, '0', '', '', 5, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (282, '', '后台管理', 'system', '', '/0/63/281/282', 'M', '', '', 281, '0', '', '', 25, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (283, '', '流程分类', 'chart', '', '/0/63/281/282/283', 'M', '', '', 282, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (284, '', '新建分类', 'bug', '/api/v1/classify', '/0/63/281/282/283/284', 'A', 'POST', '', 283, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (285, '', '分类列表', 'bug', '/api/v1/classify', '/0/63/281/282/283/285', 'A', 'GET', '', 283, '0', '', '', 5, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (287, '', '编辑分类', 'bug', '/api/v1/classify', '/0/63/281/282/283/287', 'A', 'PUT', '', 283, '0', '', '', 10, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (288, '', '删除分类', 'bug', '/api/v1/classify', '/0/63/281/282/283/288', 'A', 'DELETE', '', 283, '0', '', '', 15, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (290, '', '查看分类', '', '', '/0/268/274/275/290', 'F', '', 'process:admin:classify:list', 275, '0', '', '', 0, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (291, '', '新增分类', '', '', '/0/268/274/275/291', 'F', '', 'process:admin:classify:add', 275, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (292, '', '编辑分类', '', '', '/0/268/274/275/292', 'F', '', 'process:admin:classify:edit', 275, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (293, '', '删除分类', '', '', '/0/268/274/275/293', 'F', '', 'process:admin:classify:delete', 275, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (294, '', '模版管理', 'component', '', '/0/63/281/282/294', 'M', '', '', 282, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (295, '', '新建模版', 'bug', '/api/v1/tpl', '/0/63/281/282/294/295', 'A', 'POST', '', 294, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (296, '', '模版列表', 'bug', '/api/v1/tpl', '/0/63/281/282/294/296', 'A', 'GET', '', 294, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (297, '', '编辑模版', 'bug', '/api/v1/tpl', '/0/63/281/282/294/297', 'A', 'PUT', '', 294, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (298, '', '删除模版', 'bug', '/api/v1/tpl', '/0/63/281/282/294/298', 'A', 'DELETE', '', 294, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (299, '', '模版详情', 'bug', '/api/v1/tpl/details', '/0/63/281/282/294/299', 'A', 'GET', '', 294, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (300, '', '查看模版', '', '', '/0/268/274/276/300', 'F', '', 'process:admin:template:list', 276, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (301, '', '新建模版', '', '', '/0/268/274/276/301', 'F', '', 'process:admin:template:add', 276, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (302, '', '编辑模版', '', '', '/0/268/274/276/302', 'F', '', 'process:admin:template:edit', 276, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (303, '', '删除模版', '', '', '/0/268/274/276/303', 'F', '', 'process:admin:template:delete', 276, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (304, '', '查看流程', '', '', '/0/268/274/277/304', 'F', '', 'process:admin:manager:list', 277, '0', '', '', 0, '0', '1', '1', 1, '2020-07-26 21:51:44', '2021-02-19 23:36:26', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (305, '', '新建流程', '', '', '/0/268/274/277/305', 'F', '', 'process:admin:manager:add', 277, '0', '', '', 0, '0', '1', '1', 1, '2020-07-26 21:51:44', '2021-02-19 23:36:31', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (306, '', '编辑流程', '', '', '/0/268/274/277/306', 'F', '', 'process:admin:manager:edit', 277, '0', '', '', 0, '0', '1', '1', 1, '2020-07-26 21:51:44', '2021-02-19 23:36:37', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (307, '', '删除流程', '', '', '/0/268/274/277/307', 'F', '', 'process:admin:manager:delete', 277, '0', '', '', 0, '0', '1', '1', 1, '2020-07-26 21:51:44', '2021-02-19 23:36:41', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (309, '', '流程管理', 'example', '', '/0/63/281/282/309', 'M', '', '', 282, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (310, '', '流程列表', 'bug', '/api/v1/process', '/0/63/281/282/309/310', 'A', 'GET', '', 309, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (311, '', '新建流程', 'bug', '/api/v1/process', '/0/63/281/282/309/311', 'A', 'POST', '', 309, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (312, '', '编辑流程', 'bug', '/api/v1/process', '/0/63/281/282/309/312', 'A', 'PUT', '', 309, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (313, '', '删除流程', 'bug', '/api/v1/process', '/0/63/281/282/309/313', 'A', 'DELETE', '', 309, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (314, '', '流程详情', 'bug', '/api/v1/process/details', '/0/63/281/282/309/314', 'A', 'GET', '', 309, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (315, '', '分类流程', 'bug', '/api/v1/process/classify', '/0/63/281/282/309/315', 'A', 'GET', '', 309, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (316, '', '任务管理', 'checkbox', '', '/0/63/281/282/316', 'M', '', '', 282, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (317, '', '任务列表', 'bug', '/api/v1/task', '/0/63/281/282/316/317', 'A', 'GET', '', 316, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (318, '', '新建任务', 'bug', '/api/v1/task', '/0/63/281/282/316/318', 'A', 'POST', '', 316, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (319, '/api/v1/task', '编辑任务', 'bug', '/api/v1/task', '/0/63/281/282/316/319', 'A', 'PUT', '', 316, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (320, '', '删除任务', 'bug', '/api/v1/task', '/0/63/281/282/316/320', 'A', 'DELETE', '', 316, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (321, '', '任务详情', 'bug', '/api/v1/task/details', '/0/63/281/282/316/321', 'A', 'GET', '', 316, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (322, '', '查看任务', '', '', '/0/268/274/278/322', 'F', '', 'process:admin:task:list', 278, '0', '', '', 0, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (323, '', '新增任务', '', '', '/0/268/274/278/323', 'F', '', 'process:admin:task:add', 278, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (324, '', '编辑任务', '', '', '/0/268/274/278/324', 'F', '', 'process:admin:task:edit', 278, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (325, '', '删除任务', '', '', '/0/268/274/278/325', 'F', '', 'process:admin:task:delete', 278, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (326, '', '工单申请', 'druid', '', '/0/63/281/326', 'M', '', '', 281, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (327, '', '分类流程', 'bug', '/api/v1/process/classify', '/0/63/281/326/327', 'A', 'GET', '', 326, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (328, 'ProcessListCreate', '新建工单', 'guide', '/process/create-ticket', '/0/268/328', 'C', '', 'process:menu:list:create', 268, '0', '', '/process/list/create', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (329, 'ProcessListHandle', '处理工单', 'monitor', '/process/handle-ticket', '/0/268/329', 'C', '', 'process:menu:list:handle', 268, '0', '', '/process/list/handle', 0, '1', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (330, '', '新建工单', 'bug', '/api/v1/work-order/create', '/0/63/281/326/330', 'A', 'POST', '', 326, '0', '', '', 0, '1', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (331, '', '处理工单', 'bug', '/api/v1/work-order/handle', '/0/63/281/326/331', 'A', 'POST', '', 326, '0', '', '', 0, '1', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (332, '', '流程数据', 'bug', '/api/v1/work-order/process-structure', '/0/63/281/326/332', 'A', 'GET', '', 326, '0', '', '', 0, '1', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (333, '', '工单列表', 'build', '', '/0/63/281/333', 'M', '', '', 281, '0', '', '', 0, '1', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (334, '', '工单列表', 'bug', '/api/v1/work-order/list', '/0/63/281/333/334', 'A', 'GET', '', 333, '0', '', '', 0, '1', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (335, '', '结束工单', 'bug', '/api/v1/work-order/unity', '/0/63/281/333/335', 'A', 'GET', '', 333, '0', '', '', 0, '1', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (336, '', '转交工单', 'bug', '/api/v1/work-order/inversion', '/0/63/281/333/336', 'A', 'POST', '', 333, '0', '', '', 0, '1', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (337, '', '查看工单', '', '', '/0/268/273/337', 'F', '', 'process:list:all:select', 273, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (338, '', '转交工单', '', '', '/0/268/273/338', 'F', '', 'process:list:all:inversion', 273, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (339, '', '结束工单', '', '', '/0/268/273/339', 'F', '', 'process:list:all:end', 273, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (340, '', '查看工单', '', '', '/0/268/272/340', 'F', '', 'process:list:related:select', 272, '0', '', '', 0, '0', '1', '1', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (341, '', '查看工单', '', '', '/0/268/271/341', 'F', '', 'process:list:myCreate:select', 271, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (342, '', '查看工单', '', '', '/0/268/270/342', 'F', '', 'process:list:upcoming:select', 270, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (343, '', '转交工单', '', '', '/0/268/270/343', 'F', '', 'process:list:upcoming:inversion', 270, '0', '', '', 0, '0', '1', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (344, '', '首页数据', '', '/api/v1/dashboard', '/0/63/256/344', 'A', 'GET', '', 256, '0', '', '', 0, '1', '11', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (350, '', '催办工单', '', '', '/0/268/270/350', 'F', '', 'process:list:upcoming:urge', 270, '0', '', '', 0, '0', '11', '', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (351, '', '催办工单', 'bug', '/api/v1/work-order/urge', '/0/63/281/333/351', 'A', 'GET', '', 333, '0', '', '', 0, '1', '11', '11', 1, '2020-07-26 21:51:44', '2020-07-26 21:52:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (352, 'Settings', '系统配置', 'system', 'settings', '/0/2/352', 'C', '', 'system:settings:index', 2, '0', '', '/system/settings/index', 7, '0', '1', '1', 1, '2020-08-18 21:44:58', '2020-08-18 23:07:11', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (353, '', '系统配置', 'system', '', '/0/63/280/353', 'M', '', '', 280, '0', '', '', 2, '1', '1', '1', 0, '2020-08-19 00:40:11', '2020-08-19 00:41:32', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (354, '', '设置配置', 'bug', '/api/v1/settings', '/0/63/280/353/354', 'A', 'POST', '', 353, '0', '', '', 1, '1', '1', '1', 1, '2020-08-19 00:41:01', '2020-08-19 00:42:25', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (355, '', '获取配置', 'bug', '/api/v1/settings', '/0/63/280/353/355', 'A', 'GET', '', 353, '0', '', '', 0, '1', '1', '', 1, '2020-08-19 00:42:47', '2020-08-19 00:42:47', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (356, '', '清空登陆日志', '', '', '/0/2/212/356', 'F', '', 'system:sysloginlog:clean', 212, '0', '', '', 0, '0', '1', '', 1, '2020-08-26 21:48:59', '2020-08-26 21:48:59', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (357, '', '清空登陆日志', 'bug', '/api/v1/loginlog', '/0/63/280/214/357', 'A', 'DELETE', '', 214, '0', '', '', 0, '1', '1', '', 1, '2020-08-26 22:02:16', '2020-08-26 22:02:16', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (360, '', '主动接单', 'bug', '/api/v1/work-order/active-order/:id', '/0/63/281/326/360', 'A', 'PUT', '', 326, '0', '', '', 0, '1', '1', '1', 1, '2020-09-01 19:02:01', '2020-09-01 19:02:10', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (361, '', '主动接单', '', '', '/0/268/329/361', 'F', '', 'process:list:handle:active', 329, '0', '', '', 0, '0', '1', '', 1, '2020-09-01 19:03:52', '2020-09-01 19:03:52', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (363, '', '删除工单', 'bug', '/api/v1/work-order/delete/:id', '/0/63/281/333/363', 'A', 'DELETE', '', 333, '0', '', '', 0, '1', '1', '', 1, '2020-09-27 22:50:52', '2020-09-27 22:50:52', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (364, '', '删除工单', '', '', '/0/268/273/364', 'F', '', 'process:list:all:delete', 273, '0', '', '', 0, '0', '1', '', 1, '2020-09-27 22:51:38', '2020-09-27 22:51:38', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (365, '', '部门列表', 'bug', '/api/v1/ordinaryDeptList', '/0/63/280/203/365', 'A', 'GET', '', 203, '0', '', '', 0, '1', '1', '', 1, '2020-11-15 18:34:14', '2020-11-15 18:34:14', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (366, '', '克隆模版', '', '', '/0/268/274/276/366', 'F', '', 'process:admin:template:clone', 276, '0', '', '', 0, '0', '1', '', 1, '2021-02-19 22:43:21', '2021-02-19 22:43:21', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (367, '', '克隆模版', 'bug', '/api/v1/tpl/clone/:id', '/0/63/281/282/294/367', 'A', 'POST', '', 294, '0', '', '', 0, '1', '1', '', 1, '2021-02-19 23:00:31', '2021-02-19 23:00:31', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (368, '', '克隆流程', '', '', '/0/268/274/277/368', 'F', '', 'process:admin:manager:clone', 277, '0', '', '', 0, '0', '1', '1', 1, '2021-02-19 23:17:46', '2021-02-19 23:36:46', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, `action`, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (369, '', '克隆流程', 'bug', '/api/v1/process/clone/:id', '/0/63/281/282/309/369', 'A', 'POST', '', 309, '0', '', '', 0, '1', '1', '', 1, '2021-02-19 23:25:18', '2021-02-19 23:25:18', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, action, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (370, '', '重开工单', 'guide', '', '/0/268/271/370', 'F', '', 'process:list:myCreate:reopen', 271, '0', '', '', 0, '0', '1', '', 1, '2021-03-02 22:45:17', '2021-03-02 22:45:17', null);
INSERT INTO sys_menu (menu_id, menu_name, title, icon, path, paths, menu_type, action, permission, parent_id, no_cache, breadcrumb, component, sort, visible, create_by, update_by, is_frame, create_time, update_time, delete_time) VALUES (371, '', '重开工单', 'bug', '/api/v1/work-order/reopen/:id', '/0/63/281/333/371', 'A', 'POST', '', 333, '0', '', '', 0, '1', '1', '', 1, '2021-03-02 22:46:46', '2021-03-02 22:46:46', null);
COMMIT;

BEGIN;
INSERT INTO `sys_post`(`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`) VALUES (1, '首席执行官', 'CEO', 0, 0, '首席执行官', '1', '2020-03-08 23:11:15');
INSERT INTO `sys_post`(`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`) VALUES (2, '首席技术执行官', 'CTO', 2, 0, '首席技术执行官', '1', '1');
INSERT INTO `sys_post`(`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`) VALUES (3, '首席运营官', 'COO', 3, 0, '测试工程师', '1', '1');
COMMIT;

BEGIN;
INSERT INTO `sys_role`(`role_id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `create_by`, `update_by`, `remark`, `admin`) VALUES (1, '系统管理员', 0, 'admin', 1, NULL, '1', NULL, NULL, '1');
INSERT INTO `sys_role`(`role_id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `create_by`, `update_by`, `remark`, `admin`) VALUES (2, '普通角色', 0, 'common', 2, NULL, '1', NULL, NULL, '0');
INSERT INTO `sys_role`(`role_id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `create_by`, `update_by`, `remark`, `admin`) VALUES (3, '测试角色', 0, 'Tester', 3, '', '1', NULL, NULL, '0');
COMMIT;

BEGIN;
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 2, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 3, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 43, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 44, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 45, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 46, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 51, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 52, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 56, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 57, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 63, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 64, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 66, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 67, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 68, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 72, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 73, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 74, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 75, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 76, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 77, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 78, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 79, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 80, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 81, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 82, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 83, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 84, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 85, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 92, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 93, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 94, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 103, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 104, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 105, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 106, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 107, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 119, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 120, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 121, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 122, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 123, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 137, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 138, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 139, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 140, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 141, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 142, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 201, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 203, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 204, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 212, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 213, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 214, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 215, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 220, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 221, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 222, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 223, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 224, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 225, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 226, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 227, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 228, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 229, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 230, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 231, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 232, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 233, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 234, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 235, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 248, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 249, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 252, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 254, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 255, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 256, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 258, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 259, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 260, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 267, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 268, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 269, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 270, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 271, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 272, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 273, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 274, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 275, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 276, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 277, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 278, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 280, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 281, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 282, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 283, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 284, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 285, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 287, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 288, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 290, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 291, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 292, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 293, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 294, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 295, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 296, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 297, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 298, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 299, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 300, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 301, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 302, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 303, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 304, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 305, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 306, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 307, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 309, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 310, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 311, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 312, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 313, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 314, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 315, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 316, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 317, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 318, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 319, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 320, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 321, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 322, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 323, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 324, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 325, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 326, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 327, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 328, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 329, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 330, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 331, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 332, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 333, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 334, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 335, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 336, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 337, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 338, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 339, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 340, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 341, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 342, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 343, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 344, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 350, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 351, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 352, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 353, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 354, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 355, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 356, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 357, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 360, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 361, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 363, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 364, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 365, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 366, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 367, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 368, 'admin', null, null);
INSERT INTO sys_role_menu (role_id, menu_id, role_name, create_by, update_by) VALUES (1, 369, 'admin', null, null);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 63, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 80, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 92, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 94, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 142, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 201, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 252, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 254, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 255, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 256, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 258, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 259, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 260, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 267, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 280, 'common', NULL, NULL);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`, `role_name`, `create_by`, `update_by`) VALUES (2, 344, 'common', NULL, NULL);
COMMIT;

BEGIN;
INSERT INTO `sys_user`(`user_id`, `nick_name`, `phone`, `role_id`, `salt`, `avatar`, `sex`, `email`, `dept_id`, `post_id`, `create_by`, `update_by`, `remark`, `status`, `username`, `password`) VALUES (1, 'lanyulei', '13818888888', 1, NULL, '', '0', '1@qq.com', 1, 1, '1', '1', NULL, 0, 'admin', '$2a$10$cKFFTCzGOvaIHHJY2K45Zuwt8TD6oPzYi4s5MzYIBAWCLL6ZhouP2');
INSERT INTO `sys_user`(`user_id`, `nick_name`, `phone`, `role_id`, `salt`, `avatar`, `sex`, `email`, `dept_id`, `post_id`, `create_by`, `update_by`, `remark`, `status`, `username`, `password`) VALUES (2, 'lanyulei', '13211111111', 3, NULL, NULL, '0', 'q@q.com', 8, 2, '1', '1', NULL, 0, 'lanyulei', '$2a$10$oDXQLs1W7n19sjc64bCpHeuti1jhN6r5hDz0iSqZRQMJE2eym2ec6');
INSERT INTO `sys_user`(`user_id`, `nick_name`, `phone`, `role_id`, `salt`, `avatar`, `sex`, `email`, `dept_id`, `post_id`, `create_by`, `update_by`, `remark`, `status`, `username`, `password`) VALUES (3, '李四', '13838385438', 2, '', '', '0', 'qq@qq.com', 7, 2, '1', '1', '', 0, 'lisi', '$2a$10$DejldFea5.hGZGC7/oVN9OLDrHAWgu9l29RDz9FomLnWnro4umYl2');
INSERT INTO `sys_user`(`user_id`, `nick_name`, `phone`, `role_id`, `salt`, `avatar`, `sex`, `email`, `dept_id`, `post_id`, `create_by`, `update_by`, `remark`, `status`, `username`, `password`) VALUES (4, '王五', '13535353535', 3, '', '', '2', 'qq@qq.com', 8, 2, '1', '1', '', 0, 'wangwu', '$2a$10$3.RT6rpXANXvvlibX6PzU.FGA2CvfDxd1UmJ2H5zTzF4sYocbvsTO');
COMMIT;

BEGIN;
INSERT INTO `sys_settings`(`id`, `create_time`, `update_time`, `delete_time`, `classify`, `content`) VALUES (3, '2020-08-19 01:00:19', '2020-08-19 12:40:47', NULL, 2, '[{\"ldap_field_name\": \"givenName\", \"local_field_name\": \"nick_name\", \"local_field_nick\": \"用户昵称\"}, {\"ldap_field_name\": \"\", \"local_field_name\": \"phone\", \"local_field_nick\": \"手机号\"}, {\"ldap_field_name\": \"\", \"local_field_name\": \"avatar\", \"local_field_nick\": \"头像\"}, {\"ldap_field_name\": \"\", \"local_field_name\": \"sex\", \"local_field_nick\": \"性别\"}, {\"ldap_field_name\": \"mail\", \"local_field_name\": \"email\", \"local_field_nick\": \"邮箱\"}, {\"ldap_field_name\": \"\", \"local_field_name\": \"remark\", \"local_field_nick\": \"备注\"}]');
INSERT INTO `sys_settings`(`id`, `create_time`, `update_time`, `delete_time`, `classify`, `content`) VALUES (4, '2020-08-19 12:42:10', '2020-08-19 13:22:56', NULL, 1, '{\"logo\": \"https://www.fdevops.com/wp-content/uploads/2020/08/1597815294-ferry_logo_white.png\", \"name\": \"ferry 管理平台\"}');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
-- 数据完成 ;