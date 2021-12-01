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
INSERT INTO `account` VALUES (10,'kt_1','123456',1,'2021-08-10 10:51:46',12,1,'nguyen le loc thinh','thinhspgood@gmail.com','0792062973','To 2 Vinh Diem Trung Vinh Hiep','1,2,3','0000-00-00 00:00:00','','','http://localhost:3000/home/user','nt1'),(14,'qtv_1','123456',5,'2021-08-10 15:02:57',10,1,'','','','','1',NULL,NULL,NULL,NULL,NULL),(12,'tq_1','123456',2,'2021-08-10 14:53:10',7,1,'','','','','1','0000-00-00 00:00:00','100017865601279','phamtien.pham.73550','https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.6435-1/p200x200/58462425_371676803437837_7775662591438749696_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_ohc=oUOIPO8LekAAX9iWR33&_nc_ht=scontent.fsgn2-1.fna&oh=f37190c6f1cb8792271fe57cd952a37b&oe=61CC22AB',''),(13,'tq_2','123456',2,'2021-08-10 14:53:19',7,1,'','','','','3',NULL,NULL,NULL,NULL,NULL),(7,'admin','123456',0,'2021-08-09 08:48:24',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'qtv_2','123456',5,'2021-08-10 15:03:21',10,1,'','','','','1',NULL,NULL,NULL,NULL,NULL),(11,'kt_2','123456',1,'2021-08-10 10:57:03',13,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(18,'ctv_t1','123456',3,'2021-08-11 10:01:32',14,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(16,'qtv_3','123456',5,'2021-08-10 15:03:37',11,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(17,'qtv_4','123456',5,'2021-08-10 15:03:48',11,1,'','','','','1',NULL,NULL,NULL,NULL,NULL),(19,'ctv_a1','123456',6,'2021-08-11 10:01:53',14,1,'','','','','1','0000-00-00 00:00:00','100003150169963','vi.nguyenthituong.90','https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-1/cp0/e15/q65/p74x74/162432861_3833871566727811_3344461959204334069_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=dbb9e7&efg=eyJpIjoiYiJ9&_nc_ohc=GxjojIYNMgAAX-PWIAN&tn=LSNq2gsqgde4FEAO&_nc_ht=scontent.fsgn2-5.fna&oh=3560a28487f331b38f0c3eb1046e4344&oe=61CADCA0',''),(20,'ctv_t2','123456',3,'2021-08-11 10:02:24',15,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(21,'ctv_a2','123456',6,'2021-08-11 10:03:56',15,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(22,'ctv_t3','123456',3,'2021-08-11 10:05:56',16,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL),(23,'ctv_a3','123456',6,'2021-08-11 10:06:16',16,1,'','','','',NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group`
--

LOCK TABLES `chat_group` WRITE;
/*!40000 ALTER TABLE `chat_group` DISABLE KEYS */;
INSERT INTO `chat_group` VALUES (68,'','','','','100067863644324',10,NULL,NULL,NULL),(69,'','','','','100029006692191',10,NULL,NULL,NULL),(70,'','','','','100035681477032',10,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=9101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group_mess`
--

LOCK TABLES `chat_group_mess` WRITE;
/*!40000 ALTER TABLE `chat_group_mess` DISABLE KEYS */;
INSERT INTO `chat_group_mess` VALUES (8862,'a',1,'100067863644324','00 51','2021-12-01 00:51:00',2,NULL,NULL,10,'a',55),(8863,'b',1,'100067863644324','00 51','2021-12-01 00:51:00',3,NULL,NULL,10,'b',55),(8864,'c',1,'100067863644324','00 51','2021-12-01 00:51:00',4,NULL,NULL,10,'c',55),(8865,'Hello bác',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',0,NULL,NULL,10,'Hello bac',1),(8866,'À vâng chào bác',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',1,NULL,NULL,10,'A vang chao bac',2),(8867,'Bác cần gì ạ',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',2,NULL,NULL,10,'Bac can gi a',3),(8868,'https://fewfeed.com\nFewFeeD a few things for your feed | FewFeed\nfewfeed.com',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',3,'https://external.xx.fbcdn.net/safe_image.php?d=AQFB-3WrnuWmcxFj&w=300&h=157&url=https%3A%2F%2Ffewfeed.com%2Fffbd.jpg&cfs=1&ext=emg0&_nc_oe=6f22d&_nc_sid=06c271&ccb=3-5&_nc_hash=AQH7LTHETguTecs6',NULL,10,'https://fewfeed.com\nFewFeeD a few things for your feed | FewFeed\nfewfeed.com',4),(8858,'789',1,'100067863644324','21 03  19 Thang 11  2021','2021-11-19 21:03:00',2,NULL,NULL,10,'789',52),(8859,'000',1,'100067863644324','21 30  19 Thang 11  2021','2021-11-19 21:30:00',0,NULL,NULL,10,'000',53),(8860,'123',1,'100067863644324','00 51','2021-12-01 00:51:00',0,NULL,NULL,10,'123',54),(8861,'456',1,'100067863644324','00 51','2021-12-01 00:51:00',1,NULL,NULL,10,'456',55),(8856,'123',1,'100067863644324','21 03  19 Thang 11  2021','2021-11-19 21:03:00',0,NULL,NULL,10,'123',50),(8857,'456',1,'100067863644324','21 03  19 Thang 11  2021','2021-11-19 21:03:00',1,NULL,NULL,10,'456',51),(8855,'',1,'100067863644324','20 47  19 Thang 11  2021','2021-11-19 20:47:00',0,'https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.15752-9/p320x320/248216336_434266714986324_5926940091171070054_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=mPjzQ6x86WQAX8srlGv&_nc_ht=scontent.fsgn2-4.fna&oh=8be726c2ee74ebc387ac36789501e062&oe=61CD331E,https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/p320x320/255460601_1214083942413585_3830883871074601849_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Z_oDYGi8lP0AX9bsaCO&_nc_ht=scontent.fsgn2-3.fna&oh=5d98f21d83a25fc5025b5b99b360f4ff&oe=61CA9D5B',NULL,10,'',49),(8854,'',1,'100067863644324','02 05  19 Thang 11  2021','2021-11-19 02:05:00',1,'https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.15752-9/p403x403/254553710_1332185700572817_2985029314433577111_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=2--y3wBdAwEAX8tnCH9&_nc_ht=scontent.fsgn2-6.fna&oh=012df2c65384ccde8e09eeba1986a028&oe=61CD3AC9,https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/p403x403/255039700_431542918499408_7881490408165338498_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=HAeEi4R8W6kAX9trFp9&_nc_oc=AQnFe1DqihHO2I78hA_HWru4pXh58jiMkIUMsSbvBVXB5uKmjXvgfJ0it_fwhLMFGJQ&_nc_ht=scontent.fsgn2-3.fna&oh=305418ca135a8d839c87280f179801bb&oe=61CB2334',NULL,10,'',48),(8853,'',1,'100067863644324','02 05  19 Thang 11  2021','2021-11-19 02:05:00',0,'https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.15752-9/p320x320/255460601_1214083942413585_3830883871074601849_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Z_oDYGi8lP0AX9bsaCO&_nc_ht=scontent.fsgn2-3.fna&oh=5d98f21d83a25fc5025b5b99b360f4ff&oe=61CA9D5B',NULL,10,'',47),(8851,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',7,'https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.15752-9/p403x403/248362102_435450821540928_5452006578466557833_n.png?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=6BQND23LLhMAX_S9chi&_nc_ht=scontent.fsgn2-4.fna&oh=90bd51b977a36276dc1a722957667682&oe=61CC30A1',NULL,10,'',45),(8852,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',8,'https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.15752-9/s600x600/254293384_443863827152717_1904855620182912588_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=YRFFGbUErcMAX9HpHym&_nc_ht=scontent.fsgn2-5.fna&oh=2f0115093f1cfe96fc179373c2ec4018&oe=61CA6BC1',NULL,10,'',46),(8850,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',6,'https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.15752-9/p403x403/247988288_196927085930335_8691207292528768731_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=aee45a&_nc_ohc=JB9rQcupAcwAX-OIjVE&_nc_ht=scontent.fsgn2-6.fna&oh=59c9bc6935c8641094ee2e9aa6cdf05a&oe=61CC35F0',NULL,10,'',44),(8849,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',5,'https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.15752-9/257609501_567654584328473_8314539743234050136_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=ahMPJxuhS6AAX--7yke&_nc_ht=scontent.fsgn2-4.fna&oh=3ec7dcd2668a3b23b104188f04dc4954&oe=61CD803B',NULL,10,'',43),(8848,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',4,'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.15752-9/p403x403/256588895_949420999314095_7986813327807477510_n.png?_nc_cat=107&ccb=1-5&_nc_sid=aee45a&_nc_ohc=69Rr9SxbRScAX8gkMBu&_nc_ht=scontent.fsgn2-1.fna&oh=049645e4b848f319637a4e621793cbb3&oe=61CBF2AA',NULL,10,'',42),(8847,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',3,'https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.15752-9/p320x320/248216336_434266714986324_5926940091171070054_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=mPjzQ6x86WQAX8srlGv&_nc_ht=scontent.fsgn2-4.fna&oh=8be726c2ee74ebc387ac36789501e062&oe=61CD331E',NULL,10,'',41),(8846,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',2,'https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.15752-9/254364181_967429917177914_1212918974287918610_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=FtzOaEd4kP4AX9ZoVWj&_nc_ht=scontent.fsgn2-6.fna&oh=f4fdb7ec489626c549afbfd8d5814494&oe=61CC4742',NULL,10,'',40),(8845,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',1,'https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.15752-9/s600x600/255620907_300332601939859_4450838435956825298_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=aee45a&_nc_ohc=HFk13I2QtCUAX_r7iYS&_nc_ht=scontent.fsgn2-4.fna&oh=7ae58e12196ca3ee7f8747064634ff29&oe=61CB300B',NULL,10,'',39),(8844,'',1,'100067863644324','00 58  19 Thang 11  2021','2021-11-19 00:58:00',0,'https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.15752-9/p403x403/254126679_212347560904113_6733576909315917106_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=0tpqUFJBba4AX-9f3ia&_nc_ht=scontent.fsgn2-5.fna&oh=2ca19cb0f608008c8ca3fa28b828bc9d&oe=61CCCD35',NULL,10,'',38),(8843,'9',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',13,NULL,NULL,10,'9',37),(8841,'7',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',11,NULL,NULL,10,'7',35),(8842,'8',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',12,NULL,NULL,10,'8',36),(8840,'6',0,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',10,NULL,NULL,10,'6',34),(8838,'4',0,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',8,NULL,NULL,10,'4',32),(8839,'5',0,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',9,NULL,NULL,10,'5',33),(8837,'3',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',7,NULL,NULL,10,'3',31),(8836,'2',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',6,NULL,NULL,10,'2',30),(8835,'1',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',5,NULL,NULL,10,'1',29),(8834,'bat dau thu',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',4,NULL,NULL,10,'bat dau thu',28),(8833,'ok thu di',0,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',3,NULL,NULL,10,'ok thu di',27),(8831,'lan cuoi',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',1,NULL,NULL,10,'lan cuoi',25),(8832,'cung',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',2,NULL,NULL,10,'cung',26),(8830,'ok thu lai',1,'100067863644324','22 45  11 Thang 11  2021','2021-11-11 22:45:00',0,NULL,NULL,10,'ok thu lai',24),(8829,'4',1,'100067863644324','22 23  11 Thang 11  2021','2021-11-11 22:23:00',7,NULL,NULL,10,'4',23),(8827,'1',1,'100067863644324','22 23  11 Thang 11  2021','2021-11-11 22:23:00',5,NULL,NULL,10,'1',21),(8828,'2',1,'100067863644324','22 23  11 Thang 11  2021','2021-11-11 22:23:00',6,NULL,NULL,10,'2',22),(8826,'123 bat dau nha',0,'100067863644324','22 23  11 Thang 11  2021','2021-11-11 22:23:00',4,NULL,NULL,10,'123 bat dau nha',20),(8824,'2',1,'100067863644324','22 23  11 Thang 11  2021','2021-11-11 22:23:00',2,NULL,NULL,10,'2',18),(8825,'3',1,'100067863644324','22 23  11 Thang 11  2021','2021-11-11 22:23:00',3,NULL,NULL,10,'3',19),(8823,'1',1,'100067863644324','22 23  11 Thang 11  2021','2021-11-11 22:23:00',1,NULL,NULL,10,'1',17),(8822,'now',1,'100067863644324','22 23  11 Thang 11  2021','2021-11-11 22:23:00',0,NULL,NULL,10,'now',16),(8817,'test lai',1,'100067863644324','21 36  11 Thang 11  2021','2021-11-11 21:36:00',0,NULL,NULL,10,'test lai',11),(8818,'ok',0,'100067863644324','21 36  11 Thang 11  2021','2021-11-11 21:36:00',1,NULL,NULL,10,'ok',12),(8819,'now let go the last test',1,'100067863644324','21 59  11 Thang 11  2021','2021-11-11 21:59:00',0,NULL,NULL,10,'now let go the last test',13),(8820,'hope good',0,'100067863644324','21 59  11 Thang 11  2021','2021-11-11 21:59:00',1,NULL,NULL,10,'hope good',14),(8821,'ok',1,'100067863644324','21 59  11 Thang 11  2021','2021-11-11 21:59:00',2,NULL,NULL,10,'ok',15),(8811,'ok hoi di',0,'100067863644324','10 04  11 Thang 11  2021','2021-11-11 10:04:00',2,NULL,NULL,10,'ok hoi di',5),(8812,'1+ 2 ne',0,'100067863644324','10 04  11 Thang 11  2021','2021-11-11 10:04:00',3,NULL,NULL,10,'1+ 2 ne',6),(8813,'4+5 = may',1,'100067863644324','10 04  11 Thang 11  2021','2021-11-11 10:04:00',4,NULL,NULL,10,'4+5 = may',7),(8814,'9 chu may',0,'100067863644324','10 04  11 Thang 11  2021','2021-11-11 10:04:00',5,NULL,NULL,10,'9 chu may',8),(8815,'ok',1,'100067863644324','10 04  11 Thang 11  2021','2021-11-11 10:04:00',6,NULL,NULL,10,'ok',9),(8816,'ohm',0,'100067863644324','20 59  11 Thang 11  2021','2021-11-11 20:59:00',0,NULL,NULL,10,'ohm',10),(8810,'tui hoi ne',1,'100067863644324','10 04  11 Thang 11  2021','2021-11-11 10:04:00',1,NULL,NULL,10,'tui hoi ne',4),(8809,'ok ko ban',1,'100067863644324','10 04  11 Thang 11  2021','2021-11-11 10:04:00',0,NULL,NULL,10,'ok ko ban',3),(8808,'123',0,'100067863644324','16 20  10 Thang 11  2021','2021-11-10 16:20:00',0,NULL,NULL,10,'123',2),(8807,'y',1,'100067863644324','15 35  7 Thang 11  2021','2021-11-07 15:35:00',0,NULL,NULL,10,'y',1),(8869,'Bác nhận làm web giống này không',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',4,NULL,NULL,10,'Bac nhan lam web giong nay khong',5),(8870,'Hoặc e mua tk web đó',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',5,NULL,NULL,10,'Hoac e mua tk web do',6),(8871,'Bác làm cho e 1 web up bài ở web đó nhưng ở web bác tạo',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',6,NULL,NULL,10,'Bac lam cho e 1 web up bai o web do nhung o web bac tao',7),(8872,'Em chưa hiểu lắm',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',7,NULL,NULL,10,'Em chua hieu lam',8),(8873,'Web chức năng giống web bác gửi à bác',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',8,NULL,NULL,10,'Web chuc nang giong web bac gui a bac',9),(8874,'',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',9,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p320x320/259659597_2711014462532881_227940058709669573_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=fChxQgEVCsUAX-2uC76&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=5abf46bea034ef0682641a8dcd2bfacf&oe=61CD1F93',NULL,10,'',10),(8875,'Cần mỗi cái đăng 2 ô này thôi',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',10,NULL,NULL,10,'Can moi cai dang 2 o nay thoi',11),(8876,'Bác lấy tài khoản tham khảo không ạ',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',11,NULL,NULL,10,'Bac lay tai khoan tham khao khong a',12),(8877,'E gửi',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',12,NULL,NULL,10,'E gui',13),(8878,'2 ô này là bài đăng của group hả bác',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',13,NULL,NULL,10,'2 o nay la bai dang cua group ha bac',14),(8879,'Hay page',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',14,NULL,NULL,10,'Hay page',15),(8880,'À',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',15,NULL,NULL,10,'A',16),(8881,'Là tự động chia sẻ bài đăng lên trang cá nhân à bác ?',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',16,NULL,NULL,10,'La tu dong chia se bai dang len trang ca nhan a bac ?',17),(8882,'Page bác ạ',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',17,NULL,NULL,10,'Page bac a',18),(8883,'Gọi đc ko bác',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',18,NULL,NULL,10,'Goi dc ko bac',19),(8884,'Nói cho rõ',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',19,NULL,NULL,10,'Noi cho ro',20),(8885,'Ok bác',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',20,NULL,NULL,10,'Ok bac',21),(8886,'Cuộc gọi thoại\n4 phút',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',21,NULL,NULL,10,'Cuoc goi thoai\n4 phut',22),(8887,'Tk nguyenquoctai19981@gmail.com',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',22,NULL,NULL,10,'Tk nguyenquoctai19981@gmail.com',23),(8888,'Goqjyg-dykzuw-bitqy9',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',23,NULL,NULL,10,'Goqjyg-dykzuw-bitqy9',24),(8889,'Bác chờ em xý em check',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',24,NULL,NULL,10,'Bac cho em xy em check',25),(8890,'Vâng',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',25,NULL,NULL,10,'Vang',26),(8891,'E làm web kiểu cho người khác thuê ạ',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',26,NULL,NULL,10,'E lam web kieu cho nguoi khac thue a',27),(8892,'',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',27,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/260415208_3031297123799165_6251649231961692302_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=GNnZ6WM238IAX_yP_ET&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=59b998980b3e1caa5d150d3aed28c0f9&oe=61CD889F',NULL,10,'',28),(8893,'cái này đúng không bác',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',28,NULL,NULL,10,'cai nay dung khong bac',29),(8894,'à',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',29,NULL,NULL,10,'a',30),(8895,'',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',30,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p320x320/258595690_4703808179677160_778129295548126644_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=aee45a&_nc_ohc=j8zY6sURzmgAX8tvF6Y&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=24b5b3cd241c1deddf8c0e499dd90ab9&oe=61CC5E10',NULL,10,'',31),(8896,'',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',31,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p320x320/255584342_1585508778454153_8396990601830108330_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=aee45a&_nc_ohc=RAyDOUnqUVUAX_VNTKE&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=3c5aaa4e054084eb6d5415754c9f29e9&oe=61CC1C23',NULL,10,'',32),(8897,'Cái này ạ',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',32,NULL,NULL,10,'Cai nay a',33),(8898,'à vâng',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',33,NULL,NULL,10,'a vang',34),(8899,'em thấy rồi',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',34,NULL,NULL,10,'em thay roi',35),(8900,'Mỗi cái đó thôi',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',35,NULL,NULL,10,'Moi cai do thoi',36),(8901,'Ạ',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',36,NULL,NULL,10,'A',37),(8902,'',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',37,'https://scontent.xx.fbcdn.net/v/t1.15752-9/260424034_4800952606603120_810842488476255352_n.png?_nc_cat=101&ccb=1-5&_nc_sid=aee45a&_nc_ohc=uC_iSc2cFB4AX_efAh4&_nc_oc=AQnOyd4PV22kiDPqur8mBy9N8AjKofnzN1q3IDe7JbWbAR81fSsi0OzxycNCIyzE6NtX6v1HgfWC_UFOokJmTjue&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=e0de73bdde15577c22e370c8fdb31f40&oe=61CBD947',NULL,10,'',38),(8903,'này là nó không cho thử à bác',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',38,NULL,NULL,10,'nay la no khong cho thu a bac',39),(8904,'Do mình chưa nhập token vào đó a',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',39,NULL,NULL,10,'Do minh chua nhap token vao do a',40),(8905,'',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',40,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p320x320/255020955_964419404428876_793084093710106384_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=aee45a&_nc_ohc=T0UZoSBl-_0AX9Q8tsQ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=21602401fcea97a36f1fc7b5f08c05ca&oe=61CD3AD9',NULL,10,'',41),(8906,'Phần account là nhập token tk fb cần đăng lên',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',41,NULL,NULL,10,'Phan account la nhap token tk fb can dang len',42),(8907,'Với thời gian còn lại của tài khoản đang mua',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',42,NULL,NULL,10,'Voi thoi gian con lai cua tai khoan dang mua',43),(8908,'ok ạ',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',43,NULL,NULL,10,'ok a',44),(8909,'bác có token nào test đc không bác',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',44,NULL,NULL,10,'bac co token nao test dc khong bac',45),(8910,'EAAGNO4a7r2wBANRvONfw8GDGLZATr78v4Dy7E2M39usWZCXI3nL7tLysmuP7TmCOmHeKLOxd8jzwZAN75CBF0hBnPgCZAEsWB21hxfVKUwSrU6ELkTlzxGC4zshW73PEwTBZAZAtablN7Lf9KBZCvZBHh0WllVFAzeWn4KHT3i1LwQZDZD',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',45,NULL,NULL,10,'EAAGNO4a7r2wBANRvONfw8GDGLZATr78v4Dy7E2M39usWZCXI3nL7tLysmuP7TmCOmHeKLOxd8jzwZAN75CBF0hBnPgCZAEsWB21hxfVKUwSrU6ELkTlzxGC4zshW73PEwTBZAZAtablN7Lf9KBZCvZBHh0WllVFAzeWn4KHT3i1LwQZDZD',46),(8911,'Anh thử cái page cho thuê tool giùm e nhé',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',46,NULL,NULL,10,'Anh thu cai page cho thue tool gium e nhe',47),(8912,'',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',48,'https://scontent.xx.fbcdn.net/v/t1.15752-9/260525476_409848737288260_5746758657794627973_n.png?_nc_cat=104&ccb=1-5&_nc_sid=aee45a&_nc_ohc=1ks9VnFPs8sAX-lqRDV&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=52f171a5be43642b553b6ce870003ffe&oe=61CCB88B',NULL,10,'',49),(8913,'hok dc bác ơi',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',49,NULL,NULL,10,'hok dc bac oi',50),(8914,'Để e lấy token khác',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',50,NULL,NULL,10,'De e lay token khac',51),(8915,'Chắc đó hỏng rồi',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',51,NULL,NULL,10,'Chac do hong roi',52),(8916,'ok ạ',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',52,NULL,NULL,10,'ok a',53),(8917,'EAAGNO4a7r2wBAJUF2uh2vOd8ZBDevefv11VPtDz57eZCVZCvjP6E1ednoro881T54TBKu8jPOoTMXqDg16Wi1JUmzbG1f0VXSuyKyfepdahlQ3G1ZCTgRK4vsfdNZBOCYYzSJtZBzUcz04KzuFbkpxGkZAPiZB4s3LlBeB4tEohtJgZDZD',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',53,NULL,NULL,10,'EAAGNO4a7r2wBAJUF2uh2vOd8ZBDevefv11VPtDz57eZCVZCvjP6E1ednoro881T54TBKu8jPOoTMXqDg16Wi1JUmzbG1f0VXSuyKyfepdahlQ3G1ZCTgRK4vsfdNZBOCYYzSJtZBzUcz04KzuFbkpxGkZAPiZB4s3LlBeB4tEohtJgZDZD',54),(8918,'Đây a',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',54,NULL,NULL,10,'Day a',55),(8919,'ok bác em xem được rồi',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',55,NULL,NULL,10,'ok bac em xem duoc roi',56),(8920,'mà em check mấy cái rồi mai em báo giá bác đc không ạ',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',56,NULL,NULL,10,'ma em check may cai roi mai em bao gia bac dc khong a',57),(8921,'vâng',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',57,NULL,NULL,10,'vang',58),(8922,'dạ em cảm ơn ạ',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',58,NULL,NULL,10,'da em cam on a',59),(8923,'Sơ đồ kiểu',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',59,NULL,NULL,10,'So do kieu',60),(8924,'Lập acc —> bank —-> set tài khoản —-> thời gian thuê',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',60,NULL,NULL,10,'Lap acc —> bank —-> set tai khoan —-> thoi gian thue',61),(8925,'Dạ vâng ok ạ',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',61,NULL,NULL,10,'Da vang ok a',62),(8926,'Có gì a không hiểu',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',62,NULL,NULL,10,'Co gi a khong hieu',63),(8927,'A hỏi em',0,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',63,NULL,NULL,10,'A hoi em',64),(8928,'Ok ạ',1,'100029006692191','09 34  24 Thang 11  2021','2021-11-24 09:34:00',64,NULL,NULL,10,'Ok a',65),(8929,'Ok ko ảnh',0,'100029006692191','CN 13 32','2021-11-28 13:32:00',0,NULL,NULL,10,'Ok ko anh',66),(8930,'Anh',0,'100029006692191','CN 13 32','2021-11-28 13:32:00',1,NULL,NULL,10,'Anh',67),(8931,'alo ạ',1,'100029006692191','CN 22 33','2021-11-28 22:33:00',0,NULL,NULL,10,'alo a',68),(8932,'dạ sr bác cuối tuần bên cty em không làm việc',1,'100029006692191','CN 22 33','2021-11-28 22:33:00',1,NULL,NULL,10,'da sr bac cuoi tuan ben cty em khong lam viec',69),(8933,'dạ dự án bên bác được báo giá là khoảng 20 triệu trong vòng 1 tháng ạ',1,'100029006692191','CN 22 33','2021-11-28 22:33:00',2,NULL,NULL,10,'da du an ben bac duoc bao gia la khoang 20 trieu trong vong 1 thang a',70),(8934,'bác cứ tham khảo các bên ổn thì tui em phân người làm ạ',1,'100029006692191','CN 22 33','2021-11-28 22:33:00',3,NULL,NULL,10,'bac cu tham khao cac ben on thi tui em phan nguoi lam a',71),(8935,'em cảm ơn bác',1,'100029006692191','CN 22 33','2021-11-28 22:33:00',4,NULL,NULL,10,'em cam on bac',72),(8936,'chúc bác 1 tuần làm việc vui vẻ ạ',1,'100029006692191','CN 22 33','2021-11-28 22:33:00',5,NULL,NULL,10,'chuc bac 1 tuan lam viec vui ve a',73),(8937,'Anh đã test hết cái đó chưa',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',0,NULL,NULL,10,'Anh da test het cai do chua',74),(8938,'Anh kt mấy cái api bên nhà cung cấp fb xem có cho phép tạo cái đó hay không thôi',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',1,NULL,NULL,10,'Anh kt may cai api ben nha cung cap fb xem co cho phep tao cai do hay khong thoi',75),(8939,'Bên anh làm ra đc sp mới nhận tiền',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',2,NULL,NULL,10,'Ben anh lam ra dc sp moi nhan tien',76),(8940,'Em cứ cân nhắc',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',3,NULL,NULL,10,'Em cu can nhac',77),(8941,'Đợt e xem hình có up bằng tay đc , mà em hk biết viết phần nút',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',4,NULL,NULL,10,'Dot e xem hinh co up bang tay dc , ma em hk biet viet phan nut',78),(8942,'Giống web đó lun hk a',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',5,NULL,NULL,10,'Giong web do lun hk a',79),(8943,'Làm web riêng của mình thì tùy mình chỉnh nha em',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',6,NULL,NULL,10,'Lam web rieng cua minh thi tuy minh chinh nha em',80),(8944,'Bố cục thế nào là bên anh làm theo yêu cầu',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',7,NULL,NULL,10,'Bo cuc the nao la ben anh lam theo yeu cau',81),(8945,'vâng',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',8,NULL,NULL,10,'vang',82),(8946,'để e xem rồi có gì e ns a',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',9,NULL,NULL,10,'de e xem roi co gi e ns a',83),(8947,'Ok em',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',10,NULL,NULL,10,'Ok em',84),(8948,'xem demo xong bank đúng hk a',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',11,NULL,NULL,10,'xem demo xong bank dung hk a',85),(8949,'Uhm em',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',12,NULL,NULL,10,'Uhm em',86),(8950,'.',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',13,NULL,NULL,10,'.',87),(8951,'vâng',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',14,NULL,NULL,10,'vang',88),(8952,'có gì em ib a sau',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',15,NULL,NULL,10,'co gi em ib a sau',89),(8953,'Ok em',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',16,NULL,NULL,10,'Ok em',90),(8954,'',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',17,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/261424003_432176248482115_7766481576171834740_n.png?_nc_cat=111&ccb=1-5&_nc_sid=aee45a&_nc_ohc=b6VygF31KhoAX8n9QZF&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=aea594e378d6353db3fcf8f2cfe0b20c&oe=61CD6930',NULL,10,'',91),(8955,'e cx chỉ cần phần này',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',18,NULL,NULL,10,'e cx chi can phan nay',92),(8956,'Thì cái gì của em rồi thì em tùy ý',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',19,NULL,NULL,10,'Thi cai gi cua em roi thi em tuy y',93),(8957,'vâng',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',20,NULL,NULL,10,'vang',94),(8958,'Anh chỉ là làm thuê cho em thôi mà',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',21,NULL,NULL,10,'Anh chi la lam thue cho em thoi ma',95),(8959,'c.ơn a xem nhé, để em coi lại rồi e ib',0,'100029006692191','T3 20 22','2021-11-30 20:22:00',22,NULL,NULL,10,'c.on a xem nhe, de em coi lai roi e ib',96),(8960,'Ok em',1,'100029006692191','T3 20 22','2021-11-30 20:22:00',23,NULL,NULL,10,'Ok em',97),(8961,'A cho e hỏi cái phần thanh toán web thì sao a',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',0,NULL,NULL,10,'A cho e hoi cai phan thanh toan web thi sao a',98),(8962,'Bên em nhận tiền theo hình thức nào',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',1,NULL,NULL,10,'Ben em nhan tien theo hinh thuc nao',99),(8963,'Bank',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',2,NULL,NULL,10,'Bank',100),(8964,'Momo',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',3,NULL,NULL,10,'Momo',101),(8965,'Hay nạp tiền trc rồi kích hoạt sau',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',4,NULL,NULL,10,'Hay nap tien trc roi kich hoat sau',102),(8966,'Tùy chỉnh đc em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',5,NULL,NULL,10,'Tuy chinh dc em',103),(8967,'Nếu bank vs momo thì sao a',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',6,NULL,NULL,10,'Neu bank vs momo thi sao a',104),(8968,'Bank thì có 2 kiểu',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',7,NULL,NULL,10,'Bank thi co 2 kieu',105),(8969,'Api trực tiếp thanh toán',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',8,NULL,NULL,10,'Api truc tiep thanh toan',106),(8970,'Vs thanh toán xong rồi mình duyệt',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',9,NULL,NULL,10,'Vs thanh toan xong roi minh duyet',107),(8971,'Mà kiểu gì cũng zj anh phải tính chi phí thêm',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',10,NULL,NULL,10,'Ma kieu gi cung zj anh phai tinh chi phi them',108),(8972,'Vì thanh toán trực tiếp nó là 1 chức năng lớn',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',11,NULL,NULL,10,'Vi thanh toan truc tiep no la 1 chuc nang lon',109),(8973,'Mà anh nghĩ hệ thống em thì nên làm kiểu nạp tiền gián tiếp thôi',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',12,NULL,NULL,10,'Ma anh nghi he thong em thi nen lam kieu nap tien gian tiep thoi',110),(8974,'Thế thanh toán theo mã thì user thì sao',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',13,NULL,NULL,10,'The thanh toan theo ma thi user thi sao',111),(8975,'Cứ gửi tiền vào tk',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',14,NULL,NULL,10,'Cu gui tien vao tk',112),(8976,'Chắc thế',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',15,NULL,NULL,10,'Chac the',113),(8977,'Rồi mình duyệt sau',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',16,NULL,NULL,10,'Roi minh duyet sau',114),(8978,'Chắc theo kiểu mã user',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',17,NULL,NULL,10,'Chac theo kieu ma user',115),(8979,'Rồi tự trừ tiền họ khi thao tác thôi',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',18,NULL,NULL,10,'Roi tu tru tien ho khi thao tac thoi',116),(8980,'Vd 1 lần chạy thì 2k cho 1 page',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',19,NULL,NULL,10,'Vd 1 lan chay thi 2k cho 1 page',117),(8981,'20 page thì 40k thpoi',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',20,NULL,NULL,10,'20 page thi 40k thpoi',118),(8982,'Kiểu vậy ak',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',21,NULL,NULL,10,'Kieu vay ak',119),(8983,'Tính tiền theo page dc à a',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',22,NULL,NULL,10,'Tinh tien theo page dc a a',120),(8984,'E định cho theo user rồi chia gói',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',23,NULL,NULL,10,'E dinh cho theo user roi chia goi',121),(8985,'Gói 1 chỉ up đc 3 bài 1 ngày/ 1  user',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',24,NULL,NULL,10,'Goi 1 chi up dc 3 bai 1 ngay/ 1 user',122),(8986,'Vs gói 2 thì giới hạn thêm đc 10 tk là hết',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',25,NULL,NULL,10,'Vs goi 2 thi gioi han them dc 10 tk la het',123),(8987,'Ừ thì tùy ý em mà',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',26,NULL,NULL,10,'U thi tuy y em ma',124),(8988,'Mà a làm dc theo kiểu này à',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',27,NULL,NULL,10,'Ma a lam dc theo kieu nay a',125),(8989,'Quan trọng em có mún hay ko chứ anh pro mà ',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',28,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'Quan trong em co mun hay ko chu anh pro ma',126),(8990,'Có tiền là đc hết',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',29,NULL,NULL,10,'Co tien la dc het',127),(8991,'',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',30,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,'',128),(8992,'Với chỉ phí bữa trước',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',31,NULL,NULL,10,'Voi chi phi bua truoc',129),(8993,'Thì a lm cho e những gì',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',32,NULL,NULL,10,'Thi a lm cho e nhung gi',130),(8994,'1 bộ sourcr code web site',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',33,NULL,NULL,10,'1 bo sourcr code web site',131),(8995,'Tạo tk',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',34,NULL,NULL,10,'Tao tk',132),(8996,'Quản lý tk',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',35,NULL,NULL,10,'Quan ly tk',133),(8997,'Nạp tiền',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',36,NULL,NULL,10,'Nap tien',134),(8998,'Xác nhận nạp tiền',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',37,NULL,NULL,10,'Xac nhan nap tien',135),(8999,'Dùng chức năng',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',38,NULL,NULL,10,'Dung chuc nang',136),(9000,'Tổng hợp chi phí đã chi',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',39,NULL,NULL,10,'Tong hop chi phi da chi',137),(9001,'Admin thì xem đc báo cáo',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',40,NULL,NULL,10,'Admin thi xem dc bao cao',138),(9002,'Tùy ý mình nưac',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',41,NULL,NULL,10,'Tuy y minh nuac',139),(9003,'Này chia gói dc chưa a',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',42,NULL,NULL,10,'Nay chia goi dc chua a',140),(9004,'Tại e cx thử',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',43,NULL,NULL,10,'Tai e cx thu',141),(9005,'Uhm mình phân quyền ak em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',44,NULL,NULL,10,'Uhm minh phan quyen ak em',142),(9006,'Admin xác nhận thì mới có quyền sử dụng',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',45,NULL,NULL,10,'Admin xac nhan thi moi co quyen su dung',143),(9007,'Kiếu đc làm gì ấy',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',46,NULL,NULL,10,'Kieu dc lam gi ay',144),(9008,'Ví dụ up bn bài 1 ngày ấy',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',47,NULL,NULL,10,'Vi du up bn bai 1 ngay ay',145),(9009,'Uhm dc ak em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',48,NULL,NULL,10,'Uhm dc ak em',146),(9010,'Limit tk dc mà',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',49,NULL,NULL,10,'Limit tk dc ma',147),(9011,'Thế thì test ms biết đc',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',50,NULL,NULL,10,'The thi test ms biet dc',148),(9012,'Hình như bên fb còn limit 1 ngày đc bao nhiu lần nữa',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',51,NULL,NULL,10,'Hinh nhu ben fb con limit 1 ngay dc bao nhiu lan nua',149),(9013,'Mà ko sao cái đó mình qua mặt nó đc',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',52,NULL,NULL,10,'Ma ko sao cai do minh qua mat no dc',150),(9014,'Uhm',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',53,NULL,NULL,10,'Uhm',151),(9015,'Phải test chứ em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',54,NULL,NULL,10,'Phai test chu em',152),(9016,'Phần mềm nào làm ra mà ko cần test chứ',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',55,NULL,NULL,10,'Phan mem nao lam ra ma ko can test chu',153),(9017,'',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',56,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,'',154),(9018,'Chi phí đó hiện tại thì có thể đc',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',57,NULL,NULL,10,'Chi phi do hien tai thi co the dc',155),(9019,'Cũng cả tháng ấy chứ ko phải làm phát ăn liền đâu',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',58,NULL,NULL,10,'Cung ca thang ay chu ko phai lam phat an lien dau',156),(9020,'E biết mà',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',59,NULL,NULL,10,'E biet ma',157),(9021,'Mình sẽ họp về tiến độ công việc ít nhất 1 lần 1 tuần',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',60,NULL,NULL,10,'Minh se hop ve tien do cong viec it nhat 1 lan 1 tuan',158),(9022,'Bên anh báo cáo làm tới đâu đâu rồi',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',61,NULL,NULL,10,'Ben anh bao cao lam toi dau dau roi',159),(9023,'Khó khăn gì',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',62,NULL,NULL,10,'Kho khan gi',160),(9024,'Xử lý ra sao',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',63,NULL,NULL,10,'Xu ly ra sao',161),(9025,'E sợ vụ add chết token',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',64,NULL,NULL,10,'E so vu add chet token',162),(9026,'Hk biết thế nào',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',65,NULL,NULL,10,'Hk biet the nao',163),(9027,'Token nó có 2 loại',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',66,NULL,NULL,10,'Token no co 2 loai',164),(9028,'7 ngày vs vv',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',67,NULL,NULL,10,'7 ngay vs vv',165),(9029,'Với hay bị fb quét á a',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',68,NULL,NULL,10,'Voi hay bi fb quet a a',166),(9030,'E có xài bên web đó',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',69,NULL,NULL,10,'E co xai ben web do',167),(9031,'Thì tìm cách giải quyết chứ em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',70,NULL,NULL,10,'Thi tim cach giai quyet chu em',168),(9032,'Hay bị hả',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',71,NULL,NULL,10,'Hay bi ha',169),(9033,'Nhiều đứa hay bị 956',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',72,NULL,NULL,10,'Nhieu dua hay bi 956',170),(9034,'Lạ ip hay sao ấy',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',73,NULL,NULL,10,'La ip hay sao ay',171),(9035,'956 là sao em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',74,NULL,NULL,10,'956 la sao em',172),(9036,'Bị khoá két sắt ảo á a',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',75,NULL,NULL,10,'Bi khoa ket sat ao a a',173),(9037,'Thì đến lúc đó mình tìm giải pháp',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',76,NULL,NULL,10,'Thi den luc do minh tim giai phap',174),(9038,'Bên cty anh chua trọng giải pháp cho khách',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',77,NULL,NULL,10,'Ben cty anh chua trong giai phap cho khach',175),(9039,'Chú trọng giải pháp',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',78,NULL,NULL,10,'Chu trong giai phap',176),(9040,'Vâng',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',79,NULL,NULL,10,'Vang',177),(9041,'Thường là ý tưởng ban đầu của em khi ra kết quả cuối cùng sẽ hơi khác tý',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',80,NULL,NULL,10,'Thuong la y tuong ban dau cua em khi ra ket qua cuoi cung se hoi khac ty',178),(9042,'Nhưng kết quả vẫn ok',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',81,NULL,NULL,10,'Nhung ket qua van ok',179),(9043,'Tốt là đc a',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',82,NULL,NULL,10,'Tot la dc a',180),(9044,'Đường vòng cũng là đường',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',83,NULL,NULL,10,'Duong vong cung la duong',181),(9045,'Kiểu vậy',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',84,NULL,NULL,10,'Kieu vay',182),(9046,'Thế a lên cho e ạ',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',85,NULL,NULL,10,'The a len cho e a',183),(9047,'Thanh toán duyệt cx đc',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',86,NULL,NULL,10,'Thanh toan duyet cx dc',184),(9048,'Vị số lượng khác cx mới kiếm',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',87,NULL,NULL,10,'Vi so luong khac cx moi kiem',185),(9049,'Khách',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',88,NULL,NULL,10,'Khach',186),(9050,'Chưa cần tới tự động lắm',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',89,NULL,NULL,10,'Chua can toi tu dong lam',187),(9051,'Uhm ok em sau này cần nâng cấp làm sau',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',90,NULL,NULL,10,'Uhm ok em sau nay can nang cap lam sau',188),(9052,'Ko sao đâu',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',91,NULL,NULL,10,'Ko sao dau',189),(9053,'Cần chức năng kia oke',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',92,NULL,NULL,10,'Can chuc nang kia oke',190),(9054,'Hai lòng khách trươc thôi',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',93,NULL,NULL,10,'Hai long khach truoc thoi',191),(9055,'Thế a chốt cho e ạ',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',94,NULL,NULL,10,'The a chot cho e a',192),(9056,'Để mai anh họp team rồi gửi em bản kế hoạch',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',95,NULL,NULL,10,'De mai anh hop team roi gui em ban ke hoach',193),(9057,'Ok em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',96,NULL,NULL,10,'Ok em',194),(9058,'Với e muốn chia gói thì chi phí đó đc đúng hk a',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',97,NULL,NULL,10,'Voi e muon chia goi thi chi phi do dc dung hk a',195),(9059,'Uhm dc em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',98,NULL,NULL,10,'Uhm dc em',196),(9060,'Vâng',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',99,NULL,NULL,10,'Vang',197),(9061,'Có gì a báo e',0,'100029006692191','T4 19 28','2021-12-01 19:28:00',100,NULL,NULL,10,'Co gi a bao e',198),(9062,'Ok em',1,'100029006692191','T4 19 28','2021-12-01 19:28:00',101,NULL,NULL,10,'Ok em',199),(9063,'Đường vòng cũng là đường',1,'100029006692191','T4 20 08','2021-12-01 20:08:00',1,NULL,NULL,10,'Duong vong cung la duong',2),(9064,'Kiểu vậy',1,'100029006692191','T4 20 08','2021-12-01 20:08:00',2,NULL,NULL,10,'Kieu vay',3),(9065,'Thế a lên cho e ạ',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',3,NULL,NULL,10,'The a len cho e a',4),(9066,'Thanh toán duyệt cx đc',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',4,NULL,NULL,10,'Thanh toan duyet cx dc',5),(9067,'Vị số lượng khác cx mới kiếm',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',5,NULL,NULL,10,'Vi so luong khac cx moi kiem',6),(9068,'Khách',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',6,NULL,NULL,10,'Khach',7),(9069,'Chưa cần tới tự động lắm',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',7,NULL,NULL,10,'Chua can toi tu dong lam',8),(9070,'Uhm ok em sau này cần nâng cấp làm sau',1,'100029006692191','T4 20 08','2021-12-01 20:08:00',8,NULL,NULL,10,'Uhm ok em sau nay can nang cap lam sau',9),(9071,'Ko sao đâu',1,'100029006692191','T4 20 08','2021-12-01 20:08:00',9,NULL,NULL,10,'Ko sao dau',10),(9072,'Cần chức năng kia oke',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',10,NULL,NULL,10,'Can chuc nang kia oke',11),(9073,'Hai lòng khách trươc thôi',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',11,NULL,NULL,10,'Hai long khach truoc thoi',12),(9074,'Thế a chốt cho e ạ',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',12,NULL,NULL,10,'The a chot cho e a',13),(9075,'Để mai anh họp team rồi gửi em bản kế hoạch',1,'100029006692191','T4 20 08','2021-12-01 20:08:00',13,NULL,NULL,10,'De mai anh hop team roi gui em ban ke hoach',14),(9076,'Ok em',1,'100029006692191','T4 20 08','2021-12-01 20:08:00',14,NULL,NULL,10,'Ok em',15),(9077,'Với e muốn chia gói thì chi phí đó đc đúng hk a',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',15,NULL,NULL,10,'Voi e muon chia goi thi chi phi do dc dung hk a',16),(9078,'Uhm dc em',1,'100029006692191','T4 20 08','2021-12-01 20:08:00',16,NULL,NULL,10,'Uhm dc em',17),(9079,'Vâng',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',17,NULL,NULL,10,'Vang',18),(9080,'Có gì a báo e',0,'100029006692191','T4 20 08','2021-12-01 20:08:00',18,NULL,NULL,10,'Co gi a bao e',19),(9081,'Ok em',1,'100029006692191','T4 20 08','2021-12-01 20:08:00',19,NULL,NULL,10,'Ok em',20),(9082,'hello bạn ơi',0,'100035681477032','09 14  23 Thang 11  2021','2021-11-23 09:14:00',0,NULL,NULL,10,'hello ban oi',1),(9083,'báo giá cho mình với',0,'100035681477032','09 14  23 Thang 11  2021','2021-11-23 09:14:00',1,NULL,NULL,10,'bao gia cho minh voi',2),(9084,'Hello bác',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',0,NULL,NULL,10,'Hello bac',3),(9085,'Bên em có nhìu giá',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',1,NULL,NULL,10,'Ben em co nhiu gia',4),(9086,'Bác cho em biết quỹ bác dự chi cho nó là bao nhiu thì tui em tư vấn cho những chức năng tương xứng ạ',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',2,NULL,NULL,10,'Bac cho em biet quy bac du chi cho no la bao nhiu thi tui em tu van cho nhung chuc nang tuong xung a',5),(9087,'Rồi em báo làm đc hay ko làm đc luôn để đỡ mất thời gian bác',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',3,NULL,NULL,10,'Roi em bao lam dc hay ko lam dc luon de do mat thoi gian bac',6),(9088,'https://nhaxinh.com/\nNội thất Nhà Xinh | Nội thất cao cấp | Đồ gỗ cao cấp\nnhaxinh.com',0,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',4,NULL,NULL,10,'https://nhaxinh.com/\nNoi that Nha Xinh | Noi that cao cap | Do go cao cap\nnhaxinh.com',7),(9089,'bác xem tn làm cho em cái như này',0,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',5,NULL,NULL,10,'bac xem tn lam cho em cai nhu nay',8),(9090,'đầy đủ chức năng như thế',0,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',6,NULL,NULL,10,'day du chuc nang nhu the',9),(9091,'Dạ 7 triệu bác',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',7,NULL,NULL,10,'Da 7 trieu bac',10),(9092,'Không tính chi phí hosting vs tên miền',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',8,NULL,NULL,10,'Khong tinh chi phi hosting vs ten mien',11),(9093,'Bác cứ tham khảo giá',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',9,NULL,NULL,10,'Bac cu tham khao gia',12),(9094,'Bên em bảo hành 1 năm chỉnh sữa nhỏ',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',10,NULL,NULL,10,'Ben em bao hanh 1 nam chinh sua nho',13),(9095,'Chỉnh sửa lớn động tới dữ liệu mới tính thêm',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',11,NULL,NULL,10,'Chinh sua lon dong toi du lieu moi tinh them',14),(9096,'Bác xem 1 vòng giá đi ạ',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',12,NULL,NULL,10,'Bac xem 1 vong gia di a',15),(9097,'Đc thì quay lại em bàn sâu hơn',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',13,NULL,NULL,10,'Dc thi quay lai em ban sau hon',16),(9098,'À bên em có hóa đơn vs hợp đồng nếu bên bác cần nhé',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',14,NULL,NULL,10,'A ben em co hoa don vs hop dong neu ben bac can nhe',17),(9099,'Em cảm ơn ạ',1,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',15,NULL,NULL,10,'Em cam on a',18),(9100,'ok có gì mình liên hệ sau',0,'100035681477032','09 31  23 Thang 11  2021','2021-11-23 09:31:00',16,NULL,NULL,10,'ok co gi minh lien he sau',19);
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (49,'100067863644324','locthinh.nguyenle.1','Loc Thinh Nguyen Le',NULL,NULL,NULL,'https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.6435-1/p100x100/186517105_105746255030829_8616659320060290809_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=7206a8&_nc_ohc=I9yB2R5Bj_AAX_M1V23&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn2-3.fna&oh=7e851901a43be4fbf092d68b8135406d&oe=61CB7988','Loc Thinh Nguyen Le',10),(50,'100029006692191','tai1st','Nguyễn Quốc Tài',NULL,NULL,NULL,'https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-1/p100x100/257694307_707406930236190_8873535147860243922_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=7206a8&_nc_ohc=CHuB_525cc0AX9nyHF_&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn2-3.fna&oh=50661e45710e4808586e8d5c8f70d4dc&oe=61AD7804','Nguyen Quoc Tai',10),(51,'100035681477032','','Xuân Thịnh',NULL,NULL,NULL,'https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-1/p100x100/173766355_483503882848990_4635632145645171210_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=7206a8&_nc_ohc=yuDSuy7MSLUAX9ao3aB&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn2-5.fna&oh=7e0c8d87fc1683e52541453fa42612e0&oe=61CCEBF4','Xuan Thinh',10);
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
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (14,7,'2021-08-10 09:40:45','2021-08-10 09:42:52','5cbf6e6b-f984-11eb-9405-00ac0b3dea54'),(15,7,'2021-08-10 10:03:07','2021-08-10 10:03:19','7ccf28e5-f987-11eb-9405-00ac0b3dea54'),(16,7,'2021-08-10 10:09:42','2021-08-10 15:52:32','6824dbaf-f988-11eb-9405-00ac0b3dea54'),(17,7,'2021-08-10 16:20:51',NULL,'417f1cbf-f9bc-11eb-9405-00ac0b3dea54'),(18,7,'2021-08-12 14:17:15','2021-08-12 23:46:28','527d1f64-fb3d-11eb-9405-00ac0b3dea54'),(19,7,'2021-08-12 23:46:33','2021-08-13 09:26:42','d9bb64c6-fb8c-11eb-9405-00ac0b3dea54'),(20,7,'2021-08-13 09:26:46',NULL,'e829a639-fbdd-11eb-9405-00ac0b3dea54'),(21,7,'2021-08-14 09:35:59','2021-08-14 14:41:49','5c49dea3-fca8-11eb-9405-00ac0b3dea54'),(22,7,'2021-08-14 14:42:07',NULL,'2069240c-fcd3-11eb-9405-00ac0b3dea54'),(23,7,'2021-08-15 15:36:28',NULL,'e2a54371-fda3-11eb-9405-00ac0b3dea54'),(24,12,'2021-08-16 00:49:37','2021-08-16 02:54:11','28878088-fdf1-11eb-9405-00ac0b3dea54'),(25,12,'2021-08-16 02:54:19','2021-08-16 14:45:07','94475b57-fe02-11eb-9405-00ac0b3dea54'),(26,7,'2021-08-17 01:40:19','2021-08-17 11:17:43','684f0e84-fec1-11eb-9405-00ac0b3dea54'),(27,7,'2021-08-17 11:17:48','2021-08-18 10:35:27','14701228-ff12-11eb-9405-00ac0b3dea54'),(28,7,'2021-08-18 10:36:07',NULL,'6c7095d4-ffd5-11eb-9405-00ac0b3dea54'),(29,12,'2021-08-18 10:49:00',NULL,'395237ce-ffd7-11eb-9405-00ac0b3dea54'),(30,7,'2021-08-19 14:46:18',NULL,'8a19fdfc-00c1-11ec-9405-00ac0b3dea54'),(31,7,'2021-08-20 14:46:24',NULL,'b82df0a1-018a-11ec-9405-00ac0b3dea54'),(32,7,'2021-08-21 16:16:50',NULL,'84cdd626-0260-11ec-9405-00ac0b3dea54'),(33,7,'2021-08-22 16:17:53',NULL,'d470355e-0329-11ec-9405-00ac0b3dea54'),(34,7,'2021-08-25 09:53:01','2021-08-25 09:57:18','8fd672b3-054f-11ec-9405-00ac0b3dea54'),(35,7,'2021-08-25 09:57:39','2021-08-25 09:57:39','35709c00-0550-11ec-9405-00ac0b3dea54'),(36,7,'2021-08-25 10:01:19','2021-08-25 10:01:19','b8951877-0550-11ec-9405-00ac0b3dea54'),(37,7,'2021-08-25 10:03:07','2021-08-25 10:45:02','f8f4c9b8-0550-11ec-9405-00ac0b3dea54'),(38,7,'2021-08-30 15:22:36',NULL,'6ea5263e-096b-11ec-983e-00ac0b3dea54'),(39,7,'2021-08-30 15:24:05',NULL,'a403d684-096b-11ec-983e-00ac0b3dea54'),(40,7,'2021-08-30 15:26:09',NULL,'edb2937c-096b-11ec-983e-00ac0b3dea54'),(41,7,'2021-08-30 15:27:30','2021-08-30 15:31:48','1e3692f3-096c-11ec-983e-00ac0b3dea54'),(42,7,'2021-08-30 15:31:53','2021-08-30 15:43:00','ba8f1890-096c-11ec-983e-00ac0b3dea54'),(43,7,'2021-08-30 15:43:10','2021-08-30 15:45:16','4e4b611c-096e-11ec-983e-00ac0b3dea54'),(44,7,'2021-08-30 15:47:16','2021-08-30 15:48:12','e08e5342-096e-11ec-983e-00ac0b3dea54'),(45,7,'2021-08-30 15:48:21',NULL,'0762990d-096f-11ec-983e-00ac0b3dea54'),(46,7,'2021-08-31 10:31:08',NULL,'e16194fb-0a0b-11ec-983e-00ac0b3dea54'),(47,7,'2021-09-01 10:35:00',NULL,'9608d411-0ad5-11ec-983e-00ac0b3dea54'),(48,7,'2021-09-02 14:10:54',NULL,'e9cb5813-0bbc-11ec-983e-00ac0b3dea54'),(49,7,'2021-09-10 09:30:31',NULL,'11aa0da5-11df-11ec-983e-00ac0b3dea54'),(50,7,'2021-09-16 09:04:05',NULL,'5f848e65-1692-11ec-983e-00ac0b3dea54'),(51,7,'2021-09-17 09:05:12',NULL,'b14b62c3-175b-11ec-983e-00ac0b3dea54'),(52,7,'2021-09-18 15:17:44',NULL,'e69f0af7-1858-11ec-983e-00ac0b3dea54'),(53,7,'2021-09-22 09:24:36',NULL,'3d55bfb7-1b4c-11ec-983e-00ac0b3dea54'),(54,7,'2021-09-22 09:24:40',NULL,'3d5f2462-1b4c-11ec-983e-00ac0b3dea54'),(55,7,'2021-09-23 10:14:38',NULL,'62ca2e0d-1c1c-11ec-983e-00ac0b3dea54'),(56,7,'2021-09-24 10:24:27',NULL,'ec164b5a-1ce6-11ec-983e-00ac0b3dea54'),(57,7,'2021-09-26 09:20:45',NULL,'5b14ca06-1e70-11ec-a8c5-00ac0b3dea54'),(58,7,'2021-09-27 09:49:24',NULL,'8656d7b5-1f3d-11ec-a8c5-00ac0b3dea54'),(59,7,'2021-09-28 09:50:09',NULL,'cb6b6551-2006-11ec-a8c5-00ac0b3dea54'),(60,7,'2021-09-30 15:41:10',NULL,'294e7cbc-21ca-11ec-a8c5-00ac0b3dea54'),(61,7,'2021-10-02 10:28:08',NULL,'c33ba26d-2330-11ec-a8c5-00ac0b3dea54'),(62,7,'2021-10-03 13:57:04',NULL,'1e0657cb-2417-11ec-a8c5-00ac0b3dea54'),(63,7,'2021-10-04 14:35:52',NULL,'b41cbf09-24e5-11ec-bf6b-00ac0b3dea54'),(64,7,'2021-10-06 23:15:35',NULL,'a36ce46f-26c0-11ec-bf6b-00ac0b3dea54'),(65,7,'2021-10-08 23:14:45',NULL,'da3e2b6c-2852-11ec-bf6b-00ac0b3dea54'),(66,10,'2021-10-08 23:14:59',NULL,'e2ba5ad5-2852-11ec-bf6b-00ac0b3dea54'),(67,7,'2021-10-12 09:00:38',NULL,'32977ee0-2b00-11ec-915c-00ac0b3dea54'),(68,7,'2021-10-13 09:36:52','2021-10-13 09:51:58','6cdfc889-2bce-11ec-a3ba-00ac0b3dea54'),(69,10,'2021-10-13 14:22:09','2021-10-13 15:13:31','4744af3f-2bf6-11ec-a3ba-00ac0b3dea54'),(70,7,'2021-10-13 15:13:36',NULL,'774e568e-2bfd-11ec-a3ba-00ac0b3dea54'),(71,7,'2021-10-14 15:57:03',NULL,'b38303c6-2ccc-11ec-a3ba-00ac0b3dea54'),(72,7,'2021-10-14 15:57:40',NULL,'c99d8943-2ccc-11ec-a3ba-00ac0b3dea54'),(73,7,'2021-10-16 14:27:39',NULL,'8af56b36-2e52-11ec-a3ba-00ac0b3dea54'),(74,7,'2021-10-17 22:20:16',NULL,'bbb28d96-2f5d-11ec-a3ba-00ac0b3dea54'),(75,7,'2021-10-20 22:50:56','2021-10-21 00:23:48','8320bd57-31bd-11ec-a3ba-00ac0b3dea54'),(76,7,'2021-10-21 00:23:54','2021-10-21 00:24:00','7ff2a130-31ca-11ec-a3ba-00ac0b3dea54'),(77,7,'2021-10-21 15:52:08','2021-10-21 15:52:23','2c209508-324c-11ec-a3ba-00ac0b3dea54'),(78,7,'2021-10-23 15:59:23','2021-10-23 20:42:06','84829c2f-33df-11ec-a3ba-00ac0b3dea54'),(79,7,'2021-10-23 20:42:11',NULL,'066dd7f6-3407-11ec-a3ba-00ac0b3dea54'),(80,7,'2021-10-24 20:46:01',NULL,'b9a8ac35-34d0-11ec-a3ba-00ac0b3dea54'),(81,7,'2021-10-25 22:27:11',NULL,'05e3edf0-35a8-11ec-a3ba-00ac0b3dea54'),(82,7,'2021-11-01 10:14:05',NULL,'c54d0669-3ac1-11ec-85b2-00ac0b3dea54'),(83,7,'2021-11-02 10:14:28','2021-11-03 10:13:22','fd55cdf0-3b8a-11ec-85b2-00ac0b3dea54'),(84,10,'2021-11-03 10:13:27','2021-11-03 10:27:34','037c42e3-3c54-11ec-85b2-00ac0b3dea54'),(85,7,'2021-11-03 10:27:38','2021-11-03 10:37:54','fedd059e-3c55-11ec-85b2-00ac0b3dea54'),(86,10,'2021-11-03 10:38:00',NULL,'714f5bfa-3c57-11ec-85b2-00ac0b3dea54'),(87,7,'2021-11-07 08:54:32',NULL,'a6a18cd5-3f6d-11ec-85b2-00ac0b3dea54'),(88,7,'2021-11-08 15:08:30',NULL,'0f3dd7b8-406b-11ec-85b2-00ac0b3dea54'),(89,7,'2021-11-10 16:21:08',NULL,'89e9f542-4207-11ec-9b61-00ac0b3dea54'),(90,7,'2021-11-11 16:34:11',NULL,'8725ea30-42d2-11ec-9b61-00ac0b3dea54'),(91,7,'2021-11-19 22:20:29','2021-11-19 22:43:48','3b0b6ab5-494c-11ec-94f2-00ac0b3dea54'),(92,7,'2021-11-19 22:43:56',NULL,'8159c437-494f-11ec-94f2-00ac0b3dea54'),(93,7,'2021-11-29 23:30:49',NULL,'b66a67e1-5131-11ec-94f2-00ac0b3dea54'),(94,7,'2021-11-30 23:44:20','2021-12-01 01:46:02','c44bb51e-51fc-11ec-94f2-00ac0b3dea54'),(95,7,'2021-12-01 01:46:06',NULL,'c715ac72-520d-11ec-94f2-00ac0b3dea54');
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
	SELECT *,CG.id as CG_id from `chat_group` as CG 
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
/*!50003 DROP PROCEDURE IF EXISTS `delete_chat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_chat`(id int)
BEGIN
	set @cus_id = (select cus_id from chat_group where chat_group.id = id limit 1);
    set @user_id = (select acc_receive from chat_group where chat_group.id = id limit 1);
    
    delete from chat_group where chat_group.id = id;
    delete from chat_group_mess where chat_group_mess.cus_id = @cus_id and acc_receive = @user_id;
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
	select CG.*,C.*,CG.id as CG_id,concat(if(length(A.bill_code)=0,A.`user`,A.bill_code),'-',ifnull(GCC.next_stt,'0001')) as next_code from chat_group as CG
    left join `account` as A on CG.acc_receive = A.id
    left join `account` as A2 on CG.fb_acc_send = A2.fb_id
    left join customer as C on (C.id_fb = CG.cus_id or C.nick_fb = CG.cus_id)
    left join (select lpad(count(id)+1,4,0) as next_stt,B.created_by from bill as B group by B.created_by) as GCC on CG.acc_receive = GCC.created_by
    where (A.id = user_id or A2.id = user_id or user_id = 0) and (CG.cus_id = cus_id or C.nick_fb = cus_id);
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
select CG.*,C.*,CG.id,TB1.max_time as CG_id from chat_group as CG
    left join customer as C on C.id_fb = CG.cus_id
    left join (select CGM.cus_id,CGM.acc_receive,max(CGM.group_time)as `max_time` from chat_group_mess AS CGM group by CGM.cus_id,CGM.acc_receive) as TB1 on (TB1.cus_id = CG.cus_id and TB1.acc_receive = CG.acc_receive)
    where CG.acc_receive = user_id or user_id = CG.user_ids or @role_id = 0
    order by TB1.max_time desc;
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
	where CGM.cus_id = cus_id and (max_id = 0 or CGM.mess_index > max_id) order by mess_index desc,`order` desc;
else
	SELECT CGM.*,A.avatar_url as rec_ava,A.user as rec_user,C.ava_url from `chat_group_mess` as CGM
	left join chat_group AS CG on CG.cus_id = CGM.cus_id
	left join customer AS C on C.id_fb = CGM.cus_id
	left join `account` as A on CG.acc_receive = A.id
	where CGM.cus_id = cus_id and (max_id = 0 or CGM.mess_index > max_id) order by mess_index desc,`order` desc limit limit_p;
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
where CGM.cus_id = cus_id and CGM.acc_receive = acc_receive order by mess_index desc limit 1;

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
			and (length(jt1.mess_key) > 0 or  length(jt1.img_src) > 0 or length(jt1.`file`) > 0)
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

-- Dump completed on 2021-12-02  1:50:11
