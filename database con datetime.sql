create database usuarios;

use usuarios;

create table tipo_usuario(
  id int primary key not null auto_increment,
  nombre varchar(45)

);

create table usuario(
   id int primary key not null auto_increment,
   usuario varchar(45) not null,
   password varchar(45) not null,
   nombre varchar(80) not null, #nombre del usuario
   correo varchar(45) not null,
   last_session datetime, #ultima vez que inicio sesion (fecha y hora)
   id_tipo int,
   foreign key(id_tipo) references tipo_usuario(id)
);

insert into tipo_usuario(nombre) values("Administrador");
insert into tipo_usuario(nombre) values("Usuario");

select * from tipo_usuario;
select * from usuario;
select count(id) from usuario where usuario = "admin";

drop database usuarios;