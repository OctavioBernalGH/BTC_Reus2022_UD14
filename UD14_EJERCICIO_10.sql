USE UD14_EJERCICIO_10;

CREATE TABLE CAJEROS
(
	CODIGO INT NOT NULL PRIMARY KEY,
    NOMBRE_APELLIDOS NVARCHAR(255)
);

CREATE TABLE PRODUCTOS
(
	CODIGO INT NOT NULL PRIMARY KEY,
    NOMBRE NVARCHAR(100),
    PRECIO INT
);

CREATE TABLE MAQUINAS_REGISTRADORAS
(
	CODIGO INT NOT NULL PRIMARY KEY,
    PISO INT
);

CREATE TABLE VENTA
(
	CAJERO INT NOT NULL,
    MAQUINA INT NOT NULL,
    PRODUCTO INT NOT NULL,
    CONSTRAINT CAJERO FOREIGN KEY (CAJERO) REFERENCES CAJEROS(CODIGO)
    ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT PRODUCTO FOREIGN KEY (PRODUCTO) REFERENCES PRODUCTOS(CODIGO)
    ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT MAQUINA FOREIGN KEY (MAQUINA) REFERENCES MAQUINAS_REGISTRADORAS(CODIGO)
    ON DELETE CASCADE ON UPDATE CASCADE
);