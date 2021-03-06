USE [master]
GO
/****** Object:  Database [JapaneData]    Script Date: 6/17/2019 11:39:59 PM ******/
CREATE DATABASE [JapaneData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JapaneData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JapaneData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JapaneData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\JapaneData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JapaneData] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JapaneData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JapaneData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JapaneData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JapaneData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JapaneData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JapaneData] SET ARITHABORT OFF 
GO
ALTER DATABASE [JapaneData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JapaneData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JapaneData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JapaneData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JapaneData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JapaneData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JapaneData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JapaneData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JapaneData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JapaneData] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JapaneData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JapaneData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JapaneData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JapaneData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JapaneData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JapaneData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JapaneData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JapaneData] SET RECOVERY FULL 
GO
ALTER DATABASE [JapaneData] SET  MULTI_USER 
GO
ALTER DATABASE [JapaneData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JapaneData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JapaneData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JapaneData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JapaneData] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'JapaneData', N'ON'
GO
ALTER DATABASE [JapaneData] SET QUERY_STORE = OFF
GO
USE [JapaneData]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CulturalPost]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CulturalPost](
	[IdCultural] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[Description] [ntext] NULL,
	[Date] [date] NOT NULL,
	[Img] [ntext] NULL,
	[Detail] [ntext] NULL,
	[IdPlace] [int] NULL,
	[IdThemePost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCultural] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[N] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[IdPlace] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [ntext] NOT NULL,
	[Detail] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPlace] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[IdQuestion] [int] IDENTITY(1,1) NOT NULL,
	[IdTest] [int] NOT NULL,
	[Name] [ntext] NOT NULL,
	[Option1] [ntext] NOT NULL,
	[Option2] [ntext] NOT NULL,
	[Option3] [ntext] NOT NULL,
	[Option4] [ntext] NOT NULL,
	[Answer] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudyPost]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyPost](
	[IdStudyPost] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[Description] [ntext] NULL,
	[Date] [date] NOT NULL,
	[Img] [ntext] NULL,
	[Detail] [ntext] NULL,
	[N] [char](2) NULL,
	[IdThemePost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdStudyPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[IdTest] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[N] [char](2) NOT NULL,
	[Detail] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThemeOfPost]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeOfPost](
	[IdThemePost] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NOT NULL,
	[Detail] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdThemePost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volcabulary]    Script Date: 6/17/2019 11:39:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volcabulary](
	[IdVol] [int] IDENTITY(1,1) NOT NULL,
	[Kanji] [ntext] NOT NULL,
	[Furigana] [ntext] NULL,
	[Meaning] [ntext] NOT NULL,
	[N] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201906090238207_InitialCreate', N'JapaneWebsite.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F20FF20E82959382D5F760613A33B81A76D27DEF50DD37692B7015B62B785912845A41C1B8B7CD93EEC27ED2F2CA93B6F12D5ADBE7810207093C553C56215592C15E77FFFF9EFF8A79730B09E6182FD084DECA3D1A16D41E4469E8F96133B258BEF3FD83FFDF8CDDFC6175EF862FD5AD29D303A3A12E189FD44487CEA38D87D8221C0A3D0779308470B3272A3D0015EE41C1F1EFEE01C1D399042D814CBB2C69F5244FC10663FE8CF69845C18931404379107035CB4D39E59866ADD8210E218B87062FF13C400C1DFE01CFB048E727ADB3A0B7C406599C160615B00A1880042253D7DC4704692082D67316D00C1C36B0C29DD020418163338ADC94D277378CC26E3D4034B2837C5240A7B021E9D14DA71C4E12BE9D8AEB447F57741F54C5ED9AC331D4EEC2B0F664D9FA2802A4064783A0D12463CB16F2A166738BE8564540E1CE590970985FB334ABE8C9A880796F1B883CA9A8E4787ECBF036B9A06244DE004C194242038B0EED379E0BBFF82AF0FD11788262747F3C5C98777EF8177F2FE1FF0E45D73A674AE948E6BA04DF74914C384CA0617D5FC6DCBE1C739E2C06A58634CAE156A4BD4316CEB06BC5C43B4244FD4658E3FD8D6A5FF02BDB2A530AE47E4533FA2834892D29FB76910807900AB7EA79527FB7F0BD7E377EF07E17A0B9EFD65B6F4027FEA3809F5AB4F30C87AF1931FE7EEC5ADF7E782EC328942F69BB7AFBCF7F32C4A13974D26D2923C806409092FDDD8A98DD7C8A419D4F0665DA2EEBF69334965F35692B209ADE209258B6D7B4329EF66F91A5BDC591CD3C5CB4C8B69A4CDE054C7D548187F607154B5F91C999A0FA2D3FA9A77C34B3FC1A4634BA47F1AB16EE7740DB6C4E822047E30C00E6FC08586570B3F0961B5701F23EA4F00F55E867B8031DDE0BC5F007EDAB88266D04D13EA773302C278E3DCEE9F22046FD370CEDC797BBC065B9A873FA34BE09228B9406CD4DA78D791FB254AC905F2CE01818FC42D01D9CF073F340718449C33D785185F526386DE34A2B78712F00A9193E3DE706CD7DD7584350D801FAA432CE17CF85C92D661969A420AB53464AA70AB4DD4EB68E92333514B52BDA83945A7A805595F51199899A405A55ED08CA053CE9C6AB000365BA1E123D80C76FF43D8F5E211DD5ED050E38CEE90F067886042B731EF1E10021354AF80C9BEB18BF8275B3EC674E36753C6E95710A443B35AC91BB24D60786FC860F7DF1B323169F3B3EFB1A8C4E05E57125378237AF595B1DBE704C9B6ED0EDC34B7CD7C3B7B80CE5DCE308E5C3FF3024546AFC8C7F0F2D318CEEA4ECEE4B311133C7462D4D07D76E4D1163A375B34AA3B740E0348A075E6E619CF29C02EF06435D209793D042B4F54856075A28717EEEF124F6AE930618300BB0461EAA93E22B25BF8C8F56310746A4918697884B1B9573CC49E731843C418766AC284B93AAFC304A8F8088BD2A5A1B1D3B0B87643D444ADBA35EF0A61EB7597D22D5BB1C98ED859639745FCB611C36CD7D8168CB35D252602687394BB30D0E2AE626A00E2C565DF0C54B831690CB408A9B662A0BCC67660A0BC4ADE9C81E65754D3F517EEABFB669EFC4579FBC77AABBA76609B9C3EF6CC34F3D8938E2174044C64F33C9FB34EF8421497332A67713FC345A82B9A08039F41C2A76CEA785719873AED20A211B501D686D6015A7CDD94802487EA215C99CB6B95AE88227AC09679B756D862EF17601B36206337BFF23608F5DF8245E334BA7D5433ABAC413272A3CB4203476110E2E6C54FDC4029BABCACAC189358B84F34DC9858B1182D0AEA885C354A2A2733B8964AD3ECD6922A20EB1392ADA525217CD268A99CCCE05A2A6CB45B498AA0A04758B0968AF8237C20672B331DD56953F58D9DBCFCAB68183B9A3AB1F10D88631F2D1B7563458B35CB8BC6A6DFCFFAD752853986E362454955256DC58944095842A197B2A692669FAFCF010173C0F23C532F94C89467AB66FB2F59368F4F7911CB73A0A4667FE723943509DC692B872305CA259D63C8629A2C91AEB000F5708B55F28100248ADCFD340AD210E9432CFDE8FC0B5E737CDE22238C1D417E298492F42505BABCF28D9646768BC196A98A61565F2A3D844EE16504DA54B92E2AD5A39449AA268A2E71B5B3A5D305333D974B8C14FBAF5627C2667CAB5171D30469349B63D535354DA8BAD51CA9289A69C2144D3D311A75171258A3CF1C952F8D6962F23DE68842FD4B1352E8EA2165B3CA8513B2D9B1129E46A36A0A730E725D4B135DEEED619572850B679E72F70AD80A99C53E735445114C1358D16D8E5D57C4889BFB1E9FA9DA5BD51A876A7EF55EEF54D5606C66A71EE6506E541834811ACD3DB18A1A0209AC68DF4B7BD2DE3FD7B0A73CE7B29E3D6930F4BB0FF7759EDF7C5A4B0AF498DC27776E836F2B39D0E3F5B3DA8DDA86740115492AEED54554B8708E8BCB5FF7EB25E9369893D856A9467AB8BF6202C3112318CDFE08A6810FD9565E12DC00E42F20267999897D7C78742C3C7FDA9FA7480EC65EA0B83CEBDE23F16BB6858A31F40C12F7092472FDC61ACF756A5029357E853CF832B1FF9D8D3ACDB22CECAFACF9C0BAC28FC8FF23A51D0F490AADBFE47AD4619E2F183C98A904FDEB4DBC443157F9D5EF9FF3A107D65D42DDE9D43A1414BDCAF2F3EF537A49930F5D439A955FADBC5D6F939E8394C8DF86E0E5BB26DC2A4F3ED602E39E7528272C38F2EAAF38E63E19E405C75AF355BED2580B51F1126328BC4154A87B69B10A96F69585477F92EC95454F5B56BEBA584534ED8B0B1FF50713DF5B98EF90E5C81D1E918ADBDC3676CB4CCF9DF5EA6B15AFEEFAD894CADAD77274B974BD07DCA0E5E9EB454F6FACEC7BB0535D51D53D18F62EED7EE3A5DCFB52BD5DDF27765BB4BDCD3AED96EF705F5579F61E14142A0AA4765F84BD6D5BD3A5A7F7BC92B55FA9F59E195B71CCEFBEA07ADBC6A6CB5DEFB9B1F52A9BDE335BDBD5F9B9634B333E42775E042DD773693E33A912DC5D45CEF9D7007AFD9F47D408F288327F9BAAAEAA6BAB08EE605893E899EACBF944C692E3487C258A76B6FDE65A1CF8AD932D68DAD96A8A60DB7817FB7F2BEF82A69DB7A6B47417E5D9CAE24E55C97CC73ED65675F696CAB1B9997454FF77C5ACAD35036FA9FA7A10A570DEA3F9F0FD768AAD0751C990AED3A3B85AFE864DCFCEC6BFD349CF6FEC2F6B08F6AF7622E872A766457385165179780B1295244286E60612E0D123F52C21FE02B88476B30474F6B83E4BEAB1CF2073E85DA1BB94C429A15386E13CE0125E2C0868E39F5590F3328FEF62F60B0F31052AA6CF12F777E863EA075E25F7A52227A48160D14591EE656B4958DA77F95A21DD46C810A8505F15143DC0300E2818BE4333F00C57918D9ADF355C02F7B5CE00EA40BA178257FBF8DC07CB0484B8C0A8C7D39FD486BDF0E5C7FF03B4EEF436AE560000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd449428f-ff09-4ba7-9096-6c1a7beb8fb9', N'ADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0e35e691-1baf-4a99-8168-c40f8407789a', N'MANAGER')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7c3da9f5-de19-49ca-9870-b5250ac71b1e', N'MEMBER')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e7da1661-0fb3-4f4e-b763-2435fe4dd92e', N'0e35e691-1baf-4a99-8168-c40f8407789a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7fa42f98-6d89-4315-a521-3e5f255fbd95', N'd449428f-ff09-4ba7-9096-6c1a7beb8fb9')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7fa42f98-6d89-4315-a521-3e5f255fbd95', N'Admin', N'Position', N'admin@tkt.com', 0, N'AN0iU+67tV++CU7oXReQCG9B6PiVMge6oAfyFNqbpKzAAIghq/VuaFH07VqlrYpjkA==', N'f4c15999-911b-4b32-8b0b-c6a103038d7d', NULL, 0, 0, NULL, 0, 0, N'admin@tkt.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e7da1661-0fb3-4f4e-b763-2435fe4dd92e', N'Manager', N'Position', N'manager@tkt.com', 0, N'AMYTWSEbQ1MEDR8cCEs1vJd3/aACkHDftpo0pP+/ZTXu82lLQ5hBKMXyzF4FMIfHNw==', N'fe94be7f-2d4a-4cc4-835c-24f646768ba5', NULL, 0, 0, NULL, 0, 0, N'manager@tkt.com')
