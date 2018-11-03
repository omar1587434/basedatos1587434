


						/*Procedimientos Almacenados y Funciones*/


--5 Procedimientos Almacenados para consultar los Reportes Creados anteriormente

create procedure ProcedimientoPagoTotal
(@parametro nvarchar(100))
as
begin

	select * 
	From ReportePagoTotal
	where [Pago Total] >  @parametro

end

exec ProcedimientoPagoTotal  @parametro = 1000
GO


create procedure ProcedimientoEmpleadoPuesto
(@parametro varchar(100))
as
begin

	select * 
	From ReporteEmpleadoPuesto
	where [Nombre de Empleado] =  @parametro

end

exec ProcedimientoEmpleadoPuesto  @parametro = 'Adrian'
GO

create procedure ProcedimientoEmpleadoTurno
(@parametro varchar(100))
as
begin

	select * 
	From ReporteEmpleadoTurno
	where [Tipo de Turno] =  @parametro

end

exec ProcedimientoEmpleadoTurno  @parametro = 'Completo'
GO


create procedure ProcedimientoNomEmpSucursal
(@parametro varchar(100))
as
begin

	select * 
	From ReporteNomEmpSucursal
	where [Nombre completo del Empleado] =  @parametro

end

exec ProcedimientoNomEmpSucursal  @parametro = 'Adrian Garcia Tovar'
GO


create procedure ProcedimientoPromedioVentas
(@parametro varchar(100))
as
begin

	select * 
	From ReportePromedioVentas
	where [Nombre Cliente] =  @parametro

end

exec ProcedimientoPromedioVentas  @parametro = '%x'
GO

--1 Funcion

create function Suma(
@parametro int
) returns int
as
begin
	return 100 + @parametro
end

Select dbo.Suma(20) as Suma


--1 Procedimiento Tipo Script

create procedure ScripBorrarCrearTablaCategoriaProducto
(@parametroTabla nvarchar(100))
as
begin

	declare @variable nvarchar(100)
	set @variable = @parametroTabla
	if @variable = 'CategoriaProducto'
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

exec ScripBorrarCrearTablaCategoriaProducto @parametroTabla = 'CategoriaProducto'
GO