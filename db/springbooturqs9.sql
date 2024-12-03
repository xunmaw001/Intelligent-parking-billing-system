-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbooturqs9
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbooturqs9`
--

/*!40000 DROP DATABASE IF EXISTS `springbooturqs9`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbooturqs9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbooturqs9`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='在线交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2023-05-17 08:29:39',1,1,'提问1','回复1',1),(72,'2023-05-17 08:29:39',2,2,'提问2','回复2',2),(73,'2023-05-17 08:29:39',3,3,'提问3','回复3',3),(74,'2023-05-17 08:29:39',4,4,'提问4','回复4',4),(75,'2023-05-17 08:29:39',5,5,'提问5','回复5',5),(76,'2023-05-17 08:29:39',6,6,'提问6','回复6',6),(77,'2023-05-17 08:29:39',7,7,'提问7','回复7',7),(78,'2023-05-17 08:29:39',8,8,'提问8','回复8',8);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweifenlei`
--

DROP TABLE IF EXISTS `cheweifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='车位分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweifenlei`
--

LOCK TABLES `cheweifenlei` WRITE;
/*!40000 ALTER TABLE `cheweifenlei` DISABLE KEYS */;
INSERT INTO `cheweifenlei` VALUES (21,'2023-05-17 08:29:39','车位类型1'),(22,'2023-05-17 08:29:39','车位类型2'),(23,'2023-05-17 08:29:39','车位类型3'),(24,'2023-05-17 08:29:39','车位类型4'),(25,'2023-05-17 08:29:39','车位类型5'),(26,'2023-05-17 08:29:39','车位类型6'),(27,'2023-05-17 08:29:39','车位类型7'),(28,'2023-05-17 08:29:39','车位类型8');
/*!40000 ALTER TABLE `cheweifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweixinxi`
--

DROP TABLE IF EXISTS `cheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `quyu` varchar(200) DEFAULT NULL COMMENT '区域',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `cheweitupian` longtext COMMENT '车位图片',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `xiaoshidanjia` int(11) DEFAULT NULL COMMENT '小时单价',
  `cheweixiangqing` longtext COMMENT '车位详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweibianhao` (`cheweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweixinxi`
--

LOCK TABLES `cheweixinxi` WRITE;
/*!40000 ALTER TABLE `cheweixinxi` DISABLE KEYS */;
INSERT INTO `cheweixinxi` VALUES (31,'2023-05-17 08:29:39','停车场名称1','A区','1111111111','车位名称1','车位类型1','upload/cheweixinxi_cheweitupian1.jpg,upload/cheweixinxi_cheweitupian2.jpg,upload/cheweixinxi_cheweitupian3.jpg','车位位置1','已使用',1,'车位详情1'),(32,'2023-05-17 08:29:39','停车场名称2','A区','2222222222','车位名称2','车位类型2','upload/cheweixinxi_cheweitupian2.jpg,upload/cheweixinxi_cheweitupian3.jpg,upload/cheweixinxi_cheweitupian4.jpg','车位位置2','已使用',2,'车位详情2'),(33,'2023-05-17 08:29:39','停车场名称3','A区','3333333333','车位名称3','车位类型3','upload/cheweixinxi_cheweitupian3.jpg,upload/cheweixinxi_cheweitupian4.jpg,upload/cheweixinxi_cheweitupian5.jpg','车位位置3','已使用',3,'车位详情3'),(34,'2023-05-17 08:29:39','停车场名称4','A区','4444444444','车位名称4','车位类型4','upload/cheweixinxi_cheweitupian4.jpg,upload/cheweixinxi_cheweitupian5.jpg,upload/cheweixinxi_cheweitupian6.jpg','车位位置4','已使用',4,'车位详情4'),(35,'2023-05-17 08:29:39','停车场名称5','A区','5555555555','车位名称5','车位类型5','upload/cheweixinxi_cheweitupian5.jpg,upload/cheweixinxi_cheweitupian6.jpg,upload/cheweixinxi_cheweitupian7.jpg','车位位置5','已使用',5,'车位详情5'),(36,'2023-05-17 08:29:39','停车场名称6','A区','6666666666','车位名称6','车位类型6','upload/cheweixinxi_cheweitupian6.jpg,upload/cheweixinxi_cheweitupian7.jpg,upload/cheweixinxi_cheweitupian8.jpg','车位位置6','已使用',6,'车位详情6'),(37,'2023-05-17 08:29:39','停车场名称7','A区','7777777777','车位名称7','车位类型7','upload/cheweixinxi_cheweitupian7.jpg,upload/cheweixinxi_cheweitupian8.jpg,upload/cheweixinxi_cheweitupian9.jpg','车位位置7','已使用',7,'车位详情7'),(38,'2023-05-17 08:29:39','停车场名称8','A区','8888888888','车位名称8','车位类型8','upload/cheweixinxi_cheweitupian8.jpg,upload/cheweixinxi_cheweitupian9.jpg,upload/cheweixinxi_cheweitupian10.jpg','车位位置8','已使用',8,'车位详情8');
/*!40000 ALTER TABLE `cheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chezijinchang`
--

DROP TABLE IF EXISTS `chezijinchang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chezijinchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tingchechangmingcheng` varchar(200) NOT NULL COMMENT '停车场名称',
  `quyu` varchar(200) NOT NULL COMMENT '区域',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `xiaoshidanjia` int(11) DEFAULT NULL COMMENT '小时单价',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `jinchangshijian` datetime DEFAULT NULL COMMENT '进场时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='车子进场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chezijinchang`
--

LOCK TABLES `chezijinchang` WRITE;
/*!40000 ALTER TABLE `chezijinchang` DISABLE KEYS */;
INSERT INTO `chezijinchang` VALUES (41,'2023-05-17 08:29:39','停车场名称1','区域1','车位编号1','车位名称1','车位类型1','车位位置1',1,'用户账号1','姓名1','手机1','upload/chezijinchang_touxiang1.jpg,upload/chezijinchang_touxiang2.jpg,upload/chezijinchang_touxiang3.jpg','车牌号1','2023-05-17 16:29:39'),(42,'2023-05-17 08:29:39','停车场名称2','区域2','车位编号2','车位名称2','车位类型2','车位位置2',2,'用户账号2','姓名2','手机2','upload/chezijinchang_touxiang2.jpg,upload/chezijinchang_touxiang3.jpg,upload/chezijinchang_touxiang4.jpg','车牌号2','2023-05-17 16:29:39'),(43,'2023-05-17 08:29:39','停车场名称3','区域3','车位编号3','车位名称3','车位类型3','车位位置3',3,'用户账号3','姓名3','手机3','upload/chezijinchang_touxiang3.jpg,upload/chezijinchang_touxiang4.jpg,upload/chezijinchang_touxiang5.jpg','车牌号3','2023-05-17 16:29:39'),(44,'2023-05-17 08:29:39','停车场名称4','区域4','车位编号4','车位名称4','车位类型4','车位位置4',4,'用户账号4','姓名4','手机4','upload/chezijinchang_touxiang4.jpg,upload/chezijinchang_touxiang5.jpg,upload/chezijinchang_touxiang6.jpg','车牌号4','2023-05-17 16:29:39'),(45,'2023-05-17 08:29:39','停车场名称5','区域5','车位编号5','车位名称5','车位类型5','车位位置5',5,'用户账号5','姓名5','手机5','upload/chezijinchang_touxiang5.jpg,upload/chezijinchang_touxiang6.jpg,upload/chezijinchang_touxiang7.jpg','车牌号5','2023-05-17 16:29:39'),(46,'2023-05-17 08:29:39','停车场名称6','区域6','车位编号6','车位名称6','车位类型6','车位位置6',6,'用户账号6','姓名6','手机6','upload/chezijinchang_touxiang6.jpg,upload/chezijinchang_touxiang7.jpg,upload/chezijinchang_touxiang8.jpg','车牌号6','2023-05-17 16:29:39'),(47,'2023-05-17 08:29:39','停车场名称7','区域7','车位编号7','车位名称7','车位类型7','车位位置7',7,'用户账号7','姓名7','手机7','upload/chezijinchang_touxiang7.jpg,upload/chezijinchang_touxiang8.jpg,upload/chezijinchang_touxiang9.jpg','车牌号7','2023-05-17 16:29:39'),(48,'2023-05-17 08:29:39','停车场名称8','区域8','车位编号8','车位名称8','车位类型8','车位位置8',8,'用户账号8','姓名8','手机8','upload/chezijinchang_touxiang8.jpg,upload/chezijinchang_touxiang9.jpg,upload/chezijinchang_touxiang10.jpg','车牌号8','2023-05-17 16:29:39');
/*!40000 ALTER TABLE `chezijinchang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chezilichang`
--

DROP TABLE IF EXISTS `chezilichang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chezilichang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `quyu` varchar(200) DEFAULT NULL COMMENT '区域',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweimingcheng` varchar(200) DEFAULT NULL COMMENT '车位名称',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `xiaoshidanjia` int(11) DEFAULT NULL COMMENT '小时单价',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `jinchangshijian` varchar(200) DEFAULT NULL COMMENT '进场时间',
  `lichangshijian` datetime DEFAULT NULL COMMENT '离场时间',
  `tingcheshizhang` float DEFAULT NULL COMMENT '停车时长',
  `tingchefeiyong` float DEFAULT NULL COMMENT '停车费用',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='车子离场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chezilichang`
--

LOCK TABLES `chezilichang` WRITE;
/*!40000 ALTER TABLE `chezilichang` DISABLE KEYS */;
INSERT INTO `chezilichang` VALUES (51,'2023-05-17 08:29:39','停车场名称1','区域1','车位编号1','车位名称1','车位类型1','车位位置1',1,'用户账号1','姓名1','手机1','upload/chezilichang_touxiang1.jpg,upload/chezilichang_touxiang2.jpg,upload/chezilichang_touxiang3.jpg','车牌号1','进场时间1','2023-05-17 16:29:39',1,1,'是','','未支付'),(52,'2023-05-17 08:29:39','停车场名称2','区域2','车位编号2','车位名称2','车位类型2','车位位置2',2,'用户账号2','姓名2','手机2','upload/chezilichang_touxiang2.jpg,upload/chezilichang_touxiang3.jpg,upload/chezilichang_touxiang4.jpg','车牌号2','进场时间2','2023-05-17 16:29:39',2,2,'是','','未支付'),(53,'2023-05-17 08:29:39','停车场名称3','区域3','车位编号3','车位名称3','车位类型3','车位位置3',3,'用户账号3','姓名3','手机3','upload/chezilichang_touxiang3.jpg,upload/chezilichang_touxiang4.jpg,upload/chezilichang_touxiang5.jpg','车牌号3','进场时间3','2023-05-17 16:29:39',3,3,'是','','未支付'),(54,'2023-05-17 08:29:39','停车场名称4','区域4','车位编号4','车位名称4','车位类型4','车位位置4',4,'用户账号4','姓名4','手机4','upload/chezilichang_touxiang4.jpg,upload/chezilichang_touxiang5.jpg,upload/chezilichang_touxiang6.jpg','车牌号4','进场时间4','2023-05-17 16:29:39',4,4,'是','','未支付'),(55,'2023-05-17 08:29:39','停车场名称5','区域5','车位编号5','车位名称5','车位类型5','车位位置5',5,'用户账号5','姓名5','手机5','upload/chezilichang_touxiang5.jpg,upload/chezilichang_touxiang6.jpg,upload/chezilichang_touxiang7.jpg','车牌号5','进场时间5','2023-05-17 16:29:39',5,5,'是','','未支付'),(56,'2023-05-17 08:29:39','停车场名称6','区域6','车位编号6','车位名称6','车位类型6','车位位置6',6,'用户账号6','姓名6','手机6','upload/chezilichang_touxiang6.jpg,upload/chezilichang_touxiang7.jpg,upload/chezilichang_touxiang8.jpg','车牌号6','进场时间6','2023-05-17 16:29:39',6,6,'是','','未支付'),(57,'2023-05-17 08:29:39','停车场名称7','区域7','车位编号7','车位名称7','车位类型7','车位位置7',7,'用户账号7','姓名7','手机7','upload/chezilichang_touxiang7.jpg,upload/chezilichang_touxiang8.jpg,upload/chezilichang_touxiang9.jpg','车牌号7','进场时间7','2023-05-17 16:29:39',7,7,'是','','未支付'),(58,'2023-05-17 08:29:39','停车场名称8','区域8','车位编号8','车位名称8','车位类型8','车位位置8',8,'用户账号8','姓名8','手机8','upload/chezilichang_touxiang8.jpg,upload/chezilichang_touxiang9.jpg,upload/chezilichang_touxiang10.jpg','车牌号8','进场时间8','2023-05-17 16:29:39',8,8,'是','','未支付');
/*!40000 ALTER TABLE `chezilichang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2023-05-17 08:29:39','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放'),(82,'2023-05-17 08:29:39','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(83,'2023-05-17 08:29:39','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(84,'2023-05-17 08:29:39','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(85,'2023-05-17 08:29:39','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(86,'2023-05-17 08:29:39','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(87,'2023-05-17 08:29:39','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(88,'2023-05-17 08:29:39','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='投诉建议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2023-05-17 08:29:39',1,'用户名1','upload/messages_avatarurl1.jpg','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(102,'2023-05-17 08:29:39',2,'用户名2','upload/messages_avatarurl2.jpg','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(103,'2023-05-17 08:29:39',3,'用户名3','upload/messages_avatarurl3.jpg','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(104,'2023-05-17 08:29:39',4,'用户名4','upload/messages_avatarurl4.jpg','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(105,'2023-05-17 08:29:39',5,'用户名5','upload/messages_avatarurl5.jpg','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(106,'2023-05-17 08:29:39',6,'用户名6','upload/messages_avatarurl6.jpg','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(107,'2023-05-17 08:29:39',7,'用户名7','upload/messages_avatarurl7.jpg','留言内容7','upload/messages_cpicture7.jpg','回复内容7','upload/messages_rpicture7.jpg'),(108,'2023-05-17 08:29:39',8,'用户名8','upload/messages_avatarurl8.jpg','留言内容8','upload/messages_cpicture8.jpg','回复内容8','upload/messages_rpicture8.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2023-05-17 08:29:39','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(92,'2023-05-17 08:29:39','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(93,'2023-05-17 08:29:39','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(94,'2023-05-17 08:29:39','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(95,'2023-05-17 08:29:39','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(96,'2023-05-17 08:29:39','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(97,'2023-05-17 08:29:39','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(98,'2023-05-17 08:29:39','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-05-17 08:29:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weiguichufa`
--

DROP TABLE IF EXISTS `weiguichufa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weiguichufa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weiguishixiang` varchar(200) DEFAULT NULL COMMENT '违规事项',
  `weiguibeizhu` varchar(200) DEFAULT NULL COMMENT '违规备注',
  `chufajine` int(11) DEFAULT NULL COMMENT '处罚金额',
  `chufashijian` datetime DEFAULT NULL COMMENT '处罚时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='违规处罚';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weiguichufa`
--

LOCK TABLES `weiguichufa` WRITE;
/*!40000 ALTER TABLE `weiguichufa` DISABLE KEYS */;
INSERT INTO `weiguichufa` VALUES (61,'2023-05-17 08:29:39','违规事项1','违规备注1',1,'2023-05-17 16:29:39','用户账号1','姓名1','手机1','upload/weiguichufa_touxiang1.jpg,upload/weiguichufa_touxiang2.jpg,upload/weiguichufa_touxiang3.jpg','未支付'),(62,'2023-05-17 08:29:39','违规事项2','违规备注2',2,'2023-05-17 16:29:39','用户账号2','姓名2','手机2','upload/weiguichufa_touxiang2.jpg,upload/weiguichufa_touxiang3.jpg,upload/weiguichufa_touxiang4.jpg','未支付'),(63,'2023-05-17 08:29:39','违规事项3','违规备注3',3,'2023-05-17 16:29:39','用户账号3','姓名3','手机3','upload/weiguichufa_touxiang3.jpg,upload/weiguichufa_touxiang4.jpg,upload/weiguichufa_touxiang5.jpg','未支付'),(64,'2023-05-17 08:29:39','违规事项4','违规备注4',4,'2023-05-17 16:29:39','用户账号4','姓名4','手机4','upload/weiguichufa_touxiang4.jpg,upload/weiguichufa_touxiang5.jpg,upload/weiguichufa_touxiang6.jpg','未支付'),(65,'2023-05-17 08:29:39','违规事项5','违规备注5',5,'2023-05-17 16:29:39','用户账号5','姓名5','手机5','upload/weiguichufa_touxiang5.jpg,upload/weiguichufa_touxiang6.jpg,upload/weiguichufa_touxiang7.jpg','未支付'),(66,'2023-05-17 08:29:39','违规事项6','违规备注6',6,'2023-05-17 16:29:39','用户账号6','姓名6','手机6','upload/weiguichufa_touxiang6.jpg,upload/weiguichufa_touxiang7.jpg,upload/weiguichufa_touxiang8.jpg','未支付'),(67,'2023-05-17 08:29:39','违规事项7','违规备注7',7,'2023-05-17 16:29:39','用户账号7','姓名7','手机7','upload/weiguichufa_touxiang7.jpg,upload/weiguichufa_touxiang8.jpg,upload/weiguichufa_touxiang9.jpg','未支付'),(68,'2023-05-17 08:29:39','违规事项8','违规备注8',8,'2023-05-17 16:29:39','用户账号8','姓名8','手机8','upload/weiguichufa_touxiang8.jpg,upload/weiguichufa_touxiang9.jpg,upload/weiguichufa_touxiang10.jpg','未支付');
/*!40000 ALTER TABLE `weiguichufa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-05-17 08:29:39','用户账号1','姓名1','123456','男','13823888881','upload/yonghu_touxiang1.jpg'),(12,'2023-05-17 08:29:39','用户账号2','姓名2','123456','男','13823888882','upload/yonghu_touxiang2.jpg'),(13,'2023-05-17 08:29:39','用户账号3','姓名3','123456','男','13823888883','upload/yonghu_touxiang3.jpg'),(14,'2023-05-17 08:29:39','用户账号4','姓名4','123456','男','13823888884','upload/yonghu_touxiang4.jpg'),(15,'2023-05-17 08:29:39','用户账号5','姓名5','123456','男','13823888885','upload/yonghu_touxiang5.jpg'),(16,'2023-05-17 08:29:39','用户账号6','姓名6','123456','男','13823888886','upload/yonghu_touxiang6.jpg'),(17,'2023-05-17 08:29:39','用户账号7','姓名7','123456','男','13823888887','upload/yonghu_touxiang7.jpg'),(18,'2023-05-17 08:29:39','用户账号8','姓名8','123456','男','13823888888','upload/yonghu_touxiang8.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 15:45:04
