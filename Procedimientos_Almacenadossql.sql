/*Ejecutando procedimientos*/

/*https://www.youtube.com/watch?v=nNywgsb_HPs&t=203s*/
exec sp_lista_productos
go

/*Seleccionar todos los productos*/
create procedure 
as
select IdProducto, CodigoBarra, Nombre,Marca, Categoria, Precio
from Producto
go

/*Insertar producto*/
create procedure sp_guardar_productos
(
@codigoBarra varchar(50),
@nombre varchar(50),
@marca varchar(50),
@categoria varchar(50),
@precio decimal(10,2)
)as
insert into Producto(CodigoBarra, Nombre,Marca, Categoria, Precio)
values (@codigoBarra, @nombre, @marca, @categoria, @precio)

/*Actualizar producto*/

create procedure sp_editar_producto (
@idProducto int,
@codigoBarra varchar(50) null,
@nombre varchar(50) null,
@marca varchar(50) null,
@categoria varchar(50) null,
@precio decimal(10,2) null
)
as
update producto set 
CodigoBarra = isnull(@codigoBarra, CodigoBarra),
Nombre = isnull(@nombre, Nombre),
Marca = isnull(@marca, Marca),
Categoria = isnull(@categoria, Categoria),
Precio = isnull(@precio, Precio)
where IdProducto = @idProducto
go

/*Eliminar producto*/

create procedure sp_eliminar (@idProducto int)
as
delete from Producto where  IdProducto = @idProducto
go