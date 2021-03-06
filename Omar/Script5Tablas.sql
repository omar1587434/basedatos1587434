USE [PuntoVenta]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 11/02/2018 16:34:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorias]') AND type in (N'U'))
DROP TABLE [dbo].[Categorias]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/02/2018 16:34:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 11/02/2018 16:34:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 11/02/2018 16:34:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sucursal]') AND type in (N'U'))
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[Sueldo]    Script Date: 11/02/2018 16:34:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sueldo]') AND type in (N'U'))
DROP TABLE [dbo].[Sueldo]
GO
/****** Object:  Table [dbo].[Sueldo]    Script Date: 11/02/2018 16:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sueldo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sueldo](
	[NoCuenta] [int] IDENTITY(2,1) NOT NULL,
	[IdEmpleado] [int] NULL,
	[Fecha] [date] NOT NULL,
	[horasTrabajadas] [int] NOT NULL,
	[SueldoPorHora] [int] NULL,
	[Total]  AS ([horasTrabajadas]*[SueldoPorHora])
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Sueldo]') AND name = N'ID_SueldoPorHora')
CREATE CLUSTERED INDEX [ID_SueldoPorHora] ON [dbo].[Sueldo] 
(
	[SueldoPorHora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 11/02/2018 16:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sucursal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sucursal](
	[id_Sucursal] [int] IDENTITY(2,1) NOT NULL,
	[DireccionSuc] [varchar](50) NULL,
	[TelefonoSuc] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Sucursal]') AND name = N'ID_DireccionSucursal')
CREATE CLUSTERED INDEX [ID_DireccionSucursal] ON [dbo].[Sucursal] 
(
	[DireccionSuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 11/02/2018 16:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] IDENTITY(2,1) NOT NULL,
	[id_Sucursal] [int] NULL,
	[Apellidos] [varchar](50) NULL,
	[Nombre] [varchar](10) NULL,
	[Cargo] [varchar](50) NULL,
	[FechaNacimiento] [varchar](50) NULL,
	[FechaContratacion] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL,
	[TelDomicilio] [int] NULL,
	[CodPostal] [varchar](50) NULL,
	[Pais] [varchar](50) NULL,
	[RFC] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND name = N'ID_NombreEmpleado')
CREATE CLUSTERED INDEX [ID_NombreEmpleado] ON [dbo].[Empleados] 
(
	[Nombre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/02/2018 16:34:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(2,1) NOT NULL,
	[NombreCliente] [varchar](10) NULL,
	[ApellidoPaternoC] [varchar](10) NULL,
	[ApellidoMaternoC] [varchar](10) NULL,
	[DireccionC] [varchar](50) NULL,
	[TelefonoC] [nchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND name = N'ID_NombreCliente')
CREATE CLUSTERED INDEX [ID_NombreCliente] ON [dbo].[Clientes] 
(
	[NombreCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 11/02/2018 16:34:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categorias](
	[idCategoria] [int] IDENTITY(2,1) NOT NULL,
	[NombreCategoria] [varchar](50) NULL,
	[Descripcion] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Categorias]') AND name = N'ID_NombreCategoria')
CREATE CLUSTERED INDEX [ID_NombreCategoria] ON [dbo].[Categorias] 
(
	[NombreCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
