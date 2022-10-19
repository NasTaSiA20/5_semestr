-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_pismenskaya
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `brend`
--

DROP TABLE IF EXISTS `brend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brend` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `tip` varchar(125) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brend`
--

LOCK TABLES `brend` WRITE;
/*!40000 ALTER TABLE `brend` DISABLE KEYS */;
INSERT INTO `brend` VALUES (1,'Marc OPolo'),(2,'ALCOTT'),(3,'GUESS'),(4,'OSTIN'),(5,'BEFREE'),(6,'ROO');
/*!40000 ALTER TABLE `brend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_tovara`
--

DROP TABLE IF EXISTS `category_tovara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_tovara` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `category` varchar(125) NOT NULL,
  `sale` varchar(145) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_tovara`
--

LOCK TABLES `category_tovara` WRITE;
/*!40000 ALTER TABLE `category_tovara` DISABLE KEYS */;
INSERT INTO `category_tovara` VALUES (1,'женская одежда','5'),(2,'мужская одежда','0'),(3,'детская одежда','10'),(4,'шляпы','0'),(5,'женская обувь','0');
/*!40000 ALTER TABLE `category_tovara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_shop_pismenskaya`
--

DROP TABLE IF EXISTS `order_shop_pismenskaya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_shop_pismenskaya` (
  `idorder` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(125) NOT NULL,
  `phone` varchar(125) NOT NULL,
  `data_time` varchar(125) NOT NULL,
  PRIMARY KEY (`idorder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_shop_pismenskaya`
--

LOCK TABLES `order_shop_pismenskaya` WRITE;
/*!40000 ALTER TABLE `order_shop_pismenskaya` DISABLE KEYS */;
INSERT INTO `order_shop_pismenskaya` VALUES (1,'Иванов Борис Николаевич','+79785673546','2022-06-16 12:34');
/*!40000 ALTER TABLE `order_shop_pismenskaya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_tovara`
--

DROP TABLE IF EXISTS `tip_tovara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip_tovara` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_tovara`
--

LOCK TABLES `tip_tovara` WRITE;
/*!40000 ALTER TABLE `tip_tovara` DISABLE KEYS */;
INSERT INTO `tip_tovara` VALUES (1,'платье'),(2,'футболка'),(3,'брюки'),(4,'куртка'),(5,'шорты'),(6,'кепка'),(7,'туфли');
/*!40000 ALTER TABLE `tip_tovara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tovari`
--

DROP TABLE IF EXISTS `tovari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tovari` (
  `artikul` int NOT NULL AUTO_INCREMENT,
  `id_brenda` varchar(123) NOT NULL,
  `id_tip_tovara` varchar(124) NOT NULL,
  `id_category` varchar(123) NOT NULL,
  `cena` decimal(10,0) NOT NULL,
  PRIMARY KEY (`artikul`)
) ENGINE=InnoDB AUTO_INCREMENT=176112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tovari`
--

LOCK TABLES `tovari` WRITE;
/*!40000 ALTER TABLE `tovari` DISABLE KEYS */;
INSERT INTO `tovari` VALUES (1,'3','3','1',10006),(2,'2','2','1',1090),(3,'3','1','1',13990),(4,'2','2','2',1490),(5,'1','1','1',15980),(6,'4','4','3',10400),(7,'5','5','2',5999),(8,'1','6','4',10000),(9,'3','7','5',30500);
/*!40000 ALTER TABLE `tovari` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-19 13:49:54
