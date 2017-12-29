create table PASAJERO(
	pasajero_ID int not null auto_increment,
    nombre_p varchar(30) not null,
    pasaporte varchar(15),
    contactoEmergencia varchar(40) not null,
    
    primary key (pasajero_ID)
    );
    
create table AEROLINEA_PASAJERO(
	pasajero_ID int not null,
	aerolinea_ID int not null,
    viajeroFrecuente numeric(12,0),
    
    primary key (pasajero_ID, aerolinea_ID)
);

alter table  AEROLINEA_PASAJERO ADD
constraint FK_Aerolinea_Pasajero
foreign key (pasajero_ID) 
references PASAJERO (pasajero_ID);
    