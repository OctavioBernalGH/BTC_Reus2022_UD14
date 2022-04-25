USE UD14_EJERCICIO_12;

CREATE TABLE CURSOS
(
	NOMBRE_CURSO VARCHAR(20) NOT NULL UNIQUE,
    COD_CURSO INT NOT NULL PRIMARY KEY,
    DNI_PROFESOR_CURSO NVARCHAR(8) NOT NULL,
    MAX_ALUMNOS INT NOT NULL,
    FECHA_INICIO DATE NOT NULL,
    FECHA_FIN DATE NOT NULL,
    NUM_HORAS DATE NOT NULL
);

CREATE TABLE ALUMNOS
(
	NOMBRE_ALUMNO VARCHAR(20) NOT NULL,
    APELLIDO_1_ALUMNO VARCHAR(20) NOT NULL,
    APELLIDO_2_ALUMNO VARCHAR(20) NOT NULL,
    DNI_ALUMNO NVARCHAR(8) NOT NULL PRIMARY KEY UNIQUE,
    DIRECCION_ALUMNO VARCHAR(20) NOT NULL,
    SEXO CHAR(1) NOT NULL,
    FECHA_NACIMIENTO DATE NOT NULL,
    CURSO VARCHAR(20) NOT NULL
);

CREATE TABLE PROFESORES
(
	NOMBRE_PROFESOR VARCHAR(20) NOT NULL UNIQUE,
    APELLIDO_1_PROFESOR VARCHAR(20) NOT NULL,
    APELLIDO_2_PROFESOR VARCHAR(20) NOT NULL,
    DNI_PROFESOR NVARCHAR(8) NOT NULL PRIMARY KEY UNIQUE,
    DIRECCION_PROFESOR VARCHAR(20) NOT NULL,
    TITULO VARCHAR(20) NOT NULL,
    CUOTA_HORAS FLOAT NOT NULL
);

CREATE TABLE PERTENECER
(
	FK_COD_CURSO INT NOT NULL,
    FK_DNI_ALUMNO NVARCHAR(8) NOT NULL UNIQUE,
    FK_DNI_PROFESOR NVARCHAR(8) NOT NULL UNIQUE,
    CONSTRAINT FK_COD_CURSO FOREIGN KEY (FK_COD_CURSO) REFERENCES CURSOS(COD_CURSO)
    ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_DNI_ALUMNO FOREIGN KEY (FK_DNI_ALUMNO) REFERENCES ALUMNOS(DNI_ALUMNO)
    ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_DNI_PROFESOR FOREIGN KEY (FK_DNI_PROFESOR) REFERENCES PROFESORES(DNI_PROFESOR)
    ON DELETE CASCADE ON UPDATE CASCADE
);