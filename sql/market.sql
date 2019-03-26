/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : market

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-02-16 14:11:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES ('1', 'admin', 'Admin', '49d19ae006e10125b2f08f771d715161', 'e92174', '/assets/img/avatar.png', 'admin@admin.com', '0', '1550296595', '1492186163', '1550296595', 'dcf62fe1-18c3-44a7-8e00-00954915c972', 'normal');
INSERT INTO `fa_admin` VALUES ('2', 'limei', '李梅', 'c25e081ce95942a3e73ab232eaed281c', 'kQ0gXu', '/assets/img/avatar.png', '12@qq.com', '0', '1550296541', '1550247241', '1550296584', '', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES ('1', '1', 'admin', '/index.php/admin/index/login', '登录', '{\"__token__\":\"3196376499e3dd68dd081900df6b1514\",\"username\":\"admin\",\"captcha\":\"ibkc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549101292');
INSERT INTO `fa_admin_log` VALUES ('2', '1', 'admin', '/index.php/admin/index/login?url=%2Findex.php%2Fadmin%2Fcategory%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/index.php\\/admin\\/category?ref=addtabs\",\"__token__\":\"58a873b25bd3af4063627a45136d5743\",\"username\":\"admin\",\"captcha\":\"zbyk\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549866811');
INSERT INTO `fa_admin_log` VALUES ('3', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549874239');
INSERT INTO `fa_admin_log` VALUES ('4', '1', 'admin', '/admin/auth/rule/multi/ids/66', '', '{\"action\":\"\",\"ids\":\"66\",\"params\":\"ismenu=0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549874334');
INSERT INTO `fa_admin_log` VALUES ('5', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549874336');
INSERT INTO `fa_admin_log` VALUES ('6', '1', 'admin', '/admin/auth/rule/multi/ids/66', '', '{\"action\":\"\",\"ids\":\"66\",\"params\":\"ismenu=1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549874347');
INSERT INTO `fa_admin_log` VALUES ('7', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549874350');
INSERT INTO `fa_admin_log` VALUES ('8', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876484');
INSERT INTO `fa_admin_log` VALUES ('9', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876485');
INSERT INTO `fa_admin_log` VALUES ('10', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876485');
INSERT INTO `fa_admin_log` VALUES ('11', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876486');
INSERT INTO `fa_admin_log` VALUES ('12', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876487');
INSERT INTO `fa_admin_log` VALUES ('13', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876503');
INSERT INTO `fa_admin_log` VALUES ('14', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876504');
INSERT INTO `fa_admin_log` VALUES ('15', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876505');
INSERT INTO `fa_admin_log` VALUES ('16', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876506');
INSERT INTO `fa_admin_log` VALUES ('17', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876510');
INSERT INTO `fa_admin_log` VALUES ('18', '1', 'admin', '/admin/category/selectpage', '', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\",\"custom\":{\"type\":\"test\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549876511');
INSERT INTO `fa_admin_log` VALUES ('19', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549878873');
INSERT INTO `fa_admin_log` VALUES ('20', '1', 'admin', '/admin/good/category/add?dialog=1', 'good 商品分类管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u852c\\u83dc\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549878918');
INSERT INTO `fa_admin_log` VALUES ('21', '1', 'admin', '/admin/good/category/add?dialog=1', 'good 商品分类管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6c34\\u679c\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549878930');
INSERT INTO `fa_admin_log` VALUES ('22', '1', 'admin', '/admin/good/category/add?dialog=1', 'good 商品分类管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u996e\\u6599\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549878944');
INSERT INTO `fa_admin_log` VALUES ('23', '1', 'admin', '/admin/good/category/add?dialog=1', 'good 商品分类管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879115');
INSERT INTO `fa_admin_log` VALUES ('24', '1', 'admin', '/admin/good/category/del/ids/17', 'good 商品分类管理 删除', '{\"action\":\"del\",\"ids\":\"17\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879121');
INSERT INTO `fa_admin_log` VALUES ('25', '1', 'admin', '/admin/auth/rule/edit/ids/85?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"good\",\"title\":\"\\u5546\\u54c1\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"85\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879204');
INSERT INTO `fa_admin_log` VALUES ('26', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879206');
INSERT INTO `fa_admin_log` VALUES ('27', '1', 'admin', '/admin/auth/rule/del/ids/85,86', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"85,86\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879396');
INSERT INTO `fa_admin_log` VALUES ('28', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879397');
INSERT INTO `fa_admin_log` VALUES ('29', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879634');
INSERT INTO `fa_admin_log` VALUES ('30', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879636');
INSERT INTO `fa_admin_log` VALUES ('31', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879637');
INSERT INTO `fa_admin_log` VALUES ('32', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879638');
INSERT INTO `fa_admin_log` VALUES ('33', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879643');
INSERT INTO `fa_admin_log` VALUES ('34', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879647');
INSERT INTO `fa_admin_log` VALUES ('35', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879649');
INSERT INTO `fa_admin_log` VALUES ('36', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879651');
INSERT INTO `fa_admin_log` VALUES ('37', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"webwxgetmsgimg.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879664');
INSERT INTO `fa_admin_log` VALUES ('38', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879680');
INSERT INTO `fa_admin_log` VALUES ('39', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879682');
INSERT INTO `fa_admin_log` VALUES ('40', '1', 'admin', '/admin/good/info/add?dialog=1', 'good 商品信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"num\":\"001\",\"name\":\"\\u7ea2\\u841d\\u535c\",\"good_category_id\":\"14\",\"image\":\"\\/uploads\\/20190211\\/418278876312982c51682a7af7ed9768.jpg\",\"sale_price\":\"10\",\"stock\":\"1\",\"remark\":\"\\u54c8\\u54c8\\u54c8\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879691');
INSERT INTO `fa_admin_log` VALUES ('41', '1', 'admin', '/admin/good/info/multi/ids/2', 'good 商品信息管理 批量更新', '{\"ids\":\"2\",\"params\":\"status=hidden\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879717');
INSERT INTO `fa_admin_log` VALUES ('42', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879762');
INSERT INTO `fa_admin_log` VALUES ('43', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"mmexport1541038044628.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879774');
INSERT INTO `fa_admin_log` VALUES ('44', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879802');
INSERT INTO `fa_admin_log` VALUES ('45', '1', 'admin', '/admin/good/info/add?dialog=1', 'good 商品信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"num\":\"101\",\"name\":\"\\u7ea2\\u82f9\\u679c\",\"good_category_id\":\"15\",\"image\":\"\\/uploads\\/20190211\\/f58d13c7984c7ade4da2da15c2aad197.jpg\",\"sale_price\":\"12.5\",\"stock\":\"987\",\"remark\":\"\\u597d\\u5403\\u7684\\u7ea2\\u82f9\\u679c\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549879822');
INSERT INTO `fa_admin_log` VALUES ('46', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885367');
INSERT INTO `fa_admin_log` VALUES ('47', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885557');
INSERT INTO `fa_admin_log` VALUES ('48', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"\",\"pid\":\"1\",\"name\":\"\\u64cd\\u4f5c\\u5458\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885577');
INSERT INTO `fa_admin_log` VALUES ('49', '1', 'admin', '/admin/supplier/info/add?dialog=1', 'supplier 供应商信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"num\":\"001\",\"company\":\"\\u4e07\\u8fbe\\u96c6\\u56e2\",\"name\":\"\\u738b\\u601d\\u806a\",\"tel\":\"1381145487\",\"address\":\"\\u5317\\u4eac\\u671d\\u9633\",\"products\":\"\\u6bdb\\u5dfe\\u3001\\u7f8a\\u76ae\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885748');
INSERT INTO `fa_admin_log` VALUES ('50', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885781');
INSERT INTO `fa_admin_log` VALUES ('51', '1', 'admin', '/admin/good/info/index', 'good 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885786');
INSERT INTO `fa_admin_log` VALUES ('52', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885802');
INSERT INTO `fa_admin_log` VALUES ('53', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885805');
INSERT INTO `fa_admin_log` VALUES ('54', '1', 'admin', '/admin/supplier/info/index', 'supplier 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885809');
INSERT INTO `fa_admin_log` VALUES ('55', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885817');
INSERT INTO `fa_admin_log` VALUES ('56', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885821');
INSERT INTO `fa_admin_log` VALUES ('57', '1', 'admin', '/admin/good/info/index', 'good 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885839');
INSERT INTO `fa_admin_log` VALUES ('58', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885844');
INSERT INTO `fa_admin_log` VALUES ('59', '1', 'admin', '/admin/good/info/index', 'good 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885850');
INSERT INTO `fa_admin_log` VALUES ('60', '1', 'admin', '/admin/good/info/index', 'good 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549885863');
INSERT INTO `fa_admin_log` VALUES ('61', '1', 'admin', '/admin/auth/rule/del/ids/104,117,118', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"104,117,118\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549886515');
INSERT INTO `fa_admin_log` VALUES ('62', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549886517');
INSERT INTO `fa_admin_log` VALUES ('63', '1', 'admin', '/admin/good/info/index', 'good 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549887332');
INSERT INTO `fa_admin_log` VALUES ('64', '1', 'admin', '/admin/good/category/index', 'good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549887338');
INSERT INTO `fa_admin_log` VALUES ('65', '1', 'admin', '/admin/auth/rule/del/ids/97,98,124,110,111,130,131', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"97,98,124,110,111,130,131\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549888321');
INSERT INTO `fa_admin_log` VALUES ('66', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549888323');
INSERT INTO `fa_admin_log` VALUES ('67', '1', 'admin', '/admin/market/supplier/add?dialog=1', 'market 供应商信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"num\":\"001\",\"company\":\"\\u4e07\\u8fbe\\u96c6\\u56e2\",\"name\":\"\\u738b\\u601d\\u806a\",\"tel\":\"1381145487\",\"address\":\"\\u5317\\u4eac\\u671d\\u9633\",\"products\":\"\\u841d\\u535c\\u3001\\u767d\\u83dc\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549891104');
INSERT INTO `fa_admin_log` VALUES ('68', '1', 'admin', '/admin/market/good/category/add?dialog=1', 'market good 商品分类管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u852c\\u83dc\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549891139');
INSERT INTO `fa_admin_log` VALUES ('69', '1', 'admin', '/admin/market/good/category/add?dialog=1', 'market good 商品分类管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6c34\\u679c\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549891146');
INSERT INTO `fa_admin_log` VALUES ('70', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892521');
INSERT INTO `fa_admin_log` VALUES ('71', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892525');
INSERT INTO `fa_admin_log` VALUES ('72', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"webwxgetmsgimg.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892563');
INSERT INTO `fa_admin_log` VALUES ('73', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892568');
INSERT INTO `fa_admin_log` VALUES ('74', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892570');
INSERT INTO `fa_admin_log` VALUES ('75', '1', 'admin', '/admin/market/good/base/info/add?dialog=1', 'market good base 商品信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"num\":\"001\",\"name\":\"\\u7ea2\\u841d\\u535c\",\"good_category_id\":\"14\",\"image\":\"\\/uploads\\/20190211\\/418278876312982c51682a7af7ed9768.jpg\",\"supplier_id\":\"2\",\"sale_price\":\"11.00\",\"stock\":\"122\",\"remark\":\"11\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892584');
INSERT INTO `fa_admin_log` VALUES ('76', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892605');
INSERT INTO `fa_admin_log` VALUES ('77', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892605');
INSERT INTO `fa_admin_log` VALUES ('78', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892618');
INSERT INTO `fa_admin_log` VALUES ('79', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892625');
INSERT INTO `fa_admin_log` VALUES ('80', '1', 'admin', '/admin/market/good/base/info/add?dialog=1', 'market good base 商品信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"num\":\"002\",\"name\":\"\\u82f9\\u679c\",\"good_category_id\":\"15\",\"image\":\"\\/uploads\\/20190211\\/f58d13c7984c7ade4da2da15c2aad197.jpg\",\"supplier_id\":\"2\",\"sale_price\":\"132.00\",\"stock\":\"3334\",\"remark\":\"22\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1549892634');
INSERT INTO `fa_admin_log` VALUES ('81', '1', 'admin', '/admin/auth/rule/del/ids/144,145', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"144,145\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550053375');
INSERT INTO `fa_admin_log` VALUES ('82', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550053379');
INSERT INTO `fa_admin_log` VALUES ('83', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056032');
INSERT INTO `fa_admin_log` VALUES ('84', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056052');
INSERT INTO `fa_admin_log` VALUES ('85', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056059');
INSERT INTO `fa_admin_log` VALUES ('86', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056168');
INSERT INTO `fa_admin_log` VALUES ('87', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056170');
INSERT INTO `fa_admin_log` VALUES ('88', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056188');
INSERT INTO `fa_admin_log` VALUES ('89', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056192');
INSERT INTO `fa_admin_log` VALUES ('90', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056203');
INSERT INTO `fa_admin_log` VALUES ('91', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056206');
INSERT INTO `fa_admin_log` VALUES ('92', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056216');
INSERT INTO `fa_admin_log` VALUES ('93', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056254');
INSERT INTO `fa_admin_log` VALUES ('94', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056270');
INSERT INTO `fa_admin_log` VALUES ('95', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056272');
INSERT INTO `fa_admin_log` VALUES ('96', '1', 'admin', '/admin/market/supplier/add?dialog=1', 'market 供应商信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"num\":\"002\",\"company\":\"\\u82cf\\u5b81\\u6613\\u8d2d\",\"name\":\"\\u9648\\u6653\\u654f\",\"tel\":\"110\",\"address\":\"\\u6c5f\\u82cf\\u5357\\u4eac\",\"products\":\"\\u97ed\\u83dc\\u3001\\u9e21\\u86cb\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056361');
INSERT INTO `fa_admin_log` VALUES ('97', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056397');
INSERT INTO `fa_admin_log` VALUES ('98', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056399');
INSERT INTO `fa_admin_log` VALUES ('99', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056401');
INSERT INTO `fa_admin_log` VALUES ('100', '1', 'admin', '/admin/ajax/upload', '', '{\"name\":\"9150e4e5ly1fuprux6hv0j2073074mxc.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056411');
INSERT INTO `fa_admin_log` VALUES ('101', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056416');
INSERT INTO `fa_admin_log` VALUES ('102', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056417');
INSERT INTO `fa_admin_log` VALUES ('103', '1', 'admin', '/admin/market/good/base/info/add?dialog=1', 'market good base 商品信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"num\":\"003\",\"name\":\"\\u97ed\\u83dc\",\"good_category_id\":\"14\",\"image\":\"\\/uploads\\/20190213\\/755bb2d85c144c6a0c1d5b19c31e59bb.jpg\",\"supplier_id\":\"3\",\"sale_price\":\"8.00\",\"stock\":\"1000\",\"remark\":\"\\u60f3\\u7684\\u4e00\\u6ce2\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056441');
INSERT INTO `fa_admin_log` VALUES ('104', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056459');
INSERT INTO `fa_admin_log` VALUES ('105', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056463');
INSERT INTO `fa_admin_log` VALUES ('106', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056468');
INSERT INTO `fa_admin_log` VALUES ('107', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056472');
INSERT INTO `fa_admin_log` VALUES ('108', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056526');
INSERT INTO `fa_admin_log` VALUES ('109', '1', 'admin', '/admin/market/stock/add/add?dialog=1', 'market stock 商品入库 添加', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"2\",\"num\":\"003\",\"name\":\"\\u7ea2\\u841d\\u535c\",\"good_category_id\":\"14\",\"buy_price\":\"0.00\",\"add_stock\":\"0\",\"supplier_id\":\"2\",\"remark\":\"\\u597d\\u5403\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056533');
INSERT INTO `fa_admin_log` VALUES ('110', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056673');
INSERT INTO `fa_admin_log` VALUES ('111', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056674');
INSERT INTO `fa_admin_log` VALUES ('112', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056675');
INSERT INTO `fa_admin_log` VALUES ('113', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056676');
INSERT INTO `fa_admin_log` VALUES ('114', '1', 'admin', '/admin/market/stock/add/edit/ids/2?dialog=1', 'market stock 商品入库 编辑', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"2\",\"num\":\"003\",\"name\":\"\\u7ea2\\u841d\\u535c\",\"good_category_id\":\"14\",\"buy_price\":\"11.00\",\"add_stock\":\"111\",\"supplier_id\":\"2\",\"remark\":\"\\u597d\\u5403\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550056683');
INSERT INTO `fa_admin_log` VALUES ('115', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"654ecdeea5f77ff9a9aa17b032b7ba48\",\"username\":\"admin\",\"captcha\":\"FWNF\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550234714');
INSERT INTO `fa_admin_log` VALUES ('116', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550235159');
INSERT INTO `fa_admin_log` VALUES ('117', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550235162');
INSERT INTO `fa_admin_log` VALUES ('118', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550235187');
INSERT INTO `fa_admin_log` VALUES ('119', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550235191');
INSERT INTO `fa_admin_log` VALUES ('120', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236653');
INSERT INTO `fa_admin_log` VALUES ('121', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236659');
INSERT INTO `fa_admin_log` VALUES ('122', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236666');
INSERT INTO `fa_admin_log` VALUES ('123', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236674');
INSERT INTO `fa_admin_log` VALUES ('124', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236721');
INSERT INTO `fa_admin_log` VALUES ('125', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236723');
INSERT INTO `fa_admin_log` VALUES ('126', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236727');
INSERT INTO `fa_admin_log` VALUES ('127', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236730');
INSERT INTO `fa_admin_log` VALUES ('128', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236733');
INSERT INTO `fa_admin_log` VALUES ('129', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236735');
INSERT INTO `fa_admin_log` VALUES ('130', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550236744');
INSERT INTO `fa_admin_log` VALUES ('131', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237150');
INSERT INTO `fa_admin_log` VALUES ('132', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237181');
INSERT INTO `fa_admin_log` VALUES ('133', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237199');
INSERT INTO `fa_admin_log` VALUES ('134', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237215');
INSERT INTO `fa_admin_log` VALUES ('135', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237220');
INSERT INTO `fa_admin_log` VALUES ('136', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237223');
INSERT INTO `fa_admin_log` VALUES ('137', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237327');
INSERT INTO `fa_admin_log` VALUES ('138', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237402');
INSERT INTO `fa_admin_log` VALUES ('139', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237405');
INSERT INTO `fa_admin_log` VALUES ('140', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237581');
INSERT INTO `fa_admin_log` VALUES ('141', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237585');
INSERT INTO `fa_admin_log` VALUES ('142', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237586');
INSERT INTO `fa_admin_log` VALUES ('143', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237621');
INSERT INTO `fa_admin_log` VALUES ('144', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237624');
INSERT INTO `fa_admin_log` VALUES ('145', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237701');
INSERT INTO `fa_admin_log` VALUES ('146', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237703');
INSERT INTO `fa_admin_log` VALUES ('147', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550237852');
INSERT INTO `fa_admin_log` VALUES ('148', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238025');
INSERT INTO `fa_admin_log` VALUES ('149', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238025');
INSERT INTO `fa_admin_log` VALUES ('150', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238025');
INSERT INTO `fa_admin_log` VALUES ('151', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238071');
INSERT INTO `fa_admin_log` VALUES ('152', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238071');
INSERT INTO `fa_admin_log` VALUES ('153', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238071');
INSERT INTO `fa_admin_log` VALUES ('154', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238417');
INSERT INTO `fa_admin_log` VALUES ('155', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238425');
INSERT INTO `fa_admin_log` VALUES ('156', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238727');
INSERT INTO `fa_admin_log` VALUES ('157', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238805');
INSERT INTO `fa_admin_log` VALUES ('158', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238807');
INSERT INTO `fa_admin_log` VALUES ('159', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238809');
INSERT INTO `fa_admin_log` VALUES ('160', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238811');
INSERT INTO `fa_admin_log` VALUES ('161', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238813');
INSERT INTO `fa_admin_log` VALUES ('162', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238845');
INSERT INTO `fa_admin_log` VALUES ('163', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238849');
INSERT INTO `fa_admin_log` VALUES ('164', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238861');
INSERT INTO `fa_admin_log` VALUES ('165', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238994');
INSERT INTO `fa_admin_log` VALUES ('166', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550238998');
INSERT INTO `fa_admin_log` VALUES ('167', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239001');
INSERT INTO `fa_admin_log` VALUES ('168', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239008');
INSERT INTO `fa_admin_log` VALUES ('169', '1', 'admin', '/admin/market/stock/add/add?dialog=1', 'market stock 商品入库 添加', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"2\",\"num\":\"001\",\"good_category_id\":\"14\",\"buy_price\":\"100\",\"add_stock\":\"50\",\"supplier_id\":\"3\",\"remark\":\"666\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239013');
INSERT INTO `fa_admin_log` VALUES ('170', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239033');
INSERT INTO `fa_admin_log` VALUES ('171', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239033');
INSERT INTO `fa_admin_log` VALUES ('172', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"3\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"3\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239033');
INSERT INTO `fa_admin_log` VALUES ('173', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239089');
INSERT INTO `fa_admin_log` VALUES ('174', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239092');
INSERT INTO `fa_admin_log` VALUES ('175', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239093');
INSERT INTO `fa_admin_log` VALUES ('176', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239093');
INSERT INTO `fa_admin_log` VALUES ('177', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239095');
INSERT INTO `fa_admin_log` VALUES ('178', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239099');
INSERT INTO `fa_admin_log` VALUES ('179', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239104');
INSERT INTO `fa_admin_log` VALUES ('180', '1', 'admin', '/admin/market/stock/add/add?dialog=1', 'market stock 商品入库 添加', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"3\",\"num\":\"001\",\"good_category_id\":\"14\",\"buy_price\":\"0.00\",\"add_stock\":\"001\",\"supplier_id\":\"2\",\"remark\":\"66\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239117');
INSERT INTO `fa_admin_log` VALUES ('181', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"3\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"3\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239122');
INSERT INTO `fa_admin_log` VALUES ('182', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239122');
INSERT INTO `fa_admin_log` VALUES ('183', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239122');
INSERT INTO `fa_admin_log` VALUES ('184', '1', 'admin', '/admin/market/stock/add/edit/ids/4?dialog=1', 'market stock 商品入库 编辑', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"3\",\"num\":\"001\",\"good_category_id\":\"14\",\"buy_price\":\"51\",\"add_stock\":\"1\",\"supplier_id\":\"2\",\"remark\":\"66\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239126');
INSERT INTO `fa_admin_log` VALUES ('185', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239279');
INSERT INTO `fa_admin_log` VALUES ('186', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239389');
INSERT INTO `fa_admin_log` VALUES ('187', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"3\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"3\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239534');
INSERT INTO `fa_admin_log` VALUES ('188', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239534');
INSERT INTO `fa_admin_log` VALUES ('189', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"company\",\"ASC\"]],\"showField\":\"company\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"company\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239534');
INSERT INTO `fa_admin_log` VALUES ('190', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239612');
INSERT INTO `fa_admin_log` VALUES ('191', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239616');
INSERT INTO `fa_admin_log` VALUES ('192', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550239619');
INSERT INTO `fa_admin_log` VALUES ('193', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240336');
INSERT INTO `fa_admin_log` VALUES ('194', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240341');
INSERT INTO `fa_admin_log` VALUES ('195', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240345');
INSERT INTO `fa_admin_log` VALUES ('196', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240571');
INSERT INTO `fa_admin_log` VALUES ('197', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240574');
INSERT INTO `fa_admin_log` VALUES ('198', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240581');
INSERT INTO `fa_admin_log` VALUES ('199', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240582');
INSERT INTO `fa_admin_log` VALUES ('200', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240628');
INSERT INTO `fa_admin_log` VALUES ('201', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240630');
INSERT INTO `fa_admin_log` VALUES ('202', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240632');
INSERT INTO `fa_admin_log` VALUES ('203', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240668');
INSERT INTO `fa_admin_log` VALUES ('204', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240670');
INSERT INTO `fa_admin_log` VALUES ('205', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240673');
INSERT INTO `fa_admin_log` VALUES ('206', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"1\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550240674');
INSERT INTO `fa_admin_log` VALUES ('207', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550241475');
INSERT INTO `fa_admin_log` VALUES ('208', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550241516');
INSERT INTO `fa_admin_log` VALUES ('209', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550241519');
INSERT INTO `fa_admin_log` VALUES ('210', '1', 'admin', '/admin/market/stock/add/add?dialog=1', 'market stock 商品入库 添加', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"2\",\"num\":\"001\",\"good_category_id\":\"14\",\"buy_price\":\"0.00\",\"add_stock\":\"122\",\"supplier_id\":\"3\",\"remark\":\"\\u52a0122\\u65a4\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550241527');
INSERT INTO `fa_admin_log` VALUES ('211', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550241932');
INSERT INTO `fa_admin_log` VALUES ('212', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550241937');
INSERT INTO `fa_admin_log` VALUES ('213', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550241947');
INSERT INTO `fa_admin_log` VALUES ('214', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"3\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"3\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550241947');
INSERT INTO `fa_admin_log` VALUES ('215', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242150');
INSERT INTO `fa_admin_log` VALUES ('216', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242157');
INSERT INTO `fa_admin_log` VALUES ('217', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"3\",\"orderBy\":[[\"company\",\"ASC\"]],\"showField\":\"company\",\"keyField\":\"id\",\"keyValue\":\"3\",\"searchField\":[\"company\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242157');
INSERT INTO `fa_admin_log` VALUES ('218', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242165');
INSERT INTO `fa_admin_log` VALUES ('219', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"3\",\"orderBy\":[[\"company\",\"ASC\"]],\"showField\":\"company\",\"keyField\":\"id\",\"keyValue\":\"3\",\"searchField\":[\"company\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242165');
INSERT INTO `fa_admin_log` VALUES ('220', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"15\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"15\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242165');
INSERT INTO `fa_admin_log` VALUES ('221', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"company\",\"ASC\"]],\"showField\":\"company\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"company\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242165');
INSERT INTO `fa_admin_log` VALUES ('222', '1', 'admin', '/admin/market/good/base/info/multi/ids/4', 'market good base 商品信息管理 批量更新', '{\"ids\":\"4\",\"params\":\"status=hidden\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242201');
INSERT INTO `fa_admin_log` VALUES ('223', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242205');
INSERT INTO `fa_admin_log` VALUES ('224', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"3\",\"orderBy\":[[\"company\",\"ASC\"]],\"showField\":\"company\",\"keyField\":\"id\",\"keyValue\":\"3\",\"searchField\":[\"company\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242205');
INSERT INTO `fa_admin_log` VALUES ('225', '1', 'admin', '/admin/market/good/base/info/multi/ids/4', 'market good base 商品信息管理 批量更新', '{\"ids\":\"4\",\"params\":\"status=hidden\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242212');
INSERT INTO `fa_admin_log` VALUES ('226', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242286');
INSERT INTO `fa_admin_log` VALUES ('227', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242289');
INSERT INTO `fa_admin_log` VALUES ('228', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242291');
INSERT INTO `fa_admin_log` VALUES ('229', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"company\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"company\",\"keyField\":\"id\",\"searchField\":[\"company\"],\"company\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242294');
INSERT INTO `fa_admin_log` VALUES ('230', '1', 'admin', '/admin/market/stock/add/add?dialog=1', 'market stock 商品入库 添加', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"2\",\"num\":\"001\",\"good_category_id\":\"14\",\"buy_price\":\"0.00\",\"add_stock\":\"111\",\"supplier_id\":\"2\",\"remark\":\"11\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550242305');
INSERT INTO `fa_admin_log` VALUES ('231', '1', 'admin', '/admin/market/good/category/index', 'market good 商品分类管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"14\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"14\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550246121');
INSERT INTO `fa_admin_log` VALUES ('232', '1', 'admin', '/admin/market/supplier/index', 'market 供应商信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"3\",\"orderBy\":[[\"company\",\"ASC\"]],\"showField\":\"company\",\"keyField\":\"id\",\"keyValue\":\"3\",\"searchField\":[\"company\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550246121');
INSERT INTO `fa_admin_log` VALUES ('233', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550246711');
INSERT INTO `fa_admin_log` VALUES ('234', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"237c0de192428cc4501c184dac321307\",\"username\":\"admin\",\"captcha\":\"R780\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550246811');
INSERT INTO `fa_admin_log` VALUES ('235', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"1e4df4552dbadb391b51d7b6ada8fbcc\",\"username\":\"admin\",\"captcha\":\"h2dp\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550246821');
INSERT INTO `fa_admin_log` VALUES ('236', '1', 'admin', '/admin/auth/admin/add?dialog=1', '权限管理 管理员管理 添加', '{\"dialog\":\"1\",\"group\":[\"6\"],\"row\":{\"username\":\"xiaomei\",\"email\":\"12@qq.com\",\"nickname\":\"\\u5c0f\\u59b9\",\"password\":\"123456\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550247242');
INSERT INTO `fa_admin_log` VALUES ('237', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550247258');
INSERT INTO `fa_admin_log` VALUES ('238', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"137,138,139,140,141,142,143,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171\",\"pid\":\"1\",\"name\":\"\\u64cd\\u4f5c\\u5458\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550247280');
INSERT INTO `fa_admin_log` VALUES ('239', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"236b3a97e7b41b6cd8e6abc82b47f2ba\",\"username\":\"xiaomei\",\"captcha\":\"assm\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550247292');
INSERT INTO `fa_admin_log` VALUES ('240', '2', 'xiaomei', '/admin/index/login', '登录', '{\"__token__\":\"2c8de534c1fe3985d1a48535d8a7e6e9\",\"username\":\"xiaomei\",\"captcha\":\"rfmh\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550247300');
INSERT INTO `fa_admin_log` VALUES ('241', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"80c5c043ea0b724bd71a39eb70b90fd0\",\"username\":\"admin\",\"captcha\":\"B6hd\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550281643');
INSERT INTO `fa_admin_log` VALUES ('242', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"12667171e6a6c01df41b04e32516433d\",\"username\":\"admin\",\"captcha\":\"bhb7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550281651');
INSERT INTO `fa_admin_log` VALUES ('243', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"61c9b86c650126c3ac11f7e6bea03ac9\",\"username\":\"admin\",\"captcha\":\"eahh\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550281656');
INSERT INTO `fa_admin_log` VALUES ('244', '1', 'admin', '/admin/market/customer/add?dialog=1', 'market 客户信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u674e\\u56db\",\"genderdata\":\"male\",\"birthdate\":\"2019-02-21\",\"tel\":\"113231\",\"address\":\"\\u5c71\\u4e1c \\u9752\\u5c9b\",\"remark\":\"\\u9752\\u5c9b...\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550283483');
INSERT INTO `fa_admin_log` VALUES ('245', '1', 'admin', '/admin/auth/rule/del/ids/178', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"178\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550286263');
INSERT INTO `fa_admin_log` VALUES ('246', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550286264');
INSERT INTO `fa_admin_log` VALUES ('247', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550286908');
INSERT INTO `fa_admin_log` VALUES ('248', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287023');
INSERT INTO `fa_admin_log` VALUES ('249', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287024');
INSERT INTO `fa_admin_log` VALUES ('250', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287025');
INSERT INTO `fa_admin_log` VALUES ('251', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287282');
INSERT INTO `fa_admin_log` VALUES ('252', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287283');
INSERT INTO `fa_admin_log` VALUES ('253', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287285');
INSERT INTO `fa_admin_log` VALUES ('254', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287286');
INSERT INTO `fa_admin_log` VALUES ('255', '1', 'admin', '/admin/market/stock/out/add?dialog=1', 'market stock 商品出库 添加', '{\"dialog\":\"1\",\"row\":{\"customer_id\":\"2\",\"good_id\":\"2\",\"num\":\"001\",\"buy_price\":\"100\",\"add_stock\":\"25\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287298');
INSERT INTO `fa_admin_log` VALUES ('256', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287422');
INSERT INTO `fa_admin_log` VALUES ('257', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"2\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"2\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287422');
INSERT INTO `fa_admin_log` VALUES ('258', '1', 'admin', '/admin/market/stock/out/edit/ids/7?dialog=1', 'market stock 商品出库 编辑', '{\"dialog\":\"1\",\"row\":{\"customer_id\":\"2\",\"good_id\":\"2\",\"num\":\"001\",\"buy_price\":\"1110.00\",\"add_stock\":\"251\"},\"ids\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287427');
INSERT INTO `fa_admin_log` VALUES ('259', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287894');
INSERT INTO `fa_admin_log` VALUES ('260', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287895');
INSERT INTO `fa_admin_log` VALUES ('261', '1', 'admin', '/admin/market/customer/add?dialog=1', 'market 客户信息管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5f20\\u5927\\u5988\",\"genderdata\":\"male\",\"birthdate\":\"2019-02-16\",\"tel\":\"113231\",\"address\":\"\\u5c71\\u4e1c \\u9752\\u5c9b\",\"remark\":\"\\u4e0a\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287917');
INSERT INTO `fa_admin_log` VALUES ('262', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287924');
INSERT INTO `fa_admin_log` VALUES ('263', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287925');
INSERT INTO `fa_admin_log` VALUES ('264', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287926');
INSERT INTO `fa_admin_log` VALUES ('265', '1', 'admin', '/admin/market/stock/out/add?dialog=1', 'market stock 商品出库 添加', '{\"dialog\":\"1\",\"row\":{\"customer_id\":\"3\",\"good_id\":\"3\",\"num\":\"1\",\"buy_price\":\"0.00\",\"add_stock\":\"1111\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287953');
INSERT INTO `fa_admin_log` VALUES ('266', '1', 'admin', '/admin/market/customer/index', 'market 客户信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287981');
INSERT INTO `fa_admin_log` VALUES ('267', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287982');
INSERT INTO `fa_admin_log` VALUES ('268', '1', 'admin', '/admin/market/stock/out/add?dialog=1', 'market stock 商品出库 添加', '{\"dialog\":\"1\",\"row\":{\"customer_id\":\"3\",\"good_id\":\"3\",\"num\":\"001\",\"buy_price\":\"21\",\"add_stock\":\"100\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550287991');
INSERT INTO `fa_admin_log` VALUES ('269', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550289430');
INSERT INTO `fa_admin_log` VALUES ('270', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550289578');
INSERT INTO `fa_admin_log` VALUES ('271', '1', 'admin', '/admin/market/good/back/add?dialog=1', 'market good 商品退货 添加', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"3\",\"num\":\"001\",\"backdate\":\"2019-02-06\",\"back_stock\":\"100\",\"remark\":\"\\u574f\\u4e86\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550289587');
INSERT INTO `fa_admin_log` VALUES ('272', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550289593');
INSERT INTO `fa_admin_log` VALUES ('273', '1', 'admin', '/admin/market/good/base/info/index', 'market good base 商品信息管理 查看', '{\"q_word\":[\"\"],\"pageNumber\":\"1\",\"pageSize\":\"10\",\"andOr\":\"AND\",\"orderBy\":[[\"name\",\"ASC\"]],\"searchTable\":\"tbl\",\"showField\":\"name\",\"keyField\":\"id\",\"searchField\":[\"name\"],\"name\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550289600');
INSERT INTO `fa_admin_log` VALUES ('274', '1', 'admin', '/admin/market/good/back/add?dialog=1', 'market good 商品退货 添加', '{\"dialog\":\"1\",\"row\":{\"good_id\":\"4\",\"num\":\"001\",\"backdate\":\"2019-02-16\",\"back_stock\":\"1\",\"remark\":\"\\u574f\\u4e86\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550289606');
INSERT INTO `fa_admin_log` VALUES ('275', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"c4870612728f39b38d37756d48d1268c\",\"username\":\"admin\",\"captcha\":\"MTCE\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290673');
INSERT INTO `fa_admin_log` VALUES ('276', '1', 'admin', '/admin/auth/rule/edit/ids/1?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"admin\\/auth\\/adminlog\",\"title\":\"\\u63a7\\u5236\\u53f0\",\"icon\":\"fa fa-dashboard\",\"weigh\":\"143\",\"condition\":\"\",\"remark\":\"Dashboard tips\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290764');
INSERT INTO `fa_admin_log` VALUES ('277', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290765');
INSERT INTO `fa_admin_log` VALUES ('278', '1', 'admin', '/admin/auth/rule/edit/ids/1?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"auth\\/adminlog\",\"title\":\"\\u63a7\\u5236\\u53f0\",\"icon\":\"fa fa-dashboard\",\"weigh\":\"143\",\"condition\":\"\",\"remark\":\"Dashboard tips\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290798');
INSERT INTO `fa_admin_log` VALUES ('279', '1', 'admin', '/admin/auth/rule/edit/ids/166?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"137\",\"name\":\"market\\/stock\\/add\",\"title\":\"\\u5546\\u54c1\\u5165\\u5e93\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"166\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290867');
INSERT INTO `fa_admin_log` VALUES ('280', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290867');
INSERT INTO `fa_admin_log` VALUES ('281', '1', 'admin', '/admin/auth/rule/del/ids/6', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290958');
INSERT INTO `fa_admin_log` VALUES ('282', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290958');
INSERT INTO `fa_admin_log` VALUES ('283', '1', 'admin', '/admin/auth/rule/edit/ids/7?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"137\",\"name\":\"general\\/attachment\",\"title\":\"\\u540e\\u53f0\\u56fe\\u7247\\u7ba1\\u7406\",\"icon\":\"fa fa-file-image-o\",\"weigh\":\"53\",\"condition\":\"\",\"remark\":\"Attachment tips\",\"status\":\"normal\"},\"ids\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290978');
INSERT INTO `fa_admin_log` VALUES ('284', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550290978');
INSERT INTO `fa_admin_log` VALUES ('285', '1', 'admin', '/admin/auth/rule/del/ids/66,67,73,79', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"66,67,73,79\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291041');
INSERT INTO `fa_admin_log` VALUES ('286', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291041');
INSERT INTO `fa_admin_log` VALUES ('287', '1', 'admin', '/admin/auth/rule/del/ids/3', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291061');
INSERT INTO `fa_admin_log` VALUES ('288', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291062');
INSERT INTO `fa_admin_log` VALUES ('289', '1', 'admin', '/admin/auth/rule/edit/ids/2?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"general\",\"title\":\"\\u4e2a\\u4eba\\u8d26\\u6237\\u914d\\u7f6e\",\"icon\":\"fa fa-cogs\",\"weigh\":\"137\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291101');
INSERT INTO `fa_admin_log` VALUES ('290', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291102');
INSERT INTO `fa_admin_log` VALUES ('291', '1', 'admin', '/admin/auth/rule/del/ids/4', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291157');
INSERT INTO `fa_admin_log` VALUES ('292', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291158');
INSERT INTO `fa_admin_log` VALUES ('293', '1', 'admin', '/admin/auth/rule/edit/ids/9?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"5\",\"name\":\"auth\\/admin\",\"title\":\"\\u7cfb\\u7edf\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"weigh\":\"118\",\"condition\":\"\",\"remark\":\"Admin tips\",\"status\":\"normal\"},\"ids\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291207');
INSERT INTO `fa_admin_log` VALUES ('294', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291207');
INSERT INTO `fa_admin_log` VALUES ('295', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291235');
INSERT INTO `fa_admin_log` VALUES ('296', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"139,140,141,142,143,153,154,155,156,157,160,161,162,163,164,167,168,169,170,171,138,152,159,158,166,137,151\",\"pid\":\"1\",\"name\":\"\\u666e\\u901a\\u5143\\u5de5\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291247');
INSERT INTO `fa_admin_log` VALUES ('297', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291267');
INSERT INTO `fa_admin_log` VALUES ('298', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"139,140,141,142,143,153,154,155,156,157,160,161,162,163,164,167,168,169,170,171,138,152,159,158,166,137,151\",\"pid\":\"1\",\"name\":\"\\u666e\\u901a\\u5458\\u5de5\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291274');
INSERT INTO `fa_admin_log` VALUES ('299', '1', 'admin', '/admin/auth/group/del/ids/2,3,5,4', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"2,3,5,4\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291281');
INSERT INTO `fa_admin_log` VALUES ('300', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291286');
INSERT INTO `fa_admin_log` VALUES ('301', '1', 'admin', '/admin/auth/group/del/ids/2', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291291');
INSERT INTO `fa_admin_log` VALUES ('302', '1', 'admin', '/admin/auth/admin/edit/ids/2?dialog=1', '权限管理 系统用户管理 编辑', '{\"dialog\":\"1\",\"group\":[\"6\"],\"row\":{\"username\":\"xiaomei\",\"email\":\"12@qq.com\",\"nickname\":\"\\u674e\\u6885\",\"password\":\"\",\"loginfailure\":\"0\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291324');
INSERT INTO `fa_admin_log` VALUES ('303', '1', 'admin', '/admin/auth/admin/edit/ids/2?dialog=1', '权限管理 系统用户管理 编辑', '{\"dialog\":\"1\",\"group\":[\"6\"],\"row\":{\"username\":\"limei\",\"email\":\"12@qq.com\",\"nickname\":\"\\u674e\\u6885\",\"password\":\"\",\"loginfailure\":\"0\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291339');
INSERT INTO `fa_admin_log` VALUES ('304', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291364');
INSERT INTO `fa_admin_log` VALUES ('305', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"139,140,141,142,143,153,154,155,156,157,160,161,162,163,164,167,168,169,170,171,138,152,159,158,166,137,151\",\"pid\":\"1\",\"name\":\"\\u666e\\u901a\\u5458\\u5de5\\u7ec4\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291368');
INSERT INTO `fa_admin_log` VALUES ('306', '1', 'admin', '/admin/auth/rule/edit/ids/151?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"137\",\"name\":\"market\\/good\",\"title\":\"\\u5546\\u54c1\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"151\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291461');
INSERT INTO `fa_admin_log` VALUES ('307', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291461');
INSERT INTO `fa_admin_log` VALUES ('308', '1', 'admin', '/admin/auth/rule/edit/ids/151?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"market\\/good\",\"title\":\"\\u5546\\u54c1\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"151\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291507');
INSERT INTO `fa_admin_log` VALUES ('309', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291508');
INSERT INTO `fa_admin_log` VALUES ('310', '1', 'admin', '/admin/auth/rule/edit/ids/152?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"market\\/good\\/category\",\"title\":\"\\u5546\\u54c1\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"152\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291538');
INSERT INTO `fa_admin_log` VALUES ('311', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291538');
INSERT INTO `fa_admin_log` VALUES ('312', '1', 'admin', '/admin/auth/rule/edit/ids/190?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"market\\/good\\/back\",\"title\":\"\\u5546\\u54c1\\u9000\\u8d27\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"190\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291565');
INSERT INTO `fa_admin_log` VALUES ('313', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291566');
INSERT INTO `fa_admin_log` VALUES ('314', '1', 'admin', '/admin/auth/rule/edit/ids/159?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"market\\/good\\/base\\/info\",\"title\":\"\\u5546\\u54c1\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"159\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291587');
INSERT INTO `fa_admin_log` VALUES ('315', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291587');
INSERT INTO `fa_admin_log` VALUES ('316', '1', 'admin', '/admin/auth/rule/del/ids/151,158', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"151,158\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291603');
INSERT INTO `fa_admin_log` VALUES ('317', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291604');
INSERT INTO `fa_admin_log` VALUES ('318', '1', 'admin', '/admin/auth/rule/edit/ids/166?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"market\\/stock\\/add\",\"title\":\"\\u5546\\u54c1\\u5165\\u5e93\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"166\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291613');
INSERT INTO `fa_admin_log` VALUES ('319', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291613');
INSERT INTO `fa_admin_log` VALUES ('320', '1', 'admin', '/admin/auth/rule/edit/ids/184?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"market\\/stock\\/out\",\"title\":\"\\u5546\\u54c1\\u51fa\\u5e93\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"184\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291625');
INSERT INTO `fa_admin_log` VALUES ('321', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291625');
INSERT INTO `fa_admin_log` VALUES ('322', '1', 'admin', '/admin/auth/rule/edit/ids/172?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"market\\/customer\",\"title\":\"\\u5ba2\\u6237\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"172\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291661');
INSERT INTO `fa_admin_log` VALUES ('323', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291662');
INSERT INTO `fa_admin_log` VALUES ('324', '1', 'admin', '/admin/auth/rule/edit/ids/138?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"market\\/supplier\",\"title\":\"\\u4f9b\\u5e94\\u5546\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"138\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291669');
INSERT INTO `fa_admin_log` VALUES ('325', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291669');
INSERT INTO `fa_admin_log` VALUES ('326', '1', 'admin', '/admin/auth/rule/del/ids/165', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"165\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291682');
INSERT INTO `fa_admin_log` VALUES ('327', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291682');
INSERT INTO `fa_admin_log` VALUES ('328', '1', 'admin', '/admin/auth/rule/edit/ids/7?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"general\\/attachment\",\"title\":\"\\u540e\\u53f0\\u56fe\\u7247\\u7ba1\\u7406\",\"icon\":\"fa fa-file-image-o\",\"weigh\":\"53\",\"condition\":\"\",\"remark\":\"Attachment tips\",\"status\":\"normal\"},\"ids\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291688');
INSERT INTO `fa_admin_log` VALUES ('329', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291688');
INSERT INTO `fa_admin_log` VALUES ('330', '1', 'admin', '/admin/auth/rule/del/ids/137', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"137\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291695');
INSERT INTO `fa_admin_log` VALUES ('331', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291695');
INSERT INTO `fa_admin_log` VALUES ('332', '1', 'admin', '/admin/auth/rule/edit/ids/1?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"auth\\/adminlog\",\"title\":\"\\u63a7\\u5236\\u53f0\",\"icon\":\"fa fa-dashboard\",\"weigh\":\"143\",\"condition\":\"\",\"remark\":\"Dashboard tips\",\"status\":\"normal\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291826');
INSERT INTO `fa_admin_log` VALUES ('333', '1', 'admin', '/admin/auth/rule/del/ids/1', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291860');
INSERT INTO `fa_admin_log` VALUES ('334', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291860');
INSERT INTO `fa_admin_log` VALUES ('335', '1', 'admin', '/admin/auth/rule/edit/ids/8?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"general\\/profile\",\"title\":\"\\u4e2a\\u4eba\\u8d26\\u6237\\u914d\\u7f6e\",\"icon\":\"fa fa-user\",\"weigh\":\"34\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291906');
INSERT INTO `fa_admin_log` VALUES ('336', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291906');
INSERT INTO `fa_admin_log` VALUES ('337', '1', 'admin', '/admin/auth/rule/del/ids/2', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291936');
INSERT INTO `fa_admin_log` VALUES ('338', '1', 'admin', '/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550291936');
INSERT INTO `fa_admin_log` VALUES ('339', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"46da79088d346236ac197d6459389458\",\"username\":\"admin\",\"captcha\":\"K5zt\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550292928');
INSERT INTO `fa_admin_log` VALUES ('340', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"06c4e3d1ee04834b8ad0d97ef4fb92d0\",\"username\":\"admin\",\"captcha\":\"ALWV\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550293355');
INSERT INTO `fa_admin_log` VALUES ('341', '0', 'Unknown', '/admin/index/login.html', '登录', '{\"__token__\":\"d298bcbbdcba1706c9f9a92a3d8ff4a9\",\"username\":\"liushuiwen\",\"captcha\":\"mmwk\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550294569');
INSERT INTO `fa_admin_log` VALUES ('342', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"b33da79b123cf0c55299097683ade1e0\",\"username\":\"admin\",\"captcha\":\"jf6m\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550294766');
INSERT INTO `fa_admin_log` VALUES ('343', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550296322');
INSERT INTO `fa_admin_log` VALUES ('344', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"8,23,29,30,31,32,33,34,139,153,160,167,173,185,191,7,138,152,159,166,172,184,190\",\"pid\":\"1\",\"name\":\"\\u666e\\u901a\\u5458\\u5de5\\u7ec4\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550296399');
INSERT INTO `fa_admin_log` VALUES ('345', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550296432');
INSERT INTO `fa_admin_log` VALUES ('346', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"8,29,30,31,32,33,34,139,153,160,167,138,152,159,166\",\"pid\":\"1\",\"name\":\"\\u666e\\u901a\\u5458\\u5de5\\u7ec4\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550296522');
INSERT INTO `fa_admin_log` VALUES ('347', '2', 'limei', '/admin/index/login', '登录', '{\"__token__\":\"551914e992921cbb165ded0c8a7d59de\",\"username\":\"limei\",\"captcha\":\"YBCE\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550296541');
INSERT INTO `fa_admin_log` VALUES ('348', '2', 'limei', '/admin/general.profile/update', '个人账户配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"email\":\"12@qq.com\",\"nickname\":\"\\u674e\\u6885\",\"password\":\"999999\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550296561');
INSERT INTO `fa_admin_log` VALUES ('349', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"62adc568abcd42c7a375f72a0c2cb117\",\"username\":\"admin\",\"captcha\":\"AYVE\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '1550296595');

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES ('1', '1', '0', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES ('2', '1', '0', '/uploads/20190211/418278876312982c51682a7af7ed9768.jpg', '177', '141', 'jpg', '0', '16882', 'image/jpeg', '', '1549879664', '1549879664', '1549879664', 'local', 'c2678976c4834fdd0cc9249c3232a28565071571');
INSERT INTO `fa_attachment` VALUES ('3', '1', '0', '/uploads/20190211/f58d13c7984c7ade4da2da15c2aad197.jpg', '390', '390', 'jpg', '0', '12936', 'image/jpeg', '', '1549879774', '1549879774', '1549879774', 'local', '834b58b8966b644dcfaea4c0a0d051abdd2ad6e3');
INSERT INTO `fa_attachment` VALUES ('4', '1', '0', '/uploads/20190211/418278876312982c51682a7af7ed9768.jpg', '177', '141', 'jpg', '0', '16882', 'image/jpeg', '', '1549892563', '1549892563', '1549892563', 'local', 'c2678976c4834fdd0cc9249c3232a28565071571');
INSERT INTO `fa_attachment` VALUES ('5', '1', '0', '/uploads/20190213/755bb2d85c144c6a0c1d5b19c31e59bb.jpg', '255', '256', 'jpg', '0', '14716', 'image/jpeg', '', '1550056411', '1550056411', '1550056411', 'local', '0673be01f0c3f177cdc0fe16afce60231e860799');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `fa_auth_group` VALUES ('6', '1', '普通员工组', '8,29,30,31,32,33,34,139,153,160,167,138,152,159,166', '1549885577', '1550296522', 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES ('1', '1');
INSERT INTO `fa_auth_group_access` VALUES ('2', '6');

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('7', 'file', '0', 'general/attachment', '后台图片管理', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1550291688', '53', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('8', 'file', '0', 'general/profile', '个人账户配置', 'fa fa-user', '', '', '1', '1497429920', '1550291905', '34', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', '系统用户管理', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1550291207', '118', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('138', 'file', '0', 'market/supplier', '供应商信息管理', 'fa fa-circle-o', '', '', '1', '1549888965', '1550291669', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('139', 'file', '138', 'market/supplier/index', '查看', 'fa fa-circle-o', '', '', '0', '1549888965', '1549890750', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('140', 'file', '138', 'market/supplier/add', '添加', 'fa fa-circle-o', '', '', '0', '1549888965', '1549890750', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('141', 'file', '138', 'market/supplier/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1549888965', '1549890750', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('142', 'file', '138', 'market/supplier/del', '删除', 'fa fa-circle-o', '', '', '0', '1549888965', '1549890750', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('143', 'file', '138', 'market/supplier/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1549888965', '1549890750', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('152', 'file', '0', 'market/good/category', '商品分类管理', 'fa fa-circle-o', '', '', '1', '1549890723', '1550291538', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('153', 'file', '152', 'market/good/category/index', '查看', 'fa fa-circle-o', '', '', '0', '1549890723', '1549890723', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('154', 'file', '152', 'market/good/category/add', '添加', 'fa fa-circle-o', '', '', '0', '1549890723', '1549890723', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('155', 'file', '152', 'market/good/category/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1549890723', '1549890723', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('156', 'file', '152', 'market/good/category/del', '删除', 'fa fa-circle-o', '', '', '0', '1549890723', '1549890723', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('157', 'file', '152', 'market/good/category/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1549890723', '1549890723', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('159', 'file', '0', 'market/good/base/info', '商品信息管理', 'fa fa-circle-o', '', '', '1', '1549891014', '1550291587', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('160', 'file', '159', 'market/good/base/info/index', '查看', 'fa fa-circle-o', '', '', '0', '1549891014', '1549891014', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('161', 'file', '159', 'market/good/base/info/add', '添加', 'fa fa-circle-o', '', '', '0', '1549891014', '1549891014', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('162', 'file', '159', 'market/good/base/info/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1549891014', '1549891014', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('163', 'file', '159', 'market/good/base/info/del', '删除', 'fa fa-circle-o', '', '', '0', '1549891014', '1549891014', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('164', 'file', '159', 'market/good/base/info/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1549891014', '1549891014', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('166', 'file', '0', 'market/stock/add', '商品入库管理', 'fa fa-circle-o', '', '', '1', '1549891050', '1550291613', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('167', 'file', '166', 'market/stock/add/index', '查看', 'fa fa-circle-o', '', '', '0', '1549891050', '1549891050', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('168', 'file', '166', 'market/stock/add/add', '添加', 'fa fa-circle-o', '', '', '0', '1549891050', '1549891050', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('169', 'file', '166', 'market/stock/add/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1549891050', '1549891050', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('170', 'file', '166', 'market/stock/add/del', '删除', 'fa fa-circle-o', '', '', '0', '1549891050', '1549891050', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('171', 'file', '166', 'market/stock/add/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1549891050', '1549891050', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('172', 'file', '0', 'market/customer', '客户信息管理', 'fa fa-circle-o', '', '', '1', '1550283420', '1550291661', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('173', 'file', '172', 'market/customer/index', '查看', 'fa fa-circle-o', '', '', '0', '1550283420', '1550283420', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('174', 'file', '172', 'market/customer/add', '添加', 'fa fa-circle-o', '', '', '0', '1550283420', '1550283420', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('175', 'file', '172', 'market/customer/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1550283420', '1550283420', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('176', 'file', '172', 'market/customer/del', '删除', 'fa fa-circle-o', '', '', '0', '1550283420', '1550283420', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('177', 'file', '172', 'market/customer/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1550283420', '1550283420', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('184', 'file', '0', 'market/stock/out', '商品出库管理', 'fa fa-circle-o', '', '', '1', '1550286274', '1550291624', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('185', 'file', '184', 'market/stock/out/index', '查看', 'fa fa-circle-o', '', '', '0', '1550286274', '1550286274', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('186', 'file', '184', 'market/stock/out/add', '添加', 'fa fa-circle-o', '', '', '0', '1550286274', '1550286274', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('187', 'file', '184', 'market/stock/out/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1550286274', '1550286274', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('188', 'file', '184', 'market/stock/out/del', '删除', 'fa fa-circle-o', '', '', '0', '1550286274', '1550286274', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('189', 'file', '184', 'market/stock/out/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1550286274', '1550286274', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('190', 'file', '0', 'market/good/back', '商品退货管理', 'fa fa-circle-o', '', '', '1', '1550289071', '1550291565', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('191', 'file', '190', 'market/good/back/index', '查看', 'fa fa-circle-o', '', '', '0', '1550289071', '1550289071', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('192', 'file', '190', 'market/good/back/add', '添加', 'fa fa-circle-o', '', '', '0', '1550289071', '1550289071', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('193', 'file', '190', 'market/good/back/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1550289071', '1550289071', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('194', 'file', '190', 'market/good/back/del', '删除', 'fa fa-circle-o', '', '', '0', '1550289071', '1550289071', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('195', 'file', '190', 'market/good/back/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1550289071', '1550289071', '0', 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `fa_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `fa_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `fa_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `fa_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `fa_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `fa_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `fa_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `fa_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `fa_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `fa_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `fa_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `fa_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '超市管理系统', '', 'required', '');
INSERT INTO `fa_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of fa_ems
-- ----------------------------

-- ----------------------------
-- Table structure for fa_market_customer
-- ----------------------------
DROP TABLE IF EXISTS `fa_market_customer`;
CREATE TABLE `fa_market_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `birthdate` date DEFAULT NULL COMMENT '出生日期',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '住址',
  `remark` text NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='客户信息表';

-- ----------------------------
-- Records of fa_market_customer
-- ----------------------------
INSERT INTO `fa_market_customer` VALUES ('2', '李四', 'male', '2019-02-21', '113231', '山东 青岛', '青岛...', '1550283483');
INSERT INTO `fa_market_customer` VALUES ('3', '张大妈', 'male', '2019-02-16', '113231', '山东 青岛', '上', '1550287916');

-- ----------------------------
-- Table structure for fa_market_good_back
-- ----------------------------
DROP TABLE IF EXISTS `fa_market_good_back`;
CREATE TABLE `fa_market_good_back` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `good_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `num` varchar(100) NOT NULL DEFAULT '' COMMENT '商品编号',
  `backdate` date DEFAULT NULL COMMENT '退货日期',
  `back_stock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '退货数量',
  `remark` text NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品退货';

-- ----------------------------
-- Records of fa_market_good_back
-- ----------------------------
INSERT INTO `fa_market_good_back` VALUES ('7', '3', '001', '2019-02-06', '100', '坏了', '1550289587');
INSERT INTO `fa_market_good_back` VALUES ('8', '4', '001', '2019-02-16', '1', '坏了', '1550289606');

-- ----------------------------
-- Table structure for fa_market_good_base_info
-- ----------------------------
DROP TABLE IF EXISTS `fa_market_good_base_info`;
CREATE TABLE `fa_market_good_base_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `num` varchar(100) NOT NULL DEFAULT '' COMMENT '编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `good_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品类别',
  `image` varchar(256) NOT NULL DEFAULT '' COMMENT '图片',
  `supplier_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '供应商名称',
  `sale_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '销售价格',
  `stock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `remark` text NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品信息表';

-- ----------------------------
-- Records of fa_market_good_base_info
-- ----------------------------
INSERT INTO `fa_market_good_base_info` VALUES ('2', '001', '红萝卜', '14', '/uploads/20190211/418278876312982c51682a7af7ed9768.jpg', '2', '11.00', '355', '11', '1549892584', '1550242305');
INSERT INTO `fa_market_good_base_info` VALUES ('3', '002', '苹果', '15', '/uploads/20190211/f58d13c7984c7ade4da2da15c2aad197.jpg', '2', '132.00', '2123', '22', '1549892634', '1550287991');
INSERT INTO `fa_market_good_base_info` VALUES ('4', '003', '韭菜', '14', '/uploads/20190213/755bb2d85c144c6a0c1d5b19c31e59bb.jpg', '3', '8.00', '1000', '想的一波', '1550056441', '1550242212');

-- ----------------------------
-- Table structure for fa_market_good_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_market_good_category`;
CREATE TABLE `fa_market_good_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品分类表';

-- ----------------------------
-- Records of fa_market_good_category
-- ----------------------------
INSERT INTO `fa_market_good_category` VALUES ('14', '蔬菜');
INSERT INTO `fa_market_good_category` VALUES ('15', '水果');

-- ----------------------------
-- Table structure for fa_market_stock_add
-- ----------------------------
DROP TABLE IF EXISTS `fa_market_stock_add`;
CREATE TABLE `fa_market_stock_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `good_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `num` varchar(100) NOT NULL DEFAULT '' COMMENT '编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `good_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品类别',
  `buy_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '入库价格',
  `add_stock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入库数量',
  `supplier_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '供应商名称',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作员名称',
  `remark` text NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品入库';

-- ----------------------------
-- Records of fa_market_stock_add
-- ----------------------------
INSERT INTO `fa_market_stock_add` VALUES ('2', '2', '003', '红萝卜', '14', '11.00', '111', '2', '1', '好吃', '1550056533');
INSERT INTO `fa_market_stock_add` VALUES ('3', '2', '001', '', '14', '100.00', '50', '3', '0', '666', '1550239013');
INSERT INTO `fa_market_stock_add` VALUES ('4', '3', '001', '', '14', '51.00', '1', '2', '0', '66', '1550239117');
INSERT INTO `fa_market_stock_add` VALUES ('5', '2', '001', '红萝卜', '14', '0.00', '122', '3', '0', '加122斤', '1550241527');
INSERT INTO `fa_market_stock_add` VALUES ('6', '2', '001', '红萝卜', '14', '0.00', '111', '2', '1', '11', '1550242305');

-- ----------------------------
-- Table structure for fa_market_stock_out
-- ----------------------------
DROP TABLE IF EXISTS `fa_market_stock_out`;
CREATE TABLE `fa_market_stock_out` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '客户id',
  `good_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `num` varchar(100) NOT NULL DEFAULT '' COMMENT '商品编号',
  `buy_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '出库价格',
  `add_stock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '出库数量',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作员名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品出库';

-- ----------------------------
-- Records of fa_market_stock_out
-- ----------------------------
INSERT INTO `fa_market_stock_out` VALUES ('7', '2', '2', '001', '1110.00', '251', '0', '1550287297');
INSERT INTO `fa_market_stock_out` VALUES ('8', '3', '3', '1', '0.00', '1111', '1', '1550287953');
INSERT INTO `fa_market_stock_out` VALUES ('9', '3', '3', '001', '21.00', '100', '1', '1550287991');

-- ----------------------------
-- Table structure for fa_market_supplier
-- ----------------------------
DROP TABLE IF EXISTS `fa_market_supplier`;
CREATE TABLE `fa_market_supplier` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `num` varchar(100) NOT NULL DEFAULT '' COMMENT '供应商编号',
  `company` varchar(50) NOT NULL DEFAULT '' COMMENT '供应商名称',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `products` text NOT NULL COMMENT '主要产品',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='供应商信息表';

-- ----------------------------
-- Records of fa_market_supplier
-- ----------------------------
INSERT INTO `fa_market_supplier` VALUES ('2', '001', '万达集团', '王思聪', '1381145487', '北京朝阳', '萝卜、白菜', '1549891104', '1549891104');
INSERT INTO `fa_market_supplier` VALUES ('3', '002', '苏宁易购', '陈晓敏', '110', '江苏南京', '韭菜、鸡蛋', '1550056361', '1550056361');

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';

-- ----------------------------
-- Records of fa_sms
-- ----------------------------

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for fa_test_copy
-- ----------------------------
DROP TABLE IF EXISTS `fa_test_copy`;
CREATE TABLE `fa_test_copy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test_copy
-- ----------------------------
INSERT INTO `fa_test_copy` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for fa_test_copy1
-- ----------------------------
DROP TABLE IF EXISTS `fa_test_copy1`;
CREATE TABLE `fa_test_copy1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test_copy1
-- ----------------------------
INSERT INTO `fa_test_copy1` VALUES ('1', '0', '12', '/assets/img/avatar.png', '描述', 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加入时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES ('1', '1', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '/assets/img/avatar.png', '0', '0', '2017-04-15', '', '0.00', '0', '1', '1', '1516170492', '1516171614', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1516171614', '', 'normal', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员组表';

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for fa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员余额变动表';

-- ----------------------------
-- Records of fa_user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员规则表';

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `fa_user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `fa_user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `fa_user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `fa_user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `fa_user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `fa_user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `fa_user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `fa_user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `fa_user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `fa_user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `fa_user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员积分变动表';

-- ----------------------------
-- Records of fa_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员Token表';

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='版本表';

-- ----------------------------
-- Records of fa_version
-- ----------------------------
INSERT INTO `fa_version` VALUES ('1', '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', '1', '1520425318', '0', '0', 'normal');
