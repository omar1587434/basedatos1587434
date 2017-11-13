--Creacion de la base de datos--
create database ticketmaster
--uso de la base de datos--
use ticketmaster

create table Cliente(id_Cliente int primary key not null, Nombre varchar(25), ApPaterno varchar(25), ApMaterno varchar(25), Edad int, Telefono int, Email varchar(50))
select * from Cliente
/*insertar registros*/
insert into Cliente values (1,'Francisco','Moreno','Velazquez',18,11682488,'FR@gmail.com')
insert into Cliente values (2,'Horacio','Hernandez','De Dios',19,11682487,'HR@gmail.com')


create table FacturaBoleto(id_NumFacBol int primary key not null, id_Cliente int, FechaFac date, id_NumPago int, id_Empleado int)
select * from FacturaBoleto
/*insertar registros*/
insert into FacturaBoleto values (1,1,'2017-11-1',1,1)
insert into FacturaBoleto values (2,2,'2017-11-1',1,2)

create table DetalleFacBoleto(id_NumDetalle int primary key not null, id_NumFacBol int, id_Evento int, CantidadBol int, id_ClaseBoleto int, PrecioBoleto int,PrecioTotal int, id_Recinto int, id_HoraEvento int, id_Asiento int )
select * from DetalleFacBoleto
/*modificar tabla y uso de Columnas Computadas*/
alter table DetalleFacBoleto DROP COLUMN PrecioTotal 
alter table DetalleFacBoleto add PrecioTotal as cast((CantidadBol * PrecioBoleto) as int)
/*insertar registros*/
insert into DetalleFacBoleto values (1,1,1,2,1,10000,1,1,1)
insert into DetalleFacBoleto values (2,2,2,3,1,1000,1,1,1)


create table ModoPago(id_NumPago int primary key not null, TipoPaog varchar(30), OtrosDetalles varchar(20))
select * from ModoPago
/*insertar registros*/
insert into ModoPago values (1,'Efectivo','Pesos')
insert into ModoPago values (2,'Tarjeta','Pesos')



create table Empleado(id_Empleado int primary key not null, NombreEmpleado varchar(20), APEmpleado varchar(50), AMEmpleado varchar(50), id_Puesto int,id_Departamento int, DireccionEm varchar(50), TelefonoEm int, EmailEm varchar(50), Sueldo int)
select * from Empleado
/*insertar registros*/
insert into Empleado values (1, 'Adrian','Garcia','Tovar',1,1,'Monterrey',11682544,'Ad@gmail.com',8000)
insert into Empleado values (2, 'Alex','Salazar','Martinez',1,1,'Monterrey',11684544,'Alx@gmail.com',8000)

create table Puesto(id_Puesto int primary key not null, NomPuesto varchar(50))
select * from Puesto
/*insertar registros*/
insert into Puesto values (1,'Cajero')


create table Departamento(id_Departamento int primary key not null, NomDepartamento varchar(50))
select * from Departamento
/*insertar registros*/
insert into Departamento values (1,'Caja')


create table Vacaciones(id_Empleado int, FInicio date, FFinal date, DiasUsado varchar(50))
select * from Vacaciones
/*insertar registros*/
insert into Vacaciones values (1,'2017-12-24','2017-12-25', 'Ninguno')
insert into Vacaciones values (2,'2017-12-31','2018-01-2', 'Ninguno')



create table Recinto(id_Recinto int primary key not null, NomRecinto varchar(50), DireccionRec varchar(50), id_Region int, NumCantFilas int, NumCantColumnas int, ImagenRec image null )
select * from Recinto
/*insertar registros*/
insert into Recinto (id_Recinto, NomRecinto, DireccionRec, id_Region, NumCantFilas, NumCantColumnas) VALUES (1,'Arena MTY','Monterrey',1,40,40)
insert into Recinto (id_Recinto, NomRecinto, DireccionRec, id_Region, NumCantFilas, NumCantColumnas) VALUES (2,'Estadio Universitario','San Nicolas',1,1000,1000)

create table Region(id_Region int primary key not null, NomRegion varchar(50))
select * from Region
/*insertar registros*/
insert into Region values (1,'Nuevo León')
insert into Region values (2,'CD Mexico')



create table Asiento(id_Asiento int primary key not null, id_Recinto int, NumFila int , Columna varchar(20))
select * from Asiento
/*insertar registros*/
insert into Asiento values (1,1,1,'A')
insert into Asiento values (2,1,2,'B')
insert into Asiento values (3,1,3,'C')
insert into Asiento values (4,1,4,'D')
insert into Asiento values (5,1,5,'E')
insert into Asiento values (6,1,6,'F')

create table HoraEvento(id_HoraEvento int primary key not null, HoraEvento time, FechaEvento date)
select * from HoraEvento
/*insertar resgistros*/
insert into HoraEvento values (1,'10:00:00','2017-12-05')
insert into HoraEvento values (2,'07:15:00','2017-12-20')


