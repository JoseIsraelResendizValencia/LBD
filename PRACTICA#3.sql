USE [PROYECTOLBD]
GO
ALTER TABLE [dbo].[Tienda] DROP CONSTRAINT [FK_Tienda_Personal]
GO
ALTER TABLE [dbo].[Tienda] DROP CONSTRAINT [FK_Tienda_Direccion]
GO
ALTER TABLE [dbo].[Personal] DROP CONSTRAINT [FK_Personal_Tienda]
GO
ALTER TABLE [dbo].[Personal] DROP CONSTRAINT [FK_Personal_Direccion]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Idioma1]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [FK_Pelicula_Idioma]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Personal]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Cliente]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Alquiler]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_Tienda]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_Pelicula]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_Informacion_Pelicula]
GO
ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [FK_Direccion_Ciudad]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Tienda]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Direccion]
GO
ALTER TABLE [dbo].[Ciudad] DROP CONSTRAINT [FK_Ciudad_Pais]
GO
ALTER TABLE [dbo].[Categoria_Pelicula] DROP CONSTRAINT [FK_Categoria_Pelicula_Pelicula]
GO
ALTER TABLE [dbo].[Categoria_Pelicula] DROP CONSTRAINT [FK_Categoria_Pelicula_Categoria]
GO
ALTER TABLE [dbo].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Personal]
GO
ALTER TABLE [dbo].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Inventario]
GO
ALTER TABLE [dbo].[Alquiler] DROP CONSTRAINT [FK_Alquiler_Cliente]
GO
ALTER TABLE [dbo].[Actor_Pelicula] DROP CONSTRAINT [FK_Actor_Pelicula_Pelicula]
GO
ALTER TABLE [dbo].[Actor_Pelicula] DROP CONSTRAINT [FK_Actor_Pelicula_Actor]
GO
/****** Object:  Index [Indice_Tienda_Gerente_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_Tienda_Gerente_Id] ON [dbo].[Tienda]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Direccion_Id] ON [dbo].[Tienda]
GO
/****** Object:  Index [Indice_fk_Tienda_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Tienda_Id] ON [dbo].[Personal]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Direccion_Id] ON [dbo].[Personal]
GO
/****** Object:  Index [Indice_Pelicula_Titulo]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_Pelicula_Titulo] ON [dbo].[Pelicula]
GO
/****** Object:  Index [Indice_fk_Idioma_Original_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Idioma_Original_Id] ON [dbo].[Pelicula]
GO
/****** Object:  Index [Indice_fk_Idioma_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Idioma_Id] ON [dbo].[Pelicula]
GO
/****** Object:  Index [Indice_fk_Personal_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Personal_Id] ON [dbo].[Pago]
GO
/****** Object:  Index [Indice_fk_Cliente_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Cliente_Id] ON [dbo].[Pago]
GO
/****** Object:  Index [Indice_fk_Alquiler_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Alquiler_Id] ON [dbo].[Pago]
GO
/****** Object:  Index [Indice_Tienda_Id_Pelicula_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_Tienda_Id_Pelicula_Id] ON [dbo].[Inventario]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Inventario]
GO
/****** Object:  Index [Indice_Informacion_Pelicula_Titulo]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_Informacion_Pelicula_Titulo] ON [dbo].[Informacion_Pelicula]
GO
/****** Object:  Index [Indice_fk_Ciudad_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Ciudad_Id] ON [dbo].[Direccion]
GO
/****** Object:  Index [Indice_fk_Tienda_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Tienda_Id] ON [dbo].[Cliente]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Direccion_Id] ON [dbo].[Cliente]
GO
/****** Object:  Index [Indice_Cliente_Apellido]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_Cliente_Apellido] ON [dbo].[Cliente]
GO
/****** Object:  Index [Indice_fk_Pais_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Pais_Id] ON [dbo].[Ciudad]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Categoria_Pelicula]
GO
/****** Object:  Index [Indice_fk_Categoria_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Categoria_Id] ON [dbo].[Categoria_Pelicula]
GO
/****** Object:  Index [Indice_fk_Personal_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Personal_Id] ON [dbo].[Alquiler]
GO
/****** Object:  Index [Indice_fk_Inventario_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Inventario_Id] ON [dbo].[Alquiler]
GO
/****** Object:  Index [Indice_fk_Cliente_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Cliente_Id] ON [dbo].[Alquiler]
GO
/****** Object:  Index [Indice_Alquiler]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_Alquiler] ON [dbo].[Alquiler]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Actor_Pelicula]
GO
/****** Object:  Index [Indice_fk_Actor_Id]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_fk_Actor_Id] ON [dbo].[Actor_Pelicula]
GO
/****** Object:  Index [PK_Actor]    Script Date: 04/05/2018 11H21.51 ******/
ALTER TABLE [dbo].[Actor] DROP CONSTRAINT [PK_Actor]
GO
/****** Object:  Index [Indice_Actor_Apellido]    Script Date: 04/05/2018 11H21.51 ******/
DROP INDEX [Indice_Actor_Apellido] ON [dbo].[Actor] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Tienda]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Personal]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Pelicula]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Inventario]
GO
/****** Object:  Table [dbo].[Informacion_Pelicula]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Informacion_Pelicula]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Idioma]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Ciudad]
GO
/****** Object:  Table [dbo].[Categoria_Pelicula]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Categoria_Pelicula]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Alquiler]
GO
/****** Object:  Table [dbo].[Actor_Pelicula]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Actor_Pelicula]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 04/05/2018 11H21.51 ******/
DROP TABLE [dbo].[Actor]
GO
USE [master]
GO
/****** Object:  Database [PROYECTOLBD]    Script Date: 04/05/2018 11H21.51 ******/
DROP DATABASE [PROYECTOLBD]
GO
/****** Object:  Database [PROYECTOLBD]    Script Date: 04/05/2018 11H21.51 ******/
CREATE DATABASE [PROYECTOLBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROYECTOLBD', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PROYECTOLBD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PROYECTOLBD_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PROYECTOLBD_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PROYECTOLBD] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PROYECTOLBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PROYECTOLBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PROYECTOLBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROYECTOLBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROYECTOLBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PROYECTOLBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROYECTOLBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PROYECTOLBD] SET  MULTI_USER 
GO
ALTER DATABASE [PROYECTOLBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROYECTOLBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROYECTOLBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROYECTOLBD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PROYECTOLBD]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actor](
	[Actor_Id] [smallint] NOT NULL,
	[Nombre] [varchar](45) NOT NULL,
	[Apellido] [varchar](45) NOT NULL,
	[Last_Update] [timestamp] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Actor_Pelicula]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor_Pelicula](
	[Actor_Id] [smallint] NOT NULL,
	[Pelicula_Id] [smallint] NOT NULL,
	[Last_Update] [timestamp] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquiler](
	[Alquiler_Id] [int] NOT NULL,
	[Fecha_Alquiler] [datetime] NOT NULL,
	[Inventario_Id] [int] NOT NULL,
	[Cliente_Id] [smallint] NOT NULL,
	[Fecha_Devolucion] [datetime] NULL,
	[Personal_Id] [tinyint] NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Alquiler] PRIMARY KEY CLUSTERED 
