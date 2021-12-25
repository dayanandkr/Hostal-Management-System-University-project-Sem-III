CREATE DATABASE  IF NOT EXISTS `hosteldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hosteldb`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hosteldb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_login` (
  `id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('admin','admin');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `month` varchar(45) NOT NULL,
  `amount` int NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'August-2021',8000,'2021-08-02'),(2,1,'September-2021',8000,'2021-09-06'),(3,1,'October-2021',8000,'2021-10-10'),(4,2,'September-2021',7000,'2021-09-03'),(5,2,'October-2021',7000,'2021-10-05'),(6,3,'July-2021',7000,'2021-08-01'),(7,3,'August-2021',7000,'2021-10-05'),(8,3,'September-2021',7000,'2021-10-06'),(9,4,'May-2021',4500,'2021-05-09'),(10,4,'July-2021',9000,'2021-07-04'),(11,1,'January-2021',5000,'2021-10-18'),(18,1,'February-2021',5000,'2021-10-18'),(19,1,'March-2021',5000,'2021-10-18'),(20,3,'January-2021',7000,'2021-10-18'),(21,4,'June-2021',4500,'2021-10-18'),(22,4,'June-2022',4500,'2021-10-18'),(23,1,'June-2022',5000,'2021-10-18'),(24,1,'June-2021',5000,'2021-10-18'),(25,1,'November-2021',5000,'2021-12-20'),(26,3,'February-2021',7000,'2021-12-20'),(27,4,'January-2021',4500,'2021-12-20'),(28,1,'January-2020',5500,'2021-12-24'),(29,1,'January-2029',5500,'2021-12-24');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_no` varchar(10) NOT NULL,
  `price` int NOT NULL,
  `ac` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `floor` int NOT NULL,
  `vacant_bed` int NOT NULL,
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('A002',6000,'Non-AC','Single Seater',0,1),('A004',5500,'Non-AC','Two Seater',0,2),('A005',5000,'Non-AC','Three Seater',0,2),('A006',5500,'Non-AC','Three Seater',0,3),('A101',7000,'AC','Two Seater',1,0),('A102',8000,'AC','Single Seater',1,0),('A103',6000,'AC','Three Seater',1,3),('A201',4500,'Non-AC','Four Seater',2,3);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `aadhaar` varchar(45) NOT NULL,
  `address` varchar(300) NOT NULL,
  `room_no` varchar(45) NOT NULL,
  `rent` int NOT NULL,
  `security` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Dayanand Kumar','9931378403','Ram Pravesh sah','Male','306682235959','Sitamarhi,Bihar','A102',8000,7000,'2021-08-01',NULL,'Active'),(2,'Manoj Kumar','689980790','Ram Prit Mahto','Male','886898891','Muzaffarpur,Bihar','A101',7000,7000,'2021-09-01',NULL,'Active'),(3,'Basudev Sharma','668987990','Shambhu sharma','Male','6889399890','Motihari,Bihar','A101',7000,7000,'2021-07-06',NULL,'Active'),(4,'Raju Kumar','9766655876','Mohan prasad','Male','6786289789','Gaya,Bihar','A201',4500,5000,'2021-05-03',NULL,'Active'),(5,'Daya','9976557','Ram','Male','5687898080','Greater Noida','A005',5500,5000,'2021-01-02',NULL,'Active');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-25 15:24:23
