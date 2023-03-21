CREATE FUNCTION fnEnemies (@episodeId int)
RETURNS TABLE
AS
RETURN 
(
SELECT EnemyName AS EnemyName
FROM tblEnemy
WHERE EnemyId IN (
SELECT EnemyId
FROM tblEpisodeEnemy
WHERE EpisodeId = 5
)
)