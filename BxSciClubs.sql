USE [master]
GO
/****** Object:  Database [BxSciClubs]    Script Date: 3/20/2021 11:38:36 PM ******/
CREATE DATABASE [BxSciClubs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BxSciClubs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BxSciClubs.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BxSciClubs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BxSciClubs_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BxSciClubs] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BxSciClubs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BxSciClubs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BxSciClubs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BxSciClubs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BxSciClubs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BxSciClubs] SET ARITHABORT OFF 
GO
ALTER DATABASE [BxSciClubs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BxSciClubs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BxSciClubs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BxSciClubs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BxSciClubs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BxSciClubs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BxSciClubs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BxSciClubs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BxSciClubs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BxSciClubs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BxSciClubs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BxSciClubs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BxSciClubs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BxSciClubs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BxSciClubs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BxSciClubs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BxSciClubs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BxSciClubs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BxSciClubs] SET  MULTI_USER 
GO
ALTER DATABASE [BxSciClubs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BxSciClubs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BxSciClubs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BxSciClubs] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BxSciClubs] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BxSciClubs] SET QUERY_STORE = OFF
GO
USE [BxSciClubs]
GO
/****** Object:  Table [dbo].[ClubDetails]    Script Date: 3/20/2021 11:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClubDetails](
	[ClubName] [nvarchar](50) NOT NULL,
	[MeetingDay] [nchar](10) NULL,
	[MeetLink] [nvarchar](max) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[Advisor] [nvarchar](50) NULL,
	[AdvisorEmail] [nvarchar](50) NULL,
	[PresName] [nvarchar](50) NULL,
	[PresEmail] [nvarchar](50) NULL,
	[ClubDesc] [nvarchar](max) NULL,
	[RoomNo] [int] NULL,
 CONSTRAINT [PK_ClubDetails] PRIMARY KEY CLUSTERED 
(
	[ClubName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ClubDetails] ([ClubName], [MeetingDay], [MeetLink], [StartTime], [EndTime], [Advisor], [AdvisorEmail], [PresName], [PresEmail], [ClubDesc], [RoomNo]) VALUES (N'Astronomy Club', N'W         ', N'https://meet.google.com/joh-eomk-czb', CAST(N'03:15:00' AS Time), CAST(N'03:57:00' AS Time), N'Mr. Mantilla', N'mantilla@bxscience.edu', N'Luke Phillips', N'philipsl@bxscience.edu', N'In this club, we learn about astronomy and all things space-related.', 304)
INSERT [dbo].[ClubDetails] ([ClubName], [MeetingDay], [MeetLink], [StartTime], [EndTime], [Advisor], [AdvisorEmail], [PresName], [PresEmail], [ClubDesc], [RoomNo]) VALUES (N'Bullet Journaling', N'M         ', N'https://zoom.us/j/2704586374?pwd=d0tJVUk0TFcrVGZrWlZQeFFQT2N1QT09', CAST(N'03:15:00' AS Time), CAST(N'04:00:00' AS Time), N'Ms. Rosado', N'rosado2@bxscience.edu', N'JK Aroni Goongoon', N'goongoonj@bxscience.edu', N'Join the bullet journaling club to learn how to begin your own bullet journal, along with tips for beginners!', 211)
INSERT [dbo].[ClubDetails] ([ClubName], [MeetingDay], [MeetLink], [StartTime], [EndTime], [Advisor], [AdvisorEmail], [PresName], [PresEmail], [ClubDesc], [RoomNo]) VALUES (N'Classical Piano', N'W         ', N'https://meet.google.com/rmh-kjhx-ahw', CAST(N'04:00:00' AS Time), CAST(N'04:42:00' AS Time), N'Dr. Savaiano', N'savaiano@bxscience.edu', N'Thomas Bakos', N'bakost@bxscience.edu', N'The classical piano club is for those who enjoy listening to classical piano and playing it too. No prior experience necessary.', 109)
INSERT [dbo].[ClubDetails] ([ClubName], [MeetingDay], [MeetLink], [StartTime], [EndTime], [Advisor], [AdvisorEmail], [PresName], [PresEmail], [ClubDesc], [RoomNo]) VALUES (N'Gardening Club', N'F         ', N'https://meet.google.com/pja-rgev-rha?authuser=1', CAST(N'04:00:00' AS Time), CAST(N'04:42:00' AS Time), N'Mr. Sarker', N'sarker@bxscience.edu', N'Aidan Domondon', N'domondona@bxscience.ed', N'Gardening club is exactly what it sounds like, a club where we come together to garden!', 8)
INSERT [dbo].[ClubDetails] ([ClubName], [MeetingDay], [MeetLink], [StartTime], [EndTime], [Advisor], [AdvisorEmail], [PresName], [PresEmail], [ClubDesc], [RoomNo]) VALUES (N'Photography', N'M         ', N'https://meet.google.com/hdf-fpke-qxh', CAST(N'05:00:00' AS Time), CAST(N'05:42:00' AS Time), N'Ms. Ferguson', N'ferguson@bxscience.edu', N'Darlene Park', N'parkd@bxscience.edu', N'Join the photography club to learn tips and tricks on how to elevate your photography skills!', 334)
GO
USE [master]
GO
ALTER DATABASE [BxSciClubs] SET  READ_WRITE 
GO
