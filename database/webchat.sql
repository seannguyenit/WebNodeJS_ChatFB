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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (10,'kt_1','123456',1,'2021-08-10 10:51:46',12,1,'nguyen le loc thinh','thinhspgood@gmail.com','0792062973','To 2 Vinh Diem Trung Vinh Hiep','1,2,3','0000-00-00 00:00:00',NULL,NULL,NULL),(14,'qtv_1','123456',5,'2021-08-10 15:02:57',10,1,'','','','','1',NULL,NULL,NULL,NULL),(12,'tq_1','123456',2,'2021-08-10 14:53:10',7,1,'','','','','1',NULL,NULL,NULL,NULL),(13,'tq_2','123456',2,'2021-08-10 14:53:19',7,1,'','','','','3',NULL,NULL,NULL,NULL),(7,'admin','123456',0,'2021-08-09 08:48:24',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'qtv_2','123456',5,'2021-08-10 15:03:21',10,1,'','','','','1',NULL,NULL,NULL,NULL),(11,'kt_2','123456',1,'2021-08-10 10:57:03',13,1,'','','','',NULL,NULL,NULL,NULL,NULL),(18,'ctv_t1','123456',3,'2021-08-11 10:01:32',14,1,'','','','',NULL,NULL,NULL,NULL,NULL),(16,'qtv_3','123456',5,'2021-08-10 15:03:37',11,1,'','','','',NULL,NULL,NULL,NULL,NULL),(17,'qtv_4','123456',5,'2021-08-10 15:03:48',11,1,'','','','','1',NULL,NULL,NULL,NULL),(19,'ctv_a1','123456',6,'2021-08-11 10:01:53',14,1,'','','','','1',NULL,NULL,NULL,NULL),(20,'ctv_t2','123456',3,'2021-08-11 10:02:24',15,1,'','','','',NULL,NULL,NULL,NULL,NULL),(21,'ctv_a2','123456',6,'2021-08-11 10:03:56',15,1,'','','','',NULL,NULL,NULL,NULL,NULL),(22,'ctv_t3','123456',3,'2021-08-11 10:05:56',16,1,'','','','',NULL,NULL,NULL,NULL,NULL),(23,'ctv_a3','123456',6,'2021-08-11 10:06:16',16,1,'','','','',NULL,NULL,NULL,NULL,NULL);
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
  `code` char(10) DEFAULT NULL,
  `accepted_note` longtext,
  `accountant_note` longtext,
  `reject_note` longtext,
  `money_receive` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (88,10,'2021-10-09 15:09:13',0,0,'100017865601279',_binary '3085d93e-28d8-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,10,'2021-10-09 15:16:48',0,0,'100017865601279',_binary '3fbbe284-28d9-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,10,'2021-10-09 15:27:13',0,0,'100004251633262',_binary 'b4900ef6-28da-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,10,'2021-10-09 15:32:46',0,0,'100002977222859',_binary '7aae63ac-28db-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,10,'2021-10-09 15:33:59',0,0,'100017865601279',_binary 'a682c509-28db-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,10,'2021-10-09 15:34:36',0,0,'100004251633262',_binary 'bc89f156-28db-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,10,'2021-10-11 15:08:19',0,0,'100017865601279',_binary '65727759-2a6a-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,10,'2021-10-11 15:17:06',0,0,'100017865601279',_binary '9f77606b-2a6b-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,10,'2021-10-14 15:56:30',0,0,'100001113783887',_binary '9f5bc332-2ccc-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,10,'2021-10-14 15:56:31',0,0,'100001113783887',_binary 'a06ebb83-2ccc-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` VALUES (125,11,20.000,_binary '3085d93e-28d8-11',70000.000,10000.000),(126,11,10.000,_binary '3fbbe284-28d9-11',70000.000,10.000),(127,11,15.000,_binary 'b4900ef6-28da-11',70000.000,10000.000),(128,12,30.000,_binary '7aae63ac-28db-11',50000.000,0.000),(129,13,15.000,_binary 'a682c509-28db-11',60000.000,5.000),(130,11,17.000,_binary 'bc89f156-28db-11',70000.000,10000.000),(131,13,10.000,_binary '65727759-2a6a-11',60000.000,20000.000),(132,12,12.000,_binary '9f77606b-2a6b-11',50000.000,9.000),(133,13,50.000,_binary '9f5bc332-2ccc-11',60000.000,0.000),(134,14,20.000,_binary '9f5bc332-2ccc-11',12000.000,10.000),(135,13,50.000,_binary 'a06ebb83-2ccc-11',60000.000,0.000),(136,14,20.000,_binary 'a06ebb83-2ccc-11',12000.000,10.000);
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group`
--

LOCK TABLES `chat_group` WRITE;
/*!40000 ALTER TABLE `chat_group` DISABLE KEYS */;
INSERT INTO `chat_group` VALUES (26,'','2,3','14','','100017865601279',10,NULL,NULL,''),(27,'','3','15','','100004251633262',10,NULL,NULL,''),(28,'','1','','','100002977222859',10,NULL,NULL,''),(29,'','3','19,17','','100001113783887',10,NULL,NULL,'');
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
  `group_time` char(100) DEFAULT NULL,
  `order` int DEFAULT '0',
  `img_src` longtext,
  `file` longtext,
  `acc_receive` int DEFAULT NULL,
  `mess_key` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=487 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group_mess`
--

LOCK TABLES `chat_group_mess` WRITE;
/*!40000 ALTER TABLE `chat_group_mess` DISABLE KEYS */;
INSERT INTO `chat_group_mess` VALUES (323,'Hey bạn',0,'100004251633262','17 45  25 Thang 9  2021','25-9-2021 17:45',0,NULL,NULL,10,'Hey ban'),(324,'Dạo này có khỏe hok',0,'100004251633262','17 45  25 Thang 9  2021','25-9-2021 17:45',1,NULL,NULL,10,'Dao nay co khoe hok'),(325,'Khỏe bạn ơi',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',0,NULL,NULL,10,'Khoe ban oi'),(326,'sao vậy bạn',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',1,NULL,NULL,10,'sao vay ban'),(327,'',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(328,'Hỏi thăm thui',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',0,NULL,NULL,10,'Hoi tham thui'),(329,'Tại t thấy ông ở gần nhà t mà sao dc tiêm rồi còn t chưa mũi nào',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',1,NULL,NULL,10,'Tai t thay ong o gan nha t ma sao dc tiem roi con t chua mui nao'),(330,'Bữa định hỏi rồi mà quên mất',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',2,NULL,NULL,10,'Bua dinh hoi roi ma quen mat'),(331,'tui bữa h ở bên nhà vợ mà',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',0,NULL,NULL,10,'tui bua h o ben nha vo ma'),(332,'vs lại tui đăng ký trên đt',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',1,NULL,NULL,10,'vs lai tui dang ky tren dt'),(333,'xong nó nhắn báo đi tiêm ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',2,NULL,NULL,10,'xong no nhan bao di tiem ak'),(334,'còn tiêm theo phường thì 1 là lên phường hỏi là đc phát giấy đăng ký',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',3,NULL,NULL,10,'con tiem theo phuong thi 1 la len phuong hoi la dc phat giay dang ky'),(335,'2 là lôi ông trưởng thôn hay tổ trưởng ra ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',4,NULL,NULL,10,'2 la loi ong truong thon hay to truong ra ak'),(336,'T cũng dk trên đt web các kiểu mà chả thấy ai gọi',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',0,NULL,NULL,10,'T cung dk tren dt web cac kieu ma cha thay ai goi'),(337,'Vừa đi test lại nè',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',1,NULL,NULL,10,'Vua di test lai ne'),(338,'bên y tế nó nhắn qua zalo tui ak',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',0,NULL,NULL,10,'ben y te no nhan qua zalo tui ak'),(339,'chắc lại hết vacxin',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',1,NULL,NULL,10,'chac lai het vacxin'),(340,'phải chờ thôi chứ hok biết đc ',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'phai cho thoi chu hok biet dc'),(341,'T nhờ dc chồng Hương rồi. Nó bảo khi nào có nó gọi',0,'100004251633262','22 28  27 Thang 9  2021','27-9-2021 22:28',0,NULL,NULL,10,'T nho dc chong Huong roi  No bao khi nao co no goi'),(342,'Mỡ Mỡ dc 2 tuổi rồi đúng hok ô',0,'100004251633262','22 49  27 Thang 9  2021','27-9-2021 22:49',0,NULL,NULL,10,'Mo Mo dc 2 tuoi roi dung hok o'),(343,'ohm',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',0,NULL,NULL,10,'ohm'),(344,'được 16 tháng rồi',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',1,NULL,NULL,10,'duoc 16 thang roi'),(345,'fgd',1,'100017865601279','T5 15 16','7-10-2021 15:16',0,NULL,NULL,10,'fgd'),(346,'Dạo này khỏe k Thịnh?',0,'100002977222859','16 30  29 Thang 8  2021','29-8-2021 16:30',0,NULL,NULL,10,'Dao nay khoe k Thinh '),(347,'tình hình dịch căng thẳng,',0,'100002977222859','16 30  29 Thang 8  2021','29-8-2021 16:30',1,NULL,NULL,10,'tinh hinh dich cang thang '),(348,'khu gần nhà có bị ảnh hưởng nhiều k m?',0,'100002977222859','16 30  29 Thang 8  2021','29-8-2021 16:30',2,NULL,NULL,10,'khu gan nha co bi anh huong nhieu k m '),(349,'sao vậy bạn',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',1,NULL,NULL,10,'sao vay ban'),(350,'',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(351,'Hỏi thăm thui',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',0,NULL,NULL,10,'Hoi tham thui'),(352,'Tại t thấy ông ở gần nhà t mà sao dc tiêm rồi còn t chưa mũi nào',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',1,NULL,NULL,10,'Tai t thay ong o gan nha t ma sao dc tiem roi con t chua mui nao'),(353,'Bữa định hỏi rồi mà quên mất',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',2,NULL,NULL,10,'Bua dinh hoi roi ma quen mat'),(354,'tui bữa h ở bên nhà vợ mà',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',0,NULL,NULL,10,'tui bua h o ben nha vo ma'),(355,'vs lại tui đăng ký trên đt',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',1,NULL,NULL,10,'vs lai tui dang ky tren dt'),(356,'xong nó nhắn báo đi tiêm ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',2,NULL,NULL,10,'xong no nhan bao di tiem ak'),(357,'còn tiêm theo phường thì 1 là lên phường hỏi là đc phát giấy đăng ký',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',3,NULL,NULL,10,'con tiem theo phuong thi 1 la len phuong hoi la dc phat giay dang ky'),(358,'2 là lôi ông trưởng thôn hay tổ trưởng ra ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',4,NULL,NULL,10,'2 la loi ong truong thon hay to truong ra ak'),(359,'T cũng dk trên đt web các kiểu mà chả thấy ai gọi',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',0,NULL,NULL,10,'T cung dk tren dt web cac kieu ma cha thay ai goi'),(360,'Vừa đi test lại nè',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',1,NULL,NULL,10,'Vua di test lai ne'),(361,'bên y tế nó nhắn qua zalo tui ak',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',0,NULL,NULL,10,'ben y te no nhan qua zalo tui ak'),(362,'chắc lại hết vacxin',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',1,NULL,NULL,10,'chac lai het vacxin'),(363,'phải chờ thôi chứ hok biết đc ',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'phai cho thoi chu hok biet dc'),(364,'T nhờ dc chồng Hương rồi. Nó bảo khi nào có nó gọi',0,'100004251633262','22 28  27 Thang 9  2021','27-9-2021 22:28',0,NULL,NULL,10,'T nho dc chong Huong roi  No bao khi nao co no goi'),(365,'Mỡ Mỡ dc 2 tuổi rồi đúng hok ô',0,'100004251633262','22 49  27 Thang 9  2021','27-9-2021 22:49',0,NULL,NULL,10,'Mo Mo dc 2 tuoi roi dung hok o'),(366,'ohm',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',1,NULL,NULL,10,'ohm'),(367,'được 16 tháng rồi',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',2,NULL,NULL,10,'duoc 16 thang roi'),(368,'sao vậy bạn',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',1,NULL,NULL,10,'sao vay ban'),(369,'',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(370,'Hỏi thăm thui',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',0,NULL,NULL,10,'Hoi tham thui'),(371,'Tại t thấy ông ở gần nhà t mà sao dc tiêm rồi còn t chưa mũi nào',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',1,NULL,NULL,10,'Tai t thay ong o gan nha t ma sao dc tiem roi con t chua mui nao'),(372,'Bữa định hỏi rồi mà quên mất',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',2,NULL,NULL,10,'Bua dinh hoi roi ma quen mat'),(373,'tui bữa h ở bên nhà vợ mà',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',0,NULL,NULL,10,'tui bua h o ben nha vo ma'),(374,'vs lại tui đăng ký trên đt',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',1,NULL,NULL,10,'vs lai tui dang ky tren dt'),(375,'xong nó nhắn báo đi tiêm ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',2,NULL,NULL,10,'xong no nhan bao di tiem ak'),(376,'còn tiêm theo phường thì 1 là lên phường hỏi là đc phát giấy đăng ký',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',3,NULL,NULL,10,'con tiem theo phuong thi 1 la len phuong hoi la dc phat giay dang ky'),(377,'2 là lôi ông trưởng thôn hay tổ trưởng ra ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',4,NULL,NULL,10,'2 la loi ong truong thon hay to truong ra ak'),(378,'T cũng dk trên đt web các kiểu mà chả thấy ai gọi',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',0,NULL,NULL,10,'T cung dk tren dt web cac kieu ma cha thay ai goi'),(379,'Vừa đi test lại nè',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',1,NULL,NULL,10,'Vua di test lai ne'),(380,'bên y tế nó nhắn qua zalo tui ak',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',0,NULL,NULL,10,'ben y te no nhan qua zalo tui ak'),(381,'chắc lại hết vacxin',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',1,NULL,NULL,10,'chac lai het vacxin'),(382,'phải chờ thôi chứ hok biết đc ',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'phai cho thoi chu hok biet dc'),(383,'T nhờ dc chồng Hương rồi. Nó bảo khi nào có nó gọi',0,'100004251633262','22 28  27 Thang 9  2021','27-9-2021 22:28',0,NULL,NULL,10,'T nho dc chong Huong roi  No bao khi nao co no goi'),(384,'Mỡ Mỡ dc 2 tuổi rồi đúng hok ô',0,'100004251633262','22 49  27 Thang 9  2021','27-9-2021 22:49',0,NULL,NULL,10,'Mo Mo dc 2 tuoi roi dung hok o'),(385,'ohm',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',2,NULL,NULL,10,'ohm'),(386,'được 16 tháng rồi',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',3,NULL,NULL,10,'duoc 16 thang roi'),(387,'tình hình dịch căng thẳng,',0,'100002977222859','16 30  29 Thang 8  2021','29-8-2021 16:30',3,NULL,NULL,10,'tinh hinh dich cang thang '),(388,'khu gần nhà có bị ảnh hưởng nhiều k m?',0,'100002977222859','16 30  29 Thang 8  2021','29-8-2021 16:30',4,NULL,NULL,10,'khu gan nha co bi anh huong nhieu k m '),(389,'sao vậy bạn',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',1,NULL,NULL,10,'sao vay ban'),(390,'',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(391,'Hỏi thăm thui',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',0,NULL,NULL,10,'Hoi tham thui'),(392,'Tại t thấy ông ở gần nhà t mà sao dc tiêm rồi còn t chưa mũi nào',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',1,NULL,NULL,10,'Tai t thay ong o gan nha t ma sao dc tiem roi con t chua mui nao'),(393,'Bữa định hỏi rồi mà quên mất',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',2,NULL,NULL,10,'Bua dinh hoi roi ma quen mat'),(394,'tui bữa h ở bên nhà vợ mà',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',0,NULL,NULL,10,'tui bua h o ben nha vo ma'),(395,'vs lại tui đăng ký trên đt',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',1,NULL,NULL,10,'vs lai tui dang ky tren dt'),(396,'xong nó nhắn báo đi tiêm ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',2,NULL,NULL,10,'xong no nhan bao di tiem ak'),(397,'còn tiêm theo phường thì 1 là lên phường hỏi là đc phát giấy đăng ký',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',3,NULL,NULL,10,'con tiem theo phuong thi 1 la len phuong hoi la dc phat giay dang ky'),(398,'2 là lôi ông trưởng thôn hay tổ trưởng ra ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',4,NULL,NULL,10,'2 la loi ong truong thon hay to truong ra ak'),(399,'T cũng dk trên đt web các kiểu mà chả thấy ai gọi',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',0,NULL,NULL,10,'T cung dk tren dt web cac kieu ma cha thay ai goi'),(400,'Vừa đi test lại nè',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',1,NULL,NULL,10,'Vua di test lai ne'),(401,'bên y tế nó nhắn qua zalo tui ak',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',0,NULL,NULL,10,'ben y te no nhan qua zalo tui ak'),(402,'chắc lại hết vacxin',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',1,NULL,NULL,10,'chac lai het vacxin'),(403,'phải chờ thôi chứ hok biết đc ',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'phai cho thoi chu hok biet dc'),(404,'T nhờ dc chồng Hương rồi. Nó bảo khi nào có nó gọi',0,'100004251633262','22 28  27 Thang 9  2021','27-9-2021 22:28',0,NULL,NULL,10,'T nho dc chong Huong roi  No bao khi nao co no goi'),(405,'Mỡ Mỡ dc 2 tuổi rồi đúng hok ô',0,'100004251633262','22 49  27 Thang 9  2021','27-9-2021 22:49',0,NULL,NULL,10,'Mo Mo dc 2 tuoi roi dung hok o'),(406,'ohm',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',3,NULL,NULL,10,'ohm'),(407,'được 16 tháng rồi',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',4,NULL,NULL,10,'duoc 16 thang roi'),(408,'sao vậy bạn',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',1,NULL,NULL,10,'sao vay ban'),(409,'',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(410,'Hỏi thăm thui',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',0,NULL,NULL,10,'Hoi tham thui'),(411,'Tại t thấy ông ở gần nhà t mà sao dc tiêm rồi còn t chưa mũi nào',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',1,NULL,NULL,10,'Tai t thay ong o gan nha t ma sao dc tiem roi con t chua mui nao'),(412,'Bữa định hỏi rồi mà quên mất',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',2,NULL,NULL,10,'Bua dinh hoi roi ma quen mat'),(413,'tui bữa h ở bên nhà vợ mà',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',0,NULL,NULL,10,'tui bua h o ben nha vo ma'),(414,'vs lại tui đăng ký trên đt',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',1,NULL,NULL,10,'vs lai tui dang ky tren dt'),(415,'xong nó nhắn báo đi tiêm ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',2,NULL,NULL,10,'xong no nhan bao di tiem ak'),(416,'còn tiêm theo phường thì 1 là lên phường hỏi là đc phát giấy đăng ký',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',3,NULL,NULL,10,'con tiem theo phuong thi 1 la len phuong hoi la dc phat giay dang ky'),(417,'2 là lôi ông trưởng thôn hay tổ trưởng ra ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',4,NULL,NULL,10,'2 la loi ong truong thon hay to truong ra ak'),(418,'T cũng dk trên đt web các kiểu mà chả thấy ai gọi',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',0,NULL,NULL,10,'T cung dk tren dt web cac kieu ma cha thay ai goi'),(419,'Vừa đi test lại nè',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',1,NULL,NULL,10,'Vua di test lai ne'),(420,'bên y tế nó nhắn qua zalo tui ak',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',0,NULL,NULL,10,'ben y te no nhan qua zalo tui ak'),(421,'chắc lại hết vacxin',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',1,NULL,NULL,10,'chac lai het vacxin'),(422,'phải chờ thôi chứ hok biết đc ',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'phai cho thoi chu hok biet dc'),(423,'T nhờ dc chồng Hương rồi. Nó bảo khi nào có nó gọi',0,'100004251633262','22 28  27 Thang 9  2021','27-9-2021 22:28',0,NULL,NULL,10,'T nho dc chong Huong roi  No bao khi nao co no goi'),(424,'Mỡ Mỡ dc 2 tuổi rồi đúng hok ô',0,'100004251633262','22 49  27 Thang 9  2021','27-9-2021 22:49',0,NULL,NULL,10,'Mo Mo dc 2 tuoi roi dung hok o'),(425,'ohm',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',4,NULL,NULL,10,'ohm'),(426,'được 16 tháng rồi',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',5,NULL,NULL,10,'duoc 16 thang roi'),(427,'sao vậy bạn',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',1,NULL,NULL,10,'sao vay ban'),(428,'',1,'100004251633262','12 42  26 Thang 9  2021','26-9-2021 12:42',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(429,'Hỏi thăm thui',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',0,NULL,NULL,10,'Hoi tham thui'),(430,'Tại t thấy ông ở gần nhà t mà sao dc tiêm rồi còn t chưa mũi nào',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',1,NULL,NULL,10,'Tai t thay ong o gan nha t ma sao dc tiem roi con t chua mui nao'),(431,'Bữa định hỏi rồi mà quên mất',0,'100004251633262','15 17  26 Thang 9  2021','26-9-2021 15:17',2,NULL,NULL,10,'Bua dinh hoi roi ma quen mat'),(432,'tui bữa h ở bên nhà vợ mà',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',0,NULL,NULL,10,'tui bua h o ben nha vo ma'),(433,'vs lại tui đăng ký trên đt',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',1,NULL,NULL,10,'vs lai tui dang ky tren dt'),(434,'xong nó nhắn báo đi tiêm ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',2,NULL,NULL,10,'xong no nhan bao di tiem ak'),(435,'còn tiêm theo phường thì 1 là lên phường hỏi là đc phát giấy đăng ký',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',3,NULL,NULL,10,'con tiem theo phuong thi 1 la len phuong hoi la dc phat giay dang ky'),(436,'2 là lôi ông trưởng thôn hay tổ trưởng ra ak',1,'100004251633262','14 43  27 Thang 9  2021','27-9-2021 14:43',4,NULL,NULL,10,'2 la loi ong truong thon hay to truong ra ak'),(437,'T cũng dk trên đt web các kiểu mà chả thấy ai gọi',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',0,NULL,NULL,10,'T cung dk tren dt web cac kieu ma cha thay ai goi'),(438,'Vừa đi test lại nè',0,'100004251633262','15 34  27 Thang 9  2021','27-9-2021 15:34',1,NULL,NULL,10,'Vua di test lai ne'),(439,'bên y tế nó nhắn qua zalo tui ak',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',0,NULL,NULL,10,'ben y te no nhan qua zalo tui ak'),(440,'chắc lại hết vacxin',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',1,NULL,NULL,10,'chac lai het vacxin'),(441,'phải chờ thôi chứ hok biết đc ',1,'100004251633262','20 56  27 Thang 9  2021','27-9-2021 20:56',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'phai cho thoi chu hok biet dc'),(442,'T nhờ dc chồng Hương rồi. Nó bảo khi nào có nó gọi',0,'100004251633262','22 28  27 Thang 9  2021','27-9-2021 22:28',0,NULL,NULL,10,'T nho dc chong Huong roi  No bao khi nao co no goi'),(443,'Mỡ Mỡ dc 2 tuổi rồi đúng hok ô',0,'100004251633262','22 49  27 Thang 9  2021','27-9-2021 22:49',0,NULL,NULL,10,'Mo Mo dc 2 tuoi roi dung hok o'),(444,'ohm',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',5,NULL,NULL,10,'ohm'),(445,'được 16 tháng rồi',1,'100004251633262','00 31  28 Thang 9  2021','28-9-2021 00:31',6,NULL,NULL,10,'duoc 16 thang roi'),(446,'tao test tool bị khóa nhìu fb rồi =)))',1,'100001113783887','16 10  14 Thang 5  2021','14-5-2021 16:10',0,NULL,NULL,10,'tao test tool bi khoa nhiu fb roi     '),(447,'=.=',0,'100001113783887','16 10  14 Thang 5  2021','14-5-2021 16:10',1,NULL,NULL,10,'   '),(448,'Trc h xài 1 cái thôi',0,'100001113783887','16 10  14 Thang 5  2021','14-5-2021 16:10',2,NULL,NULL,10,'Trc h xai 1 cai thoi'),(449,'Sao ko gửi hoá đơn m',0,'100001113783887','18 20  25 Thang 5  2021','25-5-2021 18:20',0,NULL,NULL,10,'Sao ko gui hoa don m'),(450,'à ờ mai tao gửi',1,'100001113783887','22 14  25 Thang 5  2021','25-5-2021 22:14',0,NULL,NULL,10,'a o mai tao gui'),(451,'bữa h lu bu',1,'100001113783887','22 14  25 Thang 5  2021','25-5-2021 22:14',1,NULL,NULL,10,'bua h lu bu'),(452,'',1,'100001113783887','22 14  25 Thang 5  2021','25-5-2021 22:14',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(453,'Uhm m',0,'100001113783887','06 41  26 Thang 5  2021','26-5-2021 06:41',0,NULL,NULL,10,'Uhm m'),(454,'',1,'100001113783887','09 40  26 Thang 5  2021','26-5-2021 09:40',0,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/186486203_919405238635528_4288107798662005817_n.png?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=ARygD1ln3EoAX9V64gJ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=98d724b6e478241e7397463d742fa47c&oe=618DCDB1',NULL,10,''),(455,'xem thông tin ổn hok mày',1,'100001113783887','09 40  26 Thang 5  2021','26-5-2021 09:40',1,NULL,NULL,10,'xem thong tin on hok may'),(456,'ok thì tao xuất',1,'100001113783887','09 40  26 Thang 5  2021','26-5-2021 09:40',2,NULL,NULL,10,'ok thi tao xuat'),(457,'',0,'100001113783887','18 05  26 Thang 5  2021','26-5-2021 18:05',0,'https://scontent.xx.fbcdn.net/v/t1.15752-9/180593499_800655567537680_6191643315824892239_n.png?_nc_cat=107&ccb=1-5&_nc_sid=aee45a&_nc_ohc=2xBpznpTJJ8AX-C3XXZ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=249a4d5c706ca0c91591f99ae7ddef13&oe=618D689B',NULL,10,''),(458,'thanh toán chuyển khoản mà',0,'100001113783887','18 05  26 Thang 5  2021','26-5-2021 18:05',1,NULL,NULL,10,'thanh toan chuyen khoan ma'),(459,'CK kia may',1,'100001113783887','02 53  27 Thang 5  2021','27-5-2021 02:53',0,NULL,NULL,10,'CK kia may'),(460,'ghi TM mà',0,'100001113783887','08 21  27 Thang 5  2021','27-5-2021 08:21',0,NULL,NULL,10,'ghi TM ma'),(461,'à ok',1,'100001113783887','08 43  27 Thang 5  2021','27-5-2021 08:43',0,NULL,NULL,10,'a ok'),(462,'4201816525-AT_18E0000002.pdf',1,'100001113783887','08 59  27 Thang 5  2021','27-5-2021 08:59',0,NULL,'https://cdn.fbsbx.com/v/t59.2708-21/188863110_307734017742816_3040474311846370373_n.pdf/4201816525-AT_18E0000002.pdf?_nc_cat=101&ccb=1-5&_nc_sid=0cab14&_nc_ohc=mPkOOUKkAjAAX97rrRj&_nc_ht=cdn.fbsbx.com&oh=ac37b5886d640de775a8e18503788969&oe=6169510A&dl=1',10,'4201816525 AT 18E0000002 pdf'),(463,'Tao có bạn cần làm web',0,'100001113783887','11 58  18 Thang 6  2021','18-6-2021 11:58',0,NULL,NULL,10,'Tao co ban can lam web'),(464,'tao cho face mày liên lạc nhé',0,'100001113783887','11 58  18 Thang 6  2021','18-6-2021 11:58',1,NULL,NULL,10,'tao cho face may lien lac nhe'),(465,'alo',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',0,NULL,NULL,10,'alo'),(466,'uhm đưa tao nha',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',1,NULL,NULL,10,'uhm dua tao nha'),(467,'hjhj',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',2,NULL,NULL,10,'hjhj'),(468,'ngon cơm',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',3,NULL,NULL,10,'ngon com'),(469,'https://www.facebook.com/1992datnguyen',0,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',4,NULL,NULL,10,'https   www facebook com 1992datnguyen'),(470,'nói bạn Tiến',0,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',5,NULL,NULL,10,'noi ban Tien'),(471,'đang đói ',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',6,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'dang doi'),(472,'ok nè',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',7,NULL,NULL,10,'ok ne'),(473,'bạn thân hok',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',8,NULL,NULL,10,'ban than hok'),(474,'Cũng thân',0,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',9,NULL,NULL,10,'Cung than'),(475,'để biết hút máu',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',10,NULL,NULL,10,'de biet hut mau'),(476,'=.=',0,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',11,NULL,NULL,10,'   '),(477,'',1,'100001113783887','14 43  18 Thang 6  2021','18-6-2021 14:43',12,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,''),(478,'Ráng làm ổn nha m',0,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',0,NULL,NULL,10,'Rang lam on nha m'),(479,'Ko nghe mắng vốn ấy',0,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',1,NULL,NULL,10,'Ko nghe mang von ay'),(480,'chưa thấấy trả lời trả vốn ',1,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'chua thaay tra loi tra von'),(481,'yên tâm',1,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',3,NULL,NULL,10,'yen tam'),(482,'hiện tại tao dâng hiến 100% tâm hồn và thể xác',1,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',4,NULL,NULL,10,'hien tai tao dang hien 100  tam hon va the xac'),(483,'',1,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',5,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(484,'=))',0,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',6,NULL,NULL,10,'   '),(485,'Ráng làm ăn',0,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',7,NULL,NULL,10,'Rang lam an'),(486,'sao ko ráng đc mày \n con đói khô mồm ',1,'100001113783887','16 01  18 Thang 6  2021','18-6-2021 16:01',8,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png,https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'sao ko rang dc may \n con doi kho mom');
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10,'100017865601279','phamtien.pham.73550','Pham tien','0333339922','asdasd','51515','https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.6435-1/p100x100/58462425_371676803437837_7775662591438749696_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_ohc=USJhNALziL4AX9CrWEF&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn2-1.fna&oh=a7c592aad94b71dca15379979252ff51&oe=6189A0C6','Pham tien undefined'),(11,'100004251633262','','nguyen phuong anh','0333339933','asdasd','wqeqweqweqw','https://scontent.fdad7-1.fna.fbcdn.net/v/t1.6435-1/p100x100/131511220_1825765714241799_4962161834166095496_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=1F2e9DqjYbwAX8-dCH5&_nc_ad=z-m&_nc_cid=1572&_nc_ht=scontent.fdad7-1.fna&oh=054f86d999a3cdcfba3e7d9518e2fe38&oe=6188311A',NULL),(12,'100002977222859','lee.an.125','le phan an','33333','125 nguyen huu huan','nha trang','https://scontent.fdad7-1.fna.fbcdn.net/v/t1.6435-1/p100x100/142440658_3464979203611286_3766692619196768439_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_ohc=2CB2hwzTvnoAX9WbYOQ&_nc_ad=z-m&_nc_cid=1572&_nc_ht=scontent.fdad7-1.fna&oh=8bf57e809c30b1de777045ad51d4942d&oe=6188CF80',NULL),(13,'100001113783887','tien.phamhuu','Pham tien','0923343434','434534','5345345345','https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.6435-1/p100x100/171262285_3871680639545691_1518116213495690387_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=wUQHx3Vy9Y8AX_hddO9&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn2-2.fna&oh=98572f358e0e29bef3f7fe1a8dd93ca5&oe=618D1C50','Pham tien');
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
  `bill_id` int NOT NULL,
  `is_active` smallint DEFAULT '1',
  `del_by` int DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_count`
--

LOCK TABLES `money_count` WRITE;
/*!40000 ALTER TABLE `money_count` DISABLE KEYS */;
INSERT INTO `money_count` VALUES (1,10000.000,7,5,1,NULL,'2021-09-30 23:37:09'),(2,15000.000,7,5,1,NULL,'2021-10-01 00:07:45'),(3,300000.000,7,7,1,NULL,'2021-10-06 23:18:46'),(4,1000.000,7,5,1,NULL,'2021-10-07 15:26:16'),(5,1000000.000,7,5,1,NULL,'2021-10-07 15:26:35'),(6,100.000,7,5,1,NULL,'2021-10-07 15:27:02'),(7,10000.000,7,90,1,NULL,'2021-10-14 16:13:11'),(8,1000.000,7,90,1,NULL,'2021-10-14 16:13:36');
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
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roletype_model`
--

LOCK TABLES `roletype_model` WRITE;
/*!40000 ALTER TABLE `roletype_model` DISABLE KEYS */;
INSERT INTO `roletype_model` VALUES (53,6,'tag_name',0,''),(54,6,'delete',0,'tag_name'),(55,6,'edit',0,'tag_name'),(56,6,'new',0,'tag_name'),(57,6,'product',0,''),(58,6,'delete',0,'product'),(59,6,'edit',0,'product'),(60,6,'new',0,'product'),(61,6,'report',0,''),(62,6,'report_product',0,'report'),(63,6,'report_bill',0,'report'),(64,6,'report_general',0,'report'),(65,6,'user',0,''),(66,6,'delete',0,'user'),(67,6,'edit',0,'user'),(68,6,'new',0,'user'),(69,6,'group',0,''),(70,6,'delete',0,'group'),(71,6,'edit',0,'group'),(72,6,'new',0,'group'),(73,6,'role_type',0,''),(74,6,'delete',0,'role_type'),(75,6,'edit',0,'role_type'),(76,6,'new',0,'role_type'),(77,6,'chat',1,''),(78,6,'notice',1,'');
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
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (14,7,'2021-08-10 09:40:45','2021-08-10 09:42:52','5cbf6e6b-f984-11eb-9405-00ac0b3dea54'),(15,7,'2021-08-10 10:03:07','2021-08-10 10:03:19','7ccf28e5-f987-11eb-9405-00ac0b3dea54'),(16,7,'2021-08-10 10:09:42','2021-08-10 15:52:32','6824dbaf-f988-11eb-9405-00ac0b3dea54'),(17,7,'2021-08-10 16:20:51',NULL,'417f1cbf-f9bc-11eb-9405-00ac0b3dea54'),(18,7,'2021-08-12 14:17:15','2021-08-12 23:46:28','527d1f64-fb3d-11eb-9405-00ac0b3dea54'),(19,7,'2021-08-12 23:46:33','2021-08-13 09:26:42','d9bb64c6-fb8c-11eb-9405-00ac0b3dea54'),(20,7,'2021-08-13 09:26:46',NULL,'e829a639-fbdd-11eb-9405-00ac0b3dea54'),(21,7,'2021-08-14 09:35:59','2021-08-14 14:41:49','5c49dea3-fca8-11eb-9405-00ac0b3dea54'),(22,7,'2021-08-14 14:42:07',NULL,'2069240c-fcd3-11eb-9405-00ac0b3dea54'),(23,7,'2021-08-15 15:36:28',NULL,'e2a54371-fda3-11eb-9405-00ac0b3dea54'),(24,12,'2021-08-16 00:49:37','2021-08-16 02:54:11','28878088-fdf1-11eb-9405-00ac0b3dea54'),(25,12,'2021-08-16 02:54:19','2021-08-16 14:45:07','94475b57-fe02-11eb-9405-00ac0b3dea54'),(26,7,'2021-08-17 01:40:19','2021-08-17 11:17:43','684f0e84-fec1-11eb-9405-00ac0b3dea54'),(27,7,'2021-08-17 11:17:48','2021-08-18 10:35:27','14701228-ff12-11eb-9405-00ac0b3dea54'),(28,7,'2021-08-18 10:36:07',NULL,'6c7095d4-ffd5-11eb-9405-00ac0b3dea54'),(29,12,'2021-08-18 10:49:00',NULL,'395237ce-ffd7-11eb-9405-00ac0b3dea54'),(30,7,'2021-08-19 14:46:18',NULL,'8a19fdfc-00c1-11ec-9405-00ac0b3dea54'),(31,7,'2021-08-20 14:46:24',NULL,'b82df0a1-018a-11ec-9405-00ac0b3dea54'),(32,7,'2021-08-21 16:16:50',NULL,'84cdd626-0260-11ec-9405-00ac0b3dea54'),(33,7,'2021-08-22 16:17:53',NULL,'d470355e-0329-11ec-9405-00ac0b3dea54'),(34,7,'2021-08-25 09:53:01','2021-08-25 09:57:18','8fd672b3-054f-11ec-9405-00ac0b3dea54'),(35,7,'2021-08-25 09:57:39','2021-08-25 09:57:39','35709c00-0550-11ec-9405-00ac0b3dea54'),(36,7,'2021-08-25 10:01:19','2021-08-25 10:01:19','b8951877-0550-11ec-9405-00ac0b3dea54'),(37,7,'2021-08-25 10:03:07','2021-08-25 10:45:02','f8f4c9b8-0550-11ec-9405-00ac0b3dea54'),(38,7,'2021-08-30 15:22:36',NULL,'6ea5263e-096b-11ec-983e-00ac0b3dea54'),(39,7,'2021-08-30 15:24:05',NULL,'a403d684-096b-11ec-983e-00ac0b3dea54'),(40,7,'2021-08-30 15:26:09',NULL,'edb2937c-096b-11ec-983e-00ac0b3dea54'),(41,7,'2021-08-30 15:27:30','2021-08-30 15:31:48','1e3692f3-096c-11ec-983e-00ac0b3dea54'),(42,7,'2021-08-30 15:31:53','2021-08-30 15:43:00','ba8f1890-096c-11ec-983e-00ac0b3dea54'),(43,7,'2021-08-30 15:43:10','2021-08-30 15:45:16','4e4b611c-096e-11ec-983e-00ac0b3dea54'),(44,7,'2021-08-30 15:47:16','2021-08-30 15:48:12','e08e5342-096e-11ec-983e-00ac0b3dea54'),(45,7,'2021-08-30 15:48:21',NULL,'0762990d-096f-11ec-983e-00ac0b3dea54'),(46,7,'2021-08-31 10:31:08',NULL,'e16194fb-0a0b-11ec-983e-00ac0b3dea54'),(47,7,'2021-09-01 10:35:00',NULL,'9608d411-0ad5-11ec-983e-00ac0b3dea54'),(48,7,'2021-09-02 14:10:54',NULL,'e9cb5813-0bbc-11ec-983e-00ac0b3dea54'),(49,7,'2021-09-10 09:30:31',NULL,'11aa0da5-11df-11ec-983e-00ac0b3dea54'),(50,7,'2021-09-16 09:04:05',NULL,'5f848e65-1692-11ec-983e-00ac0b3dea54'),(51,7,'2021-09-17 09:05:12',NULL,'b14b62c3-175b-11ec-983e-00ac0b3dea54'),(52,7,'2021-09-18 15:17:44',NULL,'e69f0af7-1858-11ec-983e-00ac0b3dea54'),(53,7,'2021-09-22 09:24:36',NULL,'3d55bfb7-1b4c-11ec-983e-00ac0b3dea54'),(54,7,'2021-09-22 09:24:40',NULL,'3d5f2462-1b4c-11ec-983e-00ac0b3dea54'),(55,7,'2021-09-23 10:14:38',NULL,'62ca2e0d-1c1c-11ec-983e-00ac0b3dea54'),(56,7,'2021-09-24 10:24:27',NULL,'ec164b5a-1ce6-11ec-983e-00ac0b3dea54'),(57,7,'2021-09-26 09:20:45',NULL,'5b14ca06-1e70-11ec-a8c5-00ac0b3dea54'),(58,7,'2021-09-27 09:49:24',NULL,'8656d7b5-1f3d-11ec-a8c5-00ac0b3dea54'),(59,7,'2021-09-28 09:50:09',NULL,'cb6b6551-2006-11ec-a8c5-00ac0b3dea54'),(60,7,'2021-09-30 15:41:10',NULL,'294e7cbc-21ca-11ec-a8c5-00ac0b3dea54'),(61,7,'2021-10-02 10:28:08',NULL,'c33ba26d-2330-11ec-a8c5-00ac0b3dea54'),(62,7,'2021-10-03 13:57:04',NULL,'1e0657cb-2417-11ec-a8c5-00ac0b3dea54'),(63,7,'2021-10-04 14:35:52',NULL,'b41cbf09-24e5-11ec-bf6b-00ac0b3dea54'),(64,7,'2021-10-06 23:15:35',NULL,'a36ce46f-26c0-11ec-bf6b-00ac0b3dea54'),(65,7,'2021-10-08 23:14:45',NULL,'da3e2b6c-2852-11ec-bf6b-00ac0b3dea54'),(66,10,'2021-10-08 23:14:59',NULL,'e2ba5ad5-2852-11ec-bf6b-00ac0b3dea54'),(67,7,'2021-10-12 09:00:38',NULL,'32977ee0-2b00-11ec-915c-00ac0b3dea54'),(68,7,'2021-10-13 09:36:52','2021-10-13 09:51:58','6cdfc889-2bce-11ec-a3ba-00ac0b3dea54'),(69,10,'2021-10-13 14:22:09','2021-10-13 15:13:31','4744af3f-2bf6-11ec-a3ba-00ac0b3dea54'),(70,7,'2021-10-13 15:13:36',NULL,'774e568e-2bfd-11ec-a3ba-00ac0b3dea54'),(71,7,'2021-10-14 15:57:03',NULL,'b38303c6-2ccc-11ec-a3ba-00ac0b3dea54'),(72,7,'2021-10-14 15:57:40',NULL,'c99d8943-2ccc-11ec-a3ba-00ac0b3dea54');
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
		set @rs = 'KẾ TOÁN THU TIỀN';
	end if;
	if (stt = 2) then 
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
CREATE DEFINER=`root`@`localhost` FUNCTION `get_receive_money`(bill_id int) RETURNS decimal(10,3)
BEGIN
set @rs = (select sum(money_count.money) from  money_count where money_count.bill_id = bill_id and money_count.is_active = 1);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `bill_checkout`(cus_id varchar(1000),user_id int,js_data text)
BEGIN
	set @new_bill_id = (select UUID());
    INSERT INTO `simpleweb`.`bill`
(`created_by`,
`group_id`,
`stt`,
`customer`,
`u_id`)
VALUES
(user_id,
0,
0,
cus_id,
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
	select CG.*,C.* from chat_group as CG
    left join `account` as A on CG.acc_receive = A.id
    left join `account` as A2 on CG.fb_acc_send = A2.fb_id
    left join customer as C on C.id_fb = CG.cus_id
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
    left join `account` as A on CG.acc_receive = A.id
    left join `account` as A2 on CG.fb_acc_send = A2.fb_id
    left join customer as C on C.id_fb = CG.cus_id
    where A.id = user_id or A2.id = user_id or check_tag(user_id,CG.user_ids)!= 0 or @role_id = 0;
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
	left join `account` as A3 on A2.id = B.accountant
	left join `account` as A4 on A2.id = B.reject
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_chat`(cus_id char(100),max_id int)
BEGIN
SELECT CGM.*,A.avatar_url as rec_ava,A.user as rec_user,C.ava_url from `chat_group_mess` as CGM
left join chat_group AS CG on CG.cus_id = CGM.cus_id
left join customer AS C on C.id_fb = CGM.cus_id
left join `account` as A on CG.acc_receive = A.id
 where CGM.cus_id = cus_id and (max_id = 0 or CGM.id > max_id);
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

INSERT INTO `simpleweb`.`customer`
(`id_fb`,
`nick_fb`,
`ava_url`)
VALUES
(cus_id,cus_name,ava_url);
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
    where MR.par_id = 0 and (RTM.id != null or @role_id = 0) order by MR.`order`;
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
	select *,A.`user` as rec_user from money_count AS MC 
    left join `account` as A on A.id = MC.user_id
    where MC.bill_id = bill_id;
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
`acc_receive`
)
	select 
    jt1.mess,
	jt1.mess_key,
    jt1.`order`,
    jt1.sender,
    cus_id,
    jt1.group_name,
    jt1.group_time,
    img_src,
    `file`,
    acc_receive
    from json_table(js_str,"$[*]" columns (
    mess longtext path "$.mes",
    mess_key longtext path "$.mess_key",
    `order` int path "$.order",
    sender int path "$.sender",
    group_time char(100) path "$.group_time",
    group_name char(100) path "$.group_name",
    img_src longtext path "$.img_src",
    `file` longtext path "$.file" )
    ) AS  jt1;
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
G.name as group_name,
C.city,
get_receive_money(TB.id) as `money_receive`,
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
        B.reject_note
