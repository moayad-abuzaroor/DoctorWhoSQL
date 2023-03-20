INSERT INTO tblDoctor (DoctorId,
                       DoctorNumber,
					   DoctorName,
					   BirthDate,
					   FirstEpisodeDate,
					   LastEpisodeDate)

VALUES ('First Doctor', 1, 'William Hartnell', CAST('1908-01-08' AS Date), CAST('1963-10-29' AS DATE), CAST('1966-10-29' AS DATE)),
	   ('Second Doctor', 2, 'Patrick Troughton', CAST('1920-03-25' AS Date), CAST('1966-11-05' AS DATE), CAST('1969-06-21' AS DATE)),
       ('Third Doctor', 3, 'Jon Pertwee', CAST('1919-07-07' AS Date), CAST('1970-01-02' AS DATE), CAST('1974-06-08' AS DATE)),
	   ('Fourth Doctor', 4, 'Tom Baker', CAST('1934-01-20' AS Date), CAST('1974-12-28' AS DATE), CAST('1981-03-21' AS DATE)),
	   ('Fifth Doctor', 5, 'Jodie Whittaker', CAST('1982-06-17' AS Date), CAST('2018-10-07' AS DATE), DEFAULT);


