CREATE DATABASE  empleados_departamentos 
USE empleados_departamentos

CREATE TABLE departamentos (
  codDepto varchar(4) NOT NULL,
  nombreDpto varchar(20)  NOT NULL,
  ciudad varchar(15) DEFAULT NULL,
  codDirector varchar(12)  DEFAULT NULL,

) 


INSERT INTO departamentos VALUES ('1000','GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO departamentos VALUES ('1500','PRODUCCIÓN','CIUDAD REAL','16.211.383');
INSERT INTO departamentos VALUES ('2000','VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO departamentos VALUES ('2100','VENTAS','BARCELONA','16.211.383');
INSERT INTO departamentos VALUES ('2200','VENTAS','VALENCIA','16.211.383');
INSERT INTO departamentos VALUES ('2300','VENTAS','MADRID','16.759.060');
INSERT INTO departamentos VALUES ('3000','INVESTIGACIÓN','CIUDAD REAL','16.759.060');
INSERT INTO departamentos VALUES ('3500','MERCADEO','CIUDAD REAL','22.222.222');
INSERT INTO departamentos VALUES ('4000','MANTENIMIENTO','CIUDAD REAL','333.333.333');
INSERT INTO departamentos VALUES ('4100','MANTENIMIENTO','BARCELONA','16.759.060');
INSERT INTO departamentos VALUES ('4200','MANTENIMIENTO','VALENCIA','16.759.060');
INSERT INTO departamentos VALUES ('4300','MANTENIMIENTO','MADRID','16.759.060');


CREATE TABLE empleados (
  nDIEmp varchar(12)  NOT NULL,
  nomEmp varchar(30)  NOT NULL,
  sexEmp char(1)  NOT NULL,
  fecNac date NOT NULL,
  fecIncorporacion date NOT NULL,
  salEmp float NOT NULL,
  comisionE float NOT NULL,
  cargoE varchar(15)  NOT NULL,
  jefeID varchar(12)  DEFAULT NULL,
  codDepto varchar(4)  NOT NULL,
)

INSERT INTO empleados VALUES ('1.130.222','José Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'Asesor','22.222.222','3500');
INSERT INTO empleados VALUES ('1.130.333','Pedro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'Vendedor','31.178.144','2000');
INSERT INTO empleados VALUES ('1.130.444','Jesús Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'Vendedor','31.178.144','2000');
INSERT INTO empleados VALUES ('1.130.555','Julián Mora','M','1989-07-03','2000-10-01',800000,3100000,'Vendedor','31.178.144','2200');
INSERT INTO empleados VALUES ('1.130.666','Manuel Millán','M','1990-12-08','2004-06-01',800000,3700000,'Vendedor','31.178.144','2300');
INSERT INTO empleados VALUES ('1.130.777','Marcos Cortez','M','1986-06-23','2000-04-16',2550000,500000,'Mecánico','333.333.333','4000');
INSERT INTO empleados VALUES ('1.130.782','Antonio Gil','M','1980-01-23','2010-04-16',850000,1500000,'Técnico','16.211.383','1500');
INSERT INTO empleados VALUES ('1.751.219','Melissa Roa','F','1960-06-19','2001-03-16',2250000,2500000,'Vendedor','31.178.144','2100');
INSERT INTO empleados VALUES ('11.111.111','Irene Díaz','F','1979-09-28','2004-06-01',1050000,200000,'Mecánico','333.333.333','4200');
INSERT INTO empleados VALUES ('16.211.383','Luis Pérez','M','1956-02-25','2000-01-01',5050000,0,'Director','31.840.269','1500');
INSERT INTO empleados VALUES ('16.759.060','Darío Casas','M','1960-04-05','1992-11-01',4500000,500000,'Investigador','31.840.269','3000');
INSERT INTO empleados VALUES ('19.709.802','William Daza','M','1982-10-09','1999-12-16',2250000,1000000,'Investigador','16.759.060','3000');
INSERT INTO empleados VALUES ('22.222.222','Carla López','F','1975-05-11','2005-07-16',4500000,500000,'Jefe Mercadeo','31.840.269','3500');
INSERT INTO empleados VALUES ('22.222.333','Carlos Rozo','M','1975-05-11','2001-09-16',750000,500000,'Vigilante','31.840.269','3500');
INSERT INTO empleados VALUES ('31.174.099','Diana Solarte','F','1957-11-19','1990-05-16',1250000,500000,'Secretaria','31.840.269','1000');
INSERT INTO empleados VALUES ('31.178.144','Rosa Angulo','F','1957-03-15','1998-08-16',3250000,3500000,'Jefe Ventas','31.840.269','2000');
INSERT INTO empleados VALUES ('31.840.269','María Rojas','F','1959-01-15','1990-05-16',6250000,1500000,'Gerente',NULL,'1000');
INSERT INTO empleados VALUES ('333.333.333','Elisa Rojas','F','1979-09-28','2004-06-01',3000000,1000000,'Jefe Mecánicos','31.840.269','4000');
INSERT INTO empleados VALUES ('333.333.334','Marisol Pulido','F','1979-10-01','1990-05-16',3250000,1000000,'Investigador','16.759.060','3000');
INSERT INTO empleados VALUES ('333.333.335','Ana Moreno','F','1992-01-05','2004-06-01',1200000,400000,'Secretaria','16.759.060','3000');
INSERT INTO empleados VALUES ('333.333.336','Carolina Ríos','F','1992-02-15','2000-10-01',1250000,500000,'Secretaria','16.211.383','1500');
INSERT INTO empleados VALUES ('333.333.337','Edith Muñoz','F','1992-03-31','2000-10-01',800000,3600000,'Vendedor','31.178.144','2100');
INSERT INTO empleados VALUES ('444.444','Abel Gómez','M','1939-12-24','2000-10-01',1050000,200000,'Mecánico','333.333.333','4300');
INSERT INTO empleados VALUES ('737.689','Mario Llano','M','1945-08-30','1990-05-16',2250000,2500000,'Vendedor','31.178.144','2300');
INSERT INTO empleados VALUES ('768.782','Joaquín Rosas','M','1947-07-07','1990-05-16',2250000,2500000,'Vendedor','31.178.144','2200');
INSERT INTO empleados VALUES ('888.888','Iván Duarte','M','1955-08-12','1998-05-16',1050000,200000,'Mecánico','333.333.333','4100');

--1. Obtener los datos completos de los empleados.*/
SELECT * FROM empleados;
--2. Obtener los datos completos de los departamentos
SELECT * FROM departamentos;
--3.Obtener los datos de los empleados con cargo 'Secretaria';
SELECT * FROM empleados WHERE lower(cargoE)='secretaria';
--4.Obtener el nombre y salario de los empleados.
SELECT nomEmp, salEmp FROM empleados;
--5.Obtener los datos de los empleados vendedores, ordenado por nombre.
SELECT * FROM empleados WHERE lower(cargoE)='vendedor' ORDER BY nomEmp;
--6.Listar el nombre de los departamentos
SELECT nombreDpto FROM departamentos 
SELECT distinct nombreDpto FROM departamentos /* llama la lista sin repetir el string de la columna*/
--7.Obtener el nombre y cargo de todos los empleados, ordenado por salario
SELECT nomEmp, cargoE, salEmp From empleados ORDER BY salEmp DESC;
--8.Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión
SELECT nomEmp,salEmp,comisionE FROM empleados WHERE codDepto=2000 ORDER BY comisionE ASC;
--9.Listar todas las comisiones
SELECT distinct comisionE FROM empleados;
/*10.Obtener el valor total a pagar que resulta de sumar a los empleados del departamento 3000 una
bonificación de 500.000, en orden alfabético del empleado*/
SELECT nomEmp,salEmp,(salEmp+ 500000) AS 'Pago Estimado' FROM empleados 
WHERE codDepto='3000' ORDER BY nomEmp;
--11.Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
SELECT nomEmp,comisionE FROM empleados WHERE comisionE>salEmp;
--12.Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
SELECT nomEmp,comisionE FROM empleados WHERE comisionE<=(salEmp*0.3); 
/*13.Elabore un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ 
antes del valor respectivo para cada empleado.*/
SELECT nomEmp AS 'Nombre' , cargoE AS 'Cargo' FROM empleados;
/*14. Hallar el salario y la comisión de aquellos empleados cuyo número de documento de identidad es
superior al '19.709.802'*/
SELECT nDIEmp ,nomEmp,salEmp,comisionE FROM empleados WHERE nDIEmp > '19.709.802';
/*15. Muestra los empleados cuyo nombre empiece entre las letras J y Z (rango).
Liste estos empleados y su cargo por orden alfabético.*/
SELECT nomEmp ,cargoE FROM empleados WHERE lower(nomEmp) > 'j' AND lower(nomEmp) <'z' ORDER BY nomEmp DESC;
/*16. Listar el salario, la comisión, el salario total (salario + comisión), documento de identidad del
empleado y nombre, de aquellos empleados que tienen comisión superior a 1.000.000, ordenar el
informe por el número del documento de identidad*/
SELECT nDIEmp,nomEmp,salEmp,comisionE, (salEmp+comisionE) AS 'Salario Total' FROM empleados 
WHERE comisionE > '1000000' ORDER BY nDIEmp; 
--17. Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión
SELECT nDIEmp,nomEmp,salEmp,comisionE, (salEmp+comisionE) AS 'Salario Total' FROM empleados 
WHERE comisionE = 0 ORDER BY nDIEmp; 
--18. Hallar los empleados cuyo nombre no contiene la cadena "MA"
SELECT nomEmp FROM empleados WHERE lower(nomEmp) not like '%ma%'; 
/*19. Obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” NI
'MANTENIMIENTO', ordenados por ciudad.*/
SELECT nombreDpto,ciudad From departamentos 
WHERE lower(nombreDpto) not IN('Ventas','Investigación','MANTENIMIENTO') ORDER BY ciudad;
/*20. Obtener el nombre y el departamento de los empleados con cargo 'Secretaria' o 'Vendedor', que
no trabajan en el departamento de “PRODUCCION”, cuyo salario es superior a $1.000.000,
ordenados por fecha de incorporación.*/
SELECT e.nomEmp,d.nombreDpto FROM empleados e, departamentos d 
WHERE e.codDepto=d.codDepto AND  lower(e.cargoE)='Secretaria' AND lower(e.cargoE)='Vendedor'
AND lower(d.nombreDpto) <> 'PRODUCCION' AND e.salEmp > 1000000
ORDER BY e.fecIncorporacion;
--21. Obtener información de los empleados cuyo nombre tiene exactamente 11 caracteres
SELECT nomEmp FROM empleados WHERE len(nomEmp)=11;
--22. Obtener información de los empleados cuyo nombre tiene al menos 11 caracteres
SELECT nomEmp FROM empleados WHERE len(nomEmp)<11;
/*23. Listar los datos de los empleados cuyo nombre inicia por la letra 'M', 
su salario es mayor a $800.000 o reciben comisión y trabajan para el departamento de 'VENTAS'*/
SELECT e.nomEmp,e.salEmp,d.nombreDpto 
FROM empleados e , departamentos d 
WHERE e.codDepto=d.codDepto AND lower(e.nomEmp) like 'm%' AND (e.salEmp > '800000' OR e.comisionE>0)
AND d.nombreDpto<>'ventas';
/*24. Obtener los nombres, salarios y comisiones de los empleados que reciben un salario situado entre la
mitad de la comisión la propia comisión*/
SELECT nomEmp, salEmp, comisionE FROM empleados
WHERE salEmp BETWEEN (comisionE/2) AND comisionE;
--25. Mostrar el salario más alto de la empresa.
SELECT  max(salEmp) AS 'Salario Maximo' FROM empleados
--26. Mostrar cada una de las comisiones y el número de empleados que las reciben. Solo si tiene comision.
SELECT comisionE, count(*) AS 'Num_Empleados'FROM empleados
GROUP BY comisionE
HAVING comisionE>0;
--27. Mostrar el nombre del último empleado de la lista por orden alfabético.
SELECT max(nomEmp) AS 'Mayor Alfabeticamente' FROM empleados;
--28. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
SELECT max(salEmp) AS 'Salario Maximo', min(salEmp) AS 'Salario Minimo' 
, max(salEmp)-min(salEmp) AS 'Diferencia'
FROM empleados;
--29. Mostrar el número de empleados de sexo femenino y de sexo masculino, por departamento.
SELECT e.sexEmp, d.nombreDpto, count(*) AS 'Cantidad_Genero_M/F'
FROM empleados e, departamentos d
GROUP BY d.nombreDpto, e.sexEmp;
--30. Hallar el salario promedio por departamento.
SELECT codDepto, avg(salEmp) FROM empleados
GROUP BY codDepto;
/*31. Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la empresa.
Ordenarlo por departamento.*/
SELECT nDIEmp,salEmp FROM empleados
WHERE salEmp >=(SELECT avg(salEmp) FROM empleados);
/*32. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de
esos departamentos.*/
SELECT d.codDepto, d.nombreDpto, count(*) AS 'Num Empleados'
FROM departamentos d, empleados e
WHERE d.codDepto=e.codDepto
GROUP BY d.codDepto
HAVING count (*) >=3;
/*33. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. 
Solo los que tengan mas de dos empleados (2 incluido)*/
SELECT j.nDIEmp,j.nomEmp, count(*) AS 'Num Empleados'
FROM empleados e, empleados j
WHERE e.jefeID=j.nDIEmp
GROUP BY j.nomEmp
HAVING count(*)>=2
ORDER BY count(*) desc;
--34. Hallar los departamentos que no tienen empleados
SELECT d.codDepto, d.nombreDpto, count(*) AS 'Num Empleados'
FROM departamentos d , empleados e
WHERE d.codDepto=e.codDepto
GROUP BY d.codDepto
HAVING count(*)=0;
--35. Mostrar el nombre del departamento cuya suma de salarios sea la más alta, indicando el valor de la suma.
SELECT d.nombreDpto, sum(e.salEmp) AS 'Suma SALARIO'
FROM departamentos d, empleados e
WHERE d.codDepto=e.codDepto
GROUP BY d.nombreDpto
ORDER BY sum(e.salEmp) DESC;


