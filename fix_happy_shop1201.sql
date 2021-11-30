CREATE DATABASE  IF NOT EXISTS `happy_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `happy_shop`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: happy_shop
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisement` (
  `id` int NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (1,'https://github.com/SiangTu/shoppingApp/blob/thor/img/%E8%8C%B6%E8%91%89%E6%9E%95%E9%A0%AD%E5%B0%81%E9%9D%A2.jpg?raw=true');
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_member_product`
--

DROP TABLE IF EXISTS `cart_member_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_member_product` (
  `id` int NOT NULL,
  `member` int NOT NULL,
  `product` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_member_product`
--

LOCK TABLES `cart_member_product` WRITE;
/*!40000 ALTER TABLE `cart_member_product` DISABLE KEYS */;
INSERT INTO `cart_member_product` VALUES (1,1,1);
/*!40000 ALTER TABLE `cart_member_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'天然鐵觀音寢具'),(2,'天然除臭系列'),(3,'天然鐵觀音車墊系列'),(4,'天然鐵觀音抱枕系列'),(5,'天然鐵觀音頭枕系列'),(6,'天然鐵觀音茶葉系列'),(7,'天然鐵觀音床墊系列'),(8,'天然鐵觀音茶香燻香系列'),(9,'天然鐵觀音茶香片系列'),(10,'天然鐵觀音頸枕系列');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `id` int NOT NULL,
  `category` int NOT NULL,
  `product` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,2,3);
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` int NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` int NOT NULL,
  `birthday` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` int NOT NULL,
  `buy_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `like_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'劉振隆',1,'2000-01-01','台北市德惠街173號五樓',25961396,'[111111111,11111111]','[22222,222222]'),(2,'劉超',1,'1220','台北市大安區基隆路一號',259612345,'[111111111,11111112]','[22222,222223]'),(3,'劉欣',0,'1989','台北市大安區基隆路2號',25963455,'[111111111,11111113]','[22222,222224]'),(4,'劉超人',0,'1989','台北市大安區基隆路3號',259631234,'[111111111,11111114]','[22222,2222255]'),(5,'林雨景',0,'1990-03-19','新北市土城區大道一號',912345567,'[111111111,11111115]','[22222,22222556]'),(6,'李愛',0,'1990-03-12','新北市土城區大道4號',912345678,'[111111111,11111116]','[111111111,11111116]'),(7,'李意珍',0,'1990-01-12','新北市土城區大道5號',912345678,'[111111111,11111117]','[111111111,11111117]'),(8,'李麗珍',0,'1990-01-12','香港區九龍大道一號',912345234,'[111111111,11111118]','[111111111,11111118]'),(9,'劉秋萍',0,'1980-01-12','美國洛杉磯34街一號',912345290,'[111111111,11111119]','[111111111,11111118]'),(10,'林葦婷',0,'1980-01-12','台北林口長庚大道一號',912342356,'[111111111,1111111912]','[111111111,1111111812]');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_list`
--

DROP TABLE IF EXISTS `order_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_list` (
  `order_id` int NOT NULL,
  `price` int NOT NULL,
  `member_id` int NOT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` int NOT NULL,
  `order_date` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_list`
--

LOCK TABLES `order_list` WRITE;
/*!40000 ALTER TABLE `order_list` DISABLE KEYS */;
INSERT INTO `order_list` VALUES (1,980,1,'台北市德惠街173號五樓',25961396,'2009-11-10','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(2,4300,2,'台北市德惠街173號',912123123,'2021-11-11','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(3,16000,2,'台北市大安區基隆路2號',912123123,'2021-11-17','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(4,288,3,'台北市興隆路123號',91212346,'2021-11-17','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(5,1299,5,'台北市興隆路1113號',91212346,'2021-11-17','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(6,1299,5,'台北市興隆路1113號',91212346,'2021-11-17','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(7,3600,7,'花蓮縣伯朗大道一號',912123355,'2021-11-17','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(8,240000,8,'台北市信義區101 100號83樓',912123329,'2022-11-18','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(9,3600,9,'花蓮縣伯朗大道三賀',912123323,'2021-11-18','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}'),(10,24000,10,'台北市信義區101 100號87樓',912123329,'2022-11-18','{987654321: info [{name: “可樂”, price: 20, quantity:  3, media_info :[“https://coca.png”,  “https://coca.png1”]},{name: “熱狗”, price: 30, quantity:  5, media_info : [“https://coca.png”,  “https://coca.png1”]}}]}');
/*!40000 ALTER TABLE `order_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popular_keyword`
--

DROP TABLE IF EXISTS `popular_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popular_keyword` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popular_keyword`
--

LOCK TABLES `popular_keyword` WRITE;
/*!40000 ALTER TABLE `popular_keyword` DISABLE KEYS */;
INSERT INTO `popular_keyword` VALUES (1,'常相見',988990),(2,'常香健鐵觀音床墊雙人加大尺寸',790534),(3,'鐵觀音茶葉',970000),(4,'弘道實業',888888),(5,'常香健鐵觀音茶香包',567856),(7,'茶葉',321234),(8,'頭枕',312222),(9,'頭枕組合',312222),(10,'靠枕',302222),(11,'弘道',299999),(12,'弘道實業',288888),(13,'弘道實業有限公司',277777),(14,'KA',266666),(15,'MH',255555),(16,'Meeting Health',244444),(17,'茶香健',233333),(18,'坐墊',222222),(19,'椅墊',211111),(20,'烏龍茶',200000),(21,'高山鐵觀音茶葉',198349),(22,'弘道實業',888888),(23,'高級健康',188888),(24,'睡眠',177777),(25,'失眠',166666),(26,'全球最大茶葉寢具製造商',123456),(27,'全球第一茶香',133333),(28,'全球唯一獨家專利',122222),(29,'茶葉國度',111111),(30,'茶香世界',102222),(31,'1987年創立',98534),(32,'全球最大魚池製造商',97234),(33,'茶葉用品帝國',95678),(34,'除臭天王',93534),(35,'除鞋臭無敵強',93456),(36,'完美無瑕車縫線',92578),(37,'堅持天然無毒',91234),(38,'通過SGS認證',90356),(39,'通過國家標準CNS認證',90212),(40,'無效三個月退費',90123);
/*!40000 ALTER TABLE `popular_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `item_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vendor_id` int NOT NULL,
  `media_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `delivery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES (1,'常香健枕頭-弘道實業有限公司出品',980,999,'{\"說明\":\"枕頭\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]\r\n'),(2,'常香健雙人加大床墊-弘道實業有限公司出品',4300,9999,'{\"說明\":\"床墊\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]'),(3,'常香健雙人床墊-弘道實業有限公司出品',3600,9999,'{\"說明\":\"床墊\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]\r\n'),(4,'常香健超強除鞋臭茶香包-弘道實業有限公司出品',599,99999999,'{\"說明\":\"茶香包\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]'),(5,'常香健鐵觀音抱枕-弘道實業有限公司出品',288,99999999,'{\"說明\":\"全球獨家茶葉抱枕\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]'),(6,'常香健鐵觀音頭枕-弘道實業有限公司出品',288,99999999,'{\"說明\":\"全球獨家茶葉頭枕\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]'),(7,'常香健鐵觀音頭枕-弘道實業有限公司出品',288,99999999,'{\"說明\":\"全球獨家茶葉頭枕\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]'),(8,'常香健鐵觀音透氣座墊-弘道實業有限公司出品',1299,99999999,'{\"說明\":\"坐墊\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]'),(9,'常香健鐵觀音透氣沙發座墊-弘道實業有限公司出品',1299,99999999,'{\"說明\":\"坐墊\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]'),(10,'常香健鐵觀音超值11件車墊高級套裝組-弘道實業有限公司出品',16000,99999999,'{\"說明\":\"車墊\"}',1,'','[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]','[\"宅配\", \"超商自取\"]');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_info`
--

DROP TABLE IF EXISTS `vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_info` (
  `vendor_id` int NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` int NOT NULL,
  `logo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `contact` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_info`
--

LOCK TABLES `vendor_info` WRITE;
/*!40000 ALTER TABLE `vendor_info` DISABLE KEYS */;
INSERT INTO `vendor_info` VALUES (1,'弘道實業有限公司','台北市德惠街173號五樓',25961396,'','劉振隆','月結30天'),(2,'超人實業有限公司','台北市德惠街173號',25961324,'','劉天','月結60天'),(3,'台灣積體電路有限公司','高雄發大財一號',7234567,'','劉德音','月結60天'),(4,'長榮航空公司','桃園機場路一號',25963455,'','劉冰','月結60天'),(5,'中華航空公司','桃園機場路2號',325962340,'','劉天仙','月結60天'),(6,'台灣三星電子分公司','桃園亞洲矽谷領航北路二段一號',352362340,'','戴天','月結60天'),(7,'亞洲矽谷寶哥集團','桃園亞洲矽谷領航北路二段一號',352362345,'','林雨璟','月結60天'),(8,'李愛花藝有限公司','桃園亞洲矽谷領航南路三段124號',352362323,'','李明潔','月結60天'),(9,'林神經外科診所','桃園亞洲矽谷領航南路三段14號',352362325,'','林葦婷','月結60天'),(10,'劉家生物科技有限公司','桃園亞洲矽谷領航南路三段234號',352362312,'','劉秋萍','月結60天');
/*!40000 ALTER TABLE `vendor_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-30 15:08:48
