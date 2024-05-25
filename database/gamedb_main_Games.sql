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
  `goty` int DEFAULT '0',
  PRIMARY KEY (`GameID`),
  KEY `ConsoleID` (`ConsoleID`),
  KEY `DeveloperID` (`DeveloperID`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`ConsoleID`) REFERENCES `consoles` (`ConsoleID`),
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`DeveloperID`) REFERENCES `developers` (`DeveloperID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Games`
--

LOCK TABLES `Games` WRITE;
/*!40000 ALTER TABLE `Games` DISABLE KEYS */;
INSERT INTO `Games` VALUES (1,'Super Bomberman',1,1992,1,'1','https://upload.wikimedia.org/wikipedia/en/7/7a/Super.Bomberman.Box.Art.SNES.PAL.png',6,0),(2,'Gex: Enter the Gecko',2,1995,2,NULL,'https://upload.wikimedia.org/wikipedia/en/5/59/Gex2Cover.jpg',5,0),(3,'Tactics Ogre',2,1996,3,NULL,'https://upload.wikimedia.org/wikipedia/en/4/40/SFC_Tactics_Ogre_-_Let_Us_Cling_Together_cover_art.jpg',7,0),(4,'Beyond Good & Evil',3,2004,4,NULL,'https://upload.wikimedia.org/wikipedia/en/c/ce/BGE-cover.jpg',6,0),(5,'Meteos',4,2007,5,NULL,'https://upload.wikimedia.org/wikipedia/en/2/20/Meteos.jpg',8,0),(6,'Sid Meier\'s Pirates!',5,2004,6,NULL,'https://upload.wikimedia.org/wikipedia/en/7/70/Sid_Meier%27s_Pirates%21_%282004%29_Coverart.png',5,0),(7,'The Legend of Zelda: Breath of the Wild',9,2017,5,NULL,'https://upload.wikimedia.org/wikipedia/en/c/c6/The_Legend_of_Zelda_Breath_of_the_Wild.jpg',10,1),(66,'God of War',6,2018,12,NULL,'https://upload.wikimedia.org/wikipedia/en/a/a7/God_of_War_4_cover.jpg',9,1),(67,'Sekiro: Shadows Die Twice',6,2019,10,NULL,'https://upload.wikimedia.org/wikipedia/en/6/6e/Sekiro_art.jpg',8,1),(68,'The Last of Us Part II',8,2020,13,NULL,'https://upload.wikimedia.org/wikipedia/en/4/4f/TLOU_P2_Box_Art_2.png',4,1),(69,'It Takes Two',9,2021,11,NULL,'https://upload.wikimedia.org/wikipedia/en/a/aa/It_Takes_Two_cover_art.png',8,1),(70,'Dragon Age: Inquisition',7,2014,7,NULL,'https://upload.wikimedia.org/wikipedia/en/c/ce/Dragon_Age_Inquisition_BoxArt.jpg',7,1),(71,'The Witcher 3: Wild Hunt',7,2015,8,NULL,'https://upload.wikimedia.org/wikipedia/en/0/0c/Witcher_3_cover_art.jpg',10,1),(72,'Overwatch',4,2016,9,NULL,'https://upload.wikimedia.org/wikipedia/en/5/51/Overwatch_cover_art.jpg',3,1),(73,'Elden Ring',6,2022,10,NULL,'https://upload.wikimedia.org/wikipedia/en/b/b9/Elden_Ring_Box_art.jpg',9,1),(74,'Baldurs Gate 3',5,2023,14,NULL,'https://upload.wikimedia.org/wikipedia/en/1/12/Baldur%27s_Gate_3_cover_art.jpg',10,1);
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

-- Dump completed on 2024-05-25 21:17:13
