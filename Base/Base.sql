CREATE DATABASE Large_Shop DEFAULT CHARACTER SET utf8 collate
utf8_unicode_ci;


create table Cliente (
id_cliente int not null unique,
nombre varchar (225) not null,
apellido varchar (225) not null,
direccion varchar (225) not null,
cedula varchar (10) not null, 
PRIMARY KEY(id_cliente)
);


create table articulo (
id_articulo int not null unique,
nombre varchar (225) not null,
marca varchar (225) not null,
precio int (225) not null,
stock int (225) not null, 
PRIMARY KEY (id_articulo)
);

create table proveedor (
id_proveedor int not null unique,
nombre varchar (225) not null,
apellido varchar (225) not null,
PRIMARY KEY(id_proveedor)
);

create table almacen (
id_articulo int not null,
id_proveedor int not null,
cantidad int not null,
foreign key (id_articulo) references articulo,
foreign key (id_proveedor) references proveedor
);

create table venta (
id_venta int primary key,
id_cliente int not null,
id_vendedor int not null,
id_articulo int not null,
fecha datetime not null,
foreign key (id_cliente) references cliente,
foreign key (id_articulo) references articulo
);

