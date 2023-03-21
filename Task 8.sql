CREATE VIEW viewEpisodes AS
SELECT e.EpisodeId, a.AuthorName, d.DoctorName, c.CompanionName, en.EnemyName
FROM tblEpisode e
left join tblAuthor AS a ON a.AuthorId = e.AuthorId
left join tblDoctor AS d ON d.DoctorId = e.DoctorId
left join tblEpisodeCompanion AS ec ON ec.EpisodeId = e.EpisodeId
left join tblCompanion AS c ON c.CompanionId = ec.CompanionId
left join tblEpisodeEnemy AS ee ON ee.EpisodeId = e.EpisodeId
left join tblEnemy AS en ON en.EnemyId = ee.EnemyId