create table TipoEvento(id_TipoEvento int primary key not null, TipoEvento varchar(50))
select * from TipoEvento
/*insertar registros*/
insert into TipoEvento values (1,'Concierto')
insert into TipoEvento values (2,'Deporte')
insert into TipoEvento values (3,'Teatro y Cultura')
insert into TipoEvento values (4,'Familiares')
insert into TipoEvento values (5,'Especiales')




create table ClaseBoleto(id_ClaseBoleto int primary key not null, PrecioCBoleto int, id_Evento int, id_Recinto int)
select * from ClaseBoleto
/*Insertar datos en las Tablas*/
alter table ClaseBoleto add NomClaseBoleto varchar(50)
insert into ClaseBoleto values (1,10000, 1, 1,'VIP')
insert into ClaseBoleto values (2,800, 1, 1,'General')
insert into ClaseBoleto values (3,1000, 2, 1,'VIP')
insert into ClaseBoleto values (4,100, 2, 1,'General')


create table Evento(id_Evento int primary key not null, id_TipoEvento int, NomEvento varchar(50),HoraEvento int, ImagenEvento image null )
select * from Evento


/*Relacionar las Tablas PK-FK(Modificar tablas que contengan FK para relacionarlas)*/
alter table FacturaBoleto 
add constraint FK_FacturaBoleto_Cliente
foreign key (id_Cliente) references Cliente(id_Cliente)
on update cascade
on delete cascade

alter table FacturaBoleto 
add constraint FK_FacturaBoleto_ModoPago
foreign key (id_NumPago) references ModoPago(id_NumPago)
on update cascade
on delete cascade

alter table FacturaBoleto 
add constraint FK_FacturaBoleto_Empleado
foreign key (id_Empleado) references Empleado(id_Empleado)
on update cascade
on delete cascade
/*-----------------------------*/
alter table Evento 
add constraint FK_Evento_TipoEvento
foreign key (id_TipoEvento) references TipoEvento(id_TipoEvento)
on update cascade
on delete cascade
/*--------------------------*/
alter table Vacaciones 
add constraint FK_Vacaciones_Empleado
foreign key (id_Empleado) references Empleado(id_Empleado)
on update cascade
on delete cascade
/*---------------------------*/

alter table ClaseBoleto 
add constraint FK_ClaseBoleto_Recinto
foreign key (id_Recinto) references Recinto(id_Recinto)
on update cascade
on delete cascade

alter table ClaseBoleto 
add constraint FK_ClaseBoleto_Evento
foreign key (id_Evento) references Evento(id_Evento)
on update cascade
on delete cascade

/*--------------------*/
alter table Recinto
add constraint FK_Recinto_Region
foreign key (id_Region) references Region(id_Region)
on update cascade
on delete cascade


/*----------------------*/
alter table Asiento 
add constraint FK_Asiento_Recinto
foreign key (id_Recinto) references Recinto(id_Recinto)
on update cascade
on delete cascade

/*----------------------*/
alter table Empleado 
add constraint FK_Empleado_Puesto
foreign key (id_Puesto) references Puesto(id_Puesto)
on update cascade
on delete cascade

alter table Empleado 
add constraint FK_Empleado_Departamento
foreign key (id_Departamento) references Departamento(id_Departamento)
on update cascade
on delete cascade

/*----------------------*/
alter table DetalleFacBoleto 
add constraint FK_DetalleFacBoleto_FacturaBoleto
foreign key (id_NumFacBol) references FacturaBoleto(id_NumFacBol)
on update cascade
on delete cascade

alter table DetalleFacBoleto 
add constraint FK_DetalleFacBoleto_Evento
foreign key (id_Evento) references Evento(id_Evento)
on update cascade
on delete cascade

alter table DetalleFacBoleto 
add constraint FK_DetalleFacBoleto_ClaseBoleto
foreign key (id_ClaseBoleto) references ClaseBoleto(id_ClaseBoleto)
on update cascade
on delete cascade

alter table DetalleFacBoleto 
add constraint FK_DetalleFacBoleto_Recinto
foreign key (id_Recinto) references Recinto(id_Recinto)
on update cascade
on delete cascade

alter table DetalleFacBoleto 
add constraint FK_DetalleFacBoleto_HoraEvento
foreign key (id_HoraEvento) references HoraEvento(id_HoraEvento)
on update cascade
on delete cascade

alter table DetalleFacBoleto 
add constraint FK_DetalleFacBoleto_Asiento
foreign key (id_Asiento) references Asiento(id_Asiento)
on update cascade
on delete cascade

/*-----------------*/

/*Uso de Triggers*/
create trigger Asiento_insert
on Asiento
--for | after | instead of insert | update | delete--
for insert
as print 'Hubo un cambio en la tabla Asiento'

create trigger Asiento_insert2
on Asiento
--for | after | instead of insert | update | delete--
after insert
as print 'Hubo un cambio en la tabla Asiento despues del insert registro'