from bill_details AS BD 
left join bill AS B on B.u_id = BD.bill_uid
left join `account` as A2 on A2.id = B.accepted
left join `account` as A3 on A2.id = B.accountant
left join `account` as A4 on A2.id = B.reject
where (date(B.time) >= @f and date(B.time) <= @t) and (stt = 3 or B.stt = stt)
group by B.u_id,B.created_by,B.stt,B.customer,A2.user,A3.user,A4.user) AS TB 
left join `account` AS A on A.id = TB.created_by
left join `group` as G on A.group_id = G.id
left join `chat_group` AS CG on CG.cus_id = TB.customer
left join `account` as AR on AR.id = CG.acc_receive
left join `customer` as C on C.id_fb = TB.customer
left join `account` as ACTV on ACTV.fb_id = CG.fb_acc_send;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_group`(key_ nvarchar(1000),tag_id int)
BEGIN
set @l = concat('%',if(key_='0','',key_),'%');

select TB.*,CG1.cus_id,CGM1.mess as latest_mess,CG1.tags,C.real_name,C.ava_url,C.nick_fb from (SELECT CG.cus_id,CG.acc_receive,max(CGM.id) as `max_id` FROM simpleweb.chat_group_mess AS CGM left join chat_group AS CG on (CGM.cus_id = CG.cus_id and CGM.acc_receive = CG.acc_receive)
where trim(lower(CGM.mess_key)) like @l
group by CGM.cus_id, CGM.acc_receive) as TB
left join chat_group as CG1 on (TB.cus_id = CG1.cus_id and TB.acc_receive = CG1.acc_receive)
left join chat_group_mess as CGM1 on TB.max_id = CGM1.id
left join customer as C on C.id_fb = TB.cus_id
where (tag_id = 0 or (tag_id = -1 and length(CG1.tags) = 0) or check_tag(tag_id,CG1.tags) > 0)
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

-- Dump completed on 2021-10-16  0:10:55
