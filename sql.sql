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
