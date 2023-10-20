use administra;

#creando una tabla

create table usuarios(

   nombre varchar(50),
   edad int(40)

);

create table datos(
   correo varchar(50),
   telefono int(40)
   
);

#mostrando las tablas
show tables;

#para eliminar una tabla se usa la palabra drop 
drop table datos;
#describe las columnas y de que tipo son
describe usuarios;

#otra forma de mostrar las tablas

show columns from usuarios;
show columns from datos;

#otra manera de eliminar tablas

drop table if exists datos;