CREATE DATABASE pruebas;
USE pruebas;

CREATE TABLE tblUsuarios (
   idx INT,
   usuario VARCHAR(20),
   nombre VARCHAR(20),
   sexo VARCHAR(1),
   nivel TINYINT,
   email VARCHAR(50),
   telefono VARCHAR(20),
   marca VARCHAR(20),
   compa�ia VARCHAR(20),
   saldo FLOAT,
   activo BIT --Significa Booleano
);


INSERT INTO tblUsuarios VALUES 
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');
SELECT * FROM tblUsuarios;
--Listar los nombres de los usuarios
SELECT nombre FROM  tblUsuarios;
--Calcular el saldo m�ximo de los usuarios de sexo �Mujer�
SELECT max(saldo) AS SaldoMaximo FROM tblUsuarios
WHERE sexo='M';
--Listar nombre y tel�fono de los usuarios con tel�fono NOKIA, BLACKBERRY o SONY IN sirve para hacer varias condiciones
SELECT nombre, telefono FROM tblUsuarios
WHERE marca IN('NOKIA','BLACKBERRY','SONY');
--Contar los usuarios sin saldo o inactivos
SELECT COUNT(usuario) AS Usuarios_SinSaldo_Inactivos FROM tblUsuarios 
WHERE saldo=0 OR activo=0;
--Listar el login de los usuarios con nivel 1, 2 o 3
SELECT usuario,nivel FROM tblUsuarios 
WHERE nivel IN(1,2,3) ;
--Listar los n�meros de tel�fono con saldo menor o igual a 300
SELECT telefono FROM tblUsuarios 
WHERE saldo <='300';
--Calcular la suma de los saldos de los usuarios de la compa�ia telef�nica NEXTEL
SELECT sum(saldo) AS saldos FROM tblUsuarios 
WHERE compa�ia='NEXTEL'
--Contar el n�mero de usuarios por compa��a telef�nica
SELECT compa�ia, count(usuario) AS Miembros FROM tblUsuarios 
GROUP BY compa�ia;
--Contar el n�mero de usuarios por nivel
SELECT nivel,count(usuario)  AS Numero_Usuarios FROM tblUsuarios
GROUP BY nivel;
--Listar el login de los usuarios con nivel 2
SELECT nivel FROM tblUsuarios
WHERE nivel =2;
--Mostrar el email de los usuarios que usan gmail
SELECT email FROM tblUsuarios 
WHERE email LIKE '%gmail.com';
--Listar nombre y tel�fono de los usuarios con tel�fono LG, SAMSUNG o MOTOROLA
SELECT nombre,telefono,marca FROM tblUsuarios
WHERE marca IN('LG','SAMSUNG','MOTOROLA');
--Listar nombre y tel�fono de los usuarios con tel�fono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono FROM tblUsuarios 
WHERE marca NOT IN('LG', 'SAMSUNG');
--Listar el login y tel�fono de los usuarios con compa�ia telef�nica IUSACELL
SELECT usuario,telefono FROM tblUsuarios
WHERE compa�ia='IUSACELL';
--Listar el login y tel�fono de los usuarios con compa�ia telef�nica que no sea TELCEL  sirve para no es igual <>
SELECT usuario,telefono FROM tblUsuarios
WHERE compa�ia <> 'TELCEL';
--Calcular el saldo promedio de los usuarios que tienen tel�fono marca NOKIA
SELECT avg(saldo) FROM tblUsuarios
WHERE marca='NOKIA';
--Listar el login y tel�fono de los usuarios con compa�ia telef�nica IUSACELL o AXEL
SELECT usuario,telefono FROM tblUsuarios
WHERE compa�ia='IUSACELL' OR  compa�ia='AXEL';
--Mostrar el email de los usuarios que no usan yahoo
SELECT email FROM tblUsuarios
WHERE email NOT LIKE lower('%yahoo.com');
--Listar el login y tel�fono de los usuarios con compa�ia telef�nica que no sea TELCEL o IUSACELL
SELECT usuario,telefono,compa�ia FROM tblUsuarios
WHERE compa�ia NOT IN ('TELCEL','IUSACELL');
--Listar el login y tel�fono de los usuarios con compa�ia telef�nica UNEFON
SELECT usuario,telefono FROM  tblUsuarios
WHERE compa�ia='UNEFON';
--Listar las diferentes marcas de celular en orden alfab�tico descendentemente DISTINCT--> No repetir String
SELECT DISTINCT marca  FROM tblUsuarios
ORDER BY marca DESC;
--Listar las diferentes compa�ias en orden alfab�tico aleatorio
SELECT DISTINCT compa�ia FROM tblUsuarios
ORDER BY compa�ia;
--Listar el login de los usuarios con nivel 0 o 2
SELECT usuario FROM tblUsuarios
WHERE nivel IN(0,2);
--Calcular el saldo promedio de los usuarios que tienen tel�fono marca LG
SELECT avg(saldo) AS promedio FROM tblUsuarios
WHERE marca='LG';
--Listar el login de los usuarios con nivel 1 o 3
SELECT nivel FROM tblUsuarios
WHERE nivel IN(1,3);
--Listar nombre y tel�fono de los usuarios con tel�fono que no sea de la marca BLACKBERRY
SELECT nombre,telefono,usuario FROM tblUsuarios
WHERE marca='BLACKBERRY';
--Listar el login de los usuarios con nivel 3
SELECT usuario FROM tblUsuarios
WHERE nivel=3;
--Listar el login de los usuarios con nivel 0
SELECT usuario FROM tblUsuarios
WHERE nivel=0;
--Listar el login de los usuarios con nivel 1
SELECT usuario FROM tblUsuarios
WHERE nivel=1;
--Contar el n�mero de usuarios por sexo
SELECT sexo, COUNT(*) FROM tblUsuarios 
GROUP BY sexo;
--Listar el login y tel�fono de los usuarios con compa�ia telef�nica AT&T
SELECT usuario,telefono FROM tblUsuarios
WHERE compa�ia='AT&T';
--Listar las diferentes compa�ias en orden alfab�tico descendentemente
SELECT DISTINCT compa�ia FROM tblUsuarios
ORDER BY compa�ia DESC;
--Listar el logn de los usuarios inactivos
SELECT usuario FROM tblUsuarios
WHERE activo=0;
--Listar los n�meros de tel�fono sin saldo
SELECT telefono FROM tblUsuarios
WHERE saldo=0;
--Calcular el saldo m�nimo de los usuarios de sexo �Hombre�
SELECT min(saldo) AS saldoM�nimo FROM tblUsuarios
WHERE sexo=lower('H');
--Listar los n�meros de tel�fono con saldo mayor a 300
SELECT telefono FROM tblUsuarios
WHERE saldo >='300';
--Contar el n�mero de usuarios por marca de tel�fono
SELECT marca,count(usuario) AS Usuarios FROM tblUsuarios
GROUP BY marca;
--Listar nombre y tel�fono de los usuarios con tel�fono que no sea de la marca LG
SELECT nombre,telefono FROM tblUsuarios
WHERE marca <> 'LG';
--Listar las diferentes compa�ias en orden alfab�tico ascendentemente
SELECT DISTINCT compa�ia FROM tblUsuarios
ORDER BY compa�ia ASC;
--Calcular la suma de los saldos de los usuarios de la compa�ia telef�nica UNEFON
SELECT sum(saldo) AS sumaUnefon FROM tblUsuarios
WHERE compa�ia='UNEFON';
--Mostrar el email de los usuarios que usan hotmail
SELECT email FROM tblUsuarios
WHERE email LIKE lower('%hotmail.com');
--Listar los nombres de los usuarios sin saldo o inactivos
SELECT nombre FROM tblUsuarios
WHERE NOT activo=0 OR saldo=0;
--Listar el login y tel�fono de los usuarios con compa�ia telef�nicaIUSACELL o TELCEL
SELECT usuario,telefono FROM tblUsuarios
WHERE compa�ia IN('IUSACELL','TELCEL');
--Listar las diferentes marcas de celular en orden alfab�tico ascendentemente
SELECT DISTINCT marca FROM tblUsuarios
ORDER BY marca ASC;
--Listar las diferentes marcas de celular en orden alfab�tico aleatorio
SELECT DISTINCT marca FROM tblUsuarios 
ORDER BY RAND();
--Listar el login y tel�fono de los usuarios con compa�ia telef�nica IUSACELL o UNEFON
SELECT usuario,telefono FROM tblUsuarios
WHERE compa�ia IN('IUSACELL','UNEFON');
--Listar nombre y tel�fono de los usuarios con tel�fono que no sea de la marca MOTOROLA o NOKIA
SELECT usuario,telefono FROM tblUsuarios
WHERE  marca  NOT IN('MOTOROLA','NOKIA');
--Calcular la suma de los saldos de los usuarios de la compa�ia telef�nica TELCEL
SELECT sum(saldo)  AS SaldoTelcel FROM tblUsuarios 
WHERE compa�ia='TELCEL';