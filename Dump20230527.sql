-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tms
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `updatedAt` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','2017-05-13 18:18:49',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenient`
--

DROP TABLE IF EXISTS `convenient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convenient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenient`
--

LOCK TABLES `convenient` WRITE;
/*!40000 ALTER TABLE `convenient` DISABLE KEYS */;
INSERT INTO `convenient` VALUES (1,'Miễn phí bữa sáng',NULL,NULL,'ENABLE'),(2,'Wifi miễn phí',NULL,NULL,'ENABLE'),(3,'Không hút thuốc',NULL,NULL,'ENABLE'),(4,'Miễn phí huỷ phòng',NULL,NULL,'ENABLE'),(5,'Máy lạnh',NULL,NULL,'ENABLE'),(6,'Nước nóng',NULL,NULL,'ENABLE'),(7,'Quầy bar mini',NULL,NULL,'ENABLE'),(8,'Nước đóng chai miễn phí',NULL,NULL,'ENABLE'),(9,'Chiếu phim tại phòng',NULL,NULL,'ENABLE'),(10,'TV',NULL,NULL,'ENABLE'),(11,'Bàn làm việc',NULL,NULL,'ENABLE'),(12,'Áo choàng tắm',NULL,NULL,'ENABLE'),(20,'checker','2023-04-21 22:28:58','2023-04-21 22:29:02','DELETED');
/*!40000 ALTER TABLE `convenient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobileNumber` char(10) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `postingDate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiries`
--

LOCK TABLES `enquiries` WRITE;
/*!40000 ALTER TABLE `enquiries` DISABLE KEYS */;
INSERT INTO `enquiries` VALUES (1,'anuj','anuj.lpu1@gmail.com','2354235235','The standard Lorem Ipsum passage, used since the 1500s','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','2017-05-14 05:23:53','1',NULL),(2,'efgegter','terterte@gmail.com','3454353453','The standard Lorem Ipsum passage','nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup','2017-05-14 05:27:00','1',NULL),(3,'fwerwetrwet','fwsfhrtre@hdhdhqw.com','8888888888','erwt wet','nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup','2017-05-14 05:28:11','1',NULL),(4,'Test','test@gm.com','4747474747','Test','iidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiidiid','2017-05-14 14:54:07','1',NULL);
/*!40000 ALTER TABLE `enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `ranking` int(11) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `embedLocation` mediumtext DEFAULT NULL,
  `convenient` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `famousLocation` mediumtext DEFAULT NULL,
  `isBreakfastService` tinyint(4) NOT NULL,
  `hotline` varchar(10) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (85,'Khu nghỉ dưỡng và Spa Mikazuki Nhật Bản','Da Nang – Mikazuki JAPANESE RESORTS & SPA','Đường Nguyễn Tất Thành,Phường Hòa Hiệp Nam, Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng, Việt Nam, 550000','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-04-22 05:02:42','2023-05-21 00:55:57',5,'admin',NULL,'ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.485202775075!2d108.1415760112827!3d16.09218228452646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421991a401ca65%3A0xae18cd4b35f842b5!2sMIKAZUKI%20WATER%20PARK%20365!5e0!3m2!1sen!2s!4v1682132183697!5m2!1sen!2s','Máy lạnh - Nhà hàng Hồ Bơi - Lễ Tân - chỗ đậu xe','Máy lạnh - Nhà hàng Hồ Bơi - Lễ Tân - chỗ đậu xe',0,NULL,NULL),(86,'VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1 ','Mikazuki JAPANESE RESORTS & SPA VINHOME 1 VINHOME 1 VINHOME 1VINHOME 1','122 thái thị bôi VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1VINHOME 1 ','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-04-25 17:35:05','2023-05-05 20:53:45',3,'admin',NULL,'ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(87,NULL,NULL,NULL,NULL,'2023-04-25 17:36:11','2023-04-30 01:01:25',NULL,'admin','admin','DELETED','',NULL,NULL,0,NULL,NULL),(88,NULL,NULL,NULL,NULL,'2023-04-25 17:38:16','2023-05-06 17:37:41',NULL,'admin','admin','ENABLE','',NULL,NULL,0,NULL,NULL),(89,'Khu nghỉ dưỡng và Spa Mikazuki Nhật Bản','Mikazuki JAPANESE RESORTS & SPA','122 thái thị bôi','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-04-25 17:39:16','2023-05-21 00:55:57',5,'admin',NULL,'DELETED','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(90,'Khu nghỉ dưỡng và Spa Mikazuki Nhật Bản','khách sạn','Đường Nguyễn Tất Thành,Phường Hòa Hiệp Nam, Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng, Việt Nam, 550000','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-04-25 17:42:11','2023-05-21 00:55:57',5,'admin',NULL,'ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(91,'VINHOME 1','Mikazuki JAPANESE RESORTS & SPA','122 thái thị bôi','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-04-25 17:43:11','2023-05-06 00:00:48',4,'admin','admin','ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(92,'VINHOME','Mikazuki JAPANESE RESORTS & SPA','122 thái thị bôi','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-04-25 17:44:41','2023-04-30 01:01:19',5,'admin',NULL,'DELETED','','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(93,'Khu nghỉ dưỡng và Spa Mikazuki Nhật Bản','Mikazuki JAPANESE RESORTS & SPA','Đường Nguyễn Tất Thành,Phường Hòa Hiệp Nam, Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng, Việt Nam, 550000','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-04-25 17:46:21','2023-05-21 00:55:57',3,'admin',NULL,'DELETED','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(94,'VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1VINHOME 1 VINHOME 1','Da Nang – Mikazuki JAPANESE RESORTS & SPA VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1','122 thái thị bôi VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1 VINHOME 1','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-04-25 17:47:28','2023-05-05 20:54:51',5,'admin','admin','ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(95,'VINHOME 1','Mikazuki JAPANESE RESORTS & SPA','122 thái thị bôi','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-05-06 17:00:22','2023-05-09 13:42:04',5,'admin','admin','ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583661573!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(96,'VINHOME 123213','Mikazuki JAPANESE RESORTS & SPA','Đường Nguyễn Tất Thành,Phường Hòa Hiệp Nam, Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng, Việt Nam, 550000','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-05-06 22:09:04','2023-05-20 21:57:52',5,'admin','admin','ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi',0,NULL,NULL),(97,'VINHOME 12345678','Khách sạn','Đường Nguyễn Tất Thành,Phường Hòa Hiệp Nam, Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng, Việt Nam, 550000','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-05-23 20:14:52',NULL,5,'admin',NULL,'ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Bãi biển Nguyễn Tất Thành',1,NULL,NULL),(98,'VINHOME 1','Resort','Đường Nguyễn Tất Thành,Phường Hòa Hiệp Nam, Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng, Việt Nam, 550000','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-05-26 16:21:30',NULL,5,'admin',NULL,'ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng -Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Bãi biển Nguyễn Tất Thành',1,NULL,NULL),(99,'VINHOME 1','Khách sạn','Đường Nguyễn Tất Thành,Phường Hòa Hiệp Nam, Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng, Việt Nam, 550000','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-05-26 20:06:34','2023-05-26 20:20:57',5,'admin','admin','ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng - Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Bãi biển Nguyễn Tất Thành',1,NULL,NULL),(100,'VINHOME 1','Khách sạn','Đường Nguyễn Tất Thành,Phường Hòa Hiệp Nam, Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng, Việt Nam, 550000','Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam.  nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km.  Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi biển An Bàng ở khoảng cách 28,82 km.','2023-05-26 21:56:35','2023-05-27 09:48:50',5,'admin',NULL,'ENABLE','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3072.9648576702584!2d-8.677735889366009!3d39.627995103149544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd189dac05a929c5%3A0x663a8d4f9f6ec170!2sMercure%20Fatima%20Hotel!5e0!3m2!1sen!2s!4v1681583926357!5m2!1sen!2s','Máy lạnh - Nhà hàng - Hồ bơi - Lễ tân 24h - Chỗ đậu xe - Thang máy - Wifi','Bãi biển Nguyễn Tất Thành',1,NULL,NULL);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `objectId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (68,72,'3.jpg','ROOMTYPE'),(69,72,'4.jpg','ROOMTYPE'),(70,72,'5.jpg','ROOMTYPE'),(71,72,'6.jpg','ROOMTYPE'),(72,73,'c1.jpg','ROOMTYPE'),(73,73,'c2.jpg','ROOMTYPE'),(74,73,'c3.jpg','ROOMTYPE'),(75,81,'h1.jpg','HOTEL'),(76,74,'h1.jpg','ROOMTYPE'),(77,74,'h2.jpg','ROOMTYPE'),(78,74,'h3.jpg','ROOMTYPE'),(79,74,'mark1.png','ROOMTYPE'),(80,74,'seat.png','ROOMTYPE'),(81,74,'seat-1.png','ROOMTYPE'),(82,82,'h1.jpg','HOTEL'),(83,75,'h1.jpg','ROOMTYPE'),(84,75,'h2.jpg','ROOMTYPE'),(85,75,'h3.jpg','ROOMTYPE'),(86,75,'mark1.png','ROOMTYPE'),(87,75,'seat.png','ROOMTYPE'),(88,75,'seat-1.png','ROOMTYPE'),(89,83,'h1.jpg','HOTEL'),(90,84,'4.jpg','HOTEL'),(91,77,'c4.jpg','ROOMTYPE'),(92,77,'c5.jpg','ROOMTYPE'),(93,77,'h1.jpg','ROOMTYPE'),(94,77,'h2.jpg','ROOMTYPE'),(95,78,'4.jpg','ROOMTYPE'),(96,78,'5.jpg','ROOMTYPE'),(97,78,'6.jpg','ROOMTYPE'),(98,78,'7.jpg','ROOMTYPE'),(99,85,'c2.jpg','HOTEL'),(100,85,'c1.jpg','HOTEL'),(101,85,'c3.jpg','HOTEL'),(102,79,'c5.jpg','ROOMTYPE'),(103,79,'h1.jpg','ROOMTYPE'),(104,79,'h2.jpg','ROOMTYPE'),(105,86,'c5.jpg','HOTEL'),(106,86,'h3.jpg','HOTEL'),(107,80,'h1.jpg','ROOMTYPE'),(108,80,'h2.jpg','ROOMTYPE'),(109,80,'h3.jpg','ROOMTYPE'),(110,87,'4.jpg','HOTEL'),(111,81,'1.jpg','ROOMTYPE'),(112,81,'3.jpg','ROOMTYPE'),(113,81,'4.jpg','ROOMTYPE'),(114,88,'c2.jpg','HOTEL'),(115,82,'3.jpg','ROOMTYPE'),(116,82,'4.jpg','ROOMTYPE'),(117,82,'c4.jpg','ROOMTYPE'),(118,82,'c5.jpg','ROOMTYPE'),(119,89,'c3.jpg','HOTEL'),(120,83,'4.jpg','ROOMTYPE'),(121,83,'5.jpg','ROOMTYPE'),(122,83,'6.jpg','ROOMTYPE'),(123,83,'7.jpg','ROOMTYPE'),(124,90,'5.jpg','HOTEL'),(125,84,'c1.jpg','ROOMTYPE'),(126,91,'c4.jpg','HOTEL'),(127,85,'6.jpg','ROOMTYPE'),(128,85,'7.jpg','ROOMTYPE'),(129,85,'c1.jpg','ROOMTYPE'),(130,92,'h3.jpg','HOTEL'),(131,86,'h1.jpg','ROOMTYPE'),(132,86,'h2.jpg','ROOMTYPE'),(133,86,'h3.jpg','ROOMTYPE'),(134,93,'h3.jpg','HOTEL'),(135,87,'3.jpg','ROOMTYPE'),(136,87,'4.jpg','ROOMTYPE'),(137,87,'5.jpg','ROOMTYPE'),(138,94,'c3.jpg','HOTEL'),(139,94,'c3.jpg','HOTEL'),(140,94,'c3.jpg','HOTEL'),(141,94,'c3.jpg','HOTEL'),(142,91,'c4.jpg','HOTEL'),(143,91,'c4.jpg','HOTEL'),(144,101,'c3.jpg','ROOMTYPE'),(145,101,'5.jpg','ROOMTYPE'),(146,102,'c5.jpg','ROOMTYPE'),(147,102,'h3.jpg','ROOMTYPE'),(148,96,'h3.jpg','HOTEL'),(149,96,'h2.jpg','HOTEL'),(150,95,'c5.jpg','HOTEL'),(151,95,'c1.jpg','HOTEL'),(152,84,'4.jpg','ROOMTYPE'),(153,84,'4.jpg','ROOMTYPE'),(154,84,'4.jpg','ROOMTYPE'),(155,108,'5.jpg','ROOMTYPE'),(156,108,'6.jpg','ROOMTYPE'),(157,108,'7.jpg','ROOMTYPE'),(158,108,'c1.jpg','ROOMTYPE'),(159,109,'c5.jpg','ROOMTYPE'),(160,109,'h1.jpg','ROOMTYPE'),(161,109,'h2.jpg','ROOMTYPE'),(162,109,'h3.jpg','ROOMTYPE'),(163,97,'h2.jpg','HOTEL'),(164,97,'h3.jpg','HOTEL'),(165,110,'c4.jpg','ROOMTYPE'),(166,110,'c5.jpg','ROOMTYPE'),(167,110,'h1.jpg','ROOMTYPE'),(168,110,'h2.jpg','ROOMTYPE'),(169,110,'h3.jpg','ROOMTYPE'),(170,111,'c5.jpg','ROOMTYPE'),(171,111,'h1.jpg','ROOMTYPE'),(172,111,'h2.jpg','ROOMTYPE'),(173,111,'h3.jpg','ROOMTYPE'),(174,112,'c5.jpg','ROOMTYPE'),(175,112,'h1.jpg','ROOMTYPE'),(176,112,'h2.jpg','ROOMTYPE'),(177,112,'h3.jpg','ROOMTYPE'),(178,98,'1.jpg','HOTEL'),(179,98,'3.jpg','HOTEL'),(180,98,'5.jpg','HOTEL'),(181,113,'c5.jpg','ROOMTYPE'),(182,113,'h1.jpg','ROOMTYPE'),(183,113,'h2.jpg','ROOMTYPE'),(184,113,'h3.jpg','ROOMTYPE'),(185,99,'c4.jpg','HOTEL'),(186,100,'download (1).jpg','HOTEL');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `status` varchar(255) DEFAULT NULL,
  `cancelBy` varchar(255) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `userId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `emailContact` varchar(255) DEFAULT NULL,
  `mobileContact` int(11) DEFAULT NULL,
  `fromDate` datetime DEFAULT NULL,
  `toDate` datetime DEFAULT NULL,
  `numberDay` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `hotelId` int(11) DEFAULT NULL,
  `noteAdmin` longtext DEFAULT NULL,
  `reasonCancel` longtext DEFAULT NULL,
  `cancelAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (9,'đây là test','2023-04-27 22:28:19','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',988888888,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(10,'đây là test','2023-04-27 22:29:54','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',988888888,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(11,'đây là test','2023-04-27 22:30:38','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',988888888,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(12,'đa','2023-04-27 22:33:06','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',988888888,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(13,'đa','2023-04-27 22:35:04','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',988888888,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(14,'ádasd','2023-04-27 23:08:26','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',0,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(15,'ádasd','2023-05-20 18:29:31','DELETED',NULL,'2023-05-20 13:29:31',27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',988,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(16,'ad','2023-05-07 03:11:23','DELETED',NULL,'2023-05-06 22:11:23',27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',2147483647,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(17,'ad','2023-04-30 01:34:28','DELETED',NULL,'2023-04-29 20:34:28',27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',9888881,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(18,'a','2023-04-30 01:34:24','DELETED',NULL,'2023-04-29 20:34:24',27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',0,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(19,'ád','2023-04-30 01:31:17','DELETED',NULL,'2023-04-29 20:31:17',27,1,'ngminhngoc123@gmail.com',NULL,1500000.000,'ngminhngoc123@gmail.com',988888888,'2023-04-27 12:00:00','2023-04-28 12:00:00',1,NULL,94,NULL,NULL,NULL),(20,'a','2023-05-20 18:29:34','DELETED',NULL,'2023-05-20 13:29:34',27,1,'ngminhngoc123@gmail.com',NULL,40000.000,'ngocnm@rising-stars.vn',2147483647,'2023-05-15 12:00:00','2023-05-16 12:00:00',1,NULL,96,NULL,NULL,NULL),(21,'a','2023-05-15 19:28:10','CANCEL',NULL,'2023-05-15 19:28:10',27,1,'ngminhngoc123@gmail.com',NULL,560000.000,'ngocnm@rising-stars.vn',2147483647,'2023-05-31 12:00:00','2023-06-28 12:00:00',28,NULL,96,NULL,NULL,NULL),(22,'a','2023-05-20 18:30:15','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,20000.000,'ngocnm@rising-stars.vn',988888888,'2023-05-21 12:00:00','2023-05-22 12:00:00',1,NULL,96,NULL,NULL,NULL),(23,'a','2023-05-20 19:22:28','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,20000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,96,NULL,NULL,NULL),(24,'a','2023-05-20 19:54:48','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,40000.000,'ngocnm@rising-stars.vn',988888888,'2023-05-25 12:00:00','2023-05-27 12:00:00',2,NULL,96,NULL,NULL,NULL),(25,'a','2023-05-21 03:07:01','ENABLE',NULL,NULL,27,2,'ngminhngoc123@gmail.com',NULL,16800000.000,'ngminhngoc123@gmail.com',988888881,'2023-05-23 12:00:00','2023-05-25 12:00:00',2,NULL,91,NULL,NULL,NULL),(26,'a','2023-05-21 11:08:09','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,16800000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-23 12:00:00','2023-05-25 12:00:00',2,NULL,91,NULL,NULL,NULL),(27,'a','2023-05-21 11:09:08','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,16800000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-23 12:00:00','2023-05-25 12:00:00',2,NULL,91,NULL,NULL,NULL),(28,'a','2023-05-21 11:17:49','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-21 12:00:00','2023-05-22 12:00:00',1,NULL,91,NULL,NULL,NULL),(29,'a','2023-05-21 11:18:38','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-21 12:00:00','2023-05-22 12:00:00',1,NULL,91,NULL,NULL,NULL),(30,'a','2023-05-21 11:19:32','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-21 12:00:00','2023-05-22 12:00:00',1,NULL,91,NULL,NULL,NULL),(31,'a','2023-05-21 11:29:43','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-21 12:00:00','2023-05-22 12:00:00',1,NULL,91,NULL,NULL,NULL),(32,'a','2023-05-21 11:31:58','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-21 12:00:00','2023-05-22 12:00:00',1,NULL,91,NULL,NULL,NULL),(33,'a','2023-05-21 11:33:39','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-24 12:00:00','2023-05-25 12:00:00',1,NULL,91,NULL,NULL,NULL),(34,'a','2023-05-21 11:34:31','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-21 12:00:00','2023-05-22 12:00:00',1,NULL,91,NULL,NULL,NULL),(35,'a','2023-05-21 12:13:23','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(36,'a','2023-05-21 12:49:15','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(37,'a','2023-05-21 12:49:58','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(38,'a','2023-05-21 13:04:50','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,16800000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-23 12:00:00','2023-05-25 12:00:00',2,NULL,91,NULL,NULL,NULL),(39,'a','2023-05-21 13:06:22','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(40,'a','2023-05-21 13:22:26','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngocnm@rising-stars.vn',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(41,'a','2023-05-21 13:24:46','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngocnm@rising-stars.vn',988888888,'2023-05-23 12:00:00','2023-05-24 12:00:00',1,NULL,91,NULL,NULL,NULL),(42,'a','2023-05-21 13:32:57','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(43,'a','2023-05-21 13:41:09','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-23 12:00:00','2023-05-24 12:00:00',1,NULL,91,NULL,NULL,NULL),(44,'a','2023-05-21 13:50:24','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(45,'123','2023-05-21 14:34:33','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(46,'a','2023-05-21 14:39:06','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,8400000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,91,NULL,NULL,NULL),(47,'Tôi sẽ checkin trễ','2023-05-21 16:06:57','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,7500000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-23 12:00:00','2023-05-25 12:00:00',2,NULL,94,NULL,NULL,NULL),(48,'Tôi sẽ checkin trễ','2023-05-21 16:58:08','ENABLE',NULL,'2023-05-21 16:58:08',27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-23 12:00:00','2023-05-25 12:00:00',2,NULL,94,NULL,NULL,NULL),(49,'a','2023-05-21 16:43:51','ENABLE',NULL,'2023-05-21 11:43:51',27,1,'ngminhngoc123@gmail.com',NULL,750000.000,'ngminhngoc123@gmail.com',988888888,'2023-05-22 12:00:00','2023-05-23 12:00:00',1,NULL,94,'Sẽ checkin trễ',NULL,NULL),(50,'a','2023-05-27 09:17:38','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-27 12:00:00','2023-05-28 12:00:00',1,NULL,100,NULL,NULL,NULL),(51,'a','2023-05-27 09:17:38','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-27 12:00:00','2023-05-28 12:00:00',1,NULL,100,NULL,NULL,NULL),(52,'a','2023-05-27 09:20:26','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-27 12:00:00','2023-05-28 12:00:00',1,NULL,100,NULL,NULL,NULL),(53,'1','2023-05-27 09:25:02','ENABLE',NULL,NULL,27,2,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-27 12:00:00','2023-05-28 12:00:00',1,NULL,100,NULL,NULL,NULL),(54,'a','2023-05-27 09:36:36','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-27 12:00:00','2023-05-28 12:00:00',1,NULL,100,NULL,NULL,NULL),(55,'a','2023-05-27 12:06:30','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-28 12:00:00','2023-05-30 12:00:00',2,NULL,100,NULL,NULL,NULL),(56,'a','2023-05-27 12:18:56','CANCEL',NULL,'2023-05-27 12:18:56',27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-31 12:00:00','2023-06-01 12:00:00',1,NULL,100,NULL,'a',NULL),(57,'a','2023-05-27 12:26:57','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-30 12:00:00','2023-05-31 12:00:00',1,NULL,100,NULL,NULL,NULL),(58,'a','2023-05-27 12:27:53','CANCEL',NULL,'2023-05-27 12:27:53',27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngocnm@rising-stars.vn',988888888,'2023-05-31 12:00:00','2023-06-01 12:00:00',1,NULL,100,NULL,'a',NULL),(59,'a','2023-05-27 12:32:12','CANCEL',NULL,'2023-05-27 12:32:12',27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-31 12:00:00','2023-06-01 12:00:00',1,NULL,100,NULL,'a',NULL),(60,'a','2023-05-27 12:49:51','CANCEL','ngminhngoc123@gmail.com','2023-05-27 12:49:51',27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngminhngoc123@gmail.com',988888888,'2023-05-31 12:00:00','2023-06-01 12:00:00',1,NULL,100,NULL,'a','2023-05-27 12:49:51'),(61,'a','2023-05-27 13:32:40','ENABLE',NULL,NULL,27,1,'ngminhngoc123@gmail.com',NULL,0.000,'ngocnm@rising-stars.vn',988888888,'2023-05-31 12:00:00','2023-06-01 12:00:00',1,NULL,100,NULL,NULL,NULL);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicedetails`
--

DROP TABLE IF EXISTS `invoicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoicedetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `invoiceId` int(11) DEFAULT NULL,
  `roomTypeId` int(11) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `roomCode` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'ENABLE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicedetails`
--

LOCK TABLES `invoicedetails` WRITE;
/*!40000 ALTER TABLE `invoicedetails` DISABLE KEYS */;
INSERT INTO `invoicedetails` VALUES (10,12,87,750000.000,1,NULL,NULL,'ENABLE'),(11,13,87,750000.000,1,NULL,NULL,'ENABLE'),(12,14,87,750000.000,1,NULL,NULL,'ENABLE'),(13,15,87,750000.000,1,NULL,NULL,'ENABLE'),(14,16,87,750000.000,1,NULL,NULL,'ENABLE'),(15,17,87,750000.000,1,NULL,NULL,'ENABLE'),(16,18,87,750000.000,1,NULL,NULL,'ENABLE'),(17,19,87,750000.000,1,NULL,NULL,'ENABLE'),(18,19,87,750000.000,1,NULL,NULL,'ENABLE'),(19,20,105,20000.000,1,NULL,NULL,'ENABLE'),(20,20,106,20000.000,1,NULL,NULL,'ENABLE'),(21,21,105,560000.000,1,NULL,NULL,'ENABLE'),(22,22,105,20000.000,1,NULL,NULL,'ENABLE'),(23,23,105,20000.000,1,NULL,NULL,'ENABLE'),(24,24,105,40000.000,1,NULL,NULL,'ENABLE'),(25,25,84,16800000.000,1,NULL,NULL,'ENABLE'),(26,26,84,16800000.000,1,NULL,NULL,'ENABLE'),(27,27,84,16800000.000,1,NULL,NULL,'ENABLE'),(28,28,84,8400000.000,1,NULL,NULL,'ENABLE'),(29,29,84,8400000.000,1,NULL,NULL,'ENABLE'),(30,30,84,8400000.000,1,NULL,NULL,'ENABLE'),(31,31,84,8400000.000,1,NULL,NULL,'ENABLE'),(32,32,84,8400000.000,1,NULL,NULL,'ENABLE'),(33,33,84,8400000.000,1,NULL,NULL,'ENABLE'),(34,34,84,8400000.000,1,NULL,NULL,'ENABLE'),(35,35,84,8400000.000,1,NULL,NULL,'ENABLE'),(36,36,84,8400000.000,1,NULL,NULL,'ENABLE'),(37,37,84,8400000.000,1,NULL,NULL,'ENABLE'),(38,38,84,16800000.000,1,NULL,NULL,'ENABLE'),(39,39,84,8400000.000,1,NULL,NULL,'ENABLE'),(40,40,84,8400000.000,1,NULL,NULL,'ENABLE'),(41,41,84,8400000.000,1,NULL,NULL,'ENABLE'),(42,42,84,8400000.000,1,NULL,NULL,'ENABLE'),(43,43,84,8400000.000,1,NULL,NULL,'ENABLE'),(44,44,84,8400000.000,1,NULL,NULL,'ENABLE'),(45,45,84,8400000.000,1,NULL,NULL,'ENABLE'),(46,46,84,8400000.000,1,NULL,NULL,'ENABLE'),(47,47,87,1500000.000,1,NULL,NULL,'ENABLE'),(48,47,87,6000000.000,4,NULL,NULL,'ENABLE'),(49,48,87,1500000.000,1,NULL,NULL,'DELETED'),(50,48,87,6000000.000,4,NULL,NULL,'ENABLE'),(51,49,87,750000.000,1,NULL,NULL,'ENABLE'),(52,50,114,0.010,1,NULL,NULL,'ENABLE'),(53,51,114,0.010,1,NULL,NULL,'ENABLE'),(54,52,114,0.010,1,NULL,NULL,'ENABLE'),(55,53,114,0.010,1,NULL,NULL,'ENABLE'),(56,54,114,0.010,1,NULL,NULL,'ENABLE'),(57,55,114,0.020,1,NULL,NULL,'ENABLE'),(58,56,114,0.010,1,NULL,NULL,'ENABLE'),(59,57,114,0.010,1,NULL,NULL,'ENABLE'),(60,58,114,0.010,1,NULL,NULL,'ENABLE'),(61,59,114,0.010,1,NULL,NULL,'ENABLE'),(62,60,114,0.010,1,NULL,NULL,'ENABLE'),(63,61,114,0.010,1,NULL,NULL,'ENABLE');
/*!40000 ALTER TABLE `invoicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicepayment`
--

DROP TABLE IF EXISTS `invoicepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoicepayment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `invoiceId` int(11) DEFAULT NULL,
  `cardNumber` varchar(255) DEFAULT NULL,
  `cardHolder` varchar(255) DEFAULT NULL,
  `expirationDate` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `eWalletId` varchar(255) DEFAULT NULL,
  `eWalletPassword` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `atmNumber` varchar(255) DEFAULT NULL,
  `atmPin` varchar(255) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicepayment`
--

LOCK TABLES `invoicepayment` WRITE;
/*!40000 ALTER TABLE `invoicepayment` DISABLE KEYS */;
INSERT INTO `invoicepayment` VALUES (1,12,'123','ngoc','02/2023','123','','','','','',1),(2,13,'123','ngoc','02/2023','123','','','','','',1),(3,14,'123','ngoc','02/2023','123','','','','','',1),(4,15,'123','ngoc','02/2023','123','','','','','',1),(5,16,'123','123','123','123','','','','','',1),(6,17,'123','123','123','123','','','','','',1),(7,18,'123','123','123','123','','','','','',1),(8,19,'123','123','123','123','','','','','',1),(9,20,'123','ngoc','a','a','','','','','',1),(10,21,'123','ngoc','a','a','','','','','',1),(11,22,'123','ngoc','03/2023','123','','','','','',1),(12,23,'123','ngoc','03/2023','123','','','','','',1),(13,24,'123','ngoc','03/2023','123','','','','','',1),(14,25,'','','','','a','123','','','',2),(15,26,'123','ngoc','03/2023','123','','','','','',1),(16,27,'123','ngoc','03/2023','123','','','','','',1),(17,28,'123','ngoc','03/2023','123','','','','','',1),(18,29,'123','ngoc','03/2023','123','','','','','',1),(19,30,'123','ngoc','03/2023','123','','','','','',1),(20,31,'123','ngoc','03/2023','123','','','','','',1),(21,32,'123','123','03/2023','123','','','','','',1),(22,33,'123','ngoc','03/2023','123','','','','','',1),(23,34,'123','ngoc','03/2023','123','','','','','',1),(24,35,'123','ngoc','03/2023','123','','','','','',1),(25,36,'123','ngoc','03/2023','123','','','','','',1),(26,37,'123','ngoc','03/2023','123','','','','','',1),(27,38,'123','ngoc','03/2023','123','','','','','',1),(28,39,'123','ngoc','03','123','','','','','',1),(29,40,'123','ngoc','1','1','','','','','',1),(30,41,'123','ngoc','123','123','','','','','',1),(31,42,'123','ngoc','123','123','','','','','',1),(32,43,'123','ngoc','123','123','','','','','',1),(33,44,'123','ngoc','123','123','','','','','',1),(34,45,'123','ngoc','123','123','','','','','',1),(35,46,'123','ngoc','123','123','','','','','',1),(36,47,'123','123','123','123','','','','','',1),(37,48,'123','123','123','123','','','','','',1),(38,49,'123','ngoc','123','123','','','','','',1),(39,50,'','','','','','','','','',1),(40,51,'','','','','','','','','',1),(41,52,'','','','','','','','','',1),(42,53,'','','','','a','1232145','','','',2),(43,54,'123','ngoc','02/1999','123','','','','','',1),(44,55,'1123','ngoc','03/2023','123','','','','','',1),(45,56,'1123','ngoc','03/2023','123','','','','','',1),(46,57,'123','ngoc','02/2023','123','','','','','',1),(47,58,'123','ngoc','02/2023','123','','','','','',1),(48,59,'123','ngoc','02/2023','123','','','','','',1),(49,60,'123','ngoc','02/2002','123','','','','','',1),(50,61,'123','ngoc','02/2002','123','','','','','',1);
/*!40000 ALTER TABLE `invoicepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Issue` varchar(100) DEFAULT '',
  `description` longtext DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `adminRemark` mediumtext DEFAULT NULL,
  `adminremarkDate` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `invoiceId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,'a','a','2023-05-20 21:52:24','aaa','2023-05-20 21:50:08','ENABLE','FINISHED',24),(2,'a','a','2023-05-20 22:41:25','a','2023-05-20 20:48:47','ENABLE','WAITING',24),(3,'a','a','2023-05-20 22:45:57','a','2023-05-20 20:48:52','ENABLE','WAITING',24);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'PRIVACY_TERMS','Các chỗ nghỉ STR có thể phải tuân theo các quy định cụ thể và khác nhau tùy theo quốc gia, khu vực và thành phố. Quy định về STR có thể bao gồm, nhưng không giới hạn ở:\n\nYêu cầu về giấy phép hoặc đăng ký\nYêu cầu về giấy phép và quy hoạch\nYêu cầu về sức khỏe và an toàn\nYêu cầu về lưu trú\nGiới hạn số khách mỗi lần thuê\nGiới hạn số đêm cho thuê mỗi năm\nYêu cầu báo cáo thông tin giữa đối tác và chính quyền địa phương (ví dụ: số lượng khách và độ dài lưu trú của mỗi đơn đặt)','Pháp lý và bảo mật','2023-05-13 15:20:08','2023-05-13 15:38:01','ENABLE'),(2,'LOST_POLICY','Các giải pháp thanh toán của Booking.com hoạt động ra sao?\nChúng tôi có thể giúp Quý vị xử lý thanh toán của khách theo cách phù hợp với nhu cầu của chỗ nghỉ. Chúng tôi có thể thanh toán cho Quý vị bằng thẻ tín dụng ảo (VCC) hoặc qua chuyển khoản ngân hàng. Để biết tùy chọn nào khả dụng cho chỗ nghỉ của Quý vị, vui lòng truy cập extranet > Tài chính > Cài đặt tài chính.\n\nTrước đây, có thể du khách quốc tế không đặt được chỗ nghỉ Quý vị vì không có lựa chọn thanh toán mà họ muốn. Để nhiều khách có thể đặt với Quý vị, chúng tôi giờ đây có hỗ trợ các giải pháp thanh toán sau:','Thanh toán: Những câu hỏi thường gặp','2023-05-13 15:49:31','2023-05-26 16:24:17','ENABLE'),(3,'CONTACT_ADMIN','Trợ giúp khách của Quý vị trong mùa cao điểm\nTrong mùa cao điểm du lịch, số khách cần đến sự trợ giúp từ đội ngũ Dịch vụ Khách hàng của chúng tôi nhiều hơn thông thường. Nếu khách của Quý vị cần liên hệ với chúng tôi, vui lòng hướng dẫn họ truy cập Trung tâm Trợ giúp của chúng tôi.\n\nThông qua Trung tâm Trợ giúp, chúng tôi có thể hỗ trợ khách của Quý vị theo ngôn ngữ mà họ mong muốn và ưu tiên thành viên Genius Cấp 3 cùng khách sắp đến ngày đi. Chúng tôi có thể cung cấp cho họ thông tin cần thiết để tự quản lý đặt chỗ của mình hoặc đề xuất họ liên hệ với đội ngũ Dịch vụ Khách hàng của chúng tôi qua email, chat trực tiếp hoặc điện thoại.\n\nVui lòng không chia sẻ cho khách các thông tin liên hệ mà Quý vị sử dụng để liên lạc với chúng tôi, vì chúng tôi không thể giúp khách nếu họ liên lạc theo cách này. Điều này còn có thể gây chậm trễ và bất tiện cho cả Quý vị lẫn khách trong lúc trải nghiệm dịch vụ.\n\n','Cách để liên hệ với chúng tôi','2023-05-13 15:52:15',NULL,'ENABLE');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentmethod` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
INSERT INTO `paymentmethod` VALUES (1,'Thẻ tín dụng / Ghi nợ',NULL),(2,'Thanh toán điện tử',NULL),(3,'Thẻ ATM nội địa',NULL);
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratehotels`
--

DROP TABLE IF EXISTS `ratehotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratehotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `hotelId` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratehotels`
--

LOCK TABLES `ratehotels` WRITE;
/*!40000 ALTER TABLE `ratehotels` DISABLE KEYS */;
INSERT INTO `ratehotels` VALUES (15,NULL,94,5,'Đây là nhận xét','ENABLE','2023-05-06 20:27:11','2023-05-06 15:52:29'),(16,NULL,94,4,'','ENABLE','2023-05-06 20:27:32','2023-05-06 16:37:33'),(17,NULL,94,5,'','WAITING','2023-05-06 20:30:16',NULL),(18,NULL,94,4,'','WAITING','2023-05-06 20:30:44',NULL),(19,NULL,94,5,'','WAITING','2023-05-06 20:30:48',NULL),(20,NULL,94,5,'','WAITING','2023-05-06 20:33:02',NULL),(21,NULL,94,5,'','ENABLE','2023-05-06 20:33:08','2023-05-09 13:55:03'),(22,NULL,94,5,'','ENABLE','2023-05-06 20:56:09','2023-05-09 13:53:54'),(23,NULL,94,5,'','ENABLE','2023-05-06 21:00:01','2023-05-09 13:51:44'),(24,NULL,94,5,'','ENABLE','2023-05-06 21:01:14','2023-05-09 13:51:01'),(25,NULL,94,5,'','ENABLE','2023-05-06 21:02:08','2023-05-09 13:50:56'),(26,NULL,94,5,'','ENABLE','2023-05-06 21:02:25','2023-05-09 13:49:26'),(27,NULL,95,5,'Sản phẩm này xịn vc','ENABLE','2023-05-09 18:47:51','2023-05-09 13:48:39'),(28,NULL,99,5,'a','ENABLE','2023-05-27 02:25:13','2023-05-26 21:25:46'),(29,NULL,99,5,'a','ENABLE','2023-05-27 02:25:15','2023-05-26 21:25:44'),(30,NULL,99,5,'a','ENABLE','2023-05-27 02:25:18','2023-05-26 21:25:42'),(31,NULL,99,5,'a','ENABLE','2023-05-27 02:25:21','2023-05-26 21:25:39'),(32,NULL,99,5,'a','ENABLE','2023-05-27 02:25:23','2023-05-26 21:25:37'),(33,NULL,99,5,'a','ENABLE','2023-05-27 02:25:26','2023-05-26 21:25:34');
/*!40000 ALTER TABLE `ratehotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomtype` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `hotelId` int(11) NOT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `benefit` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `doubleBed` int(11) DEFAULT NULL,
  `singleBed` int(11) DEFAULT NULL,
  `totalNumber` int(11) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `numberCustomer` int(11) DEFAULT NULL,
  `depositPercent` decimal(20,3) DEFAULT NULL,
  `isUseDeposit` tinyint(1) DEFAULT 1,
  `priceRoot` decimal(20,3) DEFAULT NULL,
  `acreage` varchar(45) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'ENABLE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (77,'Hinode Double Garden View - Onsen & Water Park Inclusive',85,'Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam. nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km. Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi b',NULL,'HDG',1,0,20,3200000.000,2,10.000,1,NULL,'45','ENABLE'),(78,'Hinode Twin Garden View - Onsen & Water Park Inclusive',85,NULL,NULL,'HTG',2,0,10,3200000.000,2,10.000,1,NULL,'45','ENABLE'),(79,'Standard Room, 1 Kingsize Bed',86,NULL,NULL,'VIP',2,2,20,100000.000,2,10.000,1,NULL,'22','ENABLE'),(80,'Hinode Twin Garden View',87,NULL,NULL,'HDG',2,2,20,100000.000,2,22.000,1,NULL,'22','ENABLE'),(81,'Hinode Twin Garden View',88,NULL,NULL,'HNGV',2,2,10,2.000,2,22.000,1,NULL,'22','ENABLE'),(82,'Hinode Twin Garden View',89,NULL,NULL,'HDG',2,2,10,1000000.000,2,12.000,1,NULL,'22','ENABLE'),(83,'Hinode Twin Garden View',90,NULL,NULL,'HDG',2,2,20,2000000.000,2,10.000,1,NULL,'22','ENABLE'),(84,'NORMAL',91,'Da Nang – Mikazuki JAPANESE RESORTS & SPA toạ lạc tại khu vực / thành phố Hòa Hiệp Nam. nơi nghỉ sở hữu vị trí đắc địa cách sân bay Sân bay quốc tế Đà Nẵng (DAD) 7,87 km. Có rất nhiều điểm tham quan lân cận như Lang Co Bay ở khoảng cách 15,69 km, và Bãi b',NULL,'2',2,2,20,40000000.000,2,21.000,1,NULL,'30','ENABLE'),(85,'VIP',92,NULL,NULL,'VIPP',2,2,10,3000000.000,2,23.000,1,NULL,'22','ENABLE'),(86,'VIP 1',93,NULL,NULL,'VIP1',2,2,10,23000000.000,7,30.000,1,NULL,'40','ENABLE'),(87,'NORMAL',94,NULL,NULL,'NM',2,2,10,5000000.000,3,15.000,1,NULL,'23','DELETED'),(88,'VIP 1',95,NULL,NULL,'HDG',2,2,20,100000.000,23,10.000,1,NULL,'22','ENABLE'),(89,'checker',95,NULL,NULL,NULL,1,1,1,23000000.000,1,1.000,0,NULL,'1','ENABLE'),(90,'checker1',95,NULL,NULL,'DayLaMaThe',1,1,1,23000000.000,1,1.000,0,NULL,'1','ENABLE'),(91,'checker1',95,NULL,NULL,'DayLaMaThe',1,1,1,23000000.000,1,1.000,0,NULL,'1','ENABLE'),(92,'checker2',95,NULL,NULL,'DayLaMaThe',1,1,1,23000000.000,1,1.000,0,NULL,'1','ENABLE'),(93,'checker2',95,NULL,NULL,'DayLaMaThe',1,1,1,23000000.000,1,1.000,0,NULL,'1','ENABLE'),(95,'checker2',95,NULL,NULL,'DayLaMaThe',1,1,1,23000000.000,1,1.000,0,NULL,'1','ENABLE'),(96,'checker2',95,NULL,NULL,'DayLaMaThe',1,1,1,23000000.000,1,1.000,0,NULL,'1','ENABLE'),(99,'checker2',95,NULL,NULL,'DayLaMaThe',1,1,1,2000000.000,1,1.000,0,NULL,'1','ENABLE'),(100,'checker3',95,NULL,NULL,'1',11,1,1,2000000.000,1,1.000,0,NULL,'1','ENABLE'),(101,'checker',95,NULL,NULL,'1',1,1,1,2000000.000,1,1.000,0,NULL,'1','ENABLE'),(102,'checkerNew',95,NULL,NULL,'1',1,1,1,2000000.000,1,1.000,0,NULL,'1','ENABLE'),(104,'checker123',95,NULL,NULL,'1',1,1,1,2000000.000,1,1.000,0,NULL,'1','ENABLE'),(105,'VIP 1',96,NULL,NULL,'HDG',1,1,1,2000000.000,1,1.000,1,NULL,'1','ENABLE'),(106,'a',96,NULL,NULL,'1',11,1,1,2000000.000,1,1.000,1,NULL,'1','ENABLE'),(107,'casss',96,NULL,NULL,'a',1,1,1,2000000.000,1,1.000,1,NULL,'1','ENABLE'),(108,'VIP 1',97,NULL,NULL,'2',2,2,10,1.000,1,1.000,1,NULL,'40','ENABLE'),(109,'VIP 2',97,NULL,NULL,'1',1,1,1,1.000,1,1.000,1,NULL,'1','ENABLE'),(110,'VIP 1',98,NULL,NULL,'1',1,1,101,1.000,1,1.000,1,NULL,'1','ENABLE'),(111,'a',98,NULL,NULL,'1',1,1,1,1.000,1,1.000,1,NULL,'1','ENABLE'),(112,'1',98,NULL,NULL,'1',1,1,1,2.000,3,4.000,1,NULL,'1','ENABLE'),(113,'VIP 1',99,NULL,NULL,'2',1,1,101,1.000,1,1.000,1,NULL,'1','ENABLE'),(114,'1',100,NULL,NULL,'1',1,1,10,1.000,1,1.000,1,NULL,'1','ENABLE');
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtypeconvenient`
--

DROP TABLE IF EXISTS `roomtypeconvenient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomtypeconvenient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `convenientId` int(11) DEFAULT NULL,
  `roomTypeId` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=807 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtypeconvenient`
--

LOCK TABLES `roomtypeconvenient` WRITE;
/*!40000 ALTER TABLE `roomtypeconvenient` DISABLE KEYS */;
INSERT INTO `roomtypeconvenient` VALUES (349,1,77,NULL),(350,2,77,NULL),(351,3,77,NULL),(352,4,77,NULL),(353,5,77,NULL),(354,6,77,NULL),(355,7,77,NULL),(356,8,77,NULL),(357,9,77,NULL),(358,10,77,NULL),(359,11,77,NULL),(360,12,77,NULL),(361,1,78,NULL),(362,2,78,NULL),(363,3,78,NULL),(364,4,78,NULL),(365,5,78,NULL),(366,6,78,NULL),(367,7,78,NULL),(368,8,78,NULL),(369,9,78,NULL),(370,10,78,NULL),(371,11,78,NULL),(372,12,78,NULL),(373,1,79,NULL),(374,2,79,NULL),(375,3,79,NULL),(376,4,79,NULL),(377,5,79,NULL),(378,6,79,NULL),(379,7,79,NULL),(380,8,79,NULL),(381,9,79,NULL),(382,10,79,NULL),(383,11,79,NULL),(384,12,79,NULL),(385,1,80,NULL),(386,2,80,NULL),(387,3,80,NULL),(388,4,80,NULL),(389,5,80,NULL),(390,6,80,NULL),(391,7,80,NULL),(392,8,80,NULL),(393,9,80,NULL),(394,10,80,NULL),(395,11,80,NULL),(396,12,80,NULL),(397,1,81,NULL),(398,2,81,NULL),(399,3,81,NULL),(400,4,81,NULL),(401,5,81,NULL),(402,6,81,NULL),(403,7,81,NULL),(404,8,81,NULL),(405,9,81,NULL),(406,10,81,NULL),(407,11,81,NULL),(408,12,81,NULL),(409,1,82,NULL),(410,2,82,NULL),(411,3,82,NULL),(412,4,82,NULL),(413,5,82,NULL),(414,6,82,NULL),(415,7,82,NULL),(416,8,82,NULL),(417,9,82,NULL),(418,10,82,NULL),(419,11,82,NULL),(420,12,82,NULL),(422,2,83,NULL),(423,3,83,NULL),(424,4,83,NULL),(425,5,83,NULL),(426,6,83,NULL),(427,7,83,NULL),(428,8,83,NULL),(429,9,83,NULL),(430,10,83,NULL),(431,11,83,NULL),(432,12,83,NULL),(433,1,84,NULL),(434,2,84,NULL),(435,3,84,NULL),(436,4,84,NULL),(437,5,84,NULL),(438,6,84,NULL),(439,7,84,NULL),(440,8,84,NULL),(441,9,84,NULL),(442,10,84,NULL),(443,11,84,NULL),(444,12,84,NULL),(445,1,85,NULL),(446,2,85,NULL),(447,3,85,NULL),(448,4,85,NULL),(449,5,85,NULL),(450,6,85,NULL),(451,7,85,NULL),(452,8,85,NULL),(453,9,85,NULL),(454,10,85,NULL),(455,11,85,NULL),(456,12,85,NULL),(457,1,86,NULL),(458,2,86,NULL),(459,3,86,NULL),(460,4,86,NULL),(461,5,86,NULL),(462,6,86,NULL),(463,7,86,NULL),(464,8,86,NULL),(465,9,86,NULL),(466,10,86,NULL),(467,11,86,NULL),(468,12,86,NULL),(474,6,87,NULL),(475,7,87,NULL),(476,8,87,NULL),(477,9,87,NULL),(478,10,87,NULL),(479,11,87,NULL),(531,12,87,NULL),(533,2,87,NULL),(534,3,87,NULL),(535,4,87,NULL),(536,5,87,NULL),(537,1,83,NULL),(538,1,88,NULL),(539,2,88,NULL),(540,3,88,NULL),(541,4,88,NULL),(542,5,88,NULL),(543,6,88,NULL),(544,7,88,NULL),(545,8,88,NULL),(546,9,88,NULL),(547,10,88,NULL),(548,11,88,NULL),(549,12,88,NULL),(550,1,99,NULL),(551,1,99,NULL),(552,1,99,NULL),(553,1,99,NULL),(554,1,99,NULL),(555,1,99,NULL),(556,1,99,NULL),(557,1,99,NULL),(558,1,99,NULL),(559,1,99,NULL),(560,1,99,NULL),(561,1,99,NULL),(562,2,99,NULL),(563,2,99,NULL),(564,2,99,NULL),(565,2,99,NULL),(566,2,99,NULL),(567,2,99,NULL),(568,2,99,NULL),(569,2,99,NULL),(570,2,99,NULL),(571,2,99,NULL),(572,2,99,NULL),(573,2,99,NULL),(574,3,99,NULL),(575,3,99,NULL),(576,3,99,NULL),(577,3,99,NULL),(578,3,99,NULL),(579,3,99,NULL),(580,3,99,NULL),(581,3,99,NULL),(582,3,99,NULL),(583,3,99,NULL),(584,3,99,NULL),(585,3,99,NULL),(586,4,99,NULL),(587,4,99,NULL),(588,4,99,NULL),(589,4,99,NULL),(590,4,99,NULL),(591,4,99,NULL),(592,4,99,NULL),(593,4,99,NULL),(594,4,99,NULL),(595,4,99,NULL),(596,4,99,NULL),(597,4,99,NULL),(598,5,99,NULL),(599,5,99,NULL),(600,5,99,NULL),(601,5,99,NULL),(602,5,99,NULL),(603,5,99,NULL),(604,5,99,NULL),(605,5,99,NULL),(606,5,99,NULL),(607,5,99,NULL),(608,5,99,NULL),(609,5,99,NULL),(610,6,99,NULL),(611,6,99,NULL),(612,6,99,NULL),(613,6,99,NULL),(614,6,99,NULL),(615,6,99,NULL),(616,6,99,NULL),(617,6,99,NULL),(618,6,99,NULL),(619,6,99,NULL),(620,6,99,NULL),(621,6,99,NULL),(622,7,99,NULL),(623,7,99,NULL),(624,7,99,NULL),(625,7,99,NULL),(626,7,99,NULL),(627,7,99,NULL),(628,7,99,NULL),(629,7,99,NULL),(630,7,99,NULL),(631,7,99,NULL),(632,7,99,NULL),(633,7,99,NULL),(634,8,99,NULL),(635,8,99,NULL),(636,8,99,NULL),(637,8,99,NULL),(638,8,99,NULL),(639,8,99,NULL),(640,8,99,NULL),(641,8,99,NULL),(642,8,99,NULL),(643,8,99,NULL),(644,8,99,NULL),(645,8,99,NULL),(646,9,99,NULL),(647,9,99,NULL),(648,9,99,NULL),(649,9,99,NULL),(650,9,99,NULL),(651,9,99,NULL),(652,9,99,NULL),(653,9,99,NULL),(654,9,99,NULL),(655,9,99,NULL),(656,9,99,NULL),(657,9,99,NULL),(658,1,100,NULL),(659,1,100,NULL),(660,1,100,NULL),(661,1,100,NULL),(662,1,100,NULL),(663,1,100,NULL),(664,1,100,NULL),(665,1,100,NULL),(666,1,100,NULL),(667,1,100,NULL),(668,1,100,NULL),(669,1,100,NULL),(670,12,100,NULL),(671,12,100,NULL),(672,12,100,NULL),(673,12,100,NULL),(674,12,100,NULL),(675,12,100,NULL),(676,12,100,NULL),(677,12,100,NULL),(678,12,100,NULL),(679,12,100,NULL),(680,12,100,NULL),(681,12,100,NULL),(682,1,101,NULL),(683,1,101,NULL),(684,1,101,NULL),(685,1,101,NULL),(686,1,101,NULL),(687,1,101,NULL),(688,1,101,NULL),(689,1,101,NULL),(690,1,101,NULL),(691,1,101,NULL),(692,1,101,NULL),(693,1,101,NULL),(694,12,101,NULL),(695,12,101,NULL),(696,12,101,NULL),(697,12,101,NULL),(698,12,101,NULL),(699,12,101,NULL),(700,12,101,NULL),(701,12,101,NULL),(702,12,101,NULL),(703,12,101,NULL),(704,12,101,NULL),(705,12,101,NULL),(706,1,102,NULL),(707,1,102,NULL),(708,1,102,NULL),(709,1,102,NULL),(710,1,102,NULL),(711,1,102,NULL),(712,1,102,NULL),(713,1,102,NULL),(714,1,102,NULL),(715,1,102,NULL),(716,1,102,NULL),(717,1,102,NULL),(718,12,102,NULL),(719,12,102,NULL),(720,12,102,NULL),(721,12,102,NULL),(722,12,102,NULL),(723,12,102,NULL),(724,12,102,NULL),(725,12,102,NULL),(726,12,102,NULL),(727,12,102,NULL),(728,12,102,NULL),(729,12,102,NULL),(741,1,104,NULL),(742,2,104,NULL),(743,3,104,NULL),(744,4,104,NULL),(745,11,104,NULL),(746,12,104,NULL),(747,1,105,NULL),(748,2,105,NULL),(749,3,105,NULL),(750,4,105,NULL),(751,5,105,NULL),(752,6,105,NULL),(753,7,105,NULL),(754,8,105,NULL),(755,9,105,NULL),(756,10,105,NULL),(757,11,105,NULL),(758,12,105,NULL),(759,1,108,NULL),(760,2,108,NULL),(761,3,108,NULL),(762,4,108,NULL),(763,5,108,NULL),(764,6,108,NULL),(765,7,108,NULL),(766,8,108,NULL),(767,9,108,NULL),(768,10,108,NULL),(769,11,108,NULL),(770,12,108,NULL),(771,1,110,NULL),(772,2,110,NULL),(773,3,110,NULL),(774,4,110,NULL),(775,5,110,NULL),(776,6,110,NULL),(777,7,110,NULL),(778,8,110,NULL),(779,9,110,NULL),(780,10,110,NULL),(781,11,110,NULL),(782,12,110,NULL),(783,1,113,NULL),(784,2,113,NULL),(785,3,113,NULL),(786,4,113,NULL),(787,5,113,NULL),(788,6,113,NULL),(789,7,113,NULL),(790,8,113,NULL),(791,9,113,NULL),(792,10,113,NULL),(793,11,113,NULL),(794,12,113,NULL),(795,1,114,NULL),(796,2,114,NULL),(797,3,114,NULL),(798,4,114,NULL),(799,5,114,NULL),(800,6,114,NULL),(801,7,114,NULL),(802,8,114,NULL),(803,9,114,NULL),(804,10,114,NULL),(805,11,114,NULL),(806,12,114,NULL);
/*!40000 ALTER TABLE `roomtypeconvenient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'NGọc','0988888887','ngoc123123123@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 22:34:48','2023-05-26 18:25:46','ENABLE'),(13,'ngoc','0988888888','ngoc1@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 22:38:46','2023-04-22 02:41:18','ENABLE'),(14,'ngoc','0988888888','ngoc2@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 22:40:52','2023-04-22 02:41:18','ENABLE'),(19,'ngoc','0988888888','ngoc@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 22:56:38','2023-04-22 02:41:18','ENABLE'),(20,'ngoc','0988888888','ngoc4@gmail.com','2b763af53a6bb431732a004210fcf4c6','2023-04-13 22:59:12','2023-04-22 02:41:18','ENABLE'),(21,'ngoc','0988888888','ngoc5@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 23:04:59','2023-04-22 02:41:18','ENABLE'),(22,'ngoc','0988888888','ngoc6@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 23:07:16','2023-04-22 02:41:18','ENABLE'),(23,'ngoc','0988888888','ngoc8@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 23:12:12','2023-04-22 02:41:18','ENABLE'),(24,'ngoc','0988888888','a@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 23:13:18','2023-04-22 02:41:18','ENABLE'),(25,'ngoc','0988888888','w@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 23:13:43','2023-04-22 02:41:18','ENABLE'),(26,'ngoc','0988888888','q@gmail.com','3c59dc048e8850243be8079a5c74d079','2023-04-13 23:14:04','2023-04-22 02:41:18','ENABLE'),(27,'ngoc','0988888888','ngminhngoc123@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-04-13 23:15:36','2023-05-26 21:48:19','ENABLE'),(32,'ngoc','0988888881','ngminhngoc1234@gmail.com','c4e33bbf6c3e0e19a6c93e350cbb14c1','2023-05-27 10:30:26',NULL,'ENABLE');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-27 14:00:47
