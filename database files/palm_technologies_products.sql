-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: palm_technologies
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ID` varchar(45) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `UNIT_PRICE` decimal(10,0) DEFAULT NULL,
  `MANUFACTURER` varchar(45) DEFAULT NULL,
  `CATEGORY` varchar(45) DEFAULT NULL,
  `UNITS_IN_STOCK` bigint DEFAULT NULL,
  `UNITS_IN_ORDER` bigint DEFAULT NULL,
  `STATE` varchar(45) DEFAULT NULL,
  `DISCONTINUED` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P1234','iPhone 6s','Apple iPhone 6s smartphone with 4.00-inch 640x1136 display and 8- \r\n megapixel rear camera',500,'Apple','Smartphone',1450,69,'Refurbished',1),('P1235','Dell Inspiron','Dell Inspiron 14-inch Laptop (Black) with 3rd Generation Intel Core processors',700,'Dell','Laptop',1000,2,'Old',1),('P1236','Nexus 7','Google Nexus 7 is the lightest 7 inch tablet With a quad-core Qualcomm\r\nSnapdragon S4 Pro processor',300,'Google','Tablet',1029,12,'New',1),('P1238','Nexus 7','Google Nexus 7 is the lightest 7 inch tablet With a quad-core Qualcomm\r\n Snapdragon&#153; S4 Pro processor',300,'Apple','Smartphone',258,59,'Old',1),('P1239','iPhone 6s','Google Nexus 7 is the lightest 7 inch tablet With a quad-core Qualcomm',500,'Apple','Smartphone',15,589,'Refurbished',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-25 15:43:33
