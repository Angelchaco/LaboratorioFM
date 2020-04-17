create database SISTEMA_FM;
use SISTEMA_FM;

create table clientes
(
No_Tarjeta int primary key,
Nombre varchar (60) not null,
Apellido varchar (60) not null,
Correo varchar (60) not null,
Direccion varchar (60) not null,
Estatus varchar (1) not null

)engine=InnoDB Default charset = Latin1 ;


create table articulos
(
Id_Articulo int primary key,
Tipo varchar (60) not null,
Nombre varchar (60) not null,
Genero varchar (60) not null,
Descripcion varchar (60) not null,
Precio_Renta float not null,
Existencia int  not null

) engine=InnoDB Default charset = Latin1 ;

create table rentas
(
Id_Renta int primary key,
No_Tarjeta int Not null,
Nombre_Cliente varchar (60) not null,
Id_Articulo int not null,
Precio_Renta float not null,
Fecha_Adquisicion date not null,
Fecha_Devolucion date not null, 
foreign key (No_Tarjeta) references clientes (No_Tarjeta),
foreign key(Id_Articulo) references articulos (Id_Articulo)
)engine=InnoDB Default charset = Latin1 ;




use SISTEMA_FM;

select * from articulos;
select * from clientes;
select * from rentas;



















