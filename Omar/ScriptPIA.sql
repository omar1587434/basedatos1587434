USE [master]
GO
/****** Object:  Database [PuntoVenta]    Script Date: 11/03/2018 08:46:06 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'PuntoVenta')
BEGIN
CREATE DATABASE [PuntoVenta] ON  PRIMARY 
( NAME = N'PuntoVenta', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PuntoVenta.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PuntoVenta_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PuntoVenta_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [PuntoVenta] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PuntoVenta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PuntoVenta] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PuntoVenta] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PuntoVenta] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PuntoVenta] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PuntoVenta] SET ARITHABORT OFF
GO
ALTER DATABASE [PuntoVenta] SET AUTO_CLOSE ON
GO
ALTER DATABASE [PuntoVenta] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PuntoVenta] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PuntoVenta] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PuntoVenta] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PuntoVenta] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PuntoVenta] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PuntoVenta] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PuntoVenta] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PuntoVenta] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PuntoVenta] SET  ENABLE_BROKER
GO
ALTER DATABASE [PuntoVenta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PuntoVenta] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PuntoVenta] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PuntoVenta] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PuntoVenta] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PuntoVenta] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PuntoVenta] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PuntoVenta] SET  READ_WRITE
GO
ALTER DATABASE [PuntoVenta] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PuntoVenta] SET  MULTI_USER
GO
ALTER DATABASE [PuntoVenta] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PuntoVenta] SET DB_CHAINING OFF
GO
USE [PuntoVenta]
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoEmpleadoPuesto]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoEmpleadoPuesto]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ProcedimientoEmpleadoPuesto]
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoEmpleadoTurno]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoEmpleadoTurno]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ProcedimientoEmpleadoTurno]
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoNomEmpSucursal]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoNomEmpSucursal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ProcedimientoNomEmpSucursal]
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoPagoTotal]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoPagoTotal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ProcedimientoPagoTotal]
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoPromedioVentas]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoPromedioVentas]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ProcedimientoPromedioVentas]
GO
/****** Object:  View [dbo].[ReporteEmpleadoPuesto]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReporteEmpleadoPuesto]'))
DROP VIEW [dbo].[ReporteEmpleadoPuesto]
GO
/****** Object:  View [dbo].[ReporteEmpleadoTurno]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReporteEmpleadoTurno]'))
DROP VIEW [dbo].[ReporteEmpleadoTurno]
GO
/****** Object:  View [dbo].[ReporteNomEmpSucursal]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReporteNomEmpSucursal]'))
DROP VIEW [dbo].[ReporteNomEmpSucursal]
GO
/****** Object:  View [dbo].[ReportePagoTotal]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReportePagoTotal]'))
DROP VIEW [dbo].[ReportePagoTotal]
GO
/****** Object:  View [dbo].[ReportePromedioVentas]    Script Date: 11/03/2018 08:46:16 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReportePromedioVentas]'))
DROP VIEW [dbo].[ReportePromedioVentas]
GO
/****** Object:  StoredProcedure [dbo].[ScripBorrarCrearTablaCategoriaProducto]    Script Date: 11/03/2018 08:46:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScripBorrarCrearTablaCategoriaProducto]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ScripBorrarCrearTablaCategoriaProducto]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 11/03/2018 08:46:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Turno]') AND type in (N'U'))
DROP TABLE [dbo].[Turno]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 11/03/2018 08:46:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 11/03/2018 08:46:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sucursal]') AND type in (N'U'))
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  UserDefinedFunction [dbo].[Suma]    Script Date: 11/03/2018 08:46:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suma]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Suma]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proveedor]') AND type in (N'U'))
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Puesto]') AND type in (N'U'))
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[RegistroEntrada]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]') AND type in (N'U'))
DROP TABLE [dbo].[RegistroEntrada]
GO
/****** Object:  Table [dbo].[RegistroSalida]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistroSalida]') AND type in (N'U'))
DROP TABLE [dbo].[RegistroSalida]
GO
/****** Object:  Table [dbo].[CategoriaProducto]    Script Date: 11/03/2018 08:46:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriaProducto]') AND type in (N'U'))
DROP TABLE [dbo].[CategoriaProducto]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/03/2018 08:46:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[CompraProducto]    Script Date: 11/03/2018 08:46:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompraProducto]') AND type in (N'U'))
DROP TABLE [dbo].[CompraProducto]
GO
/****** Object:  Table [dbo].[DealleFactura]    Script Date: 11/03/2018 08:46:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealleFactura]') AND type in (N'U'))
DROP TABLE [dbo].[DealleFactura]
GO
/****** Object:  Table [dbo].[Devolucion]    Script Date: 11/03/2018 08:46:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Devolucion]') AND type in (N'U'))
DROP TABLE [dbo].[Devolucion]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/03/2018 08:46:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
DROP TABLE [dbo].[Factura]
GO
/****** Object:  Table [dbo].[InventarioActual]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InventarioActual]') AND type in (N'U'))
DROP TABLE [dbo].[InventarioActual]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marca]') AND type in (N'U'))
DROP TABLE [dbo].[Marca]
GO
/****** Object:  Table [dbo].[ModoPago]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModoPago]') AND type in (N'U'))
DROP TABLE [dbo].[ModoPago]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND type in (N'U'))
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[PedidoProveedor]    Script Date: 11/03/2018 08:46:07 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PedidoProveedor]') AND type in (N'U'))
DROP TABLE [dbo].[PedidoProveedor]
GO
/****** Object:  Table [dbo].[PedidoProveedor]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PedidoProveedor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PedidoProveedor](
	[Id_PedidoProveedor] [int] IDENTITY(2,1) NOT NULL,
	[Id_Proveedor] [int] NULL,
	[FechaPedido] [varchar](50) NULL,
	[FechaEntreaPedido] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PedidoProveedor] ON
INSERT [dbo].[PedidoProveedor] ([Id_PedidoProveedor], [Id_Proveedor], [FechaPedido], [FechaEntreaPedido]) VALUES (2, 2, N'22/10/2018', N'05/11/2018')
SET IDENTITY_INSERT [dbo].[PedidoProveedor] OFF
/****** Object:  Table [dbo].[Pago]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pago](
	[Id_Pago] [int] IDENTITY(2,1) NOT NULL,
	[Id_Empleado] [int] NULL,
	[SueldoBaseHora] [int] NULL,
	[HorasTrabajadas] [int] NULL,
	[HorasCumplir] [int] NULL,
	[PagoTotal]  AS ([SueldoBaseHora]*[HorasTrabajadas]),
	[FechaPago] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND name = N'IDX_Pago')
CREATE CLUSTERED INDEX [IDX_Pago] ON [dbo].[Pago] 
(
	[HorasTrabajadas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pago] ON
INSERT [dbo].[Pago] ([Id_Pago], [Id_Empleado], [SueldoBaseHora], [HorasTrabajadas], [HorasCumplir], [FechaPago]) VALUES (2, 4, 2000, 4, 4, N'03/11/2018')
INSERT [dbo].[Pago] ([Id_Pago], [Id_Empleado], [SueldoBaseHora], [HorasTrabajadas], [HorasCumplir], [FechaPago]) VALUES (3, 5, 100, 4, 4, N'03/11/2018')
SET IDENTITY_INSERT [dbo].[Pago] OFF
/****** Object:  Table [dbo].[ModoPago]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModoPago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ModoPago](
	[Id_ModoPago] [int] IDENTITY(2,1) NOT NULL,
	[ModoPago] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ModoPago]') AND name = N'IDX_ModoPago')
CREATE CLUSTERED INDEX [IDX_ModoPago] ON [dbo].[ModoPago] 
(
	[ModoPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ModoPago] ON
INSERT [dbo].[ModoPago] ([Id_ModoPago], [ModoPago]) VALUES (2, N'Eefctivo')
INSERT [dbo].[ModoPago] ([Id_ModoPago], [ModoPago]) VALUES (3, N'Tarjeta')
SET IDENTITY_INSERT [dbo].[ModoPago] OFF
/****** Object:  Table [dbo].[Marca]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marca]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Marca](
	[Id_Marca] [int] IDENTITY(2,1) NOT NULL,
	[Marca] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Marca]') AND name = N'IDX_Marca')
CREATE CLUSTERED INDEX [IDX_Marca] ON [dbo].[Marca] 
(
	[Marca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Marca] ON
INSERT [dbo].[Marca] ([Id_Marca], [Marca]) VALUES (4, N'Bimbo')
INSERT [dbo].[Marca] ([Id_Marca], [Marca]) VALUES (2, N'Pepsi')
INSERT [dbo].[Marca] ([Id_Marca], [Marca]) VALUES (5, N'Sabritas')
INSERT [dbo].[Marca] ([Id_Marca], [Marca]) VALUES (7, N'Sanjuan')
INSERT [dbo].[Marca] ([Id_Marca], [Marca]) VALUES (3, N'Tecate')
INSERT [dbo].[Marca] ([Id_Marca], [Marca]) VALUES (6, N'Vero')
SET IDENTITY_INSERT [dbo].[Marca] OFF
/****** Object:  Table [dbo].[InventarioActual]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InventarioActual]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InventarioActual](
	[Id_InventarioActual] [int] IDENTITY(2,1) NOT NULL,
	[Id_Sucursal] [int] NULL,
	[Id_Producto] [int] NULL,
	[NumPiezas] [int] NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InventarioActual]') AND name = N'IDX_InventarioActual')
CREATE CLUSTERED INDEX [IDX_InventarioActual] ON [dbo].[InventarioActual] 
(
	[NumPiezas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[InventarioActual] ON
INSERT [dbo].[InventarioActual] ([Id_InventarioActual], [Id_Sucursal], [Id_Producto], [NumPiezas]) VALUES (2, 2, 2, 100)
INSERT [dbo].[InventarioActual] ([Id_InventarioActual], [Id_Sucursal], [Id_Producto], [NumPiezas]) VALUES (3, 2, 3, 100)
INSERT [dbo].[InventarioActual] ([Id_InventarioActual], [Id_Sucursal], [Id_Producto], [NumPiezas]) VALUES (4, 2, 4, 100)
INSERT [dbo].[InventarioActual] ([Id_InventarioActual], [Id_Sucursal], [Id_Producto], [NumPiezas]) VALUES (5, 2, 5, 100)
INSERT [dbo].[InventarioActual] ([Id_InventarioActual], [Id_Sucursal], [Id_Producto], [NumPiezas]) VALUES (6, 2, 6, 100)
SET IDENTITY_INSERT [dbo].[InventarioActual] OFF
/****** Object:  Table [dbo].[Factura]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Factura](
	[Id_Factura] [int] IDENTITY(2,1) NOT NULL,
	[Id_Venta] [int] NULL,
	[Id_Empleado] [int] NULL,
	[Id_Cliente] [int] NULL,
	[FechaFactura] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Factura] ON
INSERT [dbo].[Factura] ([Id_Factura], [Id_Venta], [Id_Empleado], [Id_Cliente], [FechaFactura]) VALUES (2, 2, 4, 2, N'03/11/2018')
SET IDENTITY_INSERT [dbo].[Factura] OFF
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/03/2018 08:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleado](
	[Id_Empleado] [int] IDENTITY(2,1) NOT NULL,
	[NombreEmpleado] [varchar](50) NULL,
	[ApPaEmpleado] [varchar](50) NULL,
	[ApMaEmpleado] [varchar](50) NULL,
	[FechaNacimiento] [varchar](50) NULL,
	[FechaContratacion] [varchar](50) NULL,
	[DireccionEmpleado] [varchar](50) NULL,
	[CiudadEmpleado] [varchar](50) NULL,
	[CP_Empleado] [varchar](50) NULL,
	[PaisEmpleado] [varchar](50) NULL,
	[TelefonoEmpleado] [int] NULL,
	[RFC_Empleado] [varchar](50) NULL,
	[Id_Sucursal] [int] NULL,
	[Id_Turno] [int] NULL,
	[Id_Puesto] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND name = N'IDX_Empleado')
CREATE CLUSTERED INDEX [IDX_Empleado] ON [dbo].[Empleado] 
(
	[NombreEmpleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (5, N'Adrian', N'Garcia', N'Tovar', N'25-11-2000', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 11683488, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (9, N'Alan', N'Benavides', N'Sanchez', N'23-01-1996', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 22682488, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (13, N'Arecely', N'Dimas', N'Ortiz', N'26-04-1996', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 11282488, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (12, N'Ivan', N'Ruiz', N'Carreon', N'26-02-1996', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 13682488, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (8, N'Johan', N'Ibarra', N'Martinez', N'26-06-1996', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 11682418, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (7, N'Juan', N'Leal', N'Cruz', N'26-06-1995', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 11682488, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (10, N'Karina', N'Rojas', N'Tovar', N'16-02-1996', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 21682488, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (6, N'Nadia', N'Garcia', N'Tovar', N'14-12-2005', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 11682488, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (4, N'Omar', N'Garcia', N'Tovar', N'26-06-1996', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 11682488, N'dsdssd', 2, 2, 2)
INSERT [dbo].[Empleado] ([Id_Empleado], [NombreEmpleado], [ApPaEmpleado], [ApMaEmpleado], [FechaNacimiento], [FechaContratacion], [DireccionEmpleado], [CiudadEmpleado], [CP_Empleado], [PaisEmpleado], [TelefonoEmpleado], [RFC_Empleado], [Id_Sucursal], [Id_Turno], [Id_Puesto]) VALUES (11, N'William', N'Villegaz', N'Ruiz', N'16-06-1996', N'10-01-2017', N'Solidaridad', N'Monterrey', N'64100', N'Mexico', 11282488, N'dsdssd', 2, 2, 2)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
/****** Object:  Table [dbo].[Devolucion]    Script Date: 11/03/2018 08:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Devolucion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Devolucion](
	[Id_Devolucion] [int] IDENTITY(2,1) NOT NULL,
	[Id_Factura] [int] NULL,
	[Id_Empleado] [int] NULL,
	[Id_Cliente] [int] NULL,
	[PrecioProductoFac] [int] NULL,
	[CantidadPzasDev] [int] NULL,
	[ReembolsoTotal]  AS ([PrecioProductoFac]*[CantidadPzasDev]),
	[FechaDev] [varchar](50) NULL,
	[Id_ModoPago] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Devolucion] ON
INSERT [dbo].[Devolucion] ([Id_Devolucion], [Id_Factura], [Id_Empleado], [Id_Cliente], [PrecioProductoFac], [CantidadPzasDev], [FechaDev], [Id_ModoPago]) VALUES (2, 2, 4, 2, 11, 2, N'', 2)
SET IDENTITY_INSERT [dbo].[Devolucion] OFF
/****** Object:  Table [dbo].[DealleFactura]    Script Date: 11/03/2018 08:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealleFactura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DealleFactura](
	[Id_DetalleFactura] [int] IDENTITY(2,1) NOT NULL,
	[Id_Factura] [int] NULL,
	[Id_Producto] [int] NULL,
	[PrecioProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[MontoSubtotal]  AS ([Cantidad]*[PrecioProducto]),
	[MontoTotal]  AS (((0.16)*[PrecioProducto]+[PrecioProducto])*[Cantidad]),
	[FechaDetalleFac] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DealleFactura] ON
INSERT [dbo].[DealleFactura] ([Id_DetalleFactura], [Id_Factura], [Id_Producto], [PrecioProducto], [Cantidad], [FechaDetalleFac]) VALUES (2, 2, 2, 11, 2, N'03/11/2018')
SET IDENTITY_INSERT [dbo].[DealleFactura] OFF
/****** Object:  Table [dbo].[CompraProducto]    Script Date: 11/03/2018 08:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompraProducto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompraProducto](
	[Id_CompraProducto] [int] IDENTITY(2,1) NOT NULL,
	[Id_PedidoProveedor] [int] NULL,
	[Id_Producto] [int] NULL,
	[PrecioProdProv] [int] NULL,
	[CantidadPzas] [int] NULL,
	[TotalCompra]  AS ([PrecioProdProv]*[CantidadPzas]),
	[Id_ModoPago] [int] NULL
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[CompraProducto] ON
INSERT [dbo].[CompraProducto] ([Id_CompraProducto], [Id_PedidoProveedor], [Id_Producto], [PrecioProdProv], [CantidadPzas], [Id_ModoPago]) VALUES (2, 2, 2, 11, 100, 2)
SET IDENTITY_INSERT [dbo].[CompraProducto] OFF
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/03/2018 08:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] IDENTITY(2,1) NOT NULL,
	[NombreCliente] [varchar](10) NULL,
	[ApPaCliente] [varchar](10) NULL,
	[ApMaCliente] [varchar](10) NULL,
	[DireccionCliente] [varchar](50) NULL,
	[TelefonoCliente] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND name = N'IDX_Cliente')
CREATE CLUSTERED INDEX [IDX_Cliente] ON [dbo].[Cliente] 
(
	[NombreCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApPaCliente], [ApMaCliente], [DireccionCliente], [TelefonoCliente]) VALUES (2, N'Alex', N'Salazar', N'Balderas', N'Monterrey', 11447788)
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApPaCliente], [ApMaCliente], [DireccionCliente], [TelefonoCliente]) VALUES (3, N'Dilan', N'Valdez', N'Contreras', N'Monterrey', 11147788)
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApPaCliente], [ApMaCliente], [DireccionCliente], [TelefonoCliente]) VALUES (4, N'Hector', N'Moncada', N'Ortiz', N'Monterrey', 11247788)
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApPaCliente], [ApMaCliente], [DireccionCliente], [TelefonoCliente]) VALUES (6, N'Iram', N'Martinez', N'Obviedo', N'Monterrey', 11547788)
INSERT [dbo].[Cliente] ([Id_Cliente], [NombreCliente], [ApPaCliente], [ApMaCliente], [DireccionCliente], [TelefonoCliente]) VALUES (5, N'Pierre', N'Esparza', N'Carreon', N'Monterrey', 11347788)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
/****** Object:  Table [dbo].[CategoriaProducto]    Script Date: 11/03/2018 08:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriaProducto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CategoriaProducto](
	[Id_CategoriaProducto] [int] IDENTITY(2,1) NOT NULL,
	[NombreCategoria] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategoriaProducto] ON
INSERT [dbo].[CategoriaProducto] ([Id_CategoriaProducto], [NombreCategoria]) VALUES (2, N'Liquidos')
INSERT [dbo].[CategoriaProducto] ([Id_CategoriaProducto], [NombreCategoria]) VALUES (3, N'Liquidos')
INSERT [dbo].[CategoriaProducto] ([Id_CategoriaProducto], [NombreCategoria]) VALUES (4, N'Panecillo')
INSERT [dbo].[CategoriaProducto] ([Id_CategoriaProducto], [NombreCategoria]) VALUES (5, N'Papitas')
INSERT [dbo].[CategoriaProducto] ([Id_CategoriaProducto], [NombreCategoria]) VALUES (6, N'Caramelos')
INSERT [dbo].[CategoriaProducto] ([Id_CategoriaProducto], [NombreCategoria]) VALUES (7, N'Pollo')
SET IDENTITY_INSERT [dbo].[CategoriaProducto] OFF
/****** Object:  Table [dbo].[RegistroSalida]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistroSalida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RegistroSalida](
	[Id_RegistroSalida] [int] IDENTITY(2,1) NOT NULL,
	[FechaRegistroSalida] [varchar](50) NULL,
	[RegHoraSalida] [varchar](50) NULL,
	[Id_Empleado] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RegistroSalida]') AND name = N'IDX_RegistroSalida')
CREATE CLUSTERED INDEX [IDX_RegistroSalida] ON [dbo].[RegistroSalida] 
(
	[FechaRegistroSalida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RegistroSalida] ON
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (2, N'03/11/2018', N'16:00', 4)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (3, N'03/11/2018', N'16:00', 5)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (4, N'03/11/2018', N'16:00', 6)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (5, N'03/11/2018', N'16:00', 7)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (6, N'03/11/2018', N'16:00', 8)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (7, N'03/11/2018', N'16:00', 9)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (8, N'03/11/2018', N'16:00', 10)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (9, N'03/11/2018', N'16:00', 11)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (10, N'03/11/2018', N'16:00', 12)
INSERT [dbo].[RegistroSalida] ([Id_RegistroSalida], [FechaRegistroSalida], [RegHoraSalida], [Id_Empleado]) VALUES (11, N'03/11/2018', N'16:00', 13)
SET IDENTITY_INSERT [dbo].[RegistroSalida] OFF
/****** Object:  Table [dbo].[RegistroEntrada]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RegistroEntrada](
	[Id_RegistroEntrada] [int] IDENTITY(2,1) NOT NULL,
	[FechaRegistroEntrada] [varchar](50) NULL,
	[RegHoraEntrada] [varchar](50) NULL,
	[Id_Empleado] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]') AND name = N'IDX_RegistroEntrada')
CREATE CLUSTERED INDEX [IDX_RegistroEntrada] ON [dbo].[RegistroEntrada] 
(
	[FechaRegistroEntrada] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RegistroEntrada] ON
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (2, N'03/11/2018', N'8:00', 4)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (3, N'03/11/2018', N'8:00', 6)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (4, N'03/11/2018', N'8:00', 7)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (5, N'03/11/2018', N'8:00', 8)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (6, N'03/11/2018', N'8:00', 9)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (7, N'03/11/2018', N'8:00', 10)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (8, N'03/11/2018', N'8:00', 11)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (9, N'03/11/2018', N'8:00', 12)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (10, N'03/11/2018', N'8:00', 13)
INSERT [dbo].[RegistroEntrada] ([Id_RegistroEntrada], [FechaRegistroEntrada], [RegHoraEntrada], [Id_Empleado]) VALUES (11, N'03/11/2018', N'8:00', 5)
SET IDENTITY_INSERT [dbo].[RegistroEntrada] OFF
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Puesto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Puesto](
	[Id_Puesto] [int] IDENTITY(2,1) NOT NULL,
	[NombrePuesto] [varchar](50) NULL,
	[SueldoBase] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Puesto]') AND name = N'IDX_Puesto')
CREATE CLUSTERED INDEX [IDX_Puesto] ON [dbo].[Puesto] 
(
	[NombrePuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Puesto] ON
INSERT [dbo].[Puesto] ([Id_Puesto], [NombrePuesto], [SueldoBase]) VALUES (4, N'AtencioClientes', 3000)
INSERT [dbo].[Puesto] ([Id_Puesto], [NombrePuesto], [SueldoBase]) VALUES (2, N'Cajero', 2000)
INSERT [dbo].[Puesto] ([Id_Puesto], [NombrePuesto], [SueldoBase]) VALUES (6, N'Guardia', 4000)
INSERT [dbo].[Puesto] ([Id_Puesto], [NombrePuesto], [SueldoBase]) VALUES (5, N'Intendente', 3000)
INSERT [dbo].[Puesto] ([Id_Puesto], [NombrePuesto], [SueldoBase]) VALUES (3, N'Surtidor', 1000)
SET IDENTITY_INSERT [dbo].[Puesto] OFF
/****** Object:  Table [dbo].[Proveedor]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proveedor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Proveedor](
	[Id_Poveedor] [int] IDENTITY(2,1) NOT NULL,
	[NombreProveedor] [varchar](50) NULL,
	[DireccionProveedor] [varchar](50) NULL,
	[CiudadProveedor] [varchar](50) NULL,
	[CP_Proveedor] [varchar](50) NULL,
	[PaisProveedor] [varchar](50) NULL,
	[TelefonoProveedor] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Proveedor]') AND name = N'IDX_Proveedor')
CREATE CLUSTERED INDEX [IDX_Proveedor] ON [dbo].[Proveedor] 
(
	[NombreProveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Proveedor] ON
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (4, N'Barcel', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (6, N'Bokados', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (5, N'CocaCola', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (2, N'Gamesa', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (3, N'Gamesa', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (11, N'Jumex', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (9, N'LaCosteña', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (8, N'Lala', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (12, N'Peñafiel', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (10, N'Pepsi', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
INSERT [dbo].[Proveedor] ([Id_Poveedor], [NombreProveedor], [DireccionProveedor], [CiudadProveedor], [CP_Proveedor], [PaisProveedor], [TelefonoProveedor]) VALUES (7, N'SanJose', N'Centro', N'Monterrey', N'64100', N'Mexico', 22554477)
SET IDENTITY_INSERT [dbo].[Proveedor] OFF
/****** Object:  Table [dbo].[Producto]    Script Date: 11/03/2018 08:46:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Producto](
	[Id_Producto] [int] IDENTITY(2,1) NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[Precio] [int] NULL,
	[Id_CategoriaProducto] [int] NULL,
	[Id_Marca] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND name = N'IDX_Producto')
CREATE CLUSTERED INDEX [IDX_Producto] ON [dbo].[Producto] 
(
	[NombreProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Producto] ON
INSERT [dbo].[Producto] ([Id_Producto], [NombreProducto], [Precio], [Id_CategoriaProducto], [Id_Marca]) VALUES (5, N'Chetos', 8, 5, 5)
INSERT [dbo].[Producto] ([Id_Producto], [NombreProducto], [Precio], [Id_CategoriaProducto], [Id_Marca]) VALUES (4, N'Donas', 14, 4, 4)
INSERT [dbo].[Producto] ([Id_Producto], [NombreProducto], [Precio], [Id_CategoriaProducto], [Id_Marca]) VALUES (7, N'Molida', 30, 7, 7)
INSERT [dbo].[Producto] ([Id_Producto], [NombreProducto], [Precio], [Id_CategoriaProducto], [Id_Marca]) VALUES (6, N'Paleta', 4, 6, 6)
INSERT [dbo].[Producto] ([Id_Producto], [NombreProducto], [Precio], [Id_CategoriaProducto], [Id_Marca]) VALUES (2, N'Pepsi', 11, 2, 2)
INSERT [dbo].[Producto] ([Id_Producto], [NombreProducto], [Precio], [Id_CategoriaProducto], [Id_Marca]) VALUES (3, N'Tecate', 11, 3, 3)
SET IDENTITY_INSERT [dbo].[Producto] OFF
/****** Object:  UserDefinedFunction [dbo].[Suma]    Script Date: 11/03/2018 08:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suma]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[Suma](
@parametro int
) returns int
as
begin
	return 100 + @parametro
end' 
END
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 11/03/2018 08:46:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sucursal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sucursal](
	[Id_Sucursal] [int] IDENTITY(2,1) NOT NULL,
	[DireccionSuc] [varchar](50) NULL,
	[TelefonoSuc] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Sucursal]') AND name = N'IDX_Sucursal')
CREATE CLUSTERED INDEX [IDX_Sucursal] ON [dbo].[Sucursal] 
(
	[DireccionSuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sucursal] ON
INSERT [dbo].[Sucursal] ([Id_Sucursal], [DireccionSuc], [TelefonoSuc]) VALUES (4, N'Apodaca', 13485698)
INSERT [dbo].[Sucursal] ([Id_Sucursal], [DireccionSuc], [TelefonoSuc]) VALUES (5, N'Guadalupe', 14485698)
INSERT [dbo].[Sucursal] ([Id_Sucursal], [DireccionSuc], [TelefonoSuc]) VALUES (2, N'Monterrey', 11485698)
INSERT [dbo].[Sucursal] ([Id_Sucursal], [DireccionSuc], [TelefonoSuc]) VALUES (6, N'SanNicolas', 15485698)
INSERT [dbo].[Sucursal] ([Id_Sucursal], [DireccionSuc], [TelefonoSuc]) VALUES (3, N'SanPadro', 12485698)
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
/****** Object:  Table [dbo].[Venta]    Script Date: 11/03/2018 08:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Venta](
	[Id_Venta] [int] IDENTITY(2,1) NOT NULL,
	[Id_Producto] [int] NULL,
	[FechaVenta] [varchar](50) NULL,
	[HoraVenta] [varchar](50) NULL,
	[Id_Empleado] [int] NULL,
	[Id_Cliente] [int] NULL,
	[Id_ModoPago] [int] NULL,
	[CantidadPiezas] [int] NULL,
	[Costo] [int] NULL,
	[SubTotal]  AS ([Costo]*[CantidadPiezas]),
	[CostoTotal]  AS (((0.16)*[Costo]+[Costo])*[CantidadPiezas])
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Venta] ON
INSERT [dbo].[Venta] ([Id_Venta], [Id_Producto], [FechaVenta], [HoraVenta], [Id_Empleado], [Id_Cliente], [Id_ModoPago], [CantidadPiezas], [Costo]) VALUES (2, 2, N'03/11/2018', N'00:00', 4, 2, 2, 2, 11)
SET IDENTITY_INSERT [dbo].[Venta] OFF
/****** Object:  Table [dbo].[Turno]    Script Date: 11/03/2018 08:46:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Turno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Turno](
	[Id_Turno] [int] IDENTITY(2,1) NOT NULL,
	[Turno] [varchar](50) NULL,
	[HoraEntrada] [varchar](50) NULL,
	[HoraSalida] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Turno]') AND name = N'IDX_Turno')
CREATE CLUSTERED INDEX [IDX_Turno] ON [dbo].[Turno] 
(
	[Turno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Turno] ON
INSERT [dbo].[Turno] ([Id_Turno], [Turno], [HoraEntrada], [HoraSalida]) VALUES (2, N'Completo', N'8:00', N'16:00')
INSERT [dbo].[Turno] ([Id_Turno], [Turno], [HoraEntrada], [HoraSalida]) VALUES (3, N'MedioTiempo', N'8:00', N'12:00')
SET IDENTITY_INSERT [dbo].[Turno] OFF
/****** Object:  Trigger [TrrggerEmpleadoUpdate]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TrrggerEmpleadoUpdate]'))
EXEC dbo.sp_executesql @statement = N'Create Trigger [dbo].[TrrggerEmpleadoUpdate]
on [dbo].[Empleado] 
after update
as print ''Se Actualizo la Tabla Empleado'''
GO
/****** Object:  Trigger [TriggerMarcaInsert2]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TriggerMarcaInsert2]'))
EXEC dbo.sp_executesql @statement = N'Create Trigger [dbo].[TriggerMarcaInsert2]
on [dbo].[Marca]
--for | after | instead of insert | update | delete--
after insert
as print ''Se Reigistro en tabla Marca''
'
GO
/****** Object:  Trigger [TriggerMarcaInsert]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TriggerMarcaInsert]'))
EXEC dbo.sp_executesql @statement = N'Create Trigger [dbo].[TriggerMarcaInsert]
on [dbo].[Marca]
for insert
as print ''Se Reigistro en tabla Marca''
'
GO
/****** Object:  Trigger [TriggerMarcaDelete2]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TriggerMarcaDelete2]'))
EXEC dbo.sp_executesql @statement = N'Create Trigger [dbo].[TriggerMarcaDelete2]
on [dbo].[Marca]
instead of Delete 
as 
begin
select *
from deleted

print ''Se Elimino registro en tabla Marca''
end'
GO
/****** Object:  Trigger [TriggerMarcaDelete]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[TriggerMarcaDelete]'))
EXEC dbo.sp_executesql @statement = N'Create Trigger [dbo].[TriggerMarcaDelete]
on [dbo].[Marca]
for delete 
as print ''Se Elimino registro en tabla Marca''
'
GO
/****** Object:  StoredProcedure [dbo].[ScripBorrarCrearTablaCategoriaProducto]    Script Date: 11/03/2018 08:46:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScripBorrarCrearTablaCategoriaProducto]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ScripBorrarCrearTablaCategoriaProducto]
(@parametroTabla nvarchar(100))
as
begin

	declare @variable nvarchar(100)
	set @variable = @parametroTabla
	if @variable = ''CategoriaProducto''
	begin

SELECT *
       INTO #TMPCategoria
       FROM CategoriaProducto;

	Drop Table CategoriaProducto;

	Select*
	Into CategoriaProducto 
	From #TMPCategoria;
	end

end

exec ScripBorrarCrearTablaCategoriaProducto @parametroTabla = ''CategoriaProducto''
' 
END
GO
/****** Object:  View [dbo].[ReportePromedioVentas]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReportePromedioVentas]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[ReportePromedioVentas]
as Select Clien.NombreCliente As [Nombre Cliente], Avg (vent.CostoTotal) As [Promedio del total de ventas]
From Cliente As Clien Full Join Venta As vent
On Clien.Id_Cliente =  vent.Id_Cliente
Group By Clien.NombreCliente
Having Avg (vent.CostoTotal) > 10'
GO
/****** Object:  View [dbo].[ReportePagoTotal]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReportePagoTotal]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[ReportePagoTotal]
as select Pag.PagoTotal As [Pago Total], Count (Emp.Id_Empleado) As [Cantidad de Empleados]
From Pago As Pag Full Join Empleado As Emp
On pag.Id_Empleado = Emp.Id_Empleado
Group By Pag.PagoTotal'
GO
/****** Object:  View [dbo].[ReporteNomEmpSucursal]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReporteNomEmpSucursal]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[ReporteNomEmpSucursal]
as Select (Emp.NombreEmpleado+ '' ''+ Emp.ApPaEmpleado+ '' '' + Emp.ApMaEmpleado) As [Nombre completo del Empleado], suc.DireccionSuc As [LugarTrabajo]
From Empleado As Emp Inner Join Sucursal As suc
On Emp.Id_Sucursal = suc.Id_Sucursal
Group By (Emp.NombreEmpleado+ '' ''+ Emp.ApPaEmpleado+ '' '' + Emp.ApMaEmpleado), suc.DireccionSuc'
GO
/****** Object:  View [dbo].[ReporteEmpleadoTurno]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReporteEmpleadoTurno]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[ReporteEmpleadoTurno]
as Select Tur.Turno As [Tipo de Turno], Emp.NombreEmpleado As [Nombre de Empleado]
From Turno As Tur Left Join Empleado As Emp
On Tur.Id_Turno = Emp.Id_Turno
Group By Tur.Turno, Emp.NombreEmpleado'
GO
/****** Object:  View [dbo].[ReporteEmpleadoPuesto]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[ReporteEmpleadoPuesto]'))
EXEC dbo.sp_executesql @statement = N'Create View [dbo].[ReporteEmpleadoPuesto]
as Select Emp.NombreEmpleado As [Nombre de Empleado], Pues.NombrePuesto As [Tipo Puesto]
From Empleado As Emp
Inner Join Puesto As Pues
On Emp.Id_Puesto = Pues.Id_Puesto'
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoPromedioVentas]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoPromedioVentas]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ProcedimientoPromedioVentas]
(@parametro varchar(100))
as
begin

	select * 
	From ReportePromedioVentas
	where [Nombre Cliente] =  @parametro

end

exec ProcedimientoPromedioVentas  @parametro = ''%x''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoPagoTotal]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoPagoTotal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ProcedimientoPagoTotal]
(@parametro nvarchar(100))
as
begin

	select * 
	From ReportePagoTotal
	where [Pago Total] >  @parametro

end

exec ProcedimientoPagoTotal  @parametro = 1000
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoNomEmpSucursal]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoNomEmpSucursal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ProcedimientoNomEmpSucursal]
(@parametro varchar(100))
as
begin

	select * 
	From ReporteNomEmpSucursal
	where [Nombre completo del Empleado] =  @parametro

end

exec ProcedimientoNomEmpSucursal  @parametro = ''Adrian Garcia Tovar''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoEmpleadoTurno]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoEmpleadoTurno]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ProcedimientoEmpleadoTurno]
(@parametro varchar(100))
as
begin

	select * 
	From ReporteEmpleadoTurno
	where [Tipo de Turno] =  @parametro

end

exec ProcedimientoEmpleadoTurno  @parametro = ''Completo''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ProcedimientoEmpleadoPuesto]    Script Date: 11/03/2018 08:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedimientoEmpleadoPuesto]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ProcedimientoEmpleadoPuesto]
(@parametro varchar(100))
as
begin

	select * 
	From ReporteEmpleadoPuesto
	where [Nombre de Empleado] =  @parametro

end

exec ProcedimientoEmpleadoPuesto  @parametro = ''Adrian''
' 
END
GO
