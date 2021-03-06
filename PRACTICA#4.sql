-- AGREGUE LOS INSERT, UPDATE Y DELETE, HASTA EL FINAL DE ESTE SCRIPT --
CREATE DATABASE [PROYECTOLBD]
 CONTAINMENT = NONE
USE [PROYECTOLBD]
GO
ALTER TABLE [dbo].[Tienda] DROP CONSTRAINT [FK_Tienda_Personal]
GO
ALTER TABLE [dbo].[Tienda] DROP CONSTRAINT [FK_Tienda_Informacion_Tienda]
GO
ALTER TABLE [dbo].[Tienda] DROP CONSTRAINT [FK_Tienda_Direccion]
GO
ALTER TABLE [dbo].[Personal] DROP CONSTRAINT [FK_Personal_Informacion_Tienda]
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
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_Pelicula]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_Informacion_Tienda]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [FK_Inventario_Informacion_Pelicula]
GO
ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [FK_Direccion_Ciudad]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Informacion_Tienda]
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
ALTER TABLE [dbo].[Tienda] DROP CONSTRAINT [DF_Tienda_Last_Update]
GO
ALTER TABLE [dbo].[Personal] DROP CONSTRAINT [DF_Personal_Last_Update]
GO
ALTER TABLE [dbo].[Pelicula] DROP CONSTRAINT [DF_Pelicula_Last_Update]
GO
ALTER TABLE [dbo].[Pais] DROP CONSTRAINT [DF_Pais_Last_Update]
GO
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [DF_Pago_Last_Update]
GO
ALTER TABLE [dbo].[Inventario] DROP CONSTRAINT [DF_Inventario_Last_Update]
GO
ALTER TABLE [dbo].[Idioma] DROP CONSTRAINT [DF_Idioma_Last_Update]
GO
ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [DF_Direccion_Last_Update]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [DF_Cliente_Last_Update]
GO
ALTER TABLE [dbo].[Ciudad] DROP CONSTRAINT [DF_Ciudad_Last_Update]
GO
ALTER TABLE [dbo].[Categoria_Pelicula] DROP CONSTRAINT [DF_Categoria_Pelicula_Last_Update]
GO
ALTER TABLE [dbo].[Categoria] DROP CONSTRAINT [DF_Categoria_Last_Update]
GO
ALTER TABLE [dbo].[Alquiler] DROP CONSTRAINT [DF_Alquiler_Last_Update]
GO
ALTER TABLE [dbo].[Actor_Pelicula] DROP CONSTRAINT [DF_Actor_Pelicula_Last_Update]
GO
ALTER TABLE [dbo].[Actor] DROP CONSTRAINT [DF_Actor_Last_Update]
GO
/****** Object:  Index [Indice_Tienda_Gerente_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_Tienda_Gerente_Id] ON [dbo].[Tienda]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Direccion_Id] ON [dbo].[Tienda]
GO
/****** Object:  Index [Indice_fk_Tienda_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Tienda_Id] ON [dbo].[Personal]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Direccion_Id] ON [dbo].[Personal]
GO
/****** Object:  Index [Indice_Pelicula_Titulo]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_Pelicula_Titulo] ON [dbo].[Pelicula]
GO
/****** Object:  Index [Indice_fk_Idioma_Original_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Idioma_Original_Id] ON [dbo].[Pelicula]
GO
/****** Object:  Index [Indice_fk_Idioma_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Idioma_Id] ON [dbo].[Pelicula]
GO
/****** Object:  Index [Indice_fk_Personal_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Personal_Id] ON [dbo].[Pago]
GO
/****** Object:  Index [Indice_fk_Cliente_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Cliente_Id] ON [dbo].[Pago]
GO
/****** Object:  Index [Indice_fk_Alquiler_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Alquiler_Id] ON [dbo].[Pago]
GO
/****** Object:  Index [Indice_Tienda_Id_Pelicula_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_Tienda_Id_Pelicula_Id] ON [dbo].[Inventario]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Inventario]
GO
/****** Object:  Index [Indice_Informacion_Pelicula_Titulo]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_Informacion_Pelicula_Titulo] ON [dbo].[Informacion_Pelicula]
GO
/****** Object:  Index [Indice_fk_Ciudad_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Ciudad_Id] ON [dbo].[Direccion]
GO
/****** Object:  Index [Indice_fk_Tienda_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Tienda_Id] ON [dbo].[Cliente]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Direccion_Id] ON [dbo].[Cliente]
GO
/****** Object:  Index [Indice_Cliente_Apellido]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_Cliente_Apellido] ON [dbo].[Cliente]
GO
/****** Object:  Index [Indice_fk_Pais_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Pais_Id] ON [dbo].[Ciudad]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Categoria_Pelicula]
GO
/****** Object:  Index [Indice_fk_Categoria_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Categoria_Id] ON [dbo].[Categoria_Pelicula]
GO
/****** Object:  Index [Indice_fk_Personal_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Personal_Id] ON [dbo].[Alquiler]
GO
/****** Object:  Index [Indice_fk_Inventario_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Inventario_Id] ON [dbo].[Alquiler]
GO
/****** Object:  Index [Indice_fk_Cliente_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Cliente_Id] ON [dbo].[Alquiler]
GO
/****** Object:  Index [Indice_Alquiler]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_Alquiler] ON [dbo].[Alquiler]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Actor_Pelicula]
GO
/****** Object:  Index [Indice_fk_Actor_Id]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_fk_Actor_Id] ON [dbo].[Actor_Pelicula]
GO
/****** Object:  Index [Indice_Actor_Apellido]    Script Date: 06/05/2018 19H57.51 ******/
DROP INDEX [Indice_Actor_Apellido] ON [dbo].[Actor] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Tienda]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Personal]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Pelicula]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Inventario]
GO
/****** Object:  Table [dbo].[Informacion_Tienda]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Informacion_Tienda]
GO
/****** Object:  Table [dbo].[Informacion_Pelicula]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Informacion_Pelicula]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Idioma]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Direccion]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Ciudad]
GO
/****** Object:  Table [dbo].[Categoria_Pelicula]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Categoria_Pelicula]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Alquiler]
GO
/****** Object:  Table [dbo].[Actor_Pelicula]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Actor_Pelicula]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 06/05/2018 19H57.51 ******/
DROP TABLE [dbo].[Actor]
GO
USE [master]
GO
/****** Object:  Database [PROYECTOLBD]    Script Date: 06/05/2018 19H57.51 ******/
DROP DATABASE [PROYECTOLBD]
GO
/****** Object:  Database [PROYECTOLBD]    Script Date: 06/05/2018 19H57.51 ******/

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
/****** Object:  Table [dbo].[Actor]    Script Date: 06/05/2018 19H57.51 ******/
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
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY NONCLUSTERED 
(
	[Actor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Actor_Pelicula]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor_Pelicula](
	[Actor_Id] [smallint] NOT NULL,
	[Pelicula_Id] [smallint] NOT NULL,
	[Last_Update] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Alquiler]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alquiler](
	[Alquiler_Id] [int] NOT NULL,
	[Fecha_Alquiler] [date] NOT NULL,
	[Inventario_Id] [int] NOT NULL,
	[Cliente_Id] [smallint] NOT NULL,
	[Fecha_Devolucion] [date] NULL,
	[Personal_Id] [tinyint] NOT NULL,
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Alquiler] PRIMARY KEY CLUSTERED 
(
	[Alquiler_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[Categoria_Id] [tinyint] NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Categoria_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categoria_Pelicula]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_Pelicula](
	[Pelicula_Id] [smallint] NOT NULL,
	[Categoria_Id] [tinyint] NOT NULL,
	[Last_Update] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 06/05/2018 19H57.51 ******/
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
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Ciudad_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/05/2018 19H57.51 ******/
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
	[Fecha_Registro] [date] NOT NULL,
	[Last_Update] [datetime] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 06/05/2018 19H57.51 ******/
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
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Direccion] PRIMARY KEY CLUSTERED 
(
	[Direccion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Idioma](
	[Idioma_Id] [tinyint] NOT NULL,
	[Name] [char](20) NOT NULL,
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[Idioma_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Informacion_Pelicula]    Script Date: 06/05/2018 19H57.51 ******/
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
/****** Object:  Table [dbo].[Informacion_Tienda]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacion_Tienda](
	[Tienda_Id] [tinyint] NOT NULL,
	[Nombre_Tienda] [varchar](45) NOT NULL,
	[Descripcion_Tienda] [text] NULL,
 CONSTRAINT [PK_Informacion_Tienda] PRIMARY KEY CLUSTERED 
(
	[Tienda_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Inventario_Id] [int] NOT NULL,
	[Pelicula_Id] [smallint] NOT NULL,
	[Tienda_Id] [tinyint] NOT NULL,
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[Inventario_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pago]    Script Date: 06/05/2018 19H57.51 ******/
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
	[Fecha_Pago] [date] NOT NULL,
	[Last_Update] [datetime] NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[Pago_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pais]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[Pais_Id] [smallint] NOT NULL,
	[Descripcion_Pais] [varchar](50) NOT NULL,
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Pais_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 06/05/2018 19H57.51 ******/
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
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Pelicula] PRIMARY KEY CLUSTERED 
(
	[Pelicula_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 06/05/2018 19H57.51 ******/
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
	[Email] [varchar](50) NULL,
	[Tienda_Id] [tinyint] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Usuario] [varchar](16) NOT NULL,
	[Contraseña] [varchar](50) NULL,
	[Last_Update] [datetime] NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[Personal_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 06/05/2018 19H57.51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tienda](
	[Tienda_Id] [tinyint] NOT NULL,
	[Gerente_Id] [tinyint] NOT NULL,
	[Direccion_Id] [smallint] NOT NULL,
	[Last_Update] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indice_Actor_Apellido]    Script Date: 06/05/2018 19H57.51 ******/
CREATE CLUSTERED INDEX [Indice_Actor_Apellido] ON [dbo].[Actor]
(
	[Apellido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Actor_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Actor_Id] ON [dbo].[Actor_Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Actor_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Actor_Pelicula]
(
	[Actor_Id] ASC
)
INCLUDE ( 	[Pelicula_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_Alquiler]    Script Date: 06/05/2018 19H57.51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Indice_Alquiler] ON [dbo].[Alquiler]
(
	[Alquiler_Id] ASC
)
INCLUDE ( 	[Fecha_Alquiler],
	[Inventario_Id],
	[Cliente_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Cliente_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Cliente_Id] ON [dbo].[Alquiler]
(
	[Alquiler_Id] ASC
)
INCLUDE ( 	[Cliente_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Inventario_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Inventario_Id] ON [dbo].[Alquiler]
(
	[Alquiler_Id] ASC
)
INCLUDE ( 	[Inventario_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Personal_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Personal_Id] ON [dbo].[Alquiler]
(
	[Alquiler_Id] ASC
)
INCLUDE ( 	[Personal_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Categoria_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Categoria_Id] ON [dbo].[Categoria_Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Categoria_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Categoria_Pelicula]
(
	[Categoria_Id] ASC
)
INCLUDE ( 	[Pelicula_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Pais_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Pais_Id] ON [dbo].[Ciudad]
(
	[Ciudad_Id] ASC
)
INCLUDE ( 	[Pais_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indice_Cliente_Apellido]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_Cliente_Apellido] ON [dbo].[Cliente]
(
	[Cliente_Id] ASC
)
INCLUDE ( 	[Apellido]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Direccion_Id] ON [dbo].[Cliente]
(
	[Cliente_Id] ASC
)
INCLUDE ( 	[Direccion_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Tienda_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Tienda_Id] ON [dbo].[Cliente]
(
	[Cliente_Id] ASC
)
INCLUDE ( 	[Tienda_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Ciudad_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Ciudad_Id] ON [dbo].[Direccion]
(
	[Direccion_Id] ASC
)
INCLUDE ( 	[Ciudad_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indice_Informacion_Pelicula_Titulo]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_Informacion_Pelicula_Titulo] ON [dbo].[Informacion_Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Titulo]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Pelicula_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Pelicula_Id] ON [dbo].[Inventario]
(
	[Inventario_Id] ASC
)
INCLUDE ( 	[Pelicula_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_Tienda_Id_Pelicula_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_Tienda_Id_Pelicula_Id] ON [dbo].[Inventario]
(
	[Inventario_Id] ASC
)
INCLUDE ( 	[Pelicula_Id],
	[Tienda_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Alquiler_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Alquiler_Id] ON [dbo].[Pago]
(
	[Pago_Id] ASC
)
INCLUDE ( 	[Alquiler_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Cliente_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Cliente_Id] ON [dbo].[Pago]
(
	[Pago_Id] ASC
)
INCLUDE ( 	[Cliente_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Personal_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Personal_Id] ON [dbo].[Pago]
(
	[Pago_Id] ASC
)
INCLUDE ( 	[Personal_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Idioma_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Idioma_Id] ON [dbo].[Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Idioma_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Idioma_Original_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Idioma_Original_Id] ON [dbo].[Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Idioma_Original_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Indice_Pelicula_Titulo]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_Pelicula_Titulo] ON [dbo].[Pelicula]
(
	[Pelicula_Id] ASC
)
INCLUDE ( 	[Titulo]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Direccion_Id] ON [dbo].[Personal]
(
	[Personal_Id] ASC
)
INCLUDE ( 	[Direccion_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Tienda_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Tienda_Id] ON [dbo].[Personal]
(
	[Personal_Id] ASC
)
INCLUDE ( 	[Tienda_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_fk_Direccion_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_fk_Direccion_Id] ON [dbo].[Tienda]
(
	[Tienda_Id] ASC
)
INCLUDE ( 	[Direccion_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Indice_Tienda_Gerente_Id]    Script Date: 06/05/2018 19H57.51 ******/
CREATE NONCLUSTERED INDEX [Indice_Tienda_Gerente_Id] ON [dbo].[Tienda]
(
	[Tienda_Id] ASC
)
INCLUDE ( 	[Gerente_Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actor] ADD  CONSTRAINT [DF_Actor_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Actor_Pelicula] ADD  CONSTRAINT [DF_Actor_Pelicula_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Alquiler] ADD  CONSTRAINT [DF_Alquiler_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Categoria] ADD  CONSTRAINT [DF_Categoria_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Categoria_Pelicula] ADD  CONSTRAINT [DF_Categoria_Pelicula_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Ciudad] ADD  CONSTRAINT [DF_Ciudad_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [DF_Cliente_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Direccion] ADD  CONSTRAINT [DF_Direccion_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Idioma] ADD  CONSTRAINT [DF_Idioma_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Inventario] ADD  CONSTRAINT [DF_Inventario_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Pago] ADD  CONSTRAINT [DF_Pago_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Pais] ADD  CONSTRAINT [DF_Pais_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Pelicula] ADD  CONSTRAINT [DF_Pelicula_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Personal] ADD  CONSTRAINT [DF_Personal_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
GO
ALTER TABLE [dbo].[Tienda] ADD  CONSTRAINT [DF_Tienda_Last_Update]  DEFAULT (getdate()) FOR [Last_Update]
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
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Informacion_Tienda] FOREIGN KEY([Tienda_Id])
REFERENCES [dbo].[Informacion_Tienda] ([Tienda_Id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Informacion_Tienda]
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
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Informacion_Tienda] FOREIGN KEY([Tienda_Id])
REFERENCES [dbo].[Informacion_Tienda] ([Tienda_Id])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Informacion_Tienda]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK_Inventario_Pelicula] FOREIGN KEY([Pelicula_Id])
REFERENCES [dbo].[Pelicula] ([Pelicula_Id])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_Pelicula]
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
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Informacion_Tienda] FOREIGN KEY([Tienda_Id])
REFERENCES [dbo].[Informacion_Tienda] ([Tienda_Id])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Informacion_Tienda]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Direccion] FOREIGN KEY([Direccion_Id])
REFERENCES [dbo].[Direccion] ([Direccion_Id])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Direccion]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Informacion_Tienda] FOREIGN KEY([Tienda_Id])
REFERENCES [dbo].[Informacion_Tienda] ([Tienda_Id])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Informacion_Tienda]
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

USE [PROYECTOLBD]
GO
-----------------------------------------------------------------------------------------------------------------------------------------
-- INSERT -- INSERT -- -- INSERT -- INSERT -- -- INSERT -- INSERT --  -- INSERT -- INSERT -- -- INSERT -- INSERT -- -- INSERT -- INSERT -
-----------------------------------------------------------------------------------------------------------------------------------------

select * from actor

INSERT INTO [dbo].[Actor]([Actor_Id],[Nombre],[Apellido],[Last_Update])
     VALUES ('123', 'Timothy Francis', 'Robbins', getdate()),
			('456', 'Alfredo', 'James Pacino' ,getdate()),
			('789', 'Christian Charles', 'Philip Bale' ,getdate()),
			('012', 'Henry', 'Jaynes Fonda' ,getdate()),
			('345', 'William', 'John Neeson' ,getdate()),
			('678', 'Elijah', 'Jordan Wood' ,getdate()),
			('901', 'Robert John', 'Downey Jr.' ,getdate()),
			('234', 'Mark', 'Richard Hamill' ,getdate()),
			('567', 'Juan', 'Moreno y Herrera-Jiménez' ,getdate())
      --    (<Actor_Id, smallint,>,<Nombre, varchar(45),>,<Apellido, varchar(45),>,<Last_Update, datetime,>)
GO

select * from Actor_Pelicula

INSERT INTO [dbo].[Actor_Pelicula]
           ([Actor_Id],[Pelicula_Id],[Last_Update])
     VALUES ('123', '1111', getdate()),
			('456', '2222' ,getdate()),
			('456', '3333' ,getdate()),
			('789', '4444' ,getdate()),
			('012', '5555' ,getdate()),
			('345', '6666' ,getdate()),
			('678', '7777' ,getdate()),
			('901', '8888' ,getdate()),
			('234', '9999' ,getdate()),
			('567', '10101' ,getdate())
      --    (<Actor_Id, smallint,>,<Pelicula_Id, smallint,>,<Last_Update, datetime,>)
GO

select * from Categoria

INSERT INTO [dbo].[Categoria]([Categoria_Id],[Nombre],[Last_Update])
     VALUES ('1', 'Accion', getdate()),
			('2', 'Accion y Ciencia Ficcion', getdate()),
			('3', 'Animacion', getdate()),
			('4', 'Aventuras', getdate()),
			('5', 'Ciencia Ficcion', getdate()),
			('6', 'Dramaticas', getdate()),
			('7', 'Infantil', getdate()),
			('8', 'Musicales', getdate()),
			('9', 'Romantica', getdate()),
			('10', 'Suspenso', getdate()),
			('11', 'Terror', getdate()),
			('12', 'Basada en Hechos Reales', getdate())
      --    (<Categoria_Id, tinyint,>,<Nombre, varchar(25),>,<Last_Update, datetime,>)
GO

select * from Categoria_Pelicula

INSERT INTO [dbo].[Categoria_Pelicula]
           ([Pelicula_Id],[Categoria_Id],[Last_Update])
     VALUES ('1111', '6', getdate()),
			('2222', '6', getdate()),
			('3333', '6', getdate()),
			('4444', '2', getdate()),
			('5555', '6', getdate()),
			('6666', '12', getdate()),
			('7777', '4', getdate()),
			('8888', '4', getdate()),
			('9999', '2', getdate()),
			('10101', '10', getdate())
       --   (<Pelicula_Id, smallint,>,<Categoria_Id, tinyint,>,<Last_Update, datetime,>)
GO

select * from Ciudad

INSERT INTO [dbo].[Ciudad]
           ([Ciudad_Id],[Descripcion_Ciudad],[Pais_Id],[Last_Update])
     VALUES ('11', 'Kabul','1', getdate()),
			('22', 'Berlin', '2',getdate()),
			('33', 'Riad','3', getdate()),
			('44', 'Argel','4', getdate()),
			('55', 'Buenos Aires','5', getdate()),
			('66', 'Camberra','6', getdate()),
			('77', 'Viena','7', getdate()),
			('88', 'Nasau','8', getdate()),
			('99', 'Bruselas','9', getdate()),
			('100', 'Belmopan','10', getdate()),
			('111', 'Minsk','11', getdate()),
			('122', 'Sucre','12', getdate()),
			('133', 'Brasilia','13', getdate()),
			('144', 'Sofia','14', getdate()),
			('155', 'Ottawa','15', getdate()),
			('166', 'Santiago de Chile','16', getdate()),
			('177', 'Pekin','17', getdate()),
			('188', 'Bogota','18', getdate()),
			('199', 'Pionyang','19', getdate()),
			('200', 'Seul','20', getdate()),
			('211', 'San Jose','21', getdate()),
			('222', 'Zagreb','22', getdate()),
			('233', 'La habana','23', getdate()),
			('244', 'Copenhague','24', getdate()),
			('255', 'Quito','25', getdate()),
			('266', 'El Cairo','26', getdate()),
			('277', 'San Salvador','27', getdate()),
			('288', 'Madrir','28', getdate()),
			('299', 'Washington','29', getdate()),
			('300', 'Manila','30', getdate()),
			('311', 'Paris','31', getdate()),
			('322', 'Tiflis','32', getdate()),
			('333', 'Saint George','33', getdate()),
			('344', 'Atenas','34', getdate()),
			('355', 'Ciudad de Guatemala','35', getdate()),
			('366', 'Puerto Principe','36', getdate()),
			('377', 'Tegucigalpa','37', getdate()),
			('388', 'Nueva Delhi','38', getdate()),
			('399', 'Teheran','39', getdate()),
			('400', 'Roma','40', getdate()),
			('411', 'Tokio','41', getdate()),
			('422', 'Tripoli','42', getdate()),
			('433', 'Luxemburgo','43', getdate()),
			('444', 'Antananarivo','44', getdate()),
			('455', 'Kuala Lumpur','45', getdate()),
			('466', 'Rabat','46', getdate()),
			('477', 'Ciudad de Mexico','47', getdate()),
			('488', 'Managua','48', getdate()),
			('499', 'Abuya','49', getdate()),
			('500', 'OTRO','50', getdate()),
			('510', 'Monterrey', '47', getdate())

       --   (<Ciudad_Id, smallint,>,<Descripcion_Ciudad, varchar(50),>,<Pais_Id, smallint,>,<Last_Update, datetime,>)
GO

select * from idioma

INSERT INTO [dbo].[Idioma]([Idioma_Id],[Name],[Last_Update])
     VALUES ('11', 'Albanes', getdate()),
			('22', 'Aleman', getdate()),
			('33', 'Arabe', getdate()),
			('44', 'Bulgaro', getdate()),
			('55', 'Catones', getdate()),
			('66', 'Chino Mandarin', getdate()),
			('77', 'Coreano', getdate()),
			('88', 'Español', getdate()),
			('99', 'Filipino', getdate()),
			('101', 'frances', getdate()),
			('111', 'Ingles', getdate()),
			('121', 'Japones', getdate()),
			('131', 'Latino', getdate()),
			('141', 'Ruso', getdate())

       --   (<Idioma_Id, tinyint,>,<Name, char(20),>,<Last_Update, datetime,>)
GO


select * from Informacion_Pelicula

INSERT INTO [dbo].[Informacion_Pelicula]([Pelicula_Id],[Titulo],[Descripcion])
     VALUES ('1111', 'Sueño de fuga','Dos hombres encarcelados se unen durante varios años, encontrando consuelo y eventual redención a través de actos de decencia común.'),
			('2222', 'El Padrino', 'El anciano patriarca de una dinastía de crimen organizado transfiere el control de su imperio clandestino a su renuente hijo.'),
			('3333', 'El padrino: Parte II ', 'Se retrata la vida y la carrera temprana de Vito Corleone en la ciudad de Nueva York en la década de 1920, mientras que su hijo, Michael, se expande y refuerza su control sobre el sindicato del crimen familiar.'),
			('4444', 'Batman: El Caballero de la Noche', 'Cuando la amenaza conocida como el Joker surge de su misterioso pasado, causa estragos y caos en la gente de Gotham. El Caballero Oscuro debe aceptar una de las mejores pruebas psicológicas y físicas de su capacidad para luchar contra la injusticia.'),
			('5555', '12 hombres en pugna', 'Un jurado reprimido intenta evitar un error judicial forzando a sus colegas a reconsiderar la evidencia.'),
			('6666', 'La lista de Schindler', 'En la Polonia ocupada por los alemanes durante la Segunda Guerra Mundial, Oskar Schindler se preocupa gradualmente por su fuerza laboral judía después de presenciar la persecución de los alemanes nazis.'),
			('7777', 'El señor de los anillos - El retorno del rey', 'Gandalf y Aragorn conducen al Mundo de Hombres contra el ejército de Sauron para sacar su mirada de Frodo y Sam cuando se acercan al Monte del Destino con el Anillo Único.'),
			('8888', 'Avengers: Infinity War', 'Los Vengadores y sus aliados deben estar dispuestos a sacrificar todo en un intento de derrotar al poderoso Thanos antes de que su bombardeo de devastación y ruina ponga fin al universo.'),
			('9999', 'La guerra de las galaxias', 'Luke Skywalker une fuerzas con un Jedi Knight, un piloto engreído, un wookiee y dos droides para salvar a la galaxia de la estación de batalla que destruye el mundo del Imperio mientras también intenta rescatar a la Princesa Leia del malvado Darth Vader.'),
			('10101', 'El perfecto asesino', 'Mathilda, una niña de 12 años, es tomada a regañadientes por Léon, una asesina profesional, después de que su familia es asesinada. Léon y Mathilda forman una relación inusual, ya que ella se convierte en su protegida y descubre el oficio del asesino.')
      --   (<Pelicula_Id, smallint,>,<Titulo, varchar(255),>,<Descripcion, text,>)
GO



select * from Pais

INSERT INTO [dbo].[Pais]([Pais_Id],[Descripcion_Pais],[Last_Update])
     VALUES ('1', 'Afganistan', getdate()),
			('2', 'Alemania', getdate()),
			('3', 'Arabia Saudita', getdate()),
			('4', 'Argelia', getdate()),
			('5', 'Argentina', getdate()),
			('6', 'Australia', getdate()),
			('7', 'Austria', getdate()),
			('8', 'Bahamas', getdate()),
			('9', 'Belgica', getdate()),
			('10', 'Belice', getdate()),
			('11', 'Bielorrusia', getdate()),
			('12', 'Bolivia', getdate()),
			('13', 'Brasil', getdate()),
			('14', 'Bulgaria', getdate()),
			('15', 'Canada', getdate()),
			('16', 'Chile', getdate()),
			('17', 'China', getdate()),
			('18', 'Colombia', getdate()),
			('19', 'Corea del Norte', getdate()),
			('20', 'Corea del Sur', getdate()),
			('21', 'Costa Rica', getdate()),
			('22', 'Croacia', getdate()),
			('23', 'Cuba', getdate()),
			('24', 'Dinamarca', getdate()),
			('25', 'Ecuador', getdate()),
			('26', 'Egipto', getdate()),
			('27', 'El Salvador', getdate()),
			('28', 'España', getdate()),
			('29', 'Estados Unidos', getdate()),
			('30', 'Filipinas', getdate()),
			('31', 'Francia', getdate()),
			('32', 'Georgia', getdate()),
			('33', 'Granada', getdate()),
			('34', 'Grecia', getdate()),
			('35', 'Guatemala', getdate()),
			('36', 'Haiti', getdate()),
			('37', 'Honduras', getdate()),
			('38', 'India', getdate()),
			('39', 'Irak', getdate()),
			('40', 'Italia', getdate()),
			('41', 'Japon', getdate()),
			('42', 'Libia', getdate()),
			('43', 'Luxemburgo', getdate()),
			('44', 'Madagascar', getdate()),
			('45', 'Malasia', getdate()),
			('46', 'Marruecos', getdate()),
			('47', 'Mexico', getdate()),
			('48', 'Nicaragua', getdate()),
			('49', 'Nigeria', getdate()),
			('50', 'OTRO', getdate())


        --  (<Pais_Id, smallint,>,<Descripcion_Pais, varchar(50),>,<Last_Update, datetime,>)
GO


select * from Pelicula

INSERT INTO [dbo].[Pelicula]([Pelicula_Id],[Titulo],[Descripcion],[Año_Lanzamiento],[Idioma_Id],[Idioma_Original_Id],[Duracion_Alquiler],[Tarifa_Alquiler],[Tarifa_Cargo_Extra],[Last_Update])
     VALUES  ('1111', 'Sueño de fuga','Dos hombres encarcelados se unen durante varios años, encontrando consuelo y eventual redención a través de actos de decencia común.', '1994-10-14', '111', '111', '10', '58.50', '10.50', getdate()),
			 ('2222', 'El Padrino', 'El anciano patriarca de una dinastía de crimen organizado transfiere el control de su imperio clandestino a su renuente hijo.', '1972-10-04', '88', '111', '10', '60.70', '12.50', getdate()),
			 ('3333', 'El padrino: Parte II ', 'Se retrata la vida y la carrera temprana de Vito Corleone en la ciudad de Nueva York en la década de 1920, mientras que su hijo, Michael, se expande y refuerza su control sobre el sindicato del crimen familiar.', '1974-12-20', '88', '111', '10', '65.10', '13.10', getdate()),
	         ('4444', 'Batman: El Caballero de la Noche', 'Cuando la amenaza conocida como el Joker surge de su misterioso pasado, causa estragos y caos en la gente de Gotham. El Caballero Oscuro debe aceptar una de las mejores pruebas psicológicas y físicas de su capacidad para luchar contra la injusticia.', '2008-07-18', '111', '111', '10', '80.40', '11.50', getdate()),
			 ('5555', '12 hombres en pugna', 'Un jurado reprimido intenta evitar un error judicial forzando a sus colegas a reconsiderar la evidencia.', '1957-04-16', '111', '111', '10', '40.15', '8.30', getdate()),
			 ('6666', 'La lista de Schindler', 'En la Polonia ocupada por los alemanes durante la Segunda Guerra Mundial, Oskar Schindler se preocupa gradualmente por su fuerza laboral judía después de presenciar la persecución de los alemanes nazis.', '1994-02-04', '111', '22', '10', '49.15', '9.60', getdate()),
			 ('7777', 'El señor de los anillos - El retorno del rey', 'Gandalf y Aragorn conducen al Mundo de Hombres contra el ejército de Sauron para sacar su mirada de Frodo y Sam cuando se acercan al Monte del Destino con el Anillo Único.', '2003-12-17', '131', '111', '10', '99.15', '19.40', getdate()),
			 ('8888', 'Avengers: Infinity War', 'Los Vengadores y sus aliados deben estar dispuestos a sacrificar todo en un intento de derrotar al poderoso Thanos antes de que su bombardeo de devastación y ruina ponga fin al universo.', '2018-04-27', '131', '111', '10', '98.25', '24.80', getdate()),
		     ('9999', 'La guerra de las galaxias', 'Luke Skywalker une fuerzas con un Jedi Knight, un piloto engreído, un wookiee y dos droides para salvar a la galaxia de la estación de batalla que destruye el mundo del Imperio mientras también intenta rescatar a la Princesa Leia del malvado Darth Vader.', '1977-12-23', '111', '111', '10', '48.25', '14.80', getdate()),
             ('10101', 'El perfecto asesino', 'Mathilda, una niña de 12 años, es tomada a regañadientes por Léon, una asesina profesional, después de que su familia es asesinada. Léon y Mathilda forman una relación inusual, ya que ella se convierte en su protegida y descubre el oficio del asesino.', '1994-09-14', '111', '101', '10', '58.50', '12.50', getdate())
        --  (<Pelicula_Id, smallint,>,<Titulo, varchar(255),>,
		-- <Descripcion, text,>,<Año_Lanzamiento, date,>,<Idioma_Id, tinyint,>,
		-- <Idioma_Original_Id, tinyint,>,<Duracion_Alquiler, tinyint,>,
		-- <Tarifa_Alquiler, decimal(4,2),>,<Tarifa_Cargo_Extra, decimal(5,2),>,
		-- <Last_Update, datetime,>)
GO


select * from Direccion

INSERT INTO [dbo].[Direccion]([Direccion_Id],[Descripcion_Direccion],[Descripcion_Direccion2],[Distrito],[Ciudad_Id],[Codigo_Postal],[Telefono],[Last_Update])
     VALUES ('987', 'Av. Universidad', '', 'San Nicolás de los Garza', '510', '66451', '81 8329 4000', getdate()),
			('988', 'Av. Universidad2', '', 'San Nicolás de los Garza2', '510', '66451', '01 81 8329 4000', getdate()),
			('989', 'Av. Universidad3', '', 'San Nicolás de los Garza3', '510', '66451', '81 8329 4000', getdate()),
			('990', 'Av. Universidad3', '', 'San Nicolás de los Garza3', '510', '66451', '81 8329 4001', getdate()),
			('991', 'Av. Las Americas', '', 'San Nicolás de los Garza', '510', '66451', '81 8329 4000', getdate())
       --   (<Direccion_Id, smallint,>,<Descripcion_Direccion, varchar(50),>,<Descripcion_Direccion2, varchar(50),>,<Distrito, varchar(50),>,<Ciudad_Id, smallint,>,<Codigo_Postal, varchar(10),>,<Telefono, varchar(20),>,<Last_Update, datetime,>)
GO



select * from Personal

INSERT INTO [dbo].[Personal]([Personal_Id],[Nombre],[Apellido],[Direccion_Id],[Email],[Tienda_Id],[Activo],[Usuario],[Contraseña],[Last_Update])
     VALUES ('29', 'jose israel', 'resendiz valencia', '988', 'israel.resendizvlnc@uanl.edu.mx', '33', 'true', 'JIRV', 'PASSWORD', getdate())
        --  (<Personal_Id, tinyint,>,<Nombre, varchar(45),>,<Apellido, varchar(45),>,<Direccion_Id, smallint,>,<Email, varchar(50),>,<Tienda_Id, tinyint,>,<Activo, bit,>,<Usuario, varchar(16),>,<Contraseña, varchar(50),>,<Last_Update, datetime,>)
GO


select * from Tienda

INSERT INTO [dbo].[Tienda]([Tienda_Id],[Gerente_Id],[Direccion_Id],[Last_Update])
     VALUES ('33', '29', '987', getdate())
        -- (<Tienda_Id, tinyint,>,<Gerente_Id, tinyint,>,<Direccion_Id, smallint,>,<Last_Update, datetime,>)
GO



select * from Informacion_Tienda
INSERT INTO [dbo].[Informacion_Tienda]
           ([Tienda_Id]
           ,[Nombre_Tienda]
           ,[Descripcion_Tienda])
     VALUES ('33', 'PELICULAS', 'Alquila y Compra Peliculas de Estreno')
           -- (<Tienda_Id, tinyint,>,<Nombre_Tienda, varchar(45),>,<Descripcion_Tienda, text,>)
GO


select * from Cliente

INSERT INTO [dbo].[Cliente]
           ([Cliente_Id],[Tienda_Id],[Nombre],[Apellido],[Email],[Direccion_Id],[Activo],[Fecha_Registro],[Last_Update])
     VALUES ('29101', '33', 'Jose Israel', 'Resendiz', 'irv_999@hotmail.com', '989', 'true', getdate(), getdate()),
			('29102', '33', 'Jesus Eduardo', 'Alvarado', 'eduardo_alvarado@hotmail.com', '989', 'true', getdate(), getdate()),
			('29103', '33', 'Diego', 'Ghio', 'Ghio_Diego9@hotmail.com', '989', 'true', getdate(), getdate()),
			('29104', '33', 'Diego', 'Huerta', 'Huerta@gmail.com', '989', 'true', getdate(), getdate())
			
      --    (<Cliente_Id, smallint,>,<Tienda_Id, tinyint,>,<Nombre, varchar(45),>,<Apellido, varchar(45),>,<Email, varchar(50),>,<Direccion_Id, smallint,>,<Activo, bit,>,<Fecha_Registro, date,>,<Last_Update, datetime,>)
GO

select * from Inventario

INSERT INTO [dbo].[Inventario]([Inventario_Id],[Pelicula_Id],[Tienda_Id],[Last_Update])
     VALUES ('33', '1111', '33', getdate()),
			('34', '2222', '33', getdate()),
			('35', '3333', '33', getdate()),
			('36', '4444', '33', getdate()),
			('37', '5555', '33', getdate()),
			('38', '6666', '33', getdate()),
			('39', '7777', '33', getdate()),
			('40', '8888', '33', getdate()),
			('41', '9999', '33', getdate()),
			('42', '10101', '33', getdate())
       --   (<Inventario_Id, int,>,<Pelicula_Id, smallint,>,<Tienda_Id, tinyint,>,<Last_Update, datetime,>)
GO


select * from Pago

INSERT INTO [dbo].[Pago]([Pago_Id],[Cliente_Id],[Personal_Id],[Alquiler_Id],[Pago],[Fecha_Pago],[Last_Update])
     VALUES ('101', '29101', '29', '1', '40.15', getdate(), getdate())
       --   (<Pago_Id, smallint,>,<Cliente_Id, smallint,>,<Personal_Id, tinyint,>,<Alquiler_Id, int,>,<Pago, decimal(5,2),>,<Fecha_Pago, date,>,<Last_Update, datetime,>)
GO

select * from Alquiler

INSERT INTO [dbo].[Alquiler]([Alquiler_Id],[Fecha_Alquiler],[Inventario_Id],[Cliente_Id],[Fecha_Devolucion],[Personal_Id],[Last_Update])
     VALUES ('1', getdate(), '37', '29101', '2018-05-10', '29', getdate())
      --    (<Alquiler_Id, int,>,<Fecha_Alquiler, date,>,<Inventario_Id, int,>,<Cliente_Id, smallint,>,<Fecha_Devolucion, date,>,<Personal_Id, tinyint,>,<Last_Update, datetime,>)
GO



-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE -- UPDATE -- -- UPDATE -- UPDATE -- -- UPDATE -- UPDATE -- -- UPDATE -- UPDATE -- -- UPDATE -- UPDATE -- -- UPDATE -- UPDATE -- 
-----------------------------------------------------------------------------------------------------------------------------------------

					-- UPDATE DE DIRECCION --

UPDATE Direccion set Descripcion_Direccion= 'Av. Hector Caballero', Descripcion_Direccion2='#1721', Distrito='DTTO 04', Codigo_Postal='21386', Last_Update=getdate() where Direccion_Id=987
UPDATE Direccion set Descripcion_Direccion= 'Miguel Alemana', Descripcion_Direccion2='Carretera 80', Distrito='DTTO 08',Codigo_Postal='43680', Last_Update=getdate() where Direccion_Id=988
UPDATE Direccion set Descripcion_Direccion= 'Av. Acapulco', Distrito='DTTO 11', Codigo_Postal='12916', Last_Update=getdate() where Direccion_Id=989
UPDATE Direccion set Descripcion_Direccion= 'Av. Universidad', Distrito='DTTO 04', Codigo_Postal='66451', Last_Update=getdate() where Direccion_Id=990

					select * from Direccion


					-- UPDATE DE Pelicula_Id --

UPDATE Pelicula set Tarifa_Alquiler='60.78',Duracion_Alquiler='12', Last_Update=getdate() where Pelicula_Id=10101
UPDATE Pelicula set Tarifa_Cargo_Extra='27.65',Duracion_Alquiler='16', Last_Update=getdate() where Pelicula_Id=8888

					select * from Pelicula

					-- UPDATE DE Cliente --

UPDATE Cliente set Direccion_Id='988', Last_Update=getdate() where Cliente_Id=29102
UPDATE Cliente set Direccion_Id='989', Last_Update=getdate() where Cliente_Id=29103
UPDATE Cliente set Direccion_Id='990', Last_Update=getdate() where Cliente_Id=29104
			
					select * from Cliente

-----------------------------------------------------------------------------------------------------------------------------------------
-- DELETE -- DELETE -- -- DELETE -- DELETE -- -- DELETE -- DELETE -- -- DELETE -- DELETE -- -- DELETE -- DELETE -- -- DELETE -- DELETE --
-----------------------------------------------------------------------------------------------------------------------------------------

					-- DELETE DE Cliente --

DELETE FROM Cliente WHERE Direccion_Id=988

	select * from Cliente

DELETE FROM Direccion WHERE Distrito='San Nicolás de los Garza'

	select * from Direccion
