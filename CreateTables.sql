CREATE TABLE tblEnemy (
	EnemyId int IDENTITY(1,1) PRIMARY KEY,
	EnemyName varchar(100),
	Desciption varchar(max)
);


CREATE TABLE tblDoctor (
	DoctorId int IDENTITY(1,1) PRIMARY KEY,
	DoctorNumber varchar(20),
	DoctorName varchar(50),
	BirthDate DATETIME,
	FirstEpisodeDate DATETIME,
	LastEpisodeDate DATETIME
);

CREATE TABLE tblCompanion (
	CompanionId int IDENTITY(1,1) PRIMARY KEY,
	CompanionName varchar(100),
	WhoPlayed varchar(100)
);

CREATE TABLE tblAuthor (
	AuthorId int IDENTITY(1,1) PRIMARY KEY,
	AuthorName varchar(100),
);

CREATE TABLE tblEpisode (
	EpisodeId int IDENTITY(1,1) PRIMARY KEY,
	SeriesNumber int,
	EpisodeNumber int,
	EpisodeType varchar(100),
	Title varchar(60),
	EpisodeDate DATETIME,
	AuthorId int FOREIGN KEY REFERENCES tblAuthor(AuthorId),
	DoctorId int FOREIGN KEY REFERENCES tblDoctor(DoctorId),
	Notes varchar(max)
);

CREATE TABLE tblEpisodeEnemy (
	EpisodeEnemyId int IDENTITY(1,1) PRIMARY KEY,
	EpisodeId int FOREIGN KEY REFERENCES tblEpisode(EpisodeId),
	EnemyId int FOREIGN KEY REFERENCES tblEnemy(EnemyId)
);

CREATE TABLE tblEpisodeCompanion (
	EpisodeCompanionId int IDENTITY(1,1) PRIMARY KEY,
	EpisodeId int FOREIGN KEY REFERENCES tblEpisode(EpisodeId),
	CompanionId int FOREIGN KEY REFERENCES tblCompanion(CompanionId)
);