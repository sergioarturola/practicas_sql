#creando base de datos
create database registros;

#creando tablas dentro de registros y agregando valores
use registros;
create table placas(
#es al reves de los lenguajes de programacion 1ro va el nombre y luego el tipo de variable

id int not null auto_increment,
numero int not null,
letras varchar(10) not null,
##para ubicar nuestro id como la llave primaria
primary key(id)
);

#insertando datos en la tabla

insert into placas(numero, letras)  values(323, 'PER');
insert into  placas(numero, letras) values(793, 'GVS');
insert into placas (numero, letras) values(828, 'CZV');

#mostrando datos

select * from placas;



