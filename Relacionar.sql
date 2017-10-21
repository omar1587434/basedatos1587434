use ticketmaster

create table RegionMX (ID_RegionMX int primary key not null, RegionMX varchar(20))

create table EstadoMX (ID_EstadoMX int primary key not null, EstadoMx varchar(30), ID_RegionMX int)

/*Relacion entre las tablas RegionMX y EstadoMX */
alter table EstadoMX 
add constraint FK_EstadoMX_RegionMX
foreign key (ID_RegionMX) references RegionMX(ID_RegionMX)
on update cascade
on delete cascade

create table MunicipioMX (ID_MunicipioMX int primary key not null, Municipio varchar(30), ID_EstadoMX int)

alter table MunicipioMX
add constraint FK_MunicipioMX_EstadoMX
foreign key (ID_EstadoMX) references EstadoMX(ID_EstadoMX)
on update cascade
on delete cascade 

create table Recinto (ID_Recinto int primary key not null, NomRecinto varchar(50), DireccionRecinto varchar(50), ID_MunicipioMX int)

alter table Recinto
add constraint FK_Recinto_MunicipioMX
foreign key (ID_MunicipioMX) references MunicipioMX(ID_MunicipioMX)
on update cascade
on delete cascade 

create table TipoBoleto (ID_TipoBoleto int primary key not null, TipoBoleto varchar(20))
create table Seccion (ID_Seccion int primary key not null, NombSeccion varchar(30), PrecioSec int, ID_Recinto int, ID_TipoBoleto int)

alter table Seccion
add constraint FK_Seccion_Recinto
foreign key (ID_Recinto) references Recinto(ID_Recinto)
on update cascade
on delete cascade 

alter table Seccion
add constraint FK_Seccion_TipoBoleto
foreign key (ID_TipoBoleto) references TipoBoleto(ID_TipoBoleto)
on update cascade
on delete cascade 