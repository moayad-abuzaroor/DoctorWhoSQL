DELETE FROM tblCompanion
WHERE CompanionId not in (SELECT CompanionId FROM tblEpisodeCompanion)
