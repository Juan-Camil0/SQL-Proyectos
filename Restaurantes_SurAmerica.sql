CREATE DATABASE Restaurantes;

CREATE TABLE restaurante
(
cod_rest int,
nomb_rest varchar(50),
ubi_rest varchar (50),
CONSTRAINT pk_cn PRIMARY KEY (cod_rest)
)
SELECT * FROM restaurante;

INSERT INTO restaurante VALUES (1,'Delicias miguel','Argentina')
INSERT INTO restaurante VALUES (2,'Aline','italia')
INSERT INTO restaurante VALUES (3,'Cafe Provence','Colombia')
INSERT INTO restaurante VALUES (4,'Pimienta Rosa','Mexico')
INSERT INTO restaurante VALUES (5,'El Comsopolita','Chile')
INSERT INTO restaurante VALUES (6,'Katana','Japon')
INSERT INTO restaurante VALUES (7,'Saluna','Arabia')
INSERT INTO restaurante VALUES (8,'Calipso','Ecuador')
INSERT INTO restaurante VALUES (9,'El Buen Gusto','Colombia')
INSERT INTO restaurante VALUES (10,'Restaurante Montana','Venezuela')
INSERT INTO restaurante VALUES (11,'El Tulipán','Peru')
INSERT INTO restaurante VALUES (12,'Tomillo Salvaje','Paraguay')
INSERT INTO restaurante VALUES (13,'Atera','Argentina')
INSERT INTO restaurante VALUES (14,'Benu','Peru')
INSERT INTO restaurante VALUES (15,'Provenza','Brasil')
INSERT INTO restaurante VALUES (16,'Royal Table','Uruguay')
INSERT INTO restaurante VALUES (17,'Iconos','Bolivia')
INSERT INTO restaurante VALUES (18,'Dinastía Del Sabor','Mexico')
INSERT INTO restaurante VALUES (19,'El Doradal','Colombia')
INSERT INTO restaurante VALUES (20,'Delirios De sabor','Chile')
INSERT INTO restaurante VALUES (21,'La choza','Ecuador')
INSERT INTO restaurante VALUES (22,'La Gran Cocina','Uruguay')
INSERT INTO restaurante VALUES (23,'El Gran Churrasco','Argentina')
INSERT INTO restaurante VALUES (24,'Hornado Bonito','Colombia')
INSERT INTO restaurante VALUES (25,'Mundo Ceviche','Peru')
INSERT INTO restaurante VALUES (26,'Terra Ecuador','Ecuador')
INSERT INTO restaurante VALUES (27,'Circus','Venezuela')
INSERT INTO restaurante VALUES (28,'El Gran Capitan','Uruguay')
INSERT INTO restaurante VALUES (29,'Monte Azul','Brasil')
INSERT INTO restaurante VALUES (30,'Las Tres Palmas','Peru')

CREATE TABLE chef
(
cod_chef INT,
cod_desay VARCHAR(15),
cod_almu VARCHAR(15),
cod_cena VARCHAR(15),
CONSTRAINT pk_cc PRIMARY KEY (cod_chef)
)
SELECT * FROM chef;

