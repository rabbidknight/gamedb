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
/*!50001 VIEW `getrandomhighratedgames` AS select `g`.`GameID` AS `GameID`,`g`.`Name` AS `Name`,`g`.`ReleaseYear` AS `ReleaseYear`,`d`.`Name` AS `DeveloperName`,(select group_concat(`c`.`Name` separator ', ') from (`gameplatforms` `gp` join `consoles` `c` on((`gp`.`ConsoleID` = `c`.`ConsoleID`))) where (`gp`.`GameID` = `g`.`GameID`)) AS `ConsoleName`,(select group_concat(`ge`.`Name` separator ', ') from (`game_genres` `gg` join `genres` `ge` on((`gg`.`GenreID` = `ge`.`GenreID`))) where (`gg`.`GameID` = `g`.`GameID`)) AS `Genres`,`g`.`Image` AS `ImageURL`,`g`.`Rating` AS `Rating`,`g`.`Description` AS `Description` from (`games` `g` join `developers` `d` on((`d`.`DeveloperID` = `g`.`DeveloperID`))) where (`g`.`Rating` > 5) order by rand() limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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

--
-- Dumping routines for database 'gamedb_main'
--
/*!50003 DROP PROCEDURE IF EXISTS `addgametolist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addgametolist`(
    IN userName VARCHAR(255), 
    IN gameName VARCHAR(255), 
    IN listName VARCHAR(255))
BEGIN
    DECLARE curuserID, curgameID INT;
    DECLARE exists_count INT;

    -- Fetch the UserID for the given username
    SELECT u.UserID
    INTO curuserID
    FROM users u
    WHERE u.Username = userName;
    
    -- Fetch the GameID for the given game name
    SELECT g.GameID
    INTO curgameID
    FROM games g
    WHERE g.Name = gameName;
    
    -- Check if the game is already in the list for this user
    SELECT COUNT(*)
    INTO exists_count
    FROM userlists us
    WHERE us.UserID = curuserID AND us.GameID = curgameID AND us.ListName = listName;

    -- Insert the game into the list only if it's not already added
    IF exists_count = 0 THEN
        INSERT INTO userlists (GameID, UserID, ListName)
        VALUES (curgameID, curuserID, listName);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addrating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addrating`(IN inputUsername VARCHAR(255), IN gameName VARCHAR(255), IN inputRating DECIMAL(3,1))
BEGIN
		DECLARE curuserID, curgameID INT;
		SELECT u.UserID
        INTO curuserID
        FROM users u
        WHERE u.Username = userName
        LIMIT 1;
        
        SELECT g.GameID
        INTO curgameID
        FROM games g
        WHERE g.Name = gameName
        LIMIT 1;
        
        IF curuserID IS NOT NULL and curgameID IS NOT NULL
        THEN 
			IF EXISTS (SELECT * FROM ratings r WHERE r.UserID = curuserID and r.gameID = curgameID)
			THEN UPDATE ratings re SET re.rating = inputRating WHERE re.UserID = curuserID and re.gameID = curgameID;
            ELSE INSERT INTO ratings (UserID, GameID, rating) VALUES (curuserID, curgameID, inputRating);
            END IF;
            UPDATE games g SET g.Rating = (SELECT AVG(r.Rating) FROM ratings r GROUP BY r.GameID HAVING r.GameID = curgameID) WHERE g.GameID = curgameID;
        END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_rating`(IN inputUsername VARCHAR(255), IN gameName VARCHAR(255), IN inputRating VARCHAR(255))
BEGIN
		DECLARE curuserID, curgameID INT;
		SELECT u.UserID
        INTO curuserID
        FROM users u
        WHERE u.Username = userName;
        
        SELECT g.GameID
        INTO curgameID
        FROM games g
        WHERE g.Name = gameName;
        
        IF userName IS NOT NULL and gameName IS NOT NULL
        THEN 
			IF EXISTS (SELECT * FROM ratings r WHERE r.UserID = curuserID and r.gameID = curgameID)
			THEN UPDATE ratings re SET ratings = inputRating WHERE re.UserID = curuserID and re.gameID = curgameID;
            ELSE INSERT INTO ratings (UserID, GameID, rating) VALUES (curuserID, curgameID, inputRating);
            END IF;
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
/*!50003 DROP PROCEDURE IF EXISTS `GetGamesByRecommendation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetGamesByRecommendation`(IN username VARCHAR(255))
BEGIN
     SELECT 
        `g`.`GameID` AS `GameID`,
        `g`.`Name` AS `Name`,
        `g`.`ReleaseYear` AS `ReleaseYear`,
        `d`.`Name` AS `DeveloperName`,
        (SELECT 
                GROUP_CONCAT(`c`.`Name`
                        SEPARATOR ', ')
            FROM
                (`gamedb_main`.`gameplatforms` `gp`
                JOIN `gamedb_main`.`consoles` `c` ON ((`gp`.`ConsoleID` = `c`.`ConsoleID`)))
            WHERE
                (`gp`.`GameID` = `g`.`GameID`)) AS `ConsoleName`,
        (SELECT 
                GROUP_CONCAT(`ge`.`Name`
                        SEPARATOR ', ')
            FROM
                (`gamedb_main`.`game_genres` `gg`
                JOIN `gamedb_main`.`genres` `ge` ON ((`gg`.`GenreID` = `ge`.`GenreID`)))
            WHERE
                (`gg`.`GameID` = `g`.`GameID`)) AS `Genres`,
        `g`.`Image` AS `ImageURL`,
        `g`.`Rating` AS `Rating`,
        `g`.`Description` AS `Description`
    FROM
        (`gamedb_main`.`games` `g`
        JOIN `gamedb_main`.`developers` `d` ON ((`d`.`DeveloperID` = `g`.`DeveloperID`)))
        JOIN game_genres gg ON gg.GameID = g.GameID
    WHERE
        (`g`.`Rating` > 5) AND gg.GenreID IN (SELECT DISTINCT gg1.GenreID
									FROM game_genres gg1
									JOIN userlists ul ON ul.GameID = gg1.GameID
                                    JOIN users us ON ul.UserID = us.UserID
									WHERE us.Username = username)
    ORDER BY RAND()
    LIMIT 5;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRandomGOTYGames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRandomGOTYGames`()
BEGIN
    SELECT GameID, Name, Image, ReleaseYear
    FROM Games
    WHERE goty = 1
    ORDER BY RAND()
    LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRandomHighRatedGames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRandomHighRatedGames`(IN username VARCHAR(255))
BEGIN
     SELECT 
        `g`.`GameID` AS `GameID`,
        `g`.`Name` AS `Name`,
        `g`.`ReleaseYear` AS `ReleaseYear`,
        `d`.`Name` AS `DeveloperName`,
        (SELECT 
                GROUP_CONCAT(`c`.`Name`
                        SEPARATOR ', ')
            FROM
                (`gamedb_main`.`gameplatforms` `gp`
                JOIN `gamedb_main`.`consoles` `c` ON ((`gp`.`ConsoleID` = `c`.`ConsoleID`)))
            WHERE
                (`gp`.`GameID` = `g`.`GameID`)) AS `ConsoleName`,
        (SELECT 
                GROUP_CONCAT(`ge`.`Name`
                        SEPARATOR ', ')
            FROM
                (`gamedb_main`.`game_genres` `gg`
                JOIN `gamedb_main`.`genres` `ge` ON ((`gg`.`GenreID` = `ge`.`GenreID`)))
            WHERE
                (`gg`.`GameID` = `g`.`GameID`)) AS `Genres`,
        `g`.`Image` AS `ImageURL`,
        `g`.`Rating` AS `Rating`,
        `g`.`Description` AS `Description`
    FROM
        (`gamedb_main`.`games` `g`
        JOIN `gamedb_main`.`developers` `d` ON ((`d`.`DeveloperID` = `g`.`DeveloperID`)))
        JOIN game_genres gg ON gg.GameID = g.GameID
    WHERE
        (`g`.`Rating` > 5) AND gg.GenreID IN (SELECT DISTINCT gg1.GenreID
									FROM game_genres gg1
									JOIN userlists ul ON ul.GameID = gg1.GameID
                                    JOIN users us ON ul.UserID = us.UserID
									WHERE us.Username = username)
    ORDER BY RAND()
    LIMIT 5;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserfromusername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getuserfromusername`(IN inputUsername VARCHAR(255))
BEGIN
    SELECT *
	FROM users 
	WHERE Username = inputUsername;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getuserlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getuserlist`(IN userName VARCHAR(255))
BEGIN
        SELECT g.GameID , l.ListName, g.Name, (
						SELECT GROUP_CONCAT(c.Name SEPARATOR ', ')
						FROM gameplatforms gp 
                        INNER JOIN consoles c ON gp.ConsoleID = c.ConsoleID
                        WHERE gp.GameID = g.GameID
					)  AS ConsoleName, g.ReleaseYear, d.Name as DeveloperName, (
						SELECT GROUP_CONCAT(ge.Name SEPARATOR ', ')
						FROM game_genres gg 
                        INNER JOIN genres ge ON gg.GenreID = ge.GenreID
                        WHERE gg.GameID = g.GameID
					) as Genres,  g.Image as 'ImageURL',
                    g.Rating AS Rating,
					g.Description AS Description
        FROM userlists l
        INNER JOIN games g ON g.GameID = l.GameID
        INNER JOIN developers d ON d.DeveloperID = g.DeveloperID
        
        WHERE l.UserID IN (SELECT u.UserID
        FROM users u
        WHERE u.Username = userName)
        ORDER BY l.ListName;
        
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RateGame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RateGame`(IN inputGameID INT, IN inputRating INT)
BEGIN
    -- Update the rating for the specified game
    UPDATE Games
    SET Rating = inputRating
    WHERE GameID = inputGameID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removegamefromlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removegamefromlist`(
    IN userName VARCHAR(255),
    IN gameName VARCHAR(255),
    IN listName VARCHAR(255))
BEGIN
    DECLARE curuserID, curgameID INT;

    -- Fetch the UserID for the given username
    SELECT u.UserID
    INTO curuserID
    FROM users u
    WHERE u.Username = userName;
    
    -- Fetch the GameID for the given game name
    SELECT g.GameID
    INTO curgameID
    FROM games g
    WHERE g.Name = gameName;
    
    -- Delete the game from the user's list
    DELETE FROM userlists us
    WHERE UserID = curuserID
    AND GameID = curgameID
    AND us.ListName = listName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchGame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchGame`(IN gameName VARCHAR(255))
BEGIN
	SELECT g.GameID , g.Name, g.ReleaseYear, d.Name as DeveloperName, (SELECT GROUP_CONCAT(c.Name SEPARATOR ', ')
						FROM gameplatforms gp 
                        INNER JOIN consoles c ON gp.ConsoleID = c.ConsoleID
                        WHERE gp.GameID = g.GameID
					)  AS ConsoleName, (SELECT GROUP_CONCAT(ge.Name SEPARATOR ', ')
						FROM game_genres gg 
                        INNER JOIN genres ge ON gg.GenreID = ge.GenreID
                        WHERE gg.GameID = g.GameID
					) as Genres, g.Image as 'ImageURL',
                    g.Rating AS Rating,
					g.Description AS Description
	FROM games g
	INNER JOIN developers d ON d.DeveloperID = g.DeveloperID
	WHERE lower(g.Name) LIKE lower(CONCAT("%",gameName, "%"))
    LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchGameOne` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchGameOne`(IN gameName VARCHAR(255))
BEGIN
	SELECT g.GameID , g.Name, g.ReleaseYear, d.Name as DeveloperName, (SELECT GROUP_CONCAT(c.Name SEPARATOR ', ')
						FROM gameplatforms gp 
                        INNER JOIN consoles c ON gp.ConsoleID = c.ConsoleID
                        WHERE gp.GameID = g.GameID
					)  AS ConsoleName, (SELECT GROUP_CONCAT(ge.Name SEPARATOR ', ')
						FROM game_genres gg 
                        INNER JOIN genres ge ON gg.GenreID = ge.GenreID
                        WHERE gg.GameID = g.GameID
					) as Genres, g.Image as 'ImageURL',
                    g.Rating AS Rating,
					g.Description AS Description
	FROM games g
	INNER JOIN developers d ON d.DeveloperID = g.DeveloperID
	WHERE g.Name = gameName
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewGame` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewGame`(IN inputGameID INT)
BEGIN
    SELECT g.GameID, g.Name, c.Name AS Console, g.ReleaseYear, d.Name AS Developer, g.List, g.Image, g.Rating
    FROM Games g
    LEFT JOIN Consoles c ON g.ConsoleID = c.ConsoleID
    LEFT JOIN Developers d ON g.DeveloperID = d.DeveloperID
    WHERE g.GameID = inputGameID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewList`(IN inputListID INT)
BEGIN
    -- Select all games that have the inputListID in their List column
    SELECT g.Name, g.Image
    FROM Games g
    WHERE FIND_IN_SET(inputListID, g.List) > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27  1:19:47
