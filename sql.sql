--- ¿Cuántos empleados son?
SELECT COUNT(Cc) FROM empleados;

----  ¿Cuántos empleados por sede? 
SELECT COUNT(Sede) , Sede
FROM empleados
INNER JOIN sede
ON empleados.ID_Sede = sede.ID_Sede GROUP BY Sede;

---- ¿Cuántos empleados por estrato? 
SELECT  COUNT(Estrato) , Estrato
FROM empleados
INNER JOIN estrato
ON empleados.ID_Estrato = estrato.ID_Estrato GROUP BY Estrato;

---- ¿Cuál es el empleado más nuevo?

SELECT TOP 1 *
FROM empleados
ORDER BY  empleados.fecha_de_contratacion DESC


-----  ¿Cuál es el empleado más antiguo? 
SELECT TOP 1 *
FROM empleados
ORDER BY  empleados.fecha_de_contratacion

------  Consultar el nombre, sede y cargo del empleado con CC igual 10662101
SELECT TOP 1 Cargo , Sede , nombres
FROM empleados
INNER JOIN sede
ON empleados.ID_Sede = sede.ID_Sede
INNER JOIN cargo
ON cargo.ID_Cargo = cargo.ID_Cargo
WHERE Cc = 10662101

------ Un empleado fue despedido de la compañía y por Habes Data autorizaron
--eliminar todos sus datos de la base de datos con CC Igual 10188530 

DELETE FROM empleados WHERE Cc = 10188530 ;


-----  Consultar todos los empleados cuyo ingreso en la compañía estén entre los años 2000 y 2005 
SELECT sueldo  FROM empleados
WHERE fecha_de_contratacion BETWEEN '01/01/2000 00:00:00' and '01/01/2006 00:00:00'


------- Obtener el nombre y edad de los empleados más jóvenes y más antiguos y ordene el nombre de manera decreciente 

(SELECT TOP 5 *
FROM empleados
ORDER BY  empleados.fecha_de_contratacion)

(SELECT TOP 5 *
FROM empleados
ORDER BY  empleados.fecha_de_contratacion DESC)


--------- Consultar todos los empleados que estén entre 17 años y 25 años

SELECT *  FROM empleados
WHERE edad BETWEEN 17 and 25

------- Queremos saber el promedio de edad de los empleados de la empresa

SELECT AVG(edad) FROM empleados

------- necesitamos sumar todos los sueldos de los empleados
SELECT SUM(sueldo)
FROM empleados;

------- Queremos saber el nombre, sede, estrato, fecha de contratación y el nombre del cargo del empleado que más gana en la empresa. 

SELECT TOP 1 nombres , Sede , Estrato, fecha_de_contratacion , Cargo 
FROM empleados
INNER JOIN sede
ON empleados.ID_Sede = sede.ID_Sede
INNER JOIN cargo
ON cargo.ID_Cargo = cargo.ID_Cargo
INNER JOIN estrato
ON empleados.ID_Estrato = estrato.ID_Estrato
where sueldo = 3990019



-------- Queremos saber el nombre del médico más joven que haya en la sede SUR

SELECT TOP 1 nombres
FROM empleados
INNER JOIN sede
ON empleados.ID_Sede = sede.ID_Sede
INNER JOIN cargo
ON cargo.ID_Cargo = cargo.ID_Cargo
INNER JOIN estrato
ON empleados.ID_Estrato = estrato.ID_Estrato
where Sede = 'SUR' ORDER BY  empleados.fecha_de_contratacion DESC


------ CONSULTA #1
SELECT Estrato, COUNT(Estrato)  
FROM empleados
INNER JOIN estrato
ON empleados.ID_Estrato = estrato.ID_Estrato GROUP BY Estrato;


------CONSULTA #2
SELECT Sede, COUNT(Sede)  
FROM empleados
INNER JOIN sede
ON empleados.ID_Sede = sede.ID_Sede GROUP BY Sede;
