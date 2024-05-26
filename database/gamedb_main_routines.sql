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
-- Temporary view structure for view `getrandomgotygames`
--

DROP TABLE IF EXISTS `getrandomgotygames`;
/*!50001 DROP VIEW IF EXISTS `getrandomgotygames`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getrandomgotygames` AS SELECT 
 1 AS `GameID`,
 1 AS `Name`,
 1 AS `ReleaseYear`,
 1 AS `DeveloperName`,
 1 AS `ConsoleName`,
 1 AS `Genres`,
 1 AS `ImageURL`,
 1 AS `Rating`,
 1 AS `Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `getrandomhighratedgames`
--

DROP TABLE IF EXISTS `getrandomhighratedgames`;
/*!50001 DROP VIEW IF EXISTS `getrandomhighratedgames`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getrandomhighratedgames` AS SELECT 
 1 AS `GameID`,
 1 AS `Name`,
 1 AS `ReleaseYear`,
 1 AS `DeveloperName`,
 1 AS `ConsoleName`,
 1 AS `Genres`,
 1 AS `ImageURL`,
 1 AS `Rating`,
 1 AS `Description`*/;
SET character_set_client = @saved_cs_client;

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
 1 AS `Genres`,
 1 AS `ImageURL`,
 1 AS `Rating`,
 1 AS `Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `getrandomgotygames`
--

/*!50001 DROP VIEW IF EXISTS `getrandomgotygames`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getrandomgotygames` AS select `g`.`GameID` AS `GameID`,`g`.`Name` AS `Name`,`g`.`ReleaseYear` AS `ReleaseYear`,`d`.`Name` AS `DeveloperName`,(select group_concat(`c`.`Name` separator ', ') from (`gameplatforms` `gp` join `consoles` `c` on((`gp`.`ConsoleID` = `c`.`ConsoleID`))) where (`gp`.`GameID` = `g`.`GameID`)) AS `ConsoleName`,(select group_concat(`ge`.`Name` separator ', ') from (`game_genres` `gg` join `genres` `ge` on((`gg`.`GenreID` = `ge`.`GenreID`))) where (`gg`.`GameID` = `g`.`GameID`)) AS `Genres`,`g`.`Image` AS `ImageURL`,`g`.`Rating` AS `Rating`,`g`.`Description` AS `Description` from (`games` `g` join `developers` `d` on((`d`.`DeveloperID` = `g`.`DeveloperID`))) where (`g`.`goty` = 1) order by rand() limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `getrandomhighratedgames`
--

/*!50001 DROP VIEW IF EXISTS `getrandomhighratedgames`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getrandomhighratedgames` AS select `g`.`GameID` AS `GameID`,`g`.`Name` AS `Name`,`g`.`ReleaseYear` AS `ReleaseYear`,`d`.`Name` AS `DeveloperName`,(select group_concat(`c`.`Name` separator ', ') from (`gameplatforms` `gp` join `consoles` `c` on((`gp`.`ConsoleID` = `c`.`ConsoleID`))) where (`gp`.`GameID` = `g`.`GameID`)) AS `ConsoleName`,(select group_concat(`ge`.`Name` separator ', ') from (`game_genres` `gg` join `genres` `ge` on((`gg`.`GenreID` = `ge`.`GenreID`))) where (`gg`.`GameID` = `g`.`GameID`)) AS `Genres`,`g`.`Image` AS `ImageURL`,`g`.`Rating` AS `Rating`,`g`.`Description` AS `Description` from (`games` `g` join `developers` `d` on((`d`.`DeveloperID` = `g`.`DeveloperID`))) where (`g`.`Rating` > 5) order by rand() limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewtop20gamesorderedbyname`
--

/*!50001 DROP VIEW IF EXISTS `viewtop20gamesorderedbyname`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtop20gamesorderedbyname` AS select `g`.`GameID` AS `GameID`,`g`.`Name` AS `Name`,group_concat(distinct `c`.`Name` order by `c`.`Name` ASC separator ', ') AS `ConsoleName`,`g`.`ReleaseYear` AS `ReleaseYear`,`d`.`Name` AS `DeveloperName`,(select group_concat(distinct `ge`.`Name` order by `ge`.`Name` ASC separator ', ') from (`game_genres` `gg` join `genres` `ge` on((`gg`.`GenreID` = `ge`.`GenreID`))) where (`gg`.`GameID` = `g`.`GameID`)) AS `Genres`,`g`.`Image` AS `ImageURL`,`g`.`Rating` AS `Rating`,`g`.`Description` AS `Description` from (((`games` `g` join `developers` `d` on((`d`.`DeveloperID` = `g`.`DeveloperID`))) join `gameplatforms` `gp` on((`gp`.`GameID` = `g`.`GameID`))) join `consoles` `c` on((`c`.`ConsoleID` = `gp`.`ConsoleID`))) group by `g`.`GameID` order by `g`.`Name` limit 20 */;
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

-- Dump completed on 2024-05-27  1:06:51
