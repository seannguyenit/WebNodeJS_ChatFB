-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: simpleweb
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL,
  `pass` varchar(1000) NOT NULL,
  `role` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL DEFAULT '0',
  `is_active` tinyint DEFAULT '1',
  `real_name` varchar(2000) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `group_id` varchar(100) DEFAULT NULL,
  `deadtime` datetime DEFAULT NULL,
  `fb_id` char(100) DEFAULT NULL,
  `fb_name` char(100) DEFAULT NULL,
  `avatar_url` mediumtext,
  `bill_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (10,'kt_1','123456',1,'2021-08-10 10:51:46',12,1,'nguyen le loc thinh','thinhspgood@gmail.com','0792062973','To 2 Vinh Diem Trung Vinh Hiep','1,2,3','0000-00-00 00:00:00','','','http://localhost:3000/home/user','nt1'),(14,'qtv_1','123456',5,'2021-08-10 15:02:57',10,1,'','','','','1',NULL,NULL,NULL,NULL,NULL),(12,'tq_1','123456',2,'2021-08-10 14:53:10',7,1,'','','','','1',NULL,NULL,NULL,NULL,NULL),(13,'tq_2','123456',2,'2021-08-10 14:53:19',7,1,'','','','','3',NULL,NULL,NULL,NULL,NULL),(7,'admin','123456',0,'2021-08-09 08:48:24',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'qtv_2','123456',5,'2021-08-10 15:03:21',10,1,'','','','','1',NULL,NULL,NULL,NULL,NULL),(11,'kt_2','123456',1,'2021-08-10 10:57:03',13,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(18,'ctv_t1','123456',3,'2021-08-11 10:01:32',14,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(16,'qtv_3','123456',5,'2021-08-10 15:03:37',11,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(17,'qtv_4','123456',5,'2021-08-10 15:03:48',11,1,'','','','','1',NULL,NULL,NULL,NULL,NULL),(19,'ctv_a1','123456',6,'2021-08-11 10:01:53',14,1,'','','','','1',NULL,NULL,NULL,NULL,NULL),(20,'ctv_t2','123456',3,'2021-08-11 10:02:24',15,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(21,'ctv_a2','123456',6,'2021-08-11 10:03:56',15,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(22,'ctv_t3','123456',3,'2021-08-11 10:05:56',16,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(23,'ctv_a3','123456',6,'2021-08-11 10:06:16',16,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_permission`
--

