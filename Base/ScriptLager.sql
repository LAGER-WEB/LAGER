CREATE DATABASE LAGER DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE LAGER;

CREATE TABLE Administrador (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NULL,
    clave BLOB NULL,
    PRIMARY KEY (id)
);

CREATE TABLE DatosCliente(
id INT NOT NULL AUTO_INCREMENT,
    Cedula VARCHAR(14) NULL UNIQUE,
    Nombres VARCHAR(255)NULL,
	Apellidos VARCHAR(255)NULL,
Direccion VARCHAR(259) NULL,
PRIMARY KEY (id)
);
CREATE TABLE Usuario (
    idCliente INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NULL UNIQUE,
    clave BLOB NULL,
PRIMARY KEY (idCliente),
    CONSTRAINT FK_User FOREIGN KEY (nombre)
    REFERENCES DatosCliente(Cedula)
);
CREATE TABLE Productos(
idProducto INT NOT NULL AUTO_INCREMENT,
Descripcion VARCHAR(255) NULL,
Marca VARCHAR(50) NULL,
Precio double NULL,
Talla INT NULL,
PRIMARY KEY (idProducto)
);

CREATE TABLE Factura(
Fecha DATE NOT NULL,
Cedula VARCHAR(14) NULL UNIQUE,
idFactura INT NOT NULL AUTO_INCREMENT,
idProducto INT NULL,
IVA DOUBLE NOT NULL,
Total DOUBLE NOT NULL,
PRIMARY KEY(idFactura),
CONSTRAINT FK_Cliente FOREIGN KEY (Cedula)
    REFERENCES DatosCliente(Cedula),
CONSTRAINT FK_Facture FOREIGN KEY (idProducto)
    REFERENCES Productos(idProducto)

);

INSERT INTO Usuario (nombre,clave) VALUES ('Antonio',aes_encrypt('mi clave ultra secreta','SECRETO'));
INSERT INTO Administrador (nombre,clave) VALUES ('José',aes_encrypt('mi clave ultra secreta','SECRETO'));
