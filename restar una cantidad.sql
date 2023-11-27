create database juegos;

use juegos;

create table disponibles(
    id_juego int not null auto_increment,
    nombre varchar(60),
    cantidad int,
    primary key(id_juego)
);

insert into disponibles(nombre, cantidad) values("Flight Simulator", 23);
insert into disponibles(nombre, cantidad) values("The Sting", 55);
insert into disponibles(nombre, cantidad) values("The Sims", 15);
insert into disponibles(nombre, cantidad) values("Minecraft", 30);

select * from disponibles;

#restando cantidades con el siguiente codigo y ayuda ded update

update disponibles
set cantidad = cantidad - 10
where id_juego = 3;

select * from disponibles