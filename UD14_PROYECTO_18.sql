DROP DATABASE UD14_EJERCICIO_18;
CREATE DATABASE UD14_EJERCICIO_18;
USE UD14_EJERCICIO_18;

CREATE TABLE UD14_EJERCICIO_18.persona
(
	dni VARCHAR (10)PRIMARY KEY, 
	FK_dni VARCHAR(10),
	CONSTRAINT FK_dni FOREIGN KEY (FK_dni) REFERENCES persona(dni) ON DELETE 	CASCADE ON UPDATE CASCADE, 
	nombre VARCHAR (20)NOT NULL, 
	apellidos VARCHAR (20)NOT NULL, 
	teléfono_fijo INT NOT NULL,
	teléfono_movil INT NOT NULL UNIQUE, 
	codigo_personal INT NOT NULL UNIQUE AUTO_INCREMENT
);

CREATE TABLE inmueble 
(
	codigo_inmueble INT AUTO_INCREMENT PRIMARY KEY,
	direccion VARCHAR(40)NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	metros_inmueble FLOAT NOT NULL
);

CREATE TABLE alquiler 
(
	codigo_alquiler INT AUTO_INCREMENT PRIMARY KEY,
	año INT NOT NULL,
	mes INT NOT NULL,
	valor FLOAT(10,4) NOT NULL,
	FK_personaalquiler VARCHAR(20),
    FK_codigoinmueble_A INT,
	CONSTRAINT FK_personaalquiler FOREIGN KEY (FK_personaalquiler) REFERENCES persona(dni) ON 	DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_codigoinmueble_A FOREIGN KEY (FK_codigoinmueble_A) REFERENCES inmueble(codigo_inmueble) ON 	DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE compra 
(
	codigo_compra INT AUTO_INCREMENT PRIMARY KEY,
	año INT NOT NULL,
	fecha DATE NOT NULL,
	valor FLOAT(10,4) NOT NULL,
	FK_personacompra VARCHAR(20),
    FK_codigoinmueble_C INT,
	CONSTRAINT FK_personacompra FOREIGN KEY (FK_personacompra) REFERENCES persona(dni) ON 	DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_codigoinmueble_C FOREIGN KEY (FK_codigoinmueble_C) REFERENCES inmueble(codigo_inmueble) ON 	DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE locales
(
	id_local INT AUTO_INCREMENT PRIMARY KEY,
	uso_local VARCHAR(30)NOT NULL,
	tiene_servicio VARCHAR(30) NOT NULL,
	FK_inmueble INT, 
	CONSTRAINT FK_inmueble FOREIGN KEY (FK_inmueble) REFERENCES 	inmueble(codigo_inmueble) ON 	DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE pisos (
	id_pisos INT AUTO_INCREMENT PRIMARY KEY,
	FK_inmueblepiso INT,
	CONSTRAINT FK_inmueblepiso FOREIGN KEY (FK_inmueblepiso) REFERENCES 	inmueble(codigo_inmueble) ON 	DELETE CASCADE ON UPDATE CASCADE
	);

CREATE TABLE garajes (
	id_garaje INT AUTO_INCREMENT PRIMARY KEY,
	num_garaje INT NOT NULL,
	planta_garaje INT NOT NULL,
	FK_inmueblegaraje INT,
	FK_pisosgaraje INT,
	CONSTRAINT FK_inmueblegaraje FOREIGN KEY (FK_inmueblegaraje) REFERENCES 	inmueble(codigo_inmueble) ON 	DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_pisosgaraje FOREIGN KEY (FK_pisosgaraje) REFERENCES pisos(id_pisos) ON 	DELETE CASCADE ON UPDATE CASCADE
	);

/* INSERT EN LA TABLA PERSONA Y SELECT * FROM PERSONA */
/*====================================================*/
INSERT INTO persona (dni, nombre, apellidos, teléfono_fijo, teléfono_movil) VALUES ('4800000X' ,'OCTAVIO', 'BV' , 977000000, 6000000);
INSERT INTO persona (dni, nombre, apellidos, teléfono_fijo, teléfono_movil) VALUES ('3802551S' ,'URI', 'LOPEZ' , 94646446, 5000000);
INSERT INTO persona (dni, FK_dni, nombre, apellidos, teléfono_fijo, teléfono_movil) VALUES ('5698494X', '3802551S' ,'DAVID', 'DAVIDUBI' , 677000000, 4000000);
INSERT INTO persona (dni, FK_dni, nombre, apellidos, teléfono_fijo, teléfono_movil) VALUES ('1449849X', '3802551S' ,'JOSE', 'APELLIDO' , 35984884, 15656616);
INSERT INTO persona (dni, FK_dni, nombre, apellidos, teléfono_fijo, teléfono_movil) VALUES ('5425561Z', '3802551S' ,'PEPE', 'BOÑIGAS' , 55884481, 59984149);
/* SELECCIONAR TODO DE LA TABLA PERSONA */
SELECT * FROM persona ORDER BY codigo_personal;

/* INSERT EN LA TABLA INMUEBLE Y SELECT * FROM INMUEBLE */
/*====================================================*/
INSERT INTO inmueble (direccion, descripcion, metros_inmueble) VALUES ('C/San Jose pepinero nº 10' , 'casa rustica', 120);
INSERT INTO inmueble (direccion, descripcion, metros_inmueble) VALUES ('C/Pepapig' , 'piso ocupado', 88);
INSERT INTO inmueble (direccion, descripcion, metros_inmueble) VALUES ('C/Cocacola' , 'terreno', 300);
INSERT INTO inmueble (direccion, descripcion, metros_inmueble) VALUES ('C/Calsot' , 'casa', 50);
SELECT * FROM inmueble;

/* INSERTAR VALORES EN LA TABLA COMPRA */
/*====================================================*/
INSERT INTO compra (año, fecha, valor, FK_personacompra, FK_codigoinmueble_C) VALUES (2023, '2018/12/01', 128000, '5698494X',1);
INSERT INTO compra (año, fecha, valor, FK_personacompra, FK_codigoinmueble_C) VALUES (2020, '2020/11/15', 220000, '1449849X',2);
INSERT INTO compra (año, fecha, valor, FK_personacompra, FK_codigoinmueble_C) VALUES (2006, '2006/08/13', 68000, '3802551S',3);
INSERT INTO compra (año, fecha, valor, FK_personacompra, FK_codigoinmueble_C) VALUES (1998, '1998/03/22', 87000, '5698494X',4);
/* COMO EL DNI NO EXISTE EN LA CLASE REFERENCIADA , DA ERROR Y NO SE INSERTA EN LA TABLA */
	-- INSERT INTO compra (año, fecha, valor, FK_personacompra, FK_codigoinmueble_C) VALUES (2016, '2016/01/15', 256000, '0000000X');
	-- INSERT INTO compra (año, fecha, valor, FK_personacompra, FK_codigoinmueble_C) VALUES (2014, '2014/04/26', 78000, '1111111A');
/* COMO NO EXISTE NINGÚN INMUEBLE CON EL CÓDIGO 5 , DARÁ ERROR */
	-- INSERT INTO compra (año, fecha, valor, FK_personacompra, FK_codigoinmueble_C) VALUES (2018, '2018/12/01', 128000, '5425561Z',5);
/* SELECCIONAR TODO DE LA TABLA COMPRA */
SELECT * FROM compra;

/* INSERTAR VALORES EN LA TABLA ALQUILER CON INTEGREDAD REFERENCIAL */
/*====================================================*/
INSERT INTO alquiler (año, mes, valor, FK_personaalquiler, FK_codigoinmueble_A) VALUES (2022, 04, 450.61 ,'5425561Z', 1);
INSERT INTO alquiler (año, mes, valor, FK_personaalquiler, FK_codigoinmueble_A) VALUES (2022, 04, 1000.61 ,'5425561Z', 2);
INSERT INTO alquiler (año, mes, valor, FK_personaalquiler, FK_codigoinmueble_A) VALUES (2021, 05, 450.61 ,'3802551S', 3);
INSERT INTO alquiler (año, mes, valor, FK_personaalquiler, FK_codigoinmueble_A) VALUES (2012, 08, 550.61 ,'5698494X', 4);
/* COMO EL DNI NO EXISTE EN LA CLASE REFERENCIADA , DA ERROR Y NO SE INSERTA EN LA TABLA */
	-- INSERT INTO alquiler (año, mes, valor, FK_personaalquiler, FK_codigoinmueble_A) VALUES (1996, 11, 800.5 ,'0000000Z');
	-- INSERT INTO alquiler (año, mes, valor, FK_personaalquiler, FK_codigoinmueble_A) VALUES (2014, 01, 350.5 ,'1111111A');
/* COMO EL CODIGO INMUEBLE NO EXISTE , SALTARÁ MENSAJE DE ERROR */
	-- INSERT INTO alquiler (año, mes, valor, FK_personaalquiler, FK_codigoinmueble_A) VALUES (2003, 09, 600.15 ,'1449849X', 5);
/* SELECCIONAR TODO DE LA TABLA ALQUILER */
SELECT * FROM alquiler;

/* SE INSERTAN 2 LOCALES CON CÓDIGO DE INMUEBLE*/
/*====================================================*/
INSERT INTO locales (uso_local, tiene_servicio, FK_inmueble) VALUES('restauración' , 'si', 1);
/* LOS SIGUIENTES INSERT DARÁN ERROR POR INTEGRIDAD REFERENCIAL , NO EXISTE EL CODIGO DEL INMUEBLE O ESTÁ VACÍO */
	-- INSERT INTO locales (uso_local, tiene_servicio, FK_inmueble) VALUES('comercial' , 'si', 10);
	-- INSERT INTO locales (uso_local, tiene_servicio, FK_inmueble) VALUES('comercial' , 'si', 0);
	-- INSERT INTO locales (uso_local, tiene_servicio, FK_inmueble) VALUES('comercial' , 'si');
SELECT * FROM locales;

/* SE INSERTAN 2 PISOS DE FORMA CORRECTA EN LA TABLA PISOS*/
/*====================================================*/ 
INSERT INTO pisos (FK_inmueblepiso) VALUES(2);
INSERT INTO pisos (FK_inmueblepiso) VALUES(3);
/* NO SE PUEDEN INSERTAR LOS SIGUIENTES REGISTROS POR QUE ESOS VALORES NO EXISTEN , DA ERROR*/
	/* INSERT INTO pisos (FK_inmueblepiso) VALUES(10); */
	/* INSERT INTO pisos (FK_inmueblepiso) VALUES(0); */
	/* INSERT INTO pisos (FK_inmueblepiso) VALUES(); */
/* MOSTRAMOS LA TABLA PISOS */
SELECT * FROM pisos;

/* SE INSERTAN LOS DIFERENTES GARAJES */
/*====================================================*/
INSERT INTO garajes (num_garaje, planta_garaje, FK_inmueblegaraje, FK_pisosgaraje) VALUES (5, 2, 4, 1);
INSERT INTO garajes (num_garaje, planta_garaje, FK_inmueblegaraje, FK_pisosgaraje) VALUES (5, 2, 4, 2);
/* SALTA ERROR POR INTEGRIDAD REFERENCIAL , LA CLAVE PISOSGARAJE NO EXISTE */
	/* INSERT INTO garajes (num_garaje, planta_garaje, FK_inmueblegaraje, FK_pisosgaraje) VALUES (5, 2, 4, 3); */
/* SALTA ERROR POR INTEGRIDAD REFERENCIAL , LA CLAVE INMUEBLEGARAJE NO EXISTE */
	/* INSERT INTO garajes (num_garaje, planta_garaje, FK_inmueblegaraje, FK_pisosgaraje) VALUES (5, 2, 8, 1); */   
/* SE MUESTRA LA TABLA GARAJES */
SELECT * FROM garajes;

