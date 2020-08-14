create database PracticoBDD3
;

use PracticoBDD3
;

create table Persona(
	id int not null primary key auto_increment,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	mail varchar(50) null,
	fechaHoraCreacion timestamp default current_timestamp,
	Activo boolean not null
)
;

Create table PersonaTel(
	idPersona int not null,
	telefono int not null ,
	primary key(idPersona,telefono),
	foreign key(idPersona) references persona(id)
)
;

Create table Servicio(
	id int  not null primary key auto_increment,
	nombre varchar(20) not null,
	costoMensual int not null,
	tipo varchar(50) not null,
	fechaHoraCreacion timestamp default current_timestamp,
	activo boolean not null
)
;

create table contrata(
	idPersona int,
	idServicio int,
	fechaCreacion date,
	fechaContratacion date,
	fechaFinContrato date,
	primary key(idPersona,IdServicio,fechaCreacion),
	foreign key(idPersona) references Persona(id),
	foreign key(idServicio) references Servicio(id)
)
;






