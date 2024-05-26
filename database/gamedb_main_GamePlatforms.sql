-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: gamedb_main
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `gameplatforms`
--

DROP TABLE IF EXISTS `gameplatforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gameplatforms` (
  `GameID` int NOT NULL,
  `ConsoleID` int NOT NULL,
  PRIMARY KEY (`GameID`,`ConsoleID`),
  KEY `ConsoleID` (`ConsoleID`),
  CONSTRAINT `gameplatforms_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `games` (`GameID`),
  CONSTRAINT `gameplatforms_ibfk_2` FOREIGN KEY (`ConsoleID`) REFERENCES `consoles` (`ConsoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameplatforms`
--

LOCK TABLES `gameplatforms` WRITE;
/*!40000 ALTER TABLE `gameplatforms` DISABLE KEYS */;
INSERT INTO `gameplatforms` VALUES (1,1),(2,2),(3,2),(4,3),(5,4),(6,5),(8,5),(9,5),(11,5),(12,5),(13,5),(14,5),(16,5),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(14,6),(15,6),(13,7),(15,7),(16,7),(9,8),(11,8),(12,8),(13,8),(14,8),(15,8),(7,9),(11,9),(13,9),(14,9);
/*!40000 ALTER TABLE `gameplatforms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 16:07:43
