CREATE DATABASE  empleados_departamentos 
USE empleados_departamentos

CREATE TABLE departamentos (
  codDepto varchar(4) NOT NULL,
  nombreDpto varchar(20)  NOT NULL,
  ciudad varchar(15) DEFAULT NULL,
  codDirector varchar(12)  DEFAULT NULL,

) 


INSERT INTO departamentos VALUES ('1000','GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO departamentos VALUES ('1500','PRODUCCI�N','CIUDAD REAL','16.211.383');
INSERT INTO departamentos VALUES ('2000','VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO departamentos VALUES ('2100','VENTAS','BARCELONA','16.211.383');
INSERT INTO departamentos VALUES ('2200','VENTAS','VALENCIA','16.211.383');
INSERT INTO departamentos VALUES ('2300','VENTAS','MADRID','16.759.060');
INSERT INTO departamentos VALUES ('3000','INVESTIGACI�N','CIUDAD REAL','16.759.060');
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

INSERT INTO empleados VALUES ('1.130.222','Jos� Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'Asesor','22.222.222','3500');
INSERT INTO empleados VALUES ('1.130.333','Pedro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'Vendedor','31.178.144','2000');
INSERT INTO empleados VALUES ('1.130.444','Jes�s Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'Vendedor','31.178.144','2000');
INSERT INTO empleados VALUES ('1.130.555','Juli�n Mora','M','1989-07-03','2000-10-01',800000,3100000,'Vendedor','31.178.144','2200');
INSERT INTO empleados VALUES ('1.130.666','Manuel Mill�n','M','1990-12-08','2004-06-01',800000,3700000,'Vendedor','31.178.144','2300');
INSERT INTO empleados VALUES ('1.130.777','Marcos Cortez','M','1986-06-23','2000-04-16',2550000,500000,'Mec�nico','333.333.333','4000');
INSERT INTO empleados VALUES ('1.130.782','Antonio Gil','M','1980-01-23','2010-04-16',850000,1500000,'T�cnico','16.211.383','1500');
INSERT INTO empleados VALUES ('1.751.219','Melissa Roa','F','1960-06-19','2001-03-16',2250000,2500000,'Vendedor','31.178.144','2100');
INSERT INTO empleados VALUES ('11.111.111','Irene D�az','F','1979-09-28','2004-06-01',1050000,200000,'Mec�nico','333.333.333','4200');
INSERT INTO empleados VALUES ('16.211.383','Luis P�rez','M','1956-02-25','2000-01-01',5050000,0,'Director','31.840.269','1500');
INSERT INTO empleados VALUES ('16.759.060','Dar�o Casas','M','1960-04-05','1992-11-01',4500000,500000,'Investigador','31.840.269','3000');
INSERT INTO empleados VALUES ('19.709.802','William Daza','M','1982-10-09','1999-12-16',2250000,1000000,'Investigador','16.759.060','3000');
INSERT INTO empleados VALUES ('22.222.222','Carla L�pez','F','1975-05-11','2005-07-16',4500000,500000,'Jefe Mercadeo','31.840.269','3500');
INSERT INTO empleados VALUES ('22.222.333','Carlos Rozo','M','1975-05-11','2001-09-16',750000,500000,'Vigilante','31.840.269','3500');
INSERT INTO empleados VALUES ('31.174.099','Diana Solarte','F','1957-11-19','1990-05-16',1250000,500000,'Secretaria','31.840.269','1000');
INSERT INTO empleados VALUES ('31.178.144','Rosa Angulo','F','1957-03-15','1998-08-16',3250000,3500000,'Jefe Ventas','31.840.269','2000');
INSERT INTO empleados VALUES ('31.840.269','Mar�a Rojas','F','1959-01-15','1990-05-16',6250000,1500000,'Gerente',NULL,'1000');
INSERT INTO empleados VALUES ('333.333.333','Elisa Rojas','F','1979-09-28','2004-06-01',3000000,1000000,'Jefe Mec�nicos','31.840.269','4000');
INSERT INTO empleados VALUES ('333.333.334','Marisol Pulido','F','1979-10-01','1990-05-16',3250000,1000000,'Investigador','16.759.060','3000');
INSERT INTO empleados VALUES ('333.333.335','Ana Moreno','F','1992-01-05','2004-06-01',1200000,400000,'Secretaria','16.759.060','3000');
INSERT INTO empleados VALUES ('333.333.336','Carolina R�os','F','1992-02-15','2000-10-01',1250000,500000,'Secretaria','16.211.383','1500');
INSERT INTO empleados VALUES ('333.333.337','Edith Mu�oz','F','1992-03-31','2000-10-01',800000,3600000,'Vendedor','31.178.144','2100');
INSERT INTO empleados VALUES ('444.444','Abel G�mez','M','1939-12-24','2000-10-01',1050000,200000,'Mec�nico','333.333.333','4300');
INSERT INTO empleados VALUES ('737.689','Mario Llano','M','1945-08-30','1990-05-16',2250000,2500000,'Vendedor','31.178.144','2300');
INSERT INTO empleados VALUES ('768.782','Joaqu�n Rosas','M','1947-07-07','1990-05-16',2250000,2500000,'Vendedor','31.178.144','2200');
INSERT INTO empleados VALUES ('888.888','Iv�n Duarte','M','1955-08-12','1998-05-16',1050000,200000,'Mec�nico','333.333.333','4100');

/*1. Obtener los datos completos de los empleados.
2. Obtener los datos completos de los departamentos
3. Obtener los datos de los empleados con cargo 'Secretaria'.
4. Obtener el nombre y salario de los empleados.
5. Obtener los datos de los empleados vendedores, ordenado por nombre.
6. Listar el nombre de los departamentos
7. Obtener el nombre y cargo de todos los empleados, ordenado por salario
8. Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisi�n
9. Listar todas las comisiones
10. Obtener el valor total a pagar que resulta de sumar a los empleados del departamento 3000 una
bonificaci�n de 500.000, en orden alfab�tico del empleado
11. Obtener la lista de los empleados que ganan una comisi�n superior a su sueldo.
12. Listar los empleados cuya comisi�n es menor o igual que el 30% de su sueldo.*/
SELECT * FROM empleados;
SELECT * FROM departamentos;
SELECT * FROM empleados WHERE lower(cargoE)='secretaria';
SELECT nomEmp, salEmp FROM empleados;
SELECT * FROM empleados WHERE lower(cargoE)='vendedor' order by nomEmp;
SELECT nombreDpto FROM departamentos 
SELECT distinct nombreDpto FROM departamentos /* llama la lista sin repetir el string de la columna*/
SELECT nomEmp, cargoE, salEmp From empleados order by salEmp desc;
SELECT nomEmp,salEmp,comisionE FROM empleados WHERE codDepto=2000 ORDER BY comisionE ASC;
SELECT distinct comisionE FROM empleados;
SELECT nomEmp,salEmp,(salEmp+ 500000) AS 'Pago Estimado' FROM empleados WHERE codDepto='3000' ORDER BY nomEmp;
SELECT nomEmp,comisionE FROM empleados WHERE comisionE>salEmp;