/*
 Navicat Premium Data Transfer

 Source Server         : myrds
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : rm-2ze625v62jfr42lrbao.mysql.rds.aliyuncs.com:3306
 Source Schema         : news

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 05/04/2021 21:45:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) DEFAULT NULL COMMENT '新闻标题',
  `url` varchar(200) DEFAULT NULL COMMENT '文件url',
  `content` longtext COMMENT '新闻内容',
  `type` int(2) DEFAULT NULL COMMENT '类型1:推荐、2:要闻、3:视频、4:娱乐、5：体育、6:财经、7:科技、8:军事、9、游戏、10:学校公告、11:校园新闻、12:党政新闻、13:高校教育新闻、14:关于考研',
  `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for news_collection
-- ----------------------------
DROP TABLE IF EXISTS `news_collection`;
CREATE TABLE `news_collection` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `news_id` bigint(10) DEFAULT NULL COMMENT '新闻id',
  `user_id` bigint(10) DEFAULT NULL COMMENT '用户id',
  `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='新闻收藏';

-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `news_id` bigint(10) DEFAULT NULL COMMENT '新闻id',
  `user_id` bigint(10) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `content` varchar(200) DEFAULT NULL COMMENT '评论内容',
  `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='新闻评论';

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(30) DEFAULT NULL COMMENT '用户密码',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `head_img` varchar(200) DEFAULT NULL COMMENT '头像',
  `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1378681230920278018 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
                             `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
                             `user_id` bigint(10) DEFAULT NULL COMMENT '用户id',
                             `feedback` varchar(200) DEFAULT NULL COMMENT '反馈内容',
                             `create_at` bigint(13) DEFAULT NULL COMMENT '创建时间',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


SET FOREIGN_KEY_CHECKS = 1;