SET IDENTITY_INSERT [dbo].[CulturalPost] ON 

INSERT [dbo].[CulturalPost] ([IdCultural], [Name], [Description], [Date], [Img], [Detail], [IdPlace], [IdThemePost]) VALUES (1, N'24 lễ hội Nhật Bản đặc sắc ', N'Cùng khám phá những lễ hội đặc sắc suốt bốn mùa trong năm tại Nhật qua bộ lịch lễ hội Nhật Bản này nhé! Bạn sẽ chọn lễ hội nào cho chuyến hành trình của mình?', CAST(N'2019-05-29' AS Date), N'/ckfinder/userfiles/images/vanhoa.jpg', N'<p><img alt="" src="/ckfinder/userfiles/images/tonghopcaclehoi.jpg" style="height:878px; width:800px" /></p>
', 1, 3)
SET IDENTITY_INSERT [dbo].[CulturalPost] OFF
INSERT [dbo].[Level] ([N]) VALUES (N'N1')
INSERT [dbo].[Level] ([N]) VALUES (N'N2')
INSERT [dbo].[Level] ([N]) VALUES (N'N3')
INSERT [dbo].[Level] ([N]) VALUES (N'N4')
INSERT [dbo].[Level] ([N]) VALUES (N'N5')
INSERT [dbo].[Level] ([N]) VALUES (N'NT')
SET IDENTITY_INSERT [dbo].[Place] ON 

INSERT [dbo].[Place] ([IdPlace], [CityName], [Detail]) VALUES (1, N'All city', N'Around Japan')
SET IDENTITY_INSERT [dbo].[Place] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([IdQuestion], [IdTest], [Name], [Option1], [Option2], [Option3], [Option4], [Answer]) VALUES (1, 1, N'研究', N'げんきゅう', N'けんきゅ', N'けんきゅう', N'げんきゅ', N'けんきゅう')
INSERT [dbo].[Question] ([IdQuestion], [IdTest], [Name], [Option1], [Option2], [Option3], [Option4], [Answer]) VALUES (2, 1, N'親しい', N'したしい', N'くやしい', N'けわしい', N'くわしい', N'したしい')
INSERT [dbo].[Question] ([IdQuestion], [IdTest], [Name], [Option1], [Option2], [Option3], [Option4], [Answer]) VALUES (3, 1, N'血圧', N'ちど', N'けつど', N'けつあつ', N'ちあつ', N'けつあつ')
INSERT [dbo].[Question] ([IdQuestion], [IdTest], [Name], [Option1], [Option2], [Option3], [Option4], [Answer]) VALUES (4, 1, N'漢字', N'かんじ', N'じかん', N'がんじ', N'がんし', N'かんじ')
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[StudyPost] ON 

INSERT [dbo].[StudyPost] ([IdStudyPost], [Name], [Description], [Date], [Img], [Detail], [N], [IdThemePost]) VALUES (2, N'[Ngữ pháp N3] ～ないと、～なくちゃ', N'「～ないと」 là thể ngắn của 「～ないといけない」 và 「～なくちゃ」 là thể ngắn của 「～なければならない」mà chúng ta đã học ở trình độ N5. ', CAST(N'2019-05-28' AS Date), N'/ckfinder/userfiles/images/n3.png', N'<p>Hai mẫu c&acirc;u r&uacute;t gọn n&agrave;y thường được d&ugrave;ng trong hội thoại h&agrave;ng ng&agrave;y.</p>

<p>①　明日は早く出かけるから、もう<strong>寝(ね)ないと</strong>。<br />
&rarr;　T&ocirc;i phải ngủ th&ocirc;i v&igrave; mai sẽ ra ngo&agrave;i sớm.</p>

<p>②　試験（しけん）まであと１ヵ月だ。がんばって<strong>勉強しないと</strong>。<br />
&rarr;　Chỉ c&ograve;n một th&aacute;ng nữa l&agrave; đến kỳ th&igrave; rồi. Phải cố gắng học th&ocirc;i.</p>

<p>③　田中さんにメールの返事を<strong>しなくちゃ</strong>。<br />
&rarr;　T&ocirc;i phải trả lời mail cho anh Tanaka.</p>

<p>④　明日までに先生にレポートを<strong>ださなくちゃ</strong>。</p>

<p>&rarr;　T&ocirc;i phải nộp b&aacute;o c&aacute;o cho thầy gi&aacute;o trước ng&agrave;y mai.</p>
', N'N3', 1)
INSERT [dbo].[StudyPost] ([IdStudyPost], [Name], [Description], [Date], [Img], [Detail], [N], [IdThemePost]) VALUES (4, N'[Ngữ pháp N3] ～ちゃう', N'「ちゃう」 là dạng ít trang trọng hơn của 「てしまう」, được sử dụng trong hội thoại hàng ngày.', CAST(N'2019-05-29' AS Date), N'/ckfinder/userfiles/images/n3.png', N'<p><strong>C&aacute;ch chia:</strong></p>

<ul>
	<li>～てしまう　&rarr;　～ちゃう</li>
	<li>～でしまう　&rarr;　～じゃう</li>
	<li>～てしまった　&rarr;　～ちゃった</li>
	<li>～でしまった　&rarr;　～じゃった</li>
	<li>～てしましょう　&rarr;　～ちゃおう</li>
</ul>

<p><strong>V&iacute; dụ:</strong></p>

<ul>
	<li>してしまう/ してしまった　&rarr;　しちゃう/ しちゃた</li>
	<li>来てしまう/ 来てしまった　&rarr;　来ちゃう/ 来ちゃった</li>
	<li>帰ってしまう/ 帰ってしまった　&rarr;　帰っちゃう/ 帰っちゃた</li>
	<li>死んでしまう/ 死んでしまった　&rarr;　死んじゃう/ 死んじゃった</li>
</ul>

<p><strong>C&acirc;u v&iacute; dụ:</strong></p>

<p>①　宿題をしてしまいました　&rarr;　　宿題を<strong>しちゃった</strong><br />
&rarr;　Đ&atilde; l&agrave;m xong hết b&agrave;i tập rồi</p>

<p>②　ビールを飲んでしまった　&rarr;　ビールを<strong>飲んじゃった</strong><br />
&rarr;　Uống hết bia mất rồi.</p>

<p>③　「あれ？ここにあったチョコレートは？」ー　「あ、<strong>食べちゃった</strong>。いけなかった？」<br />
&rarr; &ldquo;Ơ, thỏi s&ocirc; c&ocirc; la ở đ&acirc;y đ&acirc;u rồi? &ldquo;ー　&rdquo;&Aacute;, tớ ăn mất rồi. Kh&ocirc;ng được &agrave;?&rdquo;</p>

<p>④　結婚(けっこん)してしまいましょう　&rarr;　<strong>結婚しちゃおう</strong><br />
&rarr;　Ch&uacute;ng ta kết h&ocirc;n lu&ocirc;n đi.<br />
＊「～してしましょう」c&oacute; nghĩa l&agrave; &ldquo;l&agrave;m g&igrave; lu&ocirc;n đi&rdquo;</p>

<p>⑤　もしもし、すみません。車が<strong>混(こ)んじゃって</strong>&hellip; 少し遅(おく) れます。<br />
&rarr;　Alo, xin lỗi. Xe cộ đ&ocirc;ng qu&aacute; (tắc cả đường mất rồi) n&ecirc;n&hellip; t&ocirc;i sẽ đến muộn một ch&uacute;t nh&eacute;.</p>
', N'N3', 1)
INSERT [dbo].[StudyPost] ([IdStudyPost], [Name], [Description], [Date], [Img], [Detail], [N], [IdThemePost]) VALUES (6, N'[Ngữ pháp N3] ～ように、～ような', N'Ở trình độ N4, chúng ta đã học mẫu câu 「 ようになった」và ように chi mục đích. Trong bài này chúng ta sẽ học thêm cách dùng khác của ように.', CAST(N'2019-06-15' AS Date), N'/ckfinder/userfiles/images/n3.png', N'<p><strong>Cấu tr&uacute;c 1:</strong>&nbsp;[Danh từ] + の&nbsp;+ ように/&nbsp;[Động từ thể thường (普通形)]&nbsp;+ ように</p>

<p>&rarr;　<strong>&Yacute; nghĩa:&nbsp;Theo như/ Như &hellip; . D&ugrave;ng để bắt đầu một lời giải th&iacute;ch.</strong></p>

<p><strong>V&iacute; dụ:</strong></p>

<p>①　皆様（みなさま）<strong>ご存じのように</strong>、試験（しけん）の内容（ないよう）が変(か)わります。<br />
&rarr; Như mọi người đ&atilde; biết, nội dung b&agrave;i kiểm tra sẽ thay đổi.<br />
・　ご存じ（ぞんじ）のように: như đ&atilde; biết</p>

<p>②　ここに<strong>書いてあるように</strong>、今度の木曜日、授業（じゅぎょう）は午前中（ごぜんちゅう）だけです。<br />
&rarr;　Như đ&atilde; viết ở đ&acirc;y, thứ năm n&agrave;y sẽ chỉ c&oacute; lớp học v&agrave;o buổi s&aacute;ng.</p>

<p>③　<strong>前にお話ししたように</strong>、来年（らいねん）から授業料（じゅぎょうりょう）が値(ね)上(あ)がりします。<br />
&rarr;　Như t&ocirc;i đ&atilde; n&oacute;i/th&ocirc;ng b&aacute;o trước đ&acirc;y, kể từ năm sau, học ph&iacute; sẽ tăng l&ecirc;n.<br />
・　授業料: học ph&iacute;、　値上がる（ねあがる）: tăng l&ecirc;n</p>

<p>④　<strong>この図（ず）のように</strong>、ウェブサイトを作ってください。<br />
&rarr;　H&atilde;y tạo website theo bản vẽ n&agrave;y.</p>

<p>⑤　田中さんが<strong>言ったように</strong>、明日の会議（かいぎ）は9時に始まります。<br />
&rarr;　Theo như anh Tanaka n&oacute;i th&igrave; buổi họp ng&agrave;y mai bắt đầu l&uacute;c 9 giờ.<br />
<br />
<br />
<br />
<strong>Cấu tr&uacute;c 2:</strong>&nbsp;[Động từ thể từ điển/ thể ない]&nbsp;+ ように (しましょう/ しなさい/してください)</p>

<p><strong>&rarr;　</strong><strong>&Yacute; nghĩa</strong>:&nbsp;<strong>H&atilde;y/ Đừng &hellip;, thể hiện một y&ecirc;u cầu, đề nghị m&agrave; người nghe c&oacute; nghĩa vụ hay tr&aacute;ch nhiệm phải thực hiện</strong></p>

<p><strong>V&iacute; dụ:</strong></p>

<p>①　明日はもっと早く<strong>来るように</strong>。－わかりました。<br />
&rarr;　Ng&agrave;y mai h&atilde;y đến sớm hơn. ー V&acirc;ng t&ocirc;i biết rồi.</p>

<p>②　ここで、たばこを<strong>吸(す)わないように</strong>。<br />
&rarr;　Xin đừng h&uacute;t thuốc ở đ&acirc;y.</p>

<p>③　寝(ね)る前に甘(あま)いものを<strong>食べないように</strong>。<br />
&rarr;　Đừng ăn đồ ngọt trước khi đi ngủ.</p>

<p>④　健康（けんこう）のために、野菜（やさい）を<strong>食べるようにしましょう</strong>。<br />
&rarr;　Để khỏe mạnh th&igrave; h&atilde;y ăn rau n&agrave;o!</p>

<p>* Trong cấu tr&uacute;c n&agrave;y, đằng sau&nbsp;ように&nbsp;c&oacute; thể d&ugrave;ng những động từ như&nbsp;「言う」&nbsp;(n&oacute;i, bảo),「頼む」&nbsp;(y&ecirc;u cầu, nhờ vả),&nbsp;「注意する」&nbsp;(nhắc nhở, lưu &yacute;) biểu thị lời tr&iacute;ch dẫn gi&aacute;n tiếp một y&ecirc;u cầu hay đề nghị.</p>

<p>①　田中さんに、私の部屋に来るように言ってください。（＝「来てくださいと言って」</p>

<p>&rarr;　H&atilde;y bảo anh Tanaka đến ph&ograve;ng t&ocirc;i.</p>

<p>②　妻（つま）に、家ではたばこを吸わないように言われています。（＝「吸わないで」と言われています」</p>

<p>&rarr;　T&ocirc;i bị vợ bảo l&agrave; kh&ocirc;ng được h&uacute;t thuốc ở nh&agrave;.</p>

<p>③　山田さんがジョンさんに英語を見てくれるように頼(たの)んでいる。</p>

<p>&rarr;　Yamada đ&atilde; nhờ John xem hộ b&agrave;i tiếng Anh.</p>

<p>④　お母さんにショートパンツをはいて学校へ行かないように注意(ちゅうい) された。</p>

<p>&rarr;　T&ocirc;i bị mẹ nhắc l&agrave; kh&ocirc;ng được mặc quần so&oacute;c đến trường.</p>

<p><strong>Cấu tr&uacute;c 3:</strong>&nbsp;[Vます/ ません/ れます]&nbsp;+ ように</p>

<p>&rarr;　<strong>&Yacute; nghĩa</strong>:&nbsp;<strong>Diễn đạt hy vọng, điều ước, lời ch&uacute;c</strong></p>

<p><strong>V&iacute; dụ</strong>:</p>

<p>①　合格（ごうかく）<strong>しますように</strong>。<br />
&rarr;　T&ocirc;i hy vọng l&agrave; sẽ đỗ (k&igrave; thi)</p>

<p>②　母の病気が<strong>治(な)りますように</strong>。<br />
&rarr;　Mong l&agrave; mẹ t&ocirc;i sẽ khỏi bệnh.</p>

<p>③　インフルエンザに<strong>かかりませんように</strong>。<br />
&rarr;　Hy vọng t&ocirc;i sẽ kh&ocirc;ng bị c&uacute;m.</p>

<p>④　あなた無事（ぶじ）に家に<strong>帰れますように</strong>。<br />
&rarr;　Mong anh sẽ về đến nh&agrave; an to&agrave;n.</p>

<p>⑤　このパーティーに、ぜひ出席（しゅっせき）<strong>いただけますように</strong>。<br />
&rarr;　T&ocirc;i hy vọng l&agrave; anh/chị c&oacute; thể tham gia buổi tiệc n&agrave;y.</p>

<p>⑥　皆さんお元気で<strong>ありますように</strong>。<br />
&rarr;　Ch&uacute;c mọi người lu&ocirc;n mạnh khỏe.</p>

<p><strong>Cấu tr&uacute;c 4</strong>:&nbsp;[Danh từ] + の / [Động từ thể thường (普通形)]&nbsp;+ ような +&nbsp; [Danh từ]</p>

<p><strong>&Yacute; nghĩa</strong>: C&aacute;i g&igrave; đ&oacute; giống như &hellip; (so s&aacute;nh).&nbsp;「ような」&nbsp;c&oacute; thể thay bằng&nbsp;「みたいな」&nbsp;(&iacute;t lịch sự hơn). Khi d&ugrave;ng&nbsp;「みたいな」 th&igrave; kh&ocirc;ng th&ecirc;m&nbsp;の&nbsp;sau danh từ.</p>

<p><strong>V&iacute; dụ</strong>:<br />
①　お茶<strong>のような</strong>甘くない飲み物が飲みたい。<br />
&rarr;　T&ocirc;i muốn uống đồ uống g&igrave; đ&oacute; kh&ocirc;ng ngọt, giống như tr&agrave; ấy.</p>

<p>②　毎日遅（おそ）くまで仕事をする<strong>ような</strong>生活（せいかつ）は、大変（たいへん）です。<br />
&rarr;　Cuộc sống m&agrave; kiểu như ng&agrave;y n&agrave;o cũng phải l&agrave;m việc muộn th&igrave; thật l&agrave; khổ sở.</p>

<p>③　彼女<strong>みたいな/</strong><strong>のような</strong>人と結婚（けっこん）したい。<br />
&rarr;　T&ocirc;i muốn lấy người như c&ocirc; ấy.</p>

<p>④　それは夢（ゆめ）<strong>みたいな/&nbsp;</strong><strong>のような&nbsp;</strong>話だ。<br />
&rarr;　Đ&oacute; l&agrave; một c&acirc;u chuyện giống như mơ.</p>

<p><strong>Cấu tr&uacute;c 5</strong>:&nbsp;Thể thường (ふつう) +&nbsp;ように&nbsp;+ 感じる/ 見える/ 思う</p>

<p><strong>&Yacute; nghĩa</strong>: &ldquo;Cảm thấy như l&agrave;/ tr&ocirc;ng c&oacute; vẻ như l&agrave; &hellip; &ldquo;, mẫu c&acirc;u thể hiện cảm gi&aacute;c, t&acirc;m trạng chủ quan của người n&oacute;i một c&aacute;ch nhẹ nh&agrave;ng, gi&aacute;n tiếp.</p>

<p><strong>V&iacute; dụ:</strong></p>

<p>①　彼は大学を卒業（そつぎょう）してから、少し変(か)わった<strong>ように感(かん)じる</strong>。</p>

<p>&rarr;　Từ khi anh ấy tốt nghiệp đại học, t&ocirc;i cảm thấy h&igrave;nh như anh ấy c&oacute; ch&uacute;t thay đổi.</p>

<p>②　この服(ふく)を着(き）ると、太(ふと)っている<strong>ように見える</strong>。</p>

<p>&rarr;　Mặc bộ n&agrave;y v&agrave;o tr&ocirc;ng t&ocirc;i c&oacute; vẻ b&eacute;o.</p>

<p>③　こちらの色のほうがいい<strong>ように思います</strong>が&hellip;。</p>

<p>&rarr;　T&ocirc;i nghĩ m&agrave;u n&agrave;y c&oacute; vẻ được hơn.</p>
', N'N3', 1)
INSERT [dbo].[StudyPost] ([IdStudyPost], [Name], [Description], [Date], [Img], [Detail], [N], [IdThemePost]) VALUES (7, N'[Ngữ pháp N3] ～ から ～ にかけて', N'Từ… đến…/ Trong suốt …, chỉ phạm vi của thời gian hoặc không gian', CAST(N'2019-06-15' AS Date), N'/ckfinder/userfiles/images/n3.png', N'<p><strong>V&iacute; dụ</strong>:</p>

<p>①　このブドウは、8月から9月にかけて収穫（しゅうかく）されます。<br />
&rarr;　Nho n&agrave;y được thu hoạch từ th&aacute;ng 8 đến th&aacute;ng 9.</p>

<p>②　あすは、北海道 (ほっかいどう) から東北地方 (とうほくちほう) にかけて、強い風が吹(ふ)くでしょう。<br />
&rarr;　Dự b&aacute;o ng&agrave;y mai sẽ c&oacute; gi&oacute; mạnh trong khu vực từ Hokkaido đến v&ugrave;ng Tohoku.</p>

<p>③　2月から4月にかけて花粉(かふん)が飛(と)ぶそうです。</p>

<p>&rarr;　Suốt từ th&aacute;ng 2 đến th&aacute;ng 4 sẽ l&agrave; m&ugrave;a phấn hoa.</p>

<p>④　九州(きゅうしゅう)から本州(ほんしゅう)にかけて梅雨入り(つゆいり)しました。</p>

<p>&rarr;　To&agrave;n bộ khu vực từ Kyushu đến Honshu đ&atilde; v&agrave;o m&ugrave;a mưa.</p>

<p>⑤　わたしは、2007年から2014年にかけて、東京に住んでいました。</p>

<p>&rarr;　T&ocirc;i đ&atilde; sống ở Tokyo suốt từ năm 2007 đến 2014.</p>

<p>⑥　日本では、大学の入学試験（にゅうがくしけん）は、普通2月から3月にかけて行われる。</p>

<p>&rarr;　Tại Nhật k&igrave; thi đầu v&agrave;o đại học thường được tổ chức từ th&aacute;ng 2 cho đến th&aacute;ng 3.</p>
', N'N3', 1)
INSERT [dbo].[StudyPost] ([IdStudyPost], [Name], [Description], [Date], [Img], [Detail], [N], [IdThemePost]) VALUES (8, N'[Ngữ pháp N5] ～かもしれません、～はずです', N'Có thể và chắn chắn', CAST(N'2019-06-15' AS Date), N'/ckfinder/userfiles/images/apps_12608_9007199266613065_7b4d7bde-fa6f-48fc-af39-61fa8953473d.png', N'<p><strong>1. ～かもしれません: c&oacute; thể, c&oacute; lẽ</strong></p>

<p><strong>Cấu tr&uacute;c</strong>:</p>

<ul>
	<li><strong>[Động từ thể thường (普通形)]&nbsp;+ かもしれません。</strong></li>
	<li><strong>[T&iacute;nh từ -i/ T&iacute;nh từ -na (bỏ な)]&nbsp;+ かもしれません。</strong></li>
	<li><strong>[Danh từ]&nbsp;+ かもしれません。</strong></li>
</ul>

<p>&rarr;　「かもしれない」l&agrave; thể &iacute;t lịch sự hơn của&nbsp;「かもしません」</p>

<p><strong>&Yacute; nghĩa:</strong>&nbsp;Diễn tả khả năng việc g&igrave; đ&oacute; sẽ xảy ra nhưng kh&ocirc;ng chắc chắn (khả năng thấp nhưng vẫn c&oacute; thể). Người n&oacute;i chỉ chắc chắn khoảng 50%.</p>

<p><strong>V&iacute; dụ</strong>:</p>

<p>①　山田さんは図書館（としょかん）にいるかもしれない。</p>

<p>&rarr;　C&oacute; lẽ Yamada đang ở thư vi&ecirc;n.</p>

<p>②　彼は来ないかもしれません。</p>

<p>&rarr;　C&oacute; thể anh ta sẽ kh&ocirc;ng đến.</p>

<p>③　あした　いそがしいかもしれない。</p>

<p>&rarr;　C&oacute; lẽ mai sẽ bận đấy.</p>

<p>④　彼女 (かのじょ) は猫 (ねこ) が好 (す) きかもしれません。</p>

<p>&rarr;　C&oacute; thể c&ocirc; ấy th&iacute;ch m&egrave;o đấy.</p>

<p>⑤　彼は病気（びょうき）かもしれない。</p>

<p>&rarr;　C&oacute; lẽ anh ta bị ốm.</p>

<p>* Trong hội thoại h&agrave;ng ng&agrave;y,&nbsp;「かもしれません」được n&oacute;i ngắn gọn l&agrave;&nbsp;「かも」</p>

<p>&rarr;　彼は来 (こ) ないかもね。<br />
<br />
<br />
<strong>2. ～はずです: Chắc hẳn l&agrave;, nhất định l&agrave;</strong></p>

<p><strong>Cấu tr&uacute;c:</strong></p>

<ul>
	<li><strong>[Động từ thể thường (普通形)]&nbsp;+ はずです/はずだ。</strong></li>
	<li><strong>[T&iacute;nh từ -i/T&iacute;nh từ -na な]&nbsp;+ はずです/はずだ。</strong></li>
	<li><strong>[Danh từ + の]&nbsp;+&nbsp; はずです/はずだ。</strong></li>
</ul>

<p><strong>&Yacute; nghĩa</strong>: Diễn đạt khả năng việc g&igrave; đ&oacute; xảy ra v&agrave; khả năng n&agrave;y l&agrave; cao, người n&oacute;i c&oacute; sự chắc chắn về việc n&agrave;y. Điều chắc chắn n&agrave;y thường dựa v&agrave;o một l&yacute; do n&agrave;o đ&oacute; để suy luận ra, giống như kiểu &ldquo;Đ&atilde; l&agrave; thế n&agrave;y th&igrave; nhất định/chắc chắn phải thế n&agrave;y.&rdquo;</p>

<p><strong>V&iacute; dụ</strong>:</p>

<p>①　今10時ですから、郵便局（ゆうびんきょく）は開 (あ) いているはずです。</p>

<p>&rarr;　B&acirc;y giờ l&agrave; 10 giờ n&ecirc;n chắc chắn l&agrave; bưu điện đang mở cửa.</p>

<p>②　山田さんは英語（えいご）の教師（きょうし）ですから、英語が話(はな)せるはずだ。</p>

<p>&rarr;　Anh Yamada l&agrave; gi&aacute;o vi&ecirc;n tiếng Anh n&ecirc;n chắc hẳn l&agrave; n&oacute;i được tiếng Anh.</p>

<p>③　彼女（かのじょ）は美術（びじゅつ）を勉強（べんきょう）していますから、絵（え）が上手（じょうず）なはずです。</p>

<p>&rarr;　C&ocirc; ấy học về mỹ thuật n&ecirc;n chắc chắn l&agrave; vẽ giỏi rồi.</p>

<p>④　彼は風邪（かぜ）を引(ひ) いたと言いましたから、今日(きょう) は休 (やす)みのはずです。</p>

<p>&rarr;　Anh ấy đ&atilde; n&oacute;i l&agrave; bị cảm n&ecirc;n h&ocirc;m nay chắc l&agrave; sẽ nghỉ ở nh&agrave;.</p>

<p>⑤　今日の気温（きおん）は１℃。寒(さむ)いはずですね。</p>

<p>&rarr; Nhiệt độ h&ocirc;m nay l&agrave; 1 độ. Chắc chắn l&agrave; lạnh rồi.</p>

<p>* 「はずです」thể hiện suy nghĩ, đ&aacute;nh gi&aacute; của người n&oacute;i n&ecirc;n kh&ocirc;ng phải l&uacute;c n&agrave;o cũng đ&uacute;ng, đ&ocirc;i khi c&oacute; sự kh&aacute;c biệt đối với thực tế.</p>

<ul>
	<li>山田さんは英語（えいご）の教師（きょうし）ですから、英語が話(はな)せるはずだと思 (お)いますが、実 (じつ) はあまり話(はな) せません。</li>
</ul>

<p>&rarr;　V&igrave; anh Yamada l&agrave; gi&aacute;o vi&ecirc;n tiếng Anh &nbsp;n&ecirc;n t&ocirc;i nghĩ l&agrave; chắc chắn anh ấy phải n&oacute;i được tiếng Anh nhưng sự thực l&agrave; anh ấy kh&ocirc;ng n&oacute;i được mấy.</p>

<p><strong>* Thể phủ định của&nbsp;「はずです」l&agrave;&nbsp;「はずがない」hoặc「はずはない」</strong></p>

<ul>
	<li>彼は病気（びょうき）ですから、来（く）るはずがないね。</li>
</ul>

<p>&rarr;　Anh ấy bị bệnh n&ecirc;n t&ocirc;i kh&ocirc;ng chắc l&agrave;&nbsp;anh ấy sẽ đến.</p>

<p>Vậy c&acirc;u n&agrave;y th&igrave; sao: 「彼は病気（びょうき）ですから、来（こ）ないはずだね。」</p>

<p>Về &yacute; nghĩa th&igrave; đều giống nhau ở việc cho rằng anh ấy sẽ kh&ocirc;ng đến, nhưng th&aacute;i độ của người n&oacute;i đối với việc tin rằng anh ấy c&oacute; đến hay kh&ocirc;ng th&igrave; kh&aacute;c nhau một ch&uacute;t.</p>

<ul>
	<li>彼は病気（びょうき）ですから、来（く）るはずがないね。</li>
</ul>

<p>&rarr;　Anh ấy bị bệnh n&ecirc;n t&ocirc;i kh&ocirc;ng chắc chắn l&agrave; anh ấy sẽ đến. (T&ocirc;i hầu như kh&ocirc;ng tin việc anh ấy đến)</p>

<ul>
	<li>彼は病気（びょうき）ですから、来（こ）ないはずだね。</li>
</ul>

<p>&rarr;　Anh ấy bị bệnh n&ecirc;n chắc chắn l&agrave; kh&ocirc;ng đến đ&acirc;u. (T&ocirc;i chỉ đo&aacute;n l&agrave; anh ấy kh&ocirc;ng đến)</p>

<p>N&oacute;i chung cả hai c&acirc;u &nbsp;n&agrave;y &yacute; nghĩa đều giống nhau, nhưng nếu muốn nhấn mạnh việc &ldquo;t&ocirc;i kh&ocirc;ng tin&rdquo; th&igrave; d&ugrave;ng&nbsp;<strong>「はずがない」</strong></p>

<p><strong><iframe allow=";" allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/8ObYr_gD-gY" width="640"></iframe></strong></p>
', N'N5', 1)
SET IDENTITY_INSERT [dbo].[StudyPost] OFF
SET IDENTITY_INSERT [dbo].[Test] ON 

INSERT [dbo].[Test] ([IdTest], [Name], [N], [Detail]) VALUES (1, N' Đề thi Kanji N3', N'N3', N'Kanji to Hiragana')
SET IDENTITY_INSERT [dbo].[Test] OFF
SET IDENTITY_INSERT [dbo].[ThemeOfPost] ON 

INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (1, N'Học tập', N'Biên soạn dựa trên các giáo trình tiếng Nhật.')
INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (2, N'Ẩm thực', N'Ẩm thực Nhật Bản qua các bài viết.')
INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (3, N'Du lịch', N'Giới thiệu địa điểm du lịch.')
INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (4, N'Nhạc Nhật', N'Giới thiệu nhạc.')
INSERT [dbo].[ThemeOfPost] ([IdThemePost], [Name], [Detail]) VALUES (5, N'Đời sống', N'Các cách ứng xử hàng ngày.')
SET IDENTITY_INSERT [dbo].[ThemeOfPost] OFF
SET IDENTITY_INSERT [dbo].[Volcabulary] ON 

INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (1, N'効く', N'きく', N'có hiệu quả', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (2, N'はやる', N'はやる', N'phổ biến', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (3, N'経つ', N'たつ', N'qua', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (4, N'間に合う', N'まにあう', N'làm cho kịp giờ', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (5, N'間に合わせる', N'まにあわせる', N'kịp giờ', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (6, N'通う', N'かよう', N'đi làm, học', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (7, N'込む', N'こむ', N'đông', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (8, N'すれ違う', N'すれちがう', N'vượt, lướt', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (9, N'掛かる', N'かかる', N'được bao phủ', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (10, N'掛ける', N'かける', N'bao phủ', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (11, N'動く', N'うごく', N'hoạt động', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (12, N'動かす', N'うごかす', N'di chuyển', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (13, N'離れる', N'はなれる', N'tránh xa', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (14, N'離す', N'はなす', N'tách ra', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (15, N'ぶつかる', N'ぶつかる', N'bị đâm', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (16, N'ぶつける', N'ぶつける', N'đâm', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (17, N'こぼれる', N'こぼれる', N'bị tràn', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (18, N'こぼす', N'こぼす', N'tràn', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (19, N'ふく', N'ふく', N'lau', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (20, N'片付く', N'かたづく', N'được dọn dẹp', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (21, N'片付ける', N'かたづける', N'dọn dẹp', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (22, N'包む', N'つつむ', N'bọc', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (23, N'張る', N'はる', N'dán', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (24, N'無くなる', N'なくなる', N'bị mất', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (25, N'無くす', N'なくす', N'mất', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (26, N'足りる', N'たりる', N'đủ', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (27, N'残る', N'のこる', N'bị thừa', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (28, N'残す', N'のこす', N'thừa', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (29, N'腐る', N'くさる', N'thối', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (30, N'むける', N'むける', N'bị lột', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (31, N'むく', N'むく', N'lột', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (32, N'滑る', N'すべる', N'trượt', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (33, N'積もる', N'つもる', N'được tích tụ', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (34, N'積む', N'つむ', N'tích tụ, chất lại', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (35, N'空く', N'あく', N'bị thủng', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (36, N'空ける', N'あける', N'thủng', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (37, N'下がる', N'さがる', N'bị giảm', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (38, N'下げる', N'さげる', N'giảm', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (39, N'冷える', N'ひえる', N'bị lạnh', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (40, N'冷やす', N'ひやす', N'làm lạnh', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (41, N'冷める', N'さめる', N'bị nguội', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (42, N'冷ます', N'さます', N'làm nguội', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (43, N'燃える', N'もえる', N'cháy', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (44, N'燃やす', N'もやす', N'đốt', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (45, N'沸く', N'わく', N'sôi', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (46, N'沸かす', N'わかす', N'đun sôi', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (47, N'鳴る', N'なる', N'kêu', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (48, N'鳴らす', N'ならす', N'làm kêu', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (49, N'役立つ', N'やくだつ', N'hữu ích', N'N3')
INSERT [dbo].[Volcabulary] ([IdVol], [Kanji], [Furigana], [Meaning], [N]) VALUES (50, N'役立てる', N'やくだてる', N'được sử dụng', N'N3')
SET IDENTITY_INSERT [dbo].[Volcabulary] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/17/2019 11:40:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/17/2019 11:40:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/17/2019 11:40:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/17/2019 11:40:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/17/2019 11:40:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/17/2019 11:40:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CulturalPost]  WITH CHECK ADD FOREIGN KEY([IdPlace])
REFERENCES [dbo].[Place] ([IdPlace])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CulturalPost]  WITH CHECK ADD FOREIGN KEY([IdThemePost])
REFERENCES [dbo].[ThemeOfPost] ([IdThemePost])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([IdTest])
REFERENCES [dbo].[Test] ([IdTest])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StudyPost]  WITH CHECK ADD FOREIGN KEY([IdThemePost])
REFERENCES [dbo].[ThemeOfPost] ([IdThemePost])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StudyPost]  WITH CHECK ADD FOREIGN KEY([N])
REFERENCES [dbo].[Level] ([N])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD FOREIGN KEY([N])
REFERENCES [dbo].[Level] ([N])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Volcabulary]  WITH CHECK ADD FOREIGN KEY([N])
REFERENCES [dbo].[Level] ([N])
ON UPDATE CASCADE
GO
USE [master]
GO
ALTER DATABASE [JapaneData] SET  READ_WRITE 
GO
