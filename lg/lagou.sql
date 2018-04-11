/*
Navicat MySQL Data Transfer

Source Server         : 39.106.121.15
Source Server Version : 50536
Source Host           : 39.106.121.15:3306
Source Database       : lagou

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2018-01-17 18:44:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` varchar(20) DEFAULT NULL COMMENT '控制器ID',
  `action_id` varchar(20) DEFAULT NULL COMMENT '方法ID',
  `url` varchar(200) DEFAULT NULL COMMENT '访问地址',
  `module_name` varchar(50) DEFAULT NULL COMMENT '模块',
  `func_name` varchar(50) DEFAULT NULL COMMENT '功能',
  `right_name` varchar(50) DEFAULT NULL COMMENT '方法',
  `client_ip` varchar(15) DEFAULT NULL COMMENT '客户端IP',
  `create_user` varchar(50) DEFAULT NULL COMMENT '用户',
  `create_date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `index_create_date` (`create_date`),
  KEY `index_create_index` (`create_user`),
  KEY `index_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('615', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'admin', '2018-01-11 11:02:49');
INSERT INTO `admin_log` VALUES ('616', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-11 13:32:53');
INSERT INTO `admin_log` VALUES ('617', 'penngo-word', 'index', 'penngo-word/index', '敏感词', '敏感词', '敏感词查看', 'Unknown', 'admin', '2018-01-15 11:02:30');
INSERT INTO `admin_log` VALUES ('618', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'admin', '2018-01-15 11:02:35');
INSERT INTO `admin_log` VALUES ('619', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:02:39');
INSERT INTO `admin_log` VALUES ('620', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:02:41');
INSERT INTO `admin_log` VALUES ('621', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-01-15 11:02:43');
INSERT INTO `admin_log` VALUES ('622', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:02:46');
INSERT INTO `admin_log` VALUES ('623', 'penngo-word', 'index', 'penngo-word/index', '敏感词', '敏感词', '敏感词查看', 'Unknown', 'admin', '2018-01-15 11:02:51');
INSERT INTO `admin_log` VALUES ('624', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:04:35');
INSERT INTO `admin_log` VALUES ('625', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:04:40');
INSERT INTO `admin_log` VALUES ('626', 'admin-module', 'update', 'admin-module/update', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2018-01-15 11:05:04');
INSERT INTO `admin_log` VALUES ('627', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:05:05');
INSERT INTO `admin_log` VALUES ('628', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:05:08');
INSERT INTO `admin_log` VALUES ('629', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:05:10');
INSERT INTO `admin_log` VALUES ('630', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:05:12');
INSERT INTO `admin_log` VALUES ('631', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:05:16');
INSERT INTO `admin_log` VALUES ('632', 'admin-menu', 'update', 'admin-menu/update', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-15 11:05:21');
INSERT INTO `admin_log` VALUES ('633', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:05:21');
INSERT INTO `admin_log` VALUES ('634', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:05:23');
INSERT INTO `admin_log` VALUES ('635', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:05:28');
INSERT INTO `admin_log` VALUES ('636', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:05:33');
INSERT INTO `admin_log` VALUES ('637', 'admin-right', 'update', 'admin-right/update', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-15 11:05:49');
INSERT INTO `admin_log` VALUES ('638', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:05:50');
INSERT INTO `admin_log` VALUES ('639', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:05:52');
INSERT INTO `admin_log` VALUES ('640', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:05:54');
INSERT INTO `admin_log` VALUES ('641', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:05:59');
INSERT INTO `admin_log` VALUES ('642', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:06:02');
INSERT INTO `admin_log` VALUES ('643', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:06:44');
INSERT INTO `admin_log` VALUES ('644', 'penngo-word', 'view', 'penngo-word/view', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:06:49');
INSERT INTO `admin_log` VALUES ('645', 'penngo-word', 'update', 'penngo-word/update', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:06:55');
INSERT INTO `admin_log` VALUES ('646', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:06:55');
INSERT INTO `admin_log` VALUES ('647', 'penngo-word', 'view', 'penngo-word/view', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:06:56');
INSERT INTO `admin_log` VALUES ('648', 'penngo-word', 'update', 'penngo-word/update', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:07:02');
INSERT INTO `admin_log` VALUES ('649', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:07:03');
INSERT INTO `admin_log` VALUES ('650', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:07:19');
INSERT INTO `admin_log` VALUES ('651', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 11:11:01');
INSERT INTO `admin_log` VALUES ('652', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:16:46');
INSERT INTO `admin_log` VALUES ('653', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:17:27');
INSERT INTO `admin_log` VALUES ('654', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:24:17');
INSERT INTO `admin_log` VALUES ('655', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:24:20');
INSERT INTO `admin_log` VALUES ('656', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2018-01-15 11:25:12');
INSERT INTO `admin_log` VALUES ('657', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:25:12');
INSERT INTO `admin_log` VALUES ('658', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:25:17');
INSERT INTO `admin_log` VALUES ('659', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-15 11:25:48');
INSERT INTO `admin_log` VALUES ('660', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:25:49');
INSERT INTO `admin_log` VALUES ('661', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:25:55');
INSERT INTO `admin_log` VALUES ('662', 'penngo-word', 'view', 'penngo-word/view', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:25:57');
INSERT INTO `admin_log` VALUES ('663', 'penngo-word', 'view', 'penngo-word/view', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:26:01');
INSERT INTO `admin_log` VALUES ('664', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:26:06');
INSERT INTO `admin_log` VALUES ('665', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:26:10');
INSERT INTO `admin_log` VALUES ('666', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:26:17');
INSERT INTO `admin_log` VALUES ('667', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:26:20');
INSERT INTO `admin_log` VALUES ('668', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-15 11:26:34');
INSERT INTO `admin_log` VALUES ('669', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:26:35');
INSERT INTO `admin_log` VALUES ('670', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:26:38');
INSERT INTO `admin_log` VALUES ('671', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:26:44');
INSERT INTO `admin_log` VALUES ('672', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:26:49');
INSERT INTO `admin_log` VALUES ('673', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', 'Unknown', 'admin', '2018-01-15 11:26:52');
INSERT INTO `admin_log` VALUES ('674', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:26:54');
INSERT INTO `admin_log` VALUES ('675', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:26:55');
INSERT INTO `admin_log` VALUES ('676', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:26:58');
INSERT INTO `admin_log` VALUES ('677', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:29:21');
INSERT INTO `admin_log` VALUES ('678', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:30:32');
INSERT INTO `admin_log` VALUES ('679', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:30:35');
INSERT INTO `admin_log` VALUES ('680', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:30:36');
INSERT INTO `admin_log` VALUES ('681', 'admin-menu', 'update', 'admin-menu/update', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-15 11:30:47');
INSERT INTO `admin_log` VALUES ('682', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:30:47');
INSERT INTO `admin_log` VALUES ('683', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:30:49');
INSERT INTO `admin_log` VALUES ('684', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:30:53');
INSERT INTO `admin_log` VALUES ('685', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:30:56');
INSERT INTO `admin_log` VALUES ('686', 'admin-right', 'update', 'admin-right/update', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-15 11:31:04');
INSERT INTO `admin_log` VALUES ('687', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:31:04');
INSERT INTO `admin_log` VALUES ('688', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:31:11');
INSERT INTO `admin_log` VALUES ('689', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:31:32');
INSERT INTO `admin_log` VALUES ('690', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:31:35');
INSERT INTO `admin_log` VALUES ('691', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:31:37');
INSERT INTO `admin_log` VALUES ('692', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:31:43');
INSERT INTO `admin_log` VALUES ('693', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:31:51');
INSERT INTO `admin_log` VALUES ('694', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:31:55');
INSERT INTO `admin_log` VALUES ('695', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:31:58');
INSERT INTO `admin_log` VALUES ('696', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:32:01');
INSERT INTO `admin_log` VALUES ('697', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:32:04');
INSERT INTO `admin_log` VALUES ('698', 'admin-menu', 'delete', 'admin-menu/delete', '菜单用户权限', '菜单管理', '二级菜单删除', 'Unknown', 'admin', '2018-01-15 11:32:36');
INSERT INTO `admin_log` VALUES ('699', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:32:37');
INSERT INTO `admin_log` VALUES ('700', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:32:45');
INSERT INTO `admin_log` VALUES ('701', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-15 11:33:41');
INSERT INTO `admin_log` VALUES ('702', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:33:41');
INSERT INTO `admin_log` VALUES ('703', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:33:47');
INSERT INTO `admin_log` VALUES ('704', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:33:59');
INSERT INTO `admin_log` VALUES ('705', 'penngo-word', 'view', 'penngo-word/view', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:34:17');
INSERT INTO `admin_log` VALUES ('706', 'penngo-word', 'view', 'penngo-word/view', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:34:21');
INSERT INTO `admin_log` VALUES ('707', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:34:29');
INSERT INTO `admin_log` VALUES ('708', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:34:33');
INSERT INTO `admin_log` VALUES ('709', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:34:35');
INSERT INTO `admin_log` VALUES ('710', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:34:39');
INSERT INTO `admin_log` VALUES ('711', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:34:49');
INSERT INTO `admin_log` VALUES ('712', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:34:52');
INSERT INTO `admin_log` VALUES ('713', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:34:54');
INSERT INTO `admin_log` VALUES ('714', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:34:56');
INSERT INTO `admin_log` VALUES ('715', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-15 11:35:14');
INSERT INTO `admin_log` VALUES ('716', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:35:15');
INSERT INTO `admin_log` VALUES ('717', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:35:21');
INSERT INTO `admin_log` VALUES ('718', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:35:24');
INSERT INTO `admin_log` VALUES ('719', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:35:27');
INSERT INTO `admin_log` VALUES ('720', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台', '用户', 'Unknown', 'admin', '2018-01-15 11:35:40');
INSERT INTO `admin_log` VALUES ('721', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台', '用户', 'Unknown', 'admin', '2018-01-15 11:36:00');
INSERT INTO `admin_log` VALUES ('722', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台', '用户', 'Unknown', 'admin', '2018-01-15 11:36:31');
INSERT INTO `admin_log` VALUES ('723', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:37:01');
INSERT INTO `admin_log` VALUES ('724', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:37:04');
INSERT INTO `admin_log` VALUES ('725', 'admin-menu', 'delete', 'admin-menu/delete', '菜单用户权限', '菜单管理', '二级菜单删除', 'Unknown', 'admin', '2018-01-15 11:37:15');
INSERT INTO `admin_log` VALUES ('726', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:37:15');
INSERT INTO `admin_log` VALUES ('727', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-15 11:39:13');
INSERT INTO `admin_log` VALUES ('728', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:39:13');
INSERT INTO `admin_log` VALUES ('729', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:39:20');
INSERT INTO `admin_log` VALUES ('730', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:39:25');
INSERT INTO `admin_log` VALUES ('731', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:39:27');
INSERT INTO `admin_log` VALUES ('732', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:39:30');
INSERT INTO `admin_log` VALUES ('733', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-15 11:40:36');
INSERT INTO `admin_log` VALUES ('734', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:40:36');
INSERT INTO `admin_log` VALUES ('735', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台', '用户', 'Unknown', 'admin', '2018-01-15 11:40:41');
INSERT INTO `admin_log` VALUES ('736', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:40:42');
INSERT INTO `admin_log` VALUES ('737', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:40:46');
INSERT INTO `admin_log` VALUES ('738', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:40:49');
INSERT INTO `admin_log` VALUES ('739', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:40:53');
INSERT INTO `admin_log` VALUES ('740', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 11:41:05');
INSERT INTO `admin_log` VALUES ('741', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 11:41:08');
INSERT INTO `admin_log` VALUES ('742', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台用户', '前台操作', 'Unknown', 'admin', '2018-01-15 11:41:13');
INSERT INTO `admin_log` VALUES ('743', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 11:41:34');
INSERT INTO `admin_log` VALUES ('744', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:41:42');
INSERT INTO `admin_log` VALUES ('745', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台用户', '前台操作', 'Unknown', 'admin', '2018-01-15 11:41:54');
INSERT INTO `admin_log` VALUES ('746', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 11:42:20');
INSERT INTO `admin_log` VALUES ('747', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台用户', '前台操作', 'Unknown', 'admin', '2018-01-15 11:44:47');
INSERT INTO `admin_log` VALUES ('748', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台用户', '前台操作', 'Unknown', 'admin', '2018-01-15 11:45:25');
INSERT INTO `admin_log` VALUES ('749', 'usersize', 'index', 'usersize/index', '前台用户管理', '前台用户', '前台操作', 'Unknown', 'admin', '2018-01-15 11:45:38');
INSERT INTO `admin_log` VALUES ('750', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 11:49:53');
INSERT INTO `admin_log` VALUES ('751', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:50:00');
INSERT INTO `admin_log` VALUES ('752', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:50:04');
INSERT INTO `admin_log` VALUES ('753', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:50:06');
INSERT INTO `admin_log` VALUES ('754', 'admin-menu', 'delete', 'admin-menu/delete', '菜单用户权限', '菜单管理', '二级菜单删除', 'Unknown', 'admin', '2018-01-15 11:50:10');
INSERT INTO `admin_log` VALUES ('755', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:50:11');
INSERT INTO `admin_log` VALUES ('756', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:50:23');
INSERT INTO `admin_log` VALUES ('757', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:50:26');
INSERT INTO `admin_log` VALUES ('758', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:50:28');
INSERT INTO `admin_log` VALUES ('759', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-15 11:51:34');
INSERT INTO `admin_log` VALUES ('760', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:51:34');
INSERT INTO `admin_log` VALUES ('761', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:51:40');
INSERT INTO `admin_log` VALUES ('762', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:51:42');
INSERT INTO `admin_log` VALUES ('763', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:51:45');
INSERT INTO `admin_log` VALUES ('764', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:51:48');
INSERT INTO `admin_log` VALUES ('765', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-15 11:52:12');
INSERT INTO `admin_log` VALUES ('766', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:52:13');
INSERT INTO `admin_log` VALUES ('767', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:52:18');
INSERT INTO `admin_log` VALUES ('768', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', 'Unknown', 'admin', '2018-01-15 11:52:19');
INSERT INTO `admin_log` VALUES ('769', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:52:21');
INSERT INTO `admin_log` VALUES ('770', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:52:22');
INSERT INTO `admin_log` VALUES ('771', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:52:25');
INSERT INTO `admin_log` VALUES ('772', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 11:52:39');
INSERT INTO `admin_log` VALUES ('773', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 11:52:53');
INSERT INTO `admin_log` VALUES ('774', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:52:55');
INSERT INTO `admin_log` VALUES ('775', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 11:53:10');
INSERT INTO `admin_log` VALUES ('776', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:53:12');
INSERT INTO `admin_log` VALUES ('777', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:53:20');
INSERT INTO `admin_log` VALUES ('778', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:53:24');
INSERT INTO `admin_log` VALUES ('779', 'admin-menu', 'delete', 'admin-menu/delete', '菜单用户权限', '菜单管理', '二级菜单删除', 'Unknown', 'admin', '2018-01-15 11:53:33');
INSERT INTO `admin_log` VALUES ('780', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:53:33');
INSERT INTO `admin_log` VALUES ('781', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-15 11:53:56');
INSERT INTO `admin_log` VALUES ('782', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:53:57');
INSERT INTO `admin_log` VALUES ('783', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:54:00');
INSERT INTO `admin_log` VALUES ('784', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:54:02');
INSERT INTO `admin_log` VALUES ('785', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-15 11:54:13');
INSERT INTO `admin_log` VALUES ('786', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 11:54:14');
INSERT INTO `admin_log` VALUES ('787', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:54:18');
INSERT INTO `admin_log` VALUES ('788', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:54:20');
INSERT INTO `admin_log` VALUES ('789', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 11:54:24');
INSERT INTO `admin_log` VALUES ('790', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 11:59:58');
INSERT INTO `admin_log` VALUES ('791', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 12:02:43');
INSERT INTO `admin_log` VALUES ('792', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 12:07:19');
INSERT INTO `admin_log` VALUES ('793', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 12:17:15');
INSERT INTO `admin_log` VALUES ('794', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 12:18:25');
INSERT INTO `admin_log` VALUES ('795', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 12:18:26');
INSERT INTO `admin_log` VALUES ('796', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-15 12:18:29');
INSERT INTO `admin_log` VALUES ('797', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 12:18:31');
INSERT INTO `admin_log` VALUES ('798', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 12:24:51');
INSERT INTO `admin_log` VALUES ('799', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2018-01-15 12:26:09');
INSERT INTO `admin_log` VALUES ('800', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 12:26:09');
INSERT INTO `admin_log` VALUES ('801', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 12:26:11');
INSERT INTO `admin_log` VALUES ('802', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 12:26:17');
INSERT INTO `admin_log` VALUES ('803', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 12:26:17');
INSERT INTO `admin_log` VALUES ('804', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-15 12:26:24');
INSERT INTO `admin_log` VALUES ('805', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 12:26:30');
INSERT INTO `admin_log` VALUES ('806', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-15 12:27:23');
INSERT INTO `admin_log` VALUES ('807', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-15 12:27:23');
INSERT INTO `admin_log` VALUES ('808', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 12:27:27');
INSERT INTO `admin_log` VALUES ('809', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 12:27:28');
INSERT INTO `admin_log` VALUES ('810', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-15 12:27:52');
INSERT INTO `admin_log` VALUES ('811', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-15 12:27:53');
INSERT INTO `admin_log` VALUES ('812', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 12:27:56');
INSERT INTO `admin_log` VALUES ('813', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 12:27:58');
INSERT INTO `admin_log` VALUES ('814', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-15 12:28:01');
INSERT INTO `admin_log` VALUES ('815', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 12:30:35');
INSERT INTO `admin_log` VALUES ('816', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-15 12:34:26');
INSERT INTO `admin_log` VALUES ('817', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 00:37:26');
INSERT INTO `admin_log` VALUES ('818', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 00:37:28');
INSERT INTO `admin_log` VALUES ('819', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:38:39');
INSERT INTO `admin_log` VALUES ('820', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:39:12');
INSERT INTO `admin_log` VALUES ('821', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:39:15');
INSERT INTO `admin_log` VALUES ('822', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:39:27');
INSERT INTO `admin_log` VALUES ('823', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:39:31');
INSERT INTO `admin_log` VALUES ('824', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:39:40');
INSERT INTO `admin_log` VALUES ('825', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:41:20');
INSERT INTO `admin_log` VALUES ('826', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:41:27');
INSERT INTO `admin_log` VALUES ('827', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:41:44');
INSERT INTO `admin_log` VALUES ('828', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:42:38');
INSERT INTO `admin_log` VALUES ('829', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:43:02');
INSERT INTO `admin_log` VALUES ('830', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:47:49');
INSERT INTO `admin_log` VALUES ('831', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:47:51');
INSERT INTO `admin_log` VALUES ('832', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:47:56');
INSERT INTO `admin_log` VALUES ('833', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 00:48:17');
INSERT INTO `admin_log` VALUES ('834', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 01:02:24');
INSERT INTO `admin_log` VALUES ('835', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 01:03:12');
INSERT INTO `admin_log` VALUES ('836', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 01:03:38');
INSERT INTO `admin_log` VALUES ('837', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 01:03:51');
INSERT INTO `admin_log` VALUES ('838', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 01:03:53');
INSERT INTO `admin_log` VALUES ('839', 'admin-role', 'view', 'admin-role/view', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 01:04:06');
INSERT INTO `admin_log` VALUES ('840', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-01-16 01:04:11');
INSERT INTO `admin_log` VALUES ('841', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-01-16 01:09:14');
INSERT INTO `admin_log` VALUES ('842', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-01-16 01:09:32');
INSERT INTO `admin_log` VALUES ('843', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-01-16 01:09:33');
INSERT INTO `admin_log` VALUES ('844', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-01-16 01:09:34');
INSERT INTO `admin_log` VALUES ('845', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 01:09:39');
INSERT INTO `admin_log` VALUES ('846', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 01:09:51');
INSERT INTO `admin_log` VALUES ('847', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 01:09:57');
INSERT INTO `admin_log` VALUES ('848', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:10:00');
INSERT INTO `admin_log` VALUES ('849', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:10:16');
INSERT INTO `admin_log` VALUES ('850', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:10:29');
INSERT INTO `admin_log` VALUES ('851', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:10:32');
INSERT INTO `admin_log` VALUES ('852', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:10:39');
INSERT INTO `admin_log` VALUES ('853', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:10:41');
INSERT INTO `admin_log` VALUES ('854', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:10:47');
INSERT INTO `admin_log` VALUES ('855', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:10:49');
INSERT INTO `admin_log` VALUES ('856', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:11:26');
INSERT INTO `admin_log` VALUES ('857', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:11:29');
INSERT INTO `admin_log` VALUES ('858', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 01:12:08');
INSERT INTO `admin_log` VALUES ('859', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 01:12:10');
INSERT INTO `admin_log` VALUES ('860', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:07:12');
INSERT INTO `admin_log` VALUES ('861', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:07:27');
INSERT INTO `admin_log` VALUES ('862', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:08:04');
INSERT INTO `admin_log` VALUES ('863', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:08:33');
INSERT INTO `admin_log` VALUES ('864', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:08:40');
INSERT INTO `admin_log` VALUES ('865', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:08:47');
INSERT INTO `admin_log` VALUES ('866', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:08:56');
INSERT INTO `admin_log` VALUES ('867', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:09:08');
INSERT INTO `admin_log` VALUES ('868', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:09:13');
INSERT INTO `admin_log` VALUES ('869', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:09:29');
INSERT INTO `admin_log` VALUES ('870', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:09:33');
INSERT INTO `admin_log` VALUES ('871', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:09:37');
INSERT INTO `admin_log` VALUES ('872', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:09:50');
INSERT INTO `admin_log` VALUES ('873', 'user', 'view', 'user/view', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:09:52');
INSERT INTO `admin_log` VALUES ('874', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:09:54');
INSERT INTO `admin_log` VALUES ('875', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:10:33');
INSERT INTO `admin_log` VALUES ('876', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-16 02:11:50');
INSERT INTO `admin_log` VALUES ('877', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2018-01-16 02:16:10');
INSERT INTO `admin_log` VALUES ('878', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-16 02:16:11');
INSERT INTO `admin_log` VALUES ('879', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-16 02:16:13');
INSERT INTO `admin_log` VALUES ('880', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2018-01-16 02:16:41');
INSERT INTO `admin_log` VALUES ('881', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-16 02:16:42');
INSERT INTO `admin_log` VALUES ('882', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-16 02:16:45');
INSERT INTO `admin_log` VALUES ('883', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-16 02:16:47');
INSERT INTO `admin_log` VALUES ('884', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2018-01-16 02:16:58');
INSERT INTO `admin_log` VALUES ('885', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-16 02:16:58');
INSERT INTO `admin_log` VALUES ('886', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-16 02:17:04');
INSERT INTO `admin_log` VALUES ('887', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 02:17:07');
INSERT INTO `admin_log` VALUES ('888', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 02:17:10');
INSERT INTO `admin_log` VALUES ('889', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_log` VALUES ('890', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:17:54');
INSERT INTO `admin_log` VALUES ('891', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:17:58');
INSERT INTO `admin_log` VALUES ('892', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:22:41');
INSERT INTO `admin_log` VALUES ('893', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:23:05');
INSERT INTO `admin_log` VALUES ('894', 'firm', 'view', 'firm/view', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:23:13');
INSERT INTO `admin_log` VALUES ('895', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:23:15');
INSERT INTO `admin_log` VALUES ('896', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:23:19');
INSERT INTO `admin_log` VALUES ('897', 'user', 'view', 'user/view', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:23:22');
INSERT INTO `admin_log` VALUES ('898', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:23:23');
INSERT INTO `admin_log` VALUES ('899', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:23:25');
INSERT INTO `admin_log` VALUES ('900', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:23:26');
INSERT INTO `admin_log` VALUES ('901', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:23:28');
INSERT INTO `admin_log` VALUES ('902', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:28:23');
INSERT INTO `admin_log` VALUES ('903', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:28:25');
INSERT INTO `admin_log` VALUES ('904', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:28:29');
INSERT INTO `admin_log` VALUES ('905', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:28:32');
INSERT INTO `admin_log` VALUES ('906', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:28:35');
INSERT INTO `admin_log` VALUES ('907', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:28:44');
INSERT INTO `admin_log` VALUES ('908', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:28:52');
INSERT INTO `admin_log` VALUES ('909', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:04');
INSERT INTO `admin_log` VALUES ('910', 'firm-position', 'create', 'firm-position/create', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:05');
INSERT INTO `admin_log` VALUES ('911', 'firm-position', 'create', 'firm-position/create', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:45');
INSERT INTO `admin_log` VALUES ('912', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:47');
INSERT INTO `admin_log` VALUES ('913', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:49');
INSERT INTO `admin_log` VALUES ('914', 'firm-position', 'create', 'firm-position/create', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:52');
INSERT INTO `admin_log` VALUES ('915', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:54');
INSERT INTO `admin_log` VALUES ('916', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:55');
INSERT INTO `admin_log` VALUES ('917', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:29:58');
INSERT INTO `admin_log` VALUES ('918', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:30:00');
INSERT INTO `admin_log` VALUES ('919', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 02:30:04');
INSERT INTO `admin_log` VALUES ('920', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:30:08');
INSERT INTO `admin_log` VALUES ('921', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:30:13');
INSERT INTO `admin_log` VALUES ('922', 'firm', 'update', 'firm/update', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:30:16');
INSERT INTO `admin_log` VALUES ('923', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:30:17');
INSERT INTO `admin_log` VALUES ('924', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:30:20');
INSERT INTO `admin_log` VALUES ('925', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:30:23');
INSERT INTO `admin_log` VALUES ('926', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:30:26');
INSERT INTO `admin_log` VALUES ('927', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:30:32');
INSERT INTO `admin_log` VALUES ('928', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:30:53');
INSERT INTO `admin_log` VALUES ('929', 'firm', 'view', 'firm/view', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:30:55');
INSERT INTO `admin_log` VALUES ('930', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:30:56');
INSERT INTO `admin_log` VALUES ('931', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:30:58');
INSERT INTO `admin_log` VALUES ('932', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:31:00');
INSERT INTO `admin_log` VALUES ('933', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:31:08');
INSERT INTO `admin_log` VALUES ('934', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 02:31:11');
INSERT INTO `admin_log` VALUES ('935', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:31:14');
INSERT INTO `admin_log` VALUES ('936', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:31:21');
INSERT INTO `admin_log` VALUES ('937', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:31:35');
INSERT INTO `admin_log` VALUES ('938', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:31:41');
INSERT INTO `admin_log` VALUES ('939', 'firm', 'view', 'firm/view', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:31:44');
INSERT INTO `admin_log` VALUES ('940', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:31:53');
INSERT INTO `admin_log` VALUES ('941', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:31:59');
INSERT INTO `admin_log` VALUES ('942', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:32:09');
INSERT INTO `admin_log` VALUES ('943', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:32:16');
INSERT INTO `admin_log` VALUES ('944', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:32:25');
INSERT INTO `admin_log` VALUES ('945', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:32:30');
INSERT INTO `admin_log` VALUES ('946', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:33:37');
INSERT INTO `admin_log` VALUES ('947', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:33:58');
INSERT INTO `admin_log` VALUES ('948', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:34:50');
INSERT INTO `admin_log` VALUES ('949', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:42:17');
INSERT INTO `admin_log` VALUES ('950', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:42:27');
INSERT INTO `admin_log` VALUES ('951', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:43:51');
INSERT INTO `admin_log` VALUES ('952', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:44:15');
INSERT INTO `admin_log` VALUES ('953', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:44:17');
INSERT INTO `admin_log` VALUES ('954', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:44:20');
INSERT INTO `admin_log` VALUES ('955', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:44:22');
INSERT INTO `admin_log` VALUES ('956', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:44:24');
INSERT INTO `admin_log` VALUES ('957', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 02:44:26');
INSERT INTO `admin_log` VALUES ('958', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 02:44:35');
INSERT INTO `admin_log` VALUES ('959', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 02:44:37');
INSERT INTO `admin_log` VALUES ('960', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 05:48:27');
INSERT INTO `admin_log` VALUES ('961', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 05:48:35');
INSERT INTO `admin_log` VALUES ('962', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:48:40');
INSERT INTO `admin_log` VALUES ('963', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:18');
INSERT INTO `admin_log` VALUES ('964', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:22');
INSERT INTO `admin_log` VALUES ('965', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 05:49:25');
INSERT INTO `admin_log` VALUES ('966', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:26');
INSERT INTO `admin_log` VALUES ('967', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 05:49:30');
INSERT INTO `admin_log` VALUES ('968', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:34');
INSERT INTO `admin_log` VALUES ('969', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:36');
INSERT INTO `admin_log` VALUES ('970', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:45');
INSERT INTO `admin_log` VALUES ('971', 'firm-position', 'view', 'firm-position/view', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:46');
INSERT INTO `admin_log` VALUES ('972', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:53');
INSERT INTO `admin_log` VALUES ('973', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 05:49:55');
INSERT INTO `admin_log` VALUES ('974', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 05:49:59');
INSERT INTO `admin_log` VALUES ('975', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 05:50:05');
INSERT INTO `admin_log` VALUES ('976', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 05:50:11');
INSERT INTO `admin_log` VALUES ('977', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 05:50:21');
INSERT INTO `admin_log` VALUES ('978', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 06:47:45');
INSERT INTO `admin_log` VALUES ('979', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 06:48:20');
INSERT INTO `admin_log` VALUES ('980', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 06:48:22');
INSERT INTO `admin_log` VALUES ('981', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 06:48:26');
INSERT INTO `admin_log` VALUES ('982', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 06:48:28');
INSERT INTO `admin_log` VALUES ('983', 'firm-position', 'update', 'firm-position/update', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 06:48:30');
INSERT INTO `admin_log` VALUES ('984', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 06:48:36');
INSERT INTO `admin_log` VALUES ('985', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 07:01:27');
INSERT INTO `admin_log` VALUES ('986', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 07:01:29');
INSERT INTO `admin_log` VALUES ('987', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-16 11:53:04');
INSERT INTO `admin_log` VALUES ('988', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-16 11:53:12');
INSERT INTO `admin_log` VALUES ('989', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-01-16 11:53:15');
INSERT INTO `admin_log` VALUES ('990', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'admin', '2018-01-16 11:53:21');
INSERT INTO `admin_log` VALUES ('991', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 11:53:26');
INSERT INTO `admin_log` VALUES ('992', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 11:53:31');
INSERT INTO `admin_log` VALUES ('993', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 11:53:35');
INSERT INTO `admin_log` VALUES ('994', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-16 11:53:42');
INSERT INTO `admin_log` VALUES ('995', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 11:53:57');
INSERT INTO `admin_log` VALUES ('996', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-16 11:54:01');
INSERT INTO `admin_log` VALUES ('997', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 11:54:04');
INSERT INTO `admin_log` VALUES ('998', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 11:54:59');
INSERT INTO `admin_log` VALUES ('999', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-16 11:55:44');
INSERT INTO `admin_log` VALUES ('1000', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 11:56:13');
INSERT INTO `admin_log` VALUES ('1001', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 11:56:41');
INSERT INTO `admin_log` VALUES ('1002', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 11:56:47');
INSERT INTO `admin_log` VALUES ('1003', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 11:56:56');
INSERT INTO `admin_log` VALUES ('1004', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 11:57:04');
INSERT INTO `admin_log` VALUES ('1005', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 11:58:35');
INSERT INTO `admin_log` VALUES ('1006', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-16 11:58:49');
INSERT INTO `admin_log` VALUES ('1007', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 11:59:00');
INSERT INTO `admin_log` VALUES ('1008', 'firm', 'create', 'firm/create', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:01:33');
INSERT INTO `admin_log` VALUES ('1009', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:01:45');
INSERT INTO `admin_log` VALUES ('1010', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:01:54');
INSERT INTO `admin_log` VALUES ('1011', 'firm', 'create', 'firm/create', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:01:57');
INSERT INTO `admin_log` VALUES ('1012', 'firm', 'create', 'firm/create', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:02:17');
INSERT INTO `admin_log` VALUES ('1013', 'firm', 'create', 'firm/create', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:02:49');
INSERT INTO `admin_log` VALUES ('1014', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:03:51');
INSERT INTO `admin_log` VALUES ('1015', 'firm', 'update', 'firm/update', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:03:56');
INSERT INTO `admin_log` VALUES ('1016', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:04:05');
INSERT INTO `admin_log` VALUES ('1017', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-16 12:04:30');
INSERT INTO `admin_log` VALUES ('1018', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-16 12:04:38');
INSERT INTO `admin_log` VALUES ('1019', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2018-01-16 12:04:42');
INSERT INTO `admin_log` VALUES ('1020', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2018-01-16 12:04:52');
INSERT INTO `admin_log` VALUES ('1021', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-16 12:04:54');
INSERT INTO `admin_log` VALUES ('1022', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-16 12:04:58');
INSERT INTO `admin_log` VALUES ('1023', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-17 02:04:24');
INSERT INTO `admin_log` VALUES ('1024', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-17 02:04:27');
INSERT INTO `admin_log` VALUES ('1025', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-17 02:04:35');
INSERT INTO `admin_log` VALUES ('1026', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-17 02:04:49');
INSERT INTO `admin_log` VALUES ('1027', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-17 02:04:50');
INSERT INTO `admin_log` VALUES ('1028', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2018-01-17 07:23:41');
INSERT INTO `admin_log` VALUES ('1029', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2018-01-17 07:23:44');
INSERT INTO `admin_log` VALUES ('1030', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2018-01-17 07:23:47');
INSERT INTO `admin_log` VALUES ('1031', 'penngo-word', 'index', 'penngo-word/index', '热搜词', '热搜词', '热搜词操作', 'Unknown', 'admin', '2018-01-17 07:23:53');
INSERT INTO `admin_log` VALUES ('1032', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-17 07:23:57');
INSERT INTO `admin_log` VALUES ('1033', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2018-01-17 07:24:05');
INSERT INTO `admin_log` VALUES ('1034', 'firm-position', 'index', 'firm-position/index', '简历信息', '简历', '简历', 'Unknown', 'admin', '2018-01-17 07:24:07');
INSERT INTO `admin_log` VALUES ('1035', 'firm', 'index', 'firm/index', '企业管理', '企业', '企业', 'Unknown', 'admin', '2018-01-17 07:24:18');
INSERT INTO `admin_log` VALUES ('1036', 'user', 'index', 'user/index', '前台用户管理', '用户管理', '用户管理', 'Unknown', 'admin', '2018-01-17 07:24:29');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `menu_name` varchar(200) NOT NULL COMMENT '名称',
  `module_id` int(11) NOT NULL COMMENT '模块id',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `entry_right_name` varchar(50) DEFAULT NULL COMMENT '入口地址名称',
  `entry_url` varchar(200) NOT NULL COMMENT '入口地址',
  `action` varchar(50) NOT NULL COMMENT '操作ID',
  `controller` varchar(100) NOT NULL COMMENT '控制器ID',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`),
  KEY `fk_module_id` (`module_id`),
  CONSTRAINT `fk_module_id` FOREIGN KEY (`module_id`) REFERENCES `admin_module` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', 'menu_manger', '菜单管理', '1', '菜单管理', '菜单管理', '1', '菜单管理', 'admin-module/index', 'index', 'backend\\controllers\\AdminMenuController', 'n', 'admin', '2016-08-11 16:44:11', 'admin', '2016-08-11 16:44:11');
INSERT INTO `admin_menu` VALUES ('2', 'menu_role', '角色管理', '1', '角色管理', '角色管理', '2', '角色管理', 'admin-role/index', 'index', 'backend\\controllers\\AdminRoleController', 'n', 'admin', '2016-08-11 16:51:56', 'admin', '2016-08-11 16:51:56');
INSERT INTO `admin_menu` VALUES ('3', 'menu_user', '用户管理', '1', '用户管理', '用户管理', '3', '用户管理', 'admin-user/index', 'index', 'backend\\controllers\\AdminUserController', 'n', 'admin', '2016-08-11 16:58:43', 'admin', '2016-08-11 16:58:43');
INSERT INTO `admin_menu` VALUES ('4', 'coazaorizhi', '操作日志', '2', '操作日志', '操作日志', '1', '', 'admin-log/index', 'index', 'backend\\controllers\\AdminLogController', 'n', 'test', '2016-08-14 06:54:17', 'test', '2016-08-14 06:54:17');
INSERT INTO `admin_menu` VALUES ('6', 'PenngoWord', '热搜词', '6', '热搜词', '热搜词', '10', '热搜词', 'penngo-word/index', 'index', 'backend\\controllers\\PenngoWordController', 'n', 'admin', '2018-01-04 06:29:08', 'admin', '2018-01-15 11:05:21');
INSERT INTO `admin_menu` VALUES ('11', 'user', '用户管理', '7', '用户管理', '用户管理', '10', '用户管理', 'user/index', 'index', 'backend\\controllers\\UserController', 'n', 'admin', '2018-01-15 11:53:56', 'admin', '2018-01-15 11:53:56');
INSERT INTO `admin_menu` VALUES ('12', 'firmposition', '简历', '8', '简历', '简历', '10', '简历', 'firm-position/index', 'index', 'backend\\controllers\\FirmPositionController', 'n', 'admin', '2018-01-15 12:27:23', 'admin', '2018-01-15 12:27:23');
INSERT INTO `admin_menu` VALUES ('13', 'firm', '企业', '9', '企业', '企业', '10', '企业', 'firm/index', 'index', 'backend\\controllers\\FirmController', 'n', 'admin', '2018-01-16 02:16:42', 'admin', '2018-01-16 02:16:42');

-- ----------------------------
-- Table structure for admin_message
-- ----------------------------
DROP TABLE IF EXISTS `admin_message`;
CREATE TABLE `admin_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg` varchar(1000) DEFAULT NULL COMMENT '留言内容',
  `expiry_days` int(5) unsigned DEFAULT NULL COMMENT '有效天数',
  `create_user` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_message
-- ----------------------------
INSERT INTO `admin_message` VALUES ('1', '测试文本', '1', 'admin', '2014-11-21 18:47:20', 'admin', '2014-11-21 18:47:27');

-- ----------------------------
-- Table structure for admin_module
-- ----------------------------
DROP TABLE IF EXISTS `admin_module`;
CREATE TABLE `admin_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `display_label` varchar(200) NOT NULL COMMENT '显示名称',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `entry_url` varchar(100) DEFAULT NULL COMMENT '入口地址',
  `display_order` int(5) DEFAULT NULL COMMENT '顺序',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_module
-- ----------------------------
INSERT INTO `admin_module` VALUES ('1', 'menu_manage', '菜单用户权限', 'n', '菜单管理', '', '1', 'admin', '2016-08-11 15:26:21', 'admin', '2016-08-11 16:31:08');
INSERT INTO `admin_module` VALUES ('2', 'rizhimaanage', '日志管理', 'n', '日志管理', '', '2', 'test', '2016-08-14 06:53:13', 'test', '2016-08-14 06:53:13');
INSERT INTO `admin_module` VALUES ('6', 'PenngoWord', '热搜词', 'n', '热搜词', null, '10', 'admin', '2018-01-04 02:11:21', 'admin', '2018-01-15 11:05:04');
INSERT INTO `admin_module` VALUES ('7', 'User', '前台用户管理', 'n', '前台用户管理', null, '11', 'admin', '2018-01-15 11:25:12', 'admin', '2018-01-15 11:25:12');
INSERT INTO `admin_module` VALUES ('8', 'firm_position', '简历信息', 'n', '简历信息', null, '10', 'admin', '2018-01-15 12:26:09', 'admin', '2018-01-15 12:26:09');
INSERT INTO `admin_module` VALUES ('9', 'firm', '企业管理', 'n', '企业管理', null, '10', 'admin', '2018-01-16 02:16:10', 'admin', '2018-01-16 02:16:10');

-- ----------------------------
-- Table structure for admin_right
-- ----------------------------
DROP TABLE IF EXISTS `admin_right`;
CREATE TABLE `admin_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) NOT NULL COMMENT '功能主键',
  `right_name` varchar(200) NOT NULL COMMENT '名称',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(200) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right` (`menu_id`),
  KEY `index_menu_id` (`menu_id`),
  CONSTRAINT `FK_admin_right` FOREIGN KEY (`menu_id`) REFERENCES `admin_menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right
-- ----------------------------
INSERT INTO `admin_right` VALUES ('4', '2', '角色操作', '角色操作', '角色操作', '1', 'n', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right` VALUES ('5', '2', '分配用户', '分配用户', '分配用户', '2', 'n', 'admin', '2016-08-13 17:05:04', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right` VALUES ('6', '2', '分配权限', '分配权限', '分配权限', '3', 'n', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right` VALUES ('7', '3', '用户操作', '用户操作', '用户操作', '1', 'n', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right` VALUES ('8', '4', '操作', '操作', '操作', '1', 'n', 'test', '2016-08-14 06:54:38', 'admin', '2018-01-11 10:57:23');
INSERT INTO `admin_right` VALUES ('13', '1', '一级菜单查看', '一级菜单查看', '一级菜单查看', '1', 'n', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right` VALUES ('14', '1', '一级菜单添加', '一级菜单添加', '一级菜单添加', '2', 'n', 'test', '2016-08-16 15:53:10', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right` VALUES ('15', '1', '一级菜单删除', '一级菜单删除', '一级菜单删除', '3', 'n', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right` VALUES ('16', '1', '二级菜单查看', '二级菜单查看', '二级菜单查看', '4', 'n', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right` VALUES ('17', '1', '二级菜单添加', '二级菜单修改', '二级菜单添加', '5', 'n', 'test', '2016-08-16 15:55:21', 'test', '2016-08-16 15:58:50');
INSERT INTO `admin_right` VALUES ('18', '1', '二级菜单删除', '二级菜单删除', '二级菜单删除', '6', 'n', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right` VALUES ('19', '1', '路由查看', '路由查看', '路由查看', '7', 'n', 'test', '2016-08-16 15:56:32', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right` VALUES ('20', '1', '路由添加', '路由添加', '路由添加', '8', 'n', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right` VALUES ('21', '1', '路由删除', '路由删除', '路由删除', '9', 'n', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right` VALUES ('23', '6', '热搜词操作', '敏感词查看', '热搜词操作', '10', 'n', 'admin', '2018-01-04 06:29:42', 'admin', '2018-01-15 11:05:49');
INSERT INTO `admin_right` VALUES ('24', '4', '日志删除', '日志删除', '日志删除', '11', 'n', 'admin', '2018-01-11 10:58:42', 'admin', '2018-01-11 10:58:42');
INSERT INTO `admin_right` VALUES ('29', '11', '用户管理', '用户管理', '用户管理', '10', 'n', 'admin', '2018-01-15 11:54:13', 'admin', '2018-01-15 11:54:13');
INSERT INTO `admin_right` VALUES ('30', '12', '简历', '简历', '简历', '10', 'n', 'admin', '2018-01-15 12:27:52', 'admin', '2018-01-15 12:27:52');
INSERT INTO `admin_right` VALUES ('31', '13', '企业', '企业', '企业', '10', 'n', 'admin', '2018-01-16 02:16:58', 'admin', '2018-01-16 02:16:58');

-- ----------------------------
-- Table structure for admin_right_url
-- ----------------------------
DROP TABLE IF EXISTS `admin_right_url`;
CREATE TABLE `admin_right_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `right_id` int(11) NOT NULL COMMENT 'right主键',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  `para_name` varchar(40) DEFAULT NULL COMMENT '参数名',
  `para_value` varchar(40) DEFAULT NULL COMMENT '参数值',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right_url` (`right_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `FK_admin_right_url` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right_url
-- ----------------------------
INSERT INTO `admin_right_url` VALUES ('16', '4', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('17', '4', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('18', '4', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('19', '4', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('20', '4', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('21', '4', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('22', '4', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('30', '6', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('31', '6', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('32', '6', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('33', '6', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('34', '6', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('35', '6', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('36', '6', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('37', '7', 'admin-user/index', 'admin-user', 'index', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('38', '7', 'admin-user/view', 'admin-user', 'view', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('39', '7', 'admin-user/create', 'admin-user', 'create', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('40', '7', 'admin-user/update', 'admin-user', 'update', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('41', '7', 'admin-user/delete', 'admin-user', 'delete', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('81', '5', 'admin-user-role/index', 'admin-user-role', 'index', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('82', '5', 'admin-user-role/view', 'admin-user-role', 'view', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('83', '5', 'admin-user-role/create', 'admin-user-role', 'create', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('84', '5', 'admin-user-role/update', 'admin-user-role', 'update', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('85', '5', 'admin-user-role/delete', 'admin-user-role', 'delete', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('112', '13', 'admin-module/index', 'admin-module', 'index', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('113', '13', 'admin-module/view', 'admin-module', 'view', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('115', '15', 'admin-module/delete', 'admin-module', 'delete', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right_url` VALUES ('118', '16', 'admin-menu/index', 'admin-menu', 'index', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('119', '16', 'admin-menu/view', 'admin-menu', 'view', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('122', '18', 'admin-menu/delete', 'admin-menu', 'delete', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right_url` VALUES ('125', '19', 'admin-right/index', 'admin-right', 'index', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('126', '19', 'admin-right/view', 'admin-right', 'view', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('127', '19', 'admin-right/right-action', 'admin-right', 'right-action', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('128', '20', 'admin-right/create', 'admin-right', 'create', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('129', '20', 'admin-right/update', 'admin-right', 'update', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('130', '21', 'admin-right/delete', 'admin-right', 'delete', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right_url` VALUES ('131', '14', 'admin-module/create', 'admin-module', 'create', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('132', '14', 'admin-module/update', 'admin-module', 'update', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('133', '17', 'admin-menu/create', 'admin-menu', 'create', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('134', '17', 'admin-menu/update', 'admin-menu', 'update', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('157', '8', 'admin-log/index', 'admin-log', 'index', 'admin', '2018-01-11 10:57:23', 'admin', '2018-01-11 10:57:23');
INSERT INTO `admin_right_url` VALUES ('158', '8', 'admin-log/view', 'admin-log', 'view', 'admin', '2018-01-11 10:57:23', 'admin', '2018-01-11 10:57:23');
INSERT INTO `admin_right_url` VALUES ('159', '8', 'admin-log/create', 'admin-log', 'create', 'admin', '2018-01-11 10:57:23', 'admin', '2018-01-11 10:57:23');
INSERT INTO `admin_right_url` VALUES ('160', '8', 'admin-log/update', 'admin-log', 'update', 'admin', '2018-01-11 10:57:23', 'admin', '2018-01-11 10:57:23');
INSERT INTO `admin_right_url` VALUES ('161', '8', 'admin-log/delete', 'admin-log', 'delete', 'admin', '2018-01-11 10:57:23', 'admin', '2018-01-11 10:57:23');
INSERT INTO `admin_right_url` VALUES ('162', '24', 'admin-log/delete', 'admin-log', 'delete', 'admin', '2018-01-11 10:58:43', 'admin', '2018-01-11 10:58:43');
INSERT INTO `admin_right_url` VALUES ('163', '23', 'penngo-word/index', 'penngo-word', 'index', 'admin', '2018-01-15 11:05:49', 'admin', '2018-01-15 11:05:49');
INSERT INTO `admin_right_url` VALUES ('164', '23', 'penngo-word/view', 'penngo-word', 'view', 'admin', '2018-01-15 11:05:49', 'admin', '2018-01-15 11:05:49');
INSERT INTO `admin_right_url` VALUES ('165', '23', 'penngo-word/create', 'penngo-word', 'create', 'admin', '2018-01-15 11:05:49', 'admin', '2018-01-15 11:05:49');
INSERT INTO `admin_right_url` VALUES ('166', '23', 'penngo-word/update', 'penngo-word', 'update', 'admin', '2018-01-15 11:05:49', 'admin', '2018-01-15 11:05:49');
INSERT INTO `admin_right_url` VALUES ('167', '23', 'penngo-word/delete', 'penngo-word', 'delete', 'admin', '2018-01-15 11:05:49', 'admin', '2018-01-15 11:05:49');
INSERT INTO `admin_right_url` VALUES ('193', '29', 'user/index', 'user', 'index', 'admin', '2018-01-15 11:54:13', 'admin', '2018-01-15 11:54:13');
INSERT INTO `admin_right_url` VALUES ('194', '29', 'user/view', 'user', 'view', 'admin', '2018-01-15 11:54:13', 'admin', '2018-01-15 11:54:13');
INSERT INTO `admin_right_url` VALUES ('195', '29', 'user/create', 'user', 'create', 'admin', '2018-01-15 11:54:13', 'admin', '2018-01-15 11:54:13');
INSERT INTO `admin_right_url` VALUES ('196', '29', 'user/update', 'user', 'update', 'admin', '2018-01-15 11:54:13', 'admin', '2018-01-15 11:54:13');
INSERT INTO `admin_right_url` VALUES ('197', '29', 'user/delete', 'user', 'delete', 'admin', '2018-01-15 11:54:13', 'admin', '2018-01-15 11:54:13');
INSERT INTO `admin_right_url` VALUES ('198', '30', 'firm-position/index', 'firm-position', 'index', 'admin', '2018-01-15 12:27:52', 'admin', '2018-01-15 12:27:52');
INSERT INTO `admin_right_url` VALUES ('199', '30', 'firm-position/view', 'firm-position', 'view', 'admin', '2018-01-15 12:27:52', 'admin', '2018-01-15 12:27:52');
INSERT INTO `admin_right_url` VALUES ('200', '30', 'firm-position/create', 'firm-position', 'create', 'admin', '2018-01-15 12:27:52', 'admin', '2018-01-15 12:27:52');
INSERT INTO `admin_right_url` VALUES ('201', '30', 'firm-position/update', 'firm-position', 'update', 'admin', '2018-01-15 12:27:52', 'admin', '2018-01-15 12:27:52');
INSERT INTO `admin_right_url` VALUES ('202', '30', 'firm-position/delete', 'firm-position', 'delete', 'admin', '2018-01-15 12:27:52', 'admin', '2018-01-15 12:27:52');
INSERT INTO `admin_right_url` VALUES ('203', '31', 'firm/index', 'firm', 'index', 'admin', '2018-01-16 02:16:58', 'admin', '2018-01-16 02:16:58');
INSERT INTO `admin_right_url` VALUES ('204', '31', 'firm/view', 'firm', 'view', 'admin', '2018-01-16 02:16:58', 'admin', '2018-01-16 02:16:58');
INSERT INTO `admin_right_url` VALUES ('205', '31', 'firm/create', 'firm', 'create', 'admin', '2018-01-16 02:16:58', 'admin', '2018-01-16 02:16:58');
INSERT INTO `admin_right_url` VALUES ('206', '31', 'firm/update', 'firm', 'update', 'admin', '2018-01-16 02:16:58', 'admin', '2018-01-16 02:16:58');
INSERT INTO `admin_right_url` VALUES ('207', '31', 'firm/delete', 'firm', 'delete', 'admin', '2018-01-16 02:16:58', 'admin', '2018-01-16 02:16:58');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT '角色编号',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `des` varchar(400) DEFAULT NULL COMMENT '角色描述',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', 'superadmin', '超级管理员', '拥有所有权限', 'test', '2016-08-12 15:33:01', 'test', '2016-08-12 15:33:01');
INSERT INTO `admin_role` VALUES ('2', 'testuser', '测试人员', '测试人员', 'test', '2016-08-12 15:33:45', 'test', '2016-08-12 15:33:45');

-- ----------------------------
-- Table structure for admin_role_right
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_right`;
CREATE TABLE `admin_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  `right_id` int(11) NOT NULL COMMENT '权限主键',
  `full_path` varchar(250) DEFAULT NULL COMMENT '全路径',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_role_id` (`role_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `admin_role_right_ibfk_1` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_right
-- ----------------------------
INSERT INTO `admin_role_right` VALUES ('156', '2', '13', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('157', '2', '14', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('158', '2', '15', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('159', '2', '16', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('160', '2', '17', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('161', '2', '18', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('162', '2', '19', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('163', '2', '20', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('164', '2', '21', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('165', '2', '4', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('166', '2', '5', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('167', '2', '6', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('168', '2', '7', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('169', '2', '8', null, 'admin', '2017-12-28 03:06:49', 'admin', '2017-12-28 03:06:49');
INSERT INTO `admin_role_right` VALUES ('338', '1', '13', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('339', '1', '14', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('340', '1', '15', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('341', '1', '16', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('342', '1', '17', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('343', '1', '18', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('344', '1', '19', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('345', '1', '20', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('346', '1', '21', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('347', '1', '4', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('348', '1', '5', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('349', '1', '6', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('350', '1', '7', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('351', '1', '8', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('352', '1', '24', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('353', '1', '23', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('354', '1', '29', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('355', '1', '30', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');
INSERT INTO `admin_role_right` VALUES ('356', '1', '31', null, 'admin', '2018-01-16 02:17:15', 'admin', '2018-01-16 02:17:15');

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `auth_key` varchar(50) DEFAULT NULL COMMENT '自动登录key',
  `last_ip` varchar(50) DEFAULT NULL COMMENT '最近一次登录ip',
  `is_online` char(1) DEFAULT 'n' COMMENT '是否在线',
  `domain_account` varchar(100) DEFAULT NULL COMMENT '域账号',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `create_user` varchar(100) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_user` varchar(101) NOT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `count` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('156', 'admin', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, 'Unknown', 'n', null, '10', 'admin', '2014-07-07 00:05:47', 'admin', '2018-01-17 07:22:52', '0');
INSERT INTO `admin_user` VALUES ('158', 'test', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, 'Unknown', 'n', null, '10', 'admin', '2014-09-03 12:19:52', 'admin', '2018-01-11 10:37:14', '0');

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_role_id` (`role_id`),
  CONSTRAINT `admin_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES ('1', '156', '1', 'admin', '2016-08-12 17:03:13', 'admin', '2016-08-12 17:03:13');
INSERT INTO `admin_user_role` VALUES ('2', '158', '2', 'test', '2016-08-13 16:34:20', 'test', '2016-08-13 16:34:20');

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(30) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('1', '董事长', '0');
INSERT INTO `cate` VALUES ('2', '总裁', '1');
INSERT INTO `cate` VALUES ('3', '副总裁', '2');
INSERT INTO `cate` VALUES ('4', '主管经理', '3');
INSERT INTO `cate` VALUES ('5', 'php经理', '4');
INSERT INTO `cate` VALUES ('6', '工程师', '2');
INSERT INTO `cate` VALUES ('7', 'php工程师', '6');
INSERT INTO `cate` VALUES ('8', 'php项目经理', '5');

-- ----------------------------
-- Table structure for delivery_resume
-- ----------------------------
DROP TABLE IF EXISTS `delivery_resume`;
CREATE TABLE `delivery_resume` (
  `del_id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `resume_status` tinyint(1) NOT NULL,
  `dr_time` int(11) NOT NULL,
  PRIMARY KEY (`del_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_resume
-- ----------------------------
INSERT INTO `delivery_resume` VALUES ('1', '30', '1', '0', '0');
INSERT INTO `delivery_resume` VALUES ('2', '2', '2', '0', '0');
INSERT INTO `delivery_resume` VALUES ('3', '3', '3', '0', '0');
INSERT INTO `delivery_resume` VALUES ('4', '1', '6', '0', '2018');

-- ----------------------------
-- Table structure for expect_work
-- ----------------------------
DROP TABLE IF EXISTS `expect_work`;
CREATE TABLE `expect_work` (
  `ex_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `r_id` int(11) NOT NULL,
  `ex_city` varchar(30) NOT NULL,
  `ex_type` varchar(30) NOT NULL,
  `ex_position` varchar(30) NOT NULL,
  `salary` varchar(50) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`ex_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expect_work
-- ----------------------------
INSERT INTO `expect_work` VALUES ('1', '1', '佛山', '兼职', '项目经理', '10', '0');
INSERT INTO `expect_work` VALUES ('2', '2', '南京', '项目经理', 'php白领', '20000', '0');
INSERT INTO `expect_work` VALUES ('3', '3', '北京', '高级工程师', 'php高级工程师', '30000', '0');
INSERT INTO `expect_work` VALUES ('4', '6', '长春', '全职', '产品经理', '5k-10k', '0');
INSERT INTO `expect_work` VALUES ('5', '9', '', '全职', '', '期望月薪', '0');
INSERT INTO `expect_work` VALUES ('6', '11', '北京', '全职', 'PHP', '5k-10k', '0');

-- ----------------------------
-- Table structure for field
-- ----------------------------
DROP TABLE IF EXISTS `field`;
CREATE TABLE `field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(30) DEFAULT NULL COMMENT '行业领域名称',
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field
-- ----------------------------
INSERT INTO `field` VALUES ('1', '八维有限集团');
INSERT INTO `field` VALUES ('2', '悟空猎人有限公司');

-- ----------------------------
-- Table structure for firm
-- ----------------------------
DROP TABLE IF EXISTS `firm`;
CREATE TABLE `firm` (
  `firm_id` int(22) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `firm_name` varchar(50) NOT NULL,
  `firm_add_name` varchar(30) NOT NULL,
  `firm_logo` varchar(30) NOT NULL,
  `firm_url` varchar(30) NOT NULL,
  `firm_city` varchar(21) NOT NULL,
  `field_id` int(11) NOT NULL,
  `firm_scale` varchar(30) NOT NULL COMMENT '公司规模',
  `firm_deve` varchar(30) NOT NULL COMMENT '发展阶段',
  `firm_inves` varchar(50) NOT NULL COMMENT '投资机构',
  `firm_brief` varchar(255) NOT NULL COMMENT '简介',
  `firm_content` text NOT NULL,
  `firm_license` varchar(50) DEFAULT NULL COMMENT '营业执照',
  `firm_examine` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`firm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of firm
-- ----------------------------
INSERT INTO `firm` VALUES ('1', '4', '八维教研有限集团', '北京八维', 'bawei', 'www.bwi.com', '北京', '1', '融资', '融资', '八维集团', '想高薪就业吗？', '百分百就业', '八维', '1');
INSERT INTO `firm` VALUES ('2', '5', '孙悟空', '悟空企业', 'wuk', 'www.wuk.com', '北京', '1', '融资', '融资', '悟空企业', '哎！想低调都不行', '帮助你成功 专业猎头', '悟空', '2');
INSERT INTO `firm` VALUES ('3', '3', '拳头', '拳头', '', 'www.lol.com', '北京', '1', '融资', '融资', '拳头', '啦啦啦', '开心', '拳头', '1');

-- ----------------------------
-- Table structure for firm_label
-- ----------------------------
DROP TABLE IF EXISTS `firm_label`;
CREATE TABLE `firm_label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) NOT NULL,
  `f_label` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of firm_label
-- ----------------------------
INSERT INTO `firm_label` VALUES ('1', '1', '天道酬勤', '0');
INSERT INTO `firm_label` VALUES ('2', '2', '老孙,值得信赖', '0');

-- ----------------------------
-- Table structure for firm_position
-- ----------------------------
DROP TABLE IF EXISTS `firm_position`;
CREATE TABLE `firm_position` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `pos_name` varchar(50) NOT NULL,
  `pos_dep` varchar(30) NOT NULL,
  `pos_nat` varchar(30) NOT NULL,
  `pos_salary_start` smallint(6) NOT NULL,
  `pos_salary_end` smallint(6) NOT NULL,
  `pos_city` varchar(50) NOT NULL,
  `year` varchar(100) NOT NULL,
  `edu` varchar(100) NOT NULL,
  `pos_tem` varchar(60) NOT NULL,
  `pos_content` text NOT NULL,
  `pos_add` varchar(255) NOT NULL,
  `pos_email` varchar(100) NOT NULL,
  `pos_num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16375 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of firm_position
-- ----------------------------
INSERT INTO `firm_position` VALUES ('16374', '30', '0', 'PHP', 'php', '全职', '10', '20', '北京', '应届毕业生', '本科', '结果集', 'asdasdsadsda', '八维', 'admin@admin.com', '0', '0');

-- ----------------------------
-- Table structure for firm_product
-- ----------------------------
DROP TABLE IF EXISTS `firm_product`;
CREATE TABLE `firm_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) NOT NULL,
  `poster` varchar(30) NOT NULL COMMENT '产品海报',
  `product_name` varchar(30) NOT NULL,
  `product_url` varchar(100) NOT NULL,
  `product_content` text,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of firm_product
-- ----------------------------
INSERT INTO `firm_product` VALUES ('1', '1', 'bw', '八维', 'www.baw.com', '教育一把手', '0');
INSERT INTO `firm_product` VALUES ('2', '2', '大话西游', '不一样西游记', 'www.xyj.com', '行业领先人物', '0');

-- ----------------------------
-- Table structure for firm_report
-- ----------------------------
DROP TABLE IF EXISTS `firm_report`;
CREATE TABLE `firm_report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) NOT NULL,
  `rep_title` varchar(50) NOT NULL,
  `rep_url` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of firm_report
-- ----------------------------
INSERT INTO `firm_report` VALUES ('1', '1', 'php 工程师', 'www.baidu.com', '0');
INSERT INTO `firm_report` VALUES ('2', '2', '西游届领军', 'www.taobao.com', '0');

-- ----------------------------
-- Table structure for firm_team
-- ----------------------------
DROP TABLE IF EXISTS `firm_team`;
CREATE TABLE `firm_team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `firm_id` int(11) NOT NULL COMMENT '公司id',
  `team_founder` varchar(30) NOT NULL COMMENT '创始人姓名',
  `team_pro` varchar(30) NOT NULL COMMENT '当前职位',
  `team_sina` varchar(100) NOT NULL COMMENT '新浪微博',
  `fou_content` text NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of firm_team
-- ----------------------------
INSERT INTO `firm_team` VALUES ('1', '1', '你猜', '董事长', 'bw@163.com', '很神秘', '0');
INSERT INTO `firm_team` VALUES ('2', '2', '唐僧', '队长', 'xyj@163.com', '哥是个传说', '0');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(30) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------

-- ----------------------------
-- Table structure for lg_company
-- ----------------------------
DROP TABLE IF EXISTS `lg_company`;
CREATE TABLE `lg_company` (
  `firm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司自增ID',
  `uid` int(11) DEFAULT NULL COMMENT '当前用户的ID',
  `name` varchar(100) DEFAULT NULL COMMENT '公司的全名称',
  `jname` varchar(255) DEFAULT NULL COMMENT '公司的简称',
  `website` varchar(255) DEFAULT NULL COMMENT '公司的网址',
  `city` varchar(255) DEFAULT NULL COMMENT '公司的所在城市',
  `select_industry_hidden` varchar(255) DEFAULT NULL COMMENT '公司所涉及的业务',
  `select_scale_hidden` varchar(255) DEFAULT NULL COMMENT '公司的规模',
  `s_radio_hidden` varchar(255) DEFAULT NULL COMMENT '公司发展阶段',
  `temptation` varchar(255) DEFAULT NULL COMMENT '一句话 介绍公司的好处',
  `logo` varchar(255) DEFAULT NULL COMMENT '公司的头像',
  `labels` varchar(255) DEFAULT NULL COMMENT '公司的薪酬激励',
  `username` varchar(255) DEFAULT NULL COMMENT '公司创始人姓名',
  `position` varchar(255) DEFAULT NULL COMMENT '创始人的职位',
  `weibo` varchar(255) DEFAULT NULL COMMENT '创始人的微博',
  `remark` varchar(255) DEFAULT NULL COMMENT '创始人的简介',
  `user_file` varchar(255) DEFAULT NULL COMMENT '公司创始人的头像',
  `product` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `productUrl` varchar(255) DEFAULT NULL COMMENT '产品地址',
  `productProfile` varchar(255) DEFAULT NULL COMMENT '产品描述',
  `product_file` varchar(255) DEFAULT NULL COMMENT '产品的图像',
  `companyProfile` text COMMENT '公司的简介',
  `companyId` int(11) DEFAULT NULL,
  PRIMARY KEY (`firm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lg_company
-- ----------------------------
INSERT INTO `lg_company` VALUES ('14', '3', '北京科技有限科技公司', 'aa科技', 'www.agui.com', '北京', '移动互联网,电子商务', '2000人以上', 'A轮', '1年16薪', 'uploads/4c88bb27te13aafe42418&690.jpg', '\n    						年终分红专项奖金年底双薪绩效奖金', '11', 'ceo', '13520351725@163.com', '1234567890123457', 'uploads/', '拉钩', 'www.laogu.com', '123蔷薇蔷薇蔷薇', 'uploads/4c88bb27tba2fba054cda&690.jpg', '有权 有钱 有世界 随时回家 随时随地都能玩 想干啥 干啥', '25927');
INSERT INTO `lg_company` VALUES ('15', '1', '上海科技有限科技公司', 'aa', 'www.yii.com', '上海', '电子商务,O2O', '150-500人', '上市公司', '我们公司美女很多，快点来吧', 'uploads/company/9-rules.jpg', '\n    						年终分红五险一金带薪年假岗位晋升年度旅游', '11', 'CEO', 'www.weibo.com', '长看', 'uploads/founder/5c5f_lineart2.jpg', '我不知道', '你猜啊', '反正是非常好，好的不得了', 'uploads/product/1b8b_lineart22.jpg', '马路上的理念哦按人格和平；阿姆河', '25927');
INSERT INTO `lg_company` VALUES ('16', '9', '北京闫大达科技有限公司', '亿万科技', 'www.11.com', '北京', '游戏', '少于15人', '上市公司', '666', 'uploads/company/WIN_20171102_09_43_02_Pro.jpg', '\n    						年终分红股票期权绩效奖金年底双薪11', '11', '11', 'www.sina.com', '11', 'uploads/founder/WIN_20171102_09_43_02_Pro.jpg', '11', '11', '1', 'uploads/product/屏保.png', '看那看那看公司两个快过年啦发啊噶破火箭炮哈', '25927');
INSERT INTO `lg_company` VALUES ('17', '34', '我的公司', '我的科技', 'www.yii.com', '山西', '电子商务', '2000人以上', '上市公司', '222', null, '\n    						年终分红专项奖金年底双薪绩效奖金', '11', '11', 'www.com', '111', null, '1', '滴滴', '答答', null, null, null);
INSERT INTO `lg_company` VALUES ('18', '38', '北京公司', '11', 'www.11.com', '北京', '电子商务', '少于45人', '上市公司', '333', null, '专项奖金年底双薪绩效奖金', '11', '11', 'www.11.com', '11', null, '1', '滴滴', '大大', null, '看那看那看公司两个快过年啦发啊噶破火箭炮哈', '25927');
INSERT INTO `lg_company` VALUES ('20', '91', '瓜子二手车', '瓜子', 'www.guazi.com', '北京', '生活服务', '500-2000人', 'A轮', '', 'uploads/company/F8E916C1AB8D9AAFFC5B89241F91213EE61A38CF_size16_w400_h400.jpeg', '\n    						年终分红', '马涛', 'ceo', '', '丑', 'uploads/founder/1302433dd25c4be880a993b9cd72d20d.jpg', '啊啊啊', '北京', '帅', 'uploads/product/5881a7ae6ac52.jpg', '有权 有钱 有世界 随时回家 随时随地都能玩 想干啥 干啥', '25927');
INSERT INTO `lg_company` VALUES ('21', '92', '拳头', '拳头', 'www.lol.com', '北京', '游戏', '2000人以上', '上市公司', '厉害', 'uploads/company/u=3614389497,3439854889&fm=27&gp=0.jpg', '\n    						年终分红五险一金午餐补助岗位晋升', '王子建', 'ceo', '', '帅', 'uploads/founder/u=3614389497,3439854889&fm=27&gp=0.jpg', '啊啊啊', '北京', '贵', 'uploads/product/u=2834949276,997092220&fm=27&gp=0.jpg', '有权 有钱 有世界 随时回家 随时随地都能玩 想干啥 干啥', '25927');
INSERT INTO `lg_company` VALUES ('22', '18', '暴雪公司', '拳头', 'www.baoxue.com', '华盛顿', '游戏', '2000人以上', '上市公司', '游戏公司里做cg最好的', 'uploads/company/1.jpg', '\n    						年终分红绩效奖金', '王子建', 'ceo', '', '帅', 'uploads/founder/1302433dd25c4be880a993b9cd72d20d.jpg', '守望先锋', 'www.zhanwang.com', '好玩  因为创始人帅', 'uploads/product/5881a7ae6ac52.jpg', '福利高  妹子多  好好好好好好好好好好好好好好好好好好好好好好好好好好好', '25927');
INSERT INTO `lg_company` VALUES ('27', '22', 'tsms_usersize', '清华', '清华', '北京', '移动互联网', '少于15人', '天使轮', '上市不是梦想,我们就是希望', 'uploads/company/站点登录.png', '\n    						通讯津贴免费班车专项奖金领导好', 'PHP小王子', 'ceo', '', '', 'uploads/founder/站点登录.png', '啊啊', 'www.lagouadmin.com', '', 'uploads/product/递归.png', '', '25927');
INSERT INTO `lg_company` VALUES ('28', '28', 'aaa', 'aaa', 'aaa', 'aaa', '移动互联网,电子商务', '少于15人', '天使轮', 'aaaaaaa', 'uploads/company/55.jpg', '\n    						年终分红通讯津贴', 'aaaaaaa', 'aaaaaaa', 'aaaaaa', 'aaaaaaaaaa', 'uploads/founder/ff2ba74c9793da4a.jpg', '1111111', '111111111', '11111111111', 'uploads/product/55.jpg', '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', '25927');
INSERT INTO `lg_company` VALUES ('29', '22', '胡文琪', '拉钩', '清华', '北京', '游戏', '少于15人', '上市公司', '上市不是梦想,我们就是希望', 'uploads/company/mysql.png', '\n    						年底双薪专项奖金', 'PHP小王子', 'ceo', '', '', 'uploads/founder/mysql.png', '啊啊', 'www.lagouadmin.com', '', 'uploads/product/草图.png', '阿萨德奥术大师大大阿萨德撒的阿萨德阿萨德as大师大大奥术大师dataType:\'json\',', '25927');
INSERT INTO `lg_company` VALUES ('26', '23', '网易', '网易', 'www.wangyi.com', '北京', '游戏', '2000人以上', '上市公司', '上市不是梦想,我们就是希望', 'uploads/company/mysql.png', '\n    						绩效奖金年底双薪', '王子建', 'ceo', '', '帅', 'uploads/founder/草图.png', '啊啊', 'www.lagouadmin.com', '', 'uploads/product/mysql.png', '阿斯顿撒大所大多无多无群多群无多群无多群无多群无多群', '25927');
INSERT INTO `lg_company` VALUES ('30', '30', '小米有限公司', '小米', 'www.xiaomi.com', '北京', '', '2000人以上', 'C轮', '上市不是梦想,我们就是希望', 'uploads/company/站点登录.png', '\n    						年终分红通讯津贴免费班车领导好', '雷军', 'ceo', 'xiaomi.@163.com', '', 'uploads/founder/站点登录.png', '啊啊', 'www.lagouadmin.com', '', 'uploads/product/站点登录.png', '斤斤计较军军军军军军军军军军军军军军军军军军军军军军军军军军', '25927');

-- ----------------------------
-- Table structure for penngo_word
-- ----------------------------
DROP TABLE IF EXISTS `penngo_word`;
CREATE TABLE `penngo_word` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '敏感词',
  `create_user` varchar(20) NOT NULL COMMENT '创建人',
  `update_user` varchar(20) DEFAULT NULL COMMENT '更新人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penngo_word
-- ----------------------------
INSERT INTO `penngo_word` VALUES ('2', 'php', 'admin', 'admin', '2017-12-28 03:18:11', '2018-01-15 11:06:55');
INSERT INTO `penngo_word` VALUES ('3', 'java', 'admin', 'admin', '2017-12-28 03:18:47', '2018-01-15 11:07:02');

-- ----------------------------
-- Table structure for personal_firm
-- ----------------------------
DROP TABLE IF EXISTS `personal_firm`;
CREATE TABLE `personal_firm` (
  `per_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人',
  `firm_id` int(11) NOT NULL COMMENT '公司',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`per_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_firm
-- ----------------------------
INSERT INTO `personal_firm` VALUES ('1', '1', '0');
INSERT INTO `personal_firm` VALUES ('2', '2', '0');
INSERT INTO `personal_firm` VALUES ('3', '2', '0');

-- ----------------------------
-- Table structure for pro_exp
-- ----------------------------
DROP TABLE IF EXISTS `pro_exp`;
CREATE TABLE `pro_exp` (
  `pe_id` int(22) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_pos` varchar(50) NOT NULL,
  `pro_duty` text NOT NULL,
  `pro_start_time` varchar(50) NOT NULL,
  `pro_end_time` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pro_exp
-- ----------------------------
INSERT INTO `pro_exp` VALUES ('1', '1', 'aa', 'aa', 'aaaaa', '2014-01', '至今-至今', '0');
INSERT INTO `pro_exp` VALUES ('2', '2', '天猫', '首页设计', 'logo管理', '2018-01-03', '2018-01-25', '0');
INSERT INTO `pro_exp` VALUES ('3', '3', '京东', '快递星球', '数据测试', '2018-01-10', '2018-01-25', '0');
INSERT INTO `pro_exp` VALUES ('4', '6', '搜索', '产品经理', '少时诵诗书所所所所', '2014-01', '2014-01', '0');
INSERT INTO `pro_exp` VALUES ('5', '9', '人体切割', '产品经理', '', '2014-02', '2014-04', '0');
INSERT INTO `pro_exp` VALUES ('6', '11', '搜索', '产品经理', '', '2011-03', '2014-02', '0');

-- ----------------------------
-- Table structure for production
-- ----------------------------
DROP TABLE IF EXISTS `production`;
CREATE TABLE `production` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(10) NOT NULL,
  `pro_url` varchar(50) DEFAULT NULL,
  `pro_text` text,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of production
-- ----------------------------
INSERT INTO `production` VALUES ('1', '1', 'www.lagou.com', 'lagouxangmu');
INSERT INTO `production` VALUES ('2', '2', 'www.tianmao.com', 'xxxxxxxxxxx');
INSERT INTO `production` VALUES ('3', '3', 'www.jingdong.com', 'xxxxxxxxxx');
INSERT INTO `production` VALUES ('4', '6', 'www.baidu.com', '百度');
INSERT INTO `production` VALUES ('5', '9', 'www.baidu.com', 'b');

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `r_id` int(22) NOT NULL AUTO_INCREMENT,
  `uid` int(22) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `work_exp` varchar(50) DEFAULT NULL COMMENT '''工作经验''',
  `re_int` text COMMENT '''自我描述''',
  `add_time` date DEFAULT NULL COMMENT '‘创建时间’',
  `status` tinyint(1) DEFAULT '0',
  `firm_id` int(11) DEFAULT NULL,
  `status_hs` tinyint(1) DEFAULT NULL,
  `currentState` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('1', '16', 'admin', '男', '18211044501', 'jason@qq.com', '本科', '1年', 'aaaaaaaaaaaaaaaaaaaaaa', '2018-01-15', '0', '3', null, '我目前正在职，正考虑换个新环境');
INSERT INTO `resume` VALUES ('5', '21', '我不是个人', '女', '18034555555', 'jason@qq.com', '博士', '10年以上', null, null, '0', null, null, '我目前正在职，正考虑换个新环境');
INSERT INTO `resume` VALUES ('6', '24', '执行', '女', '18034555555', 'jason@qq.com', '大专', '2年', '噼噼啪啪铺铺铺铺铺铺铺铺铺', null, '0', null, null, '我目前已离职，可快速到岗');
INSERT INTO `resume` VALUES ('7', '22', null, null, null, null, null, null, null, null, '0', null, null, null);
INSERT INTO `resume` VALUES ('8', '3', null, null, null, null, null, null, null, null, '0', null, null, null);
INSERT INTO `resume` VALUES ('9', '1', '胡文琪', '', '', 'jason@qq.com', '', '', null, null, '0', null, null, '');
INSERT INTO `resume` VALUES ('10', '29', null, null, null, null, null, null, null, null, '0', '30', null, null);
INSERT INTO `resume` VALUES ('11', '31', '小白', '', '18034555555', 'jason@qq.com', '本科', '3年', null, null, '0', '30', null, '我目前正在职，正考虑换个新环境');
INSERT INTO `resume` VALUES ('12', '31', null, null, null, null, null, null, null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for study_exp
-- ----------------------------
DROP TABLE IF EXISTS `study_exp`;
CREATE TABLE `study_exp` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `se_school_name` varchar(100) NOT NULL,
  `education` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `se_start_time` int(11) NOT NULL,
  `se_end_time` int(11) NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_exp
-- ----------------------------
INSERT INTO `study_exp` VALUES ('1', '1', 'qqqqq', '硕士', 'qq', '2010', '2013');
INSERT INTO `study_exp` VALUES ('2', '2', '北大', '大学', '互联网', '20180112', '20180119');
INSERT INTO `study_exp` VALUES ('3', '3', '南大', '大学', '法律', '20180112', '20200112');
INSERT INTO `study_exp` VALUES ('4', '6', '加里敦大学', '本科', '人体解刨', '2010', '2014');
INSERT INTO `study_exp` VALUES ('5', '11', '加里敦大学', '硕士', '人体解刨', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(22) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '1',
  `user_email` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `img` varchar(30) DEFAULT NULL,
  `last_time` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '胡文琪', 'e10adc3949ba59abbe56e057f20f883e', '2', 'zr@qq.com', null, null, null, '1515742838');
INSERT INTO `user` VALUES ('2', 'PHP大师', '4297f44b13955235245b2497399d7a93', '1', 'zr@qq.com', null, null, null, '1515742860');
INSERT INTO `user` VALUES ('3', '拳头', '96e79218965eb72c92a549dd5a330112', '1', 'lol@qq.com', null, null, null, '1515743178');
INSERT INTO `user` VALUES ('4', '在路上', 'e10adc3949ba59abbe56e057f20f883e', '2', 'baw@qq.com', null, null, null, '1515742839');
INSERT INTO `user` VALUES ('5', '百事', 'e10adc3949ba59abbe56e057f20f883e', '2', 'bashi@qq.com', null, null, null, '1515742840');
INSERT INTO `user` VALUES ('16', 'admin', '4297f44b13955235245b2497399d7a93', '1', '18211044501@qq.com', null, null, null, '1516011943');
INSERT INTO `user` VALUES ('17', 'lalala', '96e79218965eb72c92a549dd5a330112', '2', 'lala@qq.com', null, null, null, '1516084061');
INSERT INTO `user` VALUES ('18', '暴雪公司', '96e79218965eb72c92a549dd5a330112', '1', 'baoxue@163.com', null, null, null, '1516088885');
INSERT INTO `user` VALUES ('19', 'aaaaa', '4297f44b13955235245b2497399d7a93', '2', '18211044501@qq.com', null, null, null, '1516089006');
INSERT INTO `user` VALUES ('20', 'home', '96e79218965eb72c92a549dd5a330112', '2', '18211044501@qq.com', null, null, null, '1516090996');
INSERT INTO `user` VALUES ('21', '我是个人', 'e10adc3949ba59abbe56e057f20f883e', '2', '123456@qq.com', null, null, null, '1516091170');
INSERT INTO `user` VALUES ('22', '我是企业', 'e10adc3949ba59abbe56e057f20f883e', '1', '123456@qq.com', null, null, null, '1516091233');
INSERT INTO `user` VALUES ('23', '网易', '96e79218965eb72c92a549dd5a330112', '1', 'wangyi@163.com', null, null, null, '1516091841');
INSERT INTO `user` VALUES ('24', '执行', '4297f44b13955235245b2497399d7a93', '2', '123456@qq.com', null, null, null, '1516100165');
INSERT INTO `user` VALUES ('25', '小熊哥', '96e79218965eb72c92a549dd5a330112', '1', '1102307843@qq.com', null, null, null, '1516102065');
INSERT INTO `user` VALUES ('26', '小钱', '96e79218965eb72c92a549dd5a330112', '1', '1111@qq.com', null, null, null, '1516104931');
INSERT INTO `user` VALUES ('27', '“”sql“”', 'e10adc3949ba59abbe56e057f20f883e', '2', '123456@qq.com', null, null, null, '1516156066');
INSERT INTO `user` VALUES ('28', 'aaaaaa', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '1', 'aa@qq.com', null, null, null, '1516166004');
INSERT INTO `user` VALUES ('29', 'vvvv', '4693fbb215b8ca15a6900f0cfa164cdc', '2', '18211044501@qq.com', null, null, null, '1516171567');
INSERT INTO `user` VALUES ('30', '小米', 'e10adc3949ba59abbe56e057f20f883e', '1', '123456@qq.com', null, null, null, '1516173965');
INSERT INTO `user` VALUES ('31', '小白', 'e10adc3949ba59abbe56e057f20f883e', '2', '123456@qq.com', null, null, null, '1516174264');
INSERT INTO `user` VALUES ('32', 'zzzzz', '453e41d218e071ccfb2d1c99ce23906a', '2', 'zzz@qq.com', null, null, null, '1516175772');

-- ----------------------------
-- Table structure for work_exper
-- ----------------------------
DROP TABLE IF EXISTS `work_exper`;
CREATE TABLE `work_exper` (
  `work_id` int(22) NOT NULL AUTO_INCREMENT COMMENT '0',
  `r_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `work_position` varchar(30) NOT NULL COMMENT '工作岗位',
  `work_start_time` varchar(50) NOT NULL,
  `work_end_time` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_exper
-- ----------------------------
INSERT INTO `work_exper` VALUES ('1', '1', '啊啊啊', '啊啊啊', '2014-01', '至今-至今', '0');
INSERT INTO `work_exper` VALUES ('2', '2', '阿里巴巴', '3掏商城', '', '', '0');
INSERT INTO `work_exper` VALUES ('3', '3', '我爱我家', '商品购房', '', '', '0');
INSERT INTO `work_exper` VALUES ('4', '6', '八维', '项目经理', '2012-01', '2014-01', '0');
INSERT INTO `work_exper` VALUES ('5', '9', 'dd', '', '2014-01', '-', '0');
INSERT INTO `work_exper` VALUES ('6', '11', '百度', 'PHP经理', '2012-03', '至今-至今', '0');
