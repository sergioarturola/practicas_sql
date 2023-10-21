#workbrench
create database biblioteca;

use biblioteca;

create table libros(
	
    id_libro int not null primary key auto_increment,
    nombre varchar(50) default null,
    clave int default null
);

create table lectores(
	id_lector int not null primary key auto_increment,
    nombre varchar(50) default null,
    telefono int default null
);

create table prestamo(
	id_prestamo int not null primary key auto_increment,
    fecha varchar(30) default null,
    estado varchar(30) default null,
    #llave foranea
    fk_libro int not null,
    fk_usuario int not null,
    #relacionando las llaves foraneas con las llaves primarias
    -- llaveForanea(llave foranea) references tablaDestino(llaveprimaria)
    foreign key(fk_libro) references libros(id_libro),
    foreign key(fk_usuario) references lectores(id_lector)
);