CREATE FUNCTION fnCompanions (@episodeId int)
RETURNS TABLE
AS
RETURN 
(
SELECT CompanionName AS CompanionName
FROM tblCompanion
WHERE CompanionId IN (
SELECT CompanionId
FROM tblEpisodeCompanion
WHERE EpisodeId = @episodeId
)
)




--CREATE FUNCTION fnCompanions(@eposideId int)
--RETURNS varchar(100)
--AS
--BEGIN


--DECLARE @name varchar(100)

--DECLARE cur CURSOR FOR
--SELECT CompanionName
--FROM tblCompanion
--WHERE CompanionId IN (
--SELECT CompanionId
--FROM tblEpisodeCompanion
--WHERE EpisodeId = 2
--)

--OPEN cur
--DECLARE @counter int = 1
--FETCH NEXT FROM cur INTO @name;
--WHILE @@FETCH_STATUS = 0
--BEGIN
--PRINT 'Companion Name '+ CAST(@counter AS varchar(100)) + ': ' + @name
--SET @counter += 1
--FETCH NEXT FROM cur INTO @name;
--END
--CLOSE cur;
--DEALLOCATE cur;


--RETURN ''

--END

