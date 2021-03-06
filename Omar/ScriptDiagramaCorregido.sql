USE [PuntoVenta]
GO
/****** Object:  ForeignKey [FK_Empleado_Puesto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Puesto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Puesto]
GO
/****** Object:  ForeignKey [FK_Empleado_Sucursal]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Sucursal]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Sucursal]
GO
/****** Object:  ForeignKey [FK_Empleado_Turno]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Turno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Turno]
GO
/****** Object:  ForeignKey [FK_Producto_CategoriaProducto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_CategoriaProducto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_CategoriaProducto]
GO
/****** Object:  ForeignKey [FK_Producto_Marca]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Marca]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Marca]
GO
/****** Object:  ForeignKey [FK_PedidoProveedor_Proveedor]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PedidoProveedor_Proveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[PedidoProveedor]'))
ALTER TABLE [dbo].[PedidoProveedor] DROP CONSTRAINT [FK_PedidoProveedor_Proveedor]
GO
/****** Object:  ForeignKey [FK_CompraProducto_ModoPago]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] DROP CONSTRAINT [FK_CompraProducto_ModoPago]
GO
/****** Object:  ForeignKey [FK_CompraProducto_PedidoProveedor]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_PedidoProveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] DROP CONSTRAINT [FK_CompraProducto_PedidoProveedor]
GO
/****** Object:  ForeignKey [FK_CompraProducto_Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] DROP CONSTRAINT [FK_CompraProducto_Producto]
GO
/****** Object:  ForeignKey [FK_Venta_Cliente]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Cliente]
GO
/****** Object:  ForeignKey [FK_Venta_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Empleado]
GO
/****** Object:  ForeignKey [FK_Venta_ModoPago]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_ModoPago]
GO
/****** Object:  ForeignKey [FK_Venta_Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Producto]
GO
/****** Object:  ForeignKey [FK_RegistroSalida_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistroSalida_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistroSalida]'))
ALTER TABLE [dbo].[RegistroSalida] DROP CONSTRAINT [FK_RegistroSalida_Empleado]
GO
/****** Object:  ForeignKey [FK_RegistroEntrada_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistroEntrada_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]'))
ALTER TABLE [dbo].[RegistroEntrada] DROP CONSTRAINT [FK_RegistroEntrada_Empleado]
GO
/****** Object:  ForeignKey [FK_Pago_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pago_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pago]'))
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Empleado]
GO
/****** Object:  ForeignKey [FK_InventarioActual_Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioActual_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioActual]'))
ALTER TABLE [dbo].[InventarioActual] DROP CONSTRAINT [FK_InventarioActual_Producto]
GO
/****** Object:  ForeignKey [FK_InventarioActual_Sucursal]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioActual_Sucursal]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioActual]'))
ALTER TABLE [dbo].[InventarioActual] DROP CONSTRAINT [FK_InventarioActual_Sucursal]
GO
/****** Object:  ForeignKey [FK_Factura_Cliente]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Cliente]
GO
/****** Object:  ForeignKey [FK_Factura_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Empleado]
GO
/****** Object:  ForeignKey [FK_Factura_Venta]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Venta]
GO
/****** Object:  ForeignKey [FK_Devolucion_Cliente]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] DROP CONSTRAINT [FK_Devolucion_Cliente]
GO
/****** Object:  ForeignKey [FK_Devolucion_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] DROP CONSTRAINT [FK_Devolucion_Empleado]
GO
/****** Object:  ForeignKey [FK_Devolucion_Factura]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] DROP CONSTRAINT [FK_Devolucion_Factura]
GO
/****** Object:  ForeignKey [FK_Devolucion_ModoPago]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] DROP CONSTRAINT [FK_Devolucion_ModoPago]
GO
/****** Object:  ForeignKey [FK_DealleFactura_Factura]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealleFactura_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealleFactura]'))
ALTER TABLE [dbo].[DealleFactura] DROP CONSTRAINT [FK_DealleFactura_Factura]
GO
/****** Object:  ForeignKey [FK_DealleFactura_Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealleFactura_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealleFactura]'))
ALTER TABLE [dbo].[DealleFactura] DROP CONSTRAINT [FK_DealleFactura_Producto]
GO
/****** Object:  Table [dbo].[DealleFactura]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealleFactura_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealleFactura]'))
ALTER TABLE [dbo].[DealleFactura] DROP CONSTRAINT [FK_DealleFactura_Factura]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealleFactura_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealleFactura]'))
ALTER TABLE [dbo].[DealleFactura] DROP CONSTRAINT [FK_DealleFactura_Producto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealleFactura]') AND type in (N'U'))
DROP TABLE [dbo].[DealleFactura]
GO
/****** Object:  Table [dbo].[Devolucion]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] DROP CONSTRAINT [FK_Devolucion_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] DROP CONSTRAINT [FK_Devolucion_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] DROP CONSTRAINT [FK_Devolucion_Factura]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] DROP CONSTRAINT [FK_Devolucion_ModoPago]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Devolucion]') AND type in (N'U'))
DROP TABLE [dbo].[Devolucion]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Venta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
DROP TABLE [dbo].[Factura]
GO
/****** Object:  Table [dbo].[InventarioActual]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioActual_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioActual]'))
ALTER TABLE [dbo].[InventarioActual] DROP CONSTRAINT [FK_InventarioActual_Producto]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioActual_Sucursal]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioActual]'))
ALTER TABLE [dbo].[InventarioActual] DROP CONSTRAINT [FK_InventarioActual_Sucursal]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InventarioActual]') AND type in (N'U'))
DROP TABLE [dbo].[InventarioActual]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pago_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pago]'))
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND type in (N'U'))
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[RegistroEntrada]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistroEntrada_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]'))
ALTER TABLE [dbo].[RegistroEntrada] DROP CONSTRAINT [FK_RegistroEntrada_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]') AND type in (N'U'))
DROP TABLE [dbo].[RegistroEntrada]
GO
/****** Object:  Table [dbo].[RegistroSalida]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistroSalida_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistroSalida]'))
ALTER TABLE [dbo].[RegistroSalida] DROP CONSTRAINT [FK_RegistroSalida_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistroSalida]') AND type in (N'U'))
DROP TABLE [dbo].[RegistroSalida]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Empleado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_ModoPago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_Producto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[CompraProducto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] DROP CONSTRAINT [FK_CompraProducto_ModoPago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_PedidoProveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] DROP CONSTRAINT [FK_CompraProducto_PedidoProveedor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] DROP CONSTRAINT [FK_CompraProducto_Producto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompraProducto]') AND type in (N'U'))
DROP TABLE [dbo].[CompraProducto]
GO
/****** Object:  Table [dbo].[PedidoProveedor]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PedidoProveedor_Proveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[PedidoProveedor]'))
ALTER TABLE [dbo].[PedidoProveedor] DROP CONSTRAINT [FK_PedidoProveedor_Proveedor]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PedidoProveedor]') AND type in (N'U'))
DROP TABLE [dbo].[PedidoProveedor]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_CategoriaProducto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_CategoriaProducto]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Marca]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Marca]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Puesto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Puesto]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Sucursal]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Sucursal]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Turno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Turno]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marca]') AND type in (N'U'))
DROP TABLE [dbo].[Marca]
GO
/****** Object:  Table [dbo].[ModoPago]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ModoPago]') AND type in (N'U'))
DROP TABLE [dbo].[ModoPago]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proveedor]') AND type in (N'U'))
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/02/2018 20:35:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Puesto]') AND type in (N'U'))
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 11/02/2018 20:35:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sucursal]') AND type in (N'U'))
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 11/02/2018 20:35:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Turno]') AND type in (N'U'))
DROP TABLE [dbo].[Turno]
GO
/****** Object:  Table [dbo].[CategoriaProducto]    Script Date: 11/02/2018 20:35:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriaProducto]') AND type in (N'U'))
DROP TABLE [dbo].[CategoriaProducto]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/02/2018 20:35:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/02/2018 20:35:27 ******/
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
	[TelefonoCliente] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY NONCLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[CategoriaProducto]    Script Date: 11/02/2018 20:35:27 ******/
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
	[NombreCategoria] [varchar](50) NULL,
 CONSTRAINT [PK_CategoriaProducto] PRIMARY KEY CLUSTERED 
