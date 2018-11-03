

											/*Uso de Triggers*/



--(3 triggers)


--Update

Create Trigger TrrggerEmpleadoUpdate
on Empleado 
after update
as print 'Se Actualizo la Tabla Empleado'


--Insert

Create Trigger TriggerMarcaInsert2
on Marca
--for | after | instead of insert | update | delete--
after insert
as print 'Se Reigistro en tabla Marca'
go

--Delete

Create Trigger TriggerMarcaDelete2
on Marca
instead of Delete 
as 
begin
select *
from deleted

print 'Se Elimino registro en tabla Marca'
end





