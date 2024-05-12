CREATE DATABASE  IF NOT EXISTS `gamedb_main` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gamedb_main`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
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
-- Table structure for table `Consoles`
--

DROP TABLE IF EXISTS `Consoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Consoles` (
  `ConsoleID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ConsoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Consoles`
--

LOCK TABLES `Consoles` WRITE;
/*!40000 ALTER TABLE `Consoles` DISABLE KEYS */;
INSERT INTO `Consoles` VALUES (1,'Super Nintendo'),(2,'PS1'),(3,'PS2'),(4,'DS'),(5,'PC');
/*!40000 ALTER TABLE `Consoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Developers`
--

DROP TABLE IF EXISTS `Developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Developers` (
  `DeveloperID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DeveloperID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Developers`
--

LOCK TABLES `Developers` WRITE;
/*!40000 ALTER TABLE `Developers` DISABLE KEYS */;
INSERT INTO `Developers` VALUES (1,'Hudson Soft'),(2,'Crystal Dynamics'),(3,'SquareSoft'),(4,'Ubisoft'),(5,'Nintendo'),(6,'Firaxis Games');
/*!40000 ALTER TABLE `Developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game_Genres`
--

DROP TABLE IF EXISTS `Game_Genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Game_Genres` (
  `GameID` int NOT NULL,
  `GenreID` int NOT NULL,
  PRIMARY KEY (`GameID`,`GenreID`),
  KEY `GenreID` (`GenreID`),
  CONSTRAINT `game_genres_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `Games` (`GameID`),
  CONSTRAINT `game_genres_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `Genres` (`GenreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game_Genres`
--

LOCK TABLES `Game_Genres` WRITE;
/*!40000 ALTER TABLE `Game_Genres` DISABLE KEYS */;
INSERT INTO `Game_Genres` VALUES (1,1),(1,2),(2,2),(4,2),(2,3),(3,4),(3,5),(4,6),(5,7),(6,8),(6,9);
/*!40000 ALTER TABLE `Game_Genres` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `Games` VALUES (1,'Super',1,1992,1),(2,'Gex: Enter the Gecko',2,1995,2),(3,'Tactics Ogre',2,1996,3),(4,'Beyond Good & Evil',3,2004,4),(5,'Meteos',4,2007,5),(6,'Sid Meier\'s Pirates!',5,2004,6);
/*!40000 ALTER TABLE `Games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genres`
--

DROP TABLE IF EXISTS `Genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genres` (
  `GenreID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genres`
--

LOCK TABLES `Genres` WRITE;
/*!40000 ALTER TABLE `Genres` DISABLE KEYS */;
INSERT INTO `Genres` VALUES (1,'Multiplayer'),(2,'Action'),(3,'Platformer'),(4,'RPG'),(5,'Tactical'),(6,'Adventure'),(7,'Puzzle'),(8,'RTS'),(9,'Simulation');
/*!40000 ALTER TABLE `Genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListGames`
--

DROP TABLE IF EXISTS `ListGames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListGames` (
  `EntryID` int NOT NULL AUTO_INCREMENT,
  `ListID` int DEFAULT NULL,
  `GameID` int DEFAULT NULL,
  PRIMARY KEY (`EntryID`),
  KEY `ListID` (`ListID`),
  KEY `GameID` (`GameID`),
  CONSTRAINT `listgames_ibfk_1` FOREIGN KEY (`ListID`) REFERENCES `UserLists` (`ListID`),
  CONSTRAINT `listgames_ibfk_2` FOREIGN KEY (`GameID`) REFERENCES `Games` (`GameID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListGames`
--

LOCK TABLES `ListGames` WRITE;
/*!40000 ALTER TABLE `ListGames` DISABLE KEYS */;
/*!40000 ALTER TABLE `ListGames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserLists`
--

DROP TABLE IF EXISTS `UserLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserLists` (
  `ListID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `ListName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ListID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `userlists_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserLists`
--

LOCK TABLES `UserLists` WRITE;
/*!40000 ALTER TABLE `UserLists` DISABLE KEYS */;
INSERT INTO `UserLists` VALUES (1,2,'My Favorite Games');
/*!40000 ALTER TABLE `UserLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PasswordHash` char(64) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username` (`Username`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'username','user@example.com','hash_here'),(2,'userAlpha','alpha@example.com','password123'),(3,'userBeta','beta@example.com','password456'),(4,'userGamma','gamma@example.com','password789');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viewtop20gamesorderedbyname`
--

DROP TABLE IF EXISTS `viewtop20gamesorderedbyname`;
/*!50001 DROP VIEW IF EXISTS `viewtop20gamesorderedbyname`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewtop20gamesorderedbyname` AS SELECT 
 1 AS `GameID`,
 1 AS `Name`,
 1 AS `ConsoleName`,
 1 AS `ReleaseYear`,
 1 AS `DeveloperName`,
 1 AS `Genres`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'gamedb_main'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddGameToList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddGameToList`(IN listID INT, IN gameName INT)
BEGIN
    DECLARE gameID INT;

    -- Get game ID
    SELECT GameID INTO gameID 
    FROM Games 
    WHERE GameID = gameName 
    LIMIT 1;

    -- Debug: Print gameID and listID values
    SELECT gameID AS DebugGameID, listID AS DebugListID;

    -- Insert into ListGames if the game ID is found
    IF gameID IS NOT NULL THEN
        INSERT INTO ListGames (ListID, GameID) 
        VALUES (listID, gameID);
    ELSE
        -- Debug: If gameID is NULL, print error message
        SELECT 'Game not found' AS ErrorMessage;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckGameExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckGameExists`(IN gameName VARCHAR(255))
BEGIN
    DECLARE gameID INT;

    -- Attempt to get game ID with simplified comparison
    SELECT GameID INTO gameID 
    FROM Games 
    WHERE LOWER(TRIM(Name)) = LOWER(TRIM(gameName)) 
    LIMIT 1;

    -- Output the result
    IF gameID IS NOT NULL THEN
        SELECT 'Game found' AS Status, gameID AS FoundGameID;
    ELSE
        SELECT 'Game not found' AS Status;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckUserLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckUserLogin`(IN inputUsername VARCHAR(255), IN inputPassword VARCHAR(255), OUT loginSuccess BOOLEAN)
BEGIN
    SELECT EXISTS (
        SELECT 1 
        FROM Users 
        WHERE Username = inputUsername AND Password = inputPassword
    ) INTO loginSuccess;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `viewtop20gamesorderedbyname`
--

/*!50001 DROP VIEW IF EXISTS `viewtop20gamesorderedbyname`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtop20gamesorderedbyname` AS select `g`.`GameID` AS `GameID`,`g`.`Name` AS `Name`,`c`.`Name` AS `ConsoleName`,`g`.`ReleaseYear` AS `ReleaseYear`,`d`.`Name` AS `DeveloperName`,(select group_concat(`ge`.`Name` separator ', ') from (`game_genres` `gg` join `genres` `ge` on((`gg`.`GenreID` = `ge`.`GenreID`))) where (`gg`.`GameID` = `g`.`GameID`)) AS `Genres` from ((`games` `g` join `consoles` `c` on((`c`.`ConsoleID` = `g`.`ConsoleID`))) join `developers` `d` on((`d`.`DeveloperID` = `g`.`DeveloperID`))) order by `g`.`Name` limit 20 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 19:53:19