INSERT INTO chef VALUES(1,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(2,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(3,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(4,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(5,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(6,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(7,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(8,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(9,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(10,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(11,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(12,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(13,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(14,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(15,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(16,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(17,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(18,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(19,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(20,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(21,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(22,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(23,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(24,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(25,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(26,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(27,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(28,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(29,'Desayuno','Almuerzo','Cena')
INSERT INTO chef VALUES(30,'Desayuno','Almuerzo','Cena')

CREATE TABLE proveedores
(
cod_pro INT,
prov_veg VARCHAR(100),
prov_maris VARCHAR(100),
prov_frut VARCHAR(100),
prov_carn VARCHAR(100),
CONSTRAINT pk_cp PRIMARY KEY (cod_pro)
)
SELECT * FROM proveedores;

INSERT INTO proveedores VALUES(1,'Verdura','Mar','Frutas','Andres Carne')
INSERT INTO proveedores VALUES(2,'Hortalizas','Atlantic Fs S A S','Frit','Carness')
INSERT INTO proveedores VALUES(3,'Hortalizas Frutas','Mariscos Andre S A S','Fruter','Carnuut')
INSERT INTO proveedores VALUES(4,'Bokchoy Verduras','Mariscos Cartagena S A S','FRIBER','Carnitas')
INSERT INTO proveedores VALUES(5,'Yucas Verduras ','Mariscos Damar S A S','Frusssstuu','Carnes Vargas')
INSERT INTO proveedores VALUES(6,' Hortalizas Del Llano Ltda','Mariscos De La Alta Guajira Sas','Frutitas','Carness')
INSERT INTO proveedores VALUES(7,'Verduras Y Hortalizas El Paraiso','Mariscos S A S','Frutascol','Carnesss A')
INSERT INTO proveedores VALUES(8,'Verduras S A S','Mariscos Del Golfo Sas','Frutos','Vaiva la Carne')
INSERT INTO proveedores VALUES(9,'Aviska S A S','Mariscos Del Mar R&r S A S','Fruttttt','Carnex')
INSERT INTO proveedores VALUES(10,'Verduras Pizarro S A S','Mariscos Pescados Frutas Tropicales S A S','Frutas Veci','Carne mio')
INSERT INTO proveedores VALUES(11,'Inversiones Woh Inc S A S','Mariscos Y Carnes La Playa S A S','Frutas Colmena','Carnes sota')
INSERT INTO proveedores VALUES(12,'Pulpas Zanjose S A S','Mariscos Del Choco Sas','Campi Frutas','Carnnees')
INSERT INTO proveedores VALUES(13,'Verduras Cjc S A S','El Corral Del Marisco S A S','Zona Frutas','Camino Carne')
INSERT INTO proveedores VALUES(14,'Verduras Frescas De Colombia S A S','Distribuidora Rico Marisco Sas','Frescas Frutas','Carrnes')
INSERT INTO proveedores VALUES(15,'Verduras Selectas S A S','Zona Portal Del Marisco S A S','Frutluz','Sabor Carne')
INSERT INTO proveedores VALUES(16,'Verduras Murcia S A S','Cocina Pisco Y Marisco S A S','Frucos','Todo Carne')
INSERT INTO proveedores VALUES(17,'Verduras De La Sabana Costa Atlantica S A S','El Sabor Del Marisco S A S','Fritutos','Cita Carne')
INSERT INTO proveedores VALUES(18,'H G Holding Group Sas','El Corral Del Marisco Tropical S A S','Frutitis','Carnitas tia')
INSERT INTO proveedores VALUES(19,'Hortalizas El Manantial S A S','Marisco El Pez Dorado','Frutas Camilo','Comelos Carne')
INSERT INTO proveedores VALUES(20,'Verdurin','Marisco Del Minicipio De Tumaco','Frutas Selva','Carnes Mejor')
INSERT INTO proveedores VALUES(21,'Jefe Verdura',' Bahias De Pasacaballos','Frutos mundo','Meta Carne')
INSERT INTO proveedores VALUES(22,'Planeta Verdura',' Mariscos De La Sabana S A S','Frut','La mejor Carne')
INSERT INTO proveedores VALUES(23,'Veldula','Mariscos Will S Ltda','Frrucos','Carne paco')
INSERT INTO proveedores VALUES(24,'Ver Agro','Mar luna','Frtuuuu','Carnes Libre')
INSERT INTO proveedores VALUES(25,'Hortalizas ver','Peces deli','Fruta','MS Carne')
INSERT INTO proveedores VALUES(26,'Vegetales 100','Mundo marico','Doña Fruta','S.A.A Carne')
INSERT INTO proveedores VALUES(27,'Vege','Concedores de peces','Frunitas','Cartneee')
INSERT INTO proveedores VALUES(28,'Com Vegetal','Pez pez','Frucos','Carnes Feliz')
INSERT INTO proveedores VALUES(29,'Vegetales mundo','Pescaderia Juan','Frutatas','Carneton')
INSERT INTO proveedores VALUES(30,'El Mundo Vegetal','Pescadoos','Frutitos','Carnitas Log')

CREATE TABLE bodega
(
cod_bod INT,
nombre_pro VARCHAR(100),
canti_pro INT,
pres_pro FLOAT,
total FLOAT,
CONSTRAINT pk_cb PRIMARY KEY (cod_bod)
)
SELECT * FROM bodega;

INSERT INTO bodega VALUES (1,'tomate',100,3.20,null)
INSERT INTO bodega VALUES (2,'duraznos',13,4,null)
INSERT INTO bodega VALUES (3,'aceítes',1034,4.3,null)
INSERT INTO bodega VALUES (4,'limones',165,45,null)
INSERT INTO bodega VALUES (5,'cebollas',134,34,null)
INSERT INTO bodega VALUES (6,'coles',134,435,null)
INSERT INTO bodega VALUES (7,'pepinos',155,4,null)
INSERT INTO bodega VALUES (8,'naranja',19,5.54,null)
INSERT INTO bodega VALUES (9,'pescado',1004,434,null)
INSERT INTO bodega VALUES (10,'cangrejos',1004,34,null)
INSERT INTO bodega VALUES (11,'pulpos',1034,23,null)
INSERT INTO bodega VALUES (12,'tilapias',134,135,null)
INSERT INTO bodega VALUES (13,'albacora',134,24,null)
INSERT INTO bodega VALUES (14,'atun',1023,24,null)
INSERT INTO bodega VALUES (15,'arroz',123,24,null)
INSERT INTO bodega VALUES (16,'azucar',123,24,null)
INSERT INTO bodega VALUES (17,'papas',123,55,null)
INSERT INTO bodega VALUES (18,'lechugas',123,6,null)
INSERT INTO bodega VALUES (19,'zanahorias',1023,5,null)
INSERT INTO bodega VALUES (20,'melones',1023,4,null)

CREATE TABLE gerente
(
cod_ger INT,
nom_ger VARCHAR(50),
apell_ger VARCHAR(50),
cod_bod1 INT,
cod_chef1 INT,
cod_pro1 INT,
cod_restau1 INT,
CONSTRAINT pk_cger PRIMARY KEY (cod_ger),
CONSTRAINT fk_fr1 FOREIGN KEY  (cod_bod1) REFERENCES bodega (cod_bod),
CONSTRAINT fk_fc1 FOREIGN KEY  (cod_chef1) REFERENCES chef (cod_chef),
CONSTRAINT fk_fp1 FOREIGN KEY  (cod_pro1) REFERENCES proveedores (cod_pro),
CONSTRAINT fk_fre1 FOREIGN KEY  (cod_restau1) REFERENCES restaurante (cod_rest),
)
INSERT INTO gerente VALUES (1,'juan','vargas',1,1,1,1)
INSERT INTO gerente VALUES (2,'camilo','arboleda',2,2,2,2)
INSERT INTO gerente VALUES (3,'ruby','arboleda',3,3,3,3)
INSERT INTO gerente VALUES (4,'francisco','vargas',4,4,4,4)
INSERT INTO gerente VALUES (5,'carlos','vela',5,5,5,5)
INSERT INTO gerente VALUES (6,'yuli','sanchez',6,6,6,6)
INSERT INTO gerente VALUES (7,'erika','cadena',7,7,7,7)
INSERT INTO gerente VALUES (8,'andrea','torres',8,8,8,8)
INSERT INTO gerente VALUES (9,'laura','cortez',9,9,9,9)
INSERT INTO gerente VALUES (10,'nelson','rodriguez',10,10,10,10)



CREATE TABLE chef_bod
(
cod_chef2 INT,
cod_bod2 INT,
CONSTRAINT fk_fchef2 FOREIGN KEY (cod_chef2) REFERENCES chef (cod_chef),
CONSTRAINT fk_fbod2 FOREIGN KEY (cod_bod2) REFERENCES bodega (cod_bod)
)

INSERT INTO chef_bod VALUES (1,1)
INSERT INTO chef_bod VALUES (2,2)
INSERT INTO chef_bod VALUES (3,3)
INSERT INTO chef_bod VALUES (4,4)
INSERT INTO chef_bod VALUES (5,5)
INSERT INTO chef_bod VALUES (6,6)
INSERT INTO chef_bod VALUES (7,7)
INSERT INTO chef_bod VALUES (8,8)
INSERT INTO chef_bod VALUES (9,9)
INSERT INTO chef_bod VALUES (10,10)
INSERT INTO chef_bod VALUES (11,11)
INSERT INTO chef_bod VALUES (12,12)
INSERT INTO chef_bod VALUES (13,13)
INSERT INTO chef_bod VALUES (14,14)
INSERT INTO chef_bod VALUES (15,15)
INSERT INTO chef_bod VALUES (16,16)
INSERT INTO chef_bod VALUES (17,17)
INSERT INTO chef_bod VALUES (18,18)
INSERT INTO chef_bod VALUES (19,19)
INSERT INTO chef_bod VALUES (20,20)

CREATE TABLE bod_pro
(
cod_bod3 INT,
cod_pro2 INT,
CONSTRAINT fk_fbod3 FOREIGN KEY (cod_bod3) REFERENCES bodega (cod_bod),
CONSTRAINT fk_fpro2 FOREIGN KEY (cod_pro2) REFERENCES proveedores (cod_pro)
)

INSERT INTO bod_pro VALUES (1,1)
INSERT INTO bod_pro VALUES (2,2)
INSERT INTO bod_pro VALUES (3,3)
INSERT INTO bod_pro VALUES (4,4)
INSERT INTO bod_pro VALUES (5,5)
INSERT INTO bod_pro VALUES (6,6)
INSERT INTO bod_pro VALUES (7,7)
INSERT INTO bod_pro VALUES (8,8)
INSERT INTO bod_pro VALUES (9,9)
INSERT INTO bod_pro VALUES (10,10)
INSERT INTO bod_pro VALUES (11,11)
INSERT INTO bod_pro VALUES (12,12)
INSERT INTO bod_pro VALUES (13,13)
INSERT INTO bod_pro VALUES (14,14)
INSERT INTO bod_pro VALUES (15,15)
INSERT INTO bod_pro VALUES (16,16)
INSERT INTO bod_pro VALUES (17,17)
INSERT INTO bod_pro VALUES (18,18)
INSERT INTO bod_pro VALUES (19,19)
INSERT INTO bod_pro VALUES (20,20)

--consultas
SELECT nom_ger,apell_ger FROM gerente
INNER JOIN restaurante ON restaurante.cod_rest = gerente.cod_restau1
WHERE lower(nom_ger)='juan';
--otro modo
SELECT g.nom_ger,g.apell_ger FROM gerente g, restaurante r
WHERE r.cod_rest=g.cod_restau1 AND lower(g.nom_ger)='juan';

SELECT prov_veg,nombre_pro,canti_pro,pres_pro FROM proveedores
INNER JOIN bodega ON bodega.cod_bod = proveedores.cod_pro
WHERE lower(nombre_pro)='pepinos';

SELECT nom_ger,apell_ger,nombre_pro,canti_pro,pres_pro FROM gerente
INNER JOIN bodega ON bodega.cod_bod = gerente.cod_bod1
WHERE lower(apell_ger)='torres';

--Operaciones total para todo los productos insertados
update bodega
SET total=canti_pro*pres_pro;

--Operación para calcular los productos uno por uno
update bodega
SET total=canti_pro*pres_pro
WHERE cod_bod=1
SELECT * FROM bodega
-------------------------------
update bodega
SET nombre_pro='melones'
WHERE cod_bod=11
SELECT * FROM bodega

------------------------------
update bodega
SET canti_pro='200'
WHERE cod_bod=11
SELECT * FROM  bodega

-----------------------------
update gerente
SET nom_ger='juan'
WHERE cod_ger=1
SELECT * FROM gerente