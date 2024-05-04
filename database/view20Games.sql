USE gamedb_main;
CREATE VIEW viewTop20GamesOrderedByName AS
SELECT g.GameID ,g.Name, c.Name as ConsoleName, g.ReleaseYear, d.Name as DeveloperName, ( 	
						SELECT GROUP_CONCAT(ge.Name SEPARATOR ', ')
						FROM game_genres gg 
                        INNER JOIN genres ge ON gg.GenreID = ge.GenreID
                        WHERE gg.GameID = g.GameID
					) as Genres
    FROM 
		games g 
        INNER JOIN consoles c ON c.ConsoleID = g.ConsoleID
        INNER JOIN developers d ON d.DeveloperID = g.DeveloperID
	ORDER BY g.Name
	LIMIT 20;