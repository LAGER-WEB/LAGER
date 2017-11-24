CREATE DATABASE Large_Shop;
use Large_Shop;

create table Cliente (
id_cliente int not null unique,
id_cargo int not null,
nombre varchar (225) not null,
apellido varchar (225) not null,
direccion varchar (225) not null,
cedula int (10) not null, 
PRIMARY KEY(id_cliente)
);

create table articulo (
id_articulo int not null unique,
id_tipo int not null,
nombre varchar (225) not null,
marca varchar (225) not null,
precio int (225) not null,
stock int (225) not null, 
PRIMARY KEY (id_articulo)
);

create table venta (
id_venta int primary key, 
fecha date not null, 
id_cliente int not null, 
id_detalle int not null  

);
create table cargo (
id_cargo int not null,    
cargo varchar (255) not null,
PRIMARY KEY (id_cargo)  
);

 create table detalle_venta (
id_detalle int not null unique, 
id_articulo int not null, 
cantidad int not null, 
PRIMARY KEY (id_detalle)
); 

create table tipo_articulo (
id_tipo int not null unique, 
descripcion varchar(255) 
);

alter table venta add constraint r_1 foreign key (id_cliente) references Cliente(id_cliente) ;
alter table venta add constraint r_2 foreign key (id_detalle) references detalle_venta(id_detalle);
alter table detalle_venta add constraint r_3 foreign key (id_articulo) references articulo(id_articulo);
alter table Cliente add constraint r_4 foreign key (id_cargo) references cargo(id_cargo);
alter table articulo add constraint r_5 foreign key (id_tipo) references tipo_articulo(id_tipo);
