USE [master]
GO
/****** Object:  Database [Tienda]    Script Date: 25/10/2022 12:29:03 p. m. ******/
CREATE DATABASE [Tienda]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tienda', FILENAME = N'E:\Sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\Tienda.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tienda_log', FILENAME = N'E:\Sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\Tienda_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Tienda] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tienda].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tienda] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tienda] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tienda] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tienda] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tienda] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tienda] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tienda] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tienda] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tienda] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tienda] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tienda] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tienda] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tienda] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tienda] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tienda] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Tienda] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tienda] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tienda] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tienda] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tienda] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tienda] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tienda] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tienda] SET RECOVERY FULL 
GO
ALTER DATABASE [Tienda] SET  MULTI_USER 
GO
ALTER DATABASE [Tienda] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tienda] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tienda] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tienda] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tienda] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tienda] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tienda', N'ON'
GO
ALTER DATABASE [Tienda] SET QUERY_STORE = OFF
GO
USE [Tienda]
GO
/****** Object:  Table [dbo].[Cajeros]    Script Date: 25/10/2022 12:29:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cajeros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](250) NULL,
 CONSTRAINT [PK_Cajeros] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maquina_Registradora]    Script Date: 25/10/2022 12:29:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquina_Registradora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
 CONSTRAINT [PK_Maquina_Registradora] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 25/10/2022 12:29:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 25/10/2022 12:29:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[cajero] [int] NULL,
	[maquina] [int] NULL,
	[producto] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cajeros] ON 

INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (1, N'Juan ')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (2, N'Camilo')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (3, N'Carlos')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (4, N'Erika')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (5, N'Yuly')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (6, N'Alejandra')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (7, N'Laura')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (8, N'Viviana')
INSERT [dbo].[Cajeros] ([codigo], [nombre]) VALUES (9, N'Fabian')
SET IDENTITY_INSERT [dbo].[Cajeros] OFF
GO
SET IDENTITY_INSERT [dbo].[Maquina_Registradora] ON 

INSERT [dbo].[Maquina_Registradora] ([codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[Maquina_Registradora] ([codigo], [piso]) VALUES (2, 3)
INSERT [dbo].[Maquina_Registradora] ([codigo], [piso]) VALUES (3, 2)
SET IDENTITY_INSERT [dbo].[Maquina_Registradora] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (1, N'Menta', 100)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (2, N'Empandas', 2500)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (3, N'Churros', 2000)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (4, N'Palomitas', 1100)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (5, N'Arepa', 1400)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (6, N'Jugo', 800)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (7, N'Papas', 2100)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (8, N'Pan', 300)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (9, N'Galletas', 1500)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (10, N'Gaseosa', 4000)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
INSERT [dbo].[Ventas] ([cajero], [maquina], [producto]) VALUES (5, 3, 5)
INSERT [dbo].[Ventas] ([cajero], [maquina], [producto]) VALUES (8, 2, 3)
INSERT [dbo].[Ventas] ([cajero], [maquina], [producto]) VALUES (7, 1, 10)
INSERT [dbo].[Ventas] ([cajero], [maquina], [producto]) VALUES (3, 1, 8)
INSERT [dbo].[Ventas] ([cajero], [maquina], [producto]) VALUES (9, 3, 7)
INSERT [dbo].[Ventas] ([cajero], [maquina], [producto]) VALUES (8, 2, 6)
INSERT [dbo].[Ventas] ([cajero], [maquina], [producto]) VALUES (5, 3, 1)
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Cajeros] FOREIGN KEY([cajero])
REFERENCES [dbo].[Cajeros] ([codigo])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Cajeros]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Maquina_Registradora] FOREIGN KEY([maquina])
REFERENCES [dbo].[Maquina_Registradora] ([codigo])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Maquina_Registradora]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Productos] FOREIGN KEY([producto])
REFERENCES [dbo].[Productos] ([codigo])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Productos]
GO
USE [master]
GO
ALTER DATABASE [Tienda] SET  READ_WRITE 
GO
