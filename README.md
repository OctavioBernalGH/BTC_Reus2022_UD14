<table>
 <tr>
    <td> <img src="https://github.com/OctavioBernalGH/BTC_Reus2022_UD16/blob/main/dou_logo.png" alt="Team DOU"/></td>
    <td><h1>Ejercicios SQL Unidad UD16</h1></td>
  
 </tr>
</table>
<hr>
Actividades unidad UD14 realizadas en el grupo 1.<br>
Grupo formado por:
[URI](https://github.com/mednologic "mednologic")
, [DAVID](https://github.com/DavidDalmauDieguez "DavidDalmauDieguez")
y [OCTAVIO](https://github.com/OctavioBernalGH "OctavioBernalGH").

### [Ejercicio_3 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_3.sql "Ejercicio_3")
Se crean las tablas "FABRICANTES" y "ARTICULOS" y se relacionan mediante la clave foranea "FK_FABRICANTE".<BR>
![UD14_EJERCICIO_3_EER](https://user-images.githubusercontent.com/103035621/165151090-c90e1a85-f6b0-475e-9c4b-240dbf541fd2.PNG)

### [Ejercicio_4 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_4.sql "Ejercicio_4")
Se crean las tablas "DEPARTAMENTOS" y "EMPLEADOS" y se relacionan mediante la clave foranea "FK_DEPARTAMENTO".<br>
![UD14_EJERCICIO_4_EER](https://user-images.githubusercontent.com/103035621/165151134-043a3fbd-b676-4734-83bb-86429062aeca.PNG)

### [Ejercicio_5 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_5.sql "Ejercicio_5")
Se crean las tablas "ALMACENES" y "CAJAS" y se relacionan mediante la clave foranea "FK_ALMACEN".<br>
![UD14_EJERCICIO_5_EER](https://user-images.githubusercontent.com/103035621/165151179-1a2f2a11-72df-4542-b905-c62f608ed481.PNG)

### [Ejercicio_6 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_6.sql "Ejercicio_6")
Se crean las tablas "PELICULAS" y "SALAS" y se relacionan mediante la clave foranea "FK_PELICULA".<br>
![UD14_EJERCICIO_6_EER](https://user-images.githubusercontent.com/103035621/165151372-23649fd2-4323-4ac1-a72a-a250e228e407.PNG)

### [Ejercicio_7 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_7.sql "Ejercicio_7")
Se crean las tablas "DIRECTORES" y "DESPACHOS" , la primera tiene una relación recursiva consigo misma mediante la clave foranea "FK_DNIJEFE". La tabla "DIRECTORES" se relaciona con la tabla "DESPACHOS" mediante la clave foranea "FK_DESPACHO".
![UD14_EJERCICIO_7_EER](https://user-images.githubusercontent.com/103035621/165151384-3ade4fc2-f771-4177-8c88-4c6326616a7a.PNG)

### [Ejercicio_8 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_8.sql "Ejercicio_8")
Se crean las tablas "PIEZAS" , "PROVEEDORES" y "SUMINISTRA" por este mismo orden. La tabla "SUMINISTRA" se relaciona con las otras dos mediante las claves foraneas "CODIGOPIEZA" (ID de la tabla PIEZAS) y "IDPROVEEDOR" (ID de la tabla PROVEEDORES).<br>
![UD14_EJERCICIO_8_EER](https://user-images.githubusercontent.com/103035621/165151402-4a795965-8cd2-4569-92d2-3ce0703728bc.PNG)

### [Ejercicio_9 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_9.sql "Ejercicio_9")
Se crean las tablas "CIENTIFICOS" , "PROYECTO" y "ASIGNADO_A" en este respectivo orden. La tabla "ASIGNADO_A" se relaciona con las otras dos mediante las claves foraneas "CIENTIFICO" (ID de la tabla CIENTIFICOS) y "PROYECTO" (ID de la tabla PROYECTO).
![UD14_EJERCICIO_9_EER](https://user-images.githubusercontent.com/103035621/165151418-581d2898-e03a-4219-a750-be37115fd8da.PNG)

### [Ejercicio_10 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_10.sql "Ejercicio_10")
Se crean las tablas "CAJEROS" , "PRODUCTOS" , "MAQUINAS_REGISTRADORAS" y por último "VENTAS" siguiendo este mismo orden. La tabla ventas es la tabla que contiene las claves foraneas de todas las otras tablas. Para relacionarlas utilizamos las siguientes claves foraneas: "CAJERO" , "MAQUINA" Y "PRODUCTO" , estas corresponden a los identificadores de cada tabla.
![UD14_EJERCICIO_10_EER](https://user-images.githubusercontent.com/103035621/165151440-3e0fc8a3-ccbf-4824-8654-11e836e65d31.PNG)

### [Ejercicio_11 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_11.sql "Ejercicio_11")
Se crean las tablas "FACULTAD" , "INVESTIGADORES" , "EQUIPO" y  por último "RESERVA". La tabla "RESERVA" es la tabla que se comunica con "INVESTIGADORES" y "EQUIPOS" mediante las claves foraneas "DNI_rES" y "NUMSERIE_RES". La tabla "INVESTIGADORES" está relacionada con "FACULTAD" mediante la clave "COD_FACULTAD_I" y por último pero no menos importante , la tabla "EQUIPOS" se relaciona con "FACULTAD" mediante la clave "COD_FACULTAD_E".
![UD14_EJERCICIO_11_EER](https://user-images.githubusercontent.com/103035621/165151451-0f61f5c0-7dae-4479-bbc4-19d5a26fac86.PNG)

### [Ejercicio_12 UD14 SQL](https://github.com/OctavioBernalGH/BTC_Reus2022_UD14/blob/main/UD14_EJERCICIO_12.sql "Ejercicio_12")
En este ejercicio se nos pide crear 3 tablas , "CURSOS" , "ALUMNOS" y "PROFESORES". Según la estructura del enunciado hemos decidido crear una tabla intermedia llamada "PERTENECER" que estará directamente relacionada con las otras 3 anteriores mediante las claves "FK_COD_CURSO" perteneciente a "CURSOS", "FK_DNI_ALUMNO" perteneciente a la tabla "ALUMNOS" y "FK_DNI_PROFESOR" perteneciente a la tabla "PROFESORES".
![UD14_EJERCICIO_12_EER](https://user-images.githubusercontent.com/103035621/165151491-c04fd17e-7aad-4067-9cd8-3042e3dd0701.PNG)
