--Practica Num 5---

------------------------------------------------------------------
Select NumFila,COUNT(NumFila) as CantidadFilas 
FROM Asiento GROUP BY NumFila;

------------------------------------------------------------------
SELECT Nombre,COUNT(Nombre) AS Clientes,
COUNT(id_Cliente) AS IDsC, COUNT(Telefono) AS Telefonos
FROM Cliente
GROUP BY Nombre;

SELECT NombreEmpleado,COUNT(id_Empleado) AS Empleados,
COUNT(DireccionEm) AS Direcciones, COUNT(TelefonoEm) AS Telefonos
FROM Empleado
GROUP BY NombreEmpleado;

------------------------------------------------------------------
SELECT NomClaseBoleto,MAX(PrecioCBoleto) as PrecioMayor,
SUM(PrecioTotal) AS Precios,COUNT(id_NumDetalle) AS Facturas 
FROM ClaseBoleto,DetalleFacBoleto
WHERE ClaseBoleto.id_ClaseBoleto=DetalleFacBoleto.id_NumFacBol
GROUP BY NomClaseBoleto
Order By PrecioMayor;

SELECT Edad, COUNT(*) as Edades, SUM(Telefono) as Clientes,
MAX(Edad) AS EdadMax
FROM Cliente AS c,FacturaBoleto AS f
WHERE c.id_Cliente=f.id_Cliente 
GROUP BY Edad;

-------------------------------------------------------------------
SELECT Departamento.NomDepartamento, COUNT(Empleado.id_Empleado) AS EmpleadoDep
FROM Departamento,Empleado
WHERE Departamento.id_Departamento = Empleado.id_Departamento AND Departamento.id_Departamento = 1
GROUP BY Departamento.NomDepartamento
HAVING Departamento.NomDepartamento LIKE '%C%';

SELECT ClaseBoleto.PrecioCBoleto,COUNT(DetalleFacBoleto.CantidadBol),SUM(ClaseBoleto.PrecioCBoleto),
Max(ClaseBoleto.PrecioCBoleto) AS Max_Precios
FROM DetalleFacBoleto,ClaseBoleto
GROUP BY ClaseBoleto.PrecioCBoleto
HAVING ClaseBoleto.PrecioCBoleto > 5;

-------------------------------------------------------------------
SELECT TOP(2) * FROM TipoEvento;