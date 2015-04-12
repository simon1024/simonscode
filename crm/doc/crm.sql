-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: crm
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.13.04.1

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
-- Table structure for table `DeptType`
--

DROP TABLE IF EXISTS `DeptType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DeptType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeptType`
--

LOCK TABLES `DeptType` WRITE;
/*!40000 ALTER TABLE `DeptType` DISABLE KEYS */;
INSERT INTO `DeptType` VALUES (1,'总经理部',0),(2,'财务部',0),(3,'采购部',0),(4,'人事行政部',0),(5,'设计部',0),(6,'施工部',0),(7,'市场合同部',0),(8,'项目运营部',0);
/*!40000 ALTER TABLE `DeptType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `username` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `pwd` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `gender` int(11) NOT NULL DEFAULT '1' COMMENT '性别',
  `position` int(11) NOT NULL COMMENT '职位',
  `department` int(11) NOT NULL COMMENT '所属部门',
  `leader` int(11) NOT NULL COMMENT '直接上级',
  `tel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话 ',
  `mobile` varchar(13) COLLATE utf8_bin NOT NULL COMMENT '手机',
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '出生年月',
  `joinDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '入职时间',
  `status` int(11) NOT NULL DEFAULT '3' COMMENT '状态，3，6，9分别表示[正常，待定，删除]',
  `role` int(11) NOT NULL COMMENT '角色',
  `mail` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Employee_username` (`username`),
  UNIQUE KEY `Employee_no` (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'0600039','袁斌','yuanbin','d3cf495104d0ad9f088b73e32e48c811',1,1,1,0,'','11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,3,'yuanbin@zhlbt.com'),(2,'0600145','严炳中','yanbingzhong','28ba2ff46c15f3e60ccc7ea1c9e1a512',1,2,1,1,'61972603','13402068947','2013-08-02 13:20:51','2012-07-15 16:00:00',3,4,'yanbingzhong@zhlbt.com'),(3,'0600072','徐建青','xujianqing','b0b26dcab318e9750b42590a11fdb047',1,2,1,1,'','11111111111','2013-08-13 09:02:43','0000-00-00 00:00:00',3,4,'xujianqing@zhlbt.com'),(4,'0600041','石鹏华','shipenghua','d3cf495104d0ad9f088b73e32e48c811',1,2,1,1,'','11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,4,'shipenghua@zhlbt.com'),(5,'0400001','王川','wangchuan','d3cf495104d0ad9f088b73e32e48c811',1,2,1,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangchuan@zhlbt.com'),(6,'0600038','金爽','jinshuang','d3cf495104d0ad9f088b73e32e48c811',1,3,2,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'jinshuang@zhlbt.com'),(7,'0600045','刘冬冬','liudongdong','d3cf495104d0ad9f088b73e32e48c811',1,4,2,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'liudongdong@zhlbt.com'),(8,'0600198','沈晓雯','shenxiaowen','d3cf495104d0ad9f088b73e32e48c811',1,4,2,0,'','11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'shenxiaowen@zhlbt.com'),(9,'0600044','朱丽娜','zhulina','d3cf495104d0ad9f088b73e32e48c811',0,5,2,0,'','11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhulina@zhlbt.com'),(10,'0600179','胡小惠','huxiaohui','d3cf495104d0ad9f088b73e32e48c811',1,6,3,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'huxiaohui@zhlbt.com'),(11,'0600123','黄春峰','huangchunfeng','d3cf495104d0ad9f088b73e32e48c811',1,6,3,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'huangchunfeng@zhlbt.com'),(12,'0600136','童娇','tongjiao','d3cf495104d0ad9f088b73e32e48c811',1,7,3,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'tongjiao@zhlbt.com'),(13,'0600102','翁晶敏','wengjingmin','d3cf495104d0ad9f088b73e32e48c811',1,6,3,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wengjingmin@zhlbt.com'),(14,'0600034','曾琦','zengqi','d3cf495104d0ad9f088b73e32e48c811',1,6,3,0,'','11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zengqi@zhlbt.com'),(15,'0600080','仲美','zhongmei','d3cf495104d0ad9f088b73e32e48c811',1,6,3,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhongmei@zhlbt.com'),(16,'0600004','邵连华','shaolianhua','d3cf495104d0ad9f088b73e32e48c811',1,8,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'shaolianhua@zhlbt.com'),(17,'0600010','黄香兰','huangxianglan','d3cf495104d0ad9f088b73e32e48c811',1,9,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'huangxianglan@zhlbt.com'),(18,'0600007','梁璐','lianglu','d3cf495104d0ad9f088b73e32e48c811',1,10,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'lianglu@zhlbt.com'),(19,'0600009','陆春梅','luchunmei','d3cf495104d0ad9f088b73e32e48c811',1,9,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'luchunmei@zhlbt.com'),(20,'0600057','罗晓','luoxiao','d3cf495104d0ad9f088b73e32e48c811',1,11,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'luoxiao@zhlbt.com'),(21,'0600035','崔红霞','cuihongxia','d3cf495104d0ad9f088b73e32e48c811',1,11,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'cuihongxia@zhlbt.com'),(22,'0600202','王瑾','wangjin','d3cf495104d0ad9f088b73e32e48c811',1,10,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangjin@zhlbt.com'),(23,'0600037','俞昊','yuhao','d3cf495104d0ad9f088b73e32e48c811',1,12,4,0,'','13818226692','1982-08-29 16:00:00','0000-00-00 00:00:00',3,2,'yuhao@zhlbt.com'),(24,'0600005','袁丽萍','yuanliping','d3cf495104d0ad9f088b73e32e48c811',1,13,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'yuanliping@zhlbt.com'),(25,'0100007','邹鲁','zoulu','d3cf495104d0ad9f088b73e32e48c811',1,14,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zoulu@zhlbt.com'),(26,'0100008','苏元庆','suyuanqing','d3cf495104d0ad9f088b73e32e48c811',1,14,4,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'suyuanqing@zhlbt.com'),(27,'0600016','操永霞','caoyongxia','d3cf495104d0ad9f088b73e32e48c811',1,15,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'caoyongxia@zhlbt.com'),(28,'0600159','曹慧芳','caohuifang','d3cf495104d0ad9f088b73e32e48c811',1,16,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'caohuifang@zhlbt.com'),(29,'0600134','陈宏伟','chenhongwei','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'chenhongwei@zhlbt.com'),(30,'0600116','陈婧婧','chenjingjing','d3cf495104d0ad9f088b73e32e48c811',1,18,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'chenjingjing@zhlbt.com'),(31,'0600076','陈立刚','chenligang','d3cf495104d0ad9f088b73e32e48c811',1,19,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'chenligang@zhlbt.com'),(32,'0600119','陈茜','chenqian','d3cf495104d0ad9f088b73e32e48c811',1,19,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'chenqian@zhlbt.com'),(33,'0600100','陈琴','chenqin','d3cf495104d0ad9f088b73e32e48c811',1,20,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'chenqin@zhlbt.com'),(34,'0600099','丁江斌','dingjiangbin','d3cf495104d0ad9f088b73e32e48c811',1,21,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'dingjiangbin@zhlbt.com'),(35,'0600113','范红波','fanhongbo','d3cf495104d0ad9f088b73e32e48c811',1,22,5,0,'','11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,5,'fanhongbo@zhlbt.com'),(36,'0600191','傅俊毅','fujunyi','d3cf495104d0ad9f088b73e32e48c811',1,21,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'fujunyi@zhlbt.com'),(37,'0600011','高腾飞','gaotengfei','d3cf495104d0ad9f088b73e32e48c811',1,21,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'gaotengfei@zhlbt.com'),(38,'0600078','耿炜','gengwei','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'gengwei@zhlbt.com'),(39,'0300009','龚厚祺','gonghouqi','d3cf495104d0ad9f088b73e32e48c811',1,23,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'gonghouqi@zhlbt.com'),(40,'0600181','郭春兰','guochunlan','d3cf495104d0ad9f088b73e32e48c811',1,20,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'guochunlan@zhlbt.com'),(41,'0600128','何涛','hetao','d3cf495104d0ad9f088b73e32e48c811',1,23,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'hetao@zhlbt.com'),(42,'0600083','侯海坤','houhaikun','d3cf495104d0ad9f088b73e32e48c811',1,24,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'houhaikun@zhlbt.com'),(43,'0600147','胡克勤','hukeqin','d3cf495104d0ad9f088b73e32e48c811',1,23,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'hukeqin@zhlbt.com'),(44,'0600137','黄伟杰','huangweijie','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'huangweijie@zhlbt.com'),(45,'0600200','季艳','jiyan','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'jiyan@zhlbt.com'),(46,'0600199','江会宇','jianghuiyu','d3cf495104d0ad9f088b73e32e48c811',1,25,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'jianghuiyu@zhlbt.com'),(47,'0600148','阚丽','kanli','d3cf495104d0ad9f088b73e32e48c811',1,18,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'kanli@zhlbt.com'),(48,'0600032','孔祥玲','kongxiangling','d3cf495104d0ad9f088b73e32e48c811',1,24,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'kongxiangling@zhlbt.com'),(49,'0600002','李春莉','lichunli','d3cf495104d0ad9f088b73e32e48c811',1,20,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'lichunli@zhlbt.com'),(50,'0600190','李聪','licong','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'licong@zhlbt.com'),(51,'0600160','李亚军','liyajun','d3cf495104d0ad9f088b73e32e48c811',1,21,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'liyajun@zhlbt.com'),(52,'0600055','梁宏伟','lianghongwei','d3cf495104d0ad9f088b73e32e48c811',1,26,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'lianghongwei@zhlbt.com'),(53,'0600114','刘会芬','liuhuifen','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'liuhuifen@zhlbt.com'),(54,'0600188','刘克梅','liukemei','d3cf495104d0ad9f088b73e32e48c811',1,21,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'liukemei@zhlbt.com'),(55,'0600139','刘珊','liushan','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'liushan@zhlbt.com'),(56,'0600068','刘迎','liuying','d3cf495104d0ad9f088b73e32e48c811',1,27,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'liuying@zhlbt.com'),(57,'0600049','刘忠','liuzhong','d3cf495104d0ad9f088b73e32e48c811',1,28,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'liuzhong@zhlbt.com'),(58,'0600197','陆美兰','lumeilan','d3cf495104d0ad9f088b73e32e48c811',1,15,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'lumeilan@zhlbt.com'),(59,'0600001','陆晓霞','luxiaoxia','d3cf495104d0ad9f088b73e32e48c811',1,29,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'luxiaoxia@zhlbt.com'),(60,'0600161','吕道超','lvdaochao','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'lvdaochao@zhlbt.com'),(61,'0600015','罗婷','luoting','d3cf495104d0ad9f088b73e32e48c811',1,15,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'luoting@zhlbt.com'),(62,'0600087','毛格清','maogeqing','d3cf495104d0ad9f088b73e32e48c811',1,30,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'maogeqing@zhlbt.com'),(63,'0600095','莫文吉','mowenji','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'mowenji@zhlbt.com'),(64,'0600169','戚春峰','qichunfeng','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'qichunfeng@zhlbt.com'),(65,'0600124','沈龙燕','shenlongyan','d3cf495104d0ad9f088b73e32e48c811',0,30,5,0,'','11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'shenlongyan@zhlbt.com'),(66,'0600201','沈骎','chenqin1','d3cf495104d0ad9f088b73e32e48c811',1,25,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'chenqin1@zhlbt.com'),(67,'0600103','宋海涛','songhaitao','d3cf495104d0ad9f088b73e32e48c811',1,31,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'songhaitao@zhlbt.com'),(68,'0600152','唐海进','tanghaijin','d3cf495104d0ad9f088b73e32e48c811',1,25,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'tanghaijin@zhlbt.com'),(69,'0600088','唐民艳','tangminyan','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'tangminyan@zhlbt.com'),(70,'0600196','唐元','tangyuan','d3cf495104d0ad9f088b73e32e48c811',1,19,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'tangyuan@zhlbt.com'),(71,'0600073','田立','tianli','d3cf495104d0ad9f088b73e32e48c811',1,23,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'tianli@zhlbt.com'),(72,'0600143','汪衍岭','wangyanling','d3cf495104d0ad9f088b73e32e48c811',1,23,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangyanling@zhlbt.com'),(73,'0600118','王斐','wangfei','d3cf495104d0ad9f088b73e32e48c811',1,24,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangfei@zhlbt.com'),(74,'0600101','王国建','wangguojian','d3cf495104d0ad9f088b73e32e48c811',1,31,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangguojian@zhlbt.com'),(75,'0600026','王华','wanghua','d3cf495104d0ad9f088b73e32e48c811',1,32,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wanghua@zhlbt.com'),(76,'0600163','王惠','wanghui','d3cf495104d0ad9f088b73e32e48c811',1,25,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wanghui@zhlbt.com'),(77,'0600098','王锐','wangrui','d3cf495104d0ad9f088b73e32e48c811',1,20,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangrui@zhlbt.com'),(78,'0600043','王石磊','wangshilei','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangshilei@zhlbt.com'),(79,'0600063','王旭强','wangxuqiang','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangxuqiang@zhlbt.com'),(80,'0600097','王友节','wangyoujie','d3cf495104d0ad9f088b73e32e48c811',1,33,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangyoujie@zhlbt.com'),(81,'0600031','王玉梅','wangyumei','d3cf495104d0ad9f088b73e32e48c811',1,31,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangyumei@zhlbt.com'),(82,'0600047','魏光迅','weiguangxun','d3cf495104d0ad9f088b73e32e48c811',1,34,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'weiguangxun@zhlbt.com'),(83,'0600079','夏禹','xiayu','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xiayu@zhlbt.com'),(84,'0600086','肖晶','xiaojing','d3cf495104d0ad9f088b73e32e48c811',1,30,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xiaojing@zhlbt.com'),(85,'0600158','肖维刚','xiaoweigang','d3cf495104d0ad9f088b73e32e48c811',1,20,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xiaoweigang@zhlbt.com'),(86,'0600142','徐洋','xuyang','d3cf495104d0ad9f088b73e32e48c811',1,23,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xuyang@zhlbt.com'),(87,'0600164','徐永刚','xuyonggang','d3cf495104d0ad9f088b73e32e48c811',1,20,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xuyonggang@zhlbt.com'),(88,'0600109','许华金','xuhuajin','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xuhuajin@zhlbt.com'),(89,'0600115','薛卉','xuehui','d3cf495104d0ad9f088b73e32e48c811',1,35,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xuehui@zhlbt.com'),(90,'0600133','杨蕾','yanglei','d3cf495104d0ad9f088b73e32e48c811',1,31,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'yanglei@zhlbt.com'),(91,'0600171','于海龙','yuhailong','d3cf495104d0ad9f088b73e32e48c811',1,24,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'yuhailong@zhlbt.com'),(92,'0600150','于字林','yuzilin','d3cf495104d0ad9f088b73e32e48c811',1,25,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'yuzilin@zhlbt.com'),(93,'0600046','余静波','yujingbo','d3cf495104d0ad9f088b73e32e48c811',1,20,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'yujingbo@zhlbt.com'),(94,'0600117','袁红','yuanhong','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'yuanhong@zhlbt.com'),(95,'0600157','詹雪新','zhanxuexin','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhanxuexin@zhlbt.com'),(96,'0600107','张红卫','zhanghongwei','d3cf495104d0ad9f088b73e32e48c811',1,36,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhanghongwei@zhlbt.com'),(97,'0200034','张敏','zhangmin','d3cf495104d0ad9f088b73e32e48c811',1,25,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhangmin@zhlbt.com'),(98,'0600178','张婷','zhangting','d3cf495104d0ad9f088b73e32e48c811',1,37,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhangting@zhlbt.com'),(99,'0600195','张伟','zhangwei','d3cf495104d0ad9f088b73e32e48c811',1,31,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhangwei@zhlbt.com'),(100,'0600180','张晓晶','zhangxiaojing','d3cf495104d0ad9f088b73e32e48c811',1,20,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhangxiaojing@zhlbt.com'),(101,'0600121','赵春香','zhaochunxiang','d3cf495104d0ad9f088b73e32e48c811',1,38,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhaochunxiang@zhlbt.com'),(102,'0600094','赵唯辰','zhaoweichen','d3cf495104d0ad9f088b73e32e48c811',1,25,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhaoweichen@zhlbt.com'),(103,'0600092','郑聪明','zhengcongming','d3cf495104d0ad9f088b73e32e48c811',1,21,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhengcongming@zhlbt.com'),(104,'0600194','郑敏敏','zhengminmin','d3cf495104d0ad9f088b73e32e48c811',1,19,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhengminmin@zhlbt.com'),(105,'0600084','周君生','zhoujunsheng','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhoujunsheng@zhlbt.com'),(106,'0600138','周文昌','zhouwenchang','d3cf495104d0ad9f088b73e32e48c811',1,19,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhouwenchang@zhlbt.com'),(107,'0600189','朱军','zhujun','d3cf495104d0ad9f088b73e32e48c811',1,17,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhujun@zhlbt.com'),(108,'0600175','朱天发','zhutianfa','d3cf495104d0ad9f088b73e32e48c811',1,25,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhutianfa@zhlbt.com'),(109,'0600185','朱天富','zhutianfu','d3cf495104d0ad9f088b73e32e48c811',1,39,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhutianfu@zhlbt.com'),(110,'0600090','朱瑶','zhuyao','d3cf495104d0ad9f088b73e32e48c811',1,18,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhuyao@zhlbt.com'),(111,'0600019','陈魏','chenwei','d3cf495104d0ad9f088b73e32e48c811',1,40,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'chenwei@zhlbt.com'),(112,'0600168','方刘亮','fangliuliang','d3cf495104d0ad9f088b73e32e48c811',1,17,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'fangliuliang@zhlbt.com'),(113,'0600167','黄国印','huangguoyin','d3cf495104d0ad9f088b73e32e48c811',1,17,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'huangguoyin@zhlbt.com'),(114,'0600184','黄美侠','huangmeixia','d3cf495104d0ad9f088b73e32e48c811',1,18,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'huangmeixia@zhlbt.com'),(115,'0600065','金子龙','jinzilong','d3cf495104d0ad9f088b73e32e48c811',1,25,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'jinzilong@zhlbt.com'),(116,'0600056','任中朝','renzhongzhao','d3cf495104d0ad9f088b73e32e48c811',1,41,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'renzhongzhao@zhlbt.com'),(117,'0600177','宋成均','songchengjun','d3cf495104d0ad9f088b73e32e48c811',1,23,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'songchengjun@zhlbt.com'),(118,'0600176','涂彦博','tuyanbo','d3cf495104d0ad9f088b73e32e48c811',1,40,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'tuyanbo@zhlbt.com'),(119,'0600064','王爱献','wangaixian','d3cf495104d0ad9f088b73e32e48c811',1,17,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangaixian@zhlbt.com'),(120,'0600033','王卫东','wangweidong','d3cf495104d0ad9f088b73e32e48c811',1,25,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangweidong@zhlbt.com'),(121,'0600081','王小永','wangxiaoyong','d3cf495104d0ad9f088b73e32e48c811',1,17,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangxiaoyong@zhlbt.com'),(122,'0600170','吴船建','wuchuanjian','d3cf495104d0ad9f088b73e32e48c811',1,15,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wuchuanjian@zhlbt.com'),(123,'0600155','吴杰','wujie','d3cf495104d0ad9f088b73e32e48c811',1,16,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wujie@zhlbt.com'),(124,'0600125','谢紫微','xieziwei','d3cf495104d0ad9f088b73e32e48c811',1,42,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xieziwei@zhlbt.com'),(125,'0600075','叶青','yeqing','d3cf495104d0ad9f088b73e32e48c811',1,43,6,0,'','11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'yeqing@zhlbt.com'),(126,'0600172','张海滨','zhanghaibin','d3cf495104d0ad9f088b73e32e48c811',1,17,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhanghaibin@zhlbt.com'),(127,'0600153','左明奎','zuomingkui','d3cf495104d0ad9f088b73e32e48c811',1,42,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zuomingkui@zhlbt.com'),(128,'0401577','张彤','zhangtong','d3cf495104d0ad9f088b73e32e48c811',1,44,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhangtong@zhlbt.com'),(129,'0600023','金红梅','jinhongmei','d3cf495104d0ad9f088b73e32e48c811',1,45,7,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'jinhongmei@zhlbt.com'),(130,'0600110','王亚力','wangyali','d3cf495104d0ad9f088b73e32e48c811',1,46,7,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangyali@zhlbt.com'),(131,'0300003','王艳梅','wangyanmei','d3cf495104d0ad9f088b73e32e48c811',1,47,7,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangyanmei@zhlbt.com'),(132,'0600131','陈霞','chenxia','d3cf495104d0ad9f088b73e32e48c811',1,48,8,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'chenxia@zhlbt.com'),(133,'0600193','何伟芳','heweifang','d3cf495104d0ad9f088b73e32e48c811',1,48,8,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'heweifang@zhlbt.com'),(134,'0600182','邱跃','qiuyue','d3cf495104d0ad9f088b73e32e48c811',1,41,8,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'qiuyue@zhlbt.com'),(135,'0600151','吴震乾','wuzhengan','d3cf495104d0ad9f088b73e32e48c811',1,49,8,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wuzhengan@zhlbt.com'),(136,'0600082','杨海雷','yanghailei','d3cf495104d0ad9f088b73e32e48c811',1,48,8,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'yanghailei@zhlbt.com'),(137,'0600156','张剑辉','zhangjianhui','d3cf495104d0ad9f088b73e32e48c811',1,50,8,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhangjianhui@zhlbt.com'),(138,'0600203','张健','zhangjian','d3cf495104d0ad9f088b73e32e48c811',1,50,8,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'zhangjian@zhlbt.com'),(139,'0600204','徐晨','xuchen','d3cf495104d0ad9f088b73e32e48c811',1,51,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'xuchen@zhlbt.com'),(140,'0700012','付玮琦','fuweiqi','d3cf495104d0ad9f088b73e32e48c811',1,51,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'fuweiqi@zhlbt.com'),(141,'0700034','宋永龙','songyonglong','d3cf495104d0ad9f088b73e32e48c811',1,51,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'songyonglong@zhlbt.com'),(142,'0600205','陆佳咏','lujiayong','d3cf495104d0ad9f088b73e32e48c811',1,24,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'lujiayong@zhlbt.com'),(143,'0600206','王晨','wangchen','d3cf495104d0ad9f088b73e32e48c811',1,52,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangchen@zhlbt.com'),(144,'0600207','王志堂','wangzhitang','d3cf495104d0ad9f088b73e32e48c811',1,38,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangzhitang@zhlbt.com'),(145,'0600209','姜辉辉','jianghuihui','d3cf495104d0ad9f088b73e32e48c811',1,19,5,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'jianghuihui@zhlbt.com'),(146,'0600208','王丹凤','wangdanfeng','d3cf495104d0ad9f088b73e32e48c811',1,40,6,0,NULL,'11111111111','2013-07-28 01:31:50','0000-00-00 00:00:00',3,8,'wangdanfeng@zhlbt.com');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PositionType`
--

DROP TABLE IF EXISTS `PositionType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PositionType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `department` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PositionType`
--

LOCK TABLES `PositionType` WRITE;
/*!40000 ALTER TABLE `PositionType` DISABLE KEYS */;
INSERT INTO `PositionType` VALUES (1,'总经理',1),(2,'副总经理',1),(3,'出纳',2),(4,'会计',2),(5,'财务经理',2),(6,'采购工程师',3),(7,'采购助理',3),(8,'人事经理',4),(9,'保洁员',4),(10,'前台',4),(11,'人事专员',4),(12,'IT',4),(13,'行政专员',4),(14,'司机',4),(15,'暖通工程师',5),(16,'土建工程师',5),(17,'管道工程师',5),(18,'文控',5),(19,'给排水工程师',5),(20,'结构工程师',5),(21,'工艺工程师',5),(22,'工艺研发部经理',5),(23,'仪表工程师',5),(24,'建筑工程师',5),(25,'电气工程师',5),(26,'工艺管道室主任',5),(27,'暖通负责人',5),(28,'仪表负责人',5),(29,'给排水主任',5),(30,'工艺研发工程师',5),(31,'静设备工程师',5),(32,'文控负责人',5),(33,'机械设备室主任',5),(34,'电气仪表室主任',5),(35,' 文控',5),(36,'建筑土建结构室主任',5),(37,'总图工程师',5),(38,'动设备工程师',5),(39,'资深工艺研发',5),(40,'翻译',6),(41,'项目经理',6),(42,'设备工程师',6),(43,'质量管理',6),(44,'QA管理',6),(45,'法务合同专员',7),(46,'成本专员',7),(47,'合同管理官',7),(48,'造价工程师',8),(49,'项目控制经理',8),(50,'项目工程师',8),(51,'安全工程师',6),(52,'实习生',5);
/*!40000 ALTER TABLE `PositionType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProgressType`
--

DROP TABLE IF EXISTS `ProgressType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProgressType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProgressType`
--

LOCK TABLES `ProgressType` WRITE;
/*!40000 ALTER TABLE `ProgressType` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProgressType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '项目编号',
  `name` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '项目名称',
  `type` int(11) NOT NULL COMMENT '项目类型',
  `project_status` int(11) NOT NULL COMMENT '项目状态',
  `status` int(11) NOT NULL DEFAULT '3' COMMENT '状态，3，6，9分别表示[正常，待定，删除]',
  `owner` int(11) NOT NULL COMMENT '项目负责人',
  `pm` int(11) NOT NULL COMMENT '项目经理',
  `dm` int(11) NOT NULL COMMENT '项目二级审批人，部门经理/副总',
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '项目添加时间',
  `startTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `endTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `ex_endTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '预计完成时间',
  `progress` int(11) NOT NULL COMMENT '项目进度，关联字典表',
  `hours` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `oh_dept` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=1027 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
INSERT INTO `Project` VALUES (1,'0001','OH-财务部',7,5,3,9,9,0,'0000-00-00 00:00:00','2013-04-19 16:00:00','2023-04-19 16:00:00','2023-04-19 16:00:00',0,2147483647,0,0,2),(2,'0002','OH-采购部',7,5,3,3,3,0,'0000-00-00 00:00:00','2013-04-19 16:00:00','2023-04-19 16:00:00','2023-04-19 16:00:00',0,2147483647,0,0,3),(3,'0003','OH-人事行政部',7,5,3,16,16,0,'0000-00-00 00:00:00','2013-04-19 16:00:00','2023-04-19 16:00:00','2023-04-19 16:00:00',0,2147483647,0,0,4),(4,'0004','OH-设计部',7,5,3,4,4,0,'0000-00-00 00:00:00','2013-04-19 16:00:00','2023-04-19 16:00:00','2023-04-19 16:00:00',0,2147483647,0,0,5),(5,'0005','OH-施工部',7,5,3,5,5,0,'0000-00-00 00:00:00','2013-04-19 16:00:00','2023-04-19 16:00:00','2023-04-19 16:00:00',0,2147483647,0,0,6),(6,'0006','OH-市场合同部',7,5,3,1,1,0,'0000-00-00 00:00:00','2013-04-19 16:00:00','2023-04-19 16:00:00','2023-04-19 16:00:00',0,2147483647,0,0,7),(7,'0007','OH-项目运营部',7,5,3,2,2,0,'0000-00-00 00:00:00','2013-04-19 16:00:00','2023-04-19 16:00:00','2023-04-19 16:00:00',0,2147483647,0,0,8),(8,'0008','OH-总经理部',7,5,3,1,1,0,'0000-00-00 00:00:00','2013-04-19 16:00:00','2023-04-19 16:00:00','2023-04-19 16:00:00',0,2147483647,0,0,1),(1000,'0009','测试项目1',2,5,3,35,35,0,'0000-00-00 00:00:00','2013-07-28 16:00:00','2013-09-04 16:00:00','2013-09-04 16:00:00',2,1200,0,950000,0),(1001,'DSOL1303','苏尔维',2,5,3,2,2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,200,0,0,0),(1002,'A009','Test 2',1,5,3,2,138,2,'0000-00-00 00:00:00','2013-07-31 16:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,1100,1000000,1010000,0),(1003,'DRHD1301','罗地亚飞翔TRIPH项目基础设计和详细设计询价 ',2,5,3,9,35,0,'0000-00-00 00:00:00','2013-02-19 16:00:00','2013-06-29 16:00:00','2013-06-29 16:00:00',99,2532,719952,719952,0),(1004,'DRHD1303','罗地亚飞翔精细化工异味消除项目（叔胺&脂肪胺）',2,7,3,9,52,0,'0000-00-00 00:00:00','2013-04-23 16:00:00','2013-06-27 16:00:00','2013-08-06 16:00:00',100,4020,548826,548826,0),(1005,'DLRZ1302','Lubrizol(Shanghai)TPU Pilot Project DED',2,5,3,9,4,0,'0000-00-00 00:00:00','2013-04-17 16:00:00','2013-06-29 16:00:00','2013-07-30 16:00:00',90,2056,371000,371000,0),(1006,'DEVT1301','Evonik Marco Polo MP05 project',2,4,3,9,80,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,1306,308000,308000,0),(1007,'DJLZ1301','DED Service for Lubrizol P1 Blending Expansion Project',2,5,3,9,4,0,'0000-00-00 00:00:00','2013-06-30 16:00:00','2013-08-14 16:00:00','2013-08-30 16:00:00',50,1321,280000,280000,0),(1008,'DSOL1304','Solvay泰兴项目储罐设',2,5,3,9,81,0,'0000-00-00 00:00:00','2013-07-01 16:00:00','2013-08-29 16:00:00','2013-08-26 16:00:00',60,1880,335000,335000,0),(1009,'DHON1301','Honeywell Bead Expansion Line D Project',2,5,3,9,80,0,'0000-00-00 00:00:00','2013-05-19 16:00:00','2013-11-28 16:00:00','2013-11-28 16:00:00',36,12364,2080000,2080000,0),(1010,'ASOL1302','TRIPH 102A/B Project Construction Site Services - Chen Hongwei, Wang Yanling',5,5,3,9,51,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,800,316800,316800,0),(1011,'DRHD1305','罗地亚（Solvay） VIP MCA & Fatty acid & Polar clean Project DED',2,5,3,9,78,0,'0000-00-00 00:00:00','2013-05-30 16:00:00','2013-09-14 16:00:00','2013-09-14 16:00:00',73,4248,850000,850000,0),(1012,'DRHD1304','罗地亚飞翔（Solvay）特种胺装置风险缓解项目',2,5,3,9,51,0,'0000-00-00 00:00:00','2013-05-20 16:00:00','2013-06-29 16:00:00','0000-00-00 00:00:00',95,1180,248723,248723,0),(1013,'DRHD1306','罗地亚飞翔（Solvay）特种胺改造项目详细设计（MPMD_001）',2,5,3,9,35,0,'0000-00-00 00:00:00','2013-05-26 16:00:00','2013-06-29 16:00:00','2013-07-14 16:00:00',95,684,120000,120000,0),(1014,'DDOW1303','DOW MST 2801 DED for UZJG Small project ',2,5,3,9,59,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,912,173300,173300,0),(1015,'DBSF1301','巴斯夫 CET(聚氨酯) Ring pipe part 1 ',2,5,3,9,78,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,520,84489,84489,0),(1016,'DINV1302','INVISTA SCIP 150 KTA Polymer Project FEL3 ',2,5,3,9,4,0,'0000-00-00 00:00:00','2013-07-17 16:00:00','2013-12-30 16:00:00','2013-12-30 16:00:00',3,21360,6276128,6276128,0),(1017,'DCBT1304','卡博特 Drawing Convertion',2,5,3,9,81,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,666,85000,85000,0),(1018,'DLBT1302','加工厂预净化罐审核和出图工作',2,5,3,9,81,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,16,2000,2000,0),(1019,'DLTC1301-1','乐天化学（嘉兴）EOA添加剂改造项目（施工图设计）',2,5,3,9,138,0,'0000-00-00 00:00:00','2013-07-31 16:00:00','2013-09-09 16:00:00','2013-09-09 16:00:00',5,1500,230000,230000,0),(1020,'DLTC1301-2','乐天化学（嘉兴）EOA添加剂改造项目（安全专篇编制）',2,5,3,9,138,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2013-09-22 16:00:00',0,200,30000,30000,0),(1021,'DZHY1301~1318','福建LNG、L-CNG、油气合建站、瓶组站项目',2,5,3,9,52,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,12000,1848000,1848000,0),(1022,'ASOL1301','Solvay  assignment---One Electrical-Zhang Min',5,5,3,9,2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,704,225000,225000,0),(1023,'AJAC1301','Jacobs Assignment for Clariant  Project----Xia Yu , Gao Tengfei  and Wang Xuqiang',5,5,3,9,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,1540,300000,300000,0),(1024,'DSOL1314','Update P&ID for Solvay (Rhodia) Polyamide Shanghai Plant',2,5,3,9,2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,555,100000,100000,0),(1025,'DHON1302','F202800-烟台万华-压力管道图纸转化',2,5,3,9,52,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,32,80000,80000,0),(1026,'DDJD1301','衢州顶津2013年设备安装工程设计服务-压力管道审核',2,5,3,9,52,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,16,3000,3000,0);
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectStatusType`
--

DROP TABLE IF EXISTS `ProjectStatusType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectStatusType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectStatusType`
--

LOCK TABLES `ProjectStatusType` WRITE;
/*!40000 ALTER TABLE `ProjectStatusType` DISABLE KEYS */;
INSERT INTO `ProjectStatusType` VALUES (1,'投标准备中'),(2,'标书已交'),(3,'未中标'),(4,'项目未启动'),(5,'项目正常进行'),(6,'项目延期执行'),(7,'项目已完成'),(8,'弃标');
/*!40000 ALTER TABLE `ProjectStatusType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectType`
--

DROP TABLE IF EXISTS `ProjectType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectType`
--

LOCK TABLES `ProjectType` WRITE;
/*!40000 ALTER TABLE `ProjectType` DISABLE KEYS */;
INSERT INTO `ProjectType` VALUES (1,'施工'),(2,'设计服务或咨询'),(3,'总承包或部分总承包'),(4,'设计+总承包管理或总承包管理的部分内容'),(5,'人员派遣'),(6,'采购服务'),(7,'其他');
/*!40000 ALTER TABLE `ProjectType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project_Bill`
--

DROP TABLE IF EXISTS `Project_Bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project_Bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '项目id',
  `add_uid` int(11) NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `desc` text COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project_Bill`
--

LOCK TABLES `Project_Bill` WRITE;
/*!40000 ALTER TABLE `Project_Bill` DISABLE KEYS */;
INSERT INTO `Project_Bill` VALUES (4,1000,2,'2013-08-01 01:05:33','2013-08-13 16:00:00','第一次付款',200000,3);
/*!40000 ALTER TABLE `Project_Bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project_Employee`
--

DROP TABLE IF EXISTS `Project_Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project_Employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL COMMENT '项目id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project_Employee`
--

LOCK TABLES `Project_Employee` WRITE;
/*!40000 ALTER TABLE `Project_Employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `Project_Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project_Hours`
--

DROP TABLE IF EXISTS `Project_Hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project_Hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '项目id',
  `add_uid` int(11) NOT NULL,
  `hours` int(11) NOT NULL DEFAULT '0',
  `reason` text COLLATE utf8_bin NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project_Hours`
--

LOCK TABLES `Project_Hours` WRITE;
/*!40000 ALTER TABLE `Project_Hours` DISABLE KEYS */;
INSERT INTO `Project_Hours` VALUES (1,6,11,100,'append 100 hours','2013-07-25 18:17:59'),(2,6,11,300,'delay again','2013-07-25 18:18:51'),(3,6,11,200,'delay 3 times','2013-07-25 18:20:30'),(4,1,23,200,'for Aug.','2013-07-28 15:24:45'),(5,1,2,100,'测试数据','2013-07-29 03:18:53'),(6,3,2,100,'wu ','2013-07-30 05:35:55'),(7,1000,2,200,'For test ','2013-07-31 14:37:53'),(8,1002,2,100,'Delay','2013-08-02 03:07:12');
/*!40000 ALTER TABLE `Project_Hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project_Price_History`
--

DROP TABLE IF EXISTS `Project_Price_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project_Price_History` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '项目id',
  `add_uid` int(11) NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `desc` text COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project_Price_History`
--

LOCK TABLES `Project_Price_History` WRITE;
/*!40000 ALTER TABLE `Project_Price_History` DISABLE KEYS */;
INSERT INTO `Project_Price_History` VALUES (9,1000,2,'2013-08-01 01:05:12','first',1000000,3),(10,1000,2,'2013-08-01 14:42:18','Order change',-50000,3),(11,1002,138,'2013-08-02 03:05:29','First',10000,3);
/*!40000 ALTER TABLE `Project_Price_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project_Task`
--

DROP TABLE IF EXISTS `Project_Task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project_Task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL COMMENT '项目id',
  `task_id` int(11) NOT NULL COMMENT '任务 id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project_Task`
--

LOCK TABLES `Project_Task` WRITE;
/*!40000 ALTER TABLE `Project_Task` DISABLE KEYS */;
/*!40000 ALTER TABLE `Project_Task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoleType`
--

DROP TABLE IF EXISTS `RoleType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RoleType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoleType`
--

LOCK TABLES `RoleType` WRITE;
/*!40000 ALTER TABLE `RoleType` DISABLE KEYS */;
INSERT INTO `RoleType` VALUES (1,'超级管理员'),(2,'IT系统人员'),(3,'总经理'),(4,'副总经理'),(5,'部门经理'),(6,'项目经理'),(8,'普通员工');
/*!40000 ALTER TABLE `RoleType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Task`
--

DROP TABLE IF EXISTS `Task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL COMMENT '所属项目id',
  `name` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级任务id',
  `status` int(11) NOT NULL DEFAULT '3' COMMENT '状态，3，6，9分别表示[正常，待定，删除]',
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '任务添加时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hour` int(11) NOT NULL DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subName` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Task`
--

LOCK TABLES `Task` WRITE;
/*!40000 ALTER TABLE `Task` DISABLE KEYS */;
INSERT INTO `Task` VALUES (42,8,0,0,3,'2013-07-28 09:49:46','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(41,7,0,0,3,'2013-07-28 09:49:34','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(40,6,0,0,3,'2013-07-28 09:49:24','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(39,5,0,0,3,'2013-07-28 09:49:08','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(38,4,0,0,3,'2013-07-28 09:48:49','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(37,3,0,0,3,'2013-07-28 09:48:38','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(29,2,0,0,3,'2013-07-28 09:41:30','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(30,4,0,0,3,'2013-07-28 09:41:45','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(31,5,0,0,3,'2013-07-28 09:42:12','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(32,6,0,0,3,'2013-07-28 09:42:21','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(36,2,0,0,3,'2013-07-28 09:48:26','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(35,1,0,0,3,'2013-07-28 09:48:13','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(34,8,0,0,3,'2013-07-28 09:42:49','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(33,7,0,0,3,'2013-07-28 09:42:29','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(28,3,0,0,3,'2013-07-28 09:33:17','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(27,1,0,0,3,'2013-07-28 08:05:53','2023-04-19 16:00:00',87600000,'2013-04-19 16:00:00',0),(44,1000,0,0,9,'2013-07-30 05:44:21','2013-07-30 16:00:00',20,'2013-07-28 16:00:00',0),(45,1000,0,0,9,'2013-07-30 05:45:01','2013-08-04 16:00:00',20,'2013-07-31 16:00:00',0),(46,1000,0,0,9,'2013-07-30 05:45:31','2013-08-12 16:00:00',40,'2013-08-05 16:00:00',0),(47,1002,0,0,9,'2013-08-02 02:58:19','2013-08-28 16:00:00',100,'2013-07-28 16:00:00',0),(48,1002,0,0,9,'2013-08-02 02:59:03','2013-10-03 16:00:00',200,'2013-08-07 16:00:00',0),(49,1000,1,0,3,'2013-08-20 00:10:36','2013-07-30 16:00:00',20,'2013-07-28 16:00:00',6),(50,1000,2,0,3,'2013-08-20 00:11:02','2013-08-06 16:00:00',40,'2013-07-28 16:00:00',10),(51,1000,1,0,3,'2013-08-20 00:11:25','2013-08-06 16:00:00',20,'2013-07-28 16:00:00',7),(52,1002,2,0,3,'2013-08-20 00:12:49','2013-08-28 16:00:00',100,'2013-07-28 16:00:00',9),(53,1002,4,0,3,'2013-08-20 00:20:23','2013-10-03 16:00:00',200,'2013-08-07 16:00:00',22),(54,1001,2,0,3,'2013-08-20 05:44:51','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',10),(55,1001,2,0,3,'2013-08-20 05:45:04','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',11),(56,1003,2,0,3,'2013-08-26 13:45:01','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',9),(57,1003,2,0,3,'2013-08-26 13:46:24','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',11),(58,1003,2,0,3,'2013-08-26 13:46:56','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',10),(59,1003,2,0,3,'2013-08-26 14:17:42','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',12),(60,1003,2,0,3,'2013-08-26 14:18:34','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',13);
/*!40000 ALTER TABLE `Task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaskType`
--

DROP TABLE IF EXISTS `TaskType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaskType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `oh_dept` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaskType`
--

LOCK TABLES `TaskType` WRITE;
/*!40000 ALTER TABLE `TaskType` DISABLE KEYS */;
INSERT INTO `TaskType` VALUES (1,'项目管理',0,0),(2,'设计',0,0),(3,'采购',0,0),(4,'施工',0,0),(5,'投标',0,0),(6,'项目管理',1,0),(7,'进度控制',1,0),(8,'费用控制',1,0),(9,'设计管理',2,0),(10,'工艺',2,0),(11,'管道',2,0),(12,'仪表自控',2,0),(13,'电气弱电',2,0),(14,'消防给排水',2,0),(15,'暖通',2,0),(16,'结构',2,0),(17,'建筑',2,0),(18,'动设备',2,0),(19,'静设备',2,0),(20,'总图',2,0),(21,'文档控制',2,0),(22,'施工管理',4,0),(23,'安全管理',4,0),(24,'质量管理',4,0),(25,'投标报价',5,0),(26,'OH-总经理部',101,1),(27,'OH-财务部',102,2),(28,'OH-采购部',103,3),(29,'OH-人事行政部',104,4),(30,'OH-设计部',105,5),(31,'OH-施工部',106,6),(32,'OH-市场合同部',107,7),(33,'OH-项目运营部',108,8),(34,'分包采购',3,0),(35,'设备和材料采购',3,0);
/*!40000 ALTER TABLE `TaskType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TimeSheet`
--

DROP TABLE IF EXISTS `TimeSheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TimeSheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `project_id` int(11) NOT NULL COMMENT '所属项目id',
  `task_id` int(11) NOT NULL COMMENT '所属任务id',
  `day1_hours` int(11) NOT NULL DEFAULT '0',
  `day2_hours` int(11) NOT NULL DEFAULT '0',
  `day3_hours` int(11) NOT NULL DEFAULT '0',
  `day4_hours` int(11) NOT NULL DEFAULT '0',
  `day5_hours` int(11) NOT NULL DEFAULT '0',
  `day6_hours` int(11) NOT NULL DEFAULT '0',
  `day7_hours` int(11) NOT NULL DEFAULT '0',
  `range_key` varchar(100) COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '类型，1，2，3分别表示正常，加班，节假日',
  `approve_status` int(11) NOT NULL DEFAULT '1' COMMENT '审批状态, 关联字典表',
  `status` int(11) NOT NULL DEFAULT '3' COMMENT '状态，3，6，9分别表示[正常，待定，删除]',
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '任务添加时间',
  `updateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `startTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approve_comments` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TimeSheet_uid` (`uid`),
  KEY `TimeSheet_pid` (`project_id`),
  KEY `TimeSheet_as` (`approve_status`),
  KEY `uid_time_range` (`uid`,`range_key`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TimeSheet`
--

LOCK TABLES `TimeSheet` WRITE;
/*!40000 ALTER TABLE `TimeSheet` DISABLE KEYS */;
INSERT INTO `TimeSheet` VALUES (26,23,3,28,3,3,3,3,3,0,0,'2013-07-29~2013-07-28',3,4,3,'2013-07-28 09:34:33','0000-00-00 00:00:00','0000-00-00 00:00:00',''),(27,31,1000,44,4,5,5,0,0,0,0,'2013-07-29~2013-08-04',1,4,3,'2013-07-30 05:49:12','0000-00-00 00:00:00','2013-07-28 16:00:00',''),(28,23,1000,44,1,2,2,3,4,5,8,'2013-07-29~2013-08-04',1,1,3,'2013-07-30 16:15:34','0000-00-00 00:00:00','2013-07-28 16:00:00',NULL),(29,23,3,28,0,0,0,0,8,0,0,'2013-07-29~2013-08-04',3,1,3,'2013-07-30 16:41:58','0000-00-00 00:00:00','2013-07-28 16:00:00',NULL),(30,111,1000,44,4,6,0,8,0,0,0,'2013-07-29~2013-08-04',1,4,3,'2013-08-01 13:18:00','0000-00-00 00:00:00','2013-07-28 16:00:00',''),(31,138,7,33,0,0,0,0,2,0,0,'2013-07-29~2013-08-04',3,4,3,'2013-08-01 13:33:04','0000-00-00 00:00:00','2013-07-28 16:00:00',''),(32,111,1000,44,2,0,3,0,0,0,0,'2013-07-29~2013-08-04',2,4,3,'2013-08-01 14:51:24','0000-00-00 00:00:00','2013-07-28 16:00:00',''),(33,2,1000,44,2,3,5,8,0,0,0,'2013-07-29~2013-08-04',1,4,3,'2013-08-02 02:40:16','0000-00-00 00:00:00','2013-07-28 16:00:00',''),(34,2,1000,44,2,0,0,0,0,0,0,'2013-07-29~2013-08-04',2,4,3,'2013-08-02 03:09:59','0000-00-00 00:00:00','2013-07-28 16:00:00',''),(35,2,1002,48,8,0,0,0,0,0,0,'2013-07-29~2013-08-04',2,2,3,'2013-08-02 03:10:18','0000-00-00 00:00:00','2013-07-28 16:00:00',''),(36,11,1000,44,8,8,8,8,8,8,8,'2013-07-29~2013-08-04',1,1,3,'2013-08-02 03:44:42','0000-00-00 00:00:00','2013-07-28 16:00:00',NULL),(37,11,1000,44,16,0,0,0,0,0,16,'2013-07-29~2013-08-04',2,1,3,'2013-08-02 03:45:29','0000-00-00 00:00:00','2013-07-28 16:00:00',NULL),(38,3,1000,44,4,5,8,8,7,8,6,'2013-08-12~2013-08-18',1,1,3,'2013-08-13 08:35:16','0000-00-00 00:00:00','2013-08-11 16:00:00',NULL),(39,3,1000,1,2,1,0,0,0,0,0,'2013-08-19~2013-08-25',2,1,3,'2013-08-20 04:11:55','0000-00-00 00:00:00','2013-08-18 16:00:00',NULL),(40,3,1000,1,2,4,5,6,6,0,0,'2013-08-19~2013-08-25',1,4,3,'2013-08-20 04:14:31','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(41,3,1002,2,3,4,1,0,0,0,0,'2013-08-19~2013-08-25',1,1,3,'2013-08-20 04:16:07','0000-00-00 00:00:00','2013-08-18 16:00:00',NULL),(42,3,8,26,0,0,2,5,0,0,0,'2013-08-19~2013-08-25',3,2,3,'2013-08-20 04:16:38','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(43,3,8,26,0,0,0,5,0,0,0,'2013-08-19~2013-08-25',4,1,3,'2013-08-20 04:17:53','0000-00-00 00:00:00','2013-08-18 16:00:00',NULL),(44,2,1001,2,8,6,3,4,5,0,0,'2013-08-19~2013-08-25',1,1,9,'2013-08-20 05:46:22','0000-00-00 00:00:00','2013-08-18 16:00:00',NULL),(45,23,3,29,4,0,0,0,0,0,0,'2013-08-19~2013-08-25',3,5,3,'2013-08-20 08:29:15','0000-00-00 00:00:00','2013-08-18 16:00:00','test'),(46,23,1000,1,2,8,6,8,8,8,0,'2013-08-19~2013-08-25',1,4,3,'2013-08-20 08:29:39','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(47,23,1002,2,2,0,0,0,0,0,0,'2013-08-19~2013-08-25',2,1,9,'2013-08-20 14:35:30','0000-00-00 00:00:00','2013-08-18 16:00:00',NULL),(48,23,1002,2,2,0,0,0,0,0,0,'2013-08-19~2013-08-25',1,2,3,'2013-08-20 14:36:18','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(49,23,1000,1,5,0,0,0,0,0,0,'2013-08-19~2013-08-25',2,4,3,'2013-08-21 06:08:33','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(50,35,1000,1,2,3,3,3,3,0,0,'2013-08-19~2013-08-25',1,4,3,'2013-08-21 06:33:04','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(51,35,1000,1,3,3,3,3,3,0,0,'2013-08-19~2013-08-25',1,4,3,'2013-08-21 16:21:14','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(52,35,1000,1,3,2,2,2,2,0,0,'2013-08-19~2013-08-25',1,4,3,'2013-08-21 16:21:47','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(53,35,1000,1,2,1,1,1,1,1,0,'2013-08-19~2013-08-25',2,4,3,'2013-08-22 00:53:05','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(54,23,1000,1,0,0,1,0,0,0,0,'2013-08-19~2013-08-25',1,4,3,'2013-08-22 03:45:10','0000-00-00 00:00:00','2013-08-18 16:00:00',''),(55,23,3,29,0,0,1,0,0,0,0,'2013-08-19~2013-08-25',3,5,3,'2013-08-22 03:50:17','0000-00-00 00:00:00','2013-08-18 16:00:00','test'),(56,23,1000,1,4,0,0,0,0,0,0,'2013-08-12~2013-08-18',1,5,3,'2013-08-22 04:40:32','0000-00-00 00:00:00','2013-08-11 16:00:00','test'),(57,23,3,29,2,0,0,0,0,0,0,'2013-08-12~2013-08-18',3,5,3,'2013-08-22 04:41:02','0000-00-00 00:00:00','2013-08-11 16:00:00','test'),(58,23,3,29,2,0,0,0,0,0,0,'2013-08-12~2013-08-18',4,5,3,'2013-08-22 04:41:32','0000-00-00 00:00:00','2013-08-11 16:00:00','test'),(59,147,1000,2,8,8,8,8,8,0,0,'2013-08-19~2013-08-25',1,5,3,'2013-08-22 06:54:10','0000-00-00 00:00:00','2013-08-18 16:00:00','test'),(60,35,1000,1,3,8,8,8,8,0,0,'2013-08-26~2013-09-01',1,5,9,'2013-08-22 07:00:49','0000-00-00 00:00:00','2013-08-25 16:00:00','test'),(61,35,1000,1,8,8,8,8,8,0,0,'2013-08-26~2013-09-01',1,5,9,'2013-08-22 08:19:23','0000-00-00 00:00:00','2013-08-25 16:00:00','test'),(62,35,1000,1,8,8,8,8,8,0,0,'2013-08-26~2013-09-01',1,5,3,'2013-08-22 08:26:18','0000-00-00 00:00:00','2013-08-25 16:00:00','test'),(63,23,1000,1,0,8,0,0,0,0,0,'2013-08-12~2013-08-18',1,5,3,'2013-08-22 09:21:25','0000-00-00 00:00:00','2013-08-11 16:00:00','test'),(64,2,1003,2,7,6,0,0,0,0,0,'2013-08-26~2013-09-01',1,1,9,'2013-08-26 14:20:00','0000-00-00 00:00:00','2013-08-25 16:00:00',NULL),(65,2,8,26,1,0,6,0,0,0,0,'2013-08-26~2013-09-01',3,1,9,'2013-08-26 14:41:14','0000-00-00 00:00:00','2013-08-25 16:00:00',NULL),(66,2,1003,2,7,24,0,0,0,0,0,'2013-08-26~2013-09-01',1,1,9,'2013-08-26 14:45:30','0000-00-00 00:00:00','2013-08-25 16:00:00',NULL),(67,2,1003,2,6,6,4,8,8,0,0,'2013-08-26~2013-09-01',1,1,9,'2013-08-26 23:45:12','0000-00-00 00:00:00','2013-08-25 16:00:00',NULL),(68,2,1003,2,3,2,4,0,0,0,0,'2013-08-26~2013-09-01',1,1,9,'2013-08-27 00:30:42','0000-00-00 00:00:00','2013-08-25 16:00:00',NULL),(69,2,1003,2,8,5,3,8,0,0,0,'2013-08-26~2013-09-01',1,1,3,'2013-08-27 01:04:20','0000-00-00 00:00:00','2013-08-25 16:00:00',NULL),(70,2,1003,2,2,3,6,0,0,0,0,'2013-08-26~2013-09-01',1,1,3,'2013-08-27 01:04:48','0000-00-00 00:00:00','2013-08-25 16:00:00',NULL);
/*!40000 ALTER TABLE `TimeSheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TimeSheetStatusType`
--

DROP TABLE IF EXISTS `TimeSheetStatusType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TimeSheetStatusType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TimeSheetStatusType`
--

LOCK TABLES `TimeSheetStatusType` WRITE;
/*!40000 ALTER TABLE `TimeSheetStatusType` DISABLE KEYS */;
INSERT INTO `TimeSheetStatusType` VALUES (1,'已保存'),(2,'待一级审批'),(3,'待二级审批'),(4,'审批成功'),(5,'一级审批被驳回'),(6,'二级审批被驳回');
/*!40000 ALTER TABLE `TimeSheetStatusType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TimeSheet_Type`
--

DROP TABLE IF EXISTS `TimeSheet_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TimeSheet_Type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TimeSheet_Type`
--

LOCK TABLES `TimeSheet_Type` WRITE;
/*!40000 ALTER TABLE `TimeSheet_Type` DISABLE KEYS */;
INSERT INTO `TimeSheet_Type` VALUES (1,'正常工时'),(2,'加班工时'),(3,'OH工时'),(4,'休假');
/*!40000 ALTER TABLE `TimeSheet_Type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-02 18:51:04
