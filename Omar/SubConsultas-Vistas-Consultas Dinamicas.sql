
				/*"SubConsultas"-"Vistas"-"Consultas Dinamicas"*/
				
				
				
				
/*3 Subconsultas(1 Tipo Columna y 1 Tipo Tabla)*/				
--Subconsulta Tipo Columna*/
Select PagoTotal, (
					Select count(PagoTotal) 
					From Pago as pag 
					Where pag.PagoTotal=pag.PagoTotal
					) as 'Cantidad de sueldos'
	From Pago
	Group by PagoTotal
	Order by PagoTotal desc
	
--Subconsulta Tipo Tabla*/

Select *
From
	(Select DireccionSuc As 'NombSucursal', count (DireccionSuc) As 'Cantidad'
		From Sucursal
		Group by DireccionSuc
	) As Sucursales
	



/*1 Subconsulta With*/

with SumaHoras As (
select HorasTrabajadas, count(HorasTrabajadas) as [Cantidad]
	From Pago
	group by HorasTrabajadas)

select *
from SumaHoras



/*5 Vistas de Tipo Reporte(Group by y Join)*/
Create View ReportePagoTotal
as select Pag.PagoTotal As [Pago Total], Count (Emp.Id_Empleado) As [Cantidad de Empleados]
From Pago As Pag Full Join Empleado As Emp
On pag.Id_Empleado = Emp.Id_Empleado
Group By Pag.PagoTotal
select * From ReportePagoTotal

Create View ReporteEmpleadoPuesto
as Select Emp.NombreEmpleado As [Nombre de Empleado], Pues.NombrePuesto As [Tipo Puesto]
From Empleado As Emp
Inner Join Puesto As Pues
On Emp.Id_Puesto = Pues.Id_Puesto

select * From ReporteEmpleadoPuesto

Create View ReporteEmpleadoTurno
as Select Tur.Turno As [Tipo de Turno], Emp.NombreEmpleado As [Nombre de Empleado]
From Turno As Tur Left Join Empleado As Emp
On Tur.Id_Turno = Emp.Id_Turno
Group By Tur.Turno, Emp.NombreEmpleado
select * From ReporteEmpleadoTurno

Create View ReporteNomEmpSucursal
as Select (Emp.NombreEmpleado+ ' '+ Emp.ApPaEmpleado+ ' ' + Emp.ApMaEmpleado) As [Nombre completo del Empleado], suc.DireccionSuc As [LugarTrabajo]
From Empleado As Emp Inner Join Sucursal As suc
On Emp.Id_Sucursal = suc.Id_Sucursal
Group By (Emp.NombreEmpleado+ ' '+ Emp.ApPaEmpleado+ ' ' + Emp.ApMaEmpleado), suc.DireccionSuc
select * From ReporteNomEmpSucursal

Create View ReportePromedioVentas
as Select Clien.NombreCliente As [Nombre Cliente], Avg (vent.CostoTotal) As [Promedio del total de ventas]
From Cliente As Clien Full Join Venta As vent
On Clien.Id_Cliente =  vent.Id_Cliente
Group By Clien.NombreCliente
Having Avg (vent.CostoTotal) > 10
select * From ReportePromedioVentas


/*1 Consulta Dinamica*/
declare @queryCliente nvarchar(MAX)
set @queryCliente = 'Select  NombreCliente From Cliente'

exec (@queryCliente)