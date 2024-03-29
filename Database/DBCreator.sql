USE [master]
GO
/****** Object:  Database [cloud]    Script Date: 14.11.2020 03:48:21 ******/
CREATE DATABASE [cloud]
    CONTAINMENT = NONE
    ON PRIMARY
    ( NAME = N'cloud', FILENAME = N'E:\Oprogramowanie\Programy\Databases\2019\Instance\MSSQL15.MSSQLSERVER\MSSQL\DATA\cloud.mdf' , SIZE = 8192 KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536 KB )
    LOG ON
    ( NAME = N'cloud_log', FILENAME = N'E:\Oprogramowanie\Programy\Databases\2019\Instance\MSSQL15.MSSQLSERVER\MSSQL\DATA\cloud_log.ldf' , SIZE = 8192 KB , MAXSIZE = 2048 GB , FILEGROWTH = 65536 KB )
    WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [cloud] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
    begin
        EXEC [cloud].[dbo].[sp_fulltext_database] @action = 'enable'
    end
GO
ALTER DATABASE [cloud] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [cloud] SET ANSI_NULLS OFF
GO
ALTER DATABASE [cloud] SET ANSI_PADDING OFF
GO
ALTER DATABASE [cloud] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [cloud] SET ARITHABORT OFF
GO
ALTER DATABASE [cloud] SET AUTO_CLOSE ON
GO
ALTER DATABASE [cloud] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [cloud] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [cloud] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [cloud] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [cloud] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [cloud] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [cloud] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [cloud] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [cloud] SET ENABLE_BROKER
GO
ALTER DATABASE [cloud] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [cloud] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [cloud] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [cloud] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [cloud] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [cloud] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [cloud] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [cloud] SET RECOVERY SIMPLE
GO
ALTER DATABASE [cloud] SET MULTI_USER
GO
ALTER DATABASE [cloud] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [cloud] SET DB_CHAINING OFF
GO
ALTER DATABASE [cloud] SET FILESTREAM ( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [cloud] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO
ALTER DATABASE [cloud] SET DELAYED_DURABILITY = DISABLED
GO
ALTER DATABASE [cloud] SET QUERY_STORE = OFF
GO
USE [cloud]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 14.11.2020 03:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts]
(
    [Id]       [int] IDENTITY (1,1) NOT NULL,
    [Name]     [nvarchar](200)      NOT NULL,
    [EMail]    [nvarchar](200)      NOT NULL,
    [Tags]     [nvarchar](400)      NOT NULL,
    [UserType] [int]                NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accounts]
    WITH CHECK ADD CHECK (([UserType] < (3) AND [UserType] > (-1)))
GO
USE [master]
GO
ALTER DATABASE [cloud] SET READ_WRITE
GO
