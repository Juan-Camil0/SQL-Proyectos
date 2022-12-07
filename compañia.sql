CREATE DATABASE compañia;

create table departamento(
clave_depto int  ,
nombre varchar(30) ,
presupuesto int,
)


insert into departamento(clave_depto, nombre,presupuesto) values (1,'Personal', 80000);
insert into departamento(clave_depto, nombre,presupuesto) values (2,'Almacén', 70000);
insert into departamento(clave_depto, nombre,presupuesto) values (3,'Contabilidad', 60000);
insert into departamento(clave_depto, nombre,presupuesto) values (4,'Manufactura', 50000);
insert into departamento(clave_depto, nombre,presupuesto) values (5,'Empaque', 30000);

create table empleados(
clave_empleado varchar(8) not null,
nombre_emp varchar(8),
apellidos varchar(30),
)

insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP01','Armando','López');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP02','Tatiana','Vargas');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP03','Laura','Iturria');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP04','Juan','Pérez');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP05','Iván','López');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP06','Margarita','Hernández');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP07','Jesús','Pérez');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP08','Tonatiuh','Flores');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP09','Juan','López');
insert into empleados (clave_empleado,nombre_emp,apellidos)values('EMP10','José','Hernández');

--Obtener el nombre y apellidos de los empleados
SELECT nombre_emp,apellidos FROM empleados;
--Obtener los apellidos de los empleados sin repeticiones
SELECT DISTINCT apellidos FROM empleados;
--Obtener todos los datos de los empleados que se apellidan LOPEZ
SELECT * FROM empleados
WHERE apellidos=lower('lópez');
--Obtener todos los datos de los empleados que se apellidan lopez y los que se apellidan perez 
SELECT * FROM empleados
WHERE  apellidos=lower('lópez') OR apellidos=lower('perez');
--Obtener le nombre y la clave de empleado de los trabajadores que trabajan en el departamento 4
SELECT clave_depto,nombre FROM departamento
WHERE clave_depto=4;
--Obtener todos los datos de los empleados que trabajan para el departamento 1 o 3 ordenados alfabeticamente
SELECT * FROM empleados
WHERE clave_empleado=lower('emp01') OR clave_empleado=lower('emp03')
ORDER BY nombre_emp asc;
--Obtener el nombre y apellido de los empleados cuyo apellido comienza con H
SELECT nombre_emp,apellidos FROM empleados
WHERE apellidos LIKE ('H%');
--Obtener los datos de los departamentos cuyo presupuesto está entre 50000 y 70000
SELECT clave_depto,presupuesto FROM departamento
WHERE presupuesto='50000' OR presupuesto='70000';
--Obtener la clave de empleado,nombre y apellido de los empleados que trabajan en el dapartamento de contabilidad
SELECT e.clave_empleado,d.nombre,e.nombre_emp,e.apellidos FROM departamento d,empleados e
WHERE d.nombre=lower('contabilidad')
ORDER BY e.nombre_emp ASC;
