USE [Practica 2_JIRV]
GO
/****** Object:  Table [dbo].[Profesor_Curso]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP TABLE [dbo].[Profesor_Curso]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP TABLE [dbo].[Profesor]
GO
/****** Object:  Table [dbo].[Grado]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP TABLE [dbo].[Grado]
GO
/****** Object:  Table [dbo].[Estudiante_Curso]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP TABLE [dbo].[Estudiante_Curso]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP TABLE [dbo].[Estudiante]
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP TABLE [dbo].[Escuela]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP TABLE [dbo].[Curso]
GO
/****** Object:  Table [dbo].[Clase]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP TABLE [dbo].[Clase]
GO
USE [master]
GO
/****** Object:  Database [Practica 2_JIRV]    Script Date: 10/03/2018 01:38:12 p.m. ******/
DROP DATABASE [Practica 2_JIRV]
GO
/****** Object:  Database [Practica 2_JIRV]    Script Date: 10/03/2018 01:38:12 p.m. ******/
CREATE DATABASE [Practica 2_JIRV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica 2_JIRV', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Practica 2_JIRV.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Practica 2_JIRV_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Practica 2_JIRV_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Practica 2_JIRV] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica 2_JIRV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica 2_JIRV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Practica 2_JIRV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica 2_JIRV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica 2_JIRV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica 2_JIRV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica 2_JIRV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica 2_JIRV] SET  MULTI_USER 
GO
ALTER DATABASE [Practica 2_JIRV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica 2_JIRV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica 2_JIRV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica 2_JIRV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Practica 2_JIRV]
GO
/****** Object:  Table [dbo].[Clase]    Script Date: 10/03/2018 01:38:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clase](
	[Clase_Id] [int] NOT NULL,
	[Escuela_Id] [int] NOT NULL,
	[Clase_Name] [varchar](50) NOT NULL,
	[Descripcion] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 10/03/2018 01:38:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso](
	[Curso_Id] [int] NOT NULL,
	[Curso_Name] [varchar](50) NOT NULL,
	[Escuela_Id] [int] NOT NULL,
	[Descripcion] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 10/03/2018 01:38:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Escuela](
	[Escuela_Id] [int] NOT NULL,
	[Escuela_Name] [varchar](50) NOT NULL,
	[Descripcion] [varchar](1000) NULL,
	[Direccion] [varchar](50) NULL,
	[Numero] [varchar](50) NULL,
	[Codigo_Postal] [varchar](50) NULL,
	[Direccion_Postal] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 10/03/2018 01:38:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estudiante](
	[Estudiante_Id] [int] NOT NULL,
	[Clase_Id] [int] NOT NULL,
	[Estudiante_Name] [varchar](100) NOT NULL,
	[Estudiante_Numero] [varchar](20) NOT NULL,
	[Calificacion_Total] [float] NULL,
	[Direccion] [varchar](100) NULL,
	[Numero_Telefonico] [varchar](20) NULL,
	[EMail] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estudiante_Curso]    Script Date: 10/03/2018 01:38:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante_Curso](
	[Estudiante_Id] [int] NOT NULL,
	[Curso_Id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grado]    Script Date: 10/03/2018 01:38:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grado](
	[Grado] [int] NOT NULL,
	[Estudiante_Id] [int] NOT NULL,
	[Curso_Id] [int] NOT NULL,
	[Calificacion] [float] NOT NULL,
	[Comentario] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 10/03/2018 01:38:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesor](
	[Profesor_Id] [int] NOT NULL,
	[Escuela_Id] [int] NOT NULL,
	[Profesor_Name] [varchar](50) NOT NULL,
	[Descripcion] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesor_Curso]    Script Date: 10/03/2018 01:38:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor_Curso](
	[Profesor_Id] [int] NOT NULL,
	[Curso_Id] [int] NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Practica 2_JIRV] SET  READ_WRITE 
GO
