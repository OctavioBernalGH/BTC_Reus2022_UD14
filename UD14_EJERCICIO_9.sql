DROP DATABASE UD14_EJERCICIO_9;
CREATE DATABASE UD14_EJERCICIO_9;
USE UD14_EJERCICIO_9;

CREATE TABLE CIENTIFICOS
(
	DNI VARCHAR(8) PRIMARY KEY,
    NOMBRE_APELLIDOS NVARCHAR(255)
);

CREATE TABLE PROYECTO
(
	ID CHAR(4) PRIMARY KEY,
    NOMBRE NVARCHAR(255),
    HORAS INT
);

CREATE TABLE ASIGNADO_A
(
	CIENTIFICO VARCHAR(8),
    PROYECTO CHAR(4),
    PRIMARY KEY (CIENTIFICO, PROYECTO),
    CONSTRAINT CIENTIFICO FOREIGN KEY (CIENTIFICO) REFERENCES CIENTIFICOS(DNI)
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT PROYECTO FOREIGN KEY (PROYECTO) REFERENCES PROYECTO(ID)
    ON DELETE CASCADE ON UPDATE CASCADE
);