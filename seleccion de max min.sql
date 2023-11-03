create database relacional;

use relacional;

create table persona(
  id int not null auto_increment,
  nombre varchar(50) not null,
  edad int not null,
  primary key(id) 
);

insert into persona(nombre, edad) values("Pigsito Arrigunaga", 33);
insert into persona(nombre, edad) values("Rafael Candelario", 45);
insert into persona(nombre, edad) values("Lady Pigsita", 25);
insert into persona(nombre, edad) values("Sergio Arturo", 28);
select * from persona;

#seleccionando edad mayor y menor
select max(edad) as edad_viejo from persona;
select min(edad) as chiquito from persona;
#ordenando por edad
select * from persona order by edad;
select * from persona order by edad desc;