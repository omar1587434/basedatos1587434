use ticketmaster
insert into RegionMX values (1, 'Noroeste')
insert into EstadoMX values (1,'Baja California', 1)
insert into MunicipioMX values (1, 'Mexicali', 1)

insert into RegionMX values (2, 'Noreste')
insert into RegionMX values (3, 'Oeste')
insert into RegionMX values (4, 'Este')
insert into RegionMX values (5, 'Centronorte')
insert into RegionMX values (6, 'Centrosur')
insert into RegionMX values (7, 'Suroeste')
insert into RegionMX values (8, 'Sureste')

insert into EstadoMX values (2, 'Baja California Sur',1)
insert into EstadoMX values (3, 'Chihuahua',1)
insert into EstadoMX values (4, 'Durango',1)
insert into EstadoMX values (5, 'Sinaloa',1)
insert into EstadoMX values (6, 'Sonora',1)
insert into EstadoMX values (7, 'Coahuila',2)
insert into EstadoMX values (8, 'Nuevo Leon',2)
insert into EstadoMX values (9, 'Tamaulipas',2)

update EstadoMX set EstadoMX='DurangoAct'
  where ID_EstadoMX= 4
  
 select * from EstadoMX 

 update EstadoMX set EstadoMX='SonoraAct'
  where ID_EstadoMX= 6
  
  update EstadoMX set EstadoMX='TamaulipasAct'
  where ID_EstadoMX= 9
  
  update EstadoMX set EstadoMX='CoahuilaAct'
  where ID_EstadoMX= 7
  
  update EstadoMX set EstadoMX='Nuevo LeonAct'
  where ID_EstadoMX= 8
  
  delete EstadoMX 
  where ID_EstadoMX= 4
  
  
   delete EstadoMX 
  where ID_EstadoMX= 6
  
   delete EstadoMX 
  where ID_EstadoMX= 7
  
   delete EstadoMX 
  where ID_EstadoMX= 8
  
   delete EstadoMX 
  where ID_EstadoMX= 9
  
  
 
 