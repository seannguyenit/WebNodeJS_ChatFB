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
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (106,10,'2021-11-02 08:58:20',0,2,'100000173441890',_binary '5ad1f7c9-3b80-11',7,7,NULL,'nt1-0222','tq','kt',NULL,NULL,'23333'),(107,10,'2021-11-03 09:50:49',0,1,'100000173441890',_binary 'd9d71c40-3c50-11',7,7,NULL,'nt1-0022','xyz','abc',NULL,NULL,'3333');
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
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` VALUES (149,12,4.000,_binary '5ad1f7c9-3b80-11',50000.000,7.000),(150,13,4.000,_binary '5ad1f7c9-3b80-11',60000.000,20000.000),(151,12,2.000,_binary 'd9d71c40-3c50-11',50000.000,7.000);
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
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group`
--

LOCK TABLES `chat_group` WRITE;
/*!40000 ALTER TABLE `chat_group` DISABLE KEYS */;
INSERT INTO `chat_group` VALUES (37,'','','','','100017865601279',10,NULL,NULL,NULL),(38,'','','','','100001113783887',10,NULL,NULL,NULL),(39,'','','','','100067863644324',10,NULL,NULL,NULL),(40,'','','','','100002870808428',10,NULL,NULL,NULL),(41,'','3','19','','100000173441890',10,NULL,NULL,'');
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
  `mess_index` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_group_mess`
--

LOCK TABLES `chat_group_mess` WRITE;
/*!40000 ALTER TABLE `chat_group_mess` DISABLE KEYS */;
INSERT INTO `chat_group_mess` VALUES (1111,'chào bạn',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',0,NULL,NULL,10,'chao ban',1),(1112,'',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',1,'https://scontent.xx.fbcdn.net/v/t1.15752-9/221182411_2623814101258566_637665901814419874_n.png?_nc_cat=104&ccb=1-5&_nc_sid=aee45a&_nc_ohc=8Wb2lA1-I6YAX-g1L-4&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=88791819032e7566fe825164e4937142&oe=61A652B2',NULL,10,'',2),(1113,'b làm ddc phải k',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',2,NULL,NULL,10,'b lam ddc phai k',3),(1114,'Bạn có web chưa bạn',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',3,NULL,NULL,10,'Ban co web chua ban',4),(1115,'Ý là bạn có web rồi',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',4,NULL,NULL,10,'Y la ban co web roi',5),(1116,'Và cần code thêm cho ứng dụng đó',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',5,NULL,NULL,10,'Va can code them cho ung dung do',6),(1117,'Hay là làm hết lun',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',6,NULL,NULL,10,'Hay la lam het lun',7),(1118,'làm hết luôn bác nhé',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',7,NULL,NULL,10,'lam het luon bac nhe',8),(1119,'Web bác có iu cầu gì ko ạ',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',8,NULL,NULL,10,'Web bac co iu cau gi ko a',9),(1120,'Vd như thương mại điện tử',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',9,NULL,NULL,10,'Vd nhu thuong mai dien tu',10),(1121,'Hay quản lý hình ảnh',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',10,NULL,NULL,10,'Hay quan ly hinh anh',11),(1122,'Hay là chỉ đăng tin viết bài thôi',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',11,NULL,NULL,10,'Hay la chi dang tin viet bai thoi',12),(1123,'e cần liên kết với mess fb cá nhân',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',12,NULL,NULL,10,'e can lien ket voi mess fb ca nhan',13),(1124,'như e đang nhắn với bác đó',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',13,NULL,NULL,10,'nhu e dang nhan voi bac do',14),(1125,'và có thể nhắn trực tiếp trên web',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',14,NULL,NULL,10,'va co the nhan truc tiep tren web',15),(1126,'Em hiểu ý bác rồi',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',15,NULL,NULL,10,'Em hieu y bac roi',16),(1127,'Nhưng chat vs mess là 1 chức năng rồi',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',16,NULL,NULL,10,'Nhung chat vs mess la 1 chuc nang roi',17),(1128,'Ý em hỏi là phần còn lại của web ak',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',17,NULL,NULL,10,'Y em hoi la phan con lai cua web ak',18),(1129,'Vs cả chức năng là mọi ng sẽ chat vs fb của bác',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',18,NULL,NULL,10,'Vs ca chuc nang la moi ng se chat vs fb cua bac',19),(1130,'Đúng ko ạ',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',19,NULL,NULL,10,'Dung ko a',20),(1131,'cái đó làm đc dúng k',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',20,NULL,NULL,10,'cai do lam dc dung k',21),(1132,'để e nói thêm',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',21,NULL,NULL,10,'de e noi them',22),(1133,'Em phải hỏi lỹ để em báo giá bác ạ',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',22,NULL,NULL,10,'Em phai hoi ly de em bao gia bac a',23),(1134,'Hỏi kỹ ạ',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',23,NULL,NULL,10,'Hoi ky a',24),(1135,'vâng',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',24,NULL,NULL,10,'vang',25),(1136,'khi nhắn tin ở web của mình',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',25,NULL,NULL,10,'khi nhan tin o web cua minh',26),(1137,'thì có phần tag tên nhân viên',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',26,NULL,NULL,10,'thi co phan tag ten nhan vien',27),(1138,'và có chức năng tạo nhân viên  đi đôi với tag',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',27,NULL,NULL,10,'va co chuc nang tao nhan vien di doi voi tag',28),(1139,'tin nhắn e nhắn với bác . e tag là nhanviena',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',28,NULL,NULL,10,'tin nhan e nhan voi bac   e tag la nhanviena',29),(1140,'thì khi nhanviena đăng nhập vào web xem đc tin nhắn của bác\n1',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',29,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'thi khi nhanviena dang nhap vao web xem dc tin nhan cua bac\n1',30),(1141,'chỉ đọc đc và k nhắn đc',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',30,NULL,NULL,10,'chi doc dc va k nhan dc',31),(1142,'Đc nhé bác',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',31,NULL,NULL,10,'Dc nhe bac',32),(1143,'Mà cả web chỉ dùng để nhắn tin vậy thôi hả bác',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',32,NULL,NULL,10,'Ma ca web chi dung de nhan tin vay thoi ha bac',33),(1144,'đúng r ạ',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',33,NULL,NULL,10,'dung r a',34),(1145,'giá thế nào ạ',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',34,NULL,NULL,10,'gia the nao a',35),(1146,'Bác có lấy hóa đơn ko ạ',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',35,NULL,NULL,10,'Bac co lay hoa don ko a',36),(1147,'hóa đơn gì ạ',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',36,NULL,NULL,10,'hoa don gi a',37),(1148,'Hóa đơn điện tử bác',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',37,NULL,NULL,10,'Hoa don dien tu bac',38),(1149,'k cần',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',38,NULL,NULL,10,'k can',39),(1150,'Bác cần gấp ko',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',39,NULL,NULL,10,'Bac can gap ko',40),(1151,'bác báo e',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',40,NULL,NULL,10,'bac bao e',41),(1152,'thời gian giá tiền',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',41,NULL,NULL,10,'thoi gian gia tien',42),(1153,'7tr 1 tuần ạ',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',42,NULL,NULL,10,'7tr 1 tuan a',43),(1154,'À mà bác có tên miền vs nơi lưu trữ web ko',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',43,NULL,NULL,10,'A ma bac co ten mien vs noi luu tru web ko',44),(1155,'giá vậy có gì e báo bác nhé',0,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',44,NULL,NULL,10,'gia vay co gi e bao bac nhe',45),(1156,'Nếu ko có em mua rồi tính giá khác nữa ạ',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',45,NULL,NULL,10,'Neu ko co em mua roi tinh gia khac nua a',46),(1157,'Ok bác',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',46,NULL,NULL,10,'Ok bac',47),(1158,'Cần gì liên hệ em ạ',1,'100017865601279','14 51  24 Thang 7  2021','24-7-2021 14:51',47,NULL,NULL,10,'Can gi lien he em a',48),(1159,'cái web',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',0,NULL,NULL,10,'cai web',49),(1160,'e tưởng bác code',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',1,NULL,NULL,10,'e tuong bac code',50),(1161,'xong gửi e code e tự up web bên e',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',2,NULL,NULL,10,'xong gui e code e tu up web ben e',51),(1162,'À code dạng modun thui đúng hok bcs',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',3,NULL,NULL,10,'A code dang modun thui dung hok bcs',52),(1163,'Bác',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',4,NULL,NULL,10,'Bac',53),(1164,'e k biết dạng gì',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',5,NULL,NULL,10,'e k biet dang gi',54),(1165,'e chỉ biết là code cho lên web',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',6,NULL,NULL,10,'e chi biet la code cho len web',55),(1166,'Chà',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',7,NULL,NULL,10,'Cha',56),(1167,'Còn phải xem web bác xây dựng trên nền tảng nào nữa',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',8,NULL,NULL,10,'Con phai xem web bac xay dung tren nen tang nao nua',57),(1168,'Nếu bác chốt giá thì em làm cho bác bằng javascript',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',9,NULL,NULL,10,'Neu bac chot gia thi em lam cho bac bang javascript',58),(1169,'Bác nhúng đâu cũng đc',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',10,NULL,NULL,10,'Bac nhung dau cung dc',59),(1170,'Bác có thể tìm thoing tin về ngôn ngữ này trên gugo ạ',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',11,NULL,NULL,10,'Bac co the tim thoing tin ve ngon ngu nay tren gugo a',60),(1171,'à e còn mấy cái nữa',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',12,NULL,NULL,10,'a e con may cai nua',61),(1172,'bác rảnh vào ultra ae trao đổi',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',13,NULL,NULL,10,'bac ranh vao ultra ae trao doi',62),(1173,'rồi chốt giá giúp e',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',14,NULL,NULL,10,'roi chot gia giup e',63),(1174,'Chờ em tý em thay tã cho con đã',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',15,NULL,NULL,10,'Cho em ty em thay ta cho con da',64),(1175,'',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',16,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,'',65),(1176,'xong ib e nhé',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',17,NULL,NULL,10,'xong ib e nhe',66),(1177,'Ok rồi bác',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',18,NULL,NULL,10,'Ok roi bac',67),(1178,'Cho em ultra nào',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',19,NULL,NULL,10,'Cho em ultra nao',68),(1179,'35 713 288',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',20,NULL,NULL,10,'35 713 288',69),(1180,'67lrh8',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',21,NULL,NULL,10,'67lrh8',70),(1181,'xong e gọi cho bác nhé',0,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',22,NULL,NULL,10,'xong e goi cho bac nhe',71),(1182,'Rồi bác',1,'100017865601279','16 30  27 Thang 7  2021','27-7-2021 16:30',23,NULL,NULL,10,'Roi bac',72),(1183,'docs.google.com/spreadsheets/d/1_rDOEujrRtowiz8DqzEqAT3iNjvl07Wu6SoUG30Yd6I/edit?fbclid=IwAR25sqSAnNAgKSEZTQjvf_H2y6ygMrZ9DQj3z6FWxfJlpUgzcJmRsoj9_as#gid=1496578435\nGoogle Sheets - create and edit spreadsheets online, for free.\naccounts.google.com',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',0,'https://external.xx.fbcdn.net/safe_image.php?d=AQGfRUQUFOc4uhIv&w=192&h=100&url=https%3A%2F%2Fssl.gstatic.com%2Faccounts%2Fui%2Favatar_2x.png&cfs=1&sx=0&sy=30&sw=192&sh=100&ext=emg0&_nc_oe=6ef65&_nc_sid=632586&ccb=3-5&_nc_hash=AQGKoipRWjgbOGr3',NULL,10,'docs google com spreadsheets d 1 rDOEujrRtowiz8DqzEqAT3iNjvl07Wu6SoUG30Yd6I edit fbclid IwAR25sqSAnNAgKSEZTQjvf H2y6ygMrZ9DQj3z6FWxfJlpUgzcJmRsoj9 as gid 1496578435\nGoogle Sheets   create and edit spreadsheets online  for free \naccounts google com',73),(1184,'Cuộc gọi thoại\n35 phút',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',1,NULL,NULL,10,'Cuoc goi thoai\n35 phut',74),(1185,'Ok bác',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',2,NULL,NULL,10,'Ok bac',75),(1186,'à về nhắn tin mess í',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',3,NULL,NULL,10,'a ve nhan tin mess i',76),(1187,'bác cho nhắn tin trực tiếp trên fb luôn',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',4,NULL,NULL,10,'bac cho nhan tin truc tiep tren fb luon',77),(1188,'nghĩa là dữ liệu nhắn tin fb sẽ lưu trữ',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',5,NULL,NULL,10,'nghia la du lieu nhan tin fb se luu tru',78),(1189,'đừng cho về data mình lưu trữ nhé',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',6,NULL,NULL,10,'dung cho ve data minh luu tru nhe',79),(1190,'mình chỉ lưu trữ những số liệu mình viết ra thôi',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',7,NULL,NULL,10,'minh chi luu tru nhung so lieu minh viet ra thoi',80),(1191,'Vậy phần mềm sẽ hơi chậm lại ak nha bác',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',8,NULL,NULL,10,'Vay phan mem se hoi cham lai ak nha bac',81),(1192,'',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',9,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,'',82),(1193,'vì mình mà lưu trữ',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',10,NULL,NULL,10,'vi minh ma luu tru',83),(1194,'thì k biết bao nhiêu gb để lưu trữ',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',11,NULL,NULL,10,'thi k biet bao nhieu gb de luu tru',84),(1195,'Vs cả fb nó mất là fb nó ko lưu',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',12,NULL,NULL,10,'Vs ca fb no mat la fb no ko luu',85),(1196,'Vậy em cho quyền quản trị xóa là đc mà bác',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',13,NULL,NULL,10,'Vay em cho quyen quan tri xoa la dc ma bac',86),(1197,'xóa gì bác nhỉ',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',14,NULL,NULL,10,'xoa gi bac nhi',87),(1198,'Hoặc để em nghĩ giải pháp',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',15,NULL,NULL,10,'Hoac de em nghi giai phap',88),(1199,'dạ vâng',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',16,NULL,NULL,10,'da vang',89),(1200,'bác nghĩ giúp e .',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',17,NULL,NULL,10,'bac nghi giup e  ',90),(1201,'Ok bác',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',18,NULL,NULL,10,'Ok bac',91),(1202,'tại e k muốn lưu tin nhắn . ví dụ nhân viên nhà e gửi 100 ảnh . mỗi ảnh nặng 1mb thì chắc chết',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',19,NULL,NULL,10,'tai e k muon luu tin nhan   vi du nhan vien nha e gui 100 anh   moi anh nang 1mb thi chac chet',92),(1203,'bác biết pancake k nhỉ',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',20,NULL,NULL,10,'bac biet pancake k nhi',93),(1204,'À bác lo ảnh hả',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',21,NULL,NULL,10,'A bac lo anh ha',94),(1205,'à dạ vâng',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',22,NULL,NULL,10,'a da vang',95),(1206,'kiểu gửi ảnh hay gửi video í',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',23,NULL,NULL,10,'kieu gui anh hay gui video i',96),(1207,'Ok em hiểu để em nghĩ giải pháp',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',24,NULL,NULL,10,'Ok em hieu de em nghi giai phap',97),(1208,'ok ạ',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',25,NULL,NULL,10,'ok a',98),(1209,'Pancake bữa em có đụng vào mà lâu quá rồi',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',26,NULL,NULL,10,'Pancake bua em co dung vao ma lau qua roi',99),(1210,'Thôi thì cứ từ từ mà làm tới đó làm theo vừa ý là đc rồi bác',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',27,NULL,NULL,10,'Thoi thi cu tu tu ma lam toi do lam theo vua y la dc roi bac',100),(1211,'nên nếu có gì ko đúng thì cũng nhỏ thôi',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',21,NULL,NULL,10,'nen neu co gi ko dung thi cung nho thoi',401),(1212,'em làm mỗi phần ra 1 modun riêng',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',22,NULL,NULL,10,'em lam moi phan ra 1 modun rieng',402),(1213,'nên phần nào sửa phần đó ko có dính đến phầần khác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',23,NULL,NULL,10,'nen phan nao sua phan do ko co dinh den phaan khac',403),(1214,'bác yên tâm',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',24,NULL,NULL,10,'bac yen tam',404),(1215,'à dạ vâng',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',25,NULL,NULL,10,'a da vang',405),(1216,'vậy tốt quá',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',26,NULL,NULL,10,'vay tot qua',406),(1217,'để e tổng hợp lại cái gg sheet cho chuẩn các ý',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',27,NULL,NULL,10,'de e tong hop lai cai gg sheet cho chuan cac y',407),(1218,'dạ vậy thì tốt quá ạ',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',28,NULL,NULL,10,'da vay thi tot qua a',408),(1219,'hay e hẹn bác sáng mai tầm 10h',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',29,NULL,NULL,10,'hay e hen bac sang mai tam 10h',409),(1220,'ae call trao đổi lần nữa',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',30,NULL,NULL,10,'ae call trao doi lan nua',410),(1221,'để bác hiểu hơn đc k',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',31,NULL,NULL,10,'de bac hieu hon dc k',411),(1222,'tại giờ e muốn làm . nhưng k biêt diễn tả hình ảnh ntn',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',32,NULL,NULL,10,'tai gio e muon lam   nhung k biet dien ta hinh anh ntn',412),(1223,'khó quá',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',33,NULL,NULL,10,'kho qua',413),(1224,'cũng được bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',34,NULL,NULL,10,'cung duoc bac',414),(1225,'mà đừng bàn xa quá nha bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',35,NULL,NULL,10,'ma dung ban xa qua nha bac',415),(1226,'mình xoay quanh phân quyền , tài khoản',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',36,NULL,NULL,10,'minh xoay quanh phan quyen   tai khoan',416),(1227,'xong cái modun này đã',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',37,NULL,NULL,10,'xong cai modun nay da',417),(1228,'à ok',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',38,NULL,NULL,10,'a ok',418),(1229,'bàn xa quá khó hình dung với mấất thời gian em code nữa',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',39,NULL,NULL,10,'ban xa qua kho hinh dung voi maat thoi gian em code nua',419),(1230,'giờ mình sẽ có các mục sau :\n1 - Giao diện modun ( phân chia tài khoản )\n2 - Giao diện nhắn tin\n3 - Giao diện số liệu CTV\n4 - Giao diện trích %\n5 - Giao diện tổng đơn',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',40,NULL,NULL,10,'gio minh se co cac muc sau  \n1   Giao dien modun   phan chia tai khoan  \n2   Giao dien nhan tin\n3   Giao dien so lieu CTV\n4   Giao dien trich  \n5   Giao dien tong don',420),(1231,'vậy mai mình đi trc 2 cái số 1 và 2 nhé',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',41,NULL,NULL,10,'vay mai minh di trc 2 cai so 1 va 2 nhe',421),(1232,'ok vậy cũng đc bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',42,NULL,NULL,10,'ok vay cung dc bac',422),(1233,'mà bác bỏ từ modun ra ạ',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',43,NULL,NULL,10,'ma bac bo tu modun ra a',423),(1234,'căn bản mỗi con số là 1 modun ak bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',44,NULL,NULL,10,'can ban moi con so la 1 modun ak bac',424),(1235,'à vâng :)))',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',45,NULL,NULL,10,'a vang     ',425),(1236,'tại e k biết',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',46,NULL,NULL,10,'tai e k biet',426),(1237,'hahaa',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',47,NULL,NULL,10,'hahaa',427),(1238,'dạ',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',48,NULL,NULL,10,'da',428),(1239,'thôi nghỉ ngơi thôi bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',49,NULL,NULL,10,'thoi nghi ngoi thoi bac',429),(1240,'qua ngày rồi',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',50,NULL,NULL,10,'qua ngay roi',430),(1241,'dạ vâng',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',51,NULL,NULL,10,'da vang',431),(1242,'g9 bác nhé',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',52,NULL,NULL,10,'g9 bac nhe',432),(1243,'ok bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',53,NULL,NULL,10,'ok bac',433),(1244,'g9 pác ạ',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',54,NULL,NULL,10,'g9 pac a',434),(1245,'alo ạ',0,'100017865601279','14 20  4 Thang 8  2021','4-8-2021 14:20',0,NULL,NULL,10,'alo a',435),(1246,'Dạ bác',1,'100017865601279','14 20  4 Thang 8  2021','4-8-2021 14:20',1,NULL,NULL,10,'Da bac',436),(1247,'bác vào ultra e . ae trao đổi kĩ nhé',0,'100017865601279','14 39  4 Thang 8  2021','4-8-2021 14:39',0,NULL,NULL,10,'bac vao ultra e   ae trao doi ki nhe',437),(1248,'ok bac',1,'100017865601279','14 39  4 Thang 8  2021','4-8-2021 14:39',1,NULL,NULL,10,'ok bac',438),(1249,'35 713 288',0,'100017865601279','14 39  4 Thang 8  2021','4-8-2021 14:39',2,NULL,NULL,10,'35 713 288',439),(1250,'sub09m',0,'100017865601279','14 39  4 Thang 8  2021','4-8-2021 14:39',3,NULL,NULL,10,'sub09m',440),(1251,'',1,'100017865601279','14 39  4 Thang 8  2021','4-8-2021 14:39',4,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/225560317_348204033690661_215327173298397069_n.png?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=gonmVCCeGboAX_Df1e_&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=6b22c92d869f80ae30fa89de93e77254&oe=61A796C8',NULL,10,'',441),(1252,'Cuộc gọi thoại\n16 phút',0,'100017865601279','14 39  4 Thang 8  2021','4-8-2021 14:39',5,NULL,NULL,10,'Cuoc goi thoai\n16 phut',442),(1253,'có gì mời k bác ',0,'100017865601279','14 34  6 Thang 8  2021','6-8-2021 14:34',0,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'co gi moi k bac',443),(1254,'Có chớ bác',1,'100017865601279','14 34  6 Thang 8  2021','6-8-2021 14:34',1,NULL,NULL,10,'Co cho bac',444),(1255,':)))',1,'100017865601279','14 34  6 Thang 8  2021','6-8-2021 14:34',2,NULL,NULL,10,'    ',445),(1256,'Tính nói bác mai họp cái chat này',1,'100017865601279','14 34  6 Thang 8  2021','6-8-2021 14:34',3,NULL,NULL,10,'Tinh noi bac mai hop cai chat nay',446),(1257,'ok đc ạ',0,'100017865601279','14 34  6 Thang 8  2021','6-8-2021 14:34',4,NULL,NULL,10,'ok dc a',447),(1258,'hay họp luôn',0,'100017865601279','14 34  6 Thang 8  2021','6-8-2021 14:34',5,NULL,NULL,10,'hay hop luon',448),(1259,'Thui để em làm cái phân quyền cho xong',1,'100017865601279','14 34  6 Thang 8  2021','6-8-2021 14:34',6,NULL,NULL,10,'Thui de em lam cai phan quyen cho xong',449),(1260,'ok ạ',0,'100017865601279','14 34  6 Thang 8  2021','6-8-2021 14:34',7,NULL,NULL,10,'ok a',450),(1261,'mấy h họp bác nhỉ',0,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',0,NULL,NULL,10,'may h hop bac nhi',451),(1262,'Chờ em tý nha bác',1,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',1,NULL,NULL,10,'Cho em ty nha bac',452),(1263,'Sáng h lu bu nhìu việc quá ạ',1,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',2,NULL,NULL,10,'Sang h lu bu nhiu viec qua a',453),(1264,'Hic',1,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',3,NULL,NULL,10,'Hic',454),(1265,'Khaongr 3h dc ko bác',1,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',4,NULL,NULL,10,'Khaongr 3h dc ko bac',455),(1266,'dạ đc ạ',0,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',5,NULL,NULL,10,'da dc a',456),(1267,'e ultra máy bác',0,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',6,NULL,NULL,10,'e ultra may bac',457),(1268,'Dạ',1,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',7,NULL,NULL,10,'Da',458),(1269,'xem giao diện đc k',0,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',8,NULL,NULL,10,'xem giao dien dc k',459),(1270,'Ok ạ',1,'100017865601279','13 58  7 Thang 8  2021','7-8-2021 13:58',9,NULL,NULL,10,'Ok a',460),(1271,'bác chờ em xý ạ',1,'100017865601279','15 01  7 Thang 8  2021','7-8-2021 15:01',0,NULL,NULL,10,'bac cho em xy a',461),(1272,'mạng nhà em đang bị lỗi xý',1,'100017865601279','15 01  7 Thang 8  2021','7-8-2021 15:01',1,NULL,NULL,10,'mang nha em dang bi loi xy',462),(1273,'ok ạ',0,'100017865601279','15 01  7 Thang 8  2021','7-8-2021 15:01',2,NULL,NULL,10,'ok a',463),(1274,'xong bác báo e nhé',0,'100017865601279','15 01  7 Thang 8  2021','7-8-2021 15:01',3,NULL,NULL,10,'xong bac bao e nhe',464),(1275,'bác ơi',1,'100017865601279','15 29  7 Thang 8  2021','7-8-2021 15:29',0,NULL,NULL,10,'bac oi',465),(1276,'chắc để sáng mai đựưược không bác',1,'100017865601279','15 29  7 Thang 8  2021','7-8-2021 15:29',1,NULL,NULL,10,'chac de sang mai duuuoc khong bac',466),(1277,'mấất công bác chờ lâu',1,'100017865601279','15 29  7 Thang 8  2021','7-8-2021 15:29',2,NULL,NULL,10,'maat cong bac cho lau',467),(1278,'alo bác',1,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',0,NULL,NULL,10,'alo bac',468),(1279,'e đây',0,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',1,NULL,NULL,10,'e day',469),(1280,'bây giờ được không bác',1,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',2,NULL,NULL,10,'bay gio duoc khong bac',470),(1281,'ko thì để sáng mai cũng đc ạ',1,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',3,NULL,NULL,10,'ko thi de sang mai cung dc a',471),(1282,'đc ạ',0,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',4,NULL,NULL,10,'dc a',472),(1283,'e chờ bác mà :)))',0,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',5,NULL,NULL,10,'e cho bac ma     ',473),(1284,'đang làm mấy vc linh tinh',0,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',6,NULL,NULL,10,'dang lam may vc linh tinh',474),(1285,'bác gửi e ultra đi',0,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',7,NULL,NULL,10,'bac gui e ultra di',475),(1286,'ok bác',1,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',8,NULL,NULL,10,'ok bac',476),(1287,'17 879 329',1,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',9,NULL,NULL,10,'17 879 329',477),(1288,'6232',1,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',10,NULL,NULL,10,'6232',478),(1289,'',0,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',11,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/233600395_341180934318559_8610965113505707122_n.png?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=DP5QkJId_bsAX9COWiJ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=f15ef25f637895f5fa6a27a2a49a0e70&oe=61A6D8F0',NULL,10,'',479),(1290,'35 713 288',0,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',12,NULL,NULL,10,'35 713 288',480),(1291,'2ycodr',0,'100017865601279','15 53  7 Thang 8  2021','7-8-2021 15:53',13,NULL,NULL,10,'2ycodr',481),(1292,'Cuộc gọi thoại\n47 phút',0,'100017865601279','16 43  7 Thang 8  2021','7-8-2021 16:43',0,NULL,NULL,10,'Cuoc goi thoai\n47 phut',482),(1293,'hnay chắc k xong đc mess bác nhỉ',0,'100017865601279','15 34  10 Thang 8  2021','10-8-2021 15:34',0,NULL,NULL,10,'hnay chac k xong dc mess bac nhi',483),(1294,'Dạ hic',1,'100017865601279','15 50  10 Thang 8  2021','10-8-2021 15:50',0,NULL,NULL,10,'Da hic',484),(1295,'Chưa dc đâu bác',1,'100017865601279','15 50  10 Thang 8  2021','10-8-2021 15:50',1,NULL,NULL,10,'Chua dc dau bac',485),(1296,'Mai nha bác',1,'100017865601279','15 50  10 Thang 8  2021','10-8-2021 15:50',2,NULL,NULL,10,'Mai nha bac',486),(1297,'dạ vâng',0,'100017865601279','16 06  10 Thang 8  2021','10-8-2021 16:06',0,NULL,NULL,10,'da vang',487),(1298,'hẹn bác mai nhé',0,'100017865601279','16 06  10 Thang 8  2021','10-8-2021 16:06',1,NULL,NULL,10,'hen bac mai nhe',488),(1299,'dạ ok bác',1,'100017865601279','16 06  10 Thang 8  2021','10-8-2021 16:06',2,NULL,NULL,10,'da ok bac',489),(1300,'Chiều 2h mình họp nha bác',1,'100017865601279','08 42  11 Thang 8  2021','11-8-2021 08:42',0,NULL,NULL,10,'Chieu 2h minh hop nha bac',490),(1301,'em show bác cái nhóm nhân viên',1,'100017865601279','08 42  11 Thang 8  2021','11-8-2021 08:42',1,NULL,NULL,10,'em show bac cai nhom nhan vien',491),(1302,'vs chat',1,'100017865601279','08 42  11 Thang 8  2021','11-8-2021 08:42',2,NULL,NULL,10,'vs chat',492),(1303,'alo bác',0,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',0,NULL,NULL,10,'alo bac',493),(1304,'em đây bác',1,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',1,NULL,NULL,10,'em day bac',494),(1305,'thui sáng mai nha bác',1,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',2,NULL,NULL,10,'thui sang mai nha bac',495),(1306,'h em có chút việc bận rồi ',1,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',3,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'h em co chut viec ban roi',496),(1307,'dạ vâng',0,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',4,NULL,NULL,10,'da vang',497),(1308,'vậy 10h sáng nhé',0,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',5,NULL,NULL,10,'vay 10h sang nhe',498),(1309,'ok bác ạ',1,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',6,NULL,NULL,10,'ok bac a',499),(1310,'hnay nhà e có vc nên cũng k onli',0,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',7,NULL,NULL,10,'hnay nha e co vc nen cung k onli',500),(1311,'Bác mún giống cái gì cũng dc mà',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',28,NULL,NULL,10,'Bac mun giong cai gi cung dc ma',101),(1312,'dạ vâng',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',29,NULL,NULL,10,'da vang',102),(1313,'sáng mai bác tiến hành',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',30,NULL,NULL,10,'sang mai bac tien hanh',103),(1314,'có gì ib nhé',0,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',31,NULL,NULL,10,'co gi ib nhe',104),(1315,'Ok bác',1,'100017865601279','17 17  27 Thang 7  2021','27-7-2021 17:17',32,NULL,NULL,10,'Ok bac',105),(1316,'alo anh',1,'100017865601279','09 15  28 Thang 7  2021','28-7-2021 09:15',0,NULL,NULL,10,'alo anh',106),(1317,'xong vc nào báo e nhé',0,'100017865601279','10 56  28 Thang 7  2021','28-7-2021 10:56',0,NULL,NULL,10,'xong vc nao bao e nhe',107),(1318,'xong bước nào báo e nhé',0,'100017865601279','10 56  28 Thang 7  2021','28-7-2021 10:56',1,NULL,NULL,10,'xong buoc nao bao e nhe',108),(1319,'Ok bác',1,'100017865601279','11 54  28 Thang 7  2021','28-7-2021 11:54',0,NULL,NULL,10,'Ok bac',109),(1320,'hnay xong đc gì k ạ',0,'100017865601279','15 44  28 Thang 7  2021','28-7-2021 15:44',0,NULL,NULL,10,'hnay xong dc gi k a',110),(1321,'Chắc chưa ạ',1,'100017865601279','15 44  28 Thang 7  2021','28-7-2021 15:44',1,NULL,NULL,10,'Chac chua a',111),(1322,'Dựng 1 nền tảng web ngầm',1,'100017865601279','15 44  28 Thang 7  2021','28-7-2021 15:44',2,NULL,NULL,10,'Dung 1 nen tang web ngam',112),(1323,'Xây dựng môi trường để code ạ',1,'100017865601279','15 44  28 Thang 7  2021','28-7-2021 15:44',3,NULL,NULL,10,'Xay dung moi truong de code a',113),(1324,'Chắc để mai mới xong đc 1 phần của chat rồi em đưa lên cho bác xem',1,'100017865601279','15 44  28 Thang 7  2021','28-7-2021 15:44',4,NULL,NULL,10,'Chac de mai moi xong dc 1 phan cua chat roi em dua len cho bac xem',114),(1325,'Để em cố gắng trong ngày mai có gì để cho bác xem',1,'100017865601279','16 10  28 Thang 7  2021','28-7-2021 16:10',0,NULL,NULL,10,'De em co gang trong ngay mai co gi de cho bac xem',115),(1326,'Chứ code bên trong cũng ko thể hiện đc gì ',1,'100017865601279','16 10  28 Thang 7  2021','28-7-2021 16:10',1,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'Chu code ben trong cung ko the hien dc gi',116),(1327,'ok ạ',0,'100017865601279','17 36  28 Thang 7  2021','28-7-2021 17:36',0,NULL,NULL,10,'ok a',117),(1328,'bác ơi',1,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',0,NULL,NULL,10,'bac oi',118),(1329,'e nghe',0,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',1,NULL,NULL,10,'e nghe',119),(1330,'khoảng chiều bác rảnh mình bàn công việc chút ạ',1,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',2,NULL,NULL,10,'khoang chieu bac ranh minh ban cong viec chut a',120),(1331,'bác làm đến đâu r',0,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',3,NULL,NULL,10,'bac lam den dau r',121),(1332,'dựng giao diện người dùng của chat',1,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',4,NULL,NULL,10,'dung giao dien nguoi dung cua chat',122),(1333,'rồi chạy đăng nhập thử',1,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',5,NULL,NULL,10,'roi chay dang nhap thu',123),(1334,'nó cái vài vấn đề',1,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',6,NULL,NULL,10,'no cai vai van de',124),(1335,'h em đi ăn xý chiều mình nói chuyện nha bác',1,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',7,NULL,NULL,10,'h em di an xy chieu minh noi chuyen nha bac',125),(1336,'mấy h ạ',0,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',8,NULL,NULL,10,'may h a',126),(1337,'dạ 2 h ạ',1,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',9,NULL,NULL,10,'da 2 h a',127),(1338,'ok bác',0,'100017865601279','11 34  29 Thang 7  2021','29-7-2021 11:34',10,NULL,NULL,10,'ok bac',128),(1339,'alo',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',0,NULL,NULL,10,'alo',129),(1340,'vâng em đây bác',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',1,NULL,NULL,10,'vang em day bac',130),(1341,'đang định nhắn pác',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',2,NULL,NULL,10,'dang dinh nhan pac',131),(1342,'ae trao đổi chưa ạ',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',3,NULL,NULL,10,'ae trao doi chua a',132),(1343,'e vào ultra',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',4,NULL,NULL,10,'e vao ultra',133),(1344,'máy bác ạ',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',5,NULL,NULL,10,'may bac a',134),(1345,'dạ thực ra thì hok cần ạ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',6,NULL,NULL,10,'da thuc ra thi hok can a',135),(1346,'em hỏi 1 số vẫn đề',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',7,NULL,NULL,10,'em hoi 1 so van de',136),(1347,'vâng bác hỏi đi',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',8,NULL,NULL,10,'vang bac hoi di',137),(1348,'cụ thể là cái lưu chat\n1',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',9,'https://static.xx.fbcdn.net/images/emoji.php/v9/tfc/1/16/1f44d.png',NULL,10,'cu the la cai luu chat\n1',138),(1349,'nhắn tin',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',10,NULL,NULL,10,'nhan tin',139),(1350,'thực tế thì bên fb họ không cho show tin nhắn ở 1 phần mềm khác ngoài fb cung cấp',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',11,NULL,NULL,10,'thuc te thi ben fb ho khong cho show tin nhan o 1 phan mem khac ngoai fb cung cap',140),(1351,'nên có được không khi mình làm chat hoàn toan bên web mình ạ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',12,NULL,NULL,10,'nen co duoc khong khi minh lam chat hoan toan ben web minh a',141),(1352,'vẫn login bằng fb đc',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',13,NULL,NULL,10,'van login bang fb dc',142),(1353,'vậy',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',14,NULL,NULL,10,'vay',143),(1354,'tin nhắn hình ảnh',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',15,NULL,NULL,10,'tin nhan hinh anh',144),(1355,'lưu hết ở web mình ạ',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',16,NULL,NULL,10,'luu het o web minh a',145),(1356,'về hình ảnh cứ gửi bt',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',17,NULL,NULL,10,'ve hinh anh cu gui bt',146),(1357,'mình lưu ở 1 cloub khác đc bác',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',18,NULL,NULL,10,'minh luu o 1 cloub khac dc bac',147),(1358,'vd gg drive',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',19,NULL,NULL,10,'vd gg drive',148),(1359,'mà em sẽ có phần convert nó',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',20,NULL,NULL,10,'ma em se co phan convert no',149),(1360,'sang dạng nhẹ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',21,NULL,NULL,10,'sang dang nhe',150),(1361,'e hiểu',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',22,NULL,NULL,10,'e hieu',151),(1362,'nói chung là đảm bảo về dung lượng',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',23,NULL,NULL,10,'noi chung la dam bao ve dung luong',152),(1363,'vậy dùng laii gg driver',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',24,NULL,NULL,10,'vay dung laii gg driver',153),(1364,'loại gg driver',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',25,NULL,NULL,10,'loai gg driver',154),(1365,'max à bác',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',26,NULL,NULL,10,'max a bac',155),(1366,'thường thì drive mơí tạo nó sẽ cho 25Gb free',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',27,NULL,NULL,10,'thuong thi drive moi tao no se cho 25Gb free',156),(1367,'mà hình sau khi em convert vào khoảng tối đa 20kb',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',28,NULL,NULL,10,'ma hinh sau khi em convert vao khoang toi da 20kb',157),(1368,'vậy giờ có cần cbi sẵn gg driver luôn k',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',29,NULL,NULL,10,'vay gio co can cbi san gg driver luon k',158),(1369,'hay là bác cứ làm',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',30,NULL,NULL,10,'hay la bac cu lam',159),(1370,'dạ ko cần cbj',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',31,NULL,NULL,10,'da ko can cbj',160),(1371,'về sau làm xong e mới gửi gg driver',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',32,NULL,NULL,10,'ve sau lam xong e moi gui gg driver',161),(1372,'đến lúc làm em sẽ cho 1 mục config cho admin',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',33,NULL,NULL,10,'den luc lam em se cho 1 muc config cho admin',162),(1373,'share 1 folder drive là được ạ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',34,NULL,NULL,10,'share 1 folder drive la duoc a',163),(1374,'vậy đến lúc đó',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',35,NULL,NULL,10,'vay den luc do',164),(1375,'e sẽ tạo 1 gg driver',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',36,NULL,NULL,10,'e se tao 1 gg driver',165),(1376,'bác hướng dẫn lưu vào đó',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',37,NULL,NULL,10,'bac huong dan luu vao do',166),(1377,'giúp e nhé',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',38,NULL,NULL,10,'giup e nhe',167),(1378,'',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',39,NULL,NULL,10,'',168),(1379,'à em làm lưu tự động bác',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',40,NULL,NULL,10,'a em lam luu tu dong bac',169),(1380,'bán dán link drive vào là đưược',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',41,NULL,NULL,10,'ban dan link drive vao la duuoc',170),(1381,'ok ạ',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',42,NULL,NULL,10,'ok a',171),(1382,'đến lúc đó bác hướng dẫn e dán nhé',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',43,NULL,NULL,10,'den luc do bac huong dan e dan nhe',172),(1383,'ok ạ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',44,NULL,NULL,10,'ok a',173),(1384,'dạ vấn đề tiếp theo ạ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',45,NULL,NULL,10,'da van de tiep theo a',174),(1385,'bên mình quy mô khoảng bao nhiu người sử dụng 1 lúc ạ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',46,NULL,NULL,10,'ben minh quy mo khoang bao nhiu nguoi su dung 1 luc a',175),(1386,'cái đó để làm gì ạ',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',47,NULL,NULL,10,'cai do de lam gi a',176),(1387,'dạ để bên test ng ta thử quá tải của hệ thống',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',48,NULL,NULL,10,'da de ben test ng ta thu qua tai cua he thong',177),(1388,'ví dụ 100 người',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',49,NULL,NULL,10,'vi du 100 nguoi',178),(1389,'hệ thống có đx k',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',50,NULL,NULL,10,'he thong co dx k',179),(1390,'hay sao ạ',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',51,NULL,NULL,10,'hay sao a',180),(1391,'hosting bác thuê  bữa em thấy nó đáp ứng cho đc khoảng 20 người chat liên tục ạ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',52,NULL,NULL,10,'hosting bac thue bua em thay no dap ung cho dc khoang 20 nguoi chat lien tuc a',181),(1392,'đó là trường hợp spam ak bác',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',53,NULL,NULL,10,'do la truong hop spam ak bac',182),(1393,'cái nào nhit',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',54,NULL,NULL,10,'cai nao nhit',183),(1394,'bác cho e xem cái nào đáp ứng đc k',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',55,NULL,NULL,10,'bac cho e xem cai nao dap ung dc k',184),(1395,'à thôi đưược rồi bác',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',56,NULL,NULL,10,'a thoi duuoc roi bac',185),(1396,'sau này làm có vấn đề thì fix sau',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',57,NULL,NULL,10,'sau nay lam co van de thi fix sau',186),(1397,'ok ạ',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',58,NULL,NULL,10,'ok a',187),(1398,'bác thử xem dùng vps bao nhiêu đx bnhieu ng nhé',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',59,NULL,NULL,10,'bac thu xem dung vps bao nhieu dx bnhieu ng nhe',188),(1399,'để lúc chạy test thử em cho bác con số mà em test',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',60,NULL,NULL,10,'de luc chay test thu em cho bac con so ma em test',189),(1400,'dạ vâng',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',61,NULL,NULL,10,'da vang',190),(1401,'hnay có xem đc giao diện k ạ',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',62,NULL,NULL,10,'hnay co xem dc giao dien k a',191),(1402,'',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',63,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/222266342_502631794368295_3012865401394253990_n.png?_nc_cat=111&ccb=1-5&_nc_sid=aee45a&_nc_ohc=y-tYV5XdMrcAX_DTRud&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=6576424de4cda44c8a435208db01ee41&oe=61A47F74',NULL,10,'',192),(1403,'mới đc 1 ít ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',64,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'moi dc 1 it',193),(1404,'lo bên code quá bên giao diện bị chậm',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',65,NULL,NULL,10,'lo ben code qua ben giao dien bi cham',194),(1405,'dạ vâng',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',66,NULL,NULL,10,'da vang',195),(1406,'vậy có giao diện lập tài khoản',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',67,NULL,NULL,10,'vay co giao dien lap tai khoan',196),(1407,'bác cho e xem nhé',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',68,NULL,NULL,10,'bac cho e xem nhe',197),(1408,'ok bác',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',69,NULL,NULL,10,'ok bac',198),(1409,'quản trị viên là nhắn tin đc',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',70,NULL,NULL,10,'quan tri vien la nhan tin dc',199),(1410,'ctv là có thể nhắn tin ỏr chỉ xem tin nhắn',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',71,NULL,NULL,10,'ctv la co the nhan tin or chi xem tin nhan',200),(1411,'dạ',1,'100017865601279','16 29  11 Thang 8  2021','11-8-2021 16:29',8,NULL,NULL,10,'da',501),(1412,'2h nhé bác',0,'100017865601279','09 56  12 Thang 8  2021','12-8-2021 09:56',0,NULL,NULL,10,'2h nhe bac',502),(1413,'sáng e lại có vc',0,'100017865601279','09 56  12 Thang 8  2021','12-8-2021 09:56',1,NULL,NULL,10,'sang e lai co vc',503),(1414,'',0,'100017865601279','09 56  12 Thang 8  2021','12-8-2021 09:56',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/t85/1/32/1f641.png',NULL,10,'',504),(1415,'ok bác ạ',1,'100017865601279','09 56  12 Thang 8  2021','12-8-2021 09:56',3,NULL,NULL,10,'ok bac a',505),(1416,'alo bác',0,'100017865601279','14 03  12 Thang 8  2021','12-8-2021 14:03',0,NULL,NULL,10,'alo bac',506),(1417,'Chờ em xý nha bác',1,'100017865601279','14 03  12 Thang 8  2021','12-8-2021 14:03',1,NULL,NULL,10,'Cho em xy nha bac',507),(1418,'ok ạ',0,'100017865601279','14 03  12 Thang 8  2021','12-8-2021 14:03',2,NULL,NULL,10,'ok a',508),(1419,'xong báo e',0,'100017865601279','14 03  12 Thang 8  2021','12-8-2021 14:03',3,NULL,NULL,10,'xong bao e',509),(1420,'Ok ạ',1,'100017865601279','14 03  12 Thang 8  2021','12-8-2021 14:03',4,NULL,NULL,10,'Ok a',510),(1421,'alo bác',1,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',0,NULL,NULL,10,'alo bac',511),(1422,'e đây',0,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',1,NULL,NULL,10,'e day',512),(1423,'e vào ultra bác nhé',0,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',2,NULL,NULL,10,'e vao ultra bac nhe',513),(1424,'mình bàn nhanh rồi em làm việc bác nhé',1,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',3,NULL,NULL,10,'minh ban nhanh roi em lam viec bac nhe',514),(1425,'vâng',0,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',4,NULL,NULL,10,'vang',515),(1426,'bác vào máy em đi ạ',1,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',5,NULL,NULL,10,'bac vao may em di a',516),(1427,'gửi e ultra ạ',0,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',6,NULL,NULL,10,'gui e ultra a',517),(1428,'17 879 329',1,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',7,NULL,NULL,10,'17 879 329',518),(1429,'7950',1,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',8,NULL,NULL,10,'7950',519),(1430,'Cuộc gọi thoại\n14:21',1,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',9,NULL,NULL,10,'Cuoc goi thoai\n14 21',520),(1431,'',0,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',10,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/225796620_3076828475970385_2067788701236355153_n.png?_nc_cat=107&ccb=1-5&_nc_sid=aee45a&_nc_ohc=FSxqMd69qBMAX8cYujH&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=32629544f3478da0d0a8f4f2d4573203&oe=61A600AB',NULL,10,'',521),(1432,'',0,'100017865601279','14 19  12 Thang 8  2021','12-8-2021 14:19',11,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/232596853_807485603281616_9083840784626734833_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=mNKKLOG4hz0AX_lMBpS&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=7ab19b6fa6b1fc968dee06335b4ec7e8&oe=61A64A73',NULL,10,'',522),(1433,'4 - nhóm 1 . kế tóan và thủ quỹ -> tạo nhiều qtv -> tạo nhiều ctv ( có thể tìm đc tên )',0,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',0,NULL,NULL,10,'4   nhom 1   ke toan va thu quy    tao nhieu qtv    tao nhieu ctv   co the tim dc ten  ',523),(1434,'TEAM A - THỦ QUỸ + KẾ TOÁN ( TẠO NICK PASS NGAY NGOÀI )',1,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',1,NULL,NULL,10,'TEAM A   THU QUY   KE TOAN   TAO NICK PASS NGAY NGOAI  ',524),(1435,'KHI ĐĂNG NHẬP VÀO TEAM A - MÌNH SẼ TẠO ĐC NHIỀU QTV',1,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',2,NULL,NULL,10,'KHI DANG NHAP VAO TEAM A   MINH SE TAO DC NHIEU QTV',525),(1436,'TRONG QTV - TẠO ĐC NHIỀU CTV',1,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',3,NULL,NULL,10,'TRONG QTV   TAO DC NHIEU CTV',526),(1437,'LỚP 1 : TẠO NHÓM ( TRONG NHÓM ĐÓ SẼ TẠO ĐC 1 KÊ TOÁN . 1 THỦ QUỸ VÀ NHIỀU CTV )',0,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',4,NULL,NULL,10,'LOP 1   TAO NHOM   TRONG NHOM DO SE TAO DC 1 KE TOAN   1 THU QUY VA NHIEU CTV  ',527),(1438,'LỚP 2 : KHI ẤN VÀO CTV . THÌ RA TẤT CTV CỦA QTV ĐÓ',0,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',5,NULL,NULL,10,'LOP 2   KHI AN VAO CTV   THI RA TAT CTV CUA QTV DO',528),(1439,'thì khi phân quyền cho QTV để tạo CTV . thì chỉ cần phan quyền LỚP 2',0,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',6,NULL,NULL,10,'thi khi phan quyen cho QTV de tao CTV   thi chi can phan quyen LOP 2',529),(1440,'LỌC TÊN . THÌ LỌC ĐC TOÀN BỘ 2 LỚP GÔM LỚP 1 VÀ LỚP 2',0,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',7,NULL,NULL,10,'LOC TEN   THI LOC DC TOAN BO 2 LOP GOM LOP 1 VA LOP 2',530),(1441,'Cuộc gọi thoại\n48 phút',0,'100017865601279','14 58  12 Thang 8  2021','12-8-2021 14:58',8,NULL,NULL,10,'Cuoc goi thoai\n48 phut',531),(1442,'dạ bác ơi có gì bác cho em thời gian thứ 2 sẽ kết nối chat hoàn chỉnh cho bác sử dụng nha bác',1,'100017865601279','14 51  13 Thang 8  2021','13-8-2021 14:51',0,NULL,NULL,10,'da bac oi co gi bac cho em thoi gian thu 2 se ket noi chat hoan chinh cho bac su dung nha bac',532),(1443,'dạ vâng ok bác ạ',0,'100017865601279','14 51  13 Thang 8  2021','13-8-2021 14:51',1,NULL,NULL,10,'da vang ok bac a',533),(1444,'',0,'100017865601279','14 51  13 Thang 8  2021','13-8-2021 14:51',2,NULL,NULL,10,'',534),(1445,'ok cảm ơn bác ạ',1,'100017865601279','14 51  13 Thang 8  2021','13-8-2021 14:51',3,NULL,NULL,10,'ok cam on bac a',535),(1446,'bác ơi chiều 2h mình họp nha bác',1,'100017865601279','08 28  16 Thang 8  2021','16-8-2021 08:28',0,NULL,NULL,10,'bac oi chieu 2h minh hop nha bac',536),(1447,'em cho bác xem phần nhóm nhân viên',1,'100017865601279','08 28  16 Thang 8  2021','16-8-2021 08:28',1,NULL,NULL,10,'em cho bac xem phan nhom nhan vien',537),(1448,'chat web',1,'100017865601279','08 28  16 Thang 8  2021','16-8-2021 08:28',2,NULL,NULL,10,'chat web',538),(1449,'và chat từ fb qua',1,'100017865601279','08 28  16 Thang 8  2021','16-8-2021 08:28',3,NULL,NULL,10,'va chat tu fb qua',539),(1450,'ok ạ',0,'100017865601279','12 39  16 Thang 8  2021','16-8-2021 12:39',0,NULL,NULL,10,'ok a',540),(1451,'Bác ơi sáng mai được không bác',1,'100017865601279','13 39  16 Thang 8  2021','16-8-2021 13:39',0,NULL,NULL,10,'Bac oi sang mai duoc khong bac',541),(1452,'Nhà em cbj đi lấy mẫu',1,'100017865601279','13 39  16 Thang 8  2021','16-8-2021 13:39',1,NULL,NULL,10,'Nha em cbj di lay mau',542),(1453,'',1,'100017865601279','13 39  16 Thang 8  2021','16-8-2021 13:39',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,'',543),(1454,'dạ vâng',0,'100017865601279','13 57  16 Thang 8  2021','16-8-2021 13:57',0,NULL,NULL,10,'da vang',544),(1455,'vậy sáng mai',0,'100017865601279','13 57  16 Thang 8  2021','16-8-2021 13:57',1,NULL,NULL,10,'vay sang mai',545),(1456,'hoaiwc chiều muộn nếu bác rảnh báo e',0,'100017865601279','13 57  16 Thang 8  2021','16-8-2021 13:57',2,NULL,NULL,10,'hoaiwc chieu muon neu bac ranh bao e',546),(1457,'Ok bác',1,'100017865601279','14 13  16 Thang 8  2021','16-8-2021 14:13',0,NULL,NULL,10,'Ok bac',547),(1458,'sáng nay mình làm việc xý đưược không bác',1,'100017865601279','09 00  17 Thang 8  2021','17-8-2021 09:00',0,NULL,NULL,10,'sang nay minh lam viec xy duuoc khong bac',548),(1459,'show bác xem mấy thứ',1,'100017865601279','09 00  17 Thang 8  2021','17-8-2021 09:00',1,NULL,NULL,10,'show bac xem may thu',549),(1460,'khá ngon',1,'100017865601279','09 00  17 Thang 8  2021','17-8-2021 09:00',2,NULL,NULL,10,'kha ngon',550),(1461,'đêm qua e làm muộn quá',0,'100017865601279','12 05  17 Thang 8  2021','17-8-2021 12:05',0,NULL,NULL,10,'dem qua e lam muon qua',551),(1462,'2h bác nhé',0,'100017865601279','12 05  17 Thang 8  2021','17-8-2021 12:05',1,NULL,NULL,10,'2h bac nhe',552),(1463,'Ok ạ',1,'100017865601279','12 34  17 Thang 8  2021','17-8-2021 12:34',0,NULL,NULL,10,'Ok a',553),(1464,'alo',0,'100017865601279','14 01  17 Thang 8  2021','17-8-2021 14:01',0,NULL,NULL,10,'alo',554),(1465,'bác online chưa',0,'100017865601279','14 01  17 Thang 8  2021','17-8-2021 14:01',1,NULL,NULL,10,'bac online chua',555),(1466,'Chờ em tý nha bác',1,'100017865601279','14 01  17 Thang 8  2021','17-8-2021 14:01',2,NULL,NULL,10,'Cho em ty nha bac',556),(1467,'Đang kẹt ít việc ạ',1,'100017865601279','14 01  17 Thang 8  2021','17-8-2021 14:01',3,NULL,NULL,10,'Dang ket it viec a',557),(1468,'ok ạ',0,'100017865601279','14 01  17 Thang 8  2021','17-8-2021 14:01',4,NULL,NULL,10,'ok a',558),(1469,'mấy h xong ạ . tại tầm 3h hơn e phải đi có vc',0,'100017865601279','14 25  17 Thang 8  2021','17-8-2021 14:25',0,NULL,NULL,10,'may h xong a   tai tam 3h hon e phai di co vc',559),(1470,'Dạ vậy để trễ trễ cũng dc ạ',1,'100017865601279','14 48  17 Thang 8  2021','17-8-2021 14:48',0,NULL,NULL,10,'Da vay de tre tre cung dc a',560),(1471,'H em còn lu bu quá',1,'100017865601279','14 48  17 Thang 8  2021','17-8-2021 14:48',1,NULL,NULL,10,'H em con lu bu qua',561),(1472,'',1,'100017865601279','14 48  17 Thang 8  2021','17-8-2021 14:48',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/t85/1/32/1f641.png',NULL,10,'',562),(1473,'ok ạ',0,'100017865601279','14 48  17 Thang 8  2021','17-8-2021 14:48',3,NULL,NULL,10,'ok a',563),(1474,'Chưa ngồi vào máy đc',1,'100017865601279','14 48  17 Thang 8  2021','17-8-2021 14:48',4,NULL,NULL,10,'Chua ngoi vao may dc',564),(1475,'Dạ bác',1,'100017865601279','14 48  17 Thang 8  2021','17-8-2021 14:48',5,NULL,NULL,10,'Da bac',565),(1476,'bác về chưa ạ',1,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',0,NULL,NULL,10,'bac ve chua a',566),(1477,'e chưa',0,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',1,NULL,NULL,10,'e chua',567),(1478,'dạ vậy để mai vậy',1,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',2,NULL,NULL,10,'da vay de mai vay',568),(1479,'',1,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',3,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',569),(1480,'chắc phải 5h30 or 6h ạ',0,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',4,NULL,NULL,10,'chac phai 5h30 or 6h a',570),(1481,'hay để tối đc k',0,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',5,NULL,NULL,10,'hay de toi dc k',571),(1482,'rảnh 30p',0,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',6,NULL,NULL,10,'ranh 30p',572),(1483,'tối chỉ chat đc thôi ạ',1,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',7,NULL,NULL,10,'toi chi chat dc thoi a',573),(1484,'tại em có con nhỏ',1,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',8,NULL,NULL,10,'tai em co con nho',574),(1485,'tối nó ngủ bên cạnh',1,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',9,NULL,NULL,10,'toi no ngu ben canh',575),(1486,'không nc dc ạ',1,'100017865601279','16 49  17 Thang 8  2021','17-8-2021 16:49',10,NULL,NULL,10,'khong nc dc a',576),(1487,'hóng web quá ',0,'100017865601279','17 30  17 Thang 8  2021','17-8-2021 17:30',0,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'hong web qua',577),(1488,'Em cũng hóng mà bác :)))',1,'100017865601279','18 06  17 Thang 8  2021','17-8-2021 18:06',0,NULL,NULL,10,'Em cung hong ma bac     ',578),(1489,'giờ e mới về',0,'100017865601279','18 50  17 Thang 8  2021','17-8-2021 18:50',0,NULL,NULL,10,'gio e moi ve',579),(1490,'thế để sáng mai 10h nhé ạ',0,'100017865601279','18 50  17 Thang 8  2021','17-8-2021 18:50',1,NULL,NULL,10,'the de sang mai 10h nhe a',580),(1491,'Ok bác ạ',1,'100017865601279','19 34  17 Thang 8  2021','17-8-2021 19:34',0,NULL,NULL,10,'Ok bac a',581),(1492,'khi nào bác ổn báo em nhé bác',1,'100017865601279','09 36  18 Thang 8  2021','18-8-2021 09:36',0,NULL,NULL,10,'khi nao bac on bao em nhe bac',582),(1493,'',1,'100017865601279','09 36  18 Thang 8  2021','18-8-2021 09:36',1,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',583),(1494,'alo',0,'100017865601279','09 36  18 Thang 8  2021','18-8-2021 09:36',2,NULL,NULL,10,'alo',584),(1495,'10h30 bác nhé',0,'100017865601279','09 36  18 Thang 8  2021','18-8-2021 09:36',3,NULL,NULL,10,'10h30 bac nhe',585),(1496,'ok ạ',1,'100017865601279','09 36  18 Thang 8  2021','18-8-2021 09:36',4,NULL,NULL,10,'ok a',586),(1497,'alo bác',0,'100017865601279','10 34  18 Thang 8  2021','18-8-2021 10:34',0,NULL,NULL,10,'alo bac',587),(1498,'gửi e ultra',0,'100017865601279','10 34  18 Thang 8  2021','18-8-2021 10:34',1,NULL,NULL,10,'gui e ultra',588),(1499,'đay ạ',1,'100017865601279','10 34  18 Thang 8  2021','18-8-2021 10:34',2,NULL,NULL,10,'day a',589),(1500,'ok ạ',1,'100017865601279','10 34  18 Thang 8  2021','18-8-2021 10:34',3,NULL,NULL,10,'ok a',590),(1501,'17 879 329',1,'100017865601279','10 34  18 Thang 8  2021','18-8-2021 10:34',4,NULL,NULL,10,'17 879 329',591),(1502,'3703',1,'100017865601279','10 34  18 Thang 8  2021','18-8-2021 10:34',5,NULL,NULL,10,'3703',592),(1503,'https://docs.google.com/spreadsheets/d/1_rDOEujrRtowiz8DqzEqAT3iNjvl07Wu6SoUG30Yd6I/edit?fbclid=IwAR3R-bh8ClOLe75iY3xoooUA_-G_kC--9Ekavwqt1UFu0l5_vtcetwCZTUw#gid=1496578435\nGoogle Sheets - create and edit spreadsheets online, for free.\naccounts.google.com',0,'100017865601279','10 54  18 Thang 8  2021','18-8-2021 10:54',0,'https://external.xx.fbcdn.net/safe_image.php?d=AQGfRUQUFOc4uhIv&w=192&h=100&url=https%3A%2F%2Fssl.gstatic.com%2Faccounts%2Fui%2Favatar_2x.png&cfs=1&sx=0&sy=30&sw=192&sh=100&ext=emg0&_nc_oe=6ef65&_nc_sid=632586&ccb=3-5&_nc_hash=AQGKoipRWjgbOGr3',NULL,10,'https   docs google com spreadsheets d 1 rDOEujrRtowiz8DqzEqAT3iNjvl07Wu6SoUG30Yd6I edit fbclid IwAR3R bh8ClOLe75iY3xoooUA  G kC  9Ekavwqt1UFu0l5 vtcetwCZTUw gid 1496578435\nGoogle Sheets   create and edit spreadsheets online  for free \naccounts google com',593),(1504,'giới hạn 1 nhóm kinh doanh tạo bao nhiêu ctv',0,'100017865601279','11 14  18 Thang 8  2021','18-8-2021 11:14',0,NULL,NULL,10,'gioi han 1 nhom kinh doanh tao bao nhieu ctv',594),(1505,'Cuộc gọi thoại\n42 phút',1,'100017865601279','11 14  18 Thang 8  2021','18-8-2021 11:14',1,NULL,NULL,10,'Cuoc goi thoai\n42 phut',595),(1506,'',1,'100017865601279','11 14  18 Thang 8  2021','18-8-2021 11:14',2,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s403x403/179686092_920570555405166_1955373864411682007_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=aee45a&_nc_ohc=ghVAB7vQJ38AX830dLu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=af1699f48c2378b2c8a9acabf0a52830&oe=61A49183',NULL,10,'',596),(1507,'Em gửi bác ạ',1,'100017865601279','11 14  18 Thang 8  2021','18-8-2021 11:14',3,NULL,NULL,10,'Em gui bac a',597),(1508,'e vừa gửi 2tr r đó ạ',0,'100017865601279','11 33  18 Thang 8  2021','18-8-2021 11:33',0,NULL,NULL,10,'e vua gui 2tr r do a',598),(1509,'bác nhận dcd hcuwa',0,'100017865601279','11 33  18 Thang 8  2021','18-8-2021 11:33',1,NULL,NULL,10,'bac nhan dcd hcuwa',599),(1510,'Dạ dc rồi bác',1,'100017865601279','12 29  18 Thang 8  2021','18-8-2021 12:29',0,NULL,NULL,10,'Da dc roi bac',600),(1511,'nếu qtv đồng ý',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',72,NULL,NULL,10,'neu qtv dong y',201),(1512,'còn kế toán và thủ kho k đc xem giao diện tin nhắn',0,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',73,NULL,NULL,10,'con ke toan va thu kho k dc xem giao dien tin nhan',202),(1513,'sẽ có 1 trang phân quyền riêng bác ạ',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',74,NULL,NULL,10,'se co 1 trang phan quyen rieng bac a',203),(1514,'các quyền đó được chia thành các loại quuyền',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',75,NULL,NULL,10,'cac quyen do duoc chia thanh cac loai quuyen',204),(1515,'QTV',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',76,NULL,NULL,10,'QTV',205),(1516,'CTV',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',77,NULL,NULL,10,'CTV',206),(1517,'TK',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',78,NULL,NULL,10,'TK',207),(1518,'KT',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',79,NULL,NULL,10,'KT',208),(1519,'khi tạo 1 người mới',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',80,NULL,NULL,10,'khi tao 1 nguoi moi',209),(1520,'chọn chức vụ cho họ là đưược',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',81,NULL,NULL,10,'chon chuc vu cho ho la duuoc',210),(1521,'hệ thống này trc kia em có làm rồi ạ\n1',1,'100017865601279','13 59  29 Thang 7  2021','29-7-2021 13:59',82,'https://static.xx.fbcdn.net/images/emoji.php/v9/tfc/1/16/1f44d.png',NULL,10,'he thong nay trc kia em co lam roi a\n1',211),(1522,'dạok',0,'100017865601279','15 12  29 Thang 7  2021','29-7-2021 15:12',0,NULL,NULL,10,'daok',212),(1523,'à về quyên admin khi set QTV',0,'100017865601279','17 48  29 Thang 7  2021','29-7-2021 17:48',0,NULL,NULL,10,'a ve quyen admin khi set QTV',213),(1524,'thêm phần số lượng QTV đc tạo CTV nhé',0,'100017865601279','17 48  29 Thang 7  2021','29-7-2021 17:48',1,NULL,NULL,10,'them phan so luong QTV dc tao CTV nhe',214),(1525,'ví dụ 10 . thì QTV chỉ đc tạo 10 CTV thôi',0,'100017865601279','17 48  29 Thang 7  2021','29-7-2021 17:48',2,NULL,NULL,10,'vi du 10   thi QTV chi dc tao 10 CTV thoi',215),(1526,'lúc tạo QTV hay CTV đều có phần : \nnick : \npass : \nSĐT :\nĐịa chỉ :\nEmail : \nnhé bác',0,'100017865601279','17 48  29 Thang 7  2021','29-7-2021 17:48',3,NULL,NULL,10,'luc tao QTV hay CTV deu co phan   \nnick   \npass   \nSDT  \nDia chi  \nEmail   \nnhe bac',216),(1527,'Ok bác',1,'100017865601279','18 08  29 Thang 7  2021','29-7-2021 18:08',0,NULL,NULL,10,'Ok bac',217),(1528,'',1,'100017865601279','09 19  30 Thang 7  2021','30-7-2021 09:19',0,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/218210624_6164902583527651_416243916880251220_n.png?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=R1fVUbUXSUsAX_IDuiT&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=60640999304557711c7a3c6fa71b2671&oe=61A7E283',NULL,10,'',218),(1529,'giao diện chat cơ bản ạ',1,'100017865601279','09 19  30 Thang 7  2021','30-7-2021 09:19',1,NULL,NULL,10,'giao dien chat co ban a',219),(1530,'có mấy hiển thị đế chỉnh lại sau ạ',1,'100017865601279','09 19  30 Thang 7  2021','30-7-2021 09:19',2,NULL,NULL,10,'co may hien thi de chinh lai sau a',220),(1531,'cho e vào xem đc k',0,'100017865601279','09 19  30 Thang 7  2021','30-7-2021 09:19',3,NULL,NULL,10,'cho e vao xem dc k',221),(1532,'zj để em up cái giao diện lên trước cho bác xem',1,'100017865601279','09 19  30 Thang 7  2021','30-7-2021 09:19',4,NULL,NULL,10,'zj de em up cai giao dien len truoc cho bac xem',222),(1533,'https://drive.google.com/file/d/1ocVaF5GCaqTwabN8x-1LTZEDvKYI-sb9/view?usp=sharing\ntest public.zip\ndrive.google.com',1,'100017865601279','09 47  30 Thang 7  2021','30-7-2021 09:47',0,NULL,NULL,10,'https   drive google com file d 1ocVaF5GCaqTwabN8x 1LTZEDvKYI sb9 view usp sharing\ntest public zip\ndrive google com',223),(1534,'anh tải về rồi chạy file chat',1,'100017865601279','09 47  30 Thang 7  2021','30-7-2021 09:47',1,NULL,NULL,10,'anh tai ve roi chay file chat',224),(1535,'trong thư mục view ạ',1,'100017865601279','09 47  30 Thang 7  2021','30-7-2021 09:47',2,NULL,NULL,10,'trong thu muc view a',225),(1536,'nó dính mấấy file hệ thống chưa xong nên chưa public lên hosting đc',1,'100017865601279','09 47  30 Thang 7  2021','30-7-2021 09:47',3,NULL,NULL,10,'no dinh maay file he thong chua xong nen chua public len hosting dc',226),(1537,'anh xem đỡ ở đây cái giao diện',1,'100017865601279','09 47  30 Thang 7  2021','30-7-2021 09:47',4,NULL,NULL,10,'anh xem do o day cai giao dien',227),(1538,'phải đăng nhập trực tiếp nick pass fb vào à bác',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',0,NULL,NULL,10,'phai dang nhap truc tiep nick pass fb vao a bac',228),(1539,'chứ k kiểu liên kết ạ',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',1,NULL,NULL,10,'chu k kieu lien ket a',229),(1540,'dạ có 2 kiểu 1 là đăng nhập vào bằng user của web',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',2,NULL,NULL,10,'da co 2 kieu 1 la dang nhap vao bang user cua web',230),(1541,'2 là đăng nhập bằng Fb',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',3,NULL,NULL,10,'2 la dang nhap bang Fb',231),(1542,'e muốn kết đăng nhập vào user web .',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',4,NULL,NULL,10,'e muon ket dang nhap vao user web  ',232),(1543,'xong có liên kết với fb í',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',5,NULL,NULL,10,'xong co lien ket voi fb i',233),(1544,'thì khi đăng nhập là nó liên kết mà',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',6,NULL,NULL,10,'thi khi dang nhap la no lien ket ma',234),(1545,'à',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',7,NULL,NULL,10,'a',235),(1546,'bác muốn lấy thông tin gì từ fb sau khi đăng nhập ạ',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',8,NULL,NULL,10,'bac muon lay thong tin gi tu fb sau khi dang nhap a',236),(1547,'nghĩa là bác làm 2 dạng luôn à',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',9,NULL,NULL,10,'nghia la bac lam 2 dang luon a',237),(1548,'đăng nhập user cũng đc',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',10,NULL,NULL,10,'dang nhap user cung dc',238),(1549,'uhm 2 dạng song song ạ',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',11,NULL,NULL,10,'uhm 2 dang song song a',239),(1550,'và đăng nhập fb cũng đc',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',12,NULL,NULL,10,'va dang nhap fb cung dc',240),(1551,'đúng rồi ạ',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',13,NULL,NULL,10,'dung roi a',241),(1552,'hay phải đăng nhập cả user cả fb',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',14,NULL,NULL,10,'hay phai dang nhap ca user ca fb',242),(1553,'1 trong 2 cái là đc ạ',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',15,NULL,NULL,10,'1 trong 2 cai la dc a',243),(1554,'ví dụ e k tạo tài khoản cho FB C',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',16,NULL,NULL,10,'vi du e k tao tai khoan cho FB C',244),(1555,'mà FB C đăng nhập',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',17,NULL,NULL,10,'ma FB C dang nhap',245),(1556,'vậy có đc k ?',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',18,NULL,NULL,10,'vay co dc k  ',246),(1557,'đc bác',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',19,NULL,NULL,10,'dc bac',247),(1558,'lúc đó bác chỉ định fb là nào của ai là ng đó dùng fb đăng nhập đc ạ',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',20,NULL,NULL,10,'luc do bac chi dinh fb la nao cua ai la ng do dung fb dang nhap dc a',248),(1559,'ý e là k tạo tạif khoản',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',21,NULL,NULL,10,'y e la k tao taif khoan',249),(1560,'họ vẫn đăng nhập fb đc á',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',22,NULL,NULL,10,'ho van dang nhap fb dc a',250),(1561,'thì bên ngoài thì họ vẫn đăng nhập bằng fb bình thường',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',23,NULL,NULL,10,'thi ben ngoai thi ho van dang nhap bang fb binh thuong',251),(1562,'nhưng trong hệ thống là tự động sinh ra 1 user riêng ạ',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',24,NULL,NULL,10,'nhung trong he thong la tu dong sinh ra 1 user rieng a',252),(1563,'mà việc tạo user đó là do admin hay ng chỉ định làm mà',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',25,NULL,NULL,10,'ma viec tao user do la do admin hay ng chi dinh lam ma',253),(1564,'thì khi bác tạo thì bác sẽ chỉ định cho ng ta là đăng nhập bằng gì được mà bác',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',26,NULL,NULL,10,'thi khi bac tao thi bac se chi dinh cho ng ta la dang nhap bang gi duoc ma bac',254),(1565,'user riêng đó khi đc k tạo',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',27,NULL,NULL,10,'user rieng do khi dc k tao',255),(1566,'vậy ai cũng đăng nhập fb đc vào á bác',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',28,NULL,NULL,10,'vay ai cung dang nhap fb dc vao a bac',256),(1567,'và vào sẽ đc user tự động á',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',29,NULL,NULL,10,'va vao se dc user tu dong a',257),(1568,'à vậy ý bác là bác ko cần tác động gì hết mà ng ngoài tự đăng nhập vào fb là được hả bác',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',30,NULL,NULL,10,'a vay y bac la bac ko can tac dong gi het ma ng ngoai tu dang nhap vao fb la duoc ha bac',258),(1569,'e gọi cho bác nhé',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',31,NULL,NULL,10,'e goi cho bac nhe',259),(1570,'ok bác',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',32,NULL,NULL,10,'ok bac',260),(1571,'bác gọi đi ạ',1,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',33,NULL,NULL,10,'bac goi di a',261),(1572,'35 713 288',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',34,NULL,NULL,10,'35 713 288',262),(1573,'sldvx2',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',35,NULL,NULL,10,'sldvx2',263),(1574,'',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',36,'https://scontent.xx.fbcdn.net/v/t1.15752-9/225978099_5788599284548026_2916339963852817607_n.png?_nc_cat=111&ccb=1-5&_nc_sid=aee45a&_nc_ohc=EHd6TNI_oHYAX9Rt6Ge&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=83ed9b1573e0beb519de4ab1df582efb&oe=61A5EBFA',NULL,10,'',264),(1575,'lọc thêm nhân viên',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',37,NULL,NULL,10,'loc them nhan vien',265),(1576,'thêm đc tag . và lọc đc tag',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',38,NULL,NULL,10,'them dc tag   va loc dc tag',266),(1577,'tạo đc nhiều tag',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',39,NULL,NULL,10,'tao dc nhieu tag',267),(1578,'',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',40,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s403x403/227509442_2885986284986134_8345266112718656357_n.png?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Y7WixqYcZL0AX8oPfgi&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=3f1c5b09cc22a3e19026f19b5a1e8a70&oe=61A6542C',NULL,10,'',268),(1579,'Cuộc gọi thoại\n22 phút',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',41,NULL,NULL,10,'Cuoc goi thoai\n22 phut',269),(1580,'1 - cái phần bên phải dữ liệu í ạ . bác cho e cái là ấn nó sẽ xổ ra . và ấn nó sẽ thu vào đc k . để phần chat nó hiện đc rộng ra . nếu mình k muốn xem phần dữ liệu í ạ',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',42,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s417x417/225683419_6413419138671897_3594604902500361370_n.png?_nc_cat=106&ccb=1-5&_nc_sid=aee45a&_nc_ohc=sspsyaacYuwAX8rzNQM&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=ad6f9adb7f45bd879c7fef15aa663536&oe=61A51605',NULL,10,'1   cai phan ben phai du lieu i a   bac cho e cai la an no se xo ra   va an no se thu vao dc k   de phan chat no hien dc rong ra   neu minh k muon xem phan du lieu i a',270),(1581,'2 - phần tag bác cho e nằm ở đây nhé',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',43,'https://scontent.xx.fbcdn.net/v/t1.15752-9/228738986_358387029249887_1323602561614591572_n.png?_nc_cat=101&ccb=1-5&_nc_sid=aee45a&_nc_ohc=-V2zWLnw0vQAX9nbBRq&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=01d6fc33923d8555bce73a992a437223&oe=61A677DC',NULL,10,'2   phan tag bac cho e nam o day nhe',271),(1582,'nó giống bên này',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',44,'https://scontent.xx.fbcdn.net/v/t1.15752-9/225865934_554792042343458_4035024717152549039_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=U8AUOyaYvRAAX9wCdjP&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=1c5719747932d0fda828be72d18f28cb&oe=61A51CC6',NULL,10,'no giong ben nay',272),(1583,'xong nó sẽ báo phần tag \nở cạnh chỗ tên trên \nvà ở dưới tên bên trái\n2 chỗ e đánh dấu màu đỏ í ạ',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',45,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/227959810_416084819729101_7141602041086642738_n.png?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=1JLKVNwsuq4AX8fEZTU&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=0491180d7e72bbf00f5aa7ab755bb6a2&oe=61A6B490',NULL,10,'xong no se bao phan tag \no canh cho ten tren \nva o duoi ten ben trai\n2 cho e danh dau mau do i a',273),(1584,'3 - thêm phần lọc nhân viên ,thêm phần  lọc tag',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',46,NULL,NULL,10,'3   them phan loc nhan vien  them phan loc tag',274),(1585,'4 - về đăng ký nó hiện ra cái thông tin : \nLiên hệ đăng ký tài khoản : https://www.facebook.com/vietkahv/\nHotline liên hệ đăng ký : 0825204038\nZalo liên hệ : https://zalo.me/082.520.4038\n\nChú ý : có thể thay đổi ở phần sđt , zalo, fb. bác hướng dẫn e nếu e cần thay đổi nhé\nvà các thông tin fb , zalo . nó hiển thị bằng đường link . ngta ấn vào sẽ ra luôn\nTruong Tung Viet',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',47,'https://scontent.xx.fbcdn.net/v/t1.6435-1/c0.202.320.167a/p320x320/242703222_5004322569583775_5602089506924338304_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=7Z4RfxGgZIUAX9ofmCY&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=76ee637569d4dc48bcc3cd61ce3e5bc5&oe=61A605B4',NULL,10,'4   ve dang ky no hien ra cai thong tin   \nLien he dang ky tai khoan   https   www facebook com vietkahv \nHotline lien he dang ky   0825204038\nZalo lien he   https   zalo me 082 520 4038\n\nChu y   co the thay doi o phan sdt   zalo  fb  bac huong dan e neu e can thay doi nhe\nva cac thong tin fb   zalo   no hien thi bang duong link   ngta an vao se ra luon\nTruong Tung Viet',275),(1586,'5 - thêm phần chọn CTV',0,'100017865601279','10 04  30 Thang 7  2021','30-7-2021 10:04',48,'https://scontent.xx.fbcdn.net/v/t1.15752-9/227763168_1211275132684891_185753644851564662_n.png?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=s5rAvgZrgLsAX_WlDCy&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=05d13e8668055f0219427acc89d85f19&oe=61A7E118',NULL,10,'5   them phan chon CTV',276),(1587,'Ok pác',1,'100017865601279','11 22  30 Thang 7  2021','30-7-2021 11:22',0,NULL,NULL,10,'Ok pac',277),(1588,'alo bác',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',0,NULL,NULL,10,'alo bac',278),(1589,'hnay bác làm k',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',1,NULL,NULL,10,'hnay bac lam k',279),(1590,'dạ cuối tuần em về lý thuyết em ko có làm ạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',2,NULL,NULL,10,'da cuoi tuan em ve ly thuyet em ko co lam a',280),(1591,'nhưng mà lúc nào rảnh là em vào làm chút',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',3,NULL,NULL,10,'nhung ma luc nao ranh la em vao lam chut',281),(1592,'nếu ko kịp deadline em mới làm cuối tuần ạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',4,NULL,NULL,10,'neu ko kip deadline em moi lam cuoi tuan a',282),(1593,'bán cso vấn đề gì cứ trao đổi ạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',5,NULL,NULL,10,'ban cso van de gi cu trao doi a',283),(1594,'tối qua e có mấy cái',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',6,NULL,NULL,10,'toi qua e co may cai',284),(1595,'em vẫn hỗ trợ trong 2 ngày cuối tuần',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',7,NULL,NULL,10,'em van ho tro trong 2 ngay cuoi tuan',285),(1596,'e định trao đổi thêm với bác',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',8,NULL,NULL,10,'e dinh trao doi them voi bac',286),(1597,'nếu được bác có file minh họa thì tốt ạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',9,NULL,NULL,10,'neu duoc bac co file minh hoa thi tot a',287),(1598,'1 - ctv hay quản trị viên',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',10,NULL,NULL,10,'1   ctv hay quan tri vien',288),(1599,'bác đều để cho e bật các chức năng',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',11,NULL,NULL,10,'bac deu de cho e bat cac chuc nang',289),(1600,'sử dụng trang nào đúng k',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',12,NULL,NULL,10,'su dung trang nao dung k',290),(1601,'đúng rồi bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',13,NULL,NULL,10,'dung roi bac',291),(1602,'ví dụ CTV A e chỉ cho nhắn tin',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',14,NULL,NULL,10,'vi du CTV A e chi cho nhan tin',292),(1603,'đúng rồi bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',15,NULL,NULL,10,'dung roi bac',293),(1604,'còn các chức năng khác k đc xem',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',16,NULL,NULL,10,'con cac chuc nang khac k dc xem',294),(1605,'menu bác thấy sẽ khác menu họ thấy',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',17,NULL,NULL,10,'menu bac thay se khac menu ho thay',295),(1606,'phải cho quyền mới thấy đc',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',18,NULL,NULL,10,'phai cho quyen moi thay dc',296),(1607,'nghĩa là e có thể đánh dấu các chức năng của 1 CTV đúng k .',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',19,NULL,NULL,10,'nghia la e co the danh dau cac chuc nang cua 1 CTV dung k  ',297),(1608,'đúng rồi bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',20,NULL,NULL,10,'dung roi bac',298),(1609,'dạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',21,NULL,NULL,10,'da',299),(1610,'2 - về phần nhắn tin',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',22,NULL,NULL,10,'2   ve phan nhan tin',300),(1611,'Em cảm ơn ạ',1,'100017865601279','12 29  18 Thang 8  2021','18-8-2021 12:29',1,NULL,NULL,10,'Em cam on a',601),(1612,'bác ơi',1,'100017865601279','08 56  20 Thang 8  2021','20-8-2021 08:56',0,NULL,NULL,10,'bac oi',602),(1613,'nếu được thì để mai họp nha bác',1,'100017865601279','08 56  20 Thang 8  2021','20-8-2021 08:56',1,NULL,NULL,10,'neu duoc thi de mai hop nha bac',603),(1614,'nay em chưa xong việc ',1,'100017865601279','08 56  20 Thang 8  2021','20-8-2021 08:56',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'nay em chua xong viec',604),(1615,'sr bác ạ',1,'100017865601279','08 56  20 Thang 8  2021','20-8-2021 08:56',3,NULL,NULL,10,'sr bac a',605),(1616,'dạ vâng',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',0,NULL,NULL,10,'da vang',606),(1617,'vậy mai nhé bác',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',1,NULL,NULL,10,'vay mai nhe bac',607),(1618,'Ok ạ',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',2,NULL,NULL,10,'Ok a',608),(1619,'à bác biết về hệ thống dịch vụ',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',3,NULL,NULL,10,'a bac biet ve he thong dich vu',609),(1620,'like / sub ... k ạ',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',4,NULL,NULL,10,'like   sub     k a',610),(1621,'Biết thì biết ạ mà chưa làm tới bao h ạ',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',5,NULL,NULL,10,'Biet thi biet a ma chua lam toi bao h a',611),(1622,'tại e đang muốn tạo hệ thống cho th e làm dịch vụ đó',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',6,NULL,NULL,10,'tai e dang muon tao he thong cho th e lam dich vu do',612),(1623,'đang tìm nguồn tổng',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',7,NULL,NULL,10,'dang tim nguon tong',613),(1624,'bác biết ai làm tổng hệ thống dịch vụ fb insta ... k ạ',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',8,NULL,NULL,10,'bac biet ai lam tong he thong dich vu fb insta     k a',614),(1625,'Dạ chắc em thì không quen ai',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',9,NULL,NULL,10,'Da chac em thi khong quen ai',615),(1626,'Đối tác của em ít làm mạng xã hội lắm',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',10,NULL,NULL,10,'Doi tac cua em it lam mang xa hoi lam',616),(1627,'họ hay làm về gì ạ',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',11,NULL,NULL,10,'ho hay lam ve gi a',617),(1628,'e tưởng mxh',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',12,NULL,NULL,10,'e tuong mxh',618),(1629,'mới tìm đc khách hàng',0,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',13,NULL,NULL,10,'moi tim dc khach hang',619),(1630,'Dạ bên em trc h hay làm bên tự động hóa',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',14,NULL,NULL,10,'Da ben em trc h hay lam ben tu dong hoa',620),(1631,'Quản lý',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',15,NULL,NULL,10,'Quan ly',621),(1632,'App mobile',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',16,NULL,NULL,10,'App mobile',622),(1633,'Làm tool bên mạng xã hội là do em  tìm thêm để làm thôi',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',17,NULL,NULL,10,'Lam tool ben mang xa hoi la do em tim them de lam thoi',623),(1634,'Nói chung là làm vẫn được nhưng mà thời gian hơi lâu chút',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',18,NULL,NULL,10,'Noi chung la lam van duoc nhung ma thoi gian hoi lau chut',624),(1635,'Vì căn bản nó cũng là lập trình thôi ạ',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',19,NULL,NULL,10,'Vi can ban no cung la lap trinh thoi a',625),(1636,'Có yêu cầu có giải pháp là làm dc hết thôi',1,'100017865601279','11 58  20 Thang 8  2021','20-8-2021 11:58',20,NULL,NULL,10,'Co yeu cau co giai phap la lam dc het thoi',626),(1637,'dạ vâng',0,'100017865601279','12 26  20 Thang 8  2021','20-8-2021 12:26',0,NULL,NULL,10,'da vang',627),(1638,'e thì toàn fb',0,'100017865601279','12 26  20 Thang 8  2021','20-8-2021 12:26',1,NULL,NULL,10,'e thi toan fb',628),(1639,'tại fb nhiều tài nguyên data phục vụ mkt',0,'100017865601279','12 26  20 Thang 8  2021','20-8-2021 12:26',2,NULL,NULL,10,'tai fb nhieu tai nguyen data phuc vu mkt',629),(1640,'Dạ',1,'100017865601279','12 26  20 Thang 8  2021','20-8-2021 12:26',3,NULL,NULL,10,'Da',630),(1641,'alo ạ',0,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',0,NULL,NULL,10,'alo a',631),(1642,'chiều 2h họp đc k ạ',0,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',1,NULL,NULL,10,'chieu 2h hop dc k a',632),(1643,'Dc bác ạ',1,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',2,NULL,NULL,10,'Dc bac a',633),(1644,'Bữa h em cũng lu bu quá ạ',1,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',3,NULL,NULL,10,'Bua h em cung lu bu qua a',634),(1645,'ok ạ',0,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',4,NULL,NULL,10,'ok a',635),(1646,'Alo bác ơi',1,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',5,NULL,NULL,10,'Alo bac oi',636),(1647,'3h đc ko bác',1,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',6,NULL,NULL,10,'3h dc ko bac',637),(1648,'đc ạ',0,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',7,NULL,NULL,10,'dc a',638),(1649,'Dạ vâng',1,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',8,NULL,NULL,10,'Da vang',639),(1650,'chiều e rảnh',0,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',9,NULL,NULL,10,'chieu e ranh',640),(1651,'Ok bác',1,'100017865601279','10 06  23 Thang 8  2021','23-8-2021 10:06',10,NULL,NULL,10,'Ok bac',641),(1652,'alo bác',1,'100017865601279','14 41  23 Thang 8  2021','23-8-2021 14:41',0,NULL,NULL,10,'alo bac',642),(1653,'mình họp tý đưược chưa bác',1,'100017865601279','14 41  23 Thang 8  2021','23-8-2021 14:41',1,NULL,NULL,10,'minh hop ty duuoc chua bac',643),(1654,'em chưa xong nhưng mà có mấy cái phải hỏi bác',1,'100017865601279','14 41  23 Thang 8  2021','23-8-2021 14:41',2,NULL,NULL,10,'em chua xong nhung ma co may cai phai hoi bac',644),(1655,'alo ạ',0,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',0,NULL,NULL,10,'alo a',645),(1656,'vâng đây bác',1,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',1,NULL,NULL,10,'vang day bac',646),(1657,'chờ bác nãy h',1,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',2,NULL,NULL,10,'cho bac nay h',647),(1658,'',1,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',3,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',648),(1659,'bác hỏi gì ạ',0,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',4,NULL,NULL,10,'bac hoi gi a',649),(1660,'gueir e ultra nhé',0,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',5,NULL,NULL,10,'gueir e ultra nhe',650),(1661,'ok bác',1,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',6,NULL,NULL,10,'ok bac',651),(1662,'17 879 329',1,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',7,NULL,NULL,10,'17 879 329',652),(1663,'3998',1,'100017865601279','15 18  23 Thang 8  2021','23-8-2021 15:18',8,NULL,NULL,10,'3998',653),(1664,'Cuộc gọi thoại\n19 phút',0,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',0,NULL,NULL,10,'Cuoc goi thoai\n19 phut',654),(1665,'sr bác nha',1,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',1,NULL,NULL,10,'sr bac nha',655),(1666,'phần mềm nó đi hơi xa',1,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',2,NULL,NULL,10,'phan mem no di hoi xa',656),(1667,'để em chỉnh lại rồi em báo bác',1,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',3,NULL,NULL,10,'de em chinh lai roi em bao bac',657),(1668,'daj vanag',0,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',4,NULL,NULL,10,'daj vanag',658),(1669,'à e hỏi chút',0,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',5,NULL,NULL,10,'a e hoi chut',659),(1670,'e gọi lại nhé',0,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',6,NULL,NULL,10,'e goi lai nhe',660),(1671,'ok ba',1,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',7,NULL,NULL,10,'ok ba',661),(1672,'Cuộc gọi thoại\n3 phút',0,'100017865601279','15 40  23 Thang 8  2021','23-8-2021 15:40',8,NULL,NULL,10,'Cuoc goi thoai\n3 phut',662),(1673,'alo bác',1,'100017865601279','15 21  25 Thang 8  2021','25-8-2021 15:21',0,NULL,NULL,10,'alo bac',663),(1674,'mai mình họp bác nhé',1,'100017865601279','15 21  25 Thang 8  2021','25-8-2021 15:21',1,NULL,NULL,10,'mai minh hop bac nhe',664),(1675,'em trình bày bác giải pháp',1,'100017865601279','15 21  25 Thang 8  2021','25-8-2021 15:21',2,NULL,NULL,10,'em trinh bay bac giai phap',665),(1676,'bác ok em làm luôn',1,'100017865601279','15 21  25 Thang 8  2021','25-8-2021 15:21',3,NULL,NULL,10,'bac ok em lam luon',666),(1677,'dạ vâng ok ậ',0,'100017865601279','16 06  25 Thang 8  2021','25-8-2021 16:06',0,NULL,NULL,10,'da vang ok a',667),(1678,'mai mấy h bác nhỉ',0,'100017865601279','16 44  25 Thang 8  2021','25-8-2021 16:44',0,NULL,NULL,10,'mai may h bac nhi',668),(1679,'Nếu dc thì sáng ạ',1,'100017865601279','16 44  25 Thang 8  2021','25-8-2021 16:44',1,NULL,NULL,10,'Neu dc thi sang a',669),(1680,'Còn nếu bác bận quá thì chiều 3h ạ',1,'100017865601279','16 44  25 Thang 8  2021','25-8-2021 16:44',2,NULL,NULL,10,'Con neu bac ban qua thi chieu 3h a',670),(1681,'sáng mai có gì e ib nhé',0,'100017865601279','17 21  25 Thang 8  2021','25-8-2021 17:21',0,NULL,NULL,10,'sang mai co gi e ib nhe',671),(1682,'Ok bác ạ',1,'100017865601279','18 16  25 Thang 8  2021','25-8-2021 18:16',0,NULL,NULL,10,'Ok bac a',672),(1683,'alo ạ',0,'100017865601279','10 19  26 Thang 8  2021','26-8-2021 10:19',0,NULL,NULL,10,'alo a',673),(1684,'giờ bác rảnh k',0,'100017865601279','10 19  26 Thang 8  2021','26-8-2021 10:19',1,NULL,NULL,10,'gio bac ranh k',674),(1685,'Ok bác',1,'100017865601279','10 19  26 Thang 8  2021','26-8-2021 10:19',2,NULL,NULL,10,'Ok bac',675),(1686,'gửi  e ultra',0,'100017865601279','10 19  26 Thang 8  2021','26-8-2021 10:19',3,NULL,NULL,10,'gui e ultra',676),(1687,'17 879 329',1,'100017865601279','10 19  26 Thang 8  2021','26-8-2021 10:19',4,NULL,NULL,10,'17 879 329',677),(1688,'1719',1,'100017865601279','10 19  26 Thang 8  2021','26-8-2021 10:19',5,NULL,NULL,10,'1719',678),(1689,'Cuộc gọi thoại\n17 phút',0,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',0,NULL,NULL,10,'Cuoc goi thoai\n17 phut',679),(1690,'Cuộc gọi thoại bị nhỡ\n10:49',0,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',1,NULL,NULL,10,'Cuoc goi thoai bi nho\n10 49',680),(1691,'sao bác',1,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',2,NULL,NULL,10,'sao bac',681),(1692,'quản trị viên í ạ . bác cho e thêm cái số ngày sử dụng đc k',0,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',3,NULL,NULL,10,'quan tri vien i a   bac cho e them cai so ngay su dung dc k',682),(1693,'ví dụ ghi 30 . nó sẽ là 30 ngày sử dụng',0,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',4,NULL,NULL,10,'vi du ghi 30   no se la 30 ngay su dung',683),(1694,'ok bác ạ',1,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',5,NULL,NULL,10,'ok bac a',684),(1695,'hết 30 ngày . mình thêm 30 ngày tiếp',0,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',6,NULL,NULL,10,'het 30 ngay   minh them 30 ngay tiep',685),(1696,'dc bác',1,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',7,NULL,NULL,10,'dc bac',686),(1697,'update ạ',0,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',8,NULL,NULL,10,'update a',687),(1698,'ok ạ',0,'100017865601279','10 41  26 Thang 8  2021','26-8-2021 10:41',9,NULL,NULL,10,'ok a',688),(1699,'e vưa thấy',0,'100017865601279','11 15  26 Thang 8  2021','26-8-2021 11:15',0,NULL,NULL,10,'e vua thay',689),(1700,'',0,'100017865601279','11 15  26 Thang 8  2021','26-8-2021 11:15',1,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/240639778_551095896201322_3170662628714580699_n.png?_nc_cat=104&ccb=1-5&_nc_sid=aee45a&_nc_ohc=O2wyonH--4QAX-JZ5V6&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=c09016692dbc9962d6bf973ab8f2bf8d&oe=61A577C2',NULL,10,'',690),(1701,'khi tạo nhóm thanh này nó dài hơn',0,'100017865601279','11 15  26 Thang 8  2021','26-8-2021 11:15',2,NULL,NULL,10,'khi tao nhom thanh nay no dai hon',691),(1702,'bác chú ý nhé',0,'100017865601279','11 15  26 Thang 8  2021','26-8-2021 11:15',3,NULL,NULL,10,'bac chu y nhe',692),(1703,'Ok bác em cho nó scroll là dc mà',1,'100017865601279','11 46  26 Thang 8  2021','26-8-2021 11:46',0,NULL,NULL,10,'Ok bac em cho no scroll la dc ma',693),(1704,'bác có biết về code python k',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',0,NULL,NULL,10,'bac co biet ve code python k',694),(1705,'có bác',1,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',1,NULL,NULL,10,'co bac',695),(1706,'sao vậy bác',1,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',2,NULL,NULL,10,'sao vay bac',696),(1707,'e đanng có cái tool cần sửa 1 chút',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',3,NULL,NULL,10,'e danng co cai tool can sua 1 chut',697),(1708,'code hiện tại chạy luân phiên nick',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',4,NULL,NULL,10,'code hien tai chay luan phien nick',698),(1709,'e muốn nick nào die',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',5,NULL,NULL,10,'e muon nick nao die',699),(1710,'nó tắt',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',6,NULL,NULL,10,'no tat',700),(1711,'chuyển sang nick khác luôn',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',7,NULL,NULL,10,'chuyen sang nick khac luon',701),(1712,'giờ nó đang bị là : nick 1 die nó vẫn đứng im chờ hết time mới chuyển sang nick 2',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',8,NULL,NULL,10,'gio no dang bi la   nick 1 die no van dung im cho het time moi chuyen sang nick 2',702),(1713,'bác gửi em source mai em rảnh em xem thửu',1,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',9,NULL,NULL,10,'bac gui em source mai em ranh em xem thuu',703),(1714,'hay sáng mai',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',10,NULL,NULL,10,'hay sang mai',704),(1715,'tầm 10h',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',11,NULL,NULL,10,'tam 10h',705),(1716,'bác vào ultra máy e xem nhé',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',12,NULL,NULL,10,'bac vao ultra may e xem nhe',706),(1717,'alo bác cho bác xem',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',13,NULL,NULL,10,'alo bac cho bac xem',707),(1718,'tại cái này hơi lằng nhằng 1 chút',0,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',14,NULL,NULL,10,'tai cai nay hoi lang nhang 1 chut',708),(1719,'ok bác',1,'100017865601279','22 55  26 Thang 8  2021','26-8-2021 22:55',15,NULL,NULL,10,'ok bac',709),(1720,'mà hình như tool e nó next đc khi acc die',0,'100017865601279','23 28  26 Thang 8  2021','26-8-2021 23:28',0,NULL,NULL,10,'ma hinh nhu tool e no next dc khi acc die',710),(1721,'để e ktra lại @@',0,'100017865601279','23 28  26 Thang 8  2021','26-8-2021 23:28',1,NULL,NULL,10,'de e ktra lai   ',711),(1722,'tool này đế mấy tháng .',0,'100017865601279','23 28  26 Thang 8  2021','26-8-2021 23:28',2,NULL,NULL,10,'tool nay de may thang  ',712),(1723,'ok bác',1,'100017865601279','23 28  26 Thang 8  2021','26-8-2021 23:28',3,NULL,NULL,10,'ok bac',713),(1724,'giờ dùng lại nên quên . có gì e báo bác nh',0,'100017865601279','23 28  26 Thang 8  2021','26-8-2021 23:28',4,NULL,NULL,10,'gio dung lai nen quen   co gi e bao bac nh',714),(1725,'',1,'100017865601279','23 28  26 Thang 8  2021','26-8-2021 23:28',5,NULL,NULL,10,'',715),(1726,'alo ạ',0,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',0,NULL,NULL,10,'alo a',716),(1727,'bác rảnh k',0,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',1,NULL,NULL,10,'bac ranh k',717),(1728,'xem hộ e cái tool đc k',0,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',2,NULL,NULL,10,'xem ho e cai tool dc k',718),(1729,'Mai dc ko bác',1,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',3,NULL,NULL,10,'Mai dc ko bac',719),(1730,'dạ đc',0,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',4,NULL,NULL,10,'da dc',720),(1731,'Em đang dở tay mấy thứ',1,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',5,NULL,NULL,10,'Em dang do tay may thu',721),(1732,'mai 10h nhé',0,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',6,NULL,NULL,10,'mai 10h nhe',722),(1733,'Ok ạ',1,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',7,NULL,NULL,10,'Ok a',723),(1734,'e cám ơn',0,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',8,NULL,NULL,10,'e cam on',724),(1735,'',1,'100017865601279','15 20  27 Thang 8  2021','27-8-2021 15:20',9,NULL,NULL,10,'',725),(1736,'bác online k',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',0,NULL,NULL,10,'bac online k',726),(1737,'Dạ có bác',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',1,NULL,NULL,10,'Da co bac',727),(1738,'Bác gửi em ultra đi',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',2,NULL,NULL,10,'Bac gui em ultra di',728),(1739,'35 713 288',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',3,NULL,NULL,10,'35 713 288',729),(1740,'hvxwtl',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',4,NULL,NULL,10,'hvxwtl',730),(1741,'e gửi nhé',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',5,NULL,NULL,10,'e gui nhe',731),(1742,'xong e gọi nhé',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',6,NULL,NULL,10,'xong e goi nhe',732),(1743,'Dạ bác nhắn được không bác',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',7,NULL,NULL,10,'Da bac nhan duoc khong bac',733),(1744,'Con em đang ngủ bên cạnh',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',8,NULL,NULL,10,'Con em dang ngu ben canh',734),(1745,'dạ vâng',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',9,NULL,NULL,10,'da vang',735),(1746,'Nên ko trả lời đc',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',10,NULL,NULL,10,'Nen ko tra loi dc',736),(1747,'có thể bị giới hạn rồi bác',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',11,NULL,NULL,10,'co the bi gioi han roi bac',737),(1748,'tool dùng login fb đúng ko bác',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',12,NULL,NULL,10,'tool dung login fb dung ko bac',738),(1749,'dạ vâng',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',13,NULL,NULL,10,'da vang',739),(1750,'em chưa xem code bên trong nhưng mà em đooán thôi',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',14,NULL,NULL,10,'em chua xem code ben trong nhung ma em dooan thoi',740),(1751,'fb nó mới đổi chính sách',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',15,NULL,NULL,10,'fb no moi doi chinh sach',741),(1752,'get api login của nó hình như đc bao nhiu lần trên 1h hay sao ấy',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',16,NULL,NULL,10,'get api login cua no hinh nhu dc bao nhiu lan tren 1h hay sao ay',742),(1753,'cái này em phỏng đoán chứ chưa xem code nhé bác ',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',17,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'cai nay em phong doan chu chua xem code nhe bac',743),(1754,'Pham Tien đã thu hồi một tin nhắn',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',18,NULL,NULL,10,'Pham Tien da thu hoi mot tin nhan',744),(1755,'nó request tới máy chủ fb ko thành công',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',19,NULL,NULL,10,'no request toi may chu fb ko thanh cong',745),(1756,'',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',20,'https://scontent.xx.fbcdn.net/v/t1.15752-9/240741428_144494401112844_1984340162942499211_n.png?_nc_cat=110&ccb=1-5&_nc_sid=aee45a&_nc_ohc=CJyFFeO5KjIAX_rafzu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=d50e9ebb90d164ac1708a8e875fab6e9&oe=61A4A362',NULL,10,'',746),(1757,'nó bị như sau nè bác',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',21,NULL,NULL,10,'no bi nhu sau ne bac',747),(1758,'cái đen trên k nói .',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',22,NULL,NULL,10,'cai den tren k noi  ',748),(1759,'giờ vào cái chinh',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',23,NULL,NULL,10,'gio vao cai chinh',749),(1760,'có 3 dạng checkpoint \n1 - tìm hiểu thêm\n2 - dạng bắt đầu để mở\n3 - dạng phán xét \n\ngiờ e mở cả 3 cái bác xem nhé',0,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',24,NULL,NULL,10,'co 3 dang checkpoint \n1   tim hieu them\n2   dang bat dau de mo\n3   dang phan xet \n\ngio e mo ca 3 cai bac xem nhe',750),(1761,'ok bác',1,'100017865601279','10 18  28 Thang 8  2021','28-8-2021 10:18',25,NULL,NULL,10,'ok bac',751),(1762,'bác ơi . e liên hệ b code cũ k đc',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',0,NULL,NULL,10,'bac oi   e lien he b code cu k dc',752),(1763,'có gì bác giúp e nhé',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',1,NULL,NULL,10,'co gi bac giup e nhe',753),(1764,'cần e gửi code qua luôn',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',2,NULL,NULL,10,'can e gui code qua luon',754),(1765,'Bác gửi đi ạ',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',3,NULL,NULL,10,'Bac gui di a',755),(1766,'e gửi nhé',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',4,NULL,NULL,10,'e gui nhe',756),(1767,'tool e chạy dưới dạng',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',5,NULL,NULL,10,'tool e chay duoi dang',757),(1768,'đăng nhập bài post . rồi ấn phù hợp nhất xdong mới nhất - mới nhất liên tục',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',6,NULL,NULL,10,'dang nhap bai post   roi an phu hop nhat xdong moi nhat   moi nhat lien tuc',758),(1769,'nó chạy như sau : 1 uid fb A - chạy 10 20 uid post ( theo yêu cầu ) sau khoẳng time yêu cầu out . nó sẽ chuyển sang uid fb B chạy 10 20 uidpost giống fb A',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',7,NULL,NULL,10,'no chay nhu sau   1 uid fb A   chay 10 20 uid post   theo yeu cau   sau khoang time yeu cau out   no se chuyen sang uid fb B chay 10 20 uidpost giong fb A',759),(1770,'cứ thế cho đến hết nick . rồi quay lại về nick FB A',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',8,NULL,NULL,10,'cu the cho den het nick   roi quay lai ve nick FB A',760),(1771,'1  - sửa 2 trường hợp checkpoint',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',9,NULL,NULL,10,'1   sua 2 truong hop checkpoint',761),(1772,'2 - tắt hết video . k cho chạy . hoặc k load ( để giảm dung lượng tốc độ phần mềm nhanh hơn ) ( hình ảnh e đã tắt r )',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',10,NULL,NULL,10,'2   tat het video   k cho chay   hoac k load   de giam dung luong toc do phan mem nhanh hon     hinh anh e da tat r  ',762),(1773,'ok bac',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',11,NULL,NULL,10,'ok bac',763),(1774,'100007780026339|hvvphuc|CQRY BIJE UXMI HMUT YZRE BWCV Q3P4 GCJD\n100065666683338|@NStwo0ay73411|WZ4WT7FDN23YLVRCCA25NF4EJHAIRT4L\n100069200167250|thulinh200|5QJ7CRJBODBGQXB5ICEJWAVKWVZO2KV3',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',12,NULL,NULL,10,'100007780026339 hvvphuc CQRY BIJE UXMI HMUT YZRE BWCV Q3P4 GCJD\n100065666683338  NStwo0ay73411 WZ4WT7FDN23YLVRCCA25NF4EJHAIRT4L\n100069200167250 thulinh200 5QJ7CRJBODBGQXB5ICEJWAVKWVZO2KV3',764),(1775,'đây là 3 via 3 trường hợp die check point . hoặc bác cho các trường hợp checkpôint',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',13,NULL,NULL,10,'day la 3 via 3 truong hop die check point   hoac bac cho cac truong hop checkpoint',765),(1776,'nick bị checkpoint chạy vòng sau bỏ qua luôn . k đăng nhập nữa',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',14,NULL,NULL,10,'nick bi checkpoint chay vong sau bo qua luon   k dang nhap nua',766),(1777,'',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',15,NULL,NULL,10,'',767),(1778,'ok aj',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',16,NULL,NULL,10,'ok aj',768),(1779,'3 - tắt các hình như sau ( những nick đăng nhập lần đầu sẽ bị )',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',17,NULL,NULL,10,'3   tat cac hinh nhu sau   nhung nick dang nhap lan dau se bi  ',769),(1780,'',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',18,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p526x296/237967330_228575612540483_3308272214717224894_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=UiUiaEIbNTkAX-k_sMx&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=01a31370ce2dbd2bcbed443ba83cc23c&oe=61A6DD7C',NULL,10,'',770),(1781,'',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',19,NULL,NULL,10,'',771),(1782,'tắt giúp e cả phiên bản tiếng anh và tiếng việt nhé',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',20,NULL,NULL,10,'tat giup e ca phien ban tieng anh va tieng viet nhe',772),(1783,'vì khi đăng nhập những nick đầu tiên đều bị vậy nên khi vào post quét . nó bị chắn hết k làm đc gì',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',21,NULL,NULL,10,'vi khi dang nhap nhung nick dau tien deu bi vay nen khi vao post quet   no bi chan het k lam dc gi',773),(1784,'4 - sửa proxy',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',22,NULL,NULL,10,'4   sua proxy',774),(1785,'ok bác',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',23,NULL,NULL,10,'ok bac',775),(1786,'',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',24,NULL,NULL,10,'',776),(1787,'nick a - chạy 10 uid post - chạy proxy a - địa chỉ a - sau 15 phút tắt chuyển sang nick b',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',25,NULL,NULL,10,'nick a   chay 10 uid post   chay proxy a   dia chi a   sau 15 phut tat chuyen sang nick b',777),(1788,'nick b - chạy 10 uid post - chạy proxy a - địa chỉ b - sau 15 phú tắt chuyển nick c',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',26,NULL,NULL,10,'nick b   chay 10 uid post   chay proxy a   dia chi b   sau 15 phu tat chuyen nick c',778),(1789,'và cứ vậy lặp lại đến a . chạy vòng tròn',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',27,NULL,NULL,10,'va cu vay lap lai den a   chay vong tron',779),(1790,'nếu trường hợp proxy die khi trong quá trình chưa đến 15 phút . thì nick đang chạy uid post đó sẽ tắt đi . và chuyển sang nick tiếp theo để chạy uid post với ip proxy mới',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',28,NULL,NULL,10,'neu truong hop proxy die khi trong qua trinh chua den 15 phut   thi nick dang chay uid post do se tat di   va chuyen sang nick tiep theo de chay uid post voi ip proxy moi',780),(1791,'cái trường hợp này hình như là do proxy lúc nó chạy nó bị die\n1',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',29,'https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png',NULL,10,'cai truong hop nay hinh nhu la do proxy luc no chay no bi die\n1',781),(1792,'đúng k bác',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',30,NULL,NULL,10,'dung k bac',782),(1793,'lúc bị die nó k chuyển và get tiếp nên nó bị vậy',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',31,NULL,NULL,10,'luc bi die no k chuyen va get tiep nen no bi vay',783),(1794,'đúng k ạ',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',32,NULL,NULL,10,'dung k a',784),(1795,'khó biết được bác',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',33,NULL,NULL,10,'kho biet duoc bac',785),(1796,'nhìu nguyên nhân quá',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',34,NULL,NULL,10,'nhiu nguyen nhan qua',786),(1797,'nó do các trường hợp gì ạ',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',35,NULL,NULL,10,'no do cac truong hop gi a',787),(1798,'để em xem code rồi em mới tìm phương án',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',36,NULL,NULL,10,'de em xem code roi em moi tim phuong an',788),(1799,'request time out',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',37,NULL,NULL,10,'request time out',789),(1800,'thì do proxy chỉ là 1 trong những cái thôi bán',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',38,NULL,NULL,10,'thi do proxy chi la 1 trong nhung cai thoi ban',790),(1801,'fb hạn chế',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',39,NULL,NULL,10,'fb han che',791),(1802,'mạng lag',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',40,NULL,NULL,10,'mang lag',792),(1803,'máy chủ fb bị nghẽn',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',41,NULL,NULL,10,'may chu fb bi nghen',793),(1804,'sv bác bị nghẽn',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',42,NULL,NULL,10,'sv bac bi nghen',794),(1805,'...',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',43,NULL,NULL,10,'   ',795),(1806,'nói chugn để em tìm cách',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',44,NULL,NULL,10,'noi chugn de em tim cach',796),(1807,'bt thì phần mềm request số lần không được là phải set out',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',45,NULL,NULL,10,'bt thi phan mem request so lan khong duoc la phai set out',797),(1808,'như của mình hiện tại là nó tiếp tục chờ cho hết time đúng ko bác',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',46,NULL,NULL,10,'nhu cua minh hien tai la no tiep tuc cho cho het time dung ko bac',798),(1809,'trong code có đoạn',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',47,NULL,NULL,10,'trong code co doan',799),(1810,'bấm 15 lần mới nhất . nghỉ 15 giây',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',48,NULL,NULL,10,'bam 15 lan moi nhat   nghi 15 giay',800),(1811,'thì quản trị viên sẽ có chức năng liên kết fb để nhắn tin',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',23,NULL,NULL,10,'thi quan tri vien se co chuc nang lien ket fb de nhan tin',301),(1812,'vậy CTV có chức năng liên kết fb k',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',24,NULL,NULL,10,'vay CTV co chuc nang lien ket fb k',302),(1813,'vì e muốn liên kết 1 fb thôi',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',25,NULL,NULL,10,'vi e muon lien ket 1 fb thoi',303),(1814,'ví dụ QTV đã liên kết r . thì CTV k cần liên kết fb',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',26,NULL,NULL,10,'vi du QTV da lien ket r   thi CTV k can lien ket fb',304),(1815,'dạ được bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',27,NULL,NULL,10,'da duoc bac',305),(1816,'ok ạ . vậy chỉ cần QTV liên kết fb',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',28,NULL,NULL,10,'ok a   vay chi can QTV lien ket fb',306),(1817,'3 - về phần gửi thông tin khách giữa CTV và QTV . ví dụ CTV B có khách . sẽ nhắn cho QTV trực tiếp trên web',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',29,NULL,NULL,10,'3   ve phan gui thong tin khach giua CTV va QTV   vi du CTV B co khach   se nhan cho QTV truc tiep tren web',307),(1818,'dạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',30,NULL,NULL,10,'da',308),(1819,'cái này sẽ có sự liên kết mess ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',31,NULL,NULL,10,'cai nay se co su lien ket mess a',309),(1820,'hay là sẽ ntn bác nhỉ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',32,NULL,NULL,10,'hay la se ntn bac nhi',310),(1821,'dạ phần này em muốn hiểu rõ chút vấn đề là',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',33,NULL,NULL,10,'da phan nay em muon hieu ro chut van de la',311),(1822,'QTV cần có gì đó để biết được khi nào CTV nhắn đúng ko bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',34,NULL,NULL,10,'QTV can co gi do de biet duoc khi nao CTV nhan dung ko bac',312),(1823,'ý là . nếu CTV có khách sẽ nhắn cho QTV',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',35,NULL,NULL,10,'y la   neu CTV co khach se nhan cho QTV',313),(1824,'thì mình nhắn trên web đc mà bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',36,NULL,NULL,10,'thi minh nhan tren web dc ma bac',314),(1825,'nghĩa là sẽ cái liên kết mess trực tiếp trên web ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',37,NULL,NULL,10,'nghia la se cai lien ket mess truc tiep tren web a',315),(1826,'ấn vào là có thể nhắn cho QTV ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',38,NULL,NULL,10,'an vao la co the nhan cho QTV a',316),(1827,'dạ nghĩa là trên web bấm vào chỗ QTV là nhắn tin được qua fb QTV đúng ko bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',39,NULL,NULL,10,'da nghia la tren web bam vao cho QTV la nhan tin duoc qua fb QTV dung ko bac',317),(1828,'mình sẽ có 1 luồng tư duy',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',40,NULL,NULL,10,'minh se co 1 luong tu duy',318),(1829,'tư duy 1 : nhắn trực tiếp trên web . k qua fb \ntư duy 2 : ấn vào ra mess QTV rồi nhắn qua đó',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',41,NULL,NULL,10,'tu duy 1   nhan truc tiep tren web   k qua fb \ntu duy 2   an vao ra mess QTV roi nhan qua do',319),(1830,'bác thấy làm cái nào dễ hơn',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',42,NULL,NULL,10,'bac thay lam cai nao de hon',320),(1831,'dạ mọi thứ bữa h đang đi trên con đường số 1 bác ạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',43,NULL,NULL,10,'da moi thu bua h dang di tren con duong so 1 bac a',321),(1832,':)))',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',44,NULL,NULL,10,'    ',322),(1833,'cái tư duy 1 ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',45,NULL,NULL,10,'cai tu duy 1 a',323),(1834,'sau này em làm cho bác thêm cái thông báo',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',46,NULL,NULL,10,'sau nay em lam cho bac them cai thong bao',324),(1835,'dạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',47,NULL,NULL,10,'da',325),(1836,'khi có ai nhắn tới',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',48,NULL,NULL,10,'khi co ai nhan toi',326),(1837,'thì nó hiện popup bên góc dưới bên phải',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',49,NULL,NULL,10,'thi no hien popup ben goc duoi ben phai',327),(1838,'mà đó là chức năng nâng cấp sau này',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',50,NULL,NULL,10,'ma do la chuc nang nang cap sau nay',328),(1839,'chờ hoàn thiện mọi thứ nên tảng ổn đã ạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',51,NULL,NULL,10,'cho hoan thien moi thu nen tang on da a',329),(1840,'nếu theo tư duy 2 . thì đc k ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',52,NULL,NULL,10,'neu theo tu duy 2   thi dc k a',330),(1841,'vẫn được ạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',53,NULL,NULL,10,'van duoc a',331),(1842,'à',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',54,NULL,NULL,10,'a',332),(1843,'có phải bác đang nghĩ cho nhưng CTV mà bác chỉ cho xem mà ko cho chat đúng ko',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',55,NULL,NULL,10,'co phai bac dang nghi cho nhung CTV ma bac chi cho xem ma ko cho chat dung ko',333),(1844,'ok bác em làm cho bác cái tư duy 2',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',56,NULL,NULL,10,'ok bac em lam cho bac cai tu duy 2',334),(1845,'ý là chỉ xem đc tin nhắn của QTV',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',57,NULL,NULL,10,'y la chi xem dc tin nhan cua QTV',335),(1846,'cũng nhẹ nhàng thôi ko có nặng nề lắm',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',58,NULL,NULL,10,'cung nhe nhang thoi ko co nang ne lam',336),(1847,'nhưng k đc nhắn',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',59,NULL,NULL,10,'nhung k dc nhan',337),(1848,'dạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',60,NULL,NULL,10,'da',338),(1849,'ví dụ mình sẽ làm khi ấn vào là ra mess của QTV',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',61,'https://scontent.xx.fbcdn.net/v/t1.15752-9/218116617_421765082419522_2034347064062113015_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=jpgQdZpix3QAX_Rzbwc&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=312359b3d5e36679f9af285963a1ac7a&oe=61A792F1',NULL,10,'vi du minh se lam khi an vao la ra mess cua QTV',339),(1850,'dc bác ơi',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',62,NULL,NULL,10,'dc bac oi',340),(1851,'bấm vào ra mess dc mà',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',63,NULL,NULL,10,'bam vao ra mess dc ma',341),(1852,'4 - về CTV . e sẽ chia làm 2 luồng . 1 luồng CTV e sẽ cho cả nhắn tin . 1 luồng CTV e sẽ chỉ cho xem',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',64,NULL,NULL,10,'4   ve CTV   e se chia lam 2 luong   1 luong CTV e se cho ca nhan tin   1 luong CTV e se chi cho xem',342),(1853,'nói chung cái này e sẽ đánh dấu khi tạo CTV đc đúng k',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',65,NULL,NULL,10,'noi chung cai nay e se danh dau khi tao CTV dc dung k',343),(1854,'đúng ạ',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',66,NULL,NULL,10,'dung a',344),(1855,'5 - về giao diện số liệu ý ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',67,NULL,NULL,10,'5   ve giao dien so lieu y a',345),(1856,'',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',68,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/219746135_363030698538355_3657256159264647068_n.png?_nc_cat=104&ccb=1-5&_nc_sid=aee45a&_nc_ohc=DKw-XmcFdLwAX9E9AvF&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=2f84c23151c7e79d6402a80f01ca1afb&oe=61A7F757',NULL,10,'',346),(1857,'bác làm giúp e như này . về phần thời gian online . bác có thể cho xem đc họ rời web cách đây bao phút , ngày , tháng k ?',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',69,NULL,NULL,10,'bac lam giup e nhu nay   ve phan thoi gian online   bac co the cho xem dc ho roi web cach day bao phut   ngay   thang k  ',347),(1858,'để lọc đc ctv k hoạt động để xóa í ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',70,NULL,NULL,10,'de loc dc ctv k hoat dong de xoa i a',348),(1859,'và có thể lọc nhỏ dần , hoặc lớn dần các cột',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',71,NULL,NULL,10,'va co the loc nho dan   hoac lon dan cac cot',349),(1860,'dạ đưược bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',72,NULL,NULL,10,'da duuoc bac',350),(1861,'6 - phần mess bác cho e phần lưu ghi chú . để có gì lưu thông tin nào đó vào phần ghi chú khi tư vấn khách a',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',73,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/226128424_266767284786352_7816285373715172227_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=SxASLzNUXT4AX_OMDUL&_nc_oc=AQns90vI00IZAMV16KjvqQUkWyL-aMzegby0Vzb51Y2LSGrYWQQE6D-Dx8-iCZndb6bediqtxt2VvgtC0DpxWoA1&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=d7477ab9823ef7913b41a25bc24a2424&oe=61A4C74B',NULL,10,'6   phan mess bac cho e phan luu ghi chu   de co gi luu thong tin nao do vao phan ghi chu khi tu van khach a',351),(1862,'7 - về giao diện mobile . bác làm gọn giúp e nhé . tại khi e xem web mình làm . ấn giao diện mobile nó bị thu hẹp í ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',74,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s480x480/217595171_422300279024403_7048326568995170631_n.png?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Y_pObx3xa30AX90GiXZ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=38f0bde73e02fe5c49205addaa11d32c&oe=61A6AD83',NULL,10,'7   ve giao dien mobile   bac lam gon giup e nhe   tai khi e xem web minh lam   an giao dien mobile no bi thu hep i a',352),(1863,'em đã thiết kế trên mobile đâu bác :)))',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',75,NULL,NULL,10,'em da thiet ke tren mobile dau bac     ',353),(1864,'phần màn hình cat cấu trúc phức tạp',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',76,NULL,NULL,10,'phan man hinh cat cau truc phuc tap',354),(1865,'trên desktop là hiển thị đầy đủ nhất',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',77,NULL,NULL,10,'tren desktop la hien thi day du nhat',355),(1866,'à vâng .',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',78,NULL,NULL,10,'a vang  ',356),(1867,'e biết r',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',79,NULL,NULL,10,'e biet r',357),(1868,'e báo cụ thể vậy luôn í ạ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',80,NULL,NULL,10,'e bao cu the vay luon i a',358),(1869,'dạ vâng',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',81,NULL,NULL,10,'da vang',359),(1870,'thứ 2 có gì mới bác cho e xem nhé ',0,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',82,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'thu 2 co gi moi bac cho e xem nhe',360),(1871,'ok bác',1,'100017865601279','09 27  31 Thang 7  2021','31-7-2021 09:27',83,NULL,NULL,10,'ok bac',361),(1872,'trang chủ quản lý chính',1,'100017865601279','08 54  2 Thang 8  2021','2-8-2021 08:54',0,NULL,NULL,10,'trang chu quan ly chinh',362),(1873,'',1,'100017865601279','08 54  2 Thang 8  2021','2-8-2021 08:54',1,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/217772873_2027786904052538_2161495547373210268_n.png?_nc_cat=110&ccb=1-5&_nc_sid=aee45a&_nc_ohc=aXs9m2uuHQAAX-6tBQB&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=7fd79a7acf2733741e8f0c16b17ea022&oe=61A7AF56',NULL,10,'',363),(1874,'hệ thống code bên dưới 30% done',1,'100017865601279','08 54  2 Thang 8  2021','2-8-2021 08:54',2,NULL,NULL,10,'he thong code ben duoi 30  done',364),(1875,'bảng dữ liệu hoặc nội dung các mục sẽ hiển thị ở phần còn trống trong trang chủ quản lý khi click vào menu',1,'100017865601279','08 54  2 Thang 8  2021','2-8-2021 08:54',3,NULL,NULL,10,'bang du lieu hoac noi dung cac muc se hien thi o phan con trong trong trang chu quan ly khi click vao menu',365),(1876,'dự kiến hôm nay xong phần tạo user và phân quyền',1,'100017865601279','08 54  2 Thang 8  2021','2-8-2021 08:54',4,NULL,NULL,10,'du kien hom nay xong phan tao user va phan quyen',366),(1877,'nếu kịp thì sẽ cho chạy thử online riêng phần đó trước',1,'100017865601279','08 54  2 Thang 8  2021','2-8-2021 08:54',5,NULL,NULL,10,'neu kip thi se cho chay thu online rieng phan do truoc',367),(1878,'ok xont bác báo e',0,'100017865601279','10 08  2 Thang 8  2021','2-8-2021 10:08',0,NULL,NULL,10,'ok xont bac bao e',368),(1879,'Ok bác',1,'100017865601279','10 08  2 Thang 8  2021','2-8-2021 10:08',1,NULL,NULL,10,'Ok bac',369),(1880,'xong bác thử up lên host e xem nhé ',0,'100017865601279','10 34  2 Thang 8  2021','2-8-2021 10:34',0,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'xong bac thu up len host e xem nhe',370),(1881,'ok bác nếu xong kịp thì trog hum nay :))))',1,'100017865601279','10 34  2 Thang 8  2021','2-8-2021 10:34',1,NULL,NULL,10,'ok bac neu xong kip thi trog hum nay      ',371),(1882,'có gì mới k bác ',0,'100017865601279','11 51  3 Thang 8  2021','3-8-2021 11:51',0,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'co gi moi k bac',372),(1883,'Tý em gửi bác tấm hình',1,'100017865601279','12 27  3 Thang 8  2021','3-8-2021 12:27',0,NULL,NULL,10,'Ty em gui bac tam hinh',373),(1884,'Chưa đưa lên web dc',1,'100017865601279','12 27  3 Thang 8  2021','3-8-2021 12:27',1,NULL,NULL,10,'Chua dua len web dc',374),(1885,'Đang kẹt mấy thứ ạ',1,'100017865601279','12 27  3 Thang 8  2021','3-8-2021 12:27',2,NULL,NULL,10,'Dang ket may thu a',375),(1886,':)))',1,'100017865601279','12 27  3 Thang 8  2021','3-8-2021 12:27',3,NULL,NULL,10,'    ',376),(1887,'dạ vâng',0,'100017865601279','12 27  3 Thang 8  2021','3-8-2021 12:27',4,NULL,NULL,10,'da vang',377),(1888,'',1,'100017865601279','20 42  3 Thang 8  2021','3-8-2021 20:42',0,NULL,NULL,10,'',378),(1889,'1 chút quản lý tài khoản',1,'100017865601279','20 58  3 Thang 8  2021','3-8-2021 20:58',0,NULL,NULL,10,'1 chut quan ly tai khoan',379),(1890,'kế toán xem đc chức năng nào nó hiện ở đâu bác nhỉ',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',0,NULL,NULL,10,'ke toan xem dc chuc nang nao no hien o dau bac nhi',380),(1891,'sẽ có 1 phần sau đó nưuã nha bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',1,NULL,NULL,10,'se co 1 phan sau do nuua nha bac',381),(1892,'cái này mới 1 phần thôi',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',2,NULL,NULL,10,'cai nay moi 1 phan thoi',382),(1893,'mỗi menu bên trái là 1 trang màn hình',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',3,NULL,NULL,10,'moi menu ben trai la 1 trang man hinh',383),(1894,'mỗi 1 quản trị viên . sẽ có 1 kế toán và 1 thủ quỹ bác nhé',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',4,NULL,NULL,10,'moi 1 quan tri vien   se co 1 ke toan va 1 thu quy bac nhe',384),(1895,'ví dụ e lập 10 quản trị viên  ,thì có 10 kế toán và 10 thủ quỹ tương ứng với mẫu quản trị viên',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',5,NULL,NULL,10,'vi du e lap 10 quan tri vien  thi co 10 ke toan va 10 thu quy tuong ung voi mau quan tri vien',385),(1896,'ok bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',6,NULL,NULL,10,'ok bac',386),(1897,'hay bác có thể làm cho e như sau :\nQuản trị viên A \nQuản trị viên B\nQuản trị viên C\n\nkhi e lập kế toán và thủ quỹ . thì có thể tạo 1 acc kế toán và thủ quỹ thôi . nhưng có tích vào đc các QTV A , QTV B , QTV C',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',7,NULL,NULL,10,'hay bac co the lam cho e nhu sau  \nQuan tri vien A \nQuan tri vien B\nQuan tri vien C\n\nkhi e lap ke toan va thu quy   thi co the tao 1 acc ke toan va thu quy thoi   nhung co tich vao dc cac QTV A   QTV B   QTV C',387),(1898,'và khi tổng đơn của QTV A , QTV B , QTV C  sẽ trên 1 giao diện tổng hợp hết tất cả đơn của 3 QTV đó',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',8,NULL,NULL,10,'va khi tong don cua QTV A   QTV B   QTV C se tren 1 giao dien tong hop het tat ca don cua 3 QTV do',388),(1899,'và kế toán và thủ quỹ vào sẽ xem đc tổng thể 3 QTV đó trên 1 giao diện tổng đơn luôn . đỡ phải chia từng QTV',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',9,NULL,NULL,10,'va ke toan va thu quy vao se xem dc tong the 3 QTV do tren 1 giao dien tong don luon   do phai chia tung QTV',389),(1900,'cái này chắc chờ em lên cái hình giao diện sử dụng',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',10,NULL,NULL,10,'cai nay chac cho em len cai hinh giao dien su dung',390),(1901,'rồi mình bàn bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',11,NULL,NULL,10,'roi minh ban bac',391),(1902,'em hiểu rồi',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',12,NULL,NULL,10,'em hieu roi',392),(1903,'nhưng mà để em làm 1 lượt xem có đúng ý bác ko đã',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',13,NULL,NULL,10,'nhung ma de em lam 1 luot xem co dung y bac ko da',393),(1904,'vâng nhưng lúc bác làm xong',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',14,NULL,NULL,10,'vang nhung luc bac lam xong',394),(1905,'k đúng ý',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',15,NULL,NULL,10,'k dung y',395),(1906,'sửa lại có mất time k',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',16,NULL,NULL,10,'sua lai co mat time k',396),(1907,'e sợ là bác sửa lại . mất công bác thôi',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',17,NULL,NULL,10,'e so la bac sua lai   mat cong bac thoi',397),(1908,'nên e phải bàn với bác từng chút 1',0,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',18,NULL,NULL,10,'nen e phai ban voi bac tung chut 1',398),(1909,'mình tìm giải pháp sửa cho hợp lý mà bác',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',19,NULL,NULL,10,'minh tim giai phap sua cho hop ly ma bac',399),(1910,'mình cũng bàn bạc thuưường xuyên mà',1,'100017865601279','23 43  3 Thang 8  2021','3-8-2021 23:43',20,NULL,NULL,10,'minh cung ban bac thuuuong xuyen ma',400),(1911,'rồilaaij bấm 15 lần mới nhất tiếp',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',49,NULL,NULL,10,'roilaaij bam 15 lan moi nhat tiep',801),(1912,'bao giờ đến số phút mình yêu cầu out . thì nó out và đăng nhập nick fb tiếp theo',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',50,NULL,NULL,10,'bao gio den so phut minh yeu cau out   thi no out va dang nhap nick fb tiep theo',802),(1913,'để em đọc code em mới biết đc',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',51,NULL,NULL,10,'de em doc code em moi biet dc',803),(1914,'hok biết đc ng viết trc viết sao',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',52,NULL,NULL,10,'hok biet dc ng viet trc viet sao',804),(1915,'nói chung còn 4 ý trên là xong',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',53,NULL,NULL,10,'noi chung con 4 y tren la xong',805),(1916,'chắc nặng nhất proxy',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',54,NULL,NULL,10,'chac nang nhat proxy',806),(1917,'b xem lên phương án r báo giá e nhé',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',55,NULL,NULL,10,'b xem len phuong an r bao gia e nhe',807),(1918,'cái này vs cái kia cái nào gấp hơn bác',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',56,NULL,NULL,10,'cai nay vs cai kia cai nao gap hon bac',808),(1919,'cái này trc cũng đc',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',57,NULL,NULL,10,'cai nay trc cung dc',809),(1920,'tại hn cbi 14 ngày nữa r bác :)))',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',58,NULL,NULL,10,'tai hn cbi 14 ngay nua r bac     ',810),(1921,':)))',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',59,NULL,NULL,10,'    ',811),(1922,'cái kia chắc dễ sang năm e mới triển khai nhân sự mất',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',60,NULL,NULL,10,'cai kia chac de sang nam e moi trien khai nhan su mat',812),(1923,':)))',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',61,NULL,NULL,10,'    ',813),(1924,'zj bác gửi code cho em nha',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',62,NULL,NULL,10,'zj bac gui code cho em nha',814),(1925,'nhìu khi đọc xong code em lại ko dám nhận',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',63,NULL,NULL,10,'nhiu khi doc xong code em lai ko dam nhan',815),(1926,'ơ',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',64,NULL,NULL,10,'o',816),(1927,'e gửi r mà',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',65,NULL,NULL,10,'e gui r ma',817),(1928,':)))',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',66,NULL,NULL,10,'    ',818),(1929,'ủa đâu',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',67,NULL,NULL,10,'ua dau',819),(1930,'trời e tưởng gửi r',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',68,NULL,NULL,10,'troi e tuong gui r',820),(1931,'',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',69,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,'',821),(1932,'à nó chặn',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',70,NULL,NULL,10,'a no chan',822),(1933,'đúng rồi',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',71,NULL,NULL,10,'dung roi',823),(1934,'bác share drive đi ạ',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',72,NULL,NULL,10,'bac share drive di a',824),(1935,'sau này bác làm code gì bác nói ng ta đưa lên github',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',73,NULL,NULL,10,'sau nay bac lam code gi bac noi ng ta dua len github',825),(1936,'dễ quản lý bác',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',74,NULL,NULL,10,'de quan ly bac',826),(1937,'github lập trình viên nào cũng biết thôi bác',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',75,NULL,NULL,10,'github lap trinh vien nao cung biet thoi bac',827),(1938,'https://drive.google.com/drive/folders/16Aj8DYSthg26Zw7-oAY8urBYdPni-GAn?usp=sharing\nEditcode26-6-21 - Google Drive\ndrive.google.com',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',76,'https://external.xx.fbcdn.net/safe_image.php?d=AQFCSdULPcuxveGo&w=48&h=25&url=https%3A%2F%2Fssl.gstatic.com%2Fimages%2Fbranding%2Fproduct%2F1x%2Fdrive_2020q4_48dp.png&cfs=1&ext=emg0&_nc_oe=6ef64&_nc_sid=06c271&ccb=3-5&_nc_hash=AQHUeNjbjaSWZCJg',NULL,10,'https   drive google com drive folders 16Aj8DYSthg26Zw7 oAY8urBYdPni GAn usp sharing\nEditcode26 6 21   Google Drive\ndrive google com',828),(1939,'bác xem đăng nhập đc k',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',77,NULL,NULL,10,'bac xem dang nhap dc k',829),(1940,'thật ra cái code này e làm mất gần 1 năm r',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',78,NULL,NULL,10,'that ra cai code nay e lam mat gan 1 nam r',830),(1941,'đợt này mới có time rảnh để fix tiếp',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',79,NULL,NULL,10,'dot nay moi co time ranh de fix tiep',831),(1942,'nói chung tâm huyết mãi',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',80,NULL,NULL,10,'noi chung tam huyet mai',832),(1943,'mong bác cố gắng giúp e ạ',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',81,NULL,NULL,10,'mong bac co gang giup e a',833),(1944,'cái nào bác',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',82,NULL,NULL,10,'cai nao bac',834),(1945,'cái ae đang trao đổi í',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',83,NULL,NULL,10,'cai ae dang trao doi i',835),(1946,'',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',84,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/236244944_523236698771543_2244630848383386277_n.png?_nc_cat=105&ccb=1-5&_nc_sid=aee45a&_nc_ohc=4jnzDLQ00_sAX8KdJMb&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=9dff5a3f8d52acd5c244f39a5ec67264&oe=61A6D600',NULL,10,'',836),(1947,'à',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',85,NULL,NULL,10,'a',837),(1948,'ý em là cái nào trong hình ak',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',86,NULL,NULL,10,'y em la cai nao trong hinh ak',838),(1949,'bác dowư hết về',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',87,NULL,NULL,10,'bac dowu het ve',839),(1950,'dowư cả giải nén đó luôn',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',88,NULL,NULL,10,'dowu ca giai nen do luon',840),(1951,'ok bác',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',89,NULL,NULL,10,'ok bac',841),(1952,'có gì em báo bác sau nhé',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',90,NULL,NULL,10,'co gi em bao bac sau nhe',842),(1953,'ok ạ',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',91,NULL,NULL,10,'ok a',843),(1954,'có gì k hiểu cứ báo e',0,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',92,NULL,NULL,10,'co gi k hieu cu bao e',844),(1955,'ok ạ',1,'100017865601279','21 17  28 Thang 8  2021','28-8-2021 21:17',93,NULL,NULL,10,'ok a',845),(1956,'chiều nay có họp trao đổi k bác',0,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',0,NULL,NULL,10,'chieu nay co hop trao doi k bac',846),(1957,'Dạ để mai dc ko bác',1,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',1,NULL,NULL,10,'Da de mai dc ko bac',847),(1958,'Nay em hơi bận',1,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',2,NULL,NULL,10,'Nay em hoi ban',848),(1959,'',1,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',3,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',849),(1960,'Chiều mai nha bác',1,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',4,NULL,NULL,10,'Chieu mai nha bac',850),(1961,'Có gì mai em báo bác cái kia luôn',1,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',5,NULL,NULL,10,'Co gi mai em bao bac cai kia luon',851),(1962,'ok ah',0,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',6,NULL,NULL,10,'ok ah',852),(1963,'à còn cái tool kia',0,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',7,NULL,NULL,10,'a con cai tool kia',853),(1964,'bác xem chưa',0,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',8,NULL,NULL,10,'bac xem chua',854),(1965,'Em xem rồi bác',1,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',9,NULL,NULL,10,'Em xem roi bac',855),(1966,'Có gì mai em báo bác lun ạ',1,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',10,NULL,NULL,10,'Co gi mai em bao bac lun a',856),(1967,'ok ạ',0,'100017865601279','10 03  30 Thang 8  2021','30-8-2021 10:03',11,NULL,NULL,10,'ok a',857),(1968,'3h hnay đc k ạ',0,'100017865601279','13 56  31 Thang 8  2021','31-8-2021 13:56',0,NULL,NULL,10,'3h hnay dc k a',858),(1969,'Dạ dc ạ',1,'100017865601279','14 22  31 Thang 8  2021','31-8-2021 14:22',0,NULL,NULL,10,'Da dc a',859),(1970,'ok ạ',0,'100017865601279','14 22  31 Thang 8  2021','31-8-2021 14:22',1,NULL,NULL,10,'ok a',860),(1971,'bác rảnh chưa ạ',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',0,NULL,NULL,10,'bac ranh chua a',861),(1972,'nhà em mới dc gọi đi lấy mẫu',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',1,NULL,NULL,10,'nha em moi dc goi di lay mau',862),(1973,'',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',863),(1974,'vâng',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',3,NULL,NULL,10,'vang',864),(1975,'thế sáng mai ạ',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',4,NULL,NULL,10,'the sang mai a',865),(1976,'à',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',5,NULL,NULL,10,'a',866),(1977,'mình nc cái dự án python cũ của bacs tý ạ',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',6,NULL,NULL,10,'minh nc cai du an python cu cua bacs ty a',867),(1978,'ok',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',7,NULL,NULL,10,'ok',868),(1979,'gọi hay nt ạ',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',8,NULL,NULL,10,'goi hay nt a',869),(1980,'dạ nhắn tin cũng đc ạ',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',9,NULL,NULL,10,'da nhan tin cung dc a',870),(1981,'nhanh thôi',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',10,NULL,NULL,10,'nhanh thoi',871),(1982,'dạ vâng bác báo đi ạ',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',11,NULL,NULL,10,'da vang bac bao di a',872),(1983,'hồi trc bác làm cái này hết bao nhiu',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',12,NULL,NULL,10,'hoi trc bac lam cai nay het bao nhiu',873),(1984,'chắc tầm 6 7tr đó ạ',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',13,NULL,NULL,10,'chac tam 6 7tr do a',874),(1985,'sửa mấy lần',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',14,NULL,NULL,10,'sua may lan',875),(1986,'haiz',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',15,NULL,NULL,10,'haiz',876),(1987,'hiện tại nó chưa có change proxproxy đứng ko bác',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',16,NULL,NULL,10,'hien tai no chua co change proxproxy dung ko bac',877),(1988,'dạ vâng',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',17,NULL,NULL,10,'da vang',878),(1989,'bác change bằng 1 phần mềm riêng đúng không',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',18,NULL,NULL,10,'bac change bang 1 phan mem rieng dung khong',879),(1990,'đợt trc e chạy nó die nhiều nick qu',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',19,NULL,NULL,10,'dot trc e chay no die nhieu nick qu',880),(1991,'giờ e tính gắn thêm proxy',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',20,NULL,NULL,10,'gio e tinh gan them proxy',881),(1992,'bữa em tính báo bác sửa nó 4 triệu',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',21,NULL,NULL,10,'bua em tinh bao bac sua no 4 trieu',882),(1993,'',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',22,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/240811856_556335029152618_886412810713561098_n.png?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=EfhSIbCsK3EAX9HtPIv&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=5a16d668e52bb9586327a555e82aa1ae&oe=61A7008C',NULL,10,'',883),(1994,'mà qua giờ xem làm thêm cái proxy hơi chua',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',23,NULL,NULL,10,'ma qua gio xem lam them cai proxy hoi chua',884),(1995,'dạ thế thôi',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',24,NULL,NULL,10,'da the thoi',885),(1996,'để e tính vậy',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',25,NULL,NULL,10,'de e tinh vay',886),(1997,'1 2 3 thì ổn',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',26,NULL,NULL,10,'1 2 3 thi on',887),(1998,'dạ bác xem liên hệ với ng cũ đi ạ',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',27,NULL,NULL,10,'da bac xem lien he voi ng cu di a',888),(1999,'em làm hơi cao',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',28,NULL,NULL,10,'em lam hoi cao',889),(2000,'vậy sáng mai',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',29,NULL,NULL,10,'vay sang mai',890),(2001,'mình họp cái kia nhé',0,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',30,NULL,NULL,10,'minh hop cai kia nhe',891),(2002,'ok bác',1,'100017865601279','15 20  31 Thang 8  2021','31-8-2021 15:20',31,NULL,NULL,10,'ok bac',892),(2003,'bác ơi',1,'100017865601279','08 59  1 Thang 9  2021','1-9-2021 08:59',0,NULL,NULL,10,'bac oi',893),(2004,'chiều rảnh mình họp xý nhé bác',1,'100017865601279','08 59  1 Thang 9  2021','1-9-2021 08:59',1,NULL,NULL,10,'chieu ranh minh hop xy nhe bac',894),(2005,'dạ 3h nhé',0,'100017865601279','11 47  1 Thang 9  2021','1-9-2021 11:47',0,NULL,NULL,10,'da 3h nhe',895),(2006,'Ok ạ',1,'100017865601279','11 47  1 Thang 9  2021','1-9-2021 11:47',1,NULL,NULL,10,'Ok a',896),(2007,'ui e uiqen mât',0,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',0,NULL,NULL,10,'ui e uiqen mat',897),(2008,'bác online k @@',0,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',1,NULL,NULL,10,'bac online k   ',898),(2009,'Giờ em cbj ra ngoài rồi bác',1,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',2,NULL,NULL,10,'Gio em cbj ra ngoai roi bac',899),(2010,'Hay mai nha bác',1,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',3,NULL,NULL,10,'Hay mai nha bac',900),(2011,'',1,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',4,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',901),(2012,'ok ạ ',0,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',5,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'ok a',902),(2013,'mai bác nhắc e nhé',0,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',6,NULL,NULL,10,'mai bac nhac e nhe',903),(2014,'e mải việc quá ',0,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',7,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'e mai viec qua',904),(2015,'Dạ vâng',1,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',8,NULL,NULL,10,'Da vang',905),(2016,'Ok bác',1,'100017865601279','16 51  1 Thang 9  2021','1-9-2021 16:51',9,NULL,NULL,10,'Ok bac',906),(2017,'alo bác 2h nhé ',0,'100017865601279','13 46  2 Thang 9  2021','2-9-2021 13:46',0,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'alo bac 2h nhe',907),(2018,'Ok bác',1,'100017865601279','13 46  2 Thang 9  2021','2-9-2021 13:46',1,NULL,NULL,10,'Ok bac',908),(2019,'bác gửi e ultr anhé',0,'100017865601279','14 05  2 Thang 9  2021','2-9-2021 14:05',0,NULL,NULL,10,'bac gui e ultr anhe',909),(2020,'Ok bác',1,'100017865601279','14 05  2 Thang 9  2021','2-9-2021 14:05',1,NULL,NULL,10,'Ok bac',910),(2021,'17 879 329',1,'100017865601279','14 05  2 Thang 9  2021','2-9-2021 14:05',2,NULL,NULL,10,'17 879 329',911),(2022,'1374',1,'100017865601279','14 05  2 Thang 9  2021','2-9-2021 14:05',3,NULL,NULL,10,'1374',912),(2023,'e gọi nehs',0,'100017865601279','14 05  2 Thang 9  2021','2-9-2021 14:05',4,NULL,NULL,10,'e goi nehs',913),(2024,'ok bac',1,'100017865601279','14 05  2 Thang 9  2021','2-9-2021 14:05',5,NULL,NULL,10,'ok bac',914),(2025,'1 đưa tên cột báo cáo',0,'100017865601279','14 30  2 Thang 9  2021','2-9-2021 14:30',0,NULL,NULL,10,'1 dua ten cot bao cao',915),(2026,'Cuộc gọi thoại\n23 phút',0,'100017865601279','14 30  2 Thang 9  2021','2-9-2021 14:30',1,NULL,NULL,10,'Cuoc goi thoai\n23 phut',916),(2027,'mất kết nối ạ',0,'100017865601279','14 30  2 Thang 9  2021','2-9-2021 14:30',2,NULL,NULL,10,'mat ket noi a',917),(2028,'em rớt mạng bác ơi',1,'100017865601279','14 30  2 Thang 9  2021','2-9-2021 14:30',3,NULL,NULL,10,'em rot mang bac oi',918),(2029,'tự nhiên rớt ',1,'100017865601279','14 30  2 Thang 9  2021','2-9-2021 14:30',4,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'tu nhien rot',919),(2030,'Cuộc gọi thoại\n8 phút',0,'100017865601279','14 30  2 Thang 9  2021','2-9-2021 14:30',5,NULL,NULL,10,'Cuoc goi thoai\n8 phut',920),(2031,'Alo bác',1,'100017865601279','17 34  10 Thang 9  2021','10-9-2021 17:34',0,NULL,NULL,10,'Alo bac',921),(2032,'Thứ 2 mình họp nha bác',1,'100017865601279','17 34  10 Thang 9  2021','10-9-2021 17:34',1,NULL,NULL,10,'Thu 2 minh hop nha bac',922),(2033,'Trong tuần sau em cài cho bác 1 bản rồi mình cùng test nha bác',1,'100017865601279','17 34  10 Thang 9  2021','10-9-2021 17:34',2,NULL,NULL,10,'Trong tuan sau em cai cho bac 1 ban roi minh cung test nha bac',923),(2034,'dạ vâng',0,'100017865601279','17 34  10 Thang 9  2021','10-9-2021 17:34',3,NULL,NULL,10,'da vang',924),(2035,'t2 nhé bác',0,'100017865601279','17 34  10 Thang 9  2021','10-9-2021 17:34',4,NULL,NULL,10,'t2 nhe bac',925),(2036,'Ok ạ',1,'100017865601279','18 49  10 Thang 9  2021','10-9-2021 18:49',0,NULL,NULL,10,'Ok a',926),(2037,'à t2 e tiêm k biết ntn',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',0,NULL,NULL,10,'a t2 e tiem k biet ntn',927),(2038,'có gì chiều nhé',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',1,NULL,NULL,10,'co gi chieu nhe',928),(2039,'Dạ ok bác',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',2,NULL,NULL,10,'Da ok bac',929),(2040,'Bác dc tiêm rồi à',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',3,NULL,NULL,10,'Bac dc tiem roi a',930),(2041,'Loại gì vậy bác',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',4,NULL,NULL,10,'Loai gi vay bac',931),(2042,'dạ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',5,NULL,NULL,10,'da',932),(2043,'đăng ký mãi',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',6,NULL,NULL,10,'dang ky mai',933),(2044,'ạ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',7,NULL,NULL,10,'a',934),(2045,'pfizer  e tiêm lkoại này',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',8,NULL,NULL,10,'pfizer e tiem lkoai nay',935),(2046,'Nhà em chờ dài cổ ',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',9,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'Nha em cho dai co',936),(2047,'tại thể hình cũng béo ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',10,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'tai the hinh cung beo',937),(2048,'nên sợ phải tiêm loại ok chút',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',11,NULL,NULL,10,'nen so phai tiem loai ok chut',938),(2049,'hn ra chỉ tiêu ngay 15 tiêm toàn dân đó ạ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',12,NULL,NULL,10,'hn ra chi tieu ngay 15 tiem toan dan do a',939),(2050,'Bác đăng ký trên phường à bác',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',13,NULL,NULL,10,'Bac dang ky tren phuong a bac',940),(2051,'cái này mẹ e đky cho e ở cơ quan',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',14,NULL,NULL,10,'cai nay me e dky cho e o co quan',941),(2052,'tiêm ở bệnh viện ạ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',15,NULL,NULL,10,'tiem o benh vien a',942),(2053,'Dạ thế thì đỡ rồi',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',16,NULL,NULL,10,'Da the thi do roi',943),(2054,'chỗ bác',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',17,NULL,NULL,10,'cho bac',944),(2055,'tiêm loại gì ạ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',18,NULL,NULL,10,'tiem loai gi a',945),(2056,'Có gì tiêm nấy bác ạ',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',19,NULL,NULL,10,'Co gi tiem nay bac a',946),(2057,'Có quan hệ thì loại xịn',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',20,NULL,NULL,10,'Co quan he thi loai xin',947),(2058,'Dân đen như em thì sinopham thôi ạ',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',21,NULL,NULL,10,'Dan den nhu em thi sinopham thoi a',948),(2059,'Mà cũng chờ dài cổ',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',22,NULL,NULL,10,'Ma cung cho dai co',949),(2060,'Chả dc tiêm gì cả',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',23,NULL,NULL,10,'Cha dc tiem gi ca',950),(2061,'chỗ e',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',24,NULL,NULL,10,'cho e',951),(2062,'còn gõ cửa từng nhà',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',25,NULL,NULL,10,'con go cua tung nha',952),(2063,'đi tiêm',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',26,NULL,NULL,10,'di tiem',953),(2064,'sinh viên hay ng đi làm đc tiêm hết',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',27,NULL,NULL,10,'sinh vien hay ng di lam dc tiem het',954),(2065,'mang cmnd ra là đc tiêm',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',28,NULL,NULL,10,'mang cmnd ra la dc tiem',955),(2066,'Đúng là thủ đô',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',29,NULL,NULL,10,'Dung la thu do',956),(2067,'Làm việc quy cũ',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',30,NULL,NULL,10,'Lam viec quy cu',957),(2068,'Lãnh đạo tỉnh em',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',31,NULL,NULL,10,'Lanh dao tinh em',958),(2069,'Ẹ lắm',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',32,NULL,NULL,10,'E lam',959),(2070,'Mà h chờ thôi',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',33,NULL,NULL,10,'Ma h cho thoi',960),(2071,'tổ trưởng gõ cửa từng nhà . 2 tối nay r :))',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',34,NULL,NULL,10,'to truong go cua tung nha   2 toi nay r    ',961),(2072,'Cũng ko có cách khác',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',35,NULL,NULL,10,'Cung ko co cach khac',962),(2073,'tìm xem ai chưa tiêm',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',36,NULL,NULL,10,'tim xem ai chua tiem',963),(2074,'Mong là xong mấy tp lớn',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',37,NULL,NULL,10,'Mong la xong may tp lon',964),(2075,'Tp nhỏ tụi em dc tiêm nhìu',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',38,NULL,NULL,10,'Tp nho tui em dc tiem nhiu',965),(2076,'Dịch mún nát cái tp',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',39,NULL,NULL,10,'Dich mun nat cai tp',966),(2077,'Mà chờ vacxin chả thấy',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',40,NULL,NULL,10,'Ma cho vacxin cha thay',967),(2078,'Bùn dễ sợ',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',41,NULL,NULL,10,'Bun de so',968),(2079,'bác ở nha trang ạ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',42,NULL,NULL,10,'bac o nha trang a',969),(2080,'e thấy nha trang bị sao đâu nhỉ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',43,NULL,NULL,10,'e thay nha trang bi sao dau nhi',970),(2081,'Ở đây mới thấy bác ơi',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',44,NULL,NULL,10,'O day moi thay bac oi',971),(2082,'e có thấy báo lên đâu nhỉ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',45,NULL,NULL,10,'e co thay bao len dau nhi',972),(2083,'Tp bé tý mà mấy ngàn ca nhiễm',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',46,NULL,NULL,10,'Tp be ty ma may ngan ca nhiem',973),(2084,'Ở đây tp du lịch nên nó giấu tin ak bác',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',47,NULL,NULL,10,'O day tp du lich nen no giau tin ak bac',974),(2085,'Ớn lắm',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',48,NULL,NULL,10,'On lam',975),(2086,'ôi thế á',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',49,NULL,NULL,10,'oi the a',976),(2087,'@@',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',50,NULL,NULL,10,'  ',977),(2088,'e tưởng hcm vs bình dương thôi',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',51,NULL,NULL,10,'e tuong hcm vs binh duong thoi',978),(2089,'ai dè nha trang ghê vậy á',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',52,NULL,NULL,10,'ai de nha trang ghe vay a',979),(2090,'e k thấy tin gì về nha trang luôn',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',53,NULL,NULL,10,'e k thay tin gi ve nha trang luon',980),(2091,'Cả tỉnh khánh hòa top 7 hay 8 gì ak',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',54,NULL,NULL,10,'Ca tinh khanh hoa top 7 hay 8 gi ak',981),(2092,'Của vn ak',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',55,NULL,NULL,10,'Cua vn ak',982),(2093,'vâng thôi cùng nhau cố gắng bác ạ',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',56,NULL,NULL,10,'vang thoi cung nhau co gang bac a',983),(2094,'e còn đang sợ hết tuần sau hn bỏ dãn cách',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',57,NULL,NULL,10,'e con dang so het tuan sau hn bo dan cach',984),(2095,'k biết có làm ăn đc gì k đây',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',58,NULL,NULL,10,'k biet co lam an dc gi k day',985),(2096,'tại giờ dân kém r',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',59,NULL,NULL,10,'tai gio dan kem r',986),(2097,'nghề của e lại k phải hfang phổ thông',0,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',60,NULL,NULL,10,'nghe cua e lai k phai hfang pho thong',987),(2098,'Cứ phải cẩn thận sức khỏe bác ơi',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',61,NULL,NULL,10,'Cu phai can than suc khoe bac oi',988),(2099,'Còn thở là còn kiếm đc',1,'100017865601279','20 00  10 Thang 9  2021','10-9-2021 20:00',62,NULL,NULL,10,'Con tho la con kiem dc',989),(2100,'dạ vâng . cứ an toàn là yên tâm r bác ạ',0,'100017865601279','20 56  10 Thang 9  2021','10-9-2021 20:56',0,NULL,NULL,10,'da vang   cu an toan la yen tam r bac a',990),(2101,'chúc bác và gia đình bình an trong mùa dịch này nhé',0,'100017865601279','20 56  10 Thang 9  2021','10-9-2021 20:56',1,NULL,NULL,10,'chuc bac va gia dinh binh an trong mua dich nay nhe',991),(2102,'Dạ vâng cảm ơn bác ạ',1,'100017865601279','20 56  10 Thang 9  2021','10-9-2021 20:56',2,NULL,NULL,10,'Da vang cam on bac a',992),(2103,'Em cũng chúc gia đình bác giữ gìn sức khỏe ạ',1,'100017865601279','20 56  10 Thang 9  2021','10-9-2021 20:56',3,NULL,NULL,10,'Em cung chuc gia dinh bac giu gin suc khoe a',993),(2104,'dạ e cám ơn',0,'100017865601279','20 56  10 Thang 9  2021','10-9-2021 20:56',4,NULL,NULL,10,'da e cam on',994),(2105,'',0,'100017865601279','20 56  10 Thang 9  2021','10-9-2021 20:56',5,NULL,NULL,10,'',995),(2106,'',1,'100017865601279','20 56  10 Thang 9  2021','10-9-2021 20:56',6,NULL,NULL,10,'',996),(2107,'Bác tiêm sao rồi ạ',1,'100017865601279','13 59  13 Thang 9  2021','13-9-2021 13:59',0,NULL,NULL,10,'Bac tiem sao roi a',997),(2108,'Chắc để mai mình họp nha bác',1,'100017865601279','13 59  13 Thang 9  2021','13-9-2021 13:59',1,NULL,NULL,10,'Chac de mai minh hop nha bac',998),(2109,'Nay em có việc bận mất rồi ạ',1,'100017865601279','13 59  13 Thang 9  2021','13-9-2021 13:59',2,NULL,NULL,10,'Nay em co viec ban mat roi a',999),(2110,'mai nhé ạ',0,'100017865601279','16 22  13 Thang 9  2021','13-9-2021 16:22',0,NULL,NULL,10,'mai nhe a',1000),(2111,'giờ e mới ngủ dạy',0,'100017865601279','16 22  13 Thang 9  2021','13-9-2021 16:22',1,NULL,NULL,10,'gio e moi ngu day',1001),(2112,'ok ạ',0,'100017865601279','16 22  13 Thang 9  2021','13-9-2021 16:22',2,NULL,NULL,10,'ok a',1002),(2113,'ok ạ',1,'100017865601279','16 22  13 Thang 9  2021','13-9-2021 16:22',3,NULL,NULL,10,'ok a',1003),(2114,'chiều này 2h đc k ạ',0,'100017865601279','12 18  14 Thang 9  2021','14-9-2021 12:18',0,NULL,NULL,10,'chieu nay 2h dc k a',1004),(2115,'Dạ chiều nay đến lượt em đi tiêm',1,'100017865601279','13 02  14 Thang 9  2021','14-9-2021 13:02',0,NULL,NULL,10,'Da chieu nay den luot em di tiem',1005),(2116,'',1,'100017865601279','13 02  14 Thang 9  2021','14-9-2021 13:02',1,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',1006),(2117,'đen thật .kkk',0,'100017865601279','13 02  14 Thang 9  2021','14-9-2021 13:02',2,NULL,NULL,10,'den that  kkk',1007),(2118,'vậy mai vậy bác',0,'100017865601279','13 02  14 Thang 9  2021','14-9-2021 13:02',3,NULL,NULL,10,'vay mai vay bac',1008),(2119,'Có gì em nhắn bác sau nha bác',1,'100017865601279','13 02  14 Thang 9  2021','14-9-2021 13:02',4,NULL,NULL,10,'Co gi em nhan bac sau nha bac',1009),(2120,'Ok ạ',1,'100017865601279','13 02  14 Thang 9  2021','14-9-2021 13:02',5,NULL,NULL,10,'Ok a',1010),(2121,'okok',0,'100017865601279','13 02  14 Thang 9  2021','14-9-2021 13:02',6,NULL,NULL,10,'okok',1011),(2122,'hqa bác tiêm ntn',0,'100017865601279','13 18  15 Thang 9  2021','15-9-2021 13:18',0,NULL,NULL,10,'hqa bac tiem ntn',1012),(2123,'hnay 2h chiều đc k bác',0,'100017865601279','13 18  15 Thang 9  2021','15-9-2021 13:18',1,NULL,NULL,10,'hnay 2h chieu dc k bac',1013),(2124,'Nay bị vacxin nó làm mệt bác ơi',1,'100017865601279','14 11  15 Thang 9  2021','15-9-2021 14:11',0,NULL,NULL,10,'Nay bi vacxin no lam met bac oi',1014),(2125,'Chắc em xin bác qua ngày mai',1,'100017865601279','14 11  15 Thang 9  2021','15-9-2021 14:11',1,NULL,NULL,10,'Chac em xin bac qua ngay mai',1015),(2126,'Chứ nay chắc em off 1 bữa',1,'100017865601279','14 11  15 Thang 9  2021','15-9-2021 14:11',2,NULL,NULL,10,'Chu nay chac em off 1 bua',1016),(2127,'Em tiêm astra',1,'100017865601279','14 11  15 Thang 9  2021','15-9-2021 14:11',3,NULL,NULL,10,'Em tiem astra',1017),(2128,'Nó hành quá hành ',1,'100017865601279','14 11  15 Thang 9  2021','15-9-2021 14:11',4,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'No hanh qua hanh',1018),(2129,'Mai em cài cho bác 1 bản rồi mình cùng họp',1,'100017865601279','14 11  15 Thang 9  2021','15-9-2021 14:11',5,NULL,NULL,10,'Mai em cai cho bac 1 ban roi minh cung hop',1019),(2130,'dạ vâng ok ạ',0,'100017865601279','15 02  15 Thang 9  2021','15-9-2021 15:02',0,NULL,NULL,10,'da vang ok a',1020),(2131,'cài 1 bản lên web ạ',0,'100017865601279','15 02  15 Thang 9  2021','15-9-2021 15:02',1,NULL,NULL,10,'cai 1 ban len web a',1021),(2132,'Vâng 1 phần lên web 1 phần lên máy',1,'100017865601279','15 02  15 Thang 9  2021','15-9-2021 15:02',2,NULL,NULL,10,'Vang 1 phan len web 1 phan len may',1022),(2133,'Chiều 2h30 mình làm việc nha bác',1,'100017865601279','06 41  16 Thang 9  2021','16-9-2021 06:41',0,NULL,NULL,10,'Chieu 2h30 minh lam viec nha bac',1023),(2134,'',1,'100017865601279','06 41  16 Thang 9  2021','16-9-2021 06:41',1,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',1024),(2135,'alo bác',0,'100017865601279','11 49  17 Thang 9  2021','17-9-2021 11:49',0,NULL,NULL,10,'alo bac',1025),(2136,'chiều nayy làm vc dcd k',0,'100017865601279','11 49  17 Thang 9  2021','17-9-2021 11:49',1,NULL,NULL,10,'chieu nayy lam vc dcd k',1026),(2137,'Dc bác ơi',1,'100017865601279','11 49  17 Thang 9  2021','17-9-2021 11:49',2,NULL,NULL,10,'Dc bac oi',1027),(2138,'3h nha bác',1,'100017865601279','11 49  17 Thang 9  2021','17-9-2021 11:49',3,NULL,NULL,10,'3h nha bac',1028),(2139,'3h30 đc k ạ',0,'100017865601279','11 49  17 Thang 9  2021','17-9-2021 11:49',4,NULL,NULL,10,'3h30 dc k a',1029),(2140,'Dc bác',1,'100017865601279','11 49  17 Thang 9  2021','17-9-2021 11:49',5,NULL,NULL,10,'Dc bac',1030),(2141,'bác ơi chờ e tý nhé',0,'100017865601279','15 36  17 Thang 9  2021','17-9-2021 15:36',0,NULL,NULL,10,'bac oi cho e ty nhe',1031),(2142,'e đang sửa dàn trâu cày coin',0,'100017865601279','15 36  17 Thang 9  2021','17-9-2021 15:36',1,NULL,NULL,10,'e dang sua dan trau cay coin',1032),(2143,'xong e ib bác luôn',0,'100017865601279','15 36  17 Thang 9  2021','17-9-2021 15:36',2,NULL,NULL,10,'xong e ib bac luon',1033),(2144,'Ok ạ',1,'100017865601279','15 36  17 Thang 9  2021','17-9-2021 15:36',3,NULL,NULL,10,'Ok a',1034),(2145,'Chắc để mai nha bác',1,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',0,NULL,NULL,10,'Chac de mai nha bac',1035),(2146,'Cũng trễ rồi',1,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',1,NULL,NULL,10,'Cung tre roi',1036),(2147,'Bác sửa trâu bác đi',1,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',2,NULL,NULL,10,'Bac sua trau bac di',1037),(2148,'',1,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',3,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',1038),(2149,'Mai khi nào bác rảnh thì nhắn em nha bác',1,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',4,NULL,NULL,10,'Mai khi nao bac ranh thi nhan em nha bac',1039),(2150,'',0,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',5,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p180x540/242126567_535095780918574_4445220838974135062_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=aee45a&_nc_ohc=18f07JRqP0IAX9AY9SN&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=44d1c3686bce2a3ed0e8a0cd844a8f44&oe=61A76044',NULL,10,'',1040),(2151,':(((',0,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',6,NULL,NULL,10,'    ',1041),(2152,'háo hức pm quá . mà lại trễ hẹn',0,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',7,NULL,NULL,10,'hao huc pm qua   ma lai tre hen',1042),(2153,'Cứ từ bác',1,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',8,NULL,NULL,10,'Cu tu bac',1043),(2154,'Nó có chạy đâu đâu',1,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',9,NULL,NULL,10,'No co chay dau dau',1044),(2155,':)))',1,'100017865601279','16 30  17 Thang 9  2021','17-9-2021 16:30',10,NULL,NULL,10,'    ',1045),(2156,'ALO Ạ',0,'100017865601279','14 21  18 Thang 9  2021','18-9-2021 14:21',0,NULL,NULL,10,'ALO A',1046),(2157,'3h bác nhé',0,'100017865601279','14 21  18 Thang 9  2021','18-9-2021 14:21',1,NULL,NULL,10,'3h bac nhe',1047),(2158,'alo',0,'100017865601279','14 21  18 Thang 9  2021','18-9-2021 14:21',2,NULL,NULL,10,'alo',1048),(2159,'Ok bác',1,'100017865601279','14 46  18 Thang 9  2021','18-9-2021 14:46',0,NULL,NULL,10,'Ok bac',1049),(2160,'alo',0,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',0,NULL,NULL,10,'alo',1050),(2161,'dùng máy bác hay máy e nhỉ',0,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',1,NULL,NULL,10,'dung may bac hay may e nhi',1051),(2162,'Dạ máy em ạ',1,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',2,NULL,NULL,10,'Da may em a',1052),(2163,'Em đang chỉnh lại nên chưa cài máy bác dc',1,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',3,NULL,NULL,10,'Em dang chinh lai nen chua cai may bac dc',1053),(2164,'Mạng em hơi lag nha bác',1,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',4,NULL,NULL,10,'Mang em hoi lag nha bac',1054),(2165,'17 879 329',1,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',5,NULL,NULL,10,'17 879 329',1055),(2166,'8714',1,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',6,NULL,NULL,10,'8714',1056),(2167,'ok ạ',0,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',7,NULL,NULL,10,'ok a',1057),(2168,'e gọi qua fb nhé',0,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',8,NULL,NULL,10,'e goi qua fb nhe',1058),(2169,'Ok',1,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',9,NULL,NULL,10,'Ok',1059),(2170,'chờ e 2p',0,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',10,NULL,NULL,10,'cho e 2p',1060),(2171,'e vào nhé',0,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',11,NULL,NULL,10,'e vao nhe',1061),(2172,'Cuộc gọi thoại\n8 phút',0,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',12,NULL,NULL,10,'Cuoc goi thoai\n8 phut',1062),(2173,'Cuộc gọi thoại\n15:29',1,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',13,NULL,NULL,10,'Cuoc goi thoai\n15 29',1063),(2174,'alo bac ei',1,'100017865601279','15 07  18 Thang 9  2021','18-9-2021 15:07',14,NULL,NULL,10,'alo bac ei',1064),(2175,'Cuộc gọi thoại\n1 giờ 15 phút',0,'100017865601279','16 46  18 Thang 9  2021','18-9-2021 16:46',0,NULL,NULL,10,'Cuoc goi thoai\n1 gio 15 phut',1065),(2176,'bác ơi cho e hỏi 1 chút về mạng 3g trên đthoai',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',0,NULL,NULL,10,'bac oi cho e hoi 1 chut ve mang 3g tren dthoai',1066),(2177,'bác có biết k ạ',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',1,NULL,NULL,10,'bac co biet k a',1067),(2178,'ví dụ e có 300 cái đthoai bật 3g 1 chỗ chạy fb . vậy fb có nhận diện đx là 300 đthoai đó cũng ở 1 chỗ qua ip k nhỉ',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',2,NULL,NULL,10,'vi du e co 300 cai dthoai bat 3g 1 cho chay fb   vay fb co nhan dien dx la 300 dthoai do cung o 1 cho qua ip k nhi',1068),(2179,'3g thì ko đâu bác',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',3,NULL,NULL,10,'3g thi ko dau bac',1069),(2180,'Mỗi cái mội 3g đúng hok bác',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',4,NULL,NULL,10,'Moi cai moi 3g dung hok bac',1070),(2181,'dạ vâng',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',5,NULL,NULL,10,'da vang',1071),(2182,'mà 100 con vina 100 con mobi 100 con viettel',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',6,NULL,NULL,10,'ma 100 con vina 100 con mobi 100 con viettel',1072),(2183,'Vậy ko trùng đâu bác',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',7,NULL,NULL,10,'Vay ko trung dau bac',1073),(2184,'vâng e biết là k trùng',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',8,NULL,NULL,10,'vang e biet la k trung',1074),(2185,'nhưng có bao giờ fb biết đc 300 đthoai đó khác ip nhưng đều từ 1 chỗ k nhỉ',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',9,NULL,NULL,10,'nhung co bao gio fb biet dc 300 dthoai do khac ip nhung deu tu 1 cho k nhi',1075),(2186,'Dạ ko bác ơi',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',10,NULL,NULL,10,'Da ko bac oi',1076),(2187,'Cái location',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',11,NULL,NULL,10,'Cai location',1077),(2188,'Hiện tại chính xác nhất cũng ko xác định đc đâu bác',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',12,NULL,NULL,10,'Hien tai chinh xac nhat cung ko xac dinh dc dau bac',1078),(2189,'à vậy ạ',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',13,NULL,NULL,10,'a vay a',1079),(2190,'Fb nó nhận biết theo 3 cái',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',14,NULL,NULL,10,'Fb no nhan biet theo 3 cai',1080),(2191,'Country',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',15,NULL,NULL,10,'Country',1081),(2192,'Ip',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',16,NULL,NULL,10,'Ip',1082),(2193,'Vs proxy',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',17,NULL,NULL,10,'Vs proxy',1083),(2194,'vậy 3 cái đều khác nhau',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',18,NULL,NULL,10,'vay 3 cai deu khac nhau',1084),(2195,'giữa các đthoaij ạ',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',19,NULL,NULL,10,'giua cac dthoaij a',1085),(2196,'Ip vs proxy là đủ rồi bác',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',20,NULL,NULL,10,'Ip vs proxy la du roi bac',1086),(2197,'Khác country làm tín dụng cao hơn thôi',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',21,NULL,NULL,10,'Khac country lam tin dung cao hon thoi',1087),(2198,'Kiểu như via chất lượng hơn ấy',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',22,NULL,NULL,10,'Kieu nhu via chat luong hon ay',1088),(2199,'Hệ thống fb nó làm hay lắm',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',23,NULL,NULL,10,'He thong fb no lam hay lam',1089),(2200,'Phân loại dc ak',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',24,NULL,NULL,10,'Phan loai dc ak',1090),(2201,'có cách nào ví dụ e ở hn',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',25,NULL,NULL,10,'co cach nao vi du e o hn',1091),(2202,'mà bật 3g',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',26,NULL,NULL,10,'ma bat 3g',1092),(2203,'thì 3g contry ở hải phòng k bác nhỉ',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',27,NULL,NULL,10,'thi 3g contry o hai phong k bac nhi',1093),(2204,'Dc bác ơi',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',28,NULL,NULL,10,'Dc bac oi',1094),(2205,'Hình như nó có phần mềm fake mà',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',29,NULL,NULL,10,'Hinh nhu no co phan mem fake ma',1095),(2206,'Như hùi xưa chơi pokemon Go ak bác',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',30,NULL,NULL,10,'Nhu hui xua choi pokemon Go ak bac',1096),(2207,'Ngồi 1 chỗ đi cả thế giơis',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',31,NULL,NULL,10,'Ngoi 1 cho di ca the giois',1097),(2208,'',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',32,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,'',1098),(2209,'bác có nhớ phần mềm đó k ạ',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',33,NULL,NULL,10,'bac co nho phan mem do k a',1099),(2210,'nhưng nếu k fake thì',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',34,NULL,NULL,10,'nhung neu k fake thi',1100),(2211,'fb sẽ nhậ diện 300 đthoai đó ở hà nội',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',35,NULL,NULL,10,'fb se nha dien 300 dthoai do o ha noi',1101),(2212,'nhưng k biết cụ thể chính xác',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',36,NULL,NULL,10,'nhung k biet cu the chinh xac',1102),(2213,'ở đâu đúng k bác',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',37,NULL,NULL,10,'o dau dung k bac',1103),(2214,'hoặc nếu biết thì k thể nhận diện ra ở cùng 1 chỗ đúng k',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',38,NULL,NULL,10,'hoac neu biet thi k the nhan dien ra o cung 1 cho dung k',1104),(2215,'Có 1 điều chắn chắn là nó sẽ ko biết dc là cùng 1 chủ',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',39,NULL,NULL,10,'Co 1 dieu chan chan la no se ko biet dc la cung 1 chu',1105),(2216,':)))',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',40,NULL,NULL,10,'    ',1106),(2217,'và chắc chắn k cùng 1 chỗ phải k ạ :)))',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',41,NULL,NULL,10,'va chac chan k cung 1 cho phai k a     ',1107),(2218,'Em ko chắc 100%',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',42,NULL,NULL,10,'Em ko chac 100 ',1108),(2219,'=)))',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',43,NULL,NULL,10,'    ',1109),(2220,'Vì thực tế là nó mún biết thì vẫn biết dc',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',44,NULL,NULL,10,'Vi thuc te la no mun biet thi van biet dc',1110),(2221,'à vậy ạ',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',45,NULL,NULL,10,'a vay a',1111),(2222,'Còn nó có xét đến hay ko thì khá chắc là không đâu',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',46,NULL,NULL,10,'Con no co xet den hay ko thi kha chac la khong dau',1112),(2223,'e tưởng ip mình khác',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',47,NULL,NULL,10,'e tuong ip minh khac',1113),(2224,'Ip vs proxy khác nhau rồi',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',48,NULL,NULL,10,'Ip vs proxy khac nhau roi',1114),(2225,'à e lấy fb là ví dụ thôi',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',49,NULL,NULL,10,'a e lay fb la vi du thoi',1115),(2226,'vì e đàng chơi 1 game đào coin',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',50,NULL,NULL,10,'vi e dang choi 1 game dao coin',1116),(2227,'nó thắt chặt vấn đề ip',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',51,NULL,NULL,10,'no that chat van de ip',1117),(2228,'nên e đang tính đường dài í',0,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',52,NULL,NULL,10,'nen e dang tinh duong dai i',1118),(2229,'Em nghĩ là dc thôi',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',53,NULL,NULL,10,'Em nghi la dc thoi',1119),(2230,'Nếu ko dc ko lẽ trong 1 quán cf',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',54,NULL,NULL,10,'Neu ko dc ko le trong 1 quan cf',1120),(2231,'Ngồi chung vs nhau dính hết',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',55,NULL,NULL,10,'Ngoi chung vs nhau dinh het',1121),(2232,'Sao mà đc',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',56,NULL,NULL,10,'Sao ma dc',1122),(2233,'Mà quán cf',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',57,NULL,NULL,10,'Ma quan cf',1123),(2234,'Là chung ip rồi đó',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',58,NULL,NULL,10,'La chung ip roi do',1124),(2235,'Khác mỗi proxy thôi',1,'100017865601279','08 33  21 Thang 9  2021','21-9-2021 08:33',59,NULL,NULL,10,'Khac moi proxy thoi',1125),(2236,'dạ vâng',0,'100017865601279','09 21  21 Thang 9  2021','21-9-2021 09:21',0,NULL,NULL,10,'da vang',1126),(2237,'e cám ơn bác nhé',0,'100017865601279','09 21  21 Thang 9  2021','21-9-2021 09:21',1,NULL,NULL,10,'e cam on bac nhe',1127),(2238,'Ok ạ',1,'100017865601279','09 21  21 Thang 9  2021','21-9-2021 09:21',2,NULL,NULL,10,'Ok a',1128),(2239,'alo bác',0,'100017865601279','18 17  26 Thang 9  2021','26-9-2021 18:17',0,NULL,NULL,10,'alo bac',1129),(2240,'bao giờ mình có thể hợp thêm ạ',0,'100017865601279','18 17  26 Thang 9  2021','26-9-2021 18:17',1,NULL,NULL,10,'bao gio minh co the hop them a',1130),(2241,'Dạ nếu bác ko bận thì chiều mai ok ạ',1,'100017865601279','18 55  26 Thang 9  2021','26-9-2021 18:55',0,NULL,NULL,10,'Da neu bac ko ban thi chieu mai ok a',1131),(2242,'Bữa h em cũng lu bu quá chưa hẹn vs bác nữa',1,'100017865601279','18 55  26 Thang 9  2021','26-9-2021 18:55',1,NULL,NULL,10,'Bua h em cung lu bu qua chua hen vs bac nua',1132),(2243,'Chiều mai nha bác',1,'100017865601279','18 55  26 Thang 9  2021','26-9-2021 18:55',2,NULL,NULL,10,'Chieu mai nha bac',1133),(2244,'bác ơi e quên mất k báo bác',0,'100017865601279','14 25  27 Thang 9  2021','27-9-2021 14:25',0,NULL,NULL,10,'bac oi e quen mat k bao bac',1134),(2245,'hnay 49 ngày bố vợ e',0,'100017865601279','14 25  27 Thang 9  2021','27-9-2021 14:25',1,NULL,NULL,10,'hnay 49 ngay bo vo e',1135),(2246,'chiều mai đc k ạ',0,'100017865601279','14 25  27 Thang 9  2021','27-9-2021 14:25',2,NULL,NULL,10,'chieu mai dc k a',1136),(2247,'chắc chắn',0,'100017865601279','14 25  27 Thang 9  2021','27-9-2021 14:25',3,NULL,NULL,10,'chac chan',1137),(2248,'Ok dc nha bác',1,'100017865601279','14 41  27 Thang 9  2021','27-9-2021 14:41',0,NULL,NULL,10,'Ok dc nha bac',1138),(2249,'Em thoải mái mà',1,'100017865601279','14 41  27 Thang 9  2021','27-9-2021 14:41',1,NULL,NULL,10,'Em thoai mai ma',1139),(2250,'alo bác',0,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',0,NULL,NULL,10,'alo bac',1140),(2251,'online k ạ',0,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',1,NULL,NULL,10,'online k a',1141),(2252,'ae bàn nốpt',0,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',2,NULL,NULL,10,'ae ban nopt',1142),(2253,'vâng bác',1,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',3,NULL,NULL,10,'vang bac',1143),(2254,'ủa fb mess nó ko hiện notice',1,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',4,NULL,NULL,10,'ua fb mess no ko hien notice',1144),(2255,'em ko thấy bác nhắn',1,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',5,NULL,NULL,10,'em ko thay bac nhan',1145),(2256,'bây giờ ok ko bác',1,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',6,NULL,NULL,10,'bay gio ok ko bac',1146),(2257,'có mấy cái phải bàn xong mới làm được',1,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',7,NULL,NULL,10,'co may cai phai ban xong moi lam duoc',1147),(2258,'ok',0,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',8,NULL,NULL,10,'ok',1148),(2259,'e vào ultra bác nhé',0,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',9,NULL,NULL,10,'e vao ultra bac nhe',1149),(2260,'ok bacs',1,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',10,NULL,NULL,10,'ok bacs',1150),(2261,'gửi e ultra nhé',0,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',11,NULL,NULL,10,'gui e ultra nhe',1151),(2262,'17 879 329',1,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',12,NULL,NULL,10,'17 879 329',1152),(2263,'6807',1,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',13,NULL,NULL,10,'6807',1153),(2264,'Cuộc gọi thoại\n6 giây',0,'100017865601279','14 44  28 Thang 9  2021','28-9-2021 14:44',14,NULL,NULL,10,'Cuoc goi thoai\n6 giay',1154),(2265,'Cuộc gọi thoại\n21 phút',0,'100017865601279','15 13  28 Thang 9  2021','28-9-2021 15:13',0,NULL,NULL,10,'Cuoc goi thoai\n21 phut',1155),(2266,'bác ơi',1,'100017865601279','08 49  1 Thang 10  2021','1-10-2021 08:49',0,NULL,NULL,10,'bac oi',1156),(2267,'em chưa làm xong nữa ',1,'100017865601279','08 49  1 Thang 10  2021','1-10-2021 08:49',1,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'em chua lam xong nua',1157),(2268,'nếu đđược thì mai hay mốt mình họp nha bác ',1,'100017865601279','08 49  1 Thang 10  2021','1-10-2021 08:49',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'neu dduoc thi mai hay mot minh hop nha bac',1158),(2269,'sr bác ạ',1,'100017865601279','08 49  1 Thang 10  2021','1-10-2021 08:49',3,NULL,NULL,10,'sr bac a',1159),(2270,'ok ạ',0,'100017865601279','12 20  1 Thang 10  2021','1-10-2021 12:20',0,NULL,NULL,10,'ok a',1160),(2271,'vậy thứ 3 đc k ạ',0,'100017865601279','12 20  1 Thang 10  2021','1-10-2021 12:20',1,NULL,NULL,10,'vay thu 3 dc k a',1161),(2272,'Dạ ok ạ',1,'100017865601279','13 08  1 Thang 10  2021','1-10-2021 13:08',0,NULL,NULL,10,'Da ok a',1162),(2273,'Alo bác ơi',1,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',0,NULL,NULL,10,'Alo bac oi',1163),(2274,'',1,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',1,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',1164),(2275,'e đây',0,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',2,NULL,NULL,10,'e day',1165),(2276,'hnay e nhiều vc quá',0,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',3,NULL,NULL,10,'hnay e nhieu vc qua',1166),(2277,'e quên mất',0,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',4,NULL,NULL,10,'e quen mat',1167),(2278,'bác xong chwua ạ',0,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',5,NULL,NULL,10,'bac xong chwua a',1168),(2279,'Em h đang chăm con rồi bác :))))',1,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',6,NULL,NULL,10,'Em h dang cham con roi bac      ',1169),(2280,'Zj mai nha bác',1,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',7,NULL,NULL,10,'Zj mai nha bac',1170),(2281,'Khi nào bác rảnh hú em là dc',1,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',8,NULL,NULL,10,'Khi nao bac ranh hu em la dc',1171),(2282,'dạ vâng',0,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',9,NULL,NULL,10,'da vang',1172),(2283,'kết nối mess ok r đúng k ạ',0,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',10,NULL,NULL,10,'ket noi mess ok r dung k a',1173),(2284,'Ok lun bác :)))',1,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',11,NULL,NULL,10,'Ok lun bac     ',1174),(2285,'Nay em toàn ngồi test lại hết thôi',1,'100017865601279','16 58  5 Thang 10  2021','5-10-2021 16:58',12,NULL,NULL,10,'Nay em toan ngoi test lai het thoi',1175),(2286,'OK Ạ',0,'100017865601279','19 52  5 Thang 10  2021','5-10-2021 19:52',0,NULL,NULL,10,'OK A',1176),(2287,'mai e nhắn tin bác nh',0,'100017865601279','19 52  5 Thang 10  2021','5-10-2021 19:52',1,NULL,NULL,10,'mai e nhan tin bac nh',1177),(2288,'Ok ạ',1,'100017865601279','20 10  5 Thang 10  2021','5-10-2021 20:10',0,NULL,NULL,10,'Ok a',1178),(2289,'bác ơi chiều nay e có 1 cuộc họp . e hẹn bác chốt là sáng mai 10h30 làm việc nhé',0,'100017865601279','11 42  6 Thang 10  2021','6-10-2021 11:42',0,NULL,NULL,10,'bac oi chieu nay e co 1 cuoc hop   e hen bac chot la sang mai 10h30 lam viec nhe',1179),(2290,'hoặc nếu tối bác làm vc đc thì tối nay làm việc ạ',0,'100017865601279','11 42  6 Thang 10  2021','6-10-2021 11:42',1,NULL,NULL,10,'hoac neu toi bac lam vc dc thi toi nay lam viec a',1180),(2291,'sr bác nhiều ạ ',0,'100017865601279','11 42  6 Thang 10  2021','6-10-2021 11:42',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'sr bac nhieu a',1181),(2292,'Dạ ko sao ạ',1,'100017865601279','11 42  6 Thang 10  2021','6-10-2021 11:42',3,NULL,NULL,10,'Da ko sao a',1182),(2293,'Để mai nha bác',1,'100017865601279','11 42  6 Thang 10  2021','6-10-2021 11:42',4,NULL,NULL,10,'De mai nha bac',1183),(2294,'Bác ơi. Nếu đc thì chiều 3h nha bác',1,'100017865601279','10 14  7 Thang 10  2021','7-10-2021 10:14',0,NULL,NULL,10,'Bac oi  Neu dc thi chieu 3h nha bac',1184),(2295,'ok bác ạ',0,'100017865601279','11 39  7 Thang 10  2021','7-10-2021 11:39',0,NULL,NULL,10,'ok bac a',1185),(2296,'alo bác',1,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',0,NULL,NULL,10,'alo bac',1186),(2297,'khi nào họp được bác nhắn em nhé',1,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',1,NULL,NULL,10,'khi nao hop duoc bac nhan em nhe',1187),(2298,'alo',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',2,NULL,NULL,10,'alo',1188),(2299,'3h bác nhé',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',3,NULL,NULL,10,'3h bac nhe',1189),(2300,'ok ạ',1,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',4,NULL,NULL,10,'ok a',1190),(2301,'bác',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',5,NULL,NULL,10,'bac',1191),(2302,'gửi e ultra',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',6,NULL,NULL,10,'gui e ultra',1192),(2303,'nhé',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',7,NULL,NULL,10,'nhe',1193),(2304,'ok bac',1,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',8,NULL,NULL,10,'ok bac',1194),(2305,'17 879 329',1,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',9,NULL,NULL,10,'17 879 329',1195),(2306,'6485',1,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',10,NULL,NULL,10,'6485',1196),(2307,'chờ e tý',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',11,NULL,NULL,10,'cho e ty',1197),(2308,'e lây tai nghe',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',12,NULL,NULL,10,'e lay tai nghe',1198),(2309,'ok bac',1,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',13,NULL,NULL,10,'ok bac',1199),(2310,'',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',14,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/244760566_670604767199568_1324680754440334192_n.png?_nc_cat=103&ccb=1-5&_nc_sid=aee45a&_nc_ohc=0X0qWl3yxBQAX-MhoTV&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=ab14630334a33768e233df34278f930c&oe=61A4EE9D',NULL,10,'',1200),(2311,'e bị mất kết nối',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',15,NULL,NULL,10,'e bi mat ket noi',1201),(2312,'bác có any k ạ',0,'100017865601279','14 38  7 Thang 10  2021','7-10-2021 14:38',16,NULL,NULL,10,'bac co any k a',1202),(2313,'Cuộc gọi thoại\n34 phút',0,'100017865601279','15 37  7 Thang 10  2021','7-10-2021 15:37',0,NULL,NULL,10,'Cuoc goi thoai\n34 phut',1203),(2314,'bác ơi',1,'100017865601279','10 00  8 Thang 10  2021','8-10-2021 10:00',0,NULL,NULL,10,'bac oi',1204),(2315,'mai mình họp nha bác',1,'100017865601279','10 00  8 Thang 10  2021','8-10-2021 10:00',1,NULL,NULL,10,'mai minh hop nha bac',1205),(2316,'em fix không kịp ',1,'100017865601279','10 00  8 Thang 10  2021','8-10-2021 10:00',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'em fix khong kip',1206),(2317,'dạ vâng bác',0,'100017865601279','10 27  8 Thang 10  2021','8-10-2021 10:27',0,NULL,NULL,10,'da vang bac',1207),(2318,'mai cũng đc ạ',0,'100017865601279','10 27  8 Thang 10  2021','8-10-2021 10:27',1,NULL,NULL,10,'mai cung dc a',1208),(2319,'Dạ vâng',1,'100017865601279','10 27  8 Thang 10  2021','8-10-2021 10:27',2,NULL,NULL,10,'Da vang',1209),(2320,'Bác ơi',1,'100017865601279','17 06  9 Thang 10  2021','9-10-2021 17:06',0,NULL,NULL,10,'Bac oi',1210),(2321,'Sr bác',1,'100017865601279','17 06  9 Thang 10  2021','9-10-2021 17:06',1,NULL,NULL,10,'Sr bac',1211),(2322,'Nay em bạn quá ',1,'100017865601279','17 06  9 Thang 10  2021','9-10-2021 17:06',2,'https://static.xx.fbcdn.net/images/emoji.php/v9/tcb/1/16/1f641.png',NULL,10,'Nay em ban qua',1212),(2323,'Hic',1,'100017865601279','17 06  9 Thang 10  2021','9-10-2021 17:06',3,NULL,NULL,10,'Hic',1213),(2324,'vậy đê thứ 4 đc k bác',0,'100017865601279','20 24  9 Thang 10  2021','9-10-2021 20:24',0,NULL,NULL,10,'vay de thu 4 dc k bac',1214),(2325,'tại thứ 2 e đi tiêm .',0,'100017865601279','20 24  9 Thang 10  2021','9-10-2021 20:24',1,NULL,NULL,10,'tai thu 2 e di tiem  ',1215),(2326,'hẹn bác thứ 4 cho chắc ạ',0,'100017865601279','20 24  9 Thang 10  2021','9-10-2021 20:24',2,NULL,NULL,10,'hen bac thu 4 cho chac a',1216),(2327,'Dậ vâng zj cũng dc ạ',1,'100017865601279','20 24  9 Thang 10  2021','9-10-2021 20:24',3,NULL,NULL,10,'Da vang zj cung dc a',1217),(2328,'alo bác',1,'100017865601279','10 17  13 Thang 10  2021','13-10-2021 10:17',0,NULL,NULL,10,'alo bac',1218),(2329,'chiều 3h mình họp được không bác',1,'100017865601279','10 17  13 Thang 10  2021','13-10-2021 10:17',1,NULL,NULL,10,'chieu 3h minh hop duoc khong bac',1219),(2330,'e định nhắn bác',0,'100017865601279','10 48  13 Thang 10  2021','13-10-2021 10:48',0,NULL,NULL,10,'e dinh nhan bac',1220),(2331,'mai 10h30 sáng đc k',0,'100017865601279','10 48  13 Thang 10  2021','13-10-2021 10:48',1,NULL,NULL,10,'mai 10h30 sang dc k',1221),(2332,'tại hnay',0,'100017865601279','10 48  13 Thang 10  2021','13-10-2021 10:48',2,NULL,NULL,10,'tai hnay',1222),(2333,'dàn page bên e die',0,'100017865601279','10 48  13 Thang 10  2021','13-10-2021 10:48',3,NULL,NULL,10,'dan page ben e die',1223),(2334,'e đang xử lý',0,'100017865601279','10 48  13 Thang 10  2021','13-10-2021 10:48',4,NULL,NULL,10,'e dang xu ly',1224),(2335,'Ok bác ạ',1,'100017865601279','10 48  13 Thang 10  2021','13-10-2021 10:48',5,NULL,NULL,10,'Ok bac a',1225),(2336,'alo bác',0,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',0,NULL,NULL,10,'alo bac',1226),(2337,'có online k ạ',0,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',1,NULL,NULL,10,'co online k a',1227),(2338,'Dạ chắc để chiều nha bác',1,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',2,NULL,NULL,10,'Da chac de chieu nha bac',1228),(2339,'Em đang cho con em ngủ',1,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',3,NULL,NULL,10,'Em dang cho con em ngu',1229),(2340,'',1,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',4,'https://static.xx.fbcdn.net/images/emoji.php/v9/eb7/1/32/PACMAN.png',NULL,10,'',1230),(2341,'ok ạ',0,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',5,NULL,NULL,10,'ok a',1231),(2342,'chỗ mình vẫn chưa mở ạ',0,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',6,NULL,NULL,10,'cho minh van chua mo a',1232),(2343,'vẫn bị cấm à bác',0,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',7,NULL,NULL,10,'van bi cam a bac',1233),(2344,'Dạ mở rào rồi',1,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',8,NULL,NULL,10,'Da mo rao roi',1234),(2345,'Mà em chưa đủ 2 mũi',1,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',9,NULL,NULL,10,'Ma em chua du 2 mui',1235),(2346,'Vs mở lại xong cả mấy chục ca',1,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',10,NULL,NULL,10,'Vs mo lai xong ca may chuc ca',1236),(2347,'Tốt nhất vẫn nên hạn chế ra đường ạ',1,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',11,NULL,NULL,10,'Tot nhat van nen han che ra duong a',1237),(2348,'Vì nhà có con nhỏ nên cũng rén ',1,'100017865601279','10 53  14 Thang 10  2021','14-10-2021 10:53',12,'https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f603.png',NULL,10,'Vi nha co con nho nen cung ren',1238),(2349,'alo bác',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',0,NULL,NULL,10,'alo bac',1239),(2350,'e nghe',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',1,NULL,NULL,10,'e nghe',1240),(2351,'alo ạ',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',2,NULL,NULL,10,'alo a',1241),(2352,'chờ e chút 5p vào việc nhé',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',3,NULL,NULL,10,'cho e chut 5p vao viec nhe',1242),(2353,'ok bác',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',4,NULL,NULL,10,'ok bac',1243),(2354,'bác gửi e ultra',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',5,NULL,NULL,10,'bac gui e ultra',1244),(2355,'bác chờ em tý',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',6,NULL,NULL,10,'bac cho em ty',1245),(2356,'ok ạ',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',7,NULL,NULL,10,'ok a',1246),(2357,'cái web em up lên rồi',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',8,NULL,NULL,10,'cai web em up len roi',1247),(2358,'địa chỉ là ytuongvagiaiphap.com\nytuongvagiaiphap.com\nytuongvagiaiphap.com',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',9,NULL,NULL,10,'dia chi la ytuongvagiaiphap com\nytuongvagiaiphap com\nytuongvagiaiphap com',1248),(2359,'mà em mới này phá gì nó hư rồi',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',10,NULL,NULL,10,'ma em moi nay pha gi no hu roi',1249),(2360,'em đang chỉnh lại ',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',11,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'em dang chinh lai',1250),(2361,'ok xong báo e nhé',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',12,NULL,NULL,10,'ok xong bao e nhe',1251),(2362,'ok bác',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',13,NULL,NULL,10,'ok bac',1252),(2363,'17 879 329',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',14,NULL,NULL,10,'17 879 329',1253),(2364,'8181',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',15,NULL,NULL,10,'8181',1254),(2365,'e vào nhé',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',16,NULL,NULL,10,'e vao nhe',1255),(2366,'ok bac',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',17,NULL,NULL,10,'ok bac',1256),(2367,'e sợ k vào đc r',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',18,NULL,NULL,10,'e so k vao dc r',1257),(2368,'tại mạng công ty bên e',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',19,NULL,NULL,10,'tai mang cong ty ben e',1258),(2369,'hnay là kinh khủng',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',20,NULL,NULL,10,'hnay la kinh khung',1259),(2370,'',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',21,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/245644879_880306066000338_9041119640784427541_n.png?_nc_cat=110&ccb=1-5&_nc_sid=aee45a&_nc_aid=0&_nc_ohc=2bKqAt8cEWUAX_WT68I&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=7ebe2173f6ca94be323275645ffa4c52&oe=61A7724C',NULL,10,'',1260),(2371,'Vậy hả bác',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',22,NULL,NULL,10,'Vay ha bac',1261),(2372,'bác có teamview k',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',23,NULL,NULL,10,'bac co teamview k',1262),(2373,'Cái sv bên em lỗi rồi',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',24,NULL,NULL,10,'Cai sv ben em loi roi',1263),(2374,'H em để bác remote test',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',25,NULL,NULL,10,'H em de bac remote test',1264),(2375,'Có bác',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',26,NULL,NULL,10,'Co bac',1265),(2376,'Hay bác dùng anydesk',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',27,NULL,NULL,10,'Hay bac dung anydesk',1266),(2377,'remote test là gì ạ',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',28,NULL,NULL,10,'remote test la gi a',1267),(2378,'À là kết nối mày em ấy',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',29,NULL,NULL,10,'A la ket noi may em ay',1268),(2379,'à hay bác cứ up lên sever đi',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',30,NULL,NULL,10,'a hay bac cu up len sever di',1269),(2380,'Chạy thử hết mấy chức năng trên web',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',31,NULL,NULL,10,'Chay thu het may chuc nang tren web',1270),(2381,'ổn r báo e cũng đc',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',32,NULL,NULL,10,'on r bao e cung dc',1271),(2382,'Sv em nó đang lỗi',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',33,NULL,NULL,10,'Sv em no dang loi',1272),(2383,'severr có liên quan đến phần web mình làm k',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',34,NULL,NULL,10,'severr co lien quan den phan web minh lam k',1273),(2384,'hay nó là riêng',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',35,NULL,NULL,10,'hay no la rieng',1274),(2385,'Nó riêng bác',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',36,NULL,NULL,10,'No rieng bac',1275),(2386,'Mà web mình làm nằm trên nó',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',37,NULL,NULL,10,'Ma web minh lam nam tren no',1276),(2387,'Hay chờ em fix xong nhé',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',38,NULL,NULL,10,'Hay cho em fix xong nhe',1277),(2388,'à r e hiểu r',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',39,NULL,NULL,10,'a r e hieu r',1278),(2389,'Rồi em gửi qua bác',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',40,NULL,NULL,10,'Roi em gui qua bac',1279),(2390,'vâng . hay bác fix xong báo e',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',41,NULL,NULL,10,'vang   hay bac fix xong bao e',1280),(2391,'tại giờ e dùng máy bác nó cũng lag lag í',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',42,NULL,NULL,10,'tai gio e dung may bac no cung lag lag i',1281),(2392,'Mấy web khác của em cũng sụp luôn',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',43,NULL,NULL,10,'May web khac cua em cung sup luon',1282),(2393,'Khách gọi chửi quá chời ',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',44,'https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png',NULL,10,'Khach goi chui qua choi',1283),(2394,'nếu vậy',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',45,NULL,NULL,10,'neu vay',1284),(2395,'thì tầm bao lâu là có bác nhỉ',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',46,NULL,NULL,10,'thi tam bao lau la co bac nhi',1285),(2396,'kiểu sửa xong í',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',47,NULL,NULL,10,'kieu sua xong i',1286),(2397,'Để em xem tối sao',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',48,NULL,NULL,10,'De em xem toi sao',1287),(2398,'Hay h bác tải anydesk đi',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',49,NULL,NULL,10,'Hay h bac tai anydesk di',1288),(2399,'Mình bàn tý',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',50,NULL,NULL,10,'Minh ban ty',1289),(2400,'Có mấy cái mún cho bác xem',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',51,NULL,NULL,10,'Co may cai mun cho bac xem',1290),(2401,'hay bác gửi teamview',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',52,NULL,NULL,10,'hay bac gui teamview',1291),(2402,'cho e',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',53,NULL,NULL,10,'cho e',1292),(2403,'Ok bác',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',54,NULL,NULL,10,'Ok bac',1293),(2404,'e thấy teamview đỡ hơn',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',55,NULL,NULL,10,'e thay teamview do hon',1294),(2405,'390 027 014',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',56,NULL,NULL,10,'390 027 014',1295),(2406,'6f2fi6',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',57,NULL,NULL,10,'6f2fi6',1296),(2407,'e ogji bác nhé',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',58,NULL,NULL,10,'e ogji bac nhe',1297),(2408,'Ok ạ',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',59,NULL,NULL,10,'Ok a',1298),(2409,'',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',60,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/245686796_598438558014595_8694743510472544156_n.png?_nc_cat=106&ccb=1-5&_nc_sid=aee45a&_nc_ohc=yJT0UVZDH2gAX84pl2c&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=502d979147a2d11bdf1266df767cc492&oe=61A79E27',NULL,10,'',1299),(2410,'',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',61,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/243397534_408593250830339_5885725622107745585_n.png?_nc_cat=107&ccb=1-5&_nc_sid=aee45a&_nc_ohc=YkBXO3taT70AX9rt2Pk&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=cdcd5ad73e499f79d8759c13f79a056f&oe=61A50477',NULL,10,'',1300),(2411,'Cuộc gọi thoại\n4 phút',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',62,NULL,NULL,10,'Cuoc goi thoai\n4 phut',1301),(2412,'bác cho e xin ultra',0,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',63,NULL,NULL,10,'bac cho e xin ultra',1302),(2413,'17 879 329',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',64,NULL,NULL,10,'17 879 329',1303),(2414,'7346',1,'100017865601279','15 07  14 Thang 10  2021','14-10-2021 15:07',65,NULL,NULL,10,'7346',1304),(2415,'1 - mã chuyển tiền \n2 - mã đơn hàng ( tìm kiếm )',0,'100017865601279','16 17  14 Thang 10  2021','14-10-2021 16:17',0,NULL,NULL,10,'1   ma chuyen tien \n2   ma don hang   tim kiem  ',1305),(2416,'https://github.com/seannguyenit/WebNodeJS_ChatFB\nGitHub - seannguyenit/WebNodeJS_ChatFB\ngithub.com',1,'100017865601279','16 17  14 Thang 10  2021','14-10-2021 16:17',1,'https://external.xx.fbcdn.net/safe_image.php?d=AQGjwhCJfwRIDVwL&w=300&h=157&url=https%3A%2F%2Fopengraph.githubassets.com%2F7265ba0823f293cd40cff01af633411970ee0bf9aefc1f4bc48074be6b36e8b6%2Fseannguyenit%2FWebNodeJS_ChatFB&cfs=1&ext=emg0&_nc_oe=6ef65&_nc_sid=06c271&ccb=3-5&_nc_hash=AQFHBIXstUyJGZuW',NULL,10,'https   github com seannguyenit WebNodeJS ChatFB\nGitHub   seannguyenit WebNodeJS ChatFB\ngithub com',1306),(2417,'Cuộc gọi thoại\n29 phút',0,'100017865601279','16 17  14 Thang 10  2021','14-10-2021 16:17',2,NULL,NULL,10,'Cuoc goi thoai\n29 phut',1307),(2418,'',1,'100017865601279','16 17  14 Thang 10  2021','14-10-2021 16:17',3,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s403x403/179686092_920570555405166_1955373864411682007_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=aee45a&_nc_ohc=ghVAB7vQJ38AX830dLu&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=af1699f48c2378b2c8a9acabf0a52830&oe=61A49183',NULL,10,'',1308),(2419,'Em gửi bác',1,'100017865601279','16 17  14 Thang 10  2021','14-10-2021 16:17',4,NULL,NULL,10,'Em gui bac',1309),(2420,'ok ạ',0,'100017865601279','16 17  14 Thang 10  2021','14-10-2021 16:17',5,NULL,NULL,10,'ok a',1310),(2421,'e guiwri nhnes',0,'100017865601279','16 17  14 Thang 10  2021','14-10-2021 16:17',6,NULL,NULL,10,'e guiwri nhnes',1311),(2422,'',0,'100017865601279','16 17  14 Thang 10  2021','14-10-2021 16:17',7,'https://scontent.xx.fbcdn.net/v/t1.15752-9/s720x720/245954951_3896760257093680_2185616255103565319_n.png?_nc_cat=100&ccb=1-5&_nc_sid=aee45a&_nc_ohc=eeftkFy21gEAX_DP79P&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=78d444feaffcb3d78e0039b12cd37f1f&oe=61A4E4CD',NULL,10,'',1312),(2423,'Ok ạ. Em cảm ơn bác',1,'100017865601279','16 42  14 Thang 10  2021','14-10-2021 16:42',0,NULL,NULL,10,'Ok a  Em cam on bac',1313),(2424,'alo bác',1,'100017865601279','15 19  18 Thang 10  2021','18-10-2021 15:19',0,NULL,NULL,10,'alo bac',1314),(2425,'em gửi bác địc chỉ web',1,'100017865601279','15 19  18 Thang 10  2021','18-10-2021 15:19',1,NULL,NULL,10,'em gui bac dic chi web',1315),(2426,'https://arthurtech.xyz/\narthurtech.xyz\narthurtech.xyz',1,'100017865601279','15 19  18 Thang 10  2021','18-10-2021 15:19',2,NULL,NULL,10,'https   arthurtech xyz \narthurtech xyz\narthurtech xyz',1316),(2427,'vs client extention chrome',1,'100017865601279','15 19  18 Thang 10  2021','18-10-2021 15:19',3,NULL,NULL,10,'vs client extention chrome',1317),(2428,'https://drive.google.com/file/d/1tGT3PncyUwEgGmeStW0EtCIzZbh7KosL/view?usp=sharing\nmesenger_client_V1.0.zip\ndrive.google.com',1,'100017865601279','15 19  18 Thang 10  2021','18-10-2021 15:19',4,NULL,NULL,10,'https   drive google com file d 1tGT3PncyUwEgGmeStW0EtCIzZbh7KosL view usp sharing\nmesenger client V1 0 zip\ndrive google com',1318),(2429,'hôm nào mình họp nha bác',1,'100017865601279','15 19  18 Thang 10  2021','18-10-2021 15:19',5,NULL,NULL,10,'hom nao minh hop nha bac',1319),(2430,'Alo bác ei',1,'100017865601279','08 26  19 Thang 10  2021','19-10-2021 08:26',0,NULL,NULL,10,'Alo bac ei',1320),(2431,'để mai đc k',0,'100017865601279','12 16  19 Thang 10  2021','19-10-2021 12:16',0,NULL,NULL,10,'de mai dc k',1321),(2432,'hany e nhiều vc quá',0,'100017865601279','12 16  19 Thang 10  2021','19-10-2021 12:16',1,NULL,NULL,10,'hany e nhieu vc qua',1322),(2433,'Vâng khi nào cũn dc bác',1,'100017865601279','12 16  19 Thang 10  2021','19-10-2021 12:16',2,NULL,NULL,10,'Vang khi nao cun dc bac',1323),(2434,'alo bác',0,'100017865601279','12 14  21 Thang 10  2021','21-10-2021 12:14',0,NULL,NULL,10,'alo bac',1324),(2435,'chiều mai bác rảnh k',0,'100017865601279','12 14  21 Thang 10  2021','21-10-2021 12:14',1,NULL,NULL,10,'chieu mai bac ranh k',1325),(2436,'hqa e tổ chức 20-10 cho các chị em',0,'100017865601279','12 14  21 Thang 10  2021','21-10-2021 12:14',2,NULL,NULL,10,'hqa e to chuc 20 10 cho cac chi em',1326),(2437,'Vâng đc bác',1,'100017865601279','12 14  21 Thang 10  2021','21-10-2021 12:14',3,NULL,NULL,10,'Vang dc bac',1327),(2438,'',1,'100017865601279','12 14  21 Thang 10  2021','21-10-2021 12:14',4,'https://static.xx.fbcdn.net/images/emoji.php/v9/tb/1/32/1f603.png',NULL,10,'',1328),(2439,'alo bác',0,'100017865601279','14 26  22 Thang 10  2021','22-10-2021 14:26',0,NULL,NULL,10,'alo bac',1329),(2440,'3h bác rảnh k ạ',0,'100017865601279','14 26  22 Thang 10  2021','22-10-2021 14:26',1,NULL,NULL,10,'3h bac ranh k a',1330),(2441,'ok bac a',1,'100017865601279','14 44  22 Thang 10  2021','22-10-2021 14:44',0,NULL,NULL,10,'ok bac a',1331),(2442,'alo bác',0,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',0,NULL,NULL,10,'alo bac',1332),(2443,'gửi e ultra nhé',0,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',1,NULL,NULL,10,'gui e ultra nhe',1333),(2444,'dùng máy em hay máy bác đây',1,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',2,NULL,NULL,10,'dung may em hay may bac day',1334),(2445,'hay dùng máy bác thử đi',1,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',3,NULL,NULL,10,'hay dung may bac thu di',1335),(2446,'em cài cho bác',1,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',4,NULL,NULL,10,'em cai cho bac',1336),(2447,'ok ạ',0,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',5,NULL,NULL,10,'ok a',1337),(2448,'36 630 318',0,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',6,NULL,NULL,10,'36 630 318',1338),(2449,'fgan2z',0,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',7,NULL,NULL,10,'fgan2z',1339),(2450,'bác gọi đi ạ',1,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',8,NULL,NULL,10,'bac goi di a',1340),(2451,'cài exstion đúng k bác',0,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',9,NULL,NULL,10,'cai exstion dung k bac',1341),(2452,'để e cài',0,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',10,NULL,NULL,10,'de e cai',1342),(2453,'à vầng để e gọi',0,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',11,NULL,NULL,10,'a vang de e goi',1343),(2454,'ok ạ',1,'100017865601279','15 13  22 Thang 10  2021','22-10-2021 15:13',12,NULL,NULL,10,'ok a',1344),(2455,'Cuộc gọi thoại\n33 phút',0,'100017865601279','15 53  22 Thang 10  2021','22-10-2021 15:53',0,NULL,NULL,10,'Cuoc goi thoai\n33 phut',1345),(2456,'qua ttuần mình họp lại nha bác',1,'100017865601279','15 53  22 Thang 10  2021','22-10-2021 15:53',1,NULL,NULL,10,'qua ttuan minh hop lai nha bac',1346),(2457,'em nâng cấp hệ thống tin nhắn đã',1,'100017865601279','15 53  22 Thang 10  2021','22-10-2021 15:53',2,NULL,NULL,10,'em nang cap he thong tin nhan da',1347),(2458,'da vang ok bac a',0,'100017865601279','15 53  22 Thang 10  2021','22-10-2021 15:53',3,NULL,NULL,10,'da vang ok bac a',1348),(2459,'https://drive.google.com/file/d/1J6TZqGeSK5ybF5f9aXghaJ_E1FvE9LA4/view?usp=sharing\nmesenger_client_V2.0.zip\ndrive.google.com',1,'100017865601279','T3 09 11','26-10-2021 09:11',0,NULL,NULL,10,'https   drive google com file d 1J6TZqGeSK5ybF5f9aXghaJ E1FvE9LA4 view usp sharing\nmesenger client V2 0 zip\ndrive google com',1349),(2460,'gửi bác bản extention chrome mới nhất',1,'100017865601279','T3 09 11','26-10-2021 09:11',1,NULL,NULL,10,'gui bac ban extention chrome moi nhat',1350),(2461,'fix chat',1,'100017865601279','T3 09 11','26-10-2021 09:11',2,NULL,NULL,10,'fix chat',1351),(2462,'dạ',0,'100017865601279','T3 11 40','26-10-2021 11:40',0,NULL,NULL,10,'da',1352),(2463,'e hẹn bác thứ 5 nhé',0,'100017865601279','T3 11 40','26-10-2021 11:40',1,NULL,NULL,10,'e hen bac thu 5 nhe',1353),(2464,'ae trao đổi',0,'100017865601279','T3 11 40','26-10-2021 11:40',2,NULL,NULL,10,'ae trao doi',1354),(2465,'Ok bác mà mình trao đổi tối dc không bác :)))',1,'100017865601279','T3 12 33','26-10-2021 12:33',0,NULL,NULL,10,'Ok bac ma minh trao doi toi dc khong bac     ',1355),(2466,'Dạo này ban ngày em hơi quá tải',1,'100017865601279','T3 12 33','26-10-2021 12:33',1,NULL,NULL,10,'Dao nay ban ngay em hoi qua tai',1356),(2467,':))))',1,'100017865601279','T3 12 33','26-10-2021 12:33',2,NULL,NULL,10,'     ',1357),(2468,'vâng',0,'100017865601279','T3 13 43','26-10-2021 13:43',0,NULL,NULL,10,'vang',1358),(2469,'e vẫn muốn trao đổi tối',0,'100017865601279','T3 13 43','26-10-2021 13:43',1,NULL,NULL,10,'e van muon trao doi toi',1359),(2470,'nhưng e thấy bác bảo bận',0,'100017865601279','T3 13 43','26-10-2021 13:43',2,NULL,NULL,10,'nhung e thay bac bao ban',1360),(2471,'Ok bác vậy tối t5 nha bác',1,'100017865601279','T3 14 10','26-10-2021 14:10',0,NULL,NULL,10,'Ok bac vay toi t5 nha bac',1361),(2472,'ok ạ',0,'100017865601279','T3 14 10','26-10-2021 14:10',1,NULL,NULL,10,'ok a',1362),(2473,'alo bác',0,'100017865601279','T5 15 43','28-10-2021 15:43',0,NULL,NULL,10,'alo bac',1363),(2474,'cái bản exstension này là bản mới nhất đúng k ạ',0,'100017865601279','T5 15 43','28-10-2021 15:43',1,NULL,NULL,10,'cai ban exstension nay la ban moi nhat dung k a',1364),(2475,'cài bản này nó sẽ hiện tạo bộ tin nhắn 1 cách dễ dàng trong web đúng k bác',0,'100017865601279','T5 15 43','28-10-2021 15:43',2,NULL,NULL,10,'cai ban nay no se hien tao bo tin nhan 1 cach de dang trong web dung k bac',1365),(2476,'Đúng rồi bác',1,'100017865601279','T5 16 35','28-10-2021 16:35',0,NULL,NULL,10,'Dung roi bac',1366),(2477,'Tối mấy h mình họp dc bác',1,'100017865601279','T5 17 26','28-10-2021 17:26',0,NULL,NULL,10,'Toi may h minh hop dc bac',1367),(2478,'để 9h đc k ạ',0,'100017865601279','T5 18 28','28-10-2021 18:28',0,NULL,NULL,10,'de 9h dc k a',1368),(2479,'tại tối e lại ăn cơm với nhà ngoại',0,'100017865601279','T5 18 28','28-10-2021 18:28',1,NULL,NULL,10,'tai toi e lai an com voi nha ngoai',1369),(2480,'Dc bác',1,'100017865601279','T5 18 52','28-10-2021 18:52',0,NULL,NULL,10,'Dc bac',1370),(2481,'9 10h cho thoải mái cũng dc ạ',1,'100017865601279','T5 18 52','28-10-2021 18:52',1,NULL,NULL,10,'9 10h cho thoai mai cung dc a',1371),(2482,'ok ạ',0,'100017865601279','T5 20 03','28-10-2021 20:03',0,NULL,NULL,10,'ok a',1372),(2483,'xong vc e nhắn tin bác luôn',0,'100017865601279','T5 20 03','28-10-2021 20:03',1,NULL,NULL,10,'xong vc e nhan tin bac luon',1373),(2484,'Ok bác',1,'100017865601279','T5 20 03','28-10-2021 20:03',2,NULL,NULL,10,'Ok bac',1374),(2485,'alo bác',0,'100017865601279','T5 21 31','28-10-2021 21:31',0,NULL,NULL,10,'alo bac',1375),(2486,'Vâng bác',1,'100017865601279','T5 21 31','28-10-2021 21:31',1,NULL,NULL,10,'Vang bac',1376),(2487,'Mình bắt đầu chưa bác',1,'100017865601279','T5 21 31','28-10-2021 21:31',2,NULL,NULL,10,'Minh bat dau chua bac',1377),(2488,'Để em vác máy ra đường',1,'100017865601279','T5 21 31','28-10-2021 21:31',3,NULL,NULL,10,'De em vac may ra duong',1378),(2489,'Chứ con em đang ngủ :)))',1,'100017865601279','T5 21 31','28-10-2021 21:31',4,NULL,NULL,10,'Chu con em dang ngu     ',1379),(2490,'ok ạ',0,'100017865601279','T5 21 31','28-10-2021 21:31',5,NULL,NULL,10,'ok a',1380),(2491,'e vào ultra máy bác',0,'100017865601279','T5 21 31','28-10-2021 21:31',6,NULL,NULL,10,'e vao ultra may bac',1381),(2492,'hay bác vào máy e',0,'100017865601279','T5 21 31','28-10-2021 21:31',7,NULL,NULL,10,'hay bac vao may e',1382),(2493,'Vào máy bác đi',1,'100017865601279','T5 21 31','28-10-2021 21:31',8,NULL,NULL,10,'Vao may bac di',1383),(2494,'Giờ thao tác trên máy bác luôn',1,'100017865601279','T5 21 31','28-10-2021 21:31',9,NULL,NULL,10,'Gio thao tac tren may bac luon',1384),(2495,'ok',0,'100017865601279','T5 21 31','28-10-2021 21:31',10,NULL,NULL,10,'ok',1385),(2496,'bác xong báo e',0,'100017865601279','T5 21 31','28-10-2021 21:31',11,NULL,NULL,10,'bac xong bao e',1386),(2497,'e gửi ultra',0,'100017865601279','T5 21 31','28-10-2021 21:31',12,NULL,NULL,10,'e gui ultra',1387),(2498,'Chờ em xý nha bác',1,'100017865601279','T5 21 31','28-10-2021 21:31',13,NULL,NULL,10,'Cho em xy nha bac',1388),(2499,'ok ạ',0,'100017865601279','T5 21 31','28-10-2021 21:31',14,NULL,NULL,10,'ok a',1389),(2500,'Alo bác',1,'100017865601279','T5 21 31','28-10-2021 21:31',15,NULL,NULL,10,'Alo bac',1390),(2501,'Gửi em ultra ạ',1,'100017865601279','T5 21 31','28-10-2021 21:31',16,NULL,NULL,10,'Gui em ultra a',1391),(2502,'chờ e 2p',0,'100017865601279','T5 21 31','28-10-2021 21:31',17,NULL,NULL,10,'cho e 2p',1392),(2503,'Pham Tien đã thu hồi một tin nhắn',0,'100017865601279','T5 21 31','28-10-2021 21:31',18,NULL,NULL,10,'Pham Tien da thu hoi mot tin nhan',1393),(2504,'43 316 112',0,'100017865601279','T5 21 31','28-10-2021 21:31',19,NULL,NULL,10,'43 316 112',1394),(2505,'1477',0,'100017865601279','T5 21 31','28-10-2021 21:31',20,NULL,NULL,10,'1477',1395),(2506,'Bác cài bản mới chưa ạ',1,'100017865601279','T5 21 31','28-10-2021 21:31',21,NULL,NULL,10,'Bac cai ban moi chua a',1396),(2507,'e vừa cài xong',0,'100017865601279','T5 21 31','28-10-2021 21:31',22,NULL,NULL,10,'e vua cai xong',1397),(2508,'Bác gọi em đi ạ',1,'100017865601279','T5 21 31','28-10-2021 21:31',23,NULL,NULL,10,'Bac goi em di a',1398),(2509,'ok ạ',0,'100017865601279','T5 21 31','28-10-2021 21:31',24,NULL,NULL,10,'ok a',1399),(2510,'admin',0,'100017865601279','T5 21 31','28-10-2021 21:31',25,NULL,NULL,10,'admin',1400),(2511,'123456',0,'100017865601279','T5 21 31','28-10-2021 21:31',26,NULL,NULL,10,'123456',1401),(2512,'alo aj',0,'100017865601279','T5 21 31','28-10-2021 21:31',27,NULL,NULL,10,'alo aj',1402),(2513,'',0,'100017865601279','T5 21 31','28-10-2021 21:31',28,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p180x540/249334838_175594654764767_8624862890848876841_n.png?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Y8mW7DhtB2sAX8eb0fn&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=293459c45706e74e0ce8273cac881f6b&oe=61A5CA9C',NULL,10,'',1403),(2514,'1 - thêm cái lưu khách hàng .có hiện avata . và check lại lưu hình ảnh nhân viên và tên nv',0,'100017865601279','T5 21 31','28-10-2021 21:31',29,NULL,NULL,10,'1   them cai luu khach hang  co hien avata   va check lai luu hinh anh nhan vien va ten nv',1404),(2515,'',0,'100017865601279','T5 21 31','28-10-2021 21:31',30,'https://scontent.xx.fbcdn.net/v/t1.15752-9/249581589_220388610188336_7629084706248685155_n.png?_nc_cat=107&ccb=1-5&_nc_sid=aee45a&_nc_ohc=cRe6aASQwJYAX-RSUIf&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=e12c34c9879cd482d0729e8ad6da652e&oe=61A7C233',NULL,10,'',1405),(2516,'',0,'100017865601279','T5 21 31','28-10-2021 21:31',31,'https://scontent.xx.fbcdn.net/v/t1.15752-9/cp0/249581571_573136967301997_1242203172725368569_n.png?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=NJoGgA44vHsAX8dSeM9&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=e22ff5de77949a67195a2a7810acb7dd&oe=61818695',NULL,10,'',1406),(2517,'alo',0,'100017865601279','T5 21 31','28-10-2021 21:31',32,NULL,NULL,10,'alo',1407),(2518,'1',0,'100017865601279','T5 21 31','28-10-2021 21:31',33,NULL,NULL,10,'1',1408),(2519,'2',0,'100017865601279','T5 21 31','28-10-2021 21:31',34,NULL,NULL,10,'2',1409),(2520,'3',0,'100017865601279','T5 21 31','28-10-2021 21:31',35,NULL,NULL,10,'3',1410),(2521,'2 - kiểm tra hình ảnh khi gửi',0,'100017865601279','T5 21 31','28-10-2021 21:31',36,NULL,NULL,10,'2   kiem tra hinh anh khi gui',1411),(2522,'https://www.facebook.com/phamtien.pham.73550/\nPham Tien Pham',0,'100017865601279','T5 21 31','28-10-2021 21:31',37,'https://scontent.fdad7-1.fna.fbcdn.net/v/t1.6435-1/c0.76.320.168a/p320x320/58462425_371676803437837_7775662591438749696_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=XWF0qG5H-yQAX_P2oOC&_nc_ht=scontent.fdad7-1.fna&oh=ea6bb9dc0b728f4bddd569d2c354263f&oe=61A5B118',NULL,10,'https   www facebook com phamtien pham 73550 \nPham Tien Pham',1412),(2523,'https://www.facebook.com/profile.php?id=100013101489224\nNguyễn Tuấn',0,'100017865601279','T5 21 31','28-10-2021 21:31',38,'https://scontent.fdad7-1.fna.fbcdn.net/v/t1.6435-1/c80.76.320.168a/p320x320/167127687_1149592652154107_125390151178641618_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=NKKOuZJK_4YAX-kpzvG&_nc_ht=scontent.fdad7-1.fna&oh=e16d801cabc4cc0cdb267215849677e5&oe=61A4D336',NULL,10,'https   www facebook com profile php id 100013101489224\nNguyen Tuan',1413),(2524,'https://www.facebook.com/dua.hau.5667\nNgọc Nguyễn',0,'100017865601279','T5 21 31','28-10-2021 21:31',39,'https://scontent.fdad7-1.fna.fbcdn.net/v/t1.6435-1/c0.76.320.168a/p320x320/192243222_2867183113494235_8088039286382532209_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=CLkK_XBZVBYAX8sOtVP&_nc_ht=scontent.fdad7-1.fna&oh=c874d06f4ccbe4f194407a72f9e6e017&oe=61A54A15',NULL,10,'https   www facebook com dua hau 5667\nNgoc Nguyen',1414),(2525,'3 - tăng tốc độ loading , bỏ những trường hợp đã load rồi k load nữa',0,'100017865601279','T5 21 31','28-10-2021 21:31',40,NULL,NULL,10,'3   tang toc do loading   bo nhung truong hop da load roi k load nua',1415),(2526,'4 - sửa phần lọc tag , tìm kiếm ...',0,'100017865601279','T5 21 31','28-10-2021 21:31',41,NULL,NULL,10,'4   sua phan loc tag   tim kiem    ',1416),(2527,'5 - kiểm tra phần chốt đơn up lên website . 1 số nội dung k up dcd lên . kế toán duyệt đơn không đc',0,'100017865601279','T5 21 31','28-10-2021 21:31',42,NULL,NULL,10,'5   kiem tra phan chot don up len website   1 so noi dung k up dcd len   ke toan duyet don khong dc',1417),(2528,'6 - kiểm tra lại load chat trên website',0,'100017865601279','T5 21 31','28-10-2021 21:31',43,NULL,NULL,10,'6   kiem tra lai load chat tren website',1418),(2529,'',0,'100017865601279','T5 21 31','28-10-2021 21:31',44,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/249274476_1234189603751013_4081200597095697610_n.png?_nc_cat=107&ccb=1-5&_nc_sid=aee45a&_nc_ohc=gGHKi22LhLYAX9Zo__C&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=e5b8f21fba475aed2e4888a30e325338&oe=61819C28',NULL,10,'',1419),(2530,'7 - nội dung kế toán có lưu . nhưng TQ k lưu nội dung',0,'100017865601279','T5 21 31','28-10-2021 21:31',45,'https://scontent.xx.fbcdn.net/v/t1.15752-9/249845265_363908768809800_4760630837280640868_n.png?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_ohc=tKwtr8wysQ8AX9tRYdE&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=e2894ab27762851fd1ebc89f6f9725c7&oe=6181A297',NULL,10,'7   noi dung ke toan co luu   nhung TQ k luu noi dung',1420),(2531,'8 - lỗi phân quyền',0,'100017865601279','T5 21 31','28-10-2021 21:31',46,NULL,NULL,10,'8   loi phan quyen',1421),(2532,'9 - thêm dấu , ở phần số',0,'100017865601279','T5 21 31','28-10-2021 21:31',47,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/249839623_1605085113157825_6651215003446732849_n.png?_nc_cat=104&ccb=1-5&_nc_sid=aee45a&_nc_ohc=t1ES-fC-EMgAX_i723x&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=cab52ab3d1dc59b40beffac3647334cb&oe=6181882B',NULL,10,'9   them dau   o phan so',1422),(2533,'10 - bị đúp sản phẩm',0,'100017865601279','T5 21 31','28-10-2021 21:31',48,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/249386538_4220725858049454_1325940820715387998_n.png?_nc_cat=106&ccb=1-5&_nc_sid=aee45a&_nc_ohc=Y6X0-lmJggsAX8YdbvC&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=a23c4de4bc355a6eeca6c8a8208e8ac1&oe=6181ABE1',NULL,10,'10   bi dup san pham',1423),(2534,'KHI TEST TOÀN BỘ PHẦN MỀM PHẢI TEST SỰ LIÊN KẾT GIỮA CÁC QUYỀN QTV , CTV,KT , THỦ QUỸ',0,'100017865601279','T5 21 31','28-10-2021 21:31',49,NULL,NULL,10,'KHI TEST TOAN BO PHAN MEM PHAI TEST SU LIEN KET GIUA CAC QUYEN QTV   CTV KT   THU QUY',1424),(2535,'Audio Call\n48 mins',0,'100017865601279','T5 21 31','28-10-2021 21:31',50,NULL,NULL,10,'Audio Call\n48 mins',1425),(2536,'https://www.facebook.com/lyn.nguyen.908\nLyn Nguyễn',1,'100067863644324','10 10  27 Thang 8  2021','27-8-2021 10:10',0,'https://scontent.xx.fbcdn.net/v/t1.18169-1/c0.76.320.168a/p320x320/27973047_1161867323950082_8659037453551882742_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=0tGGLbH5ke4AX9FSvuY&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=43c0c21ef734ddc5cd81fab1fcd1fab0&oe=61A7A907',NULL,10,'https   www facebook com lyn nguyen 908\nLyn Nguyen',1),(2537,'https://www.facebook.com/locthinh.nguyenle\nSean Nguyễn',0,'100067863644324','10 44  9 Thang 9  2021','9-9-2021 10:44',0,'https://scontent.xx.fbcdn.net/v/t1.6435-1/c0.76.320.168a/p320x320/125527457_3679487615430942_2750626466672351021_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=qF5JnsjryNsAX92f5YN&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=11e88b1cf6b6ee593fad9ab3be8bc565&oe=61A74B6C',NULL,10,'https   www facebook com locthinh nguyenle\nSean Nguyen',2),(2538,'1',1,'100067863644324','23 04  15 Thang 9  2021','15-9-2021 23:04',0,NULL,NULL,10,'1',3),(2539,'ok',0,'100067863644324','23 46  15 Thang 9  2021','15-9-2021 23:46',0,NULL,NULL,10,'ok',4),(2540,'2',0,'100067863644324','00 21  16 Thang 9  2021','16-9-2021 00:21',0,NULL,NULL,10,'2',5),(2541,'done',0,'100067863644324','00 49  16 Thang 9  2021','16-9-2021 00:49',0,NULL,NULL,10,'done',6),(2542,'hello',0,'100067863644324','00 49  16 Thang 9  2021','16-9-2021 00:49',1,NULL,NULL,10,'hello',7),(2543,'test',0,'100067863644324','00 49  16 Thang 9  2021','16-9-2021 00:49',2,NULL,NULL,10,'test',8),(2544,'ok',0,'100067863644324','09 55  16 Thang 9  2021','16-9-2021 09:55',0,NULL,NULL,10,'ok',9),(2545,'uhm',1,'100067863644324','09 55  16 Thang 9  2021','16-9-2021 09:55',1,NULL,NULL,10,'uhm',10),(2546,'oh',0,'100067863644324','09 55  16 Thang 9  2021','16-9-2021 09:55',2,NULL,NULL,10,'oh',11),(2547,'123456',0,'100067863644324','15 18  18 Thang 9  2021','18-9-2021 15:18',0,NULL,NULL,10,'123456',12),(2548,'test 1809',1,'100067863644324','15 18  18 Thang 9  2021','18-9-2021 15:18',1,NULL,NULL,10,'test 1809',13),(2549,'res',0,'100067863644324','15 18  18 Thang 9  2021','18-9-2021 15:18',2,NULL,NULL,10,'res',14),(2550,'ok',0,'100067863644324','15 18  18 Thang 9  2021','18-9-2021 15:18',3,NULL,NULL,10,'ok',15),(2551,'test ok',1,'100067863644324','14 50  4 Thang 10  2021','4-10-2021 14:50',0,NULL,NULL,10,'test ok',16),(2552,'hat hay ko',0,'100067863644324','14 50  4 Thang 10  2021','4-10-2021 14:50',1,NULL,NULL,10,'hat hay ko',17),(2553,'hay ma',1,'100067863644324','14 50  4 Thang 10  2021','4-10-2021 14:50',2,NULL,NULL,10,'hay ma',18),(2554,'thu lai xem',0,'100067863644324','14 50  4 Thang 10  2021','4-10-2021 14:50',3,NULL,NULL,10,'thu lai xem',19),(2555,'1 ne',1,'100067863644324','14 50  4 Thang 10  2021','4-10-2021 14:50',4,NULL,NULL,10,'1 ne',20),(2556,'2 ne',0,'100067863644324','14 50  4 Thang 10  2021','4-10-2021 14:50',5,NULL,NULL,10,'2 ne',21),(2557,'3 ne',1,'100067863644324','15 59  4 Thang 10  2021','4-10-2021 15:59',0,NULL,NULL,10,'3 ne',22),(2558,'4 ok hok',0,'100067863644324','15 59  4 Thang 10  2021','4-10-2021 15:59',1,NULL,NULL,10,'4 ok hok',23),(2559,'',1,'100067863644324','15 35  6 Thang 10  2021','6-10-2021 15:35',0,NULL,NULL,10,'',24),(2560,'test tin nhan ngay 7/10/2021 03:05',1,'100067863644324','15 05  7 Thang 10  2021','7-10-2021 15:05',0,NULL,NULL,10,'test tin nhan ngay 7 10 2021 03 05',25),(2561,'trả lời tin nhắn 7/10/2021 03:05',0,'100067863644324','15 05  7 Thang 10  2021','7-10-2021 15:05',1,NULL,NULL,10,'tra loi tin nhan 7 10 2021 03 05',26),(2562,'tiếp tục nhắn thêm',1,'100067863644324','15 05  7 Thang 10  2021','7-10-2021 15:05',2,NULL,NULL,10,'tiep tuc nhan them',27),(2563,'trả lời thêm để test',0,'100067863644324','15 05  7 Thang 10  2021','7-10-2021 15:05',3,NULL,NULL,10,'tra loi them de test',28),(2564,'https://www.facebook.com/phamtien.pham.73550\nPham Tien Pham',1,'100067863644324','15 05  7 Thang 10  2021','7-10-2021 15:05',4,'https://scontent.fdad7-1.fna.fbcdn.net/v/t1.6435-1/c0.76.320.168a/p320x320/58462425_371676803437837_7775662591438749696_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=dbb9e7&_nc_ohc=XWF0qG5H-yQAX_P2oOC&_nc_ht=scontent.fdad7-1.fna&oh=ea6bb9dc0b728f4bddd569d2c354263f&oe=61A5B118',NULL,10,'https   www facebook com phamtien pham 73550\nPham Tien Pham',29),(2565,'',0,'100067863644324','T2 10 04','1-11-2021 10:04',0,'https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/250980070_641938627187118_6345244945919141180_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=pcIA_w4yWtIAX8fAYoy&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=c8c27f29635ba4b8cfdda82c52a45f61&oe=61A7176D',NULL,10,'',30),(2566,'',0,'100067863644324','T2 10 04','1-11-2021 10:04',1,'https://scontent.xx.fbcdn.net/v/t1.15752-9/250644895_1053356208793563_1528722968639590973_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=aee45a&_nc_ohc=tplIaWaQVEwAX9uqesq&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=30de6af1bfb75ee5d7089db4ddc93b8d&oe=61A58F0C',NULL,10,'',31),(2567,'e ku',1,'100000173441890','10 24  07 02 2012','2-11-2021 10:24, 07/02/2012',0,NULL,NULL,10,'e ku',1),(2568,'mai có ăn nhậu gì ko tao còn ở nha trang nè',1,'100000173441890','10 24  07 02 2012','2-11-2021 10:24, 07/02/2012',1,NULL,NULL,10,'mai co an nhau gi ko tao con o nha trang ne',2),(2569,'=.=',1,'100000173441890','10 24  07 02 2012','2-11-2021 10:24, 07/02/2012',2,NULL,NULL,10,'   ',3),(2570,'mai tao di an voi giadinh ',0,'100000173441890','10 24  07 02 2012','2-11-2021 10:24, 07/02/2012',3,NULL,NULL,10,'mai tao di an voi giadinh',4),(2571,'Là làm IT rồi.',0,'100000173441890','06 16  22 Thang 10  2021','22-10-2021 06:16',0,NULL,NULL,10,'La lam IT roi ',5),(2572,'Là tạo website rồi này nọ đó hả thịnh',0,'100000173441890','06 16  22 Thang 10  2021','22-10-2021 06:16',1,NULL,NULL,10,'La tao website roi nay no do ha thinh',6),(2573,'Uhm đúng òi ak',1,'100000173441890','06 36  22 Thang 10  2021','22-10-2021 06:36',0,NULL,NULL,10,'Uhm dung oi ak',7),(2574,'',0,'100000173441890','06 36  22 Thang 10  2021','22-10-2021 06:36',1,NULL,NULL,10,'',8),(2575,'mai có ăn nhậu gì ko tao còn ở nha trang nè',1,'100000173441890','10 24  07 02 2012','2-11-2021 10:24, 07/02/2012',1,NULL,NULL,10,'mai co an nhau gi ko tao con o nha trang ne',2),(2576,'=.=',1,'100000173441890','10 24  07 02 2012','2-11-2021 10:24, 07/02/2012',2,NULL,NULL,10,'   ',3),(2577,'mai tao di an voi giadinh ',0,'100000173441890','10 24  07 02 2012','2-11-2021 10:24, 07/02/2012',3,NULL,NULL,10,'mai tao di an voi giadinh',4),(2578,'Là làm IT rồi.',0,'100000173441890','06 16  22 Thang 10  2021','22-10-2021 06:16',0,NULL,NULL,10,'La lam IT roi ',5),(2579,'Là tạo website rồi này nọ đó hả thịnh',0,'100000173441890','06 16  22 Thang 10  2021','22-10-2021 06:16',1,NULL,NULL,10,'La tao website roi nay no do ha thinh',6),(2580,'Uhm đúng òi ak',1,'100000173441890','06 36  22 Thang 10  2021','22-10-2021 06:36',1,NULL,NULL,10,'Uhm dung oi ak',14),(2581,'',0,'100000173441890','06 36  22 Thang 10  2021','22-10-2021 06:36',2,NULL,NULL,10,'',15);
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (20,'100017865601279','phamtien.pham.73550',NULL,NULL,NULL,NULL,'../img/avatar.png',NULL,10),(21,'100001113783887','tien.phamhuu',NULL,NULL,NULL,NULL,'../img/avatar.png',NULL,10),(22,'100067863644324','locthinh.nguyenle.1',NULL,NULL,NULL,NULL,'../img/avatar.png',NULL,10),(23,'100002870808428','hungpt.ctv',NULL,NULL,NULL,NULL,'../img/avatar.png',NULL,10),(24,'100000173441890','lehung.fb','nhu hung','0792062973','To 2 Vinh Diem Trung Vinh Hiep','Nha Trang','https://scontent.fdad7-1.fna.fbcdn.net/v/t1.6435-1/p100x100/217887307_4791668957515505_8566872662329867439_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_ohc=SS64F6CFCBgAX_fwzXR&_nc_ad=z-m&_nc_cid=1572&_nc_ht=scontent.fdad7-1.fna&oh=c3bdc23b8c6b60f90ced9f3618c8db6b&oe=61A46492','nhu hung',10);
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_count`
--

LOCK TABLES `money_count` WRITE;
/*!40000 ALTER TABLE `money_count` DISABLE KEYS */;
INSERT INTO `money_count` VALUES (10,10000.000,10,_binary '617c4a25-2f66-11',1,NULL,'2021-10-17 23:22:11'),(11,10000.000,10,_binary '8ddce86b-3ac4-11',1,NULL,'2021-11-01 10:34:01'),(12,10000.000,10,_binary 'bc7ccfa7-3ac4-11',1,NULL,'2021-11-01 10:35:19'),(13,10000.000,10,_binary '53920222-3ac5-11',1,NULL,'2021-11-01 10:39:32'),(14,10000.000,10,_binary '2d46aa0f-3ae8-11',1,NULL,'2021-11-01 14:49:00'),(15,10000.000,10,_binary 'da472295-3ae8-11',1,NULL,'2021-11-01 14:53:51'),(16,10000.000,10,_binary '5ad1f7c9-3b80-11',1,NULL,'2021-11-02 08:58:20'),(17,10000.000,10,_binary 'd9d71c40-3c50-11',1,NULL,'2021-11-03 09:50:49');
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
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (14,7,'2021-08-10 09:40:45','2021-08-10 09:42:52','5cbf6e6b-f984-11eb-9405-00ac0b3dea54'),(15,7,'2021-08-10 10:03:07','2021-08-10 10:03:19','7ccf28e5-f987-11eb-9405-00ac0b3dea54'),(16,7,'2021-08-10 10:09:42','2021-08-10 15:52:32','6824dbaf-f988-11eb-9405-00ac0b3dea54'),(17,7,'2021-08-10 16:20:51',NULL,'417f1cbf-f9bc-11eb-9405-00ac0b3dea54'),(18,7,'2021-08-12 14:17:15','2021-08-12 23:46:28','527d1f64-fb3d-11eb-9405-00ac0b3dea54'),(19,7,'2021-08-12 23:46:33','2021-08-13 09:26:42','d9bb64c6-fb8c-11eb-9405-00ac0b3dea54'),(20,7,'2021-08-13 09:26:46',NULL,'e829a639-fbdd-11eb-9405-00ac0b3dea54'),(21,7,'2021-08-14 09:35:59','2021-08-14 14:41:49','5c49dea3-fca8-11eb-9405-00ac0b3dea54'),(22,7,'2021-08-14 14:42:07',NULL,'2069240c-fcd3-11eb-9405-00ac0b3dea54'),(23,7,'2021-08-15 15:36:28',NULL,'e2a54371-fda3-11eb-9405-00ac0b3dea54'),(24,12,'2021-08-16 00:49:37','2021-08-16 02:54:11','28878088-fdf1-11eb-9405-00ac0b3dea54'),(25,12,'2021-08-16 02:54:19','2021-08-16 14:45:07','94475b57-fe02-11eb-9405-00ac0b3dea54'),(26,7,'2021-08-17 01:40:19','2021-08-17 11:17:43','684f0e84-fec1-11eb-9405-00ac0b3dea54'),(27,7,'2021-08-17 11:17:48','2021-08-18 10:35:27','14701228-ff12-11eb-9405-00ac0b3dea54'),(28,7,'2021-08-18 10:36:07',NULL,'6c7095d4-ffd5-11eb-9405-00ac0b3dea54'),(29,12,'2021-08-18 10:49:00',NULL,'395237ce-ffd7-11eb-9405-00ac0b3dea54'),(30,7,'2021-08-19 14:46:18',NULL,'8a19fdfc-00c1-11ec-9405-00ac0b3dea54'),(31,7,'2021-08-20 14:46:24',NULL,'b82df0a1-018a-11ec-9405-00ac0b3dea54'),(32,7,'2021-08-21 16:16:50',NULL,'84cdd626-0260-11ec-9405-00ac0b3dea54'),(33,7,'2021-08-22 16:17:53',NULL,'d470355e-0329-11ec-9405-00ac0b3dea54'),(34,7,'2021-08-25 09:53:01','2021-08-25 09:57:18','8fd672b3-054f-11ec-9405-00ac0b3dea54'),(35,7,'2021-08-25 09:57:39','2021-08-25 09:57:39','35709c00-0550-11ec-9405-00ac0b3dea54'),(36,7,'2021-08-25 10:01:19','2021-08-25 10:01:19','b8951877-0550-11ec-9405-00ac0b3dea54'),(37,7,'2021-08-25 10:03:07','2021-08-25 10:45:02','f8f4c9b8-0550-11ec-9405-00ac0b3dea54'),(38,7,'2021-08-30 15:22:36',NULL,'6ea5263e-096b-11ec-983e-00ac0b3dea54'),(39,7,'2021-08-30 15:24:05',NULL,'a403d684-096b-11ec-983e-00ac0b3dea54'),(40,7,'2021-08-30 15:26:09',NULL,'edb2937c-096b-11ec-983e-00ac0b3dea54'),(41,7,'2021-08-30 15:27:30','2021-08-30 15:31:48','1e3692f3-096c-11ec-983e-00ac0b3dea54'),(42,7,'2021-08-30 15:31:53','2021-08-30 15:43:00','ba8f1890-096c-11ec-983e-00ac0b3dea54'),(43,7,'2021-08-30 15:43:10','2021-08-30 15:45:16','4e4b611c-096e-11ec-983e-00ac0b3dea54'),(44,7,'2021-08-30 15:47:16','2021-08-30 15:48:12','e08e5342-096e-11ec-983e-00ac0b3dea54'),(45,7,'2021-08-30 15:48:21',NULL,'0762990d-096f-11ec-983e-00ac0b3dea54'),(46,7,'2021-08-31 10:31:08',NULL,'e16194fb-0a0b-11ec-983e-00ac0b3dea54'),(47,7,'2021-09-01 10:35:00',NULL,'9608d411-0ad5-11ec-983e-00ac0b3dea54'),(48,7,'2021-09-02 14:10:54',NULL,'e9cb5813-0bbc-11ec-983e-00ac0b3dea54'),(49,7,'2021-09-10 09:30:31',NULL,'11aa0da5-11df-11ec-983e-00ac0b3dea54'),(50,7,'2021-09-16 09:04:05',NULL,'5f848e65-1692-11ec-983e-00ac0b3dea54'),(51,7,'2021-09-17 09:05:12',NULL,'b14b62c3-175b-11ec-983e-00ac0b3dea54'),(52,7,'2021-09-18 15:17:44',NULL,'e69f0af7-1858-11ec-983e-00ac0b3dea54'),(53,7,'2021-09-22 09:24:36',NULL,'3d55bfb7-1b4c-11ec-983e-00ac0b3dea54'),(54,7,'2021-09-22 09:24:40',NULL,'3d5f2462-1b4c-11ec-983e-00ac0b3dea54'),(55,7,'2021-09-23 10:14:38',NULL,'62ca2e0d-1c1c-11ec-983e-00ac0b3dea54'),(56,7,'2021-09-24 10:24:27',NULL,'ec164b5a-1ce6-11ec-983e-00ac0b3dea54'),(57,7,'2021-09-26 09:20:45',NULL,'5b14ca06-1e70-11ec-a8c5-00ac0b3dea54'),(58,7,'2021-09-27 09:49:24',NULL,'8656d7b5-1f3d-11ec-a8c5-00ac0b3dea54'),(59,7,'2021-09-28 09:50:09',NULL,'cb6b6551-2006-11ec-a8c5-00ac0b3dea54'),(60,7,'2021-09-30 15:41:10',NULL,'294e7cbc-21ca-11ec-a8c5-00ac0b3dea54'),(61,7,'2021-10-02 10:28:08',NULL,'c33ba26d-2330-11ec-a8c5-00ac0b3dea54'),(62,7,'2021-10-03 13:57:04',NULL,'1e0657cb-2417-11ec-a8c5-00ac0b3dea54'),(63,7,'2021-10-04 14:35:52',NULL,'b41cbf09-24e5-11ec-bf6b-00ac0b3dea54'),(64,7,'2021-10-06 23:15:35',NULL,'a36ce46f-26c0-11ec-bf6b-00ac0b3dea54'),(65,7,'2021-10-08 23:14:45',NULL,'da3e2b6c-2852-11ec-bf6b-00ac0b3dea54'),(66,10,'2021-10-08 23:14:59',NULL,'e2ba5ad5-2852-11ec-bf6b-00ac0b3dea54'),(67,7,'2021-10-12 09:00:38',NULL,'32977ee0-2b00-11ec-915c-00ac0b3dea54'),(68,7,'2021-10-13 09:36:52','2021-10-13 09:51:58','6cdfc889-2bce-11ec-a3ba-00ac0b3dea54'),(69,10,'2021-10-13 14:22:09','2021-10-13 15:13:31','4744af3f-2bf6-11ec-a3ba-00ac0b3dea54'),(70,7,'2021-10-13 15:13:36',NULL,'774e568e-2bfd-11ec-a3ba-00ac0b3dea54'),(71,7,'2021-10-14 15:57:03',NULL,'b38303c6-2ccc-11ec-a3ba-00ac0b3dea54'),(72,7,'2021-10-14 15:57:40',NULL,'c99d8943-2ccc-11ec-a3ba-00ac0b3dea54'),(73,7,'2021-10-16 14:27:39',NULL,'8af56b36-2e52-11ec-a3ba-00ac0b3dea54'),(74,7,'2021-10-17 22:20:16',NULL,'bbb28d96-2f5d-11ec-a3ba-00ac0b3dea54'),(75,7,'2021-10-20 22:50:56','2021-10-21 00:23:48','8320bd57-31bd-11ec-a3ba-00ac0b3dea54'),(76,7,'2021-10-21 00:23:54','2021-10-21 00:24:00','7ff2a130-31ca-11ec-a3ba-00ac0b3dea54'),(77,7,'2021-10-21 15:52:08','2021-10-21 15:52:23','2c209508-324c-11ec-a3ba-00ac0b3dea54'),(78,7,'2021-10-23 15:59:23','2021-10-23 20:42:06','84829c2f-33df-11ec-a3ba-00ac0b3dea54'),(79,7,'2021-10-23 20:42:11',NULL,'066dd7f6-3407-11ec-a3ba-00ac0b3dea54'),(80,7,'2021-10-24 20:46:01',NULL,'b9a8ac35-34d0-11ec-a3ba-00ac0b3dea54'),(81,7,'2021-10-25 22:27:11',NULL,'05e3edf0-35a8-11ec-a3ba-00ac0b3dea54'),(82,7,'2021-11-01 10:14:05',NULL,'c54d0669-3ac1-11ec-85b2-00ac0b3dea54'),(83,7,'2021-11-02 10:14:28','2021-11-03 10:13:22','fd55cdf0-3b8a-11ec-85b2-00ac0b3dea54'),(84,10,'2021-11-03 10:13:27','2021-11-03 10:27:34','037c42e3-3c54-11ec-85b2-00ac0b3dea54'),(85,7,'2021-11-03 10:27:38','2021-11-03 10:37:54','fedd059e-3c55-11ec-85b2-00ac0b3dea54'),(86,10,'2021-11-03 10:38:00',NULL,'714f5bfa-3c57-11ec-85b2-00ac0b3dea54');
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_chat`(cus_id char(100),max_id int)
BEGIN
SELECT CGM.*,A.avatar_url as rec_ava,A.user as rec_user,C.ava_url from `chat_group_mess` as CGM
left join chat_group AS CG on CG.cus_id = CGM.cus_id
left join customer AS C on C.id_fb = CGM.cus_id
left join `account` as A on CG.acc_receive = A.id
 where CGM.cus_id = cus_id and (max_id = 0 or CGM.mess_index > max_id);
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
    jt1.group_time,
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
where replace(trim(lower(CGM.mess_key)),' ','') like @l or (select count(id) from bill where replace(trim(lower(`code`)),'-','') like @l and bill.created_by = user_id and bill.customer = CG.cus_id ) > 0
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

-- Dump completed on 2021-11-03 10:44:30
