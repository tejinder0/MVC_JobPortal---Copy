USE [master]
GO
/****** Object:  Database [jobDB]    Script Date: 1/05/2019 9:53:42 AM ******/
CREATE DATABASE [jobDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'jobDB_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\jobDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'jobDB_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS02\MSSQL\DATA\jobDB.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [jobDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jobDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jobDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [jobDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [jobDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [jobDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [jobDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [jobDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [jobDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [jobDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [jobDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [jobDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [jobDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [jobDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [jobDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [jobDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [jobDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [jobDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [jobDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [jobDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [jobDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [jobDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [jobDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [jobDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [jobDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [jobDB] SET  MULTI_USER 
GO
ALTER DATABASE [jobDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [jobDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [jobDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [jobDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [jobDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [jobDB] SET QUERY_STORE = OFF
GO
USE [jobDB]
GO
/****** Object:  Table [dbo].[CategoryData]    Script Date: 1/05/2019 9:53:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](50) NULL,
 CONSTRAINT [PK_CategoryData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 1/05/2019 9:53:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](50) NULL,
	[Scontact] [varchar](50) NULL,
	[Semail] [varchar](50) NULL,
	[Smsg] [varchar](50) NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobData]    Script Date: 1/05/2019 9:53:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Posts] [int] NULL,
	[Lastdate] [varchar](50) NULL,
	[Salary] [int] NULL,
 CONSTRAINT [PK_JobData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginData]    Script Date: 1/05/2019 9:53:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](50) NULL,
	[Spassword] [varchar](50) NULL,
 CONSTRAINT [PK_LoginData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoryData] ON 

INSERT [dbo].[CategoryData] ([ID], [Category]) VALUES (8, N'IT')
INSERT [dbo].[CategoryData] ([ID], [Category]) VALUES (9, N'Cleaning')
SET IDENTITY_INSERT [dbo].[CategoryData] OFF
SET IDENTITY_INSERT [dbo].[contact] ON 

INSERT [dbo].[contact] ([Id], [Sname], [Scontact], [Semail], [Smsg]) VALUES (2, N'jatinder', N'2589631478', N'jatinder303@gmail.com', N'hiiiii')
INSERT [dbo].[contact] ([Id], [Sname], [Scontact], [Semail], [Smsg]) VALUES (3, N'jatinder', N'2589631478', N'jatinder303@gmail.com', N'kljlml')
INSERT [dbo].[contact] ([Id], [Sname], [Scontact], [Semail], [Smsg]) VALUES (4, N'guhyi', N'9814347469', N'hapz@gmail.com', N'testing by hapz')
INSERT [dbo].[contact] ([Id], [Sname], [Scontact], [Semail], [Smsg]) VALUES (5, N'guhyi', N'0258963147', N'jati@gmail.com', N'ytygikj')
INSERT [dbo].[contact] ([Id], [Sname], [Scontact], [Semail], [Smsg]) VALUES (6, N'N', N'3', N'jati@gmail.com', N'KK,N')
INSERT [dbo].[contact] ([Id], [Sname], [Scontact], [Semail], [Smsg]) VALUES (7, N'JATI', N'0258963258', N'jati@gmail.com', N'ABC')
SET IDENTITY_INSERT [dbo].[contact] OFF
SET IDENTITY_INSERT [dbo].[JobData] ON 

INSERT [dbo].[JobData] ([id], [Category], [Department], [Designation], [Posts], [Lastdate], [Salary]) VALUES (10, N'Web Developer', N'Website', N'Javascript Developer', 2, N'04/05/2019', 66)
INSERT [dbo].[JobData] ([id], [Category], [Department], [Designation], [Posts], [Lastdate], [Salary]) VALUES (12, N'Software Developer', N'Website', N'SD', 2, N'02/05/2019', 66563210)
SET IDENTITY_INSERT [dbo].[JobData] OFF
SET IDENTITY_INSERT [dbo].[LoginData] ON 

INSERT [dbo].[LoginData] ([ID], [Sname], [Spassword]) VALUES (1, N'admin@admin.com', N'admin')
SET IDENTITY_INSERT [dbo].[LoginData] OFF
USE [master]
GO
ALTER DATABASE [jobDB] SET  READ_WRITE 
GO
