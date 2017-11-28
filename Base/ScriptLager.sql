CREATE DATABASE LAGER DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE LAGER;

CREATE TABLE Usuario(
id INT NOT NULL AUTO_INCREMENT,
    idUsuario VARCHAR(14) NULL UNIQUE,
    Nombres VARCHAR(255)NULL,
	Apellidos VARCHAR(255)NULL,
Direccion VARCHAR(259) NULL,
PRIMARY KEY (id)
);
CREATE TABLE Cuenta (
    idCuenta INT NOT NULL AUTO_INCREMENT,
    idTipoUsuario VARCHAR(15) NULL , 
	nombre VARCHAR(255) NULL UNIQUE,
    clave BLOB NULL,
PRIMARY KEY (idCuenta),
    CONSTRAINT FK_User FOREIGN KEY (nombre)
    REFERENCES Usuario(idUsuario)
);
CREATE TABLE Productos(
idProducto INT NOT NULL AUTO_INCREMENT,
Descripcion VARCHAR(255) NULL,
Marca VARCHAR(50) NULL,
Precio double NULL,
idTalla INT NULL UNIQUE,
PRIMARY KEY (idProducto)
);
CREATE TABLE DetalleTalla(
idTalla INT NULL unique ,
Talla VARCHAR (20) NULL,
CONSTRAINT FK_Talla FOREIGN KEY (idTalla)
    REFERENCES Productos(idTalla)
);
CREATE TABLE Factura(
idFactura INT NOT NULL AUTO_INCREMENT,
Fecha DATE NOT NULL,
idUsuario VARCHAR(14) NULL UNIQUE,
PRIMARY KEY(idFactura),
CONSTRAINT FK_FactureUser FOREIGN KEY (idUsuario)
REFERENCES Usuario(idUsuario)
);
CREATE TABLE DetalleFactura(
idFactura INT NOT NULL AUTO_INCREMENT,
idProducto INT NULL UNIQuE,
Cantidad int null,
CONSTRAINT FK_Facture FOREIGN KEY (idProducto)
    REFERENCES Productos(idProducto),
CONSTRAINT FK_Facture2 FOREIGN KEY (idFactura)
    REFERENCES Factura(idFactura)
);