-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: gamedb_main
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
-- Table structure for table `Games`
--

DROP TABLE IF EXISTS `Games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Games` (
  `GameID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ConsoleID` int DEFAULT NULL,
  `ReleaseYear` year DEFAULT NULL,
  `DeveloperID` int DEFAULT NULL,
  `List` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  PRIMARY KEY (`GameID`),
  KEY `ConsoleID` (`ConsoleID`),
  KEY `DeveloperID` (`DeveloperID`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`ConsoleID`) REFERENCES `Consoles` (`ConsoleID`),
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`DeveloperID`) REFERENCES `Developers` (`DeveloperID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Games`
--

LOCK TABLES `Games` WRITE;
/*!40000 ALTER TABLE `Games` DISABLE KEYS */;
INSERT INTO `Games` VALUES (1,'Super Bomberman',1,1992,1,'1','https://upload.wikimedia.org/wikipedia/en/7/7a/Super.Bomberman.Box.Art.SNES.PAL.png',NULL),(2,'Gex: Enter the Gecko',2,1995,2,NULL,'https://upload.wikimedia.org/wikipedia/en/5/59/Gex2Cover.jpg',NULL),(3,'Tactics Ogre',2,1996,3,NULL,'https://upload.wikimedia.org/wikipedia/en/4/40/SFC_Tactics_Ogre_-_Let_Us_Cling_Together_cover_art.jpg',NULL),(4,'Beyond Good & Evil',3,2004,4,NULL,'https://upload.wikimedia.org/wikipedia/en/c/ce/BGE-cover.jpg',NULL),(5,'Meteos',4,2007,5,NULL,'https://upload.wikimedia.org/wikipedia/en/2/20/Meteos.jpg',NULL),(6,'Sid Meier\'s Pirates!',5,2004,6,NULL,'https://upload.wikimedia.org/wikipedia/en/7/70/Sid_Meier%27s_Pirates%21_%282004%29_Coverart.png',NULL);
/*!40000 ALTER TABLE `Games` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-22  0:07:52
