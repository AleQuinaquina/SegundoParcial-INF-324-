USE [master]
GO
/****** Object:  Database [examen]    Script Date: 6/12/2024 11:06:14 AM ******/
CREATE DATABASE [examen]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'examen', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\examen.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'examen_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\examen_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [examen] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [examen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [examen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [examen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [examen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [examen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [examen] SET ARITHABORT OFF 
GO
ALTER DATABASE [examen] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [examen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [examen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [examen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [examen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [examen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [examen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [examen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [examen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [examen] SET  DISABLE_BROKER 
GO
ALTER DATABASE [examen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [examen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [examen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [examen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [examen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [examen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [examen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [examen] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [examen] SET  MULTI_USER 
GO
ALTER DATABASE [examen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [examen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [examen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [examen] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [examen] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [examen] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [examen] SET QUERY_STORE = ON
GO
ALTER DATABASE [examen] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [examen]
GO
/****** Object:  User [consultor]    Script Date: 6/12/2024 11:06:14 AM ******/
CREATE USER [consultor] FOR LOGIN [consultor] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Ale]    Script Date: 6/12/2024 11:06:14 AM ******/
CREATE USER [Ale] FOR LOGIN [Ale] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[puntos]    Script Date: 6/12/2024 11:06:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puntos](
	[codPunto] [int] IDENTITY(1,1) NOT NULL,
	[textura] [varchar](20) NULL,
	[color] [varchar](20) NULL,
	[R] [int] NULL,
	[G] [int] NULL,
	[B] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codPunto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[puntos] ON 

INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (1, N'fondo', N'green', 161, 173, 255)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (2, N'manzanas', N'blue', 72, 25, 42)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (3, N'tazon', N'yelow', 254, 254, 106)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (4, N'fondo', N'yelow', 161, 173, 255)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (5, N'mesa', N'purple', 37, 82, 71)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (6, N'mani', N'blue', 227, 177, 95)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (7, N'papa', N'orange', 203, 177, 123)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (8, N'plato', N'green', 251, 250, 253)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (9, N'carne', N'brown', 115, 66, 58)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (10, N'pino', N'red', 76, 83, 35)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (11, N'fondoGato', N'purple', 157, 76, 20)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (12, N'negroB', N'red', 0, 0, 0)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (13, N'rojoB', N'black', 218, 0, 0)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (14, N'gorro', N'beish', 249, 2, 1)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (15, N'gorro', N'beish', 249, 2, 1)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (16, N'fondo2', N'black', 0, 127, 208)
INSERT [dbo].[puntos] ([codPunto], [textura], [color], [R], [G], [B]) VALUES (17, N'fonfoVerde', N'orange', 41, 65, 1)
SET IDENTITY_INSERT [dbo].[puntos] OFF
GO
USE [master]
GO
ALTER DATABASE [examen] SET  READ_WRITE 
GO