DROP TABLE IF EXISTS `account_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_permission` (
  `acc_id` int NOT NULL,
  `action` varchar(45) NOT NULL,
  `status` tinyint DEFAULT '0',
  `par` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`acc_id`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_permission`
--

LOCK TABLES `account_permission` WRITE;
/*!40000 ALTER TABLE `account_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NOT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `group_id` int DEFAULT NULL,
  `stt` smallint DEFAULT '0',
  `customer` varchar(1000) DEFAULT NULL,
  `u_id` binary(16) DEFAULT NULL,
  `accepted` int DEFAULT NULL,
  `accountant` int DEFAULT NULL,
  `reject` int DEFAULT NULL,
  `code` char(100) DEFAULT NULL,
  `accepted_note` longtext,
  `accountant_note` longtext,
  `reject_note` longtext,
  `money_receive` decimal(10,3) DEFAULT NULL,
  `trade_code` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (106,10,'2021-11-02 08:58:20',0,3,'100000173441890',_binary '5ad1f7c9-3b80-11',7,7,NULL,'nt1-0222','tq','kt',NULL,NULL,'23333'),(107,10,'2021-11-03 09:50:49',0,1,'100000173441890',_binary 'd9d71c40-3c50-11',7,7,NULL,'nt1-0022','xyz','abc',NULL,NULL,'3333'),(108,10,'2021-11-07 15:37:54',0,1,'100067863644324',_binary '00892349-3fa6-11',NULL,7,NULL,'nt1-0003',NULL,NULL,NULL,NULL,'23333'),(109,10,'2021-11-07 15:40:20',0,0,'100017865601279',_binary '57868736-3fa6-11',NULL,NULL,NULL,'nt1-00099',NULL,NULL,NULL,NULL,'23333');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `bill_uid` binary(16) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `ck` decimal(10,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` VALUES (149,12,4.000,_binary '5ad1f7c9-3b80-11',50000.000,7.000),(150,13,4.000,_binary '5ad1f7c9-3b80-11',60000.000,20000.000),(151,12,2.000,_binary 'd9d71c40-3c50-11',50000.000,7.000),(152,11,1.000,_binary '00892349-3fa6-11',70000.000,10.000),(153,12,1.000,_binary '00892349-3fa6-11',50000.000,7.000),(154,13,1.000,_binary '57868736-3fa6-11',60000.000,20000.000);
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_group`
--

DROP TABLE IF EXISTS `chat_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `user_ids` varchar(1000) DEFAULT NULL,
  `note` longtext,
  `cus_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `acc_receive` int DEFAULT '0',
  `fb_acc_send` char(100) DEFAULT NULL,
  `fb_acc_send_name` char(100) DEFAULT NULL,
  `pro_ids` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group`
--

LOCK TABLES `chat_group` WRITE;
/*!40000 ALTER TABLE `chat_group` DISABLE KEYS */;
INSERT INTO `chat_group` VALUES (66,'','','','','100067863644324',10,NULL,NULL,NULL);
/*!40000 ALTER TABLE `chat_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_group_mess`
--

DROP TABLE IF EXISTS `chat_group_mess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_group_mess` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mess` longtext NOT NULL,
  `sender` int NOT NULL,
  `cus_id` char(100) NOT NULL,
  `group_name` char(100) DEFAULT NULL,
  `group_time` datetime DEFAULT NULL,
  `order` int DEFAULT '0',
  `img_src` longtext,
  `file` longtext,
  `acc_receive` int DEFAULT NULL,
  `mess_key` longtext,
  `mess_index` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8749 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group_mess`
--

LOCK TABLES `chat_group_mess` WRITE;
/*!40000 ALTER TABLE `chat_group_mess` DISABLE KEYS */;
INSERT INTO `chat_group_mess` VALUES (8656,'https://www.facebook.com/lyn.nguyen.908\nLyn Nguyễn',1,'100067863644324','10 10  27 Thang 8  2021','2021-08-27 10:10:00',0,'https://scontent.xx.fbcdn.net/v/t1.18169-1/c0.76.320.168a/p320x320/27973047_1161867323950082_8659037453551882742_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=8Yn4pi6CeisAX8J62o-&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=afec1b139d56214f3c0d77135a895f38&oe=61B38687',NULL,10,'https://www.facebook.com/lyn.nguyen.908\nLyn Nguyen',1),(8657,'https://www.facebook.com/locthinh.nguyenle\nSean Nguyễn',0,'100067863644324','10 44  9 Thang 9  2021','2021-09-09 10:44:00',0,'https://scontent.xx.fbcdn.net/v/t1.6435-1/c0.76.320.168a/p320x320/125527457_3679487615430942_2750626466672351021_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=Wo49G8yaMzAAX8lzirj&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=9f26d72586f0bf8b047350c53113206b&oe=61B328EC',NULL,10,'https://www.facebook.com/locthinh.nguyenle\nSean Nguyen',2),(8658,'1',1,'100067863644324','23 04  15 Thang 9  2021','2021-09-15 23:04:00',0,NULL,NULL,10,'1',3),(8659,'ok',0,'100067863644324','23 46  15 Thang 9  2021','2021-09-15 23:46:00',0,NULL,NULL,10,'ok',4),(8660,'2',0,'100067863644324','00 21  16 Thang 9  2021','2021-09-16 00:21:00',0,NULL,NULL,10,'2',5),(8661,'done',0,'100067863644324','00 49  16 Thang 9  2021','2021-09-16 00:49:00',0,NULL,NULL,10,'done',6),(8662,'hello',0,'100067863644324','00 49  16 Thang 9  2021','2021-09-16 00:49:00',1,NULL,NULL,10,'hello',7),(8663,'test',0,'100067863644324','00 49  16 Thang 9  2021','2021-09-16 00:49:00',2,NULL,NULL,10,'test',8),(8664,'ok',0,'100067863644324','09 55  16 Thang 9  2021','2021-09-16 09:55:00',0,NULL,NULL,10,'ok',9),(8665,'uhm',1,'100067863644324','09 55  16 Thang 9  2021','2021-09-16 09:55:00',1,NULL,NULL,10,'uhm',10),(8666,'oh',0,'100067863644324','09 55  16 Thang 9  2021','2021-09-16 09:55:00',2,NULL,NULL,10,'oh',11),(8667,'123456',0,'100067863644324','15 18  18 Thang 9  2021','2021-09-18 15:18:00',0,NULL,NULL,10,'123456',12),(8668,'test 1809',1,'100067863644324','15 18  18 Thang 9  2021','2021-09-18 15:18:00',1,NULL,NULL,10,'test 1809',13),(8669,'res',0,'100067863644324','15 18  18 Thang 9  2021','2021-09-18 15:18:00',2,NULL,NULL,10,'res',14),(8670,'ok',0,'100067863644324','15 18  18 Thang 9  2021','2021-09-18 15:18:00',3,NULL,NULL,10,'ok',15),(8671,'test ok',1,'100067863644324','14 50  4 Thang 10  2021','2021-10-04 14:50:00',0,NULL,NULL,10,'test ok',16),(8672,'hat hay ko',0,'100067863644324','14 50  4 Thang 10  2021','2021-10-04 14:50:00',1,NULL,NULL,10,'hat hay ko',17),(8673,'hay ma',1,'100067863644324','14 50  4 Thang 10  2021','2021-10-04 14:50:00',2,NULL,NULL,10,'hay ma',18),(8674,'thu lai xem',0,'100067863644324','14 50  4 Thang 10  2021','2021-10-04 14:50:00',3,NULL,NULL,10,'thu lai xem',19),(8675,'1 ne',1,'100067863644324','14 50  4 Thang 10  2021','2021-10-04 14:50:00',4,NULL,NULL,10,'1 ne',20),(8676,'2 ne',0,'100067863644324','14 50  4 Thang 10  2021','2021-10-04 14:50:00',5,NULL,NULL,10,'2 ne',21),(8677,'3 ne',1,'100067863644324','15 59  4 Thang 10  2021','2021-10-04 15:59:00',0,NULL,NULL,10,'3 ne',22),(8678,'4 ok hok',0,'100067863644324','15 59  4 Thang 10  2021','2021-10-04 15:59:00',1,NULL,NULL,10,'4 ok hok',23),(8679,'',1,'100067863644324','15 35  6 Thang 10  2021','2021-10-06 15:35:00',0,NULL,NULL,10,'',24),(8680,'test tin nhan ngay 7/10/2021 03:05',1,'100067863644324','15 05  7 Thang 10  2021','2021-10-07 15:05:00',0,NULL,NULL,10,'test tin nhan ngay 7/10/2021 03:05',25),(8681,'trả lời tin nhắn 7/10/2021 03:05',0,'100067863644324','15 05  7 Thang 10  2021','2021-10-07 15:05:00',1,NULL,NULL,10,'tra loi tin nhan 7/10/2021 03:05',26),(8682,'tiếp tục nhắn thêm',1,'100067863644324','15 05  7 Thang 10  2021','2021-10-07 15:05:00',2,NULL,NULL,10,'tiep tuc nhan them',27),(8683,'trả lời thêm để test',0,'100067863644324','15 05  7 Thang 10  2021','2021-10-07 15:05:00',3,NULL,NULL,10,'tra loi them de test',28),(8684,'https://www.facebook.com/phamtien.pham.73550\nPham Tien Pham',1,'100067863644324','15 05  7 Thang 10  2021','2021-10-07 15:05:00',4,'https://scontent.xx.fbcdn.net/v/t1.6435-1/c0.76.320.168a/p320x320/58462425_371676803437837_7775662591438749696_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=KlwPwMFRxx0AX93Ym50&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=b9b3cf86ef2c137129afed84561dfd1d&oe=61B18E98',NULL,10,'https://www.facebook.com/phamtien.pham.73550\nPham Tien Pham',29),(8685,'',0,'100067863644324','10 04  1 Thang 11  2021','2021-11-01 10:04:00',0,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/250980070_641938627187118_6345244945919141180_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=NXZrGN-AQUUAX9ognHj&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=352e56aa4e3902ec47e3eab7d05d0022&oe=61B2F4ED',NULL,10,'',30),(8686,'',0,'100067863644324','10 04  1 Thang 11  2021','2021-11-01 10:04:00',1,'https://scontent.xx.fbcdn.net/v/t1.15752-9/250644895_1053356208793563_1528722968639590973_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=aee45a&_nc_ohc=fnkbfItbkewAX8JZnuH&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=c1734bffa9c4fe33bb1ec3865f2a8ed6&oe=61B16C8C',NULL,10,'',31),(8687,'1',1,'100067863644324','CN 09 52','2021-11-07 09:52:00',0,NULL,NULL,10,'1',32),(8688,'q',1,'100067863644324','CN 10 15','2021-11-07 10:15:00',0,NULL,NULL,10,'q',33),(8689,'e',1,'100067863644324','CN 10 15','2021-11-07 10:15:00',1,NULL,NULL,10,'e',34),(8690,'2',1,'100067863644324','CN 10 15','2021-11-07 10:15:00',2,NULL,NULL,10,'2',35),(8691,'a',1,'100067863644324','CN 10 15','2021-11-07 10:15:00',3,NULL,NULL,10,'a',36),(8692,'???',1,'100067863644324','CN 10 15','2021-11-07 10:15:00',4,NULL,NULL,10,'???',37),(8693,'go go go',1,'100067863644324','CN 10 15','2021-11-07 10:15:00',5,NULL,NULL,10,'go go go',38),(8694,'',1,'100067863644324','CN 10 15','2021-11-07 10:15:00',6,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/254126679_212347560904113_6733576909315917106_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=LIoxO91VzBsAX9Ypr_E&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=6eae69eeb5189d55c8c596823269e86b&oe=61B11DB5',NULL,10,'',39),(8695,'77777777',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',0,NULL,NULL,10,'77777777',40),(8696,'a',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',1,NULL,NULL,10,'a',41),(8697,'b',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',2,NULL,NULL,10,'b',42),(8698,'c',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',3,NULL,NULL,10,'c',43),(8699,'8888',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',4,NULL,NULL,10,'8888',44),(8700,'q',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',5,NULL,NULL,10,'q',45),(8701,'w',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',6,NULL,NULL,10,'w',46),(8702,'e',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',7,NULL,NULL,10,'e',47),(8703,'r',1,'100067863644324','CN 14 55','2021-11-07 14:55:00',8,NULL,NULL,10,'r',48),(8704,'1',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',0,NULL,NULL,10,'1',49),(8705,'2',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',1,NULL,NULL,10,'2',50),(8706,'3',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',2,NULL,NULL,10,'3',51),(8707,'4',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',3,NULL,NULL,10,'4',52),(8708,'p',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',4,NULL,NULL,10,'p',53),(8709,'o',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',5,NULL,NULL,10,'o',54),(8710,'i',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',6,NULL,NULL,10,'i',55),(8711,'u',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',7,NULL,NULL,10,'u',56),(8712,'y',1,'100067863644324','CN 15 24','2021-11-07 15:24:00',8,NULL,NULL,10,'y',57),(8713,'123',0,'100067863644324','T4 16 20','2021-11-10 16:20:00',0,NULL,NULL,10,'123',58),(8714,'ok ko ban',1,'100067863644324','10 04','2021-11-11 10:04:00',0,NULL,NULL,10,'ok ko ban',59),(8715,'tui hoi ne',1,'100067863644324','10 04','2021-11-11 10:04:00',1,NULL,NULL,10,'tui hoi ne',60),(8716,'ok hoi di',0,'100067863644324','10 04','2021-11-11 10:04:00',2,NULL,NULL,10,'ok hoi di',61),(8717,'1+ 2 ne',0,'100067863644324','10 04','2021-11-11 10:04:00',3,NULL,NULL,10,'1+ 2 ne',62),(8718,'4+5 = may',1,'100067863644324','10 04','2021-11-11 10:04:00',4,NULL,NULL,10,'4+5 = may',63),(8719,'9 chu may',0,'100067863644324','10 04','2021-11-11 10:04:00',5,NULL,NULL,10,'9 chu may',64),(8720,'ok',1,'100067863644324','10 04','2021-11-11 10:04:00',6,NULL,NULL,10,'ok',65),(8721,'ohm',0,'100067863644324','20 59','2021-11-11 20:59:00',0,NULL,NULL,10,'ohm',66),(8722,'test lai',1,'100067863644324','21 36','2021-11-11 21:36:00',0,NULL,NULL,10,'test lai',67),(8723,'ok',0,'100067863644324','21 36','2021-11-11 21:36:00',1,NULL,NULL,10,'ok',68),(8724,'now let go the last test',1,'100067863644324','21 59','2021-11-11 21:59:00',0,NULL,NULL,10,'now let go the last test',69),(8725,'hope good',0,'100067863644324','21 59','2021-11-11 21:59:00',1,NULL,NULL,10,'hope good',70),(8726,'ok',1,'100067863644324','21 59','2021-11-11 21:59:00',2,NULL,NULL,10,'ok',71),(8727,'now',1,'100067863644324','22 23','2021-11-11 22:23:00',0,NULL,NULL,10,'now',72),(8728,'1',1,'100067863644324','22 23','2021-11-11 22:23:00',1,NULL,NULL,10,'1',73),(8729,'2',1,'100067863644324','22 23','2021-11-11 22:23:00',2,NULL,NULL,10,'2',74),(8730,'3',1,'100067863644324','22 23','2021-11-11 22:23:00',3,NULL,NULL,10,'3',75),(8731,'123 bat dau nha',0,'100067863644324','22 23','2021-11-11 22:23:00',4,NULL,NULL,10,'123 bat dau nha',76),(8732,'1',1,'100067863644324','22 23','2021-11-11 22:23:00',5,NULL,NULL,10,'1',77),(8733,'2',1,'100067863644324','22 23','2021-11-11 22:23:00',6,NULL,NULL,10,'2',78),(8734,'4',1,'100067863644324','22 23','2021-11-11 22:23:00',7,NULL,NULL,10,'4',79),(8735,'ok thu lai',1,'100067863644324','22 45','2021-11-11 22:45:00',0,NULL,NULL,10,'ok thu lai',80),(8736,'lan cuoi',1,'100067863644324','22 45','2021-11-11 22:45:00',1,NULL,NULL,10,'lan cuoi',81),(8737,'cung',1,'100067863644324','22 45','2021-11-11 22:45:00',2,NULL,NULL,10,'cung',82),(8738,'ok thu di',0,'100067863644324','22 45','2021-11-11 22:45:00',3,NULL,NULL,10,'ok thu di',83),(8739,'bat dau thu',1,'100067863644324','22 45','2021-11-11 22:45:00',4,NULL,NULL,10,'bat dau thu',84),(8740,'1',1,'100067863644324','22 45','2021-11-11 22:45:00',5,NULL,NULL,10,'1',85),(8741,'2',1,'100067863644324','22 45','2021-11-11 22:45:00',6,NULL,NULL,10,'2',86),(8742,'3',1,'100067863644324','22 45','2021-11-11 22:45:00',7,NULL,NULL,10,'3',87),(8743,'4',0,'100067863644324','22 45','2021-11-11 22:45:00',8,NULL,NULL,10,'4',88),(8744,'5',0,'100067863644324','22 45','2021-11-11 22:45:00',9,NULL,NULL,10,'5',89),(8745,'6',0,'100067863644324','22 45','2021-11-11 22:45:00',10,NULL,NULL,10,'6',90),(8746,'7',1,'100067863644324','22 45','2021-11-11 22:45:00',11,NULL,NULL,10,'7',91),(8747,'8',1,'100067863644324','22 45','2021-11-11 22:45:00',12,NULL,NULL,10,'8',92),(8748,'9',1,'100067863644324','22 45','2021-11-11 22:45:00',13,NULL,NULL,10,'9',93);
/*!40000 ALTER TABLE `chat_group_mess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fb` char(100) DEFAULT NULL,
  `nick_fb` char(100) DEFAULT NULL,
  `real_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `address` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ava_url` longtext,
  `keyword` longtext,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (49,'100067863644324','locthinh.nguyenle.1',NULL,NULL,NULL,NULL,'../img/avatar.png',NULL,10);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_value` decimal(10,3) DEFAULT NULL,
  `to_value` decimal(10,3) DEFAULT NULL,
  `percent` decimal(10,3) DEFAULT NULL,
  `money` decimal(10,3) DEFAULT NULL,
  `product_uid` binary(16) DEFAULT NULL,
  `is_active` smallint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (16,0.000,10.000,10.000,0.000,_binary '9106104e-1c9c-11',1),(17,0.000,10.000,10.000,0.000,_binary '9106104e-1c9c-11',1),(18,0.000,10.000,10.000,0.000,_binary '7c0bb2ae-1c9d-11',0),(19,15.000,20.000,0.000,10000.000,_binary '7c0bb2ae-1c9d-11',1),(20,0.000,15.000,10.000,0.000,_binary '7c0bb2ae-1c9d-11',1),(21,0.000,10.000,7.000,0.000,_binary '5fea0a3c-1d0c-11',1),(22,10.000,20.000,9.000,0.000,_binary '5fea0a3c-1d0c-11',1),(23,0.000,10.000,0.000,20000.000,_binary '8271da4a-1d0c-11',1),(24,10.000,20.000,5.000,0.000,_binary '8271da4a-1d0c-11',1),(25,0.000,100.000,10.000,0.000,_binary 'a3d68c1a-2bfd-11',1);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fast_reply`
--

DROP TABLE IF EXISTS `fast_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fast_reply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mess` varchar(3000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fast_reply`
--

LOCK TABLES `fast_reply` WRITE;
/*!40000 ALTER TABLE `fast_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `fast_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `role_limits` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'Nhóm Hà Nội 1','[{\"id\":\"1\",\"value\":\"1\"},{\"id\":\"2\",\"value\":\"1\"},{\"id\":\"3\",\"value\":\"1\"},{\"id\":\"5\",\"value\":\"1\"},{\"id\":\"6\",\"value\":\"100\"}]'),(2,'Nhóm Nha Trang',NULL),(3,'Nhóm Hà Nội 2',NULL);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_product`
--

DROP TABLE IF EXISTS `group_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `product_id` int NOT NULL,
  `ck` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_product`
--

LOCK TABLES `group_product` WRITE;
/*!40000 ALTER TABLE `group_product` DISABLE KEYS */;
INSERT INTO `group_product` VALUES (2,1,3,NULL);
/*!40000 ALTER TABLE `group_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_role_type`
--

DROP TABLE IF EXISTS `group_role_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_role_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_type_id` int NOT NULL,
  `limit_created` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_role_type`
--

LOCK TABLES `group_role_type` WRITE;
/*!40000 ALTER TABLE `group_role_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_role_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_role`
--

DROP TABLE IF EXISTS `menu_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `par_id` int DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_role`
--

LOCK TABLES `menu_role` WRITE;
/*!40000 ALTER TABLE `menu_role` DISABLE KEYS */;
INSERT INTO `menu_role` VALUES (376,354,'Báo cáo hàng hóa','report_product',0,2),(375,354,'Báo cáo đơn hàng','report_bill',0,1),(374,354,'Báo cáo tổng hợp','report_general',0,0),(373,353,'Xóa','delete',0,2),(372,353,'Sửa','edit',0,1),(371,353,'Thêm','new',0,0),(370,350,'Xóa','delete',0,2),(369,350,'Sửa','edit',0,1),(368,350,'Thêm','new',0,0),(367,355,'Xóa','delete',0,2),(366,355,'Sửa','edit',0,1),(365,355,'Thêm','new',0,0),(364,351,'Xóa','delete',0,2),(363,351,'Sửa','edit',0,1),(362,351,'Thêm','new',0,0),(361,NULL,'Xóa','delete',0,3),(360,NULL,'Sửa','edit',0,2),(359,NULL,'Thêm','new',0,1),(358,352,'Xóa','delete',0,3),(357,352,'Sửa','edit',0,2),(356,352,'Thêm','new',0,1),(355,0,'Tag Chat','tag_name',1,8),(353,0,'Sản phẩm','product',0,6),(354,0,'Báo cáo','report',0,7),(352,0,'Tài khoản','user',0,5),(351,0,'Nhóm kinh doanh','group',0,4),(350,0,'Chức vụ','role_type',0,3),(349,0,'Hộp thư','chat',0,2),(348,0,'Thông báo','notice',0,1);
/*!40000 ALTER TABLE `menu_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_count`
--

DROP TABLE IF EXISTS `money_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `money_count` (
  `id` int NOT NULL AUTO_INCREMENT,
  `money` decimal(10,3) NOT NULL,
  `user_id` int NOT NULL,
  `bill_uid` binary(16) NOT NULL,
  `is_active` smallint DEFAULT '1',
  `del_by` int DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_count`
--

LOCK TABLES `money_count` WRITE;
/*!40000 ALTER TABLE `money_count` DISABLE KEYS */;
INSERT INTO `money_count` VALUES (10,10000.000,10,_binary '617c4a25-2f66-11',1,NULL,'2021-10-17 23:22:11'),(11,10000.000,10,_binary '8ddce86b-3ac4-11',1,NULL,'2021-11-01 10:34:01'),(12,10000.000,10,_binary 'bc7ccfa7-3ac4-11',1,NULL,'2021-11-01 10:35:19'),(13,10000.000,10,_binary '53920222-3ac5-11',1,NULL,'2021-11-01 10:39:32'),(14,10000.000,10,_binary '2d46aa0f-3ae8-11',1,NULL,'2021-11-01 14:49:00'),(15,10000.000,10,_binary 'da472295-3ae8-11',1,NULL,'2021-11-01 14:53:51'),(16,10000.000,10,_binary '5ad1f7c9-3b80-11',1,NULL,'2021-11-02 08:58:20'),(17,10000.000,10,_binary 'd9d71c40-3c50-11',1,NULL,'2021-11-03 09:50:49'),(18,10000.000,10,_binary '00892349-3fa6-11',1,NULL,'2021-11-07 15:37:54'),(19,10000.000,10,_binary '57868736-3fa6-11',1,NULL,'2021-11-07 15:40:20'),(20,50000.000,7,_binary '[object Object]\0',1,NULL,'2021-11-07 23:03:12'),(21,50000.000,7,_binary '[object Object]\0',1,NULL,'2021-11-07 23:06:24'),(22,50000.000,7,_binary '00892349-3fa6-11',1,NULL,'2021-11-07 23:13:45'),(23,20000.000,7,_binary '57868736-3fa6-11',1,NULL,'2021-11-08 15:08:59');
/*!40000 ALTER TABLE `money_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `is_active` tinyint DEFAULT '1',
  `price` decimal(10,3) DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `ck_id` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (11,'ao thun','a-001',1,70000.000,1,_binary '7c0bb2ae-1c9d-11'),(12,'quan dui','q-001',1,50000.000,1,_binary '5fea0a3c-1d0c-11'),(13,'ao thun','a-002',1,60000.000,2,_binary '8271da4a-1d0c-11'),(14,'gi le','28478',1,12000.000,1,_binary 'a3d68c1a-2bfd-11');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_type`
--

DROP TABLE IF EXISTS `role_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `level` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_type`
--

LOCK TABLES `role_type` WRITE;
/*!40000 ALTER TABLE `role_type` DISABLE KEYS */;
INSERT INTO `role_type` VALUES (1,'Kế Toán',0),(2,'Thủ Quỹ',0),(3,'CTV_T',0),(4,'admin',0),(5,'QTV',0),(6,'CTV_A',0);
/*!40000 ALTER TABLE `role_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roletype_model`
--

DROP TABLE IF EXISTS `roletype_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roletype_model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `action` varchar(45) NOT NULL,
  `status` tinyint DEFAULT '0',
  `par` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roletype_model`
--

LOCK TABLES `roletype_model` WRITE;
/*!40000 ALTER TABLE `roletype_model` DISABLE KEYS */;
INSERT INTO `roletype_model` VALUES (53,6,'tag_name',0,''),(54,6,'delete',0,'tag_name'),(55,6,'edit',0,'tag_name'),(56,6,'new',0,'tag_name'),(57,6,'product',0,''),(58,6,'delete',0,'product'),(59,6,'edit',0,'product'),(60,6,'new',0,'product'),(61,6,'report',0,''),(62,6,'report_product',0,'report'),(63,6,'report_bill',0,'report'),(64,6,'report_general',0,'report'),(65,6,'user',0,''),(66,6,'delete',0,'user'),(67,6,'edit',0,'user'),(68,6,'new',0,'user'),(69,6,'group',0,''),(70,6,'delete',0,'group'),(71,6,'edit',0,'group'),(72,6,'new',0,'group'),(73,6,'role_type',0,''),(74,6,'delete',0,'role_type'),(75,6,'edit',0,'role_type'),(76,6,'new',0,'role_type'),(77,6,'chat',1,''),(78,6,'notice',1,''),(79,1,'tag_name',0,''),(80,1,'delete',0,'tag_name'),(81,1,'edit',0,'tag_name'),(82,1,'new',0,'tag_name'),(83,1,'product',1,''),(84,1,'delete',1,'product'),(85,1,'edit',1,'product'),(86,1,'new',1,'product'),(87,1,'report',1,''),(88,1,'report_product',0,'report'),(89,1,'report_bill',1,'report'),(90,1,'report_general',1,'report'),(91,1,'user',0,''),(92,1,'delete',0,'user'),(93,1,'edit',0,'user'),(94,1,'new',0,'user'),(95,1,'group',0,''),(96,1,'delete',0,'group'),(97,1,'edit',0,'group'),(98,1,'new',0,'group'),(99,1,'role_type',0,''),(100,1,'delete',0,'role_type'),(101,1,'edit',0,'role_type'),(102,1,'new',0,'role_type'),(103,1,'chat',1,''),(104,1,'notice',1,'');
/*!40000 ALTER TABLE `roletype_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `time_in` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_out` datetime DEFAULT NULL,
  `token` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (14,7,'2021-08-10 09:40:45','2021-08-10 09:42:52','5cbf6e6b-f984-11eb-9405-00ac0b3dea54'),(15,7,'2021-08-10 10:03:07','2021-08-10 10:03:19','7ccf28e5-f987-11eb-9405-00ac0b3dea54'),(16,7,'2021-08-10 10:09:42','2021-08-10 15:52:32','6824dbaf-f988-11eb-9405-00ac0b3dea54'),(17,7,'2021-08-10 16:20:51',NULL,'417f1cbf-f9bc-11eb-9405-00ac0b3dea54'),(18,7,'2021-08-12 14:17:15','2021-08-12 23:46:28','527d1f64-fb3d-11eb-9405-00ac0b3dea54'),(19,7,'2021-08-12 23:46:33','2021-08-13 09:26:42','d9bb64c6-fb8c-11eb-9405-00ac0b3dea54'),(20,7,'2021-08-13 09:26:46',NULL,'e829a639-fbdd-11eb-9405-00ac0b3dea54'),(21,7,'2021-08-14 09:35:59','2021-08-14 14:41:49','5c49dea3-fca8-11eb-9405-00ac0b3dea54'),(22,7,'2021-08-14 14:42:07',NULL,'2069240c-fcd3-11eb-9405-00ac0b3dea54'),(23,7,'2021-08-15 15:36:28',NULL,'e2a54371-fda3-11eb-9405-00ac0b3dea54'),(24,12,'2021-08-16 00:49:37','2021-08-16 02:54:11','28878088-fdf1-11eb-9405-00ac0b3dea54'),(25,12,'2021-08-16 02:54:19','2021-08-16 14:45:07','94475b57-fe02-11eb-9405-00ac0b3dea54'),(26,7,'2021-08-17 01:40:19','2021-08-17 11:17:43','684f0e84-fec1-11eb-9405-00ac0b3dea54'),(27,7,'2021-08-17 11:17:48','2021-08-18 10:35:27','14701228-ff12-11eb-9405-00ac0b3dea54'),(28,7,'2021-08-18 10:36:07',NULL,'6c7095d4-ffd5-11eb-9405-00ac0b3dea54'),(29,12,'2021-08-18 10:49:00',NULL,'395237ce-ffd7-11eb-9405-00ac0b3dea54'),(30,7,'2021-08-19 14:46:18',NULL,'8a19fdfc-00c1-11ec-9405-00ac0b3dea54'),(31,7,'2021-08-20 14:46:24',NULL,'b82df0a1-018a-11ec-9405-00ac0b3dea54'),(32,7,'2021-08-21 16:16:50',NULL,'84cdd626-0260-11ec-9405-00ac0b3dea54'),(33,7,'2021-08-22 16:17:53',NULL,'d470355e-0329-11ec-9405-00ac0b3dea54'),(34,7,'2021-08-25 09:53:01','2021-08-25 09:57:18','8fd672b3-054f-11ec-9405-00ac0b3dea54'),(35,7,'2021-08-25 09:57:39','2021-08-25 09:57:39','35709c00-0550-11ec-9405-00ac0b3dea54'),(36,7,'2021-08-25 10:01:19','2021-08-25 10:01:19','b8951877-0550-11ec-9405-00ac0b3dea54'),(37,7,'2021-08-25 10:03:07','2021-08-25 10:45:02','f8f4c9b8-0550-11ec-9405-00ac0b3dea54'),(38,7,'2021-08-30 15:22:36',NULL,'6ea5263e-096b-11ec-983e-00ac0b3dea54'),(39,7,'2021-08-30 15:24:05',NULL,'a403d684-096b-11ec-983e-00ac0b3dea54'),(40,7,'2021-08-30 15:26:09',NULL,'edb2937c-096b-11ec-983e-00ac0b3dea54'),(41,7,'2021-08-30 15:27:30','2021-08-30 15:31:48','1e3692f3-096c-11ec-983e-00ac0b3dea54'),(42,7,'2021-08-30 15:31:53','2021-08-30 15:43:00','ba8f1890-096c-11ec-983e-00ac0b3dea54'),(43,7,'2021-08-30 15:43:10','2021-08-30 15:45:16','4e4b611c-096e-11ec-983e-00ac0b3dea54'),(44,7,'2021-08-30 15:47:16','2021-08-30 15:48:12','e08e5342-096e-11ec-983e-00ac0b3dea54'),(45,7,'2021-08-30 15:48:21',NULL,'0762990d-096f-11ec-983e-00ac0b3dea54'),(46,7,'2021-08-31 10:31:08',NULL,'e16194fb-0a0b-11ec-983e-00ac0b3dea54'),(47,7,'2021-09-01 10:35:00',NULL,'9608d411-0ad5-11ec-983e-00ac0b3dea54'),(48,7,'2021-09-02 14:10:54',NULL,'e9cb5813-0bbc-11ec-983e-00ac0b3dea54'),(49,7,'2021-09-10 09:30:31',NULL,'11aa0da5-11df-11ec-983e-00ac0b3dea54'),(50,7,'2021-09-16 09:04:05',NULL,'5f848e65-1692-11ec-983e-00ac0b3dea54'),(51,7,'2021-09-17 09:05:12',NULL,'b14b62c3-175b-11ec-983e-00ac0b3dea54'),(52,7,'2021-09-18 15:17:44',NULL,'e69f0af7-1858-11ec-983e-00ac0b3dea54'),(53,7,'2021-09-22 09:24:36',NULL,'3d55bfb7-1b4c-11ec-983e-00ac0b3dea54'),(54,7,'2021-09-22 09:24:40',NULL,'3d5f2462-1b4c-11ec-983e-00ac0b3dea54'),(55,7,'2021-09-23 10:14:38',NULL,'62ca2e0d-1c1c-11ec-983e-00ac0b3dea54'),(56,7,'2021-09-24 10:24:27',NULL,'ec164b5a-1ce6-11ec-983e-00ac0b3dea54'),(57,7,'2021-09-26 09:20:45',NULL,'5b14ca06-1e70-11ec-a8c5-00ac0b3dea54'),(58,7,'2021-09-27 09:49:24',NULL,'8656d7b5-1f3d-11ec-a8c5-00ac0b3dea54'),(59,7,'2021-09-28 09:50:09',NULL,'cb6b6551-2006-11ec-a8c5-00ac0b3dea54'),(60,7,'2021-09-30 15:41:10',NULL,'294e7cbc-21ca-11ec-a8c5-00ac0b3dea54'),(61,7,'2021-10-02 10:28:08',NULL,'c33ba26d-2330-11ec-a8c5-00ac0b3dea54'),(62,7,'2021-10-03 13:57:04',NULL,'1e0657cb-2417-11ec-a8c5-00ac0b3dea54'),(63,7,'2021-10-04 14:35:52',NULL,'b41cbf09-24e5-11ec-bf6b-00ac0b3dea54'),(64,7,'2021-10-06 23:15:35',NULL,'a36ce46f-26c0-11ec-bf6b-00ac0b3dea54'),(65,7,'2021-10-08 23:14:45',NULL,'da3e2b6c-2852-11ec-bf6b-00ac0b3dea54'),(66,10,'2021-10-08 23:14:59',NULL,'e2ba5ad5-2852-11ec-bf6b-00ac0b3dea54'),(67,7,'2021-10-12 09:00:38',NULL,'32977ee0-2b00-11ec-915c-00ac0b3dea54'),(68,7,'2021-10-13 09:36:52','2021-10-13 09:51:58','6cdfc889-2bce-11ec-a3ba-00ac0b3dea54'),(69,10,'2021-10-13 14:22:09','2021-10-13 15:13:31','4744af3f-2bf6-11ec-a3ba-00ac0b3dea54'),(70,7,'2021-10-13 15:13:36',NULL,'774e568e-2bfd-11ec-a3ba-00ac0b3dea54'),(71,7,'2021-10-14 15:57:03',NULL,'b38303c6-2ccc-11ec-a3ba-00ac0b3dea54'),(72,7,'2021-10-14 15:57:40',NULL,'c99d8943-2ccc-11ec-a3ba-00ac0b3dea54'),(73,7,'2021-10-16 14:27:39',NULL,'8af56b36-2e52-11ec-a3ba-00ac0b3dea54'),(74,7,'2021-10-17 22:20:16',NULL,'bbb28d96-2f5d-11ec-a3ba-00ac0b3dea54'),(75,7,'2021-10-20 22:50:56','2021-10-21 00:23:48','8320bd57-31bd-11ec-a3ba-00ac0b3dea54'),(76,7,'2021-10-21 00:23:54','2021-10-21 00:24:00','7ff2a130-31ca-11ec-a3ba-00ac0b3dea54'),(77,7,'2021-10-21 15:52:08','2021-10-21 15:52:23','2c209508-324c-11ec-a3ba-00ac0b3dea54'),(78,7,'2021-10-23 15:59:23','2021-10-23 20:42:06','84829c2f-33df-11ec-a3ba-00ac0b3dea54'),(79,7,'2021-10-23 20:42:11',NULL,'066dd7f6-3407-11ec-a3ba-00ac0b3dea54'),(80,7,'2021-10-24 20:46:01',NULL,'b9a8ac35-34d0-11ec-a3ba-00ac0b3dea54'),(81,7,'2021-10-25 22:27:11',NULL,'05e3edf0-35a8-11ec-a3ba-00ac0b3dea54'),(82,7,'2021-11-01 10:14:05',NULL,'c54d0669-3ac1-11ec-85b2-00ac0b3dea54'),(83,7,'2021-11-02 10:14:28','2021-11-03 10:13:22','fd55cdf0-3b8a-11ec-85b2-00ac0b3dea54'),(84,10,'2021-11-03 10:13:27','2021-11-03 10:27:34','037c42e3-3c54-11ec-85b2-00ac0b3dea54'),(85,7,'2021-11-03 10:27:38','2021-11-03 10:37:54','fedd059e-3c55-11ec-85b2-00ac0b3dea54'),(86,10,'2021-11-03 10:38:00',NULL,'714f5bfa-3c57-11ec-85b2-00ac0b3dea54'),(87,7,'2021-11-07 08:54:32',NULL,'a6a18cd5-3f6d-11ec-85b2-00ac0b3dea54'),(88,7,'2021-11-08 15:08:30',NULL,'0f3dd7b8-406b-11ec-85b2-00ac0b3dea54'),(89,7,'2021-11-10 16:21:08',NULL,'89e9f542-4207-11ec-9b61-00ac0b3dea54'),(90,7,'2021-11-11 16:34:11',NULL,'8725ea30-42d2-11ec-9b61-00ac0b3dea54');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_name`
--

DROP TABLE IF EXISTS `tag_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `color` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_name`
--

LOCK TABLES `tag_name` WRITE;
/*!40000 ALTER TABLE `tag_name` DISABLE KEYS */;
INSERT INTO `tag_name` VALUES (1,'go go','#14f01b'),(2,'Stop','#db0a0a'),(3,'OK','#cddb0a'),(4,'Next','#db6f0a');
/*!40000 ALTER TABLE `tag_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'simpleweb'
--
/*!50003 DROP FUNCTION IF EXISTS `bill_stt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `bill_stt`(stt int) RETURNS varchar(100) CHARSET utf8
BEGIN
	set @rs = 'MỚi';
    if (stt = -1) then
		set @rs = 'HỦY';
	end if;
	if (stt = 1) then
		set @rs = 'KẾ TOÁN DUYỆT';
	end if;
	if (stt = 2) then 
		set @rs = 'KẾ TOÁN THU TIỀN';
	end if;
	if (stt = 3) then 
		set @rs = 'THỦ QUỸ THU TIỀN';
    end if;
RETURN @rs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_existed_group_inStr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_existed_group_inStr`(str_group1 longtext, str_group2 longtext) RETURNS smallint
BEGIN
    set @gr_str1 = concat('[',str_group1,']');
	set @gr_str2 = concat('[',str_group2,']');
    
    set @rs = (select count(jt1.id) from json_table(@gr_str1,"$[*]" columns (
	id int path "$")) AS  jt1 
    inner join json_table(@gr_str2,"$[*]" columns (
	id int path "$")) AS  jt2 on jt1.id = jt2.id);
RETURN @rs > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_tag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_tag`(tag_id int,tag_strp longtext) RETURNS smallint
BEGIN
	set @tag_str = concat('[',tag_strp,']');
    set @rs = (select count(jt1.id) from json_table(@tag_str,"$[*]" columns (
	id int path "$")) AS  jt1 where jt1.id = tag_id);
RETURN @rs>0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_token` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_token`(param_token nchar(100)) RETURNS int
BEGIN
	return if(EXISTS(SELECT * FROM session WHERE token = param_token and isnull(time_out)),1,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `generate_token` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `generate_token`(acc_id int) RETURNS char(100) CHARSET utf8
BEGIN
	set @token_new = UUID();
    INSERT INTO `simpleweb`.`session`
(`user_id`,
`token`)
VALUES
(acc_id,
@token_new);
RETURN @token_new;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_discount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_discount`(product_id int,quantity decimal(10,3)) RETURNS decimal(10,3)
BEGIN
	set @u_id = (select ck_id from product where id = product_id limit 1);
    set @rs = (select IF(D.money > 0, D.money, D.percent) from discount AS D where product_uid = @u_id and quantity >= D.from_value and quantity <= D.to_value and D.is_active = 1 limit 1);
RETURN nullif(@rs,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_group_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_group_name`(str text) RETURNS text CHARSET utf8mb4
BEGIN
set @js_str = concat('[',str,']');
set @rs = (select group_concat(G.name) from json_table(@js_str,"$[*]" columns (
id int path "$")) AS  jt1 left join `group` as G on G.id = jt1.id);
RETURN @rs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_money_discount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_money_discount`(pro_id int,quantity decimal(10,3),price decimal(10,3)) RETURNS decimal(10,3)
BEGIN
	set @ck = get_discount(pro_id,quantity);
	set @rs = if(@ck<100,(((price * quantity)/100)*@ck),@ck);
RETURN ifnull(@rs,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_receive_money` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_receive_money`(bill_uid binary(16)) RETURNS decimal(10,3)
BEGIN
set @rs = (select sum(money_count.money) from  money_count where money_count.bill_uid = bill_uid and money_count.is_active = 1);
RETURN ifnull(@rs,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `account_getall` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `account_getall`(pic int)
BEGIN
	select A.*,get_group_name(A.group_id) as group_name,'' as pass,ifnull(R.name,'') AS role_name,A2.user as created_user from account A left join role_type R on A.role = R.id
    left join account A2 on A.created_by = A2.id
    left join `group` G on G.id = A.group_id
    where (isnull(pic) or pic = 0 or A.created_by = pic) and A.user != 'admin';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `account_getall_same_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `account_getall_same_group`(user_id int)
BEGIN
	set @gr = (select group_id from account where id = user_id limit 1);
    select A.id,A.user,A.group_id,get_group_name(A.group_id) as group_name,ifnull(R.name,'') AS role_name,A2.user as created_user from account A left join role_type R on A.role = R.id
    left join account A2 on A.created_by = A2.id
    left join `group` G on G.id = A.group_id
    where A.user != 'admin' and A.id != user_id and check_existed_group_inStr(A.group_id,@gr) = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `account_getdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `account_getdetail`(id int)
BEGIN
	select A.*,ifnull(R.name,'') AS role_name,A2.user AS created_user from account A left join role_type R on A.role = R.id
    left join account A2 on A.created_by = A2.id
    where A.id = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `bill_checkout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bill_checkout`(cus_id varchar(1000),user_id int,js_data text,bill_code char(100),trade_code char(100),cmoney decimal(10,3))
BEGIN
	set @new_bill_id = (select UUID());
    INSERT INTO `simpleweb`.`bill`
(`created_by`,
`group_id`,
`stt`,
`customer`,
`code`,
`trade_code`,
`u_id`)
VALUES
(user_id,
0,
0,
cus_id,
bill_code,
trade_code,
@new_bill_id);

INSERT INTO `simpleweb`.`bill_details`
(`product_id`,
`quantity`,
`bill_uid`,
price,
ck)
select jt1.id,jt1.quantity,@new_bill_id,jt1.price,get_discount(jt1.id,jt1.quantity) from json_table(js_data,"$[*]" columns (
id int path "$.id",
quantity varchar(100) path "$.quantity",
price varchar(100) path "$.price")) AS  jt1;
if(cmoney > 0) then
INSERT INTO `simpleweb`.`money_count`
(`money`,
`user_id`,
`bill_uid`,
`is_active`)
VALUES
(
cmoney,
user_id,
@new_bill_id,
1
);
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `bill_get_product_in_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bill_get_product_in_bill`(bill_id int)
BEGIN
	set @u_id = (select u_id from bill where id = bill_id limit 1);
    
    select BD.*,P.name as product_name from bill_details AS BD 
    left join product as P on P.id = BD.product_id
    where BD.bill_uid = @u_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `chat_group_get_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `chat_group_get_details`(cus_id char(100))
BEGIN
	SELECT * from `chat_group` as CG 
    left join customer AS C on C.id_fb = CG.cus_id
    where CG.cus_id = cus_id limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_menu_action` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_menu_action`(role_idp int,parr varchar(45))
BEGIN
    select * from roletype_model where (role_id = role_idp or role_idp = 0) and par = parr;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customer_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_get`(cidp int,cus_id char(100))
BEGIN
	SELECT * FROM simpleweb.customer where (cidp = 0 or cidp = id) and (cus_id = null or id_fb = cus_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `discount_get` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `discount_get`(product_id int)
BEGIN
	set @u_id = (select ck_id from product where id = product_id limit 1);
	SELECT D.*,P.name as product_name FROM simpleweb.discount AS D
    left join product as P on P.ck_id = D.product_uid
    where (D.product_uid = @u_id or product_id = null) and D.is_active = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `discount_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `discount_save`(uid binary(16),js_data text)
BEGIN
if (js_data <> null) then
	set js_data = '';
end if;
INSERT INTO discount 
    (from_value, to_value,percent,money,product_uid,is_active)
select jt1.from_value,jt1.to_value,jt1.percent,jt1.money,@u_id,jt1.is_active from json_table(js_data,"$[*]" columns (
id int path "$.id",
from_value varchar(100) path "$.from_value",
to_value varchar(100) path "$.to_value",
percent varchar(100) path "$.percent",
money varchar(100) path "$.money",
is_active smallint path "$.is_active" )) AS  jt1 
where jt1.id = 0;

update discount AS D inner join json_table(js_data,"$[*]" columns (
id int path "$.id",
from_value varchar(100) path "$.from_value",
to_value varchar(100) path "$.to_value",
percent varchar(100) path "$.percent",
money varchar(100) path "$.money",
is_active smallint path "$.is_active" )) AS  jt1 on D.id = jt1.id
set 
D.from_value = jt1.from_value,
D.to_value = jt1.to_value,
D.percent = jt1.percent,
D.money = jt1.money,
D.is_active = jt1.is_active
where D.product_uid = uid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_chat_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_chat_group`(user_id int,cus_id char(100))
BEGIN
	select CG.*,C.*,concat(if(length(A.bill_code)=0,A.`user`,A.bill_code),'-',ifnull(GCC.next_stt,'0001')) as next_code from chat_group as CG
    left join `account` as A on CG.acc_receive = A.id
    left join `account` as A2 on CG.fb_acc_send = A2.fb_id
    left join customer as C on C.id_fb = CG.cus_id
    left join (select lpad(count(id)+1,4,0) as next_stt,B.created_by from bill as B group by B.created_by) as GCC on CG.acc_receive = GCC.created_by
    where (A.id = user_id or A2.id = user_id or user_id = 0) and (CG.cus_id = cus_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_chat_group_by_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_chat_group_by_user`(user_id int)
BEGIN
set @role_id = (select `role` from `account` where id = user_id limit 1);
select CG.*,C.* from chat_group as CG
    left join customer as C on C.id_fb = CG.cus_id
    where CG.acc_receive = user_id or user_id = CG.user_ids or @role_id = 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_bill`(cus_id varchar(1000))
BEGIN
	select B.id,
    convert(B.time,nchar(20)) as `time`,
    bill_stt(B.stt) as `status`,
    TB.total_bill,
    TB.ck,
    A1.user as 'created_by',
	G.name as group_name,
	A2.user as accepeted,
	A3.user as accountant
    from(select BD.bill_uid,sum(BD.price*BD.quantity) as total_bill,sum(((BD.price*BD.quantity)/100)*BD.ck) as ck from bill_details AS BD
    group by BD.bill_uid) as TB
    left join bill as B on B.u_id = TB.bill_uid
    left join `account` as A1 on A1.id = B.created_by
    left join `account` as A2 on A2.id = B.accepted
	left join `account` as A3 on A3.id = B.accountant
	left join `account` as A4 on A4.id = B.reject
	left join `group` as G on G.id = A1.group_id
    where B.customer = cus_id or cus_id = 0 order by B.time desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_bill_by_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_bill_by_group`(group_id int)
BEGIN
	select B.*,TB.total,TB.total_ck, A.user as created from bill AS B left join `account` AS A on A.id = B.created_by
    left join (select BD.bill_id,sum(BD.price*BD.quantity) AS total,sum(((BD.price*BD.quantity)/100)*BD.ck) as total_ck from bill_details AS BD group by bill_id) as TB on TB.bill_id = B.id
    where B.group_id = group_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_bill_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_bill_detail`(bill_id int)
BEGIN
	select B.id,
    convert(B.time,nchar(20)) as `time`,
    bill_stt(B.stt) as `status`,
    TB.total_bill,
    TB.ck,
    C.real_name,
    B.code,
    A1.user as 'created_by',
	G.name as group_name,
	A2.user as accepeted,
	A3.user as accountant
    from(select BD.bill_uid,sum(BD.price*BD.quantity) as total_bill,sum(((BD.price*BD.quantity)/100)*BD.ck) as ck from bill_details AS BD
    group by BD.bill_uid) as TB
    left join bill as B on B.u_id = TB.bill_uid
    left join `account` as A1 on A1.id = B.created_by
    left join `account` as A2 on A2.id = B.accepted
	left join `account` as A3 on A2.id = B.accountant
	left join `account` as A4 on A2.id = B.reject
	left join `group` as G on G.id = A1.group_id
    left join customer as C on C.id_fb = B.customer
    where B.id = bill_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_chat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_chat`(cus_id char(100),max_id int,limit_p int)
BEGIN
if(limit_p = 0) then 
	SELECT CGM.*,A.avatar_url as rec_ava,A.user as rec_user,C.ava_url from `chat_group_mess` as CGM
	left join chat_group AS CG on CG.cus_id = CGM.cus_id
	left join customer AS C on C.id_fb = CGM.cus_id
	left join `account` as A on CG.acc_receive = A.id
	where CGM.cus_id = cus_id and (max_id = 0 or CGM.mess_index > max_id) order by mess_index desc;
else
	SELECT CGM.*,A.avatar_url as rec_ava,A.user as rec_user,C.ava_url from `chat_group_mess` as CGM
	left join chat_group AS CG on CG.cus_id = CGM.cus_id
	left join customer AS C on C.id_fb = CGM.cus_id
	left join `account` as A on CG.acc_receive = A.id
	where CGM.cus_id = cus_id and (max_id = 0 or CGM.mess_index > max_id) order by mess_index desc limit limit_p;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_detail_group_mess` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_detail_group_mess`(user_id int,cus_id nchar(100),cus_name nchar(100),send_id nchar(100),send_name nchar(100),ava_url longtext)
BEGIN
	set @count_r = (select count(chat_group.id) from chat_group where chat_group.cus_id = cus_id and chat_group.acc_receive = user_id);
    if(@count_r = 0) then 
		INSERT INTO `simpleweb`.`chat_group`
(`title`,
`tags`,
`user_ids`,
`note`,
`cus_id`,
`acc_receive`)
VALUES
('',
'',
'',
'',
cus_id,
user_id);

	set @count_cus = (select count(C.id) from customer AS C where C.created_by = user_id and C.id_fb = cus_id);

	if(@count_cus = 0) then 
	INSERT INTO `simpleweb`.`customer`
	(`id_fb`,
	`nick_fb`,
	`ava_url`,
    `created_by`)
	VALUES
	(cus_id,cus_name,ava_url,user_id);
	end if;
    
end if;
select * from chat_group where chat_group.cus_id = cus_id and chat_group.acc_receive = user_id limit 1;

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_group_chat_tags_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_group_chat_tags_name`(ids varchar(4000))
BEGIN
	set @str = concat('[',ids,']');
	select jt1.id,GC.tags from json_table(@str,"$[*]" columns (id varchar(20) path "$")) AS  jt1
    left join chat_group as GC on jt1.id = GC.cus_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_latest_mess_saved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_latest_mess_saved`(cus_id char(100),acc_receive int)
BEGIN
	SELECT *
FROM `simpleweb`.`chat_group_mess` AS CGM
where CGM.cus_id = cus_id and CGM.acc_receive = acc_receive order by CGM.id desc limit 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_menu`(user_id int)
BEGIN
	set @role_id = (select `role` from `account` where id = user_id limit 1);
	select MR.* from menu_role AS MR 
    left join roletype_model AS RTM on MR.action = RTM.action and RTM.role_id = @role_id
    where MR.par_id = 0 and (@role_id = 0 or RTM.`status` = 1) order by MR.`order`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_money_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_money_count`(bill_id int)
BEGIN
	set @uid = (select u_id from bill where bill.id = bill_id limit 1);
	select *,A.`user` as rec_user from money_count AS MC 
    left join `account` as A on A.id = MC.user_id
    where MC.bill_uid = @uid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_role_permision` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_role_permision`(role_id int)
BEGIN
	select * from roletype_model where roletype_model.role_id = role_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `group_product_gel_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `group_product_gel_all`(group_id int)
BEGIN
	select GP.*,P.code,P.ck as dck,P.price,P.name as product_name,CG.title from group_product AS GP 
    left join `chat_group` as CG on CG.id = GP.group_id
    left join product AS P on P.id = GP.product_id 
    where GP.group_id = group_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_messenger` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_messenger`(cus_id char(100),acc_receive int,js_str longtext)
BEGIN
	INSERT INTO `simpleweb`.`chat_group_mess`
(`mess`,
`mess_key`,
`order`,
`sender`,
`cus_id`,
`group_name`,
`group_time`,
img_src,
`file`,
mess_index,
`acc_receive`
)
	select 
    jt1.mess,
	jt1.mess_key,
    jt1.`order`,
    jt1.sender,
    cus_id,
    jt1.group_name,
    STR_TO_DATE((jt1.group_time), '%d-%m-%Y %T'),
    img_src,
    `file`,
    mess_index,
    acc_receive
    from json_table(js_str,"$[*]" columns (
    mess longtext path "$.mes",
    mess_key longtext path "$.mess_key",
    `order` int path "$.order",
    sender int path "$.sender",
    group_time char(100) path "$.group_time",
    group_name char(100) path "$.group_name",
    img_src longtext path "$.img_src",
    `file` longtext path "$.file",
    mess_index int path "$.mess_index")
    ) AS  jt1 WHERE NOT EXISTS (SELECT A.id
                              FROM chat_group_mess as A
                              WHERE A.group_time = STR_TO_DATE((jt1.group_time), '%d-%m-%Y %T') and ((length(jt1.mess_key)>0 and A.mess_key = jt1.mess_key) or (length(jt1.mess_key)=0 and (jt1.img_src = A.img_src or jt1.`file` = A.`file`))) LIMIT 1)
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_moneycount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_moneycount`(bill_id int,money decimal(10,3),user_id int)
BEGIN
	set @u_id = (select u_id from bill where id = bill_id limit 1);
    INSERT INTO `simpleweb`.`money_count`
(`money`,
`user_id`,
`bill_uid`)
VALUES
(money,user_id,@u_id);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(userp nvarchar(250),passp nvarchar(250))
BEGIN
	select id,user,role,real_name,email,phone,address,generate_token(id) as token,(select name from role_type where role_type.id = account.role limit 1) as role_name from account where `account`.`user` = userp and pass = passp and is_active = 1 limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `logout` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `logout`(acc_id int,param_token nchar(100))
BEGIN
	UPDATE `simpleweb`.`session`
SET
`time_out` = now()
WHERE user_id = acc_id and `token` = param_token;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_get_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_get_all`()
BEGIN
	select P.*,G.name as group_name from product as P 
    left join `group` as G on G.id = P.group_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_insert`(
name varchar(1000), 
code varchar(45) ,
price decimal(10,3) ,
group_id int,
js_data longtext 
)
BEGIN
	set @u_id = uuid();
	INSERT INTO `simpleweb`.`product`
(`name`,
`code`,
`price`,
`group_id`,
`ck_id`,
is_active)
VALUES
(name,code,price,group_id,@u_id,1);
call discount_save(@u_id,js_data);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `product_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `product_update`(
pro_id int,
name varchar(1000), 
code varchar(45) ,
price decimal(10,3),
group_id int,
is_active smallint,
js_data longtext )
BEGIN
UPDATE `simpleweb`.`product`
SET
`name` = name,
`code` = code,
`is_active` = is_active,
`price` = price,
`group_id` = group_id
WHERE `id` = pro_id;

set @u_id = (select ck_id from product where product.id = pro_id limit 1);
CALL `simpleweb`.`discount_save`(@u_id, js_data);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `refresh_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `refresh_menu`()
BEGIN
	delete from menu_role where id != 0;
    /* insert parent first */
    insert into menu_role (par_id,name,action,is_admin,`order`) values 
    (0,'Thông báo','notice',0,1),
    (0,'Hộp thư','chat',0,2),
    (0,'Chức vụ','role_type',0,3),
    (0,'Nhóm kinh doanh','group',0,4),
    (0,'Tài khoản','user',0,5),
    (0,'Sản phẩm','product',0,6),
    (0,'Báo cáo','report',0,7),
     (0,'Tag Chat','tag_name',1,8)
       /*(0,'Trả lời nhanh','fast_reply',1,9),
    (0,'Thiết lập','config',1,10)*/;
     /* get parent id */
	set @user_id = (select id from menu_role where action = 'user' limit 1);
    set @role_id = (select id from menu_role where action = 'role' limit 1);
    set @chat_id = (select id from menu_role where action = 'chat' limit 1);
    set @product_id = (select id from menu_role where action = 'product' limit 1);
    set @report_id = (select id from menu_role where action = 'report' limit 1);
    set @group_id = (select id from menu_role where action = 'group' limit 1);
    set @tag_chat_id = (select id from menu_role where action = 'tag_name' limit 1);
    set @role_type_id = (select id from menu_role where action = 'role_type' limit 1);
    /* set @config_id = (select id from menu_role where action = 'config' limit 1);*/
    /* insert child */
    insert into menu_role (par_id,`name`,`action`,is_admin,`order`) values 
    (@user_id,'Thêm','new',0,1),
    (@user_id,'Sửa','edit',0,2),
    (@user_id,'Xóa','delete',0,3),
    
	(@role_id,'Thêm','new',0,1),
    (@role_id,'Sửa','edit',0,2),
    (@role_id,'Xóa','delete',0,3),
    
   /* (@chat_id,'Xem tin trong nhóm','group',1), */
	(@group_id,'Thêm','new',0,0),
    (@group_id,'Sửa','edit',0,1),
    (@group_id,'Xóa','delete',0,2),
    
    (@tag_chat_id,'Thêm','new',0,0),
    (@tag_chat_id,'Sửa','edit',0,1),
    (@tag_chat_id,'Xóa','delete',0,2),
    
	(@role_type_id,'Thêm','new',0,0),
    (@role_type_id,'Sửa','edit',0,1),
    (@role_type_id,'Xóa','delete',0,2),
    
	(@product_id,'Thêm','new',0,0),
    (@product_id,'Sửa','edit',0,1),
    (@product_id,'Xóa','delete',0,2),
    
    (@report_id,'Báo cáo tổng hợp','report_general',0,0),
     (@report_id,'Báo cáo đơn hàng','report_bill',0,1),
      (@report_id,'Báo cáo hàng hóa','report_product',0,2)
    
    /*(@config_id,'Sửa thông báo','edit_notice',1)*/;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `report_bill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `report_bill`(str_from char(100),str_to char(100),stt int)
BEGIN

set @f = (SELECT STR_TO_DATE(str_from,'%Y-%m-%d'));
set @t = (SELECT STR_TO_DATE(str_to,'%Y-%m-%d'));

select TB.*,
A.user,
A.group_id,
C.city,
get_receive_money(TB.u_id) as `money_receive`,
(TB.total - get_receive_money(TB.u_id)) as `res_money`,
C.address,
C.real_name,
C.ava_url,
C.phone,
C.nick_fb,
TB.customer,
C.real_name as cus_name,
AR.`user`as CSKH,
ACTV.`user` as CTV
from (
select 	B.id,
		B.code,
		bill_stt(B.stt) as `status`,
        B.stt as `status_id`,
        convert(B.time,nchar(20)) as `time`,
        Sum(BD.price * BD.quantity) as total,
        Sum(get_money_discount(BD.product_id,BD.quantity,BD.price)) as ck,
        B.created_by,
        B.customer,
        A2.`user` as accepeted,
        B.accepted_note,
		A3.`user` as accountant,
        B.accountant_note,
        A4.`user` as reject,
        B.reject_note,
        B.u_id
from bill_details AS BD 
left join bill AS B on B.u_id = BD.bill_uid
left join `account` as A2 on A2.id = B.accepted
left join `account` as A3 on A3.id = B.accountant
left join `account` as A4 on A4.id = B.reject
where (date(B.time) >= @f and date(B.time) <= @t) and (stt = 3 or B.stt = stt)
group by B.u_id,B.created_by,B.stt,B.customer,A2.user,A3.user,A4.user) AS TB 
left join `account` AS A on A.id = TB.created_by
left join `chat_group` AS CG on CG.cus_id = TB.customer
left join `account` as AR on AR.id = CG.acc_receive
left join `customer` as C on C.id_fb = TB.customer
left join `account` as ACTV on ACTV.id = CG.user_ids;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `report_general` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `report_general`(str_from char(100),str_to char(100))
BEGIN

set @f = (SELECT STR_TO_DATE(str_from,'%Y-%m-%d'));
set @t = (SELECT STR_TO_DATE(str_to,'%Y-%m-%d'));

select G.name AS group_name,count(DISTINCT (BD.bill_uid)) as number_bill,Sum(BD.price * BD.quantity) as total,Sum(((BD.price * BD.quantity)/100)*BD.ck) as ck,B.stt,A.group_id from bill_details AS BD 
left join bill AS B on B.u_id = BD.bill_uid
left join `account` AS A on A.id = B.created_by
left join `group` AS G on G.id = A.group_id
where date(B.time) >= @f and date(B.time) <= @t
group by A.group_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `report_individual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `report_individual`(user_id int)
BEGIN
select 
count(B.u_id) as number_bill,
SUM(if(B.stt = 2,1,0)) as number_complete,
B.*
from (select BB.stt,BB.created_by,BB.u_id,Sum(BD.price * BD.quantity) as total,SUM(get_money_discount(BD.product_id,BD.quantity,BD.price)) as ck from bill_details AS BD 
left join bill AS BB on BB.u_id = BD.bill_uid
where year(BB.time) = year(now()) and month(BB.time) = month(now()) group by BB.u_id,BB.stt,BB.created_by
) AS B
left join `account` AS A on A.id = B.created_by
where A.id = user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `report_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `report_product`(str_from char(100),str_to char(100))
BEGIN
set @f = (SELECT STR_TO_DATE(str_from,'%Y-%m-%d'));
set @t = (SELECT STR_TO_DATE(str_to,'%Y-%m-%d'));

select TB.*,G.name as group_name,P.name as product_name,P.code from (select BD.product_id,sum(BD.quantity) as quantity,sum(BD.price* BD.quantity) as total,sum(((BD.price* BD.quantity)/100)*BD.ck) as ck
from bill_details AS BD 
left join bill AS B on B.u_id = BD.bill_uid
where date(B.time) >= @f and date(B.time) <= @t
group by BD.product_id) as TB
left join product as P on P.id = TB.product_id
left join `group` as G on G.id = P.group_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_group_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `save_group_product`(pro_id int,group_id int)
BEGIN
	if((select count(GP.id) from group_product as GP where GP.group_id = group_id and GP.product_id = pro_id) > 0)
    then delete from group_product where group_id = group_id and product_id = pro_id;
    else insert into group_product set group_id = group_id, product_id = pro_id;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_permission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `save_permission`(role_id int,js_data longtext)
BEGIN

INSERT INTO `simpleweb`.`roletype_model`
(`role_id`,
`action`,
`status`,
`par`)
select role_id,jt1.`action`,jt1.`status`,jt1.par from json_table(js_data,"$[*]" columns (
par varchar(45) path "$.par",
`action` varchar(45) path "$.action",
`status` smallint path "$.status")) AS  jt1;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_group` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_group`(key_ nvarchar(1000),tag_id int,user_id int)
BEGIN
set @l = replace(trim(lower(concat('%',if(key_='0','',key_),'%'))),' ','');

select TB.*,CG1.cus_id,CGM1.mess as latest_mess,CG1.tags,C.real_name,C.ava_url,C.nick_fb from (SELECT CG.cus_id,CG.acc_receive,max(CGM.id) as `max_id` FROM simpleweb.chat_group_mess AS CGM left join chat_group AS CG on (CGM.cus_id = CG.cus_id and CGM.acc_receive = CG.acc_receive)
where replace(trim(lower(CGM.mess_key)),' ','') like @l or (select count(id) from bill where trim(lower(`code`)) like @l and bill.created_by = user_id and bill.customer = CG.cus_id ) > 0
group by CGM.cus_id, CGM.acc_receive) as TB
left join chat_group as CG1 on (TB.cus_id = CG1.cus_id and TB.acc_receive = CG1.acc_receive)
left join chat_group_mess as CGM1 on TB.max_id = CGM1.id
left join customer as C on C.id_fb = TB.cus_id
where (user_id = 0 or user_id = 7 or user_id = null or CG1.acc_receive = user_id ) 
and (tag_id = 0 or (tag_id = -1 and length(CG1.tags) = 0) or check_tag(tag_id,CG1.tags) > 0)
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `session_generate_token` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `session_generate_token`(acc_id int)
BEGIN
	if not exists (select * from session where user_id = acc_id and isnull(time_out) limit 1) 
		then  
	set @token = replace(UUID(),'-','');
	INSERT INTO `simpleweb`.`session`
(`user_id`,
`token`)
VALUES
(acc_id,
@token);

select user_id,token from session where user_id = acc_id and token = @token and isnull(time_out) limit 1;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_bill_stt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_bill_stt`(bill_id int,stt int,user_id int)
BEGIN
	if (stt = -1) then 
		update bill set bill.stt = -1,bill.reject = user_id where bill.id = bill_id;
	elseif (stt = 1) then
		update bill set bill.stt = 1,bill.accepted = user_id where bill.id = bill_id;
	elseif (stt = 2) then
		update bill set bill.stt = 2,bill.accountant = user_id where bill.id = bill_id;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_check_existed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_check_existed`(user_id int,username varchar(1000),role_id int,group_id nvarchar(100))
BEGIN
	set @str =  concat('[',group_id,']');
	set @count_eu = (select count(A.id) from `account` AS A where A.user = username and A.id != user_id);
    set @role_limits = (select count(TB_T.id) from (SELECT G.id,G.name,
(select TB.value from (select * from json_table(G.role_limits,"$[*]" columns (id int path "$.id",value int path "$.value")) AS  jt1) as TB where id = 1) AS `limit`
,TB.total
FROM simpleweb.group AS G 
left join (select A.group_id,A.role,count(A.id) as total from `account` AS A where A.`role` = role_id and A.id != user_id group by (A.`role` and A.group_id) ) AS TB
on TB.group_id = G.id
where (select count(id) from json_table(@str,"$[*]" columns (id int path "$")) AS  jt2 where id = G.id) > 0) as TB_T where TB_T.total >=TB_T.limit limit 1);
select (@count_eu > 0) as existed,(@role_limits > 0) as over_limit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-19  2:02:33
