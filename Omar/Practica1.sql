USE [ticketmaster]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IdVenta] [int] NOT NULL,
	[IdEvento] [int] NULL,
	[PrecioBoleto] [int] NULL,
	[CantidadBoletos] [int] NULL,
	[PrecioTotal]  AS ([PrecioBoleto]*[CantidadBoletos])
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoBoleto](
	[IdTipoBoleto] [int] NOT NULL,
	[NombTipoBoleto] [varchar](10) NULL,
	[IdSeccion] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seccion]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seccion](
	[IdSeccion] [int] NOT NULL,
	[NombSeccion] [varchar](10) NULL,
	[Precio] [int] NULL,
	[PrecioIVA]  AS ((0.16)*[Precio]+[Precio]),
	[IdBoleto] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region](
	[IdRegion] [int] NOT NULL,
	[NombRegion] [varchar](10) NULL,
	[IdRecinto] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recinto]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recinto](
	[IdRecinto] [int] NOT NULL,
	[NombRecinto] [varchar](10) NULL,
	[DireccionRecinto] [varchar](50) NULL,
	[CapacidadDelRecinto] [int] NULL,
	[TotaldeSecciones] [int] NULL,
	[IdEvento] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lugar]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lugar](
	[IdLugar] [int] NOT NULL,
	[Fila] [varchar](5) NULL,
	[Asiento] [int] NULL,
	[IdSeccion] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evento](
	[IdEvento] [int] NOT NULL,
	[TipoEvento] [varchar](10) NULL,
	[NombEvento] [varchar](10) NULL,
	[FechaEvento] [datetime] NULL,
	[IdTipoBoleto] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NOT NULL,
	[NombCliente] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [IDX_NombCliente] ON [dbo].[Cliente] 
(
	[NombCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 09/08/2018 01:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[IdBoleto] [int] NOT NULL,
	[IdCliente] [int] NULL
) ON [PRIMARY]
GO
