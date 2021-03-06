USE UD14_EJERCICIO_5;

CREATE TABLE ALMACENES
(
	CODIGO INT PRIMARY KEY,
    LUGAR NVARCHAR(100),
    CAPACIDAD INT
);

CREATE TABLE CAJAS
(
	NUMREFERENCIA CHAR(5) PRIMARY KEY,
    CONTENIDO NVARCHAR(100),
    VALOR INT,
    FK_ALMACEN INT,
    CONSTRAINT FK_ALMACEN FOREIGN KEY (FK_ALMACEN) REFERENCES ALMACENES(CODIGO)
    ON DELETE CASCADE ON UPDATE CASCADE
);