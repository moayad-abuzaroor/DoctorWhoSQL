UPDATE tblEpisode
SET Title = CONCAT(Title,'_CANCELED')
WHERE DoctorId IS NULL

select * from tblEpisode
