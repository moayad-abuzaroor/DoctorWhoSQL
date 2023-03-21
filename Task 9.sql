CREATE PROCEDURE spSummariseEpisodes AS
SELECT TOP 3 CompanionName, COUNT(CompanionName) AS NumberOfAppearence
FROM viewEpisodes
GROUP BY CompanionName
ORDER BY COUNT(CompanionName) DESC
SELECT TOP 3 EnemyName, COUNT(EnemyName) AS NumberOfAppearence
FROM viewEpisodes 
GROUP BY EnemyName
ORDER BY COUNT(EnemyName) DESC
GO

EXEC spSummariseEpisodes