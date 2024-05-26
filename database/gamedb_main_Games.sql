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
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `GameID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ReleaseYear` year DEFAULT NULL,
  `DeveloperID` int DEFAULT NULL,
  `List` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Rating` decimal(10,1) DEFAULT NULL,
  `goty` int DEFAULT '0',
  `Description` text,
  PRIMARY KEY (`GameID`),
  KEY `DeveloperID` (`DeveloperID`),
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`DeveloperID`) REFERENCES `developers` (`DeveloperID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Super Bomberman',1992,1,'1','https://upload.wikimedia.org/wikipedia/en/7/7a/Super.Bomberman.Box.Art.SNES.PAL.png',6.0,0,'A classic action-packed multiplayer game set in a maze-like environment where players strategically place bombs to defeat enemies and break barriers.'),(2,'Gex: Enter the Gecko',1995,2,NULL,'https://upload.wikimedia.org/wikipedia/en/5/59/Gex2Cover.jpg',5.0,0,'A 3D platformer featuring Gex, a gecko who battles through various television-themed worlds to defeat his enemies.'),(3,'Tactics Ogre',1996,3,NULL,'https://upload.wikimedia.org/wikipedia/en/4/40/SFC_Tactics_Ogre_-_Let_Us_Cling_Together_cover_art.jpg',7.0,0,'A tactical RPG that involves intricate story choices and deep tactical battles, set in a fantasy world.'),(4,'Beyond Good & Evil',2004,4,NULL,'https://upload.wikimedia.org/wikipedia/en/c/ce/BGE-cover.jpg',6.0,0,'An action-adventure game that combines puzzle-solving, stealth, and combat, set in a dystopian future.'),(5,'Meteos',2007,5,NULL,'https://upload.wikimedia.org/wikipedia/en/2/20/Meteos.jpg',8.3,0,'A puzzle game that challenges players to clear blocks by aligning them planetarily to save their world.'),(6,'Sid Meier\'s Pirates!',2004,6,NULL,'https://upload.wikimedia.org/wikipedia/en/7/70/Sid_Meier%27s_Pirates%21_%282004%29_Coverart.png',5.0,0,'An open-world pirate game that blends sailing, sword-fighting, and treasure-hunting in a historical setting.'),(7,'The Legend of Zelda: Breath of the Wild',2017,5,NULL,'https://upload.wikimedia.org/wikipedia/en/c/c6/The_Legend_of_Zelda_Breath_of_the_Wild.jpg',10.0,1,'An epic open-world adventure where players explore the vast kingdom of Hyrule and battle against dark forces threatening it.'),(8,'God of War',2018,12,NULL,'https://upload.wikimedia.org/wikipedia/en/a/a7/God_of_War_4_cover.jpg',9.0,1,'A mythological narrative-driven action game that explores the struggles of Kratos, the God of War, as he ventures through the Norse wilderness with his son.'),(9,'Sekiro: Shadows Die Twice',2019,10,NULL,'https://upload.wikimedia.org/wikipedia/en/6/6e/Sekiro_art.jpg',8.0,1,'A brutally challenging action-adventure game where players take on the role of a shinobi seeking revenge in a war-torn feudal Japan.'),(10,'The Last of Us Part II',2020,13,NULL,'https://upload.wikimedia.org/wikipedia/en/4/4f/TLOU_P2_Box_Art_2.png',4.0,1,'A post-apocalyptic tale of revenge and survival, featuring emotional storytelling and intense combat scenarios.'),(11,'It Takes Two',2021,11,NULL,'https://upload.wikimedia.org/wikipedia/en/a/aa/It_Takes_Two_cover_art.png',8.0,1,'A cooperative puzzle-platformer that requires two players to take on whimsical challenges to mend a fractured relationship.'),(12,'Dragon Age: Inquisition',2014,7,NULL,'https://upload.wikimedia.org/wikipedia/en/c/ce/Dragon_Age_Inquisition_BoxArt.jpg',7.0,1,'A role-playing game set in a massive fantasy world where players make decisions that shape the story and world around them.'),(13,'The Witcher 3: Wild Hunt',2015,8,NULL,'https://upload.wikimedia.org/wikipedia/en/0/0c/Witcher_3_cover_art.jpg',10.0,1,'A narrative-driven open-world RPG set in a visually stunning fantasy universe filled with meaningful choices and impactful consequences.'),(14,'Overwatch',2016,9,NULL,'https://upload.wikimedia.org/wikipedia/en/5/51/Overwatch_cover_art.jpg',1.0,1,'A team-based multiplayer shooter where heroes with unique abilities compete in various objectives and battles.'),(15,'Elden Ring',2022,10,NULL,'https://upload.wikimedia.org/wikipedia/en/b/b9/Elden_Ring_Box_art.jpg',9.0,1,'A dark fantasy RPG that challenges players to navigate a vast world filled with dangers, mysteries, and colossal enemies.'),(16,'Baldurs Gate 3',2023,14,NULL,'https://upload.wikimedia.org/wikipedia/en/1/12/Baldur%27s_Gate_3_cover_art.jpg',10.0,1,'An immersive RPG set in the Dungeons & Dragons universe, offering deep narrative choices and challenging combat.');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27  2:47:43
