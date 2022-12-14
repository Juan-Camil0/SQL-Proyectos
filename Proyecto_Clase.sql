USE [master]
GO
/****** Object:  Database [ProyectoCurso]    Script Date: 1/11/2022 1:58:12 p. m. ******/
CREATE DATABASE [ProyectoCurso]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoCurso', FILENAME = N'E:\Sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProyectoCurso.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectoCurso_log', FILENAME = N'E:\Sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProyectoCurso_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProyectoCurso] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoCurso].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectoCurso] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectoCurso] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectoCurso] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectoCurso] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectoCurso] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectoCurso] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectoCurso] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectoCurso] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectoCurso] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectoCurso] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectoCurso] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectoCurso] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectoCurso] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectoCurso] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectoCurso] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyectoCurso] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectoCurso] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectoCurso] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectoCurso] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectoCurso] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectoCurso] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectoCurso] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectoCurso] SET RECOVERY FULL 
GO
ALTER DATABASE [ProyectoCurso] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectoCurso] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectoCurso] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectoCurso] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectoCurso] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectoCurso] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyectoCurso] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProyectoCurso', N'ON'
GO
ALTER DATABASE [ProyectoCurso] SET QUERY_STORE = OFF
GO
USE [ProyectoCurso]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 1/11/2022 1:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[codigoCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombreCompletoCliente] [nvarchar](64) NOT NULL,
	[nit] [varchar](16) NULL,
	[telefono] [varchar](9) NOT NULL,
	[direccion] [tinyint] NOT NULL,
	[estado] [tinyint] NOT NULL,
 CONSTRAINT [pk_cliente_codigoCliente] PRIMARY KEY CLUSTERED 
(
	[codigoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturaDetalle]    Script Date: 1/11/2022 1:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturaDetalle](
	[codigoFacturaDetalle] [int] IDENTITY(1,1) NOT NULL,
	[codigoFactura] [int] NOT NULL,
	[codigoProducto] [int] NOT NULL,
	[cantidad] [tinyint] NOT NULL,
	[precio] [decimal](12, 4) NOT NULL,
	[subtotal] [decimal](12, 4) NOT NULL,
 CONSTRAINT [pk_facturaDetalle_codigoFacturaDetalle] PRIMARY KEY CLUSTERED 
(
	[codigoFacturaDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturaEncabezado]    Script Date: 1/11/2022 1:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturaEncabezado](
	[codigoFactura] [int] IDENTITY(1,1) NOT NULL,
	[codigoCliente] [int] NOT NULL,
	[numeroFactura] [bigint] NOT NULL,
	[serieFactura] [varchar](64) NOT NULL,
	[fechaFactura] [datetime] NOT NULL,
	[usuarioFactura] [nvarchar](64) NOT NULL,
	[fechaAnulacion] [datetime] NULL,
	[usuarioAnular] [nvarchar](64) NULL,
	[estado] [tinyint] NOT NULL,
 CONSTRAINT [pk_facturaEncabezado_codigoFactura] PRIMARY KEY CLUSTERED 
(
	[codigoFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 1/11/2022 1:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[codigoProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombreProducto] [varchar](120) NOT NULL,
	[descripcion] [nvarchar](500) NULL,
	[precioCosto] [float] NOT NULL,
	[precioVenta] [float] NOT NULL,
	[estado] [tinyint] NOT NULL,
 CONSTRAINT [pk_Producto_codigoProducto] PRIMARY KEY CLUSTERED 
(
	[codigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 1/11/2022 1:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[codigoProveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombreCompletoProveedor] [nvarchar](64) NOT NULL,
	[nit] [varchar](16) NULL,
	[telefono] [varchar](9) NOT NULL,
	[direccion] [tinyint] NOT NULL,
	[estado] [tinyint] NOT NULL,
 CONSTRAINT [pk_proveedor_codigoProveedor] PRIMARY KEY CLUSTERED 
(
	[codigoProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[facturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_facturaDetalle_facturaEncabezado] FOREIGN KEY([codigoFactura])
REFERENCES [dbo].[facturaEncabezado] ([codigoFactura])
GO
ALTER TABLE [dbo].[facturaDetalle] CHECK CONSTRAINT [FK_facturaDetalle_facturaEncabezado]
GO
ALTER TABLE [dbo].[facturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_facturaDetalle_Producto] FOREIGN KEY([codigoProducto])
REFERENCES [dbo].[Producto] ([codigoProducto])
GO
ALTER TABLE [dbo].[facturaDetalle] CHECK CONSTRAINT [FK_facturaDetalle_Producto]
GO
ALTER TABLE [dbo].[facturaEncabezado]  WITH CHECK ADD  CONSTRAINT [FK_facturaEncabezado_cliente] FOREIGN KEY([codigoCliente])
REFERENCES [dbo].[cliente] ([codigoCliente])
GO
ALTER TABLE [dbo].[facturaEncabezado] CHECK CONSTRAINT [FK_facturaEncabezado_cliente]
GO
USE [master]
GO
ALTER DATABASE [ProyectoCurso] SET  READ_WRITE 
GO
