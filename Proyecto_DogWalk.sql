USE [master]
GO
/****** Object:  Database [DogWalk]    Script Date: 25/10/2022 12:44:46 p. m. ******/
CREATE DATABASE [DogWalk]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DogWalk', FILENAME = N'E:\Sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\DogWalk.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DogWalk_log', FILENAME = N'E:\Sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\DogWalk_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DogWalk] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DogWalk].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DogWalk] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DogWalk] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DogWalk] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DogWalk] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DogWalk] SET ARITHABORT OFF 
GO
ALTER DATABASE [DogWalk] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DogWalk] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DogWalk] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DogWalk] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DogWalk] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DogWalk] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DogWalk] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DogWalk] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DogWalk] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DogWalk] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DogWalk] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DogWalk] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DogWalk] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DogWalk] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DogWalk] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DogWalk] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DogWalk] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DogWalk] SET RECOVERY FULL 
GO
ALTER DATABASE [DogWalk] SET  MULTI_USER 
GO
ALTER DATABASE [DogWalk] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DogWalk] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DogWalk] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DogWalk] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DogWalk] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DogWalk] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DogWalk', N'ON'
GO
ALTER DATABASE [DogWalk] SET QUERY_STORE = OFF
GO
USE [DogWalk]
GO
/****** Object:  Table [dbo].[Estrellas]    Script Date: 25/10/2022 12:44:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estrellas](
	[calificacion] [tinyint] NOT NULL,
	[rango] [tinyint] NULL,
	[modificacion] [tinyint] NULL,
 CONSTRAINT [PK_Estrellas] PRIMARY KEY CLUSTERED 
(
	[calificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funciones]    Script Date: 25/10/2022 12:44:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funciones](
	[tipo_paseo] [nvarchar](10) NOT NULL,
	[dias_paseo] [datetime] NOT NULL,
	[hora] [datetime] NOT NULL,
	[ubicacion] [nvarchar](15) NOT NULL,
	[mensaje] [nvarchar](25) NOT NULL,
	[valor_paseo] [int] NULL,
	[cantidad] [int] IDENTITY(1,6) NOT NULL,
 CONSTRAINT [PK_Funciones] PRIMARY KEY CLUSTERED 
(
	[tipo_paseo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gps]    Script Date: 25/10/2022 12:44:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gps](
	[celulares] [int] IDENTITY(1,15) NOT NULL,
	[distancia] [int] NULL,
	[ubicacion] [nvarchar](10) NOT NULL,
	[id_paseador] [int] NULL,
	[id_usuario] [int] NULL,
 CONSTRAINT [PK_Gps] PRIMARY KEY CLUSTERED 
(
	[celulares] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingreso]    Script Date: 25/10/2022 12:44:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingreso](
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Ingreso] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mascotas]    Script Date: 25/10/2022 12:44:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascotas](
	[nombre_mascota] [nvarchar](10) NOT NULL,
	[edad_mascota] [tinyint] NULL,
	[raza_mascota] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Mascotas] PRIMARY KEY CLUSTERED 
(
	[nombre_mascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ocupacion]    Script Date: 25/10/2022 12:44:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ocupacion](
	[cantidad] [int] IDENTITY(1,6) NOT NULL,
	[rango_mascota] [tinyint] NOT NULL,
	[lista_mascota] [tinyint] NOT NULL,
	[nombre_mascota] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Ocupacion] PRIMARY KEY CLUSTERED 
(
	[cantidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paseador]    Script Date: 25/10/2022 12:44:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paseador](
	[Id_paseador] [int] IDENTITY(1,10) NOT NULL,
	[nombre_paseador] [nvarchar](15) NOT NULL,
	[numero_celular] [nvarchar](15) NOT NULL,
	[calificacion] [tinyint] NULL,
	[cantidad] [int] NOT NULL,
	[celulares] [int] NULL,
	[tipo_paseo] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Paseador] PRIMARY KEY CLUSTERED 
(
	[Id_paseador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 25/10/2022 12:44:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id_usuario] [int] IDENTITY(1,10) NOT NULL,
	[nombre_usuario] [nvarchar](25) NOT NULL,
	[edad_usuario] [tinyint] NULL,
	[numero_celular] [nvarchar](15) NOT NULL,
	[direccion] [nvarchar](10) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[nombre_mascota] [nvarchar](10) NOT NULL,
	[celulares] [int] NULL,
	[Id_paseador] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Funciones]  WITH CHECK ADD  CONSTRAINT [FK_Ocupacion] FOREIGN KEY([cantidad])
REFERENCES [dbo].[Ocupacion] ([cantidad])
GO
ALTER TABLE [dbo].[Funciones] CHECK CONSTRAINT [FK_Ocupacion]
GO
ALTER TABLE [dbo].[Ocupacion]  WITH CHECK ADD  CONSTRAINT [FK_Mascotas] FOREIGN KEY([nombre_mascota])
REFERENCES [dbo].[Mascotas] ([nombre_mascota])
GO
ALTER TABLE [dbo].[Ocupacion] CHECK CONSTRAINT [FK_Mascotas]
GO
ALTER TABLE [dbo].[Paseador]  WITH CHECK ADD  CONSTRAINT [FK_Estrellas_rendimento] FOREIGN KEY([calificacion])
REFERENCES [dbo].[Estrellas] ([calificacion])
GO
ALTER TABLE [dbo].[Paseador] CHECK CONSTRAINT [FK_Estrellas_rendimento]
GO
ALTER TABLE [dbo].[Paseador]  WITH CHECK ADD  CONSTRAINT [FK_Funciones_paseador] FOREIGN KEY([tipo_paseo])
REFERENCES [dbo].[Funciones] ([tipo_paseo])
GO
ALTER TABLE [dbo].[Paseador] CHECK CONSTRAINT [FK_Funciones_paseador]
GO
ALTER TABLE [dbo].[Paseador]  WITH CHECK ADD  CONSTRAINT [FK_Gps_celulares] FOREIGN KEY([celulares])
REFERENCES [dbo].[Gps] ([celulares])
GO
ALTER TABLE [dbo].[Paseador] CHECK CONSTRAINT [FK_Gps_celulares]
GO
ALTER TABLE [dbo].[Paseador]  WITH CHECK ADD  CONSTRAINT [FK_Ocupacion_paseador] FOREIGN KEY([cantidad])
REFERENCES [dbo].[Ocupacion] ([cantidad])
GO
ALTER TABLE [dbo].[Paseador] CHECK CONSTRAINT [FK_Ocupacion_paseador]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Gps_celulales] FOREIGN KEY([celulares])
REFERENCES [dbo].[Gps] ([celulares])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Gps_celulales]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Ingreso_usuario] FOREIGN KEY([email])
REFERENCES [dbo].[Ingreso] ([email])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Ingreso_usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Mascotas_usuario] FOREIGN KEY([nombre_mascota])
REFERENCES [dbo].[Mascotas] ([nombre_mascota])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Mascotas_usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Paseador_mascotas] FOREIGN KEY([Id_paseador])
REFERENCES [dbo].[Paseador] ([Id_paseador])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Paseador_mascotas]
GO
USE [master]
GO
ALTER DATABASE [DogWalk] SET  READ_WRITE 
GO
