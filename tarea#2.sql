/*Creacion de la base de datos*/
create database ticketmaster

/*Uso de la base de datos */

use ticketmaster

/* Creacion de tablas*/
create table Cliente (IdCliente int not null, NombCliente varchar(50))
create table Boleto (IdBoleto int not null, IdCliente int)
create table Seccion (IdSeccion int not null, NombSeccion varchar(10), Precio int, PrecioIVA As (0.16 * Precio)+Precio , IdBoleto int)
create table TipoBoleto (IdTipoBoleto int not null, NombTipoBoleto varchar(10), IdSeccion int)
create table Evento (IdEvento int not null, TipoEvento varchar(10), NombEvento varchar(10, FechaEvento datetime, IdTipoBoleto int)
create table Recinto (IdRecinto int not null, NombRecinto varchar(10), DireccionRecinto varchar(50),CapacidadDelRecinto int, TotaldeSecciones int, IdEvento int)
create table Region (IdRegion int not null, NombRegion varchar(10), IdRecinto int)


create table Ventas (IdVenta int not null, IdEvento int, PrecioBoleto int ,CantidadBoletos int,PrecioTotal As PrecioBoleto * CantidadBoletos)

create table Lugar(IdLugar int not null, Fila varchar(5), Asiento int, IdSeccion int)

create clustered index IDX_NombCliente
on Cliente (NombCliente)