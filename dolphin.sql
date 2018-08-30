/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : dolphin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-30 09:23:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dp_admin_access`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_access`;
CREATE TABLE `dp_admin_access` (
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `group` varchar(16) NOT NULL DEFAULT '' COMMENT '权限分组标识',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '授权节点id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统一授权表';

-- ----------------------------
-- Records of dp_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_action`;
CREATE TABLE `dp_admin_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '所属模块名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of dp_admin_action
-- ----------------------------
INSERT INTO `dp_admin_action` VALUES ('1', 'user', 'user_add', '添加用户', '添加用户', '', '[user|get_nickname] 添加了用户：[record|get_nickname]', '1', '1480156399', '1480163853');
INSERT INTO `dp_admin_action` VALUES ('2', 'user', 'user_edit', '编辑用户', '编辑用户', '', '[user|get_nickname] 编辑了用户：[details]', '1', '1480164578', '1480297748');
INSERT INTO `dp_admin_action` VALUES ('3', 'user', 'user_delete', '删除用户', '删除用户', '', '[user|get_nickname] 删除了用户：[details]', '1', '1480168582', '1480168616');
INSERT INTO `dp_admin_action` VALUES ('4', 'user', 'user_enable', '启用用户', '启用用户', '', '[user|get_nickname] 启用了用户：[details]', '1', '1480169185', '1480169185');
INSERT INTO `dp_admin_action` VALUES ('5', 'user', 'user_disable', '禁用用户', '禁用用户', '', '[user|get_nickname] 禁用了用户：[details]', '1', '1480169214', '1480170581');
INSERT INTO `dp_admin_action` VALUES ('6', 'user', 'user_access', '用户授权', '用户授权', '', '[user|get_nickname] 对用户：[record|get_nickname] 进行了授权操作。详情：[details]', '1', '1480221441', '1480221563');
INSERT INTO `dp_admin_action` VALUES ('7', 'user', 'role_add', '添加角色', '添加角色', '', '[user|get_nickname] 添加了角色：[details]', '1', '1480251473', '1480251473');
INSERT INTO `dp_admin_action` VALUES ('8', 'user', 'role_edit', '编辑角色', '编辑角色', '', '[user|get_nickname] 编辑了角色：[details]', '1', '1480252369', '1480252369');
INSERT INTO `dp_admin_action` VALUES ('9', 'user', 'role_delete', '删除角色', '删除角色', '', '[user|get_nickname] 删除了角色：[details]', '1', '1480252580', '1480252580');
INSERT INTO `dp_admin_action` VALUES ('10', 'user', 'role_enable', '启用角色', '启用角色', '', '[user|get_nickname] 启用了角色：[details]', '1', '1480252620', '1480252620');
INSERT INTO `dp_admin_action` VALUES ('11', 'user', 'role_disable', '禁用角色', '禁用角色', '', '[user|get_nickname] 禁用了角色：[details]', '1', '1480252651', '1480252651');
INSERT INTO `dp_admin_action` VALUES ('12', 'user', 'attachment_enable', '启用附件', '启用附件', '', '[user|get_nickname] 启用了附件：附件ID([details])', '1', '1480253226', '1480253332');
INSERT INTO `dp_admin_action` VALUES ('13', 'user', 'attachment_disable', '禁用附件', '禁用附件', '', '[user|get_nickname] 禁用了附件：附件ID([details])', '1', '1480253267', '1480253340');
INSERT INTO `dp_admin_action` VALUES ('14', 'user', 'attachment_delete', '删除附件', '删除附件', '', '[user|get_nickname] 删除了附件：附件ID([details])', '1', '1480253323', '1480253323');
INSERT INTO `dp_admin_action` VALUES ('15', 'admin', 'config_add', '添加配置', '添加配置', '', '[user|get_nickname] 添加了配置，[details]', '1', '1480296196', '1480296196');
INSERT INTO `dp_admin_action` VALUES ('16', 'admin', 'config_edit', '编辑配置', '编辑配置', '', '[user|get_nickname] 编辑了配置：[details]', '1', '1480296960', '1480296960');
INSERT INTO `dp_admin_action` VALUES ('17', 'admin', 'config_enable', '启用配置', '启用配置', '', '[user|get_nickname] 启用了配置：[details]', '1', '1480298479', '1480298479');
INSERT INTO `dp_admin_action` VALUES ('18', 'admin', 'config_disable', '禁用配置', '禁用配置', '', '[user|get_nickname] 禁用了配置：[details]', '1', '1480298506', '1480298506');
INSERT INTO `dp_admin_action` VALUES ('19', 'admin', 'config_delete', '删除配置', '删除配置', '', '[user|get_nickname] 删除了配置：[details]', '1', '1480298532', '1480298532');
INSERT INTO `dp_admin_action` VALUES ('20', 'admin', 'database_export', '备份数据库', '备份数据库', '', '[user|get_nickname] 备份了数据库：[details]', '1', '1480298946', '1480298946');
INSERT INTO `dp_admin_action` VALUES ('21', 'admin', 'database_import', '还原数据库', '还原数据库', '', '[user|get_nickname] 还原了数据库：[details]', '1', '1480301990', '1480302022');
INSERT INTO `dp_admin_action` VALUES ('22', 'admin', 'database_optimize', '优化数据表', '优化数据表', '', '[user|get_nickname] 优化了数据表：[details]', '1', '1480302616', '1480302616');
INSERT INTO `dp_admin_action` VALUES ('23', 'admin', 'database_repair', '修复数据表', '修复数据表', '', '[user|get_nickname] 修复了数据表：[details]', '1', '1480302798', '1480302798');
INSERT INTO `dp_admin_action` VALUES ('24', 'admin', 'database_backup_delete', '删除数据库备份', '删除数据库备份', '', '[user|get_nickname] 删除了数据库备份：[details]', '1', '1480302870', '1480302870');
INSERT INTO `dp_admin_action` VALUES ('25', 'admin', 'hook_add', '添加钩子', '添加钩子', '', '[user|get_nickname] 添加了钩子：[details]', '1', '1480303198', '1480303198');
INSERT INTO `dp_admin_action` VALUES ('26', 'admin', 'hook_edit', '编辑钩子', '编辑钩子', '', '[user|get_nickname] 编辑了钩子：[details]', '1', '1480303229', '1480303229');
INSERT INTO `dp_admin_action` VALUES ('27', 'admin', 'hook_delete', '删除钩子', '删除钩子', '', '[user|get_nickname] 删除了钩子：[details]', '1', '1480303264', '1480303264');
INSERT INTO `dp_admin_action` VALUES ('28', 'admin', 'hook_enable', '启用钩子', '启用钩子', '', '[user|get_nickname] 启用了钩子：[details]', '1', '1480303294', '1480303294');
INSERT INTO `dp_admin_action` VALUES ('29', 'admin', 'hook_disable', '禁用钩子', '禁用钩子', '', '[user|get_nickname] 禁用了钩子：[details]', '1', '1480303409', '1480303409');
INSERT INTO `dp_admin_action` VALUES ('30', 'admin', 'menu_add', '添加节点', '添加节点', '', '[user|get_nickname] 添加了节点：[details]', '1', '1480305468', '1480305468');
INSERT INTO `dp_admin_action` VALUES ('31', 'admin', 'menu_edit', '编辑节点', '编辑节点', '', '[user|get_nickname] 编辑了节点：[details]', '1', '1480305513', '1480305513');
INSERT INTO `dp_admin_action` VALUES ('32', 'admin', 'menu_delete', '删除节点', '删除节点', '', '[user|get_nickname] 删除了节点：[details]', '1', '1480305562', '1480305562');
INSERT INTO `dp_admin_action` VALUES ('33', 'admin', 'menu_enable', '启用节点', '启用节点', '', '[user|get_nickname] 启用了节点：[details]', '1', '1480305630', '1480305630');
INSERT INTO `dp_admin_action` VALUES ('34', 'admin', 'menu_disable', '禁用节点', '禁用节点', '', '[user|get_nickname] 禁用了节点：[details]', '1', '1480305659', '1480305659');
INSERT INTO `dp_admin_action` VALUES ('35', 'admin', 'module_install', '安装模块', '安装模块', '', '[user|get_nickname] 安装了模块：[details]', '1', '1480307558', '1480307558');
INSERT INTO `dp_admin_action` VALUES ('36', 'admin', 'module_uninstall', '卸载模块', '卸载模块', '', '[user|get_nickname] 卸载了模块：[details]', '1', '1480307588', '1480307588');
INSERT INTO `dp_admin_action` VALUES ('37', 'admin', 'module_enable', '启用模块', '启用模块', '', '[user|get_nickname] 启用了模块：[details]', '1', '1480307618', '1480307618');
INSERT INTO `dp_admin_action` VALUES ('38', 'admin', 'module_disable', '禁用模块', '禁用模块', '', '[user|get_nickname] 禁用了模块：[details]', '1', '1480307653', '1480307653');
INSERT INTO `dp_admin_action` VALUES ('39', 'admin', 'module_export', '导出模块', '导出模块', '', '[user|get_nickname] 导出了模块：[details]', '1', '1480307682', '1480307682');
INSERT INTO `dp_admin_action` VALUES ('40', 'admin', 'packet_install', '安装数据包', '安装数据包', '', '[user|get_nickname] 安装了数据包：[details]', '1', '1480308342', '1480308342');
INSERT INTO `dp_admin_action` VALUES ('41', 'admin', 'packet_uninstall', '卸载数据包', '卸载数据包', '', '[user|get_nickname] 卸载了数据包：[details]', '1', '1480308372', '1480308372');
INSERT INTO `dp_admin_action` VALUES ('42', 'admin', 'system_config_update', '更新系统设置', '更新系统设置', '', '[user|get_nickname] 更新了系统设置：[details]', '1', '1480309555', '1480309642');
INSERT INTO `dp_admin_action` VALUES ('43', 'cms', 'slider_delete', '删除滚动图片', '删除滚动图片', '', '[user|get_nickname] 删除了滚动图片：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('44', 'cms', 'slider_edit', '编辑滚动图片', '编辑滚动图片', '', '[user|get_nickname] 编辑了滚动图片：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('45', 'cms', 'slider_add', '添加滚动图片', '添加滚动图片', '', '[user|get_nickname] 添加了滚动图片：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('46', 'cms', 'document_delete', '删除文档', '删除文档', '', '[user|get_nickname] 删除了文档：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('47', 'cms', 'document_restore', '还原文档', '还原文档', '', '[user|get_nickname] 还原了文档：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('48', 'cms', 'nav_disable', '禁用导航', '禁用导航', '', '[user|get_nickname] 禁用了导航：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('49', 'cms', 'nav_enable', '启用导航', '启用导航', '', '[user|get_nickname] 启用了导航：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('50', 'cms', 'nav_delete', '删除导航', '删除导航', '', '[user|get_nickname] 删除了导航：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('51', 'cms', 'nav_edit', '编辑导航', '编辑导航', '', '[user|get_nickname] 编辑了导航：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('52', 'cms', 'nav_add', '添加导航', '添加导航', '', '[user|get_nickname] 添加了导航：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('53', 'cms', 'model_disable', '禁用内容模型', '禁用内容模型', '', '[user|get_nickname] 禁用了内容模型：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('54', 'cms', 'model_enable', '启用内容模型', '启用内容模型', '', '[user|get_nickname] 启用了内容模型：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('55', 'cms', 'model_delete', '删除内容模型', '删除内容模型', '', '[user|get_nickname] 删除了内容模型：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('56', 'cms', 'model_edit', '编辑内容模型', '编辑内容模型', '', '[user|get_nickname] 编辑了内容模型：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('57', 'cms', 'model_add', '添加内容模型', '添加内容模型', '', '[user|get_nickname] 添加了内容模型：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('58', 'cms', 'menu_disable', '禁用导航菜单', '禁用导航菜单', '', '[user|get_nickname] 禁用了导航菜单：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('59', 'cms', 'menu_enable', '启用导航菜单', '启用导航菜单', '', '[user|get_nickname] 启用了导航菜单：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('60', 'cms', 'menu_delete', '删除导航菜单', '删除导航菜单', '', '[user|get_nickname] 删除了导航菜单：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('61', 'cms', 'menu_edit', '编辑导航菜单', '编辑导航菜单', '', '[user|get_nickname] 编辑了导航菜单：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('62', 'cms', 'menu_add', '添加导航菜单', '添加导航菜单', '', '[user|get_nickname] 添加了导航菜单：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('63', 'cms', 'link_disable', '禁用友情链接', '禁用友情链接', '', '[user|get_nickname] 禁用了友情链接：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('64', 'cms', 'link_enable', '启用友情链接', '启用友情链接', '', '[user|get_nickname] 启用了友情链接：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('65', 'cms', 'link_delete', '删除友情链接', '删除友情链接', '', '[user|get_nickname] 删除了友情链接：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('66', 'cms', 'link_edit', '编辑友情链接', '编辑友情链接', '', '[user|get_nickname] 编辑了友情链接：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('67', 'cms', 'link_add', '添加友情链接', '添加友情链接', '', '[user|get_nickname] 添加了友情链接：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('68', 'cms', 'field_disable', '禁用模型字段', '禁用模型字段', '', '[user|get_nickname] 禁用了模型字段：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('69', 'cms', 'field_enable', '启用模型字段', '启用模型字段', '', '[user|get_nickname] 启用了模型字段：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('70', 'cms', 'field_delete', '删除模型字段', '删除模型字段', '', '[user|get_nickname] 删除了模型字段：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('71', 'cms', 'field_edit', '编辑模型字段', '编辑模型字段', '', '[user|get_nickname] 编辑了模型字段：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('72', 'cms', 'field_add', '添加模型字段', '添加模型字段', '', '[user|get_nickname] 添加了模型字段：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('73', 'cms', 'column_disable', '禁用栏目', '禁用栏目', '', '[user|get_nickname] 禁用了栏目：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('74', 'cms', 'column_enable', '启用栏目', '启用栏目', '', '[user|get_nickname] 启用了栏目：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('75', 'cms', 'column_delete', '删除栏目', '删除栏目', '', '[user|get_nickname] 删除了栏目：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('76', 'cms', 'column_edit', '编辑栏目', '编辑栏目', '', '[user|get_nickname] 编辑了栏目：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('77', 'cms', 'column_add', '添加栏目', '添加栏目', '', '[user|get_nickname] 添加了栏目：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('78', 'cms', 'advert_type_disable', '禁用广告分类', '禁用广告分类', '', '[user|get_nickname] 禁用了广告分类：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('79', 'cms', 'advert_type_enable', '启用广告分类', '启用广告分类', '', '[user|get_nickname] 启用了广告分类：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('80', 'cms', 'advert_type_delete', '删除广告分类', '删除广告分类', '', '[user|get_nickname] 删除了广告分类：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('81', 'cms', 'advert_type_edit', '编辑广告分类', '编辑广告分类', '', '[user|get_nickname] 编辑了广告分类：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('82', 'cms', 'advert_type_add', '添加广告分类', '添加广告分类', '', '[user|get_nickname] 添加了广告分类：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('83', 'cms', 'advert_disable', '禁用广告', '禁用广告', '', '[user|get_nickname] 禁用了广告：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('84', 'cms', 'advert_enable', '启用广告', '启用广告', '', '[user|get_nickname] 启用了广告：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('85', 'cms', 'advert_delete', '删除广告', '删除广告', '', '[user|get_nickname] 删除了广告：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('86', 'cms', 'advert_edit', '编辑广告', '编辑广告', '', '[user|get_nickname] 编辑了广告：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('87', 'cms', 'advert_add', '添加广告', '添加广告', '', '[user|get_nickname] 添加了广告：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('88', 'cms', 'document_disable', '禁用文档', '禁用文档', '', '[user|get_nickname] 禁用了文档：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('89', 'cms', 'document_enable', '启用文档', '启用文档', '', '[user|get_nickname] 启用了文档：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('90', 'cms', 'document_trash', '回收文档', '回收文档', '', '[user|get_nickname] 回收了文档：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('91', 'cms', 'document_edit', '编辑文档', '编辑文档', '', '[user|get_nickname] 编辑了文档：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('92', 'cms', 'document_add', '添加文档', '添加文档', '', '[user|get_nickname] 添加了文档：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('93', 'cms', 'slider_enable', '启用滚动图片', '启用滚动图片', '', '[user|get_nickname] 启用了滚动图片：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('94', 'cms', 'slider_disable', '禁用滚动图片', '禁用滚动图片', '', '[user|get_nickname] 禁用了滚动图片：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('95', 'cms', 'support_add', '添加客服', '添加客服', '', '[user|get_nickname] 添加了客服：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('96', 'cms', 'support_edit', '编辑客服', '编辑客服', '', '[user|get_nickname] 编辑了客服：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('97', 'cms', 'support_delete', '删除客服', '删除客服', '', '[user|get_nickname] 删除了客服：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('98', 'cms', 'support_enable', '启用客服', '启用客服', '', '[user|get_nickname] 启用了客服：[details]', '1', '1533109495', '1533109495');
INSERT INTO `dp_admin_action` VALUES ('99', 'cms', 'support_disable', '禁用客服', '禁用客服', '', '[user|get_nickname] 禁用了客服：[details]', '1', '1533109495', '1533109495');

-- ----------------------------
-- Table structure for `dp_admin_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_attachment`;
CREATE TABLE `dp_admin_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(128) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(8) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `width` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片宽度',
  `height` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片高度',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of dp_admin_attachment
-- ----------------------------
INSERT INTO `dp_admin_attachment` VALUES ('1', '1', 'indec_phone@2x.png', 'user', 'uploads/images/20180801/0d5b5e81a49cf88b03ff62f63d8b475e.png', '', '', 'image/png', 'png', '1331', '69eb5cbc0c60cafeb7fe0174f453c39b', '424c733df0a815b1507f815897762f8245e13679', 'local', '0', '1533110170', '1533110170', '100', '1', '37', '37');

-- ----------------------------
-- Table structure for `dp_admin_config`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_config`;
CREATE TABLE `dp_admin_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `value` text NOT NULL COMMENT '配置值',
  `options` text NOT NULL COMMENT '配置项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '配置提示',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of dp_admin_config
-- ----------------------------
INSERT INTO `dp_admin_config` VALUES ('1', 'web_site_status', '站点开关', 'base', 'switch', '1', '', '站点关闭后将不能访问，后台可正常登录', '', '', '', '', '', '2', '', '', '', '', '1475240395', '1477403914', '1', '1');
INSERT INTO `dp_admin_config` VALUES ('2', 'web_site_title', '站点标题', 'base', 'text', 'PHP', '', '调用方式：<code>config(\'web_site_title\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240646', '1477710341', '2', '1');
INSERT INTO `dp_admin_config` VALUES ('3', 'web_site_slogan', '站点标语', 'base', 'text', 'PHP，极简、极速、极致', '', '站点口号，调用方式：<code>config(\'web_site_slogan\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240994', '1477710357', '3', '1');
INSERT INTO `dp_admin_config` VALUES ('4', 'web_site_logo', '站点LOGO', 'base', 'image', '', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241067', '1475241067', '4', '1');
INSERT INTO `dp_admin_config` VALUES ('5', 'web_site_description', '站点描述', 'base', 'textarea', '', '', '网站描述，有利于搜索引擎抓取相关信息', '', '', '', '', '', '2', '', '', '', '', '1475241186', '1475241186', '6', '1');
INSERT INTO `dp_admin_config` VALUES ('6', 'web_site_keywords', '站点关键词', 'base', 'text', 'PHP、PHP开发框架、后台框架', '', '网站搜索引擎关键字', '', '', '', '', '', '2', '', '', '', '', '1475241328', '1475241328', '7', '1');
INSERT INTO `dp_admin_config` VALUES ('7', 'web_site_copyright', '版权信息', 'base', 'text', 'Copyright © 2015-2017 DolphinPHP All rights reserved.', '', '调用方式：<code>config(\'web_site_copyright\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241416', '1477710383', '8', '1');
INSERT INTO `dp_admin_config` VALUES ('8', 'web_site_icp', '备案信息', 'base', 'text', '', '', '调用方式：<code>config(\'web_site_icp\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241441', '1477710441', '9', '1');
INSERT INTO `dp_admin_config` VALUES ('9', 'web_site_statistics', '站点统计', 'base', 'textarea', '', '', '网站统计代码，支持百度、Google、cnzz等，调用方式：<code>config(\'web_site_statistics\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241498', '1477710455', '10', '1');
INSERT INTO `dp_admin_config` VALUES ('10', 'config_group', '配置分组', 'system', 'array', 'base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241716', '1477649446', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('11', 'form_item_type', '配置类型', 'system', 'array', 'text:单行文本\r\ntextarea:多行文本\r\nstatic:静态文本\r\npassword:密码\r\ncheckbox:复选框\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nhidden:隐藏\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nlinkage:普通联动下拉框\r\nlinkages:快速联动下拉框\r\nimage:单张图片\r\nimages:多张图片\r\nfile:单个文件\r\nfiles:多个文件\r\nueditor:UEditor 编辑器\r\nwangeditor:wangEditor 编辑器\r\neditormd:markdown 编辑器\r\nckeditor:ckeditor 编辑器\r\nicon:字体图标\r\ntags:标签\r\nnumber:数字\r\nbmap:百度地图\r\ncolorpicker:取色器\r\njcrop:图片裁剪\r\nmasked:格式文本\r\nrange:范围\r\ntime:时间', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241835', '1495853193', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('12', 'upload_file_size', '文件上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475241897', '1477663520', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('13', 'upload_file_ext', '允许上传的文件后缀', 'upload', 'tags', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475241975', '1477649489', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('14', 'upload_image_size', '图片上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475242015', '1477663529', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('15', 'upload_image_ext', '允许上传的图片后缀', 'upload', 'tags', 'gif,jpg,jpeg,bmp,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475242056', '1477649506', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('16', 'list_rows', '分页数量', 'system', 'number', '20', '', '每页的记录数', '', '', '', '', '', '2', '', '', '', '', '1475242066', '1476074507', '101', '1');
INSERT INTO `dp_admin_config` VALUES ('17', 'system_color', '后台配色方案', 'system', 'radio', 'default', 'default:Default\r\namethyst:Amethyst\r\ncity:City\r\nflat:Flat\r\nmodern:Modern\r\nsmooth:Smooth', '', '', '', '', '', '', '2', '', '', '', '', '1475250066', '1477316689', '102', '1');
INSERT INTO `dp_admin_config` VALUES ('18', 'develop_mode', '开发模式', 'develop', 'radio', '1', '0:关闭\r\n1:开启', '', '', '', '', '', '', '2', '', '', '', '', '1476864205', '1476864231', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('19', 'app_trace', '显示页面Trace', 'develop', 'radio', '0', '0:否\r\n1:是', '', '', '', '', '', '', '2', '', '', '', '', '1476866355', '1476866355', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('21', 'data_backup_path', '数据库备份根路径', 'database', 'text', '../data/', '', '路径必须以 / 结尾', '', '', '', '', '', '2', '', '', '', '', '1477017745', '1477018467', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('22', 'data_backup_part_size', '数据库备份卷大小', 'database', 'text', '20971520', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '', '', '', '', '', '2', '', '', '', '', '1477017886', '1477017886', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('23', 'data_backup_compress', '数据库备份文件是否启用压缩', 'database', 'radio', '1', '0:否\r\n1:是', '压缩备份文件需要PHP环境支持 <code>gzopen</code>, <code>gzwrite</code>函数', '', '', '', '', '', '2', '', '', '', '', '1477017978', '1477018172', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('24', 'data_backup_compress_level', '数据库备份文件压缩级别', 'database', 'radio', '9', '1:最低\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '', '', '', '', '', '2', '', '', '', '', '1477018083', '1477018083', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('25', 'top_menu_max', '顶部导航模块数量', 'system', 'text', '10', '', '设置顶部导航默认显示的模块数量', '', '', '', '', '', '2', '', '', '', '', '1477579289', '1477579289', '103', '1');
INSERT INTO `dp_admin_config` VALUES ('26', 'web_site_logo_text', '站点LOGO文字', 'base', 'image', '', '', '', '', '', '', '', '', '2', '', '', '', '', '1477620643', '1477620643', '5', '1');
INSERT INTO `dp_admin_config` VALUES ('27', 'upload_image_thumb', '缩略图尺寸', 'upload', 'text', '', '', '不填写则不生成缩略图，如需生成 <code>300x300</code> 的缩略图，则填写 <code>300,300</code> ，请注意，逗号必须是英文逗号', '', '', '', '', '', '2', '', '', '', '', '1477644150', '1477649513', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('28', 'upload_image_thumb_type', '缩略图裁剪类型', 'upload', 'radio', '1', '1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放', '该项配置只有在启用生成缩略图时才生效', '', '', '', '', '', '2', '', '', '', '', '1477646271', '1477649521', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('29', 'upload_thumb_water', '添加水印', 'upload', 'switch', '0', '', '', '', '', '', '', '', '2', '', '', '', '', '1477649648', '1477649648', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('30', 'upload_thumb_water_pic', '水印图片', 'upload', 'image', '', '', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656390', '1477656390', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('31', 'upload_thumb_water_position', '水印位置', 'upload', 'radio', '9', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656528', '1477656528', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('32', 'upload_thumb_water_alpha', '水印透明度', 'upload', 'text', '50', '', '请输入0~100之间的数字，数字越小，透明度越高', '', '', '', '', '', '2', '', '', '', '', '1477656714', '1477661309', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('33', 'wipe_cache_type', '清除缓存类型', 'system', 'checkbox', 'TEMP_PATH', 'TEMP_PATH:应用缓存\r\nLOG_PATH:应用日志\r\nCACHE_PATH:项目模板缓存', '清除缓存时，要删除的缓存类型', '', '', '', '', '', '2', '', '', '', '', '1477727305', '1477727305', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('34', 'captcha_signin', '后台验证码开关', 'system', 'switch', '0', '', '后台登录时是否需要验证码', '', '', '', '', '', '2', '', '', '', '', '1478771958', '1478771958', '99', '1');
INSERT INTO `dp_admin_config` VALUES ('35', 'home_default_module', '前台默认模块', 'system', 'select', 'index', '', '前台默认访问的模块，该模块必须有Index控制器和index方法', '', '', '', '', '', '0', '', '', '', '', '1486714723', '1486715620', '104', '1');
INSERT INTO `dp_admin_config` VALUES ('36', 'minify_status', '开启minify', 'system', 'switch', '0', '', '开启minify会压缩合并js、css文件，可以减少资源请求次数，如果不支持minify，可关闭', '', '', '', '', '', '0', '', '', '', '', '1487035843', '1487035843', '99', '1');
INSERT INTO `dp_admin_config` VALUES ('37', 'upload_driver', '上传驱动', 'upload', 'radio', 'local', 'local:本地', '图片或文件上传驱动', '', '', '', '', '', '0', '', '', '', '', '1501488567', '1501490821', '100', '1');
INSERT INTO `dp_admin_config` VALUES ('38', 'system_log', '系统日志', 'system', 'switch', '1', '', '是否开启系统日志功能', '', '', '', '', '', '0', '', '', '', '', '1512635391', '1512635391', '99', '1');
INSERT INTO `dp_admin_config` VALUES ('39', 'asset_version', '资源版本号', 'develop', 'text', '20180327', '', '可通过修改版号强制用户更新静态文件', '', '', '', '', '', '0', '', '', '', '', '1522143239', '1522143239', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_hook`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_hook`;
CREATE TABLE `dp_admin_hook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of dp_admin_hook
-- ----------------------------
INSERT INTO `dp_admin_hook` VALUES ('1', 'admin_index', '', '后台首页', '1', '1468174214', '1477757518', '1');
INSERT INTO `dp_admin_hook` VALUES ('2', 'plugin_index_tab_list', '', '插件扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('3', 'module_index_tab_list', '', '模块扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('4', 'page_tips', '', '每个页面的提示', '1', '1468174214', '1468174214', '1');
INSERT INTO `dp_admin_hook` VALUES ('5', 'signin_footer', '', '登录页面底部钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `dp_admin_hook` VALUES ('6', 'signin_captcha', '', '登录页面验证码钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `dp_admin_hook` VALUES ('7', 'signin', '', '登录控制器钩子', '1', '1479386875', '1479386875', '1');
INSERT INTO `dp_admin_hook` VALUES ('8', 'upload_attachment', '', '附件上传钩子', '1', '1501493808', '1501493808', '1');
INSERT INTO `dp_admin_hook` VALUES ('9', 'page_plugin_js', '', '页面插件js钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('10', 'page_plugin_css', '', '页面插件css钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('11', 'signin_sso', '', '单点登录钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('12', 'signout_sso', '', '单点退出钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('13', 'user_add', '', '添加用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('14', 'user_edit', '', '编辑用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('15', 'user_delete', '', '删除用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('16', 'user_enable', '', '启用用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dp_admin_hook` VALUES ('17', 'user_disable', '', '禁用用户钩子', '1', '1503633591', '1503633591', '1');

-- ----------------------------
-- Table structure for `dp_admin_hook_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_hook_plugin`;
CREATE TABLE `dp_admin_hook_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

-- ----------------------------
-- Records of dp_admin_hook_plugin
-- ----------------------------
INSERT INTO `dp_admin_hook_plugin` VALUES ('1', 'admin_index', 'SystemInfo', '1477757503', '1477757503', '1', '1');
INSERT INTO `dp_admin_hook_plugin` VALUES ('2', 'admin_index', 'DevTeam', '1477755780', '1477755780', '2', '1');

-- ----------------------------
-- Table structure for `dp_admin_icon`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_icon`;
CREATE TABLE `dp_admin_icon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '图标名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图标css地址',
  `prefix` varchar(32) NOT NULL DEFAULT '' COMMENT '图标前缀',
  `font_family` varchar(32) NOT NULL DEFAULT '' COMMENT '字体名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图标表';

-- ----------------------------
-- Records of dp_admin_icon
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_icon_list`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_icon_list`;
CREATE TABLE `dp_admin_icon_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属图标id',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '图标标题',
  `class` varchar(255) NOT NULL DEFAULT '' COMMENT '图标类名',
  `code` varchar(128) NOT NULL DEFAULT '' COMMENT '图标关键词',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='详细图标列表';

-- ----------------------------
-- Records of dp_admin_icon_list
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_log`;
CREATE TABLE `dp_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of dp_admin_log
-- ----------------------------
INSERT INTO `dp_admin_log` VALUES ('1', '20', '1', '0', 'database', '0', '超级管理员 备份了数据库：dp_admin_access,dp_admin_action,dp_admin_attachment,dp_admin_config,dp_admin_hook,dp_admin_hook_plugin,dp_admin_icon,dp_admin_icon_list,dp_admin_log,dp_admin_menu,dp_admin_message,dp_admin_module,dp_admin_packet,dp_admin_plugin,dp_admin_role,dp_admin_user,dp_cms_advert,dp_cms_advert_type,dp_cms_column,dp_cms_document,dp_cms_field,dp_cms_link,dp_cms_menu,dp_cms_model,dp_cms_nav,dp_cms_page,dp_cms_slider,dp_cms_support,dp_packet_wechat_area,dp_plugin_hello', '1', '1533109418');
INSERT INTO `dp_admin_log` VALUES ('2', '40', '1', '0', 'admin_packet', '0', '超级管理员 安装了数据包：微信地区数据包', '1', '1533109441');
INSERT INTO `dp_admin_log` VALUES ('3', '35', '1', '0', 'admin_module', '0', '超级管理员 安装了模块：门户', '1', '1533109495');
INSERT INTO `dp_admin_log` VALUES ('4', '20', '1', '0', 'database', '0', '超级管理员 备份了数据库：dp_admin_access,dp_admin_action,dp_admin_attachment,dp_admin_config,dp_admin_hook,dp_admin_hook_plugin,dp_admin_icon,dp_admin_icon_list,dp_admin_log,dp_admin_menu,dp_admin_message,dp_admin_module,dp_admin_packet,dp_admin_plugin,dp_admin_role,dp_admin_user,dp_cms_advert,dp_cms_advert_type,dp_cms_column,dp_cms_document,dp_cms_field,dp_cms_link,dp_cms_menu,dp_cms_model,dp_cms_nav,dp_cms_page,dp_cms_slider,dp_cms_support,dp_packet_wechat_area,dp_plugin_hello', '1', '1533109575');
INSERT INTO `dp_admin_log` VALUES ('5', '24', '1', '0', 'database', '0', '超级管理员 删除了数据库备份：20180801-154338', '1', '1533109595');
INSERT INTO `dp_admin_log` VALUES ('6', '20', '1', '0', 'database', '0', '超级管理员 备份了数据库：dp_admin_access,dp_admin_action,dp_admin_attachment,dp_admin_config,dp_admin_hook,dp_admin_hook_plugin,dp_admin_icon,dp_admin_icon_list,dp_admin_log,dp_admin_menu,dp_admin_message,dp_admin_module,dp_admin_packet,dp_admin_plugin,dp_admin_role,dp_admin_user,dp_cms_advert,dp_cms_advert_type,dp_cms_column,dp_cms_document,dp_cms_field,dp_cms_link,dp_cms_menu,dp_cms_model,dp_cms_nav,dp_cms_page,dp_cms_slider,dp_cms_support,dp_packet_wechat_area,dp_plugin_hello', '1', '1535097432');
INSERT INTO `dp_admin_log` VALUES ('7', '40', '1', '0', 'admin_packet', '0', '超级管理员 安装了数据包：微信地区数据包', '1', '1535098199');
INSERT INTO `dp_admin_log` VALUES ('8', '20', '1', '0', 'database', '0', '超级管理员 备份了数据库：dp_admin_access,dp_admin_action,dp_admin_attachment,dp_admin_config,dp_admin_hook,dp_admin_hook_plugin,dp_admin_icon,dp_admin_icon_list,dp_admin_log,dp_admin_menu,dp_admin_message,dp_admin_module,dp_admin_packet,dp_admin_plugin,dp_admin_role,dp_admin_user,dp_cms_advert,dp_cms_advert_type,dp_cms_column,dp_cms_document,dp_cms_field,dp_cms_link,dp_cms_menu,dp_cms_model,dp_cms_nav,dp_cms_page,dp_cms_slider,dp_cms_support,dp_packet_wechat_area,dp_plugin_hello', '1', '1535098226');
INSERT INTO `dp_admin_log` VALUES ('9', '42', '1', '0', 'admin_config', '0', '超级管理员 更新了系统设置：分组(base)', '1', '1535099563');

-- ----------------------------
-- Table structure for `dp_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_menu`;
CREATE TABLE `dp_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of dp_admin_menu
-- ----------------------------
INSERT INTO `dp_admin_menu` VALUES ('1', '0', 'admin', '首页', 'fa fa-fw fa-home', 'module_admin', 'admin/index/index', '_self', '0', '1467617722', '1477710540', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('2', '1', 'admin', '快捷操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', '0', '1467618170', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('3', '2', 'admin', '清空缓存', 'fa fa-fw fa-trash-o', 'module_admin', 'admin/index/wipecache', '_self', '0', '1467618273', '1489049773', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('4', '0', 'admin', '系统', 'fa fa-fw fa-gear', 'module_admin', 'admin/system/index', '_self', '0', '1467618361', '1477710540', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('5', '4', 'admin', '系统功能', 'si si-wrench', 'module_admin', '', '_self', '0', '1467618441', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('6', '5', 'admin', '系统设置', 'fa fa-fw fa-wrench', 'module_admin', 'admin/system/index', '_self', '0', '1467618490', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('7', '5', 'admin', '配置管理', 'fa fa-fw fa-gears', 'module_admin', 'admin/config/index', '_self', '0', '1467618618', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('8', '7', 'admin', '新增', '', 'module_admin', 'admin/config/add', '_self', '0', '1467618648', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('9', '7', 'admin', '编辑', '', 'module_admin', 'admin/config/edit', '_self', '0', '1467619566', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('10', '7', 'admin', '删除', '', 'module_admin', 'admin/config/delete', '_self', '0', '1467619583', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('11', '7', 'admin', '启用', '', 'module_admin', 'admin/config/enable', '_self', '0', '1467619609', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('12', '7', 'admin', '禁用', '', 'module_admin', 'admin/config/disable', '_self', '0', '1467619637', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('13', '5', 'admin', '节点管理', 'fa fa-fw fa-bars', 'module_admin', 'admin/menu/index', '_self', '0', '1467619882', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('14', '13', 'admin', '新增', '', 'module_admin', 'admin/menu/add', '_self', '0', '1467619902', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('15', '13', 'admin', '编辑', '', 'module_admin', 'admin/menu/edit', '_self', '0', '1467620331', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('16', '13', 'admin', '删除', '', 'module_admin', 'admin/menu/delete', '_self', '0', '1467620363', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('17', '13', 'admin', '启用', '', 'module_admin', 'admin/menu/enable', '_self', '0', '1467620386', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('18', '13', 'admin', '禁用', '', 'module_admin', 'admin/menu/disable', '_self', '0', '1467620404', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('19', '68', 'user', '权限管理', 'fa fa-fw fa-key', 'module_admin', '', '_self', '0', '1467688065', '1477710702', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('20', '19', 'user', '用户管理', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1467688137', '1477710702', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('21', '20', 'user', '新增', '', 'module_admin', 'user/index/add', '_self', '0', '1467688177', '1477710702', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('22', '20', 'user', '编辑', '', 'module_admin', 'user/index/edit', '_self', '0', '1467688202', '1477710702', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('23', '20', 'user', '删除', '', 'module_admin', 'user/index/delete', '_self', '0', '1467688219', '1477710702', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('24', '20', 'user', '启用', '', 'module_admin', 'user/index/enable', '_self', '0', '1467688238', '1477710702', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('25', '20', 'user', '禁用', '', 'module_admin', 'user/index/disable', '_self', '0', '1467688256', '1477710702', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('211', '64', 'admin', '日志详情', '', 'module_admin', 'admin/log/details', '_self', '0', '1480299320', '1480299320', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('32', '4', 'admin', '扩展中心', 'si si-social-dropbox', 'module_admin', '', '_self', '0', '1467688853', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('33', '32', 'admin', '模块管理', 'fa fa-fw fa-th-large', 'module_admin', 'admin/module/index', '_self', '0', '1467689008', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('34', '33', 'admin', '导入', '', 'module_admin', 'admin/module/import', '_self', '0', '1467689153', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('35', '33', 'admin', '导出', '', 'module_admin', 'admin/module/export', '_self', '0', '1467689173', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('36', '33', 'admin', '安装', '', 'module_admin', 'admin/module/install', '_self', '0', '1467689192', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('37', '33', 'admin', '卸载', '', 'module_admin', 'admin/module/uninstall', '_self', '0', '1467689241', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('38', '33', 'admin', '启用', '', 'module_admin', 'admin/module/enable', '_self', '0', '1467689294', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('39', '33', 'admin', '禁用', '', 'module_admin', 'admin/module/disable', '_self', '0', '1467689312', '1477710695', '6', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('40', '33', 'admin', '更新', '', 'module_admin', 'admin/module/update', '_self', '0', '1467689341', '1477710695', '7', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('41', '32', 'admin', '插件管理', 'fa fa-fw fa-puzzle-piece', 'module_admin', 'admin/plugin/index', '_self', '0', '1467689527', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('42', '41', 'admin', '导入', '', 'module_admin', 'admin/plugin/import', '_self', '0', '1467689650', '1477710695', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('43', '41', 'admin', '导出', '', 'module_admin', 'admin/plugin/export', '_self', '0', '1467689665', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('44', '41', 'admin', '安装', '', 'module_admin', 'admin/plugin/install', '_self', '0', '1467689680', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('45', '41', 'admin', '卸载', '', 'module_admin', 'admin/plugin/uninstall', '_self', '0', '1467689700', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('46', '41', 'admin', '启用', '', 'module_admin', 'admin/plugin/enable', '_self', '0', '1467689730', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('47', '41', 'admin', '禁用', '', 'module_admin', 'admin/plugin/disable', '_self', '0', '1467689747', '1477710695', '6', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('48', '41', 'admin', '设置', '', 'module_admin', 'admin/plugin/config', '_self', '0', '1467689789', '1477710695', '7', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('49', '41', 'admin', '管理', '', 'module_admin', 'admin/plugin/manage', '_self', '0', '1467689846', '1477710695', '8', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('50', '5', 'admin', '附件管理', 'fa fa-fw fa-cloud-upload', 'module_admin', 'admin/attachment/index', '_self', '0', '1467690161', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('51', '70', 'admin', '文件上传', '', 'module_admin', 'admin/attachment/upload', '_self', '0', '1467690240', '1489049773', '1', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('52', '50', 'admin', '下载', '', 'module_admin', 'admin/attachment/download', '_self', '0', '1467690334', '1477710695', '2', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('53', '50', 'admin', '启用', '', 'module_admin', 'admin/attachment/enable', '_self', '0', '1467690352', '1477710695', '3', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('54', '50', 'admin', '禁用', '', 'module_admin', 'admin/attachment/disable', '_self', '0', '1467690369', '1477710695', '4', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('55', '50', 'admin', '删除', '', 'module_admin', 'admin/attachment/delete', '_self', '0', '1467690396', '1477710695', '5', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('56', '41', 'admin', '删除', '', 'module_admin', 'admin/plugin/delete', '_self', '0', '1467858065', '1477710695', '11', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('57', '41', 'admin', '编辑', '', 'module_admin', 'admin/plugin/edit', '_self', '0', '1467858092', '1477710695', '10', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('60', '41', 'admin', '新增', '', 'module_admin', 'admin/plugin/add', '_self', '0', '1467858421', '1477710695', '9', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('61', '41', 'admin', '执行', '', 'module_admin', 'admin/plugin/execute', '_self', '0', '1467879016', '1477710695', '14', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('62', '13', 'admin', '保存', '', 'module_admin', 'admin/menu/save', '_self', '0', '1468073039', '1477710695', '6', '1', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('64', '5', 'admin', '系统日志', 'fa fa-fw fa-book', 'module_admin', 'admin/log/index', '_self', '0', '1476111944', '1477710695', '6', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('65', '5', 'admin', '数据库管理', 'fa fa-fw fa-database', 'module_admin', 'admin/database/index', '_self', '0', '1476111992', '1477710695', '8', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('66', '32', 'admin', '数据包管理', 'fa fa-fw fa-database', 'module_admin', 'admin/packet/index', '_self', '0', '1476112326', '1477710695', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('67', '19', 'user', '角色管理', 'fa fa-fw fa-users', 'module_admin', 'user/role/index', '_self', '0', '1476113025', '1477710702', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('68', '0', 'user', '用户', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1476193348', '1477710540', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('69', '32', 'admin', '钩子管理', 'fa fa-fw fa-anchor', 'module_admin', 'admin/hook/index', '_self', '0', '1476236193', '1477710695', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('70', '2', 'admin', '后台首页', 'fa fa-fw fa-tachometer', 'module_admin', 'admin/index/index', '_self', '0', '1476237472', '1489049773', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('71', '67', 'user', '新增', '', 'module_admin', 'user/role/add', '_self', '0', '1476256935', '1477710702', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('72', '67', 'user', '编辑', '', 'module_admin', 'user/role/edit', '_self', '0', '1476256968', '1477710702', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('73', '67', 'user', '删除', '', 'module_admin', 'user/role/delete', '_self', '0', '1476256993', '1477710702', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('74', '67', 'user', '启用', '', 'module_admin', 'user/role/enable', '_self', '0', '1476257023', '1477710702', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('75', '67', 'user', '禁用', '', 'module_admin', 'user/role/disable', '_self', '0', '1476257046', '1477710702', '5', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('76', '20', 'user', '授权', '', 'module_admin', 'user/index/access', '_self', '0', '1476375187', '1477710702', '6', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('77', '69', 'admin', '新增', '', 'module_admin', 'admin/hook/add', '_self', '0', '1476668971', '1477710695', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('78', '69', 'admin', '编辑', '', 'module_admin', 'admin/hook/edit', '_self', '0', '1476669006', '1477710695', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('79', '69', 'admin', '删除', '', 'module_admin', 'admin/hook/delete', '_self', '0', '1476669375', '1477710695', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('80', '69', 'admin', '启用', '', 'module_admin', 'admin/hook/enable', '_self', '0', '1476669427', '1477710695', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('81', '69', 'admin', '禁用', '', 'module_admin', 'admin/hook/disable', '_self', '0', '1476669564', '1477710695', '5', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('183', '66', 'admin', '安装', '', 'module_admin', 'admin/packet/install', '_self', '0', '1476851362', '1477710695', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('184', '66', 'admin', '卸载', '', 'module_admin', 'admin/packet/uninstall', '_self', '0', '1476851382', '1477710695', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('185', '5', 'admin', '行为管理', 'fa fa-fw fa-bug', 'module_admin', 'admin/action/index', '_self', '0', '1476882441', '1477710695', '7', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('186', '185', 'admin', '新增', '', 'module_admin', 'admin/action/add', '_self', '0', '1476884439', '1477710695', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('187', '185', 'admin', '编辑', '', 'module_admin', 'admin/action/edit', '_self', '0', '1476884464', '1477710695', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('188', '185', 'admin', '启用', '', 'module_admin', 'admin/action/enable', '_self', '0', '1476884493', '1477710695', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('189', '185', 'admin', '禁用', '', 'module_admin', 'admin/action/disable', '_self', '0', '1476884534', '1477710695', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('190', '185', 'admin', '删除', '', 'module_admin', 'admin/action/delete', '_self', '0', '1476884551', '1477710695', '5', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('191', '65', 'admin', '备份数据库', '', 'module_admin', 'admin/database/export', '_self', '0', '1476972746', '1477710695', '1', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('192', '65', 'admin', '还原数据库', '', 'module_admin', 'admin/database/import', '_self', '0', '1476972772', '1477710695', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('193', '65', 'admin', '优化表', '', 'module_admin', 'admin/database/optimize', '_self', '0', '1476972800', '1477710695', '3', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('194', '65', 'admin', '修复表', '', 'module_admin', 'admin/database/repair', '_self', '0', '1476972825', '1477710695', '4', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('195', '65', 'admin', '删除备份', '', 'module_admin', 'admin/database/delete', '_self', '0', '1476973457', '1477710695', '5', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('210', '41', 'admin', '快速编辑', '', 'module_admin', 'admin/plugin/quickedit', '_self', '0', '1477713981', '1477713981', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('209', '185', 'admin', '快速编辑', '', 'module_admin', 'admin/action/quickedit', '_self', '0', '1477713939', '1477713939', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('208', '7', 'admin', '快速编辑', '', 'module_admin', 'admin/config/quickedit', '_self', '0', '1477713808', '1477713808', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('207', '69', 'admin', '快速编辑', '', 'module_admin', 'admin/hook/quickedit', '_self', '0', '1477713770', '1477713770', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('212', '2', 'admin', '个人设置', 'fa fa-fw fa-user', 'module_admin', 'admin/index/profile', '_self', '0', '1489049767', '1489049773', '2', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('213', '70', 'admin', '检查版本更新', '', 'module_admin', 'admin/index/checkupdate', '_self', '0', '1490588610', '1490588610', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('214', '68', 'user', '消息管理', 'fa fa-fw fa-comments-o', 'module_admin', '', '_self', '0', '1520492129', '1520492129', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('215', '214', 'user', '消息列表', 'fa fa-fw fa-th-list', 'module_admin', 'user/message/index', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('216', '215', 'user', '新增', '', 'module_admin', 'user/message/add', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('217', '215', 'user', '编辑', '', 'module_admin', 'user/message/edit', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('218', '215', 'user', '删除', '', 'module_admin', 'user/message/delete', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('219', '215', 'user', '启用', '', 'module_admin', 'user/message/enable', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('220', '215', 'user', '禁用', '', 'module_admin', 'user/message/disable', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('221', '215', 'user', '快速编辑', '', 'module_admin', 'user/message/quickedit', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('222', '2', 'admin', '消息中心', 'fa fa-fw fa-comments-o', 'module_admin', 'admin/message/index', '_self', '0', '1520495992', '1520496254', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('223', '222', 'admin', '删除', '', 'module_admin', 'admin/message/delete', '_self', '0', '1520495992', '1520496263', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('224', '222', 'admin', '启用', '', 'module_admin', 'admin/message/enable', '_self', '0', '1520495992', '1520496270', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('225', '32', 'admin', '图标管理', 'fa fa-fw fa-tint', 'module_admin', 'admin/icon/index', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('226', '225', 'admin', '新增', '', 'module_admin', 'admin/icon/add', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('227', '225', 'admin', '编辑', '', 'module_admin', 'admin/icon/edit', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('228', '225', 'admin', '删除', '', 'module_admin', 'admin/icon/delete', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('229', '225', 'admin', '启用', '', 'module_admin', 'admin/icon/enable', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('230', '225', 'admin', '禁用', '', 'module_admin', 'admin/icon/disable', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('231', '225', 'admin', '快速编辑', '', 'module_admin', 'admin/icon/quickedit', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('232', '225', 'admin', '图标列表', '', 'module_admin', 'admin/icon/items', '_self', '0', '1520923368', '1520923368', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('233', '225', 'admin', '更新图标', '', 'module_admin', 'admin/icon/reload', '_self', '0', '1520931908', '1520931908', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('234', '20', 'user', '快速编辑', '', 'module_admin', 'user/index/quickedit', '_self', '0', '1526028258', '1526028258', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('235', '67', 'user', '快速编辑', '', 'module_admin', 'user/role/quickedit', '_self', '0', '1526028282', '1526028282', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('236', '0', 'cms', '门户', 'fa fa-fw fa-newspaper-o', 'module_admin', 'cms/index/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('237', '236', 'cms', '常用操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('238', '237', 'cms', '仪表盘', 'fa fa-fw fa-tachometer', 'module_admin', 'cms/index/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('239', '237', 'cms', '发布文档', 'fa fa-fw fa-plus', 'module_admin', 'cms/document/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('240', '237', 'cms', '文档列表', 'fa fa-fw fa-list', 'module_admin', 'cms/document/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('241', '240', 'cms', '编辑', '', 'module_admin', 'cms/document/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('242', '240', 'cms', '删除', '', 'module_admin', 'cms/document/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('243', '240', 'cms', '启用', '', 'module_admin', 'cms/document/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('244', '240', 'cms', '禁用', '', 'module_admin', 'cms/document/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('245', '240', 'cms', '快速编辑', '', 'module_admin', 'cms/document/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('246', '237', 'cms', '单页管理', 'fa fa-fw fa-file-word-o', 'module_admin', 'cms/page/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('247', '246', 'cms', '新增', '', 'module_admin', 'cms/page/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('248', '246', 'cms', '编辑', '', 'module_admin', 'cms/page/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('249', '246', 'cms', '删除', '', 'module_admin', 'cms/page/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('250', '246', 'cms', '启用', '', 'module_admin', 'cms/page/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('251', '246', 'cms', '禁用', '', 'module_admin', 'cms/page/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('252', '246', 'cms', '快速编辑', '', 'module_admin', 'cms/page/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('253', '237', 'cms', '回收站', 'fa fa-fw fa-recycle', 'module_admin', 'cms/recycle/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('254', '253', 'cms', '删除', '', 'module_admin', 'cms/recycle/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('255', '253', 'cms', '还原', '', 'module_admin', 'cms/recycle/restore', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('256', '236', 'cms', '内容管理', 'fa fa-fw fa-th-list', 'module_admin', '', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('257', '236', 'cms', '营销管理', 'fa fa-fw fa-money', 'module_admin', '', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('258', '257', 'cms', '广告管理', 'fa fa-fw fa-handshake-o', 'module_admin', 'cms/advert/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('259', '258', 'cms', '新增', '', 'module_admin', 'cms/advert/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('260', '258', 'cms', '编辑', '', 'module_admin', 'cms/advert/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('261', '258', 'cms', '删除', '', 'module_admin', 'cms/advert/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('262', '258', 'cms', '启用', '', 'module_admin', 'cms/advert/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('263', '258', 'cms', '禁用', '', 'module_admin', 'cms/advert/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('264', '258', 'cms', '快速编辑', '', 'module_admin', 'cms/advert/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('265', '258', 'cms', '广告分类', '', 'module_admin', 'cms/advert_type/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('266', '265', 'cms', '新增', '', 'module_admin', 'cms/advert_type/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('267', '265', 'cms', '编辑', '', 'module_admin', 'cms/advert_type/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('268', '265', 'cms', '删除', '', 'module_admin', 'cms/advert_type/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('269', '265', 'cms', '启用', '', 'module_admin', 'cms/advert_type/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('270', '265', 'cms', '禁用', '', 'module_admin', 'cms/advert_type/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('271', '265', 'cms', '快速编辑', '', 'module_admin', 'cms/advert_type/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('272', '257', 'cms', '滚动图片', 'fa fa-fw fa-photo', 'module_admin', 'cms/slider/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('273', '272', 'cms', '新增', '', 'module_admin', 'cms/slider/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('274', '272', 'cms', '编辑', '', 'module_admin', 'cms/slider/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('275', '272', 'cms', '删除', '', 'module_admin', 'cms/slider/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('276', '272', 'cms', '启用', '', 'module_admin', 'cms/slider/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('277', '272', 'cms', '禁用', '', 'module_admin', 'cms/slider/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('278', '272', 'cms', '快速编辑', '', 'module_admin', 'cms/slider/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('279', '257', 'cms', '友情链接', 'fa fa-fw fa-link', 'module_admin', 'cms/link/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('280', '279', 'cms', '新增', '', 'module_admin', 'cms/link/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('281', '279', 'cms', '编辑', '', 'module_admin', 'cms/link/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('282', '279', 'cms', '删除', '', 'module_admin', 'cms/link/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('283', '279', 'cms', '启用', '', 'module_admin', 'cms/link/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('284', '279', 'cms', '禁用', '', 'module_admin', 'cms/link/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('285', '279', 'cms', '快速编辑', '', 'module_admin', 'cms/link/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('286', '257', 'cms', '客服管理', 'fa fa-fw fa-commenting', 'module_admin', 'cms/support/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('287', '286', 'cms', '新增', '', 'module_admin', 'cms/support/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('288', '286', 'cms', '编辑', '', 'module_admin', 'cms/support/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('289', '286', 'cms', '删除', '', 'module_admin', 'cms/support/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('290', '286', 'cms', '启用', '', 'module_admin', 'cms/support/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('291', '286', 'cms', '禁用', '', 'module_admin', 'cms/support/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('292', '286', 'cms', '快速编辑', '', 'module_admin', 'cms/support/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('293', '236', 'cms', '门户设置', 'fa fa-fw fa-sliders', 'module_admin', '', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('294', '293', 'cms', '栏目分类', 'fa fa-fw fa-sitemap', 'module_admin', 'cms/column/index', '_self', '1', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('295', '294', 'cms', '新增', '', 'module_admin', 'cms/column/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('296', '294', 'cms', '编辑', '', 'module_admin', 'cms/column/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('297', '294', 'cms', '删除', '', 'module_admin', 'cms/column/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('298', '294', 'cms', '启用', '', 'module_admin', 'cms/column/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('299', '294', 'cms', '禁用', '', 'module_admin', 'cms/column/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('300', '294', 'cms', '快速编辑', '', 'module_admin', 'cms/column/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('301', '293', 'cms', '内容模型', 'fa fa-fw fa-th-large', 'module_admin', 'cms/model/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('302', '301', 'cms', '新增', '', 'module_admin', 'cms/model/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('303', '301', 'cms', '编辑', '', 'module_admin', 'cms/model/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('304', '301', 'cms', '删除', '', 'module_admin', 'cms/model/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('305', '301', 'cms', '启用', '', 'module_admin', 'cms/model/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('306', '301', 'cms', '禁用', '', 'module_admin', 'cms/model/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('307', '301', 'cms', '快速编辑', '', 'module_admin', 'cms/model/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('308', '301', 'cms', '字段管理', '', 'module_admin', 'cms/field/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('309', '308', 'cms', '新增', '', 'module_admin', 'cms/field/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('310', '308', 'cms', '编辑', '', 'module_admin', 'cms/field/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('311', '308', 'cms', '删除', '', 'module_admin', 'cms/field/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('312', '308', 'cms', '启用', '', 'module_admin', 'cms/field/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('313', '308', 'cms', '禁用', '', 'module_admin', 'cms/field/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('314', '308', 'cms', '快速编辑', '', 'module_admin', 'cms/field/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('315', '293', 'cms', '导航管理', 'fa fa-fw fa-map-signs', 'module_admin', 'cms/nav/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('316', '315', 'cms', '新增', '', 'module_admin', 'cms/nav/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('317', '315', 'cms', '编辑', '', 'module_admin', 'cms/nav/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('318', '315', 'cms', '删除', '', 'module_admin', 'cms/nav/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('319', '315', 'cms', '启用', '', 'module_admin', 'cms/nav/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('320', '315', 'cms', '禁用', '', 'module_admin', 'cms/nav/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('321', '315', 'cms', '快速编辑', '', 'module_admin', 'cms/nav/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('322', '315', 'cms', '菜单管理', '', 'module_admin', 'cms/menu/index', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('323', '322', 'cms', '新增', '', 'module_admin', 'cms/menu/add', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('324', '322', 'cms', '编辑', '', 'module_admin', 'cms/menu/edit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('325', '322', 'cms', '删除', '', 'module_admin', 'cms/menu/delete', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('326', '322', 'cms', '启用', '', 'module_admin', 'cms/menu/enable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('327', '322', 'cms', '禁用', '', 'module_admin', 'cms/menu/disable', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');
INSERT INTO `dp_admin_menu` VALUES ('328', '322', 'cms', '快速编辑', '', 'module_admin', 'cms/menu/quickedit', '_self', '0', '1533109495', '1533109495', '100', '0', '1', '');

-- ----------------------------
-- Table structure for `dp_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_message`;
CREATE TABLE `dp_admin_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid_receive` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '接收消息的用户id',
  `uid_send` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送消息的用户id',
  `type` varchar(128) NOT NULL DEFAULT '' COMMENT '消息分类',
  `content` text NOT NULL COMMENT '消息内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of dp_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_admin_module`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_module`;
CREATE TABLE `dp_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名称（标识）',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模块标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text COMMENT '配置信息',
  `access` text COMMENT '授权配置',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '模块唯一标识符',
  `system_module` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统模块',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of dp_admin_module
-- ----------------------------
INSERT INTO `dp_admin_module` VALUES ('1', 'admin', '系统', 'fa fa-fw fa-gear', '系统模块，DolphinPHP的核心模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'admin.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `dp_admin_module` VALUES ('2', 'user', '用户', 'fa fa-fw fa-user', '用户模块，DolphinPHP自带模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'user.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `dp_admin_module` VALUES ('3', 'cms', '门户', 'fa fa-fw fa-newspaper-o', '门户模块', 'CaiWeiMing', 'http://www.dolphinphp.com', '{\"summary\":0,\"contact\":\"<div class=\\\"font-s13 push\\\"><strong>\\u6cb3\\u6e90\\u5e02\\u5353\\u9510\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8<\\/strong><br \\/>\\n\\u5730\\u5740\\uff1a\\u6cb3\\u6e90\\u5e02\\u6c5f\\u4e1c\\u65b0\\u533a\\u4e1c\\u73af\\u8def\\u6c47\\u901a\\u82d1D3-H232<br \\/>\\n\\u7535\\u8bdd\\uff1a0762-8910006<br \\/>\\n\\u90ae\\u7bb1\\uff1aadmin@zrthink.com<\\/div>\",\"meta_head\":\"\",\"meta_foot\":\"\",\"support_status\":1,\"support_color\":\"rgba(0,158,232,1)\",\"support_wx\":\"\",\"support_extra\":\"\"}', '{\"group\":{\"tab_title\":\"\\u680f\\u76ee\\u6388\\u6743\",\"table_name\":\"cms_column\",\"primary_key\":\"id\",\"parent_id\":\"pid\",\"node_name\":\"name\"}}', '1.0.0', 'cms.ming.module', '0', '1533109495', '1533109505', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_packet`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_packet`;
CREATE TABLE `dp_admin_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包名',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者url',
  `version` varchar(16) NOT NULL,
  `tables` text NOT NULL COMMENT '数据表名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='数据包表';

-- ----------------------------
-- Records of dp_admin_packet
-- ----------------------------
INSERT INTO `dp_admin_packet` VALUES ('1', 'wechat_area', '微信地区数据包', 'CaiWeiMing', '', '1.0.0', '[\"packet_wechat_area\"]', '1533109441', '1533109441', '1');

-- ----------------------------
-- Table structure for `dp_admin_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_plugin`;
CREATE TABLE `dp_admin_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of dp_admin_plugin
-- ----------------------------
INSERT INTO `dp_admin_plugin` VALUES ('1', 'SystemInfo', '系统环境信息', 'fa fa-fw fa-info-circle', '在后台首页显示服务器信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'system_info.ming.plugin', '0', '1477757503', '1477757503', '100', '1');
INSERT INTO `dp_admin_plugin` VALUES ('2', 'DevTeam', '开发团队成员信息', 'fa fa-fw fa-users', '开发团队成员信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'dev_team.ming.plugin', '0', '1477755780', '1477755780', '100', '1');

-- ----------------------------
-- Table structure for `dp_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_role`;
CREATE TABLE `dp_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级角色',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否可登录后台',
  `default_module` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '默认访问模块',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of dp_admin_role
-- ----------------------------
INSERT INTO `dp_admin_role` VALUES ('1', '0', '超级管理员', '系统默认创建的角色，拥有最高权限', '', '0', '1476270000', '1468117612', '1', '1', '0');

-- ----------------------------
-- Table structure for `dp_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `dp_admin_user`;
CREATE TABLE `dp_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of dp_admin_user
-- ----------------------------
INSERT INTO `dp_admin_user` VALUES ('1', 'admin', '超级管理员', '$2y$10$Brw6wmuSLIIx3Yabid8/Wu5l8VQ9M/H/CG3C9RqN9dUCwZW3ljGOK', '', '0', '', '0', '0', '0.00', '0', '1', '0', '0', '1476065410', '1534298869', '1534298869', '0', '100', '1');

-- ----------------------------
-- Table structure for `dp_cms_advert`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_advert`;
CREATE TABLE `dp_cms_advert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `tagname` varchar(30) NOT NULL DEFAULT '' COMMENT '广告位标识',
  `ad_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '广告类型',
  `timeset` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '时间限制:0-永不过期,1-在设内时间内有效',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `content` text NOT NULL COMMENT '广告内容',
  `expcontent` text NOT NULL COMMENT '过期显示内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of dp_cms_advert
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cms_advert_type`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_advert_type`;
CREATE TABLE `dp_cms_advert_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告分类表';

-- ----------------------------
-- Records of dp_cms_advert_type
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cms_column`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_column`;
CREATE TABLE `dp_cms_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型id',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `content` text NOT NULL COMMENT '内容',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '字体图标',
  `index_template` varchar(32) NOT NULL DEFAULT '' COMMENT '封面模板',
  `list_template` varchar(32) NOT NULL DEFAULT '' COMMENT '列表页模板',
  `detail_template` varchar(32) NOT NULL DEFAULT '' COMMENT '详情页模板',
  `post_auth` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '投稿权限',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `hide` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `rank_auth` int(11) NOT NULL DEFAULT '0' COMMENT '浏览权限，-1待审核，0为开放浏览，大于0则为对应的用户角色id',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '栏目属性：0-最终列表栏目，1-外部链接，2-频道封面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of dp_cms_column
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cms_document`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_document`;
CREATE TABLE `dp_cms_document` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型ID',
  `title` varchar(256) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(32) NOT NULL DEFAULT '' COMMENT '简略标题',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `flag` set('j','p','b','s','a','f','c','h') DEFAULT NULL COMMENT '自定义属性',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `comment` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `mark` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `trash` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '回收站',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档基础表';

-- ----------------------------
-- Records of dp_cms_document
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cms_field`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_field`;
CREATE TABLE `dp_cms_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '字段名称',
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '字段标题',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '字段类型',
  `define` varchar(128) NOT NULL DEFAULT '' COMMENT '字段定义',
  `value` text COMMENT '默认值',
  `options` text COMMENT '额外选项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '提示说明',
  `fixed` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否为固定字段',
  `show` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属文档模型id',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='文档字段表';

-- ----------------------------
-- Records of dp_cms_field
-- ----------------------------
INSERT INTO `dp_cms_field` VALUES ('1', 'id', 'ID', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', 'ID', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480562978', '1480562978', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('2', 'cid', '栏目', 'select', 'int(11) UNSIGNED NOT NULL', '0', '', '请选择所属栏目', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480562978', '1480562978', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('3', 'uid', '用户ID', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563110', '1480563110', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('4', 'model', '模型ID', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563110', '1480563110', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('5', 'title', '标题', 'text', 'varchar(128) NOT NULL', '', '', '文档标题', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480575844', '1480576134', '1', '1');
INSERT INTO `dp_cms_field` VALUES ('6', 'shorttitle', '简略标题', 'text', 'varchar(32) NOT NULL', '', '', '简略标题', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480575844', '1480576134', '1', '1');
INSERT INTO `dp_cms_field` VALUES ('7', 'flag', '自定义属性', 'checkbox', 'set(\'j\',\'p\',\'b\',\'s\',\'a\',\'f\',\'h\',\'c\') NULL DEFAULT NULL', '', 'j:跳转\r\np:图片\r\nb:加粗\r\ns:滚动\r\na:特荐\r\nf:幻灯\r\nh:头条\r\nc:推荐', '自定义属性', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480671258', '1480671258', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('8', 'view', '阅读量', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480563149', '1480563149', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('9', 'comment', '评论数', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563189', '1480563189', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('10', 'good', '点赞数', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563279', '1480563279', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('11', 'bad', '踩数', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563330', '1480563330', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('12', 'mark', '收藏数量', 'text', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563372', '1480563372', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('13', 'create_time', '创建时间', 'datetime', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563406', '1480563406', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('14', 'update_time', '更新时间', 'datetime', 'int(11) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563432', '1480563432', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('15', 'sort', '排序', 'text', 'int(11) NOT NULL', '100', '', '', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480563510', '1480563510', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('16', 'status', '状态', 'radio', 'tinyint(2) UNSIGNED NOT NULL', '1', '0:禁用\r\n1:启用', '', '0', '1', '0', '', '', '', '', '', '0', '', '', '', '', '1480563576', '1480563576', '100', '1');
INSERT INTO `dp_cms_field` VALUES ('17', 'trash', '回收站', 'text', 'tinyint(2) UNSIGNED NOT NULL', '0', '', '', '0', '0', '0', '', '', '', '', '', '0', '', '', '', '', '1480563576', '1480563576', '100', '1');

-- ----------------------------
-- Table structure for `dp_cms_link`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_link`;
CREATE TABLE `dp_cms_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '类型：1-文字链接，2-图片链接',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '链接标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `logo` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '链接LOGO',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式',
  `sort` int(11) NOT NULL DEFAULT '100',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='有钱链接表';

-- ----------------------------
-- Records of dp_cms_link
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cms_menu`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_menu`;
CREATE TABLE `dp_cms_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '导航id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `column` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `page` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单页id',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '类型：0-栏目链接，1-单页链接，2-自定义链接',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `css` varchar(64) NOT NULL DEFAULT '' COMMENT 'css类',
  `rel` varchar(64) NOT NULL DEFAULT '' COMMENT '链接关系网',
  `target` varchar(16) NOT NULL DEFAULT '' COMMENT '打开方式',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of dp_cms_menu
-- ----------------------------
INSERT INTO `dp_cms_menu` VALUES ('1', '1', '0', '0', '0', '2', '首页', 'cms/index/index', '', '', '_self', '1492345605', '1492345605', '100', '1');
INSERT INTO `dp_cms_menu` VALUES ('2', '2', '0', '0', '0', '2', '关于我们', 'http://www.dolphinphp.com', '', '', '_self', '1492346763', '1492346763', '100', '1');
INSERT INTO `dp_cms_menu` VALUES ('3', '3', '0', '0', '0', '2', '开发文档', 'http://www.kancloud.cn/ming5112/dolphinphp', '', '', '_self', '1492346812', '1492346812', '100', '1');
INSERT INTO `dp_cms_menu` VALUES ('4', '3', '0', '0', '0', '2', '开发者社区', 'http://bbs.dolphinphp.com/', '', '', '_self', '1492346832', '1492346832', '100', '1');
INSERT INTO `dp_cms_menu` VALUES ('5', '1', '0', '0', '0', '2', '二级菜单', 'http://www.dolphinphp.com', '', '', '_self', '1492347372', '1492347510', '100', '1');
INSERT INTO `dp_cms_menu` VALUES ('6', '1', '5', '0', '0', '2', '子菜单', 'http://www.dolphinphp.com', '', '', '_self', '1492347388', '1492347520', '100', '1');

-- ----------------------------
-- Table structure for `dp_cms_model`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_model`;
CREATE TABLE `dp_cms_model` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模型名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模型标题',
  `table` varchar(64) NOT NULL DEFAULT '' COMMENT '附加表名称',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '模型类别：0-系统模型，1-普通模型，2-独立模型',
  `icon` varchar(64) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容模型表';

-- ----------------------------
-- Records of dp_cms_model
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cms_nav`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_nav`;
CREATE TABLE `dp_cms_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(32) NOT NULL DEFAULT '' COMMENT '导航标识',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='导航表';

-- ----------------------------
-- Records of dp_cms_nav
-- ----------------------------
INSERT INTO `dp_cms_nav` VALUES ('1', 'main_nav', '顶部导航', '1492345083', '1492345083', '1');
INSERT INTO `dp_cms_nav` VALUES ('2', 'about_nav', '底部关于', '1492346685', '1492346685', '1');
INSERT INTO `dp_cms_nav` VALUES ('3', 'support_nav', '服务与支持', '1492346715', '1492346715', '1');

-- ----------------------------
-- Table structure for `dp_cms_page`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_page`;
CREATE TABLE `dp_cms_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '单页标题',
  `content` mediumtext NOT NULL COMMENT '单页内容',
  `keywords` varchar(32) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(250) NOT NULL DEFAULT '' COMMENT '页面描述',
  `template` varchar(32) NOT NULL DEFAULT '' COMMENT '模板文件',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单页封面',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of dp_cms_page
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cms_slider`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_slider`;
CREATE TABLE `dp_cms_slider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面id',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='滚动图片表';

-- ----------------------------
-- Records of dp_cms_slider
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_cms_support`
-- ----------------------------
DROP TABLE IF EXISTS `dp_cms_support`;
CREATE TABLE `dp_cms_support` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '客服名称',
  `qq` varchar(16) NOT NULL DEFAULT '' COMMENT 'QQ',
  `msn` varchar(100) NOT NULL DEFAULT '' COMMENT 'msn',
  `taobao` varchar(100) NOT NULL DEFAULT '' COMMENT 'taobao',
  `alibaba` varchar(100) NOT NULL DEFAULT '' COMMENT 'alibaba',
  `skype` varchar(100) NOT NULL DEFAULT '' COMMENT 'skype',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服表';

-- ----------------------------
-- Records of dp_cms_support
-- ----------------------------

-- ----------------------------
-- Table structure for `dp_packet_wechat_area`
-- ----------------------------
DROP TABLE IF EXISTS `dp_packet_wechat_area`;
CREATE TABLE `dp_packet_wechat_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(32) NOT NULL DEFAULT '' COMMENT '国家名称',
  `province` varchar(32) NOT NULL DEFAULT '' COMMENT '省份名称',
  `city` varchar(32) NOT NULL DEFAULT '' COMMENT '城市名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=482 DEFAULT CHARSET=utf8 COMMENT='地区信息表';

-- ----------------------------
-- Records of dp_packet_wechat_area
-- ----------------------------
INSERT INTO `dp_packet_wechat_area` VALUES ('1', '中国', '四川', '凉山');
INSERT INTO `dp_packet_wechat_area` VALUES ('2', '中国', '四川', '资阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('3', '中国', '四川', '成都');
INSERT INTO `dp_packet_wechat_area` VALUES ('4', '中国', '四川', '自贡');
INSERT INTO `dp_packet_wechat_area` VALUES ('5', '中国', '四川', '泸州');
INSERT INTO `dp_packet_wechat_area` VALUES ('6', '中国', '四川', '攀枝花');
INSERT INTO `dp_packet_wechat_area` VALUES ('7', '中国', '四川', '绵阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('8', '中国', '四川', '德阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('9', '中国', '四川', '遂宁');
INSERT INTO `dp_packet_wechat_area` VALUES ('10', '中国', '四川', '广元');
INSERT INTO `dp_packet_wechat_area` VALUES ('11', '中国', '四川', '乐山');
INSERT INTO `dp_packet_wechat_area` VALUES ('12', '中国', '四川', '内江');
INSERT INTO `dp_packet_wechat_area` VALUES ('13', '中国', '四川', '南充');
INSERT INTO `dp_packet_wechat_area` VALUES ('14', '中国', '四川', '宜宾');
INSERT INTO `dp_packet_wechat_area` VALUES ('15', '中国', '四川', '眉山');
INSERT INTO `dp_packet_wechat_area` VALUES ('16', '中国', '四川', '达州');
INSERT INTO `dp_packet_wechat_area` VALUES ('17', '中国', '四川', '广安');
INSERT INTO `dp_packet_wechat_area` VALUES ('18', '中国', '四川', '巴中');
INSERT INTO `dp_packet_wechat_area` VALUES ('19', '中国', '四川', '雅安');
INSERT INTO `dp_packet_wechat_area` VALUES ('20', '中国', '四川', '甘孜');
INSERT INTO `dp_packet_wechat_area` VALUES ('21', '中国', '四川', '阿坝');
INSERT INTO `dp_packet_wechat_area` VALUES ('22', '中国', '重庆', '酉阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('23', '中国', '重庆', '彭水');
INSERT INTO `dp_packet_wechat_area` VALUES ('24', '中国', '重庆', '合川');
INSERT INTO `dp_packet_wechat_area` VALUES ('25', '中国', '重庆', '永川');
INSERT INTO `dp_packet_wechat_area` VALUES ('26', '中国', '重庆', '江津');
INSERT INTO `dp_packet_wechat_area` VALUES ('27', '中国', '重庆', '南川');
INSERT INTO `dp_packet_wechat_area` VALUES ('28', '中国', '重庆', '铜梁');
INSERT INTO `dp_packet_wechat_area` VALUES ('29', '中国', '重庆', '大足');
INSERT INTO `dp_packet_wechat_area` VALUES ('30', '中国', '重庆', '荣昌');
INSERT INTO `dp_packet_wechat_area` VALUES ('31', '中国', '重庆', '璧山');
INSERT INTO `dp_packet_wechat_area` VALUES ('32', '中国', '重庆', '长寿');
INSERT INTO `dp_packet_wechat_area` VALUES ('33', '中国', '重庆', '綦江');
INSERT INTO `dp_packet_wechat_area` VALUES ('34', '中国', '重庆', '潼南');
INSERT INTO `dp_packet_wechat_area` VALUES ('35', '中国', '重庆', '梁平');
INSERT INTO `dp_packet_wechat_area` VALUES ('36', '中国', '重庆', '城口');
INSERT INTO `dp_packet_wechat_area` VALUES ('37', '中国', '重庆', '石柱');
INSERT INTO `dp_packet_wechat_area` VALUES ('38', '中国', '重庆', '秀山');
INSERT INTO `dp_packet_wechat_area` VALUES ('39', '中国', '重庆', '万州');
INSERT INTO `dp_packet_wechat_area` VALUES ('40', '中国', '重庆', '渝中');
INSERT INTO `dp_packet_wechat_area` VALUES ('41', '中国', '重庆', '涪陵');
INSERT INTO `dp_packet_wechat_area` VALUES ('42', '中国', '重庆', '江北');
INSERT INTO `dp_packet_wechat_area` VALUES ('43', '中国', '重庆', '大渡口');
INSERT INTO `dp_packet_wechat_area` VALUES ('44', '中国', '重庆', '九龙坡');
INSERT INTO `dp_packet_wechat_area` VALUES ('45', '中国', '重庆', '沙坪坝');
INSERT INTO `dp_packet_wechat_area` VALUES ('46', '中国', '重庆', '北碚');
INSERT INTO `dp_packet_wechat_area` VALUES ('47', '中国', '重庆', '南岸');
INSERT INTO `dp_packet_wechat_area` VALUES ('48', '中国', '重庆', '黔江');
INSERT INTO `dp_packet_wechat_area` VALUES ('49', '中国', '重庆', '巫溪');
INSERT INTO `dp_packet_wechat_area` VALUES ('50', '中国', '重庆', '双桥');
INSERT INTO `dp_packet_wechat_area` VALUES ('51', '中国', '重庆', '万盛');
INSERT INTO `dp_packet_wechat_area` VALUES ('52', '中国', '重庆', '巴南');
INSERT INTO `dp_packet_wechat_area` VALUES ('53', '中国', '重庆', '渝北');
INSERT INTO `dp_packet_wechat_area` VALUES ('54', '中国', '重庆', '忠县');
INSERT INTO `dp_packet_wechat_area` VALUES ('55', '中国', '重庆', '武隆');
INSERT INTO `dp_packet_wechat_area` VALUES ('56', '中国', '重庆', '垫江');
INSERT INTO `dp_packet_wechat_area` VALUES ('57', '中国', '重庆', '丰都');
INSERT INTO `dp_packet_wechat_area` VALUES ('58', '中国', '重庆', '巫山');
INSERT INTO `dp_packet_wechat_area` VALUES ('59', '中国', '重庆', '奉节');
INSERT INTO `dp_packet_wechat_area` VALUES ('60', '中国', '重庆', '云阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('61', '中国', '重庆', '开县');
INSERT INTO `dp_packet_wechat_area` VALUES ('62', '中国', '陕西', '商洛');
INSERT INTO `dp_packet_wechat_area` VALUES ('63', '中国', '陕西', '西安');
INSERT INTO `dp_packet_wechat_area` VALUES ('64', '中国', '陕西', '宝鸡');
INSERT INTO `dp_packet_wechat_area` VALUES ('65', '中国', '陕西', '铜川');
INSERT INTO `dp_packet_wechat_area` VALUES ('66', '中国', '陕西', '渭南');
INSERT INTO `dp_packet_wechat_area` VALUES ('67', '中国', '陕西', '咸阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('68', '中国', '陕西', '汉中');
INSERT INTO `dp_packet_wechat_area` VALUES ('69', '中国', '陕西', '延安');
INSERT INTO `dp_packet_wechat_area` VALUES ('70', '中国', '陕西', '安康');
INSERT INTO `dp_packet_wechat_area` VALUES ('71', '中国', '陕西', '榆林');
INSERT INTO `dp_packet_wechat_area` VALUES ('72', '中国', '甘肃', '定西');
INSERT INTO `dp_packet_wechat_area` VALUES ('73', '中国', '甘肃', '庆阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('74', '中国', '甘肃', '陇南');
INSERT INTO `dp_packet_wechat_area` VALUES ('75', '中国', '甘肃', '甘南');
INSERT INTO `dp_packet_wechat_area` VALUES ('76', '中国', '甘肃', '临夏');
INSERT INTO `dp_packet_wechat_area` VALUES ('77', '中国', '甘肃', '兰州');
INSERT INTO `dp_packet_wechat_area` VALUES ('78', '中国', '甘肃', '金昌');
INSERT INTO `dp_packet_wechat_area` VALUES ('79', '中国', '甘肃', '嘉峪关');
INSERT INTO `dp_packet_wechat_area` VALUES ('80', '中国', '甘肃', '天水');
INSERT INTO `dp_packet_wechat_area` VALUES ('81', '中国', '甘肃', '白银');
INSERT INTO `dp_packet_wechat_area` VALUES ('82', '中国', '甘肃', '张掖');
INSERT INTO `dp_packet_wechat_area` VALUES ('83', '中国', '甘肃', '武威');
INSERT INTO `dp_packet_wechat_area` VALUES ('84', '中国', '甘肃', '酒泉');
INSERT INTO `dp_packet_wechat_area` VALUES ('85', '中国', '甘肃', '平凉');
INSERT INTO `dp_packet_wechat_area` VALUES ('86', '中国', '青海', '海南');
INSERT INTO `dp_packet_wechat_area` VALUES ('87', '中国', '青海', '果洛');
INSERT INTO `dp_packet_wechat_area` VALUES ('88', '中国', '青海', '玉树');
INSERT INTO `dp_packet_wechat_area` VALUES ('89', '中国', '青海', '海东');
INSERT INTO `dp_packet_wechat_area` VALUES ('90', '中国', '青海', '海北');
INSERT INTO `dp_packet_wechat_area` VALUES ('91', '中国', '青海', '黄南');
INSERT INTO `dp_packet_wechat_area` VALUES ('92', '中国', '青海', '海西');
INSERT INTO `dp_packet_wechat_area` VALUES ('93', '中国', '青海', '西宁');
INSERT INTO `dp_packet_wechat_area` VALUES ('94', '中国', '宁夏', '银川');
INSERT INTO `dp_packet_wechat_area` VALUES ('95', '中国', '宁夏', '吴忠');
INSERT INTO `dp_packet_wechat_area` VALUES ('96', '中国', '宁夏', '石嘴山');
INSERT INTO `dp_packet_wechat_area` VALUES ('97', '中国', '宁夏', '中卫');
INSERT INTO `dp_packet_wechat_area` VALUES ('98', '中国', '宁夏', '固原');
INSERT INTO `dp_packet_wechat_area` VALUES ('99', '中国', '云南', '红河');
INSERT INTO `dp_packet_wechat_area` VALUES ('100', '中国', '云南', '文山');
INSERT INTO `dp_packet_wechat_area` VALUES ('101', '中国', '云南', '楚雄');
INSERT INTO `dp_packet_wechat_area` VALUES ('102', '中国', '云南', '怒江');
INSERT INTO `dp_packet_wechat_area` VALUES ('103', '中国', '云南', '德宏');
INSERT INTO `dp_packet_wechat_area` VALUES ('104', '中国', '云南', '西双版纳');
INSERT INTO `dp_packet_wechat_area` VALUES ('105', '中国', '云南', '大理');
INSERT INTO `dp_packet_wechat_area` VALUES ('106', '中国', '云南', '迪庆');
INSERT INTO `dp_packet_wechat_area` VALUES ('107', '中国', '云南', '昆明');
INSERT INTO `dp_packet_wechat_area` VALUES ('108', '中国', '云南', '曲靖');
INSERT INTO `dp_packet_wechat_area` VALUES ('109', '中国', '云南', '保山');
INSERT INTO `dp_packet_wechat_area` VALUES ('110', '中国', '云南', '玉溪');
INSERT INTO `dp_packet_wechat_area` VALUES ('111', '中国', '云南', '丽江');
INSERT INTO `dp_packet_wechat_area` VALUES ('112', '中国', '云南', '昭通');
INSERT INTO `dp_packet_wechat_area` VALUES ('113', '中国', '云南', '临沧');
INSERT INTO `dp_packet_wechat_area` VALUES ('114', '中国', '云南', '普洱');
INSERT INTO `dp_packet_wechat_area` VALUES ('115', '中国', '澳门', '');
INSERT INTO `dp_packet_wechat_area` VALUES ('116', '中国', '香港', '');
INSERT INTO `dp_packet_wechat_area` VALUES ('117', '中国', '贵州', '毕节');
INSERT INTO `dp_packet_wechat_area` VALUES ('118', '中国', '贵州', '黔东南');
INSERT INTO `dp_packet_wechat_area` VALUES ('119', '中国', '贵州', '黔南');
INSERT INTO `dp_packet_wechat_area` VALUES ('120', '中国', '贵州', '铜仁');
INSERT INTO `dp_packet_wechat_area` VALUES ('121', '中国', '贵州', '黔西南');
INSERT INTO `dp_packet_wechat_area` VALUES ('122', '中国', '贵州', '贵阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('123', '中国', '贵州', '遵义');
INSERT INTO `dp_packet_wechat_area` VALUES ('124', '中国', '贵州', '六盘水');
INSERT INTO `dp_packet_wechat_area` VALUES ('125', '中国', '贵州', '安顺');
INSERT INTO `dp_packet_wechat_area` VALUES ('126', '中国', '辽宁', '盘锦');
INSERT INTO `dp_packet_wechat_area` VALUES ('127', '中国', '辽宁', '辽阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('128', '中国', '辽宁', '朝阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('129', '中国', '辽宁', '铁岭');
INSERT INTO `dp_packet_wechat_area` VALUES ('130', '中国', '辽宁', '葫芦岛');
INSERT INTO `dp_packet_wechat_area` VALUES ('131', '中国', '辽宁', '沈阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('132', '中国', '辽宁', '鞍山');
INSERT INTO `dp_packet_wechat_area` VALUES ('133', '中国', '辽宁', '大连');
INSERT INTO `dp_packet_wechat_area` VALUES ('134', '中国', '辽宁', '本溪');
INSERT INTO `dp_packet_wechat_area` VALUES ('135', '中国', '辽宁', '抚顺');
INSERT INTO `dp_packet_wechat_area` VALUES ('136', '中国', '辽宁', '锦州');
INSERT INTO `dp_packet_wechat_area` VALUES ('137', '中国', '辽宁', '丹东');
INSERT INTO `dp_packet_wechat_area` VALUES ('138', '中国', '辽宁', '阜新');
INSERT INTO `dp_packet_wechat_area` VALUES ('139', '中国', '辽宁', '营口');
INSERT INTO `dp_packet_wechat_area` VALUES ('140', '中国', '吉林', '延边');
INSERT INTO `dp_packet_wechat_area` VALUES ('141', '中国', '吉林', '长春');
INSERT INTO `dp_packet_wechat_area` VALUES ('142', '中国', '吉林', '四平');
INSERT INTO `dp_packet_wechat_area` VALUES ('143', '中国', '吉林', '吉林');
INSERT INTO `dp_packet_wechat_area` VALUES ('144', '中国', '吉林', '通化');
INSERT INTO `dp_packet_wechat_area` VALUES ('145', '中国', '吉林', '辽源');
INSERT INTO `dp_packet_wechat_area` VALUES ('146', '中国', '吉林', '松原');
INSERT INTO `dp_packet_wechat_area` VALUES ('147', '中国', '吉林', '白山');
INSERT INTO `dp_packet_wechat_area` VALUES ('148', '中国', '吉林', '白城');
INSERT INTO `dp_packet_wechat_area` VALUES ('149', '中国', '黑龙江', '黑河');
INSERT INTO `dp_packet_wechat_area` VALUES ('150', '中国', '黑龙江', '牡丹江');
INSERT INTO `dp_packet_wechat_area` VALUES ('151', '中国', '黑龙江', ' 绥化');
INSERT INTO `dp_packet_wechat_area` VALUES ('152', '中国', '黑龙江', '哈尔滨');
INSERT INTO `dp_packet_wechat_area` VALUES ('153', '中国', '黑龙江', '大兴安岭');
INSERT INTO `dp_packet_wechat_area` VALUES ('154', '中国', '黑龙江', '鸡西');
INSERT INTO `dp_packet_wechat_area` VALUES ('155', '中国', '黑龙江', '齐齐哈尔');
INSERT INTO `dp_packet_wechat_area` VALUES ('156', '中国', '黑龙江', '双鸭山');
INSERT INTO `dp_packet_wechat_area` VALUES ('157', '中国', '黑龙江', '鹤岗');
INSERT INTO `dp_packet_wechat_area` VALUES ('158', '中国', '黑龙江', '伊春');
INSERT INTO `dp_packet_wechat_area` VALUES ('159', '中国', '黑龙江', '大庆');
INSERT INTO `dp_packet_wechat_area` VALUES ('160', '中国', '黑龙江', '七台河');
INSERT INTO `dp_packet_wechat_area` VALUES ('161', '中国', '黑龙江', '佳木斯');
INSERT INTO `dp_packet_wechat_area` VALUES ('162', '中国', '海南', '乐东');
INSERT INTO `dp_packet_wechat_area` VALUES ('163', '中国', '海南', '昌江');
INSERT INTO `dp_packet_wechat_area` VALUES ('164', '中国', '海南', '白沙');
INSERT INTO `dp_packet_wechat_area` VALUES ('165', '中国', '海南', '西沙');
INSERT INTO `dp_packet_wechat_area` VALUES ('166', '中国', '海南', '琼中');
INSERT INTO `dp_packet_wechat_area` VALUES ('167', '中国', '海南', '保亭');
INSERT INTO `dp_packet_wechat_area` VALUES ('168', '中国', '海南', '陵水');
INSERT INTO `dp_packet_wechat_area` VALUES ('169', '中国', '海南', '中沙');
INSERT INTO `dp_packet_wechat_area` VALUES ('170', '中国', '海南', '南沙');
INSERT INTO `dp_packet_wechat_area` VALUES ('171', '中国', '海南', '海口');
INSERT INTO `dp_packet_wechat_area` VALUES ('172', '中国', '海南', '三亚');
INSERT INTO `dp_packet_wechat_area` VALUES ('173', '中国', '海南', '五指山');
INSERT INTO `dp_packet_wechat_area` VALUES ('174', '中国', '海南', '儋州');
INSERT INTO `dp_packet_wechat_area` VALUES ('175', '中国', '海南', '琼海');
INSERT INTO `dp_packet_wechat_area` VALUES ('176', '中国', '海南', '文昌');
INSERT INTO `dp_packet_wechat_area` VALUES ('177', '中国', '海南', '东方');
INSERT INTO `dp_packet_wechat_area` VALUES ('178', '中国', '海南', '万宁');
INSERT INTO `dp_packet_wechat_area` VALUES ('179', '中国', '海南', '定安');
INSERT INTO `dp_packet_wechat_area` VALUES ('180', '中国', '海南', '屯昌');
INSERT INTO `dp_packet_wechat_area` VALUES ('181', '中国', '海南', '澄迈');
INSERT INTO `dp_packet_wechat_area` VALUES ('182', '中国', '海南', '临高');
INSERT INTO `dp_packet_wechat_area` VALUES ('183', '中国', '广东', '揭阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('184', '中国', '广东', '中山');
INSERT INTO `dp_packet_wechat_area` VALUES ('185', '中国', '广东', '广州');
INSERT INTO `dp_packet_wechat_area` VALUES ('186', '中国', '广东', '深圳');
INSERT INTO `dp_packet_wechat_area` VALUES ('187', '中国', '广东', '韶关');
INSERT INTO `dp_packet_wechat_area` VALUES ('188', '中国', '广东', '汕头');
INSERT INTO `dp_packet_wechat_area` VALUES ('189', '中国', '广东', '珠海');
INSERT INTO `dp_packet_wechat_area` VALUES ('190', '中国', '广东', '江门');
INSERT INTO `dp_packet_wechat_area` VALUES ('191', '中国', '广东', '佛山');
INSERT INTO `dp_packet_wechat_area` VALUES ('192', '中国', '广东', '茂名');
INSERT INTO `dp_packet_wechat_area` VALUES ('193', '中国', '广东', '湛江');
INSERT INTO `dp_packet_wechat_area` VALUES ('194', '中国', '广东', '惠州');
INSERT INTO `dp_packet_wechat_area` VALUES ('195', '中国', '广东', '肇庆');
INSERT INTO `dp_packet_wechat_area` VALUES ('196', '中国', '广东', '汕尾');
INSERT INTO `dp_packet_wechat_area` VALUES ('197', '中国', '广东', '梅州');
INSERT INTO `dp_packet_wechat_area` VALUES ('198', '中国', '广东', '阳江');
INSERT INTO `dp_packet_wechat_area` VALUES ('199', '中国', '广东', '河源');
INSERT INTO `dp_packet_wechat_area` VALUES ('200', '中国', '广东', '东莞');
INSERT INTO `dp_packet_wechat_area` VALUES ('201', '中国', '广东', '清远');
INSERT INTO `dp_packet_wechat_area` VALUES ('202', '中国', '广东', '潮州');
INSERT INTO `dp_packet_wechat_area` VALUES ('203', '中国', '广东', '云浮');
INSERT INTO `dp_packet_wechat_area` VALUES ('204', '中国', '广西', '贺州');
INSERT INTO `dp_packet_wechat_area` VALUES ('205', '中国', '广西', '百色');
INSERT INTO `dp_packet_wechat_area` VALUES ('206', '中国', '广西', '来宾');
INSERT INTO `dp_packet_wechat_area` VALUES ('207', '中国', '广西', '河池');
INSERT INTO `dp_packet_wechat_area` VALUES ('208', '中国', '广西', '崇左');
INSERT INTO `dp_packet_wechat_area` VALUES ('209', '中国', '广西', '南宁');
INSERT INTO `dp_packet_wechat_area` VALUES ('210', '中国', '广西', '桂林');
INSERT INTO `dp_packet_wechat_area` VALUES ('211', '中国', '广西', '柳州');
INSERT INTO `dp_packet_wechat_area` VALUES ('212', '中国', '广西', '北海');
INSERT INTO `dp_packet_wechat_area` VALUES ('213', '中国', '广西', '梧州');
INSERT INTO `dp_packet_wechat_area` VALUES ('214', '中国', '广西', '钦州');
INSERT INTO `dp_packet_wechat_area` VALUES ('215', '中国', '广西', '防城港');
INSERT INTO `dp_packet_wechat_area` VALUES ('216', '中国', '广西', '玉林');
INSERT INTO `dp_packet_wechat_area` VALUES ('217', '中国', '广西', '贵港');
INSERT INTO `dp_packet_wechat_area` VALUES ('218', '中国', '湖北', '黄冈');
INSERT INTO `dp_packet_wechat_area` VALUES ('219', '中国', '湖北', '荆州');
INSERT INTO `dp_packet_wechat_area` VALUES ('220', '中国', '湖北', '随州');
INSERT INTO `dp_packet_wechat_area` VALUES ('221', '中国', '湖北', '咸宁');
INSERT INTO `dp_packet_wechat_area` VALUES ('222', '中国', '湖北', '神农架');
INSERT INTO `dp_packet_wechat_area` VALUES ('223', '中国', '湖北', '恩施');
INSERT INTO `dp_packet_wechat_area` VALUES ('224', '中国', '湖北', '武汉');
INSERT INTO `dp_packet_wechat_area` VALUES ('225', '中国', '湖北', '十堰');
INSERT INTO `dp_packet_wechat_area` VALUES ('226', '中国', '湖北', '黄石');
INSERT INTO `dp_packet_wechat_area` VALUES ('227', '中国', '湖北', '宜昌');
INSERT INTO `dp_packet_wechat_area` VALUES ('228', '中国', '湖北', '鄂州');
INSERT INTO `dp_packet_wechat_area` VALUES ('229', '中国', '湖北', '襄樊');
INSERT INTO `dp_packet_wechat_area` VALUES ('230', '中国', '湖北', '孝感');
INSERT INTO `dp_packet_wechat_area` VALUES ('231', '中国', '湖北', '荆门');
INSERT INTO `dp_packet_wechat_area` VALUES ('232', '中国', '湖北', '潜江');
INSERT INTO `dp_packet_wechat_area` VALUES ('233', '中国', '湖北', '仙桃');
INSERT INTO `dp_packet_wechat_area` VALUES ('234', '中国', '湖北', '天门');
INSERT INTO `dp_packet_wechat_area` VALUES ('235', '中国', '湖南', '永州');
INSERT INTO `dp_packet_wechat_area` VALUES ('236', '中国', '湖南', '郴州');
INSERT INTO `dp_packet_wechat_area` VALUES ('237', '中国', '湖南', '娄底');
INSERT INTO `dp_packet_wechat_area` VALUES ('238', '中国', '湖南', '怀化');
INSERT INTO `dp_packet_wechat_area` VALUES ('239', '中国', '湖南', '湘西');
INSERT INTO `dp_packet_wechat_area` VALUES ('240', '中国', '湖南', '长沙');
INSERT INTO `dp_packet_wechat_area` VALUES ('241', '中国', '湖南', '湘潭');
INSERT INTO `dp_packet_wechat_area` VALUES ('242', '中国', '湖南', '株洲');
INSERT INTO `dp_packet_wechat_area` VALUES ('243', '中国', '湖南', '邵阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('244', '中国', '湖南', '衡阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('245', '中国', '湖南', '常德');
INSERT INTO `dp_packet_wechat_area` VALUES ('246', '中国', '湖南', '岳阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('247', '中国', '湖南', '益阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('248', '中国', '湖南', '张家界');
INSERT INTO `dp_packet_wechat_area` VALUES ('249', '中国', '河南', '漯河');
INSERT INTO `dp_packet_wechat_area` VALUES ('250', '中国', '河南', '许昌');
INSERT INTO `dp_packet_wechat_area` VALUES ('251', '中国', '河南', '南阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('252', '中国', '河南', '三门峡');
INSERT INTO `dp_packet_wechat_area` VALUES ('253', '中国', '河南', '信阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('254', '中国', '河南', '商丘');
INSERT INTO `dp_packet_wechat_area` VALUES ('255', '中国', '河南', '驻马店');
INSERT INTO `dp_packet_wechat_area` VALUES ('256', '中国', '河南', '周口');
INSERT INTO `dp_packet_wechat_area` VALUES ('257', '中国', '河南', '济源');
INSERT INTO `dp_packet_wechat_area` VALUES ('258', '中国', '河南', '郑州');
INSERT INTO `dp_packet_wechat_area` VALUES ('259', '中国', '河南', '洛阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('260', '中国', '河南', '开封');
INSERT INTO `dp_packet_wechat_area` VALUES ('261', '中国', '河南', '安阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('262', '中国', '河南', '平顶山');
INSERT INTO `dp_packet_wechat_area` VALUES ('263', '中国', '河南', '新乡');
INSERT INTO `dp_packet_wechat_area` VALUES ('264', '中国', '河南', '鹤壁');
INSERT INTO `dp_packet_wechat_area` VALUES ('265', '中国', '河南', '濮阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('266', '中国', '河南', '焦作');
INSERT INTO `dp_packet_wechat_area` VALUES ('267', '中国', '台湾', '屏东县');
INSERT INTO `dp_packet_wechat_area` VALUES ('268', '中国', '台湾', '澎湖县');
INSERT INTO `dp_packet_wechat_area` VALUES ('269', '中国', '台湾', '台东县');
INSERT INTO `dp_packet_wechat_area` VALUES ('270', '中国', '台湾', '花莲县');
INSERT INTO `dp_packet_wechat_area` VALUES ('271', '中国', '台湾', '台北市');
INSERT INTO `dp_packet_wechat_area` VALUES ('272', '中国', '台湾', '基隆市');
INSERT INTO `dp_packet_wechat_area` VALUES ('273', '中国', '台湾', '高雄市');
INSERT INTO `dp_packet_wechat_area` VALUES ('274', '中国', '台湾', '台南市');
INSERT INTO `dp_packet_wechat_area` VALUES ('275', '中国', '台湾', '台中市');
INSERT INTO `dp_packet_wechat_area` VALUES ('276', '中国', '台湾', '嘉义市');
INSERT INTO `dp_packet_wechat_area` VALUES ('277', '中国', '台湾', '新竹市');
INSERT INTO `dp_packet_wechat_area` VALUES ('278', '中国', '台湾', '宜兰县');
INSERT INTO `dp_packet_wechat_area` VALUES ('279', '中国', '台湾', '台北县');
INSERT INTO `dp_packet_wechat_area` VALUES ('280', '中国', '台湾', '新竹县');
INSERT INTO `dp_packet_wechat_area` VALUES ('281', '中国', '台湾', '桃园县');
INSERT INTO `dp_packet_wechat_area` VALUES ('282', '中国', '台湾', '台中县');
INSERT INTO `dp_packet_wechat_area` VALUES ('283', '中国', '台湾', '苗栗县');
INSERT INTO `dp_packet_wechat_area` VALUES ('284', '中国', '台湾', '南投县');
INSERT INTO `dp_packet_wechat_area` VALUES ('285', '中国', '台湾', '彰化县');
INSERT INTO `dp_packet_wechat_area` VALUES ('286', '中国', '台湾', '嘉义县');
INSERT INTO `dp_packet_wechat_area` VALUES ('287', '中国', '台湾', '云林县');
INSERT INTO `dp_packet_wechat_area` VALUES ('288', '中国', '台湾', '高雄县');
INSERT INTO `dp_packet_wechat_area` VALUES ('289', '中国', '台湾', '台南县');
INSERT INTO `dp_packet_wechat_area` VALUES ('290', '中国', '北京', '房山');
INSERT INTO `dp_packet_wechat_area` VALUES ('291', '中国', '北京', '大兴');
INSERT INTO `dp_packet_wechat_area` VALUES ('292', '中国', '北京', '顺义');
INSERT INTO `dp_packet_wechat_area` VALUES ('293', '中国', '北京', '通州');
INSERT INTO `dp_packet_wechat_area` VALUES ('294', '中国', '北京', '昌平');
INSERT INTO `dp_packet_wechat_area` VALUES ('295', '中国', '北京', '密云');
INSERT INTO `dp_packet_wechat_area` VALUES ('296', '中国', '北京', '平谷');
INSERT INTO `dp_packet_wechat_area` VALUES ('297', '中国', '北京', '延庆');
INSERT INTO `dp_packet_wechat_area` VALUES ('298', '中国', '北京', '东城');
INSERT INTO `dp_packet_wechat_area` VALUES ('299', '中国', '北京', '怀柔');
INSERT INTO `dp_packet_wechat_area` VALUES ('300', '中国', '北京', '崇文');
INSERT INTO `dp_packet_wechat_area` VALUES ('301', '中国', '北京', '西城');
INSERT INTO `dp_packet_wechat_area` VALUES ('302', '中国', '北京', '朝阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('303', '中国', '北京', '宣武');
INSERT INTO `dp_packet_wechat_area` VALUES ('304', '中国', '北京', '石景山');
INSERT INTO `dp_packet_wechat_area` VALUES ('305', '中国', '北京', '丰台');
INSERT INTO `dp_packet_wechat_area` VALUES ('306', '中国', '北京', '门头沟');
INSERT INTO `dp_packet_wechat_area` VALUES ('307', '中国', '北京', '海淀');
INSERT INTO `dp_packet_wechat_area` VALUES ('308', '中国', '河北', '衡水');
INSERT INTO `dp_packet_wechat_area` VALUES ('309', '中国', '河北', '廊坊');
INSERT INTO `dp_packet_wechat_area` VALUES ('310', '中国', '河北', '石家庄');
INSERT INTO `dp_packet_wechat_area` VALUES ('311', '中国', '河北', '秦皇岛');
INSERT INTO `dp_packet_wechat_area` VALUES ('312', '中国', '河北', '唐山');
INSERT INTO `dp_packet_wechat_area` VALUES ('313', '中国', '河北', '邢台');
INSERT INTO `dp_packet_wechat_area` VALUES ('314', '中国', '河北', '邯郸');
INSERT INTO `dp_packet_wechat_area` VALUES ('315', '中国', '河北', '张家口');
INSERT INTO `dp_packet_wechat_area` VALUES ('316', '中国', '河北', '保定');
INSERT INTO `dp_packet_wechat_area` VALUES ('317', '中国', '河北', '沧州');
INSERT INTO `dp_packet_wechat_area` VALUES ('318', '中国', '河北', '承德');
INSERT INTO `dp_packet_wechat_area` VALUES ('319', '中国', '天津', '西青');
INSERT INTO `dp_packet_wechat_area` VALUES ('320', '中国', '天津', '东丽');
INSERT INTO `dp_packet_wechat_area` VALUES ('321', '中国', '天津', '北辰');
INSERT INTO `dp_packet_wechat_area` VALUES ('322', '中国', '天津', '津南');
INSERT INTO `dp_packet_wechat_area` VALUES ('323', '中国', '天津', '宁河');
INSERT INTO `dp_packet_wechat_area` VALUES ('324', '中国', '天津', '武清');
INSERT INTO `dp_packet_wechat_area` VALUES ('325', '中国', '天津', '静海');
INSERT INTO `dp_packet_wechat_area` VALUES ('326', '中国', '天津', '宝坻');
INSERT INTO `dp_packet_wechat_area` VALUES ('327', '中国', '天津', '和平');
INSERT INTO `dp_packet_wechat_area` VALUES ('328', '中国', '天津', '河西');
INSERT INTO `dp_packet_wechat_area` VALUES ('329', '中国', '天津', '河东');
INSERT INTO `dp_packet_wechat_area` VALUES ('330', '中国', '天津', '河北');
INSERT INTO `dp_packet_wechat_area` VALUES ('331', '中国', '天津', '南开');
INSERT INTO `dp_packet_wechat_area` VALUES ('332', '中国', '天津', '塘沽');
INSERT INTO `dp_packet_wechat_area` VALUES ('333', '中国', '天津', '红桥');
INSERT INTO `dp_packet_wechat_area` VALUES ('334', '中国', '天津', '大港');
INSERT INTO `dp_packet_wechat_area` VALUES ('335', '中国', '天津', '汉沽');
INSERT INTO `dp_packet_wechat_area` VALUES ('336', '中国', '天津', '蓟县');
INSERT INTO `dp_packet_wechat_area` VALUES ('337', '中国', '内蒙古', '锡林郭勒');
INSERT INTO `dp_packet_wechat_area` VALUES ('338', '中国', '内蒙古', '兴安');
INSERT INTO `dp_packet_wechat_area` VALUES ('339', '中国', '内蒙古', '阿拉善');
INSERT INTO `dp_packet_wechat_area` VALUES ('340', '中国', '内蒙古', '呼和浩特');
INSERT INTO `dp_packet_wechat_area` VALUES ('341', '中国', '内蒙古', '乌海');
INSERT INTO `dp_packet_wechat_area` VALUES ('342', '中国', '内蒙古', '包头');
INSERT INTO `dp_packet_wechat_area` VALUES ('343', '中国', '内蒙古', '通辽');
INSERT INTO `dp_packet_wechat_area` VALUES ('344', '中国', '内蒙古', '赤峰');
INSERT INTO `dp_packet_wechat_area` VALUES ('345', '中国', '内蒙古', '呼伦贝尔');
INSERT INTO `dp_packet_wechat_area` VALUES ('346', '中国', '内蒙古', '鄂尔多斯');
INSERT INTO `dp_packet_wechat_area` VALUES ('347', '中国', '内蒙古', '乌兰察布');
INSERT INTO `dp_packet_wechat_area` VALUES ('348', '中国', '内蒙古', '巴彦淖尔');
INSERT INTO `dp_packet_wechat_area` VALUES ('349', '中国', '山西', '吕梁');
INSERT INTO `dp_packet_wechat_area` VALUES ('350', '中国', '山西', '临汾');
INSERT INTO `dp_packet_wechat_area` VALUES ('351', '中国', '山西', '太原');
INSERT INTO `dp_packet_wechat_area` VALUES ('352', '中国', '山西', '阳泉');
INSERT INTO `dp_packet_wechat_area` VALUES ('353', '中国', '山西', '大同');
INSERT INTO `dp_packet_wechat_area` VALUES ('354', '中国', '山西', '晋城');
INSERT INTO `dp_packet_wechat_area` VALUES ('355', '中国', '山西', '长治');
INSERT INTO `dp_packet_wechat_area` VALUES ('356', '中国', '山西', '晋中');
INSERT INTO `dp_packet_wechat_area` VALUES ('357', '中国', '山西', '朔州');
INSERT INTO `dp_packet_wechat_area` VALUES ('358', '中国', '山西', '忻州');
INSERT INTO `dp_packet_wechat_area` VALUES ('359', '中国', '山西', '运城');
INSERT INTO `dp_packet_wechat_area` VALUES ('360', '中国', '浙江', '丽水');
INSERT INTO `dp_packet_wechat_area` VALUES ('361', '中国', '浙江', '台州');
INSERT INTO `dp_packet_wechat_area` VALUES ('362', '中国', '浙江', '杭州');
INSERT INTO `dp_packet_wechat_area` VALUES ('363', '中国', '浙江', '温州');
INSERT INTO `dp_packet_wechat_area` VALUES ('364', '中国', '浙江', '宁波');
INSERT INTO `dp_packet_wechat_area` VALUES ('365', '中国', '浙江', '湖州');
INSERT INTO `dp_packet_wechat_area` VALUES ('366', '中国', '浙江', '嘉兴');
INSERT INTO `dp_packet_wechat_area` VALUES ('367', '中国', '浙江', '金华');
INSERT INTO `dp_packet_wechat_area` VALUES ('368', '中国', '浙江', '绍兴');
INSERT INTO `dp_packet_wechat_area` VALUES ('369', '中国', '浙江', '舟山');
INSERT INTO `dp_packet_wechat_area` VALUES ('370', '中国', '浙江', '衢州');
INSERT INTO `dp_packet_wechat_area` VALUES ('371', '中国', '江苏', '镇江');
INSERT INTO `dp_packet_wechat_area` VALUES ('372', '中国', '江苏', '扬州');
INSERT INTO `dp_packet_wechat_area` VALUES ('373', '中国', '江苏', '宿迁');
INSERT INTO `dp_packet_wechat_area` VALUES ('374', '中国', '江苏', '泰州');
INSERT INTO `dp_packet_wechat_area` VALUES ('375', '中国', '江苏', '南京');
INSERT INTO `dp_packet_wechat_area` VALUES ('376', '中国', '江苏', '徐州');
INSERT INTO `dp_packet_wechat_area` VALUES ('377', '中国', '江苏', '无锡');
INSERT INTO `dp_packet_wechat_area` VALUES ('378', '中国', '江苏', '苏州');
INSERT INTO `dp_packet_wechat_area` VALUES ('379', '中国', '江苏', '常州');
INSERT INTO `dp_packet_wechat_area` VALUES ('380', '中国', '江苏', '连云港');
INSERT INTO `dp_packet_wechat_area` VALUES ('381', '中国', '江苏', '南通');
INSERT INTO `dp_packet_wechat_area` VALUES ('382', '中国', '江苏', '盐城');
INSERT INTO `dp_packet_wechat_area` VALUES ('383', '中国', '江苏', '淮安');
INSERT INTO `dp_packet_wechat_area` VALUES ('384', '中国', '上海', '杨浦');
INSERT INTO `dp_packet_wechat_area` VALUES ('385', '中国', '上海', '南汇');
INSERT INTO `dp_packet_wechat_area` VALUES ('386', '中国', '上海', '宝山');
INSERT INTO `dp_packet_wechat_area` VALUES ('387', '中国', '上海', '闵行');
INSERT INTO `dp_packet_wechat_area` VALUES ('388', '中国', '上海', '浦东新');
INSERT INTO `dp_packet_wechat_area` VALUES ('389', '中国', '上海', '嘉定');
INSERT INTO `dp_packet_wechat_area` VALUES ('390', '中国', '上海', '松江');
INSERT INTO `dp_packet_wechat_area` VALUES ('391', '中国', '上海', '金山');
INSERT INTO `dp_packet_wechat_area` VALUES ('392', '中国', '上海', '崇明');
INSERT INTO `dp_packet_wechat_area` VALUES ('393', '中国', '上海', '奉贤');
INSERT INTO `dp_packet_wechat_area` VALUES ('394', '中国', '上海', '青浦');
INSERT INTO `dp_packet_wechat_area` VALUES ('395', '中国', '上海', '黄浦');
INSERT INTO `dp_packet_wechat_area` VALUES ('396', '中国', '上海', '卢湾');
INSERT INTO `dp_packet_wechat_area` VALUES ('397', '中国', '上海', '长宁');
INSERT INTO `dp_packet_wechat_area` VALUES ('398', '中国', '上海', '徐汇');
INSERT INTO `dp_packet_wechat_area` VALUES ('399', '中国', '上海', '普陀');
INSERT INTO `dp_packet_wechat_area` VALUES ('400', '中国', '上海', '静安');
INSERT INTO `dp_packet_wechat_area` VALUES ('401', '中国', '上海', '虹口');
INSERT INTO `dp_packet_wechat_area` VALUES ('402', '中国', '上海', '闸北');
INSERT INTO `dp_packet_wechat_area` VALUES ('403', '中国', '山东', '日照');
INSERT INTO `dp_packet_wechat_area` VALUES ('404', '中国', '山东', '威海');
INSERT INTO `dp_packet_wechat_area` VALUES ('405', '中国', '山东', '临沂');
INSERT INTO `dp_packet_wechat_area` VALUES ('406', '中国', '山东', '莱芜');
INSERT INTO `dp_packet_wechat_area` VALUES ('407', '中国', '山东', '聊城');
INSERT INTO `dp_packet_wechat_area` VALUES ('408', '中国', '山东', '德州');
INSERT INTO `dp_packet_wechat_area` VALUES ('409', '中国', '山东', '菏泽');
INSERT INTO `dp_packet_wechat_area` VALUES ('410', '中国', '山东', '滨州');
INSERT INTO `dp_packet_wechat_area` VALUES ('411', '中国', '山东', '济南');
INSERT INTO `dp_packet_wechat_area` VALUES ('412', '中国', '山东', '淄博');
INSERT INTO `dp_packet_wechat_area` VALUES ('413', '中国', '山东', '青岛');
INSERT INTO `dp_packet_wechat_area` VALUES ('414', '中国', '山东', '东营');
INSERT INTO `dp_packet_wechat_area` VALUES ('415', '中国', '山东', '枣庄');
INSERT INTO `dp_packet_wechat_area` VALUES ('416', '中国', '山东', '潍坊');
INSERT INTO `dp_packet_wechat_area` VALUES ('417', '中国', '山东', '烟台');
INSERT INTO `dp_packet_wechat_area` VALUES ('418', '中国', '山东', '泰安');
INSERT INTO `dp_packet_wechat_area` VALUES ('419', '中国', '山东', '济宁');
INSERT INTO `dp_packet_wechat_area` VALUES ('420', '中国', '江西', '上饶');
INSERT INTO `dp_packet_wechat_area` VALUES ('421', '中国', '江西', '抚州');
INSERT INTO `dp_packet_wechat_area` VALUES ('422', '中国', '江西', '南昌');
INSERT INTO `dp_packet_wechat_area` VALUES ('423', '中国', '江西', '萍乡');
INSERT INTO `dp_packet_wechat_area` VALUES ('424', '中国', '江西', '景德镇');
INSERT INTO `dp_packet_wechat_area` VALUES ('425', '中国', '江西', '新余');
INSERT INTO `dp_packet_wechat_area` VALUES ('426', '中国', '江西', '九江');
INSERT INTO `dp_packet_wechat_area` VALUES ('427', '中国', '江西', '赣州');
INSERT INTO `dp_packet_wechat_area` VALUES ('428', '中国', '江西', '鹰潭');
INSERT INTO `dp_packet_wechat_area` VALUES ('429', '中国', '江西', '宜春');
INSERT INTO `dp_packet_wechat_area` VALUES ('430', '中国', '江西', '吉安');
INSERT INTO `dp_packet_wechat_area` VALUES ('431', '中国', '福建', '福州');
INSERT INTO `dp_packet_wechat_area` VALUES ('432', '中国', '福建', '莆田');
INSERT INTO `dp_packet_wechat_area` VALUES ('433', '中国', '福建', '厦门');
INSERT INTO `dp_packet_wechat_area` VALUES ('434', '中国', '福建', '泉州');
INSERT INTO `dp_packet_wechat_area` VALUES ('435', '中国', '福建', '三明');
INSERT INTO `dp_packet_wechat_area` VALUES ('436', '中国', '福建', '南平');
INSERT INTO `dp_packet_wechat_area` VALUES ('437', '中国', '福建', '漳州');
INSERT INTO `dp_packet_wechat_area` VALUES ('438', '中国', '福建', '宁德');
INSERT INTO `dp_packet_wechat_area` VALUES ('439', '中国', '福建', '龙岩');
INSERT INTO `dp_packet_wechat_area` VALUES ('440', '中国', '安徽', '滁州');
INSERT INTO `dp_packet_wechat_area` VALUES ('441', '中国', '安徽', '黄山');
INSERT INTO `dp_packet_wechat_area` VALUES ('442', '中国', '安徽', '宿州');
INSERT INTO `dp_packet_wechat_area` VALUES ('443', '中国', '安徽', '阜阳');
INSERT INTO `dp_packet_wechat_area` VALUES ('444', '中国', '安徽', '六安');
INSERT INTO `dp_packet_wechat_area` VALUES ('445', '中国', '安徽', '巢湖');
INSERT INTO `dp_packet_wechat_area` VALUES ('446', '中国', '安徽', '池州');
INSERT INTO `dp_packet_wechat_area` VALUES ('447', '中国', '安徽', '亳州');
INSERT INTO `dp_packet_wechat_area` VALUES ('448', '中国', '安徽', '宣城');
INSERT INTO `dp_packet_wechat_area` VALUES ('449', '中国', '安徽', '合肥');
INSERT INTO `dp_packet_wechat_area` VALUES ('450', '中国', '安徽', '蚌埠');
INSERT INTO `dp_packet_wechat_area` VALUES ('451', '中国', '安徽', '芜湖');
INSERT INTO `dp_packet_wechat_area` VALUES ('452', '中国', '安徽', '马鞍山');
INSERT INTO `dp_packet_wechat_area` VALUES ('453', '中国', '安徽', '淮南');
INSERT INTO `dp_packet_wechat_area` VALUES ('454', '中国', '安徽', '铜陵');
INSERT INTO `dp_packet_wechat_area` VALUES ('455', '中国', '安徽', '淮北');
INSERT INTO `dp_packet_wechat_area` VALUES ('456', '中国', '安徽', '安庆');
INSERT INTO `dp_packet_wechat_area` VALUES ('457', '中国', '西藏', '那曲');
INSERT INTO `dp_packet_wechat_area` VALUES ('458', '中国', '西藏', '阿里');
INSERT INTO `dp_packet_wechat_area` VALUES ('459', '中国', '西藏', '林芝');
INSERT INTO `dp_packet_wechat_area` VALUES ('460', '中国', '西藏', '昌都');
INSERT INTO `dp_packet_wechat_area` VALUES ('461', '中国', '西藏', '山南');
INSERT INTO `dp_packet_wechat_area` VALUES ('462', '中国', '西藏', '日喀则');
INSERT INTO `dp_packet_wechat_area` VALUES ('463', '中国', '西藏', '拉萨');
INSERT INTO `dp_packet_wechat_area` VALUES ('464', '中国', '新疆', '博尔塔拉');
INSERT INTO `dp_packet_wechat_area` VALUES ('465', '中国', '新疆', '吐鲁番');
INSERT INTO `dp_packet_wechat_area` VALUES ('466', '中国', '新疆', '哈密');
INSERT INTO `dp_packet_wechat_area` VALUES ('467', '中国', '新疆', '昌吉');
INSERT INTO `dp_packet_wechat_area` VALUES ('468', '中国', '新疆', '和田');
INSERT INTO `dp_packet_wechat_area` VALUES ('469', '中国', '新疆', '喀什');
INSERT INTO `dp_packet_wechat_area` VALUES ('470', '中国', '新疆', '克孜勒苏');
INSERT INTO `dp_packet_wechat_area` VALUES ('471', '中国', '新疆', '巴音郭楞');
INSERT INTO `dp_packet_wechat_area` VALUES ('472', '中国', '新疆', '阿克苏');
INSERT INTO `dp_packet_wechat_area` VALUES ('473', '中国', '新疆', '伊犁');
INSERT INTO `dp_packet_wechat_area` VALUES ('474', '中国', '新疆', '塔城');
INSERT INTO `dp_packet_wechat_area` VALUES ('475', '中国', '新疆', '乌鲁木齐');
INSERT INTO `dp_packet_wechat_area` VALUES ('476', '中国', '新疆', '阿勒泰');
INSERT INTO `dp_packet_wechat_area` VALUES ('477', '中国', '新疆', '克拉玛依');
INSERT INTO `dp_packet_wechat_area` VALUES ('478', '中国', '新疆', '石河子');
INSERT INTO `dp_packet_wechat_area` VALUES ('479', '中国', '新疆', '图木舒克');
INSERT INTO `dp_packet_wechat_area` VALUES ('480', '中国', '新疆', '阿拉尔');
INSERT INTO `dp_packet_wechat_area` VALUES ('481', '中国', '新疆', '五家渠');

-- ----------------------------
-- Table structure for `dp_plugin_hello`
-- ----------------------------
DROP TABLE IF EXISTS `dp_plugin_hello`;
CREATE TABLE `dp_plugin_hello` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '名人',
  `said` text NOT NULL COMMENT '名言',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dp_plugin_hello
-- ----------------------------
INSERT INTO `dp_plugin_hello` VALUES ('1', '网络', '生活是一面镜子。你对它笑，它就对你笑；你对它哭，它也对你哭。', '1');
INSERT INTO `dp_plugin_hello` VALUES ('2', '网络', '活着一天，就是有福气，就该珍惜。当我哭泣我没有鞋子穿的时候，我发现有人却没有脚。', '1');
INSERT INTO `dp_plugin_hello` VALUES ('3', '爱迪生', '天才是百分之一的灵感加百分之九十九的汗水。', '1');
INSERT INTO `dp_plugin_hello` VALUES ('4', '美华纳', '勿问成功的秘诀为何，且尽全力做你应该做的事吧。', '1');
INSERT INTO `dp_plugin_hello` VALUES ('5', '陶铸', '如烟往事俱忘却，心底无私天地宽', '1');
