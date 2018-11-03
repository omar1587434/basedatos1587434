
								/*"Select Basicos"*/

/*5 selects basicos con cambio de nombre de la columna, alias y usar funciones*/
select(NombreEmpleado + ' ' + ApPaEmpleado + '' + ApMaEmpleado) As 'Nomcompleto'
from Empleado as Emp

Select Count (Emp.Id_Empleado)
From Empleado As Emp

Select ('Caegoria: ' + CatP.NombreCategoria) As 'Caegorias de productos'
From CategoriaProducto As CatP

Select Max (CP_Empleado) 'Còdigo postal màs grande'
From Empleado As Emp

Select Min (TelefonoEmpleado) 'Nùmero Teleono màs chico'
From Empleado As Emp


/*4 selects Join (cross, inner, left, right)*/

Select Emp.NombreEmpleado As 'Nombre de Empleado', Pues.NombrePuesto As 'Tipo Puesto'
From Empleado As Emp
Inner Join Puesto As Pues
On Emp.Id_Puesto = Pues.Id_Puesto

Select Pues.SueldoBase As 'Sueldo Empleado', Emp.NombreEmpleado As 'Nombre de Empleado'
From Empleado As Emp
Left Join Puesto As Pues
On Emp.Id_Puesto = Pues.Id_Puesto

Select (Suc.DireccionSuc) As 'Sucursal de trabajo', Emp.NombreEmpleado As 'Nombre de Empleado'
From Sucursal As Suc
Right Join Empleado As Emp
On Suc.Id_Sucursal = Emp.Id_Sucursal


select Suc.DireccionSuc, Emp.DireccionEmpleado
From Sucursal As Suc
cross join Empleado As Emp

/*5 select con uso de where en diferentes tablas y campos (1 con order by)*/

Select Prod.NombreProducto As 'Nombre Productos con P' 
From Producto As Prod
Where NombreProducto Like 'P%'

Select Ma.Marca As 'Marca de articulos que empiezen y terminen con s' 
From Marca As Ma
Where Marca Like 's%s'

Select (Prod.NombreProducto) As 'Producto A precio bajo' 
From Producto As Prod
Where Precio < 5

Select Prod.NombreProducto As 'Nombre Producto', Prod.Precio As 'Precio Producto Menor a 14 Pesos'
From Producto As Prod
Where Prod.Precio < 14
Order By Prod.Precio Desc

Select *
From Pago As Pag
Where Pag.PagoTotal > 2000
Order By Pag.FechaPago Asc

/*
5 selects con uso de funciones de agregación (min, max, avg, std, count)
2 sin group by
3 con group by y 1 de los 3 con having
*/

Select Min (Prod.Precio) As PrecioMinimo
From Producto As Prod

Select Max (Prod.Precio) As PrecioMaximo
From Producto As Prod

Select Pag.PagoTotal As 'Pago Total', Count (Emp.Id_Empleado) As 'Cantidad de Empleados'
From Pago As Pag Full Join Empleado As Emp
On pag.Id_Empleado = Emp.Id_Empleado
Group By Pag.PagoTotal
Having Count (Emp.Id_Empleado) > 0

Select Clien.NombreCliente As 'Nombre Cliente', Avg (vent.CostoTotal) As 'Promedio del total de ventas'
From Cliente As Clien Full Join Venta As vent
On Clien.Id_Cliente =  vent.Id_Cliente
Group By Clien.NombreCliente
Having Avg (vent.CostoTotal) > 10

Select Emp.NombreEmpleado As 'Nombre Empleado', Stdevp (pag.PagoTotal) As 'Desviaciòn estandar del pagototal'
From Empleado As Emp Full Join Pago As pag
On Emp.Id_Empleado =  pag.Id_Empleado
Group By Emp.NombreEmpleado
Having Stdevp (pag.PagoTotal)< 10


/*3 selects con join y group by*/

Select (Emp.NombreEmpleado+ ' '+ Emp.ApPaEmpleado+ ' ' + Emp.ApMaEmpleado) As 'Nombre completo del Empleado', suc.DireccionSuc As LugarTrabajo
From Empleado As Emp Inner Join Sucursal As suc
On Emp.Id_Sucursal = suc.Id_Sucursal
Group By (Emp.NombreEmpleado+ ' '+ Emp.ApPaEmpleado+ ' ' + Emp.ApMaEmpleado), suc.DireccionSuc

Select Emp.NombreEmpleado As 'Nombre de Empleado', Pues.NombrePuesto As 'Puesto de Empleado'
From Empleado As Emp Inner Join Puesto As Pues
On Emp.Id_Puesto = Pues.Id_Puesto
Group By Emp.NombreEmpleado, Pues.NombrePuesto

Select Tur.Turno As 'Tipo de Turno', Emp.NombreEmpleado As 'Nombre de Empleado'
From Turno As Tur Left Join Empleado As Emp
On Tur.Id_Turno = Emp.Id_Turno
Group By Tur.Turno, Emp.NombreEmpleado

/*1 select into con drop table y reinsertar las filas*/

SELECT *
       INTO #TMPCategoria
       FROM CategoriaProducto

Select *
From #TMPCategoria

Select *
From CategoriaProducto

Drop Table CategoriaProducto

Select*
Into CategoriaProducto 
From #TMPCategoria