create database JapaneData
go
use JapaneData
go
Create table [Level]
(
	[N] Char(2) NOT NULL,
Primary Key ([N])
) 
go
Create table [ThemeOfPost]
(
	[IdThemePost] Integer Identity(1,1) NOT NULL,
	[Name] ntext NOT NULL,
	[Detail] ntext NULL,
Primary Key ([IdThemePost])
) 
go
Create table [StudyPost]
(
	[IdStudyPost] Integer Identity(1,1) NOT NULL,
	[Name] ntext NOT NULL,
	[Description] ntext NULL,
	[Date] Date NOT NULL,
	[Img] ntext NULL,
	[Detail] ntext NULL,
	[N] Char(2) NULL foreign key references [Level]([N]) on update cascade,
	[IdThemePost] Integer NULL foreign key references [ThemeOfPost]([IdThemePost]) on update cascade,
Primary Key ([IdStudyPost])
) 
go
Create table [Place]
(
	[IdPlace] Integer Identity(1,1) NOT NULL,
	[CityName] ntext NOT NULL,
	[Detail] ntext NULL,
Primary Key ([IdPlace])
) 
go
Create table [CulturalPost]
(
	[IdCultural] Integer Identity(1,1) NOT NULL,
	[Name] ntext NOT NULL,
	[Description] ntext NULL,
	[Date] Date NOT NULL,
	[Img] ntext NULL,
	[Detail] ntext  NULL,
	[IdPlace] Integer NULL foreign key references [Place]([IdPlace])  on update cascade,
	[IdThemePost] Integer NULL foreign key references [ThemeOfPost]([IdThemePost]) on update cascade,
Primary Key ([IdCultural])
) 
go
Create table [Test]
(
	[IdTest] Integer Identity(1,1) NOT NULL,
	[N] Char(2) NOT NULL foreign key references [Level]([N]) on update cascade, 
	[Name] ntext NOT NULL,
	[Detail] ntext NULL,
Primary Key ([IdTest])
) 
go

Create table [Question]
(
	[IdQuestion] Integer Identity(1,1) NOT NULL,
	[IdTest] Integer NOT NULL foreign key references [Test]([IdTest]) on update cascade, 
	[Name] ntext NOT NULL,
	[Option1] ntext NOT NULL,
	[Option2] ntext NOT NULL,
	[Option3] ntext NOT NULL,
	[Option4] ntext NOT NULL,
	[Answer] ntext NOT NULL,
Primary Key ([IdQuestion])
) 

