CREATE DATABASE  IF NOT EXISTS `simpleweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `simpleweb`;
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
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (100,10,'2021-10-17 23:22:11',0,2,'100017865601279',_binary '617c4a25-2f66-11',7,7,NULL,'nt1-0001',NULL,'kt',NULL,NULL,'a4z');
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
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` VALUES (138,11,20.000,_binary '617c4a25-2f66-11',70000.000,10000.000),(139,12,15.000,_binary '617c4a25-2f66-11',50000.000,9.000);
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group`
--

LOCK TABLES `chat_group` WRITE;
/*!40000 ALTER TABLE `chat_group` DISABLE KEYS */;
INSERT INTO `chat_group` VALUES (30,NULL,NULL,NULL,NULL,'100000348012331',10,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=796 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group_mess`
--

LOCK TABLES `chat_group_mess` WRITE;
/*!40000 ALTER TABLE `chat_group_mess` DISABLE KEYS */;
INSERT INTO `chat_group_mess` VALUES (641,'Nghe lén đc hàng xóm f1',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',0,NULL,NULL,10,'Nghe len dc hang xom f1'),(642,'Sợ quá ko dám ra luôn',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',1,NULL,NULL,10,'So qua ko dam ra luon'),(643,'Vãi',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',2,NULL,NULL,10,'Vai'),(644,'Mà chỗ ông test hết chuâ',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',3,NULL,NULL,10,'Ma cho ong test het chua'),(645,'Test hết rồi',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',4,NULL,NULL,10,'Test het roi'),(646,'Là test nhanh hay pcr',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',5,NULL,NULL,10,'La test nhanh hay pcr'),(647,'Ko thấy gì',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',6,NULL,NULL,10,'Ko thay gi'),(648,'Ngoáy mũi chắc là pcr',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',7,NULL,NULL,10,'Ngoay mui chac la pcr'),(649,'Phường t mai mới bắt đầu',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',8,NULL,NULL,10,'Phuong t mai moi bat dau'),(650,'Uhm',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',9,NULL,NULL,10,'Uhm'),(651,'Ủa test xong k nghe thấy tin gì thì chắc cả khu an toàn r',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',10,NULL,NULL,10,'Ua test xong k nghe thay tin gi thi chac ca khu an toan r'),(652,'Có đóng cửa tp chắc là sl nhiễm lớn lắm',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',11,NULL,NULL,10,'Co dong cua tp chac la sl nhiem lon lam'),(653,'1 tuần tới mệt nè',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',12,NULL,NULL,10,'1 tuan toi met ne'),(654,'Nó tầm soát ra',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',13,NULL,NULL,10,'No tam soat ra'),(655,'Sợ quá sợ',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',14,NULL,NULL,10,'So qua so'),(656,'Ừm chắc nhiều chỗ test ra dương tính nên mới gắt vậy',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',15,NULL,NULL,10,'Um chac nhieu cho test ra duong tinh nen moi gat vay'),(657,'Uhm',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',16,NULL,NULL,10,'Uhm'),(658,'Mong sao qua nhanh',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',17,NULL,NULL,10,'Mong sao qua nhanh'),(659,'Chứ ngứa chân ngứa tay ngứa mồm quá rồi',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',18,NULL,NULL,10,'Chu ngua chan ngua tay ngua mom qua roi'),(660,'Mới đọc báo Phó thủ tướng Đam nói để vượt ngưỡng là trả giá đắt nữa nên chính quyền lo mà gắt chớ k tạch như ấn độ',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',19,NULL,NULL,10,'Moi doc bao Pho thu tuong Dam noi de vuot nguong la tra gia dat nua nen chinh quyen lo ma gat cho k tach nhu an do'),(661,'Ông còn uống rượu mà ngứa gì ;))',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',20,NULL,NULL,10,'Ong con uong ruou ma ngua gi    '),(662,'Ờ thì ngồi vs mấy anh em mới bốc phét đc',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',21,NULL,NULL,10,'O thi ngoi vs may anh em moi boc phet dc'),(663,'Ko có chút men nào cả tháng thấy say sẩm mặt mày luôn ;))',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',22,NULL,NULL,10,'Ko co chut men nao ca thang thay say sam mat may luon    '),(664,'Chứ ngồi vs bố vk thì la hét gì\n1',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',23,'https://static.xx.fbcdn.net/images/emoji.php/v9/td4/1/16/1f606.png',NULL,10,'Chu ngoi vs bo vk thi la het gi\n1'),(665,'=)))',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',24,NULL,NULL,10,'    '),(666,'Thôi ông tranh thủ hỏi xem có bỉm k',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',25,NULL,NULL,10,'Thoi ong tranh thu hoi xem co bim k'),(667,'Ohm',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',26,NULL,NULL,10,'Ohm'),(668,'Chớ k tuần tới lụt mịe giường',0,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',27,NULL,NULL,10,'Cho k tuan toi lut mie giuong'),(669,'Để tý nói vk',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',28,NULL,NULL,10,'De ty noi vk'),(670,'',1,'100000348012331','13 02  24 Thang 7  2021','24-7-2021 13:02',29,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,''),(671,'Alo ông, t nhờ xíu',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',0,NULL,NULL,10,'Alo ong  t nho xiu'),(672,'Đây ông ơi',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',1,NULL,NULL,10,'Day ong oi'),(673,'T ck qua ông, ông quét mã giúp t đc k',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',2,NULL,NULL,10,'T ck qua ong  ong quet ma giup t dc k'),(674,'Mã của t ak',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',3,NULL,NULL,10,'Ma cua t ak'),(675,'Ohm dc\n1',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',4,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'Ohm dc\n1'),(676,'Mà sao thế',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',5,NULL,NULL,10,'Ma sao the'),(677,'Kiếm tiền ;))',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',6,NULL,NULL,10,'Kiem tien    '),(678,'Đi đường vòng chạy kpi à',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',7,NULL,NULL,10,'Di duong vong chay kpi a'),(679,'=)))',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',8,NULL,NULL,10,'    '),(680,'Ừm ;))',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',9,NULL,NULL,10,'Um    '),(681,'Dạng vậy',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',10,NULL,NULL,10,'Dang vay'),(682,'T ck 570k cho ông',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',11,NULL,NULL,10,'T ck 570k cho ong'),(683,'Ohm chuyển đây quét cho',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',12,NULL,NULL,10,'Ohm chuyen day quet cho'),(684,'Có nhập 365 ko',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',13,NULL,NULL,10,'Co nhap 365 ko'),(685,'Ông ghi số tiền 600k mã 365 nó trừ 30k như bt',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',14,NULL,NULL,10,'Ong ghi so tien 600k ma 365 no tru 30k nhu bt'),(686,';))',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',15,NULL,NULL,10,'   '),(687,'Ohm oke',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',16,NULL,NULL,10,'Ohm oke'),(688,'Cho t stk ih',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',17,NULL,NULL,10,'Cho t stk ih'),(689,'',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',18,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s403x403/179686092_920570555405166_1955373864411682007_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Qjsn-JnsYL4AX_Pgitj&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=7b744832751aef24f72d8644d6db7c04&oe=6198B403',NULL,10,''),(690,'T mới gửi r ak ông',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',19,NULL,NULL,10,'T moi gui r ak ong'),(691,'',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',20,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p320x320/217030243_1948548718652888_4607864703695806014_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=K0tASne8au0AX8ZfPMy&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=b58040b80c56ceed8ade5ced08b8dac1&oe=619AD393',NULL,10,''),(692,'Ok nhận đc òi\n1',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',21,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'Ok nhan dc oi\n1'),(693,'H tui quét nè',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',22,NULL,NULL,10,'H tui quet ne'),(694,'Okie ông',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',23,NULL,NULL,10,'Okie ong'),(695,'Cảm ơn nhoé',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',24,NULL,NULL,10,'Cam on nhoe'),(696,'',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',25,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s403x403/218294284_579781353405298_1929399334425850942_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=aee45a&_nc_ohc=-26UMJmHeOkAX90UCZC&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=a0101036aee559f09fb9c91f335e8f18&oe=61994E61',NULL,10,''),(697,'Rồi ak ông\n1',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',26,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'Roi ak ong\n1'),(698,'Cảm ơn nhoé bạn hiền',0,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',27,NULL,NULL,10,'Cam on nhoe ban hien'),(699,'Ok nè\n1',1,'100000348012331','20 57  25 Thang 7  2021','25-7-2021 20:57',28,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'Ok ne\n1'),(700,'Alo ông ơi, quét mã giống tuần trc giúp t với ',0,'100000348012331','20 55  1 Thang 8  2021','1-8-2021 20:55',0,'https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png',NULL,10,'Alo ong oi  quet ma giong tuan trc giup t voi'),(701,'Ok ông chuyể đi',1,'100000348012331','20 55  1 Thang 8  2021','1-8-2021 20:55',1,NULL,NULL,10,'Ok ong chuye di'),(702,'Tui quét cho',1,'100000348012331','20 55  1 Thang 8  2021','1-8-2021 20:55',2,NULL,NULL,10,'Tui quet cho'),(703,'Okie ông',0,'100000348012331','20 55  1 Thang 8  2021','1-8-2021 20:55',3,NULL,NULL,10,'Okie ong'),(704,'1',1,'100000348012331','20 55  1 Thang 8  2021','1-8-2021 20:55',4,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s403x403/226097685_4154603721305166_107122887451208059_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=uzT7yPX302EAX-E68l3&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=8f985bbc4c610577d3f793940480cdf5&oe=6199B346,https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'1'),(705,'Okie cảm ơn ông nhé ',0,'100000348012331','20 55  1 Thang 8  2021','1-8-2021 20:55',5,'https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png',NULL,10,'Okie cam on ong nhe'),(706,'Ok ông\n1',1,'100000348012331','20 55  1 Thang 8  2021','1-8-2021 20:55',6,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'Ok ong\n1'),(707,'Ông bạn ơi',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',0,NULL,NULL,10,'Ong ban oi'),(708,'Có rảnh k t nhờ xíu',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',1,NULL,NULL,10,'Co ranh k t nho xiu'),(709,'chờ tui tý nha',1,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',2,NULL,NULL,10,'cho tui ty nha'),(710,'đây ôn gơi',1,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',3,NULL,NULL,10,'day on goi'),(711,'ông',1,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',4,NULL,NULL,10,'ong'),(712,'thanh toán bill hả ',1,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',5,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'thanh toan bill ha'),(713,'Hông có, nhờ ông mở dùng cái tk TPbank online ak',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',6,NULL,NULL,10,'Hong co  nho ong mo dung cai tk TPbank online ak'),(714,'Ông có tk TPbank chưa',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',7,NULL,NULL,10,'Ong co tk TPbank chua'),(715,'Free phí CK',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',8,NULL,NULL,10,'Free phi CK'),(716,'Phí thường niên',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',9,NULL,NULL,10,'Phi thuong nien'),(717,'Phí rút tiền atm.khác ngân hàng',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',10,NULL,NULL,10,'Phi rut tien atm khac ngan hang'),(718,'ok nè',1,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',11,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s403x403/240427270_114272084223275_2545196410584714107_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=aee45a&_nc_ohc=03axSaMRlOcAX_ZVrAw&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=410cf955aa63724376927b47e993dbf5&oe=61994BBB,https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/186564144_1222645661533662_4731668073602870065_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=aee45a&_nc_ohc=kp-uOehZKMwAX9P6Hy8&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=7b80b3aa70287029483d401a9f6465e5&oe=6199FFBA',NULL,10,'ok ne'),(719,'Ế',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',12,NULL,NULL,10,'E'),(720,'Cái này nhờ ông tải app r đăng ký ak',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',13,NULL,NULL,10,'Cai nay nho ong tai app r dang ky ak'),(721,'Để t gửi cách làm.nha',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',14,NULL,NULL,10,'De t gui cach lam nha'),(722,'Tầm.5p à',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',15,NULL,NULL,10,'Tam 5p a'),(723,'- [ ] B1: tải app TPBank mobile trên app store/ch play\n- [ ] B2: mở app, chọn \"đăng ký ngay\", tick ô: \"tôi xác nhận\", \"bắt đầu\"\n- [ ] B3: Điền theo hướng dẫn của ảnh\n- [ ] B4: phần mã giới thiệu nhập VQD04370828\n- [ ] B5: chụp ảnh màn hình hoàn thành',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',16,NULL,NULL,10,'      B1  tai app TPBank mobile tren app store ch play\n      B2  mo app  chon  dang ky ngay   tick o   toi xac nhan    bat dau \n      B3  Dien theo huong dan cua anh\n      B4  phan ma gioi thieu nhap VQD04370828\n      B5  chup anh man hinh hoan thanh'),(724,'',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',17,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/231572436_197899315707285_1313057405735079549_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Y2Z5uH9Ci-cAX9u-bOW&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=c0ecf27f2636a9be010fba558b3cc31c&oe=61993E59,https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/234194458_985586942243038_9402682723662205_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=F7066gRTfJcAX_bSUtD&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=f047233ca072a7dfc7edc7a669d54d78&oe=619A908D,https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/234942393_1037457957080743_4601704124876408037_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=reaASiaieigAX9204FA&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=637096495258a8aca06bcce8c6722e9c&oe=619A5FC0',NULL,10,''),(725,'Lúc nào rảnh ông làm cũng đc',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',18,NULL,NULL,10,'Luc nao ranh ong lam cung dc'),(726,'Trc ngày 28 giúp t nha',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',19,NULL,NULL,10,'Trc ngay 28 giup t nha'),(727,'Mà ông nhớ điền mã giới thiệu của t nha',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',20,NULL,NULL,10,'Ma ong nho dien ma gioi thieu cua t nha'),(728,'VQD04370828 nè',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',21,NULL,NULL,10,'VQD04370828 ne'),(729,'ok để mai làm \n1',1,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',22,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png,https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'ok de mai lam \n1'),(730,'Okay',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',23,NULL,NULL,10,'Okay'),(731,'Mai t nhắc cho',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',24,NULL,NULL,10,'Mai t nhac cho'),(732,'Thể nào cũng quên ;)))',0,'100000348012331','10 38  26 Thang 8  2021','26-8-2021 10:38',25,NULL,NULL,10,'The nao cung quen     '),(733,'Ok nà =))\n1',1,'100000348012331','11 53  26 Thang 8  2021','26-8-2021 11:53',0,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'Ok na    \n1'),(734,'Ông bạn ới, làm.giúp t nha, nhớ nhập mã giới thiệu nha ',0,'100000348012331','11 34  28 Thang 8  2021','28-8-2021 11:34',0,'https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/1/16/1f601.png,https://static.xx.fbcdn.net/images/emoji.php/v9/t4f/1/16/1f601.png',NULL,10,'Ong ban oi  lam giup t nha  nho nhap ma gioi thieu nha'),(735,'Ok ok',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',0,NULL,NULL,10,'Ok ok'),(736,'Quên mất',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',1,NULL,NULL,10,'Quen mat'),(737,'',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,''),(738,'Trc 30 là đc nha ông bạn ;))',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',3,NULL,NULL,10,'Trc 30 la dc nha ong ban    '),(739,'Hnay làm thôi nôi cho con bé',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',4,NULL,NULL,10,'Hnay lam thoi noi cho con be'),(740,'',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',5,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/236395681_217554097053225_8986377913994616880_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=aee45a&_nc_ohc=038PE2uBFwkAX_UA9cN&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=a4c2055579a8c01850d61e0625f707a2&oe=6198F80D',NULL,10,''),(741,'Wow',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',6,NULL,NULL,10,'Wow'),(742,'Chúc bé hay ăn chóng lớn nha\n1',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',7,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'Chuc be hay an chong lon nha\n1'),(743,'Hjhj\n1',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',8,'https://static.xx.fbcdn.net/images/emoji.php/v9/td4/1/16/1f606.png',NULL,10,'Hjhj\n1'),(744,'Lâu r mới thấy chữ hjhj này ;))))',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',9,NULL,NULL,10,'Lau r moi thay chu hjhj nay      '),(745,'Mùa dịch mấy ng lớn ko nhậu dc bùn ghê ha\n1',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',10,'https://static.xx.fbcdn.net/images/emoji.php/v9/td4/1/16/1f606.png',NULL,10,'Mua dich may ng lon ko nhau dc bun ghe ha\n1'),(746,'Nắng cảm ơn chú Thịnh nhé',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',11,NULL,NULL,10,'Nang cam on chu Thinh nhe'),(747,'Yup',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',12,NULL,NULL,10,'Yup'),(748,':)))',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',13,NULL,NULL,10,'    '),(749,'Bữa mới nc với a Nghĩa',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',14,NULL,NULL,10,'Bua moi nc voi a Nghia'),(750,'Đá trận đầu sau dịch bao banh nóc ;)))',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',15,NULL,NULL,10,'Da tran dau sau dich bao banh noc     '),(751,':))))',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',16,NULL,NULL,10,'     '),(752,'Chuẩn men\n1',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',17,'https://static.xx.fbcdn.net/images/emoji.php/v9/td4/1/16/1f606.png',NULL,10,'Chuan men\n1'),(753,'Mà ko bit khi nào hết dịch',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',18,NULL,NULL,10,'Ma ko bit khi nao het dich'),(754,':)))',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',19,NULL,NULL,10,'    '),(755,'Ông đc tiêm mũi nào chưa',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',20,NULL,NULL,10,'Ong dc tiem mui nao chua'),(756,'Chưa',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',21,NULL,NULL,10,'Chua'),(757,'Khi nào tiêm đc 70% may ra',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',22,NULL,NULL,10,'Khi nao tiem dc 70  may ra'),(758,'Đâu thuộc diện gì đâu mà',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',23,NULL,NULL,10,'Dau thuoc dien gi dau ma'),(759,'Uhm',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',24,NULL,NULL,10,'Uhm'),(760,'Ba mẹ lớn tuổi, có suất k',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',25,NULL,NULL,10,'Ba me lon tuoi  co suat k'),(761,'Ba t đc nè',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',26,NULL,NULL,10,'Ba t dc ne'),(762,'Ráng chờ thôi',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',27,NULL,NULL,10,'Rang cho thoi'),(763,'72 tuổi',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',28,NULL,NULL,10,'72 tuoi'),(764,'Hok biết nữa',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',29,NULL,NULL,10,'Hok biet nua'),(765,'Chưa thấy gì lun',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',30,NULL,NULL,10,'Chua thay gi lun'),(766,'Hỏi ông tổ trưởng tổ',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',31,NULL,NULL,10,'Hoi ong to truong to'),(767,'Tổ trưởng thôn',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',32,NULL,NULL,10,'To truong thon'),(768,'Uhm',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',33,NULL,NULL,10,'Uhm'),(769,'Bữa ba t cũng k biết',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',34,NULL,NULL,10,'Bua ba t cung k biet'),(770,'Còn có ông bạn kêu mới tiêm',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',35,NULL,NULL,10,'Con co ong ban keu moi tiem'),(771,'Xong hỏi ông tổ trưởng mới biết',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',36,NULL,NULL,10,'Xong hoi ong to truong moi biet'),(772,'Zj hả',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',37,NULL,NULL,10,'Zj ha'),(773,'Để hỏi thử',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',38,NULL,NULL,10,'De hoi thu'),(774,'Ừm',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',39,NULL,NULL,10,'Um'),(775,'Hỏi liền ih',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',40,NULL,NULL,10,'Hoi lien ih'),(776,'Ohm',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',41,NULL,NULL,10,'Ohm'),(777,'Với thêm cái giấy trợ cấp đó',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',42,NULL,NULL,10,'Voi them cai giay tro cap do'),(778,'Nhà có ai thuộc diện k',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',43,NULL,NULL,10,'Nha co ai thuoc dien k'),(779,'Xin về ghi',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',44,NULL,NULL,10,'Xin ve ghi'),(780,'Uhm để hỏi lun',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',45,NULL,NULL,10,'Uhm de hoi lun'),(781,'Ừm, đông nên.có khi sót đó',0,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',46,NULL,NULL,10,'Um  dong nen co khi sot do'),(782,'',1,'100000348012331','13 01  28 Thang 8  2021','28-8-2021 13:01',47,NULL,NULL,10,''),(783,'Alo hả',1,'100000348012331','16 25  30 Thang 8  2021','30-8-2021 16:25',0,NULL,NULL,10,'Alo ha'),(784,'',1,'100000348012331','16 25  30 Thang 8  2021','30-8-2021 16:25',1,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p180x540/240761228_890140441896712_3813456649784986458_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=aee45a&_nc_ohc=G8G4hega-64AX-fsJ6l&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=e57232bd88472d41bb3c70db2d90e352&oe=6198E6AD',NULL,10,''),(785,'Sđt tui bị sao zj',1,'100000348012331','16 25  30 Thang 8  2021','30-8-2021 16:25',2,NULL,NULL,10,'Sdt tui bi sao zj'),(786,'Ủa',0,'100000348012331','16 40  30 Thang 8  2021','30-8-2021 16:40',0,NULL,NULL,10,'Ua'),(787,'Ông có tk nào của tpbank trc giờ chưa',0,'100000348012331','16 40  30 Thang 8  2021','30-8-2021 16:40',1,NULL,NULL,10,'Ong co tk nao cua tpbank trc gio chua'),(788,'Chưa có hải',1,'100000348012331','16 40  30 Thang 8  2021','30-8-2021 16:40',2,NULL,NULL,10,'Chua co hai'),(789,'Hồi h có dùng tpbank đâu',1,'100000348012331','16 40  30 Thang 8  2021','30-8-2021 16:40',3,NULL,NULL,10,'Hoi h co dung tpbank dau'),(790,'Audio Call\n50 secs',0,'100000348012331','16 40  30 Thang 8  2021','30-8-2021 16:40',4,NULL,NULL,10,'Audio Call\n50 secs'),(791,'Alo hải',1,'100000348012331','09 29  8 Thang 10  2021','8-10-2021 09:29',0,NULL,NULL,10,'Alo hai'),(792,'Có yubest night 3xl hok',1,'100000348012331','09 29  8 Thang 10  2021','8-10-2021 09:29',1,NULL,NULL,10,'Co yubest night 3xl hok'),(793,'Ko ông ơi',0,'100000348012331','10 27  8 Thang 10  2021','8-10-2021 10:27',0,NULL,NULL,10,'Ko ong oi'),(794,'Có youli k à',0,'100000348012331','10 27  8 Thang 10  2021','8-10-2021 10:27',1,NULL,NULL,10,'Co youli k a'),(795,'Oke',1,'100000348012331','10 27  8 Thang 10  2021','8-10-2021 10:27',2,NULL,NULL,10,'Oke');
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
INSERT INTO `customer` VALUES (10,'100017865601279','phamtien.pham.73550','Pham tien','0333339922','asdasd','51515','https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.6435-1/p100x100/58462425_371676803437837_7775662591438749696_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_ohc=1kvR54TC1aQAX8BAYSe&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn2-1.fna&oh=281404d439e1a10b767d9a9a81a10d5d&oe=619189C6','Pham tien'),(11,'100004251633262','','nguyen phuong anh','0333339933','asdasd','wqeqweqweqw','https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.6435-1/p100x100/131511220_1825765714241799_4962161834166095496_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=cYtL7iNTEgkAX8MbHH2&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn2-6.fna&oh=d67c52f271ddc32fc1e8f82e6f93cbee&oe=61901A1A','nguyen phuong anh'),(12,'100002977222859','lee.an.125','le phan an','33333','125 nguyen huu huan','nha trang','https://scontent.fdad7-1.fna.fbcdn.net/v/t1.6435-1/p100x100/142440658_3464979203611286_3766692619196768439_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=7206a8&_nc_ohc=2CB2hwzTvnoAX9WbYOQ&_nc_ad=z-m&_nc_cid=1572&_nc_ht=scontent.fdad7-1.fna&oh=8bf57e809c30b1de777045ad51d4942d&oe=6188CF80',NULL),(13,'100001113783887','tien.phamhuu','Pham tien','0923343434','434534','5345345345','https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.6435-1/p100x100/171262285_3871680639545691_1518116213495690387_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=wUQHx3Vy9Y8AX_hddO9&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fsgn2-2.fna&oh=98572f358e0e29bef3f7fe1a8dd93ca5&oe=618D1C50','Pham tien');
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_count`
--

LOCK TABLES `money_count` WRITE;
/*!40000 ALTER TABLE `money_count` DISABLE KEYS */;
INSERT INTO `money_count` VALUES (10,10000.000,10,_binary '617c4a25-2f66-11',1,NULL,'2021-10-17 23:22:11');
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
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (14,7,'2021-08-10 09:40:45','2021-08-10 09:42:52','5cbf6e6b-f984-11eb-9405-00ac0b3dea54'),(15,7,'2021-08-10 10:03:07','2021-08-10 10:03:19','7ccf28e5-f987-11eb-9405-00ac0b3dea54'),(16,7,'2021-08-10 10:09:42','2021-08-10 15:52:32','6824dbaf-f988-11eb-9405-00ac0b3dea54'),(17,7,'2021-08-10 16:20:51',NULL,'417f1cbf-f9bc-11eb-9405-00ac0b3dea54'),(18,7,'2021-08-12 14:17:15','2021-08-12 23:46:28','527d1f64-fb3d-11eb-9405-00ac0b3dea54'),(19,7,'2021-08-12 23:46:33','2021-08-13 09:26:42','d9bb64c6-fb8c-11eb-9405-00ac0b3dea54'),(20,7,'2021-08-13 09:26:46',NULL,'e829a639-fbdd-11eb-9405-00ac0b3dea54'),(21,7,'2021-08-14 09:35:59','2021-08-14 14:41:49','5c49dea3-fca8-11eb-9405-00ac0b3dea54'),(22,7,'2021-08-14 14:42:07',NULL,'2069240c-fcd3-11eb-9405-00ac0b3dea54'),(23,7,'2021-08-15 15:36:28',NULL,'e2a54371-fda3-11eb-9405-00ac0b3dea54'),(24,12,'2021-08-16 00:49:37','2021-08-16 02:54:11','28878088-fdf1-11eb-9405-00ac0b3dea54'),(25,12,'2021-08-16 02:54:19','2021-08-16 14:45:07','94475b57-fe02-11eb-9405-00ac0b3dea54'),(26,7,'2021-08-17 01:40:19','2021-08-17 11:17:43','684f0e84-fec1-11eb-9405-00ac0b3dea54'),(27,7,'2021-08-17 11:17:48','2021-08-18 10:35:27','14701228-ff12-11eb-9405-00ac0b3dea54'),(28,7,'2021-08-18 10:36:07',NULL,'6c7095d4-ffd5-11eb-9405-00ac0b3dea54'),(29,12,'2021-08-18 10:49:00',NULL,'395237ce-ffd7-11eb-9405-00ac0b3dea54'),(30,7,'2021-08-19 14:46:18',NULL,'8a19fdfc-00c1-11ec-9405-00ac0b3dea54'),(31,7,'2021-08-20 14:46:24',NULL,'b82df0a1-018a-11ec-9405-00ac0b3dea54'),(32,7,'2021-08-21 16:16:50',NULL,'84cdd626-0260-11ec-9405-00ac0b3dea54'),(33,7,'2021-08-22 16:17:53',NULL,'d470355e-0329-11ec-9405-00ac0b3dea54'),(34,7,'2021-08-25 09:53:01','2021-08-25 09:57:18','8fd672b3-054f-11ec-9405-00ac0b3dea54'),(35,7,'2021-08-25 09:57:39','2021-08-25 09:57:39','35709c00-0550-11ec-9405-00ac0b3dea54'),(36,7,'2021-08-25 10:01:19','2021-08-25 10:01:19','b8951877-0550-11ec-9405-00ac0b3dea54'),(37,7,'2021-08-25 10:03:07','2021-08-25 10:45:02','f8f4c9b8-0550-11ec-9405-00ac0b3dea54'),(38,7,'2021-08-30 15:22:36',NULL,'6ea5263e-096b-11ec-983e-00ac0b3dea54'),(39,7,'2021-08-30 15:24:05',NULL,'a403d684-096b-11ec-983e-00ac0b3dea54'),(40,7,'2021-08-30 15:26:09',NULL,'edb2937c-096b-11ec-983e-00ac0b3dea54'),(41,7,'2021-08-30 15:27:30','2021-08-30 15:31:48','1e3692f3-096c-11ec-983e-00ac0b3dea54'),(42,7,'2021-08-30 15:31:53','2021-08-30 15:43:00','ba8f1890-096c-11ec-983e-00ac0b3dea54'),(43,7,'2021-08-30 15:43:10','2021-08-30 15:45:16','4e4b611c-096e-11ec-983e-00ac0b3dea54'),(44,7,'2021-08-30 15:47:16','2021-08-30 15:48:12','e08e5342-096e-11ec-983e-00ac0b3dea54'),(45,7,'2021-08-30 15:48:21',NULL,'0762990d-096f-11ec-983e-00ac0b3dea54'),(46,7,'2021-08-31 10:31:08',NULL,'e16194fb-0a0b-11ec-983e-00ac0b3dea54'),(47,7,'2021-09-01 10:35:00',NULL,'9608d411-0ad5-11ec-983e-00ac0b3dea54'),(48,7,'2021-09-02 14:10:54',NULL,'e9cb5813-0bbc-11ec-983e-00ac0b3dea54'),(49,7,'2021-09-10 09:30:31',NULL,'11aa0da5-11df-11ec-983e-00ac0b3dea54'),(50,7,'2021-09-16 09:04:05',NULL,'5f848e65-1692-11ec-983e-00ac0b3dea54'),(51,7,'2021-09-17 09:05:12',NULL,'b14b62c3-175b-11ec-983e-00ac0b3dea54'),(52,7,'2021-09-18 15:17:44',NULL,'e69f0af7-1858-11ec-983e-00ac0b3dea54'),(53,7,'2021-09-22 09:24:36',NULL,'3d55bfb7-1b4c-11ec-983e-00ac0b3dea54'),(54,7,'2021-09-22 09:24:40',NULL,'3d5f2462-1b4c-11ec-983e-00ac0b3dea54'),(55,7,'2021-09-23 10:14:38',NULL,'62ca2e0d-1c1c-11ec-983e-00ac0b3dea54'),(56,7,'2021-09-24 10:24:27',NULL,'ec164b5a-1ce6-11ec-983e-00ac0b3dea54'),(57,7,'2021-09-26 09:20:45',NULL,'5b14ca06-1e70-11ec-a8c5-00ac0b3dea54'),(58,7,'2021-09-27 09:49:24',NULL,'8656d7b5-1f3d-11ec-a8c5-00ac0b3dea54'),(59,7,'2021-09-28 09:50:09',NULL,'cb6b6551-2006-11ec-a8c5-00ac0b3dea54'),(60,7,'2021-09-30 15:41:10',NULL,'294e7cbc-21ca-11ec-a8c5-00ac0b3dea54'),(61,7,'2021-10-02 10:28:08',NULL,'c33ba26d-2330-11ec-a8c5-00ac0b3dea54'),(62,7,'2021-10-03 13:57:04',NULL,'1e0657cb-2417-11ec-a8c5-00ac0b3dea54'),(63,7,'2021-10-04 14:35:52',NULL,'b41cbf09-24e5-11ec-bf6b-00ac0b3dea54'),(64,7,'2021-10-06 23:15:35',NULL,'a36ce46f-26c0-11ec-bf6b-00ac0b3dea54'),(65,7,'2021-10-08 23:14:45',NULL,'da3e2b6c-2852-11ec-bf6b-00ac0b3dea54'),(66,10,'2021-10-08 23:14:59',NULL,'e2ba5ad5-2852-11ec-bf6b-00ac0b3dea54'),(67,7,'2021-10-12 09:00:38',NULL,'32977ee0-2b00-11ec-915c-00ac0b3dea54'),(68,7,'2021-10-13 09:36:52','2021-10-13 09:51:58','6cdfc889-2bce-11ec-a3ba-00ac0b3dea54'),(69,10,'2021-10-13 14:22:09','2021-10-13 15:13:31','4744af3f-2bf6-11ec-a3ba-00ac0b3dea54'),(70,7,'2021-10-13 15:13:36',NULL,'774e568e-2bfd-11ec-a3ba-00ac0b3dea54'),(71,7,'2021-10-14 15:57:03',NULL,'b38303c6-2ccc-11ec-a3ba-00ac0b3dea54'),(72,7,'2021-10-14 15:57:40',NULL,'c99d8943-2ccc-11ec-a3ba-00ac0b3dea54'),(73,7,'2021-10-16 14:27:39',NULL,'8af56b36-2e52-11ec-a3ba-00ac0b3dea54'),(74,7,'2021-10-17 22:20:16',NULL,'bbb28d96-2f5d-11ec-a3ba-00ac0b3dea54'),(75,7,'2021-10-20 22:50:56','2021-10-21 00:23:48','8320bd57-31bd-11ec-a3ba-00ac0b3dea54'),(76,7,'2021-10-21 00:23:54','2021-10-21 00:24:00','7ff2a130-31ca-11ec-a3ba-00ac0b3dea54'),(77,7,'2021-10-21 15:52:08','2021-10-21 15:52:23','2c209508-324c-11ec-a3ba-00ac0b3dea54'),(78,7,'2021-10-23 15:59:23',NULL,'84829c2f-33df-11ec-a3ba-00ac0b3dea54');
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
    left join `account` as A2 on CG.fb_acc_send = A2.fb_id
    left join customer as C on C.id_fb = CG.cus_id
    where CG.acc_receive = user_id or A2.id = user_id or check_tag(user_id,CG.user_ids)!= 0 or @role_id = 0;
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
left join `account` as A3 on A3.id = B.accountant
left join `account` as A4 on A4.id = B.reject
where (date(B.time) >= @f and date(B.time) <= @t) and (stt = 3 or B.stt = stt)
group by B.u_id,B.created_by,B.stt,B.customer,A2.user,A3.user,A4.user) AS TB 
left join `account` AS A on A.id = TB.created_by
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_group`(key_ nvarchar(1000),tag_id int,user_id int)
BEGIN
set @l = concat('%',if(key_='0','',key_),'%');

select TB.*,CG1.cus_id,CGM1.mess as latest_mess,CG1.tags,C.real_name,C.ava_url,C.nick_fb from (SELECT CG.cus_id,CG.acc_receive,max(CGM.id) as `max_id` FROM simpleweb.chat_group_mess AS CGM left join chat_group AS CG on (CGM.cus_id = CG.cus_id and CGM.acc_receive = CG.acc_receive)
where trim(lower(CGM.mess_key)) like @l
group by CGM.cus_id, CGM.acc_receive) as TB
left join chat_group as CG1 on (TB.cus_id = CG1.cus_id and TB.acc_receive = CG1.acc_receive)
left join chat_group_mess as CGM1 on TB.max_id = CGM1.id
left join customer as C on C.id_fb = TB.cus_id
left join (select BB.* from bill AS BB where BB.created_by = user_id and trim(lower(BB.`code`)) like @l group by user_id,customer) as B on (B.created_by = CG1.acc_receive and CG1.cus_id = B.customer)
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

-- Dump completed on 2021-10-23 16:11:55