(
	[Alquiler_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[Categoria_Id] [tinyint] NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Categoria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categoria_Pelicula]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_Pelicula](
	[Pelicula_Id] [smallint] NOT NULL,
	[Categoria_Id] [tinyint] NOT NULL,
	[Last_Update] [timestamp] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudad](
	[Ciudad_Id] [smallint] NOT NULL,
	[Descripcion_Ciudad] [varchar](50) NOT NULL,
	[Pais_Id] [smallint] NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Ciudad_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_Id] [smallint] NOT NULL,
	[Tienda_Id] [tinyint] NOT NULL,
	[Nombre] [varchar](45) NOT NULL,
	[Apellido] [varchar](45) NOT NULL,
	[Email] [varchar](50) NULL,
	[Direccion_Id] [smallint] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Fecha_Registro] [datetime] NOT NULL,
	[Last_Update] [timestamp] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direccion](
	[Direccion_Id] [smallint] NOT NULL,
	[Descripcion_Direccion] [varchar](50) NOT NULL,
	[Descripcion_Direccion2] [varchar](50) NULL,
	[Distrito] [varchar](50) NOT NULL,
	[Ciudad_Id] [smallint] NOT NULL,
	[Codigo_Postal] [varchar](10) NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[Direccion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Idioma](
	[Idioma_Id] [tinyint] NOT NULL,
	[Name] [char](20) NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[Idioma_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Informacion_Pelicula]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacion_Pelicula](
	[Pelicula_Id] [smallint] NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Informacion_Pelicula_1] PRIMARY KEY CLUSTERED 
(
	[Pelicula_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Inventario_Id] [int] NOT NULL,
	[Pelicula_Id] [smallint] NOT NULL,
	[Tienda_Id] [tinyint] NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[Inventario_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pago]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[Pago_Id] [smallint] NOT NULL,
	[Cliente_Id] [smallint] NOT NULL,
	[Personal_Id] [tinyint] NOT NULL,
	[Alquiler_Id] [int] NULL,
	[Pago] [decimal](5, 2) NOT NULL,
	[Fecha_Pago] [datetime] NOT NULL,
	[Last_Update] [timestamp] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[Pago_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pais]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[Pais_Id] [smallint] NOT NULL,
	[Descripcion_Pais] [varchar](50) NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Pais_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[Pelicula_Id] [smallint] NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
	[Descripcion] [text] NULL,
	[Año_Lanzamiento] [date] NULL,
	[Idioma_Id] [tinyint] NOT NULL,
	[Idioma_Original_Id] [tinyint] NULL,
	[Duracion_Alquiler] [tinyint] NOT NULL,
	[Tarifa_Alquiler] [decimal](4, 2) NOT NULL,
	[Tarifa_Cargo_Extra] [decimal](5, 2) NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Pelicula] PRIMARY KEY CLUSTERED 
(
	[Pelicula_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personal](
	[Personal_Id] [tinyint] NOT NULL,
	[Nombre] [varchar](45) NOT NULL,
	[Apellido] [varchar](45) NOT NULL,
	[Direccion_Id] [smallint] NOT NULL,
	[Imagen] [image] NULL,
	[Email] [varchar](50) NULL,
	[Tienda_Id] [tinyint] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Usuario] [varchar](16) NOT NULL,
	[Contraseña] [varchar](50) NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[Personal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 04/05/2018 11H21.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tienda](
	[Tienda_Id] [tinyint] NOT NULL,
	[Gerente_Id] [tinyint] NOT NULL,
	[Direccion_Id] [smallint] NOT NULL,
	[Last_Update] [timestamp] NOT NULL,
 CONSTRAINT [PK_Tienda] PRIMARY KEY CLUSTERED 
(
	[Tienda_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indice_Actor_Apellido]    Script Date: 04/05/2018 11H21.51 ******/
CREATE CLUSTERED INDEX [Indice_Actor_Apellido] ON [dbo].[Actor]
(
	[Apellido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Actor]    Script Date: 04/05/2018 11H21.52 ******/
ALTER TABLE [dbo].[Actor] ADD  CONSTRAINT [PK_Actor] PRIMARY KEY NONCLUSTERED 
(
	[Actor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Actor_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Actor_Id] ON [dbo].[Actor_Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Actor_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Actor_Pelicula]
(
	[Actor_Id] ASC
)
INCLUDE ( 	[Pelicula_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_Alquiler]    Script Date: 04/05/2018 11H21.52 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Indice_Alquiler] ON [dbo].[Alquiler]
(
	[Alquiler_Id] ASC
)
INCLUDE ( 	[Fecha_Alquiler],
	[Inventario_Id],
	[Cliente_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Cliente_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Cliente_Id] ON [dbo].[Alquiler]
(
	[Alquiler_Id] ASC
)
INCLUDE ( 	[Cliente_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Inventario_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Inventario_Id] ON [dbo].[Alquiler]
(
	[Alquiler_Id] ASC
)
INCLUDE ( 	[Inventario_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Personal_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Personal_Id] ON [dbo].[Alquiler]
(
	[Alquiler_Id] ASC
)
INCLUDE ( 	[Personal_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Categoria_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Categoria_Id] ON [dbo].[Categoria_Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Categoria_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Categoria_Pelicula]
(
	[Categoria_Id] ASC
)
INCLUDE ( 	[Pelicula_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Pais_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Pais_Id] ON [dbo].[Ciudad]
(
	[Ciudad_Id] ASC
)
INCLUDE ( 	[Pais_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indice_Cliente_Apellido]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_Cliente_Apellido] ON [dbo].[Cliente]
(
	[Cliente_Id] ASC
)
INCLUDE ( 	[Apellido]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Direccion_Id] ON [dbo].[Cliente]
(
	[Cliente_Id] ASC
)
INCLUDE ( 	[Direccion_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Tienda_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Tienda_Id] ON [dbo].[Cliente]
(
	[Cliente_Id] ASC
)
INCLUDE ( 	[Tienda_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Ciudad_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Ciudad_Id] ON [dbo].[Direccion]
(
	[Direccion_Id] ASC
)
INCLUDE ( 	[Ciudad_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indice_Informacion_Pelicula_Titulo]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_Informacion_Pelicula_Titulo] ON [dbo].[Informacion_Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Titulo]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Inventario]
(
	[Inventario_Id] ASC
)
INCLUDE ( 	[Pelicula_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_Tienda_Id_Pelicula_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_Tienda_Id_Pelicula_Id] ON [dbo].[Inventario]
(
	[Inventario_Id] ASC
)
INCLUDE ( 	[Pelicula_Id],
	[Tienda_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Alquiler_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Alquiler_Id] ON [dbo].[Pago]
(
	[Pago_Id] ASC
)
INCLUDE ( 	[Alquiler_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Cliente_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Cliente_Id] ON [dbo].[Pago]
(
	[Pago_Id] ASC
)
INCLUDE ( 	[Cliente_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Personal_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Personal_Id] ON [dbo].[Pago]
(
	[Pago_Id] ASC
)
INCLUDE ( 	[Personal_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Idioma_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Idioma_Id] ON [dbo].[Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Idioma_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Idioma_Original_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Idioma_Original_Id] ON [dbo].[Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Idioma_Original_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indice_Pelicula_Titulo]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_Pelicula_Titulo] ON [dbo].[Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Titulo]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Direccion_Id] ON [dbo].[Personal]
(
	[Personal_Id] ASC
)
INCLUDE ( 	[Direccion_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Tienda_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Tienda_Id] ON [dbo].[Personal]
(
	[Personal_Id] ASC
)
INCLUDE ( 	[Tienda_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Direccion_Id] ON [dbo].[Tienda]
(
	[Tienda_Id] ASC
)
INCLUDE ( 	[Direccion_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_Tienda_Gerente_Id]    Script Date: 04/05/2018 11H21.52 ******/
CREATE NONCLUSTERED INDEX [Indice_Tienda_Gerente_Id] ON [dbo].[Tienda]
(
	[Tienda_Id] ASC
)
INCLUDE ( 	[Gerente_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actor_Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Actor_Pelicula_Actor] FOREIGN KEY([Actor_Id])
REFERENCES [dbo].[Actor] ([Actor_Id])
GO
ALTER TABLE [dbo].[Actor_Pelicula] CHECK CONSTRAINT [FK_Actor_Pelicula_Actor]
GO
ALTER TABLE [dbo].[Actor_Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Actor_Pelicula_Pelicula] FOREIGN KEY([Pelicula_Id])
REFERENCES [dbo].[Pelicula] ([Pelicula_Id])
GO
ALTER TABLE [dbo].[Actor_Pelicula] CHECK CONSTRAINT [FK_Actor_Pelicula_Pelicula]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Cliente] FOREIGN KEY([Cliente_Id])
REFERENCES [dbo].[Cliente] ([Cliente_Id])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Cliente]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Inventario] FOREIGN KEY([Inventario_Id])
REFERENCES [dbo].[Inventario] ([Inventario_Id])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Inventario]
GO
ALTER TABLE [dbo].[Alquiler]  WITH CHECK ADD  CONSTRAINT [FK_Alquiler_Personal] FOREIGN KEY([Personal_Id])
REFERENCES [dbo].[Personal] ([Personal_Id])
GO
ALTER TABLE [dbo].[Alquiler] CHECK CONSTRAINT [FK_Alquiler_Personal]
GO
ALTER TABLE [dbo].[Categoria_Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Categoria_Pelicula_Categoria] FOREIGN KEY([Categoria_Id])
REFERENCES [dbo].[Categoria] ([Categoria_Id])
GO
ALTER TABLE [dbo].[Categoria_Pelicula] CHECK CONSTRAINT [FK_Categoria_Pelicula_Categoria]
GO
ALTER TABLE [dbo].[Categoria_Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Categoria_Pelicula_Pelicula] FOREIGN KEY([Pelicula_Id])
REFERENCES [dbo].[Pelicula] ([Pelicula_Id])
GO
ALTER TABLE [dbo].[Categoria_Pelicula] CHECK CONSTRAINT [FK_Categoria_Pelicula_Pelicula]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Pais] FOREIGN KEY([Pais_Id])
REFERENCES [dbo].[Pais] ([Pais_Id])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Pais]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Direccion] FOREIGN KEY([Direccion_Id])
REFERENCES [dbo].[Direccion] ([Direccion_Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Direccion]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Tienda] FOREIGN KEY([Tienda_Id])
REFERENCES [dbo].[Tienda] ([Tienda_Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Tienda]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_Ciudad] FOREIGN KEY([Ciudad_Id])
REFERENCES [dbo].[Ciudad] ([Ciudad_Id])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_Ciudad]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Informacion_Pelicula] FOREIGN KEY([Pelicula_Id])
REFERENCES [dbo].[Informacion_Pelicula] ([Pelicula_Id])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Informacion_Pelicula]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Pelicula] FOREIGN KEY([Pelicula_Id])
REFERENCES [dbo].[Pelicula] ([Pelicula_Id])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Pelicula]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Tienda] FOREIGN KEY([Tienda_Id])
REFERENCES [dbo].[Tienda] ([Tienda_Id])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Tienda]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Alquiler] FOREIGN KEY([Alquiler_Id])
REFERENCES [dbo].[Alquiler] ([Alquiler_Id])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Alquiler]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Cliente] FOREIGN KEY([Cliente_Id])
REFERENCES [dbo].[Cliente] ([Cliente_Id])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Cliente]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Personal] FOREIGN KEY([Personal_Id])
REFERENCES [dbo].[Personal] ([Personal_Id])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Personal]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Idioma] FOREIGN KEY([Idioma_Id])
REFERENCES [dbo].[Idioma] ([Idioma_Id])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Idioma]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_Pelicula_Idioma1] FOREIGN KEY([Idioma_Id])
REFERENCES [dbo].[Idioma] ([Idioma_Id])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_Pelicula_Idioma1]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Direccion] FOREIGN KEY([Direccion_Id])
REFERENCES [dbo].[Direccion] ([Direccion_Id])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Direccion]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Tienda] FOREIGN KEY([Tienda_Id])
REFERENCES [dbo].[Tienda] ([Tienda_Id])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Tienda]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Direccion] FOREIGN KEY([Direccion_Id])
REFERENCES [dbo].[Direccion] ([Direccion_Id])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Direccion]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Personal] FOREIGN KEY([Gerente_Id])
REFERENCES [dbo].[Personal] ([Personal_Id])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Personal]
GO
USE [master]
GO
ALTER DATABASE [PROYECTOLBD] SET  READ_WRITE 
GO