(
	[Id_CategoriaProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 11/02/2018 20:35:27 ******/
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
	[HoraEntrada] [time](7) NULL,
	[HoraSalida] [time](7) NULL,
 CONSTRAINT [PK_Turno] PRIMARY KEY NONCLUSTERED 
(
	[Id_Turno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[Sucursal]    Script Date: 11/02/2018 20:35:27 ******/
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
	[TelefonoSuc] [int] NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY NONCLUSTERED 
(
	[Id_Sucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/02/2018 20:35:28 ******/
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
	[SueldoBase] [int] NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY NONCLUSTERED 
(
	[Id_Puesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[Proveedor]    Script Date: 11/02/2018 20:35:28 ******/
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
	[TelefonoProveedor] [int] NULL,
	[LogoProveedor] [image] NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY NONCLUSTERED 
(
	[Id_Poveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
/****** Object:  Table [dbo].[ModoPago]    Script Date: 11/02/2018 20:35:28 ******/
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
	[ModoPago] [varchar](50) NULL,
 CONSTRAINT [PK_ModoPago] PRIMARY KEY NONCLUSTERED 
(
	[Id_ModoPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[Marca]    Script Date: 11/02/2018 20:35:28 ******/
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
	[Marca] [varchar](50) NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY NONCLUSTERED 
(
	[Id_Marca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[Empleado]    Script Date: 11/02/2018 20:35:28 ******/
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
	[FechaNacimiento] [datetime] NULL,
	[FechaContratacion] [date] NULL,
	[DireccionEmpleado] [varchar](50) NULL,
	[CiudadEmpleado] [varchar](50) NULL,
	[CP_Empleado] [varchar](50) NULL,
	[PaisEmpleado] [varchar](50) NULL,
	[TelefonoEmpleado] [int] NULL,
	[RFC_Empleado] [varchar](50) NULL,
	[Id_Sucursal] [int] NULL,
	[Id_Turno] [int] NULL,
	[Id_Puesto] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY NONCLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
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
/****** Object:  Table [dbo].[Producto]    Script Date: 11/02/2018 20:35:28 ******/
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
	[ImagenProducto] [image] NULL,
	[Id_Marca] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY NONCLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
/****** Object:  Table [dbo].[PedidoProveedor]    Script Date: 11/02/2018 20:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PedidoProveedor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PedidoProveedor](
	[Id_PedidoProveedor] [int] IDENTITY(2,1) NOT NULL,
	[Id_Proveedor] [int] NULL,
	[FechaPedido] [datetime] NULL,
	[FechaEntreaPedido] [datetime] NULL,
 CONSTRAINT [PK_PedidoProveedor] PRIMARY KEY CLUSTERED 
(
	[Id_PedidoProveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CompraProducto]    Script Date: 11/02/2018 20:35:28 ******/
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
/****** Object:  Table [dbo].[Venta]    Script Date: 11/02/2018 20:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Venta](
	[Id_Venta] [int] IDENTITY(2,1) NOT NULL,
	[Id_Producto] [int] NULL,
	[FechaVenta] [datetime] NULL,
	[HoraVenta] [time](7) NULL,
	[Id_Empleado] [int] NULL,
	[Id_Cliente] [int] NULL,
	[Id_ModoPago] [int] NULL,
	[CantidadPiezas] [int] NULL,
	[Costo] [int] NULL,
	[SubTotal]  AS ([Costo]*[CantidadPiezas]),
	[CostoTotal]  AS (((0.16)*[Costo]+[Costo])*[CantidadPiezas]),
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[Id_Venta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RegistroSalida]    Script Date: 11/02/2018 20:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistroSalida]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RegistroSalida](
	[Id_RegistroSalida] [int] IDENTITY(2,1) NOT NULL,
	[FechaRegistroSalida] [datetime] NULL,
	[RegHoraSalida] [time](7) NULL,
	[Id_Empleado] [int] NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RegistroSalida]') AND name = N'IDX_RegistroSalida')
CREATE CLUSTERED INDEX [IDX_RegistroSalida] ON [dbo].[RegistroSalida] 
(
	[FechaRegistroSalida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroEntrada]    Script Date: 11/02/2018 20:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RegistroEntrada](
	[Id_RegistroEntrada] [int] IDENTITY(2,1) NOT NULL,
	[FechaRegistroEntrada] [datetime] NULL,
	[RegHoraEntrada] [time](7) NULL,
	[Id_Empleado] [int] NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]') AND name = N'IDX_RegistroEntrada')
CREATE CLUSTERED INDEX [IDX_RegistroEntrada] ON [dbo].[RegistroEntrada] 
(
	[FechaRegistroEntrada] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 11/02/2018 20:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[FechaPago] [datetime] NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND name = N'IDX_Pago')
CREATE CLUSTERED INDEX [IDX_Pago] ON [dbo].[Pago] 
(
	[HorasTrabajadas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventarioActual]    Script Date: 11/02/2018 20:35:28 ******/
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
/****** Object:  Table [dbo].[Factura]    Script Date: 11/02/2018 20:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Factura](
	[Id_Factura] [int] IDENTITY(2,1) NOT NULL,
	[Id_Venta] [int] NULL,
	[Id_Empleado] [int] NULL,
	[Id_Cliente] [int] NULL,
	[FechaFactura] [datetime] NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[Id_Factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Devolucion]    Script Date: 11/02/2018 20:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[ReembolsoTotal] [int] NULL,
	[FechaDev] [datetime] NULL,
	[Id_ModoPago] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DealleFactura]    Script Date: 11/02/2018 20:35:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	[FechaDetalleFac] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_Empleado_Puesto]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Puesto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([Id_Puesto])
REFERENCES [dbo].[Puesto] ([Id_Puesto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Puesto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
/****** Object:  ForeignKey [FK_Empleado_Sucursal]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Sucursal]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Sucursal] FOREIGN KEY([Id_Sucursal])
REFERENCES [dbo].[Sucursal] ([Id_Sucursal])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Sucursal]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Sucursal]
GO
/****** Object:  ForeignKey [FK_Empleado_Turno]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Turno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Turno] FOREIGN KEY([Id_Turno])
REFERENCES [dbo].[Turno] ([Id_Turno])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleado_Turno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleado]'))
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Turno]
GO
/****** Object:  ForeignKey [FK_Producto_CategoriaProducto]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_CategoriaProducto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_CategoriaProducto] FOREIGN KEY([Id_CategoriaProducto])
REFERENCES [dbo].[CategoriaProducto] ([Id_CategoriaProducto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_CategoriaProducto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_CategoriaProducto]
GO
/****** Object:  ForeignKey [FK_Producto_Marca]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Marca]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Marca] FOREIGN KEY([Id_Marca])
REFERENCES [dbo].[Marca] ([Id_Marca])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Marca]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Marca]
GO
/****** Object:  ForeignKey [FK_PedidoProveedor_Proveedor]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PedidoProveedor_Proveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[PedidoProveedor]'))
ALTER TABLE [dbo].[PedidoProveedor]  WITH CHECK ADD  CONSTRAINT [FK_PedidoProveedor_Proveedor] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[Proveedor] ([Id_Poveedor])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PedidoProveedor_Proveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[PedidoProveedor]'))
ALTER TABLE [dbo].[PedidoProveedor] CHECK CONSTRAINT [FK_PedidoProveedor_Proveedor]
GO
/****** Object:  ForeignKey [FK_CompraProducto_ModoPago]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto]  WITH CHECK ADD  CONSTRAINT [FK_CompraProducto_ModoPago] FOREIGN KEY([Id_ModoPago])
REFERENCES [dbo].[ModoPago] ([Id_ModoPago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] CHECK CONSTRAINT [FK_CompraProducto_ModoPago]
GO
/****** Object:  ForeignKey [FK_CompraProducto_PedidoProveedor]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_PedidoProveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto]  WITH CHECK ADD  CONSTRAINT [FK_CompraProducto_PedidoProveedor] FOREIGN KEY([Id_PedidoProveedor])
REFERENCES [dbo].[PedidoProveedor] ([Id_PedidoProveedor])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_PedidoProveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] CHECK CONSTRAINT [FK_CompraProducto_PedidoProveedor]
GO
/****** Object:  ForeignKey [FK_CompraProducto_Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto]  WITH CHECK ADD  CONSTRAINT [FK_CompraProducto_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Id_Producto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompraProducto_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompraProducto]'))
ALTER TABLE [dbo].[CompraProducto] CHECK CONSTRAINT [FK_CompraProducto_Producto]
GO
/****** Object:  ForeignKey [FK_Venta_Cliente]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cliente] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[Cliente] ([Id_Cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cliente]
GO
/****** Object:  ForeignKey [FK_Venta_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Empleado]
GO
/****** Object:  ForeignKey [FK_Venta_ModoPago]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_ModoPago] FOREIGN KEY([Id_ModoPago])
REFERENCES [dbo].[ModoPago] ([Id_ModoPago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_ModoPago]
GO
/****** Object:  ForeignKey [FK_Venta_Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Id_Producto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Producto]
GO
/****** Object:  ForeignKey [FK_RegistroSalida_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistroSalida_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistroSalida]'))
ALTER TABLE [dbo].[RegistroSalida]  WITH CHECK ADD  CONSTRAINT [FK_RegistroSalida_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistroSalida_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistroSalida]'))
ALTER TABLE [dbo].[RegistroSalida] CHECK CONSTRAINT [FK_RegistroSalida_Empleado]
GO
/****** Object:  ForeignKey [FK_RegistroEntrada_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistroEntrada_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]'))
ALTER TABLE [dbo].[RegistroEntrada]  WITH CHECK ADD  CONSTRAINT [FK_RegistroEntrada_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistroEntrada_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistroEntrada]'))
ALTER TABLE [dbo].[RegistroEntrada] CHECK CONSTRAINT [FK_RegistroEntrada_Empleado]
GO
/****** Object:  ForeignKey [FK_Pago_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pago_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pago]'))
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pago_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pago]'))
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Empleado]
GO
/****** Object:  ForeignKey [FK_InventarioActual_Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioActual_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioActual]'))
ALTER TABLE [dbo].[InventarioActual]  WITH CHECK ADD  CONSTRAINT [FK_InventarioActual_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Id_Producto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioActual_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioActual]'))
ALTER TABLE [dbo].[InventarioActual] CHECK CONSTRAINT [FK_InventarioActual_Producto]
GO
/****** Object:  ForeignKey [FK_InventarioActual_Sucursal]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioActual_Sucursal]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioActual]'))
ALTER TABLE [dbo].[InventarioActual]  WITH CHECK ADD  CONSTRAINT [FK_InventarioActual_Sucursal] FOREIGN KEY([Id_Sucursal])
REFERENCES [dbo].[Sucursal] ([Id_Sucursal])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioActual_Sucursal]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioActual]'))
ALTER TABLE [dbo].[InventarioActual] CHECK CONSTRAINT [FK_InventarioActual_Sucursal]
GO
/****** Object:  ForeignKey [FK_Factura_Cliente]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[Cliente] ([Id_Cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
/****** Object:  ForeignKey [FK_Factura_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Empleado]
GO
/****** Object:  ForeignKey [FK_Factura_Venta]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Venta] FOREIGN KEY([Id_Venta])
REFERENCES [dbo].[Venta] ([Id_Venta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Factura_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Factura]'))
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Venta]
GO
/****** Object:  ForeignKey [FK_Devolucion_Cliente]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion]  WITH CHECK ADD  CONSTRAINT [FK_Devolucion_Cliente] FOREIGN KEY([Id_Cliente])
REFERENCES [dbo].[Cliente] ([Id_Cliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] CHECK CONSTRAINT [FK_Devolucion_Cliente]
GO
/****** Object:  ForeignKey [FK_Devolucion_Empleado]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion]  WITH CHECK ADD  CONSTRAINT [FK_Devolucion_Empleado] FOREIGN KEY([Id_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Empleado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] CHECK CONSTRAINT [FK_Devolucion_Empleado]
GO
/****** Object:  ForeignKey [FK_Devolucion_Factura]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion]  WITH CHECK ADD  CONSTRAINT [FK_Devolucion_Factura] FOREIGN KEY([Id_Factura])
REFERENCES [dbo].[Factura] ([Id_Factura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] CHECK CONSTRAINT [FK_Devolucion_Factura]
GO
/****** Object:  ForeignKey [FK_Devolucion_ModoPago]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion]  WITH CHECK ADD  CONSTRAINT [FK_Devolucion_ModoPago] FOREIGN KEY([Id_ModoPago])
REFERENCES [dbo].[ModoPago] ([Id_ModoPago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Devolucion_ModoPago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Devolucion]'))
ALTER TABLE [dbo].[Devolucion] CHECK CONSTRAINT [FK_Devolucion_ModoPago]
GO
/****** Object:  ForeignKey [FK_DealleFactura_Factura]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealleFactura_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealleFactura]'))
ALTER TABLE [dbo].[DealleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DealleFactura_Factura] FOREIGN KEY([Id_Factura])
REFERENCES [dbo].[Factura] ([Id_Factura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealleFactura_Factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealleFactura]'))
ALTER TABLE [dbo].[DealleFactura] CHECK CONSTRAINT [FK_DealleFactura_Factura]
GO
/****** Object:  ForeignKey [FK_DealleFactura_Producto]    Script Date: 11/02/2018 20:35:28 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealleFactura_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealleFactura]'))
ALTER TABLE [dbo].[DealleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DealleFactura_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Id_Producto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DealleFactura_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DealleFactura]'))
ALTER TABLE [dbo].[DealleFactura] CHECK CONSTRAINT [FK_DealleFactura_Producto]
GO
