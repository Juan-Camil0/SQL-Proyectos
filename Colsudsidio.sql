USE prueba;
GO
SELECT * FROM Afiliados;
SELECT * FROM Empresas;

/*Se requiere obtener los siguientes resultados.
1. Una tabla que muestre cuantos Afiliados hay por empresa. 
Esta tabla debe estar acompañada de la metodología con la que obtuvo la tabla. 
Preferiblemente la query en SQL Server*/

SELECT DISTINCT NUM_IDENTIFICACION_EMPRESA,count(TIP_IDENTIFICACION_AFILIADO) AS Afiliado FROM Afiliados 
GROUP BY NUM_IDENTIFICACION_EMPRESA
ORDER BY NUM_IDENTIFICACION_EMPRESA DESC

--2. Debe obtener la edad de los trabajadores y:

SELECT DATEDIFF(YEAR,FEC_NACIMIENTO,GETDATE()) As EDAD FROM  Afiliados --saber la edad de los afiliados 
ORDER BY EDAD DESC; -- Saber la mayor edad de los afiliados 
---Conocer la fecha de nacimiento de los afiliados 
SELECT FEC_NACIMIENTO  FROM afiliados
ORDER BY FEC_NACIMIENTO DESC;

--a. Clasificarlos por rangos de 5 años
SELECT sum(CASE WHEN FEC_NACIMIENTO <= '1916-02-08' THEN 1	 ELSE 0 END) AS [debajo 5],
       sum(CASE WHEN FEC_NACIMIENTO between '1921-01-01' and '1926-01-01'THEN 1 ELSE 0 END) AS [entre 5-10],
       sum(CASE WHEN FEC_NACIMIENTO between '1926-01-01' and '1931-01-01' THEN 1 ELSE 0 END) AS [entre 10-15],
	   sum(CASE WHEN FEC_NACIMIENTO between '1931-01-01' and '1936-01-01' THEN 1 ELSE 0 END) AS [entre 15-20],
	   sum(CASE WHEN FEC_NACIMIENTO between '1936-01-01' and '1941-01-01' THEN 1 ELSE 0 END) AS [entre 20-25],
	   sum(CASE WHEN FEC_NACIMIENTO between '1941-01-01' and '1946-01-01' THEN 1 ELSE 0 END) AS [entre 25-30],
	   sum(CASE WHEN FEC_NACIMIENTO between '1946-01-01' and '1951-01-01' THEN 1 ELSE 0 END) AS [entre 35-40],
	   sum(CASE WHEN FEC_NACIMIENTO between '1951-01-01' and '1956-01-01' THEN 1 ELSE 0 END) AS [entre 40-45],
	   sum(CASE WHEN FEC_NACIMIENTO between '1956-01-01' and '1961-01-01' THEN 1 ELSE 0 END) AS [entre 45-50],
	   sum(CASE WHEN FEC_NACIMIENTO between '1961-01-01' and '1966-01-01' THEN 1 ELSE 0 END) AS [entre 50-55],
	   sum(CASE WHEN FEC_NACIMIENTO between '1966-01-01' and '1971-01-01' THEN 1 ELSE 0 END) AS [entre 55-60],
	   sum(CASE WHEN FEC_NACIMIENTO between '1971-01-01' and '1976-01-01' THEN 1 ELSE 0 END) AS [entre 60-65],
	   sum(CASE WHEN FEC_NACIMIENTO between '1976-01-01' and '1981-01-01' THEN 1 ELSE 0 END) AS [entre 65-70],
	   sum(CASE WHEN FEC_NACIMIENTO between '1981-01-01' and '1986-01-01' THEN 1 ELSE 0 END) AS [entre 70-75],
	   sum(CASE WHEN FEC_NACIMIENTO between '1991-01-01' and '1996-01-01' THEN 1 ELSE 0 END) AS [entre 75-80],
	   sum(CASE WHEN FEC_NACIMIENTO between '1996-01-01' and '2001-01-01' THEN 1 ELSE 0 END) AS [entre 80-85],
	   sum(CASE WHEN FEC_NACIMIENTO between '2001-01-01' and '2006-01-01' THEN 1 ELSE 0 END) AS [entre 85-90],
	   sum(CASE WHEN FEC_NACIMIENTO between '2006-01-01' and '2011-01-01' THEN 1 ELSE 0 END) AS [entre 90-95],
	   sum(CASE WHEN FEC_NACIMIENTO between '2011-01-01' and '2016-01-01' THEN 1 ELSE 0 END) AS [entre 95-100],
	   sum(CASE WHEN FEC_NACIMIENTO between '2016-01-01' and '2017-01-01' THEN 1 ELSE 0 END) AS [entre 100-106]
 FROM  Afiliados
--b. Mencionar cuantos afiliados hay en cada rango
SELECT TIP_IDENTIFICACION_AFILIADO FROM Afiliados
GROUP BY TIP_IDENTIFICACION_AFILIADO

SELECT sum(CASE WHEN TIP_IDENTIFICACION_AFILIADO <> '1' THEN 1 ELSE 0 END) AS [Tipo1],
	   sum(CASE WHEN TIP_IDENTIFICACION_AFILIADO = '2' THEN 1 ELSE 0 END) AS [Tipo2],
	   sum(CASE WHEN TIP_IDENTIFICACION_AFILIADO = '3' THEN 1 ELSE 0 END) AS [Tipo3],
	   sum(CASE WHEN TIP_IDENTIFICACION_AFILIADO = '4' THEN 1 ELSE 0 END) AS [Tipo4],
	   sum(CASE WHEN TIP_IDENTIFICACION_AFILIADO = '6' THEN 1 ELSE 0 END) AS [Tipo6],
	   sum(CASE WHEN TIP_IDENTIFICACION_AFILIADO = '8' THEN 1 ELSE 0 END) AS [Tipo8],
	   sum(CASE WHEN TIP_IDENTIFICACION_AFILIADO = '9' THEN 1 ELSE 0 END) AS [Tipo9],
	   sum(CASE WHEN TIP_IDENTIFICACION_AFILIADO = '14' THEN 1 ELSE 0 END) AS [Tipo14]
FROM Afiliados

--c. Mencionar el porcentaje de cada rango respecto al total de afiliados
SELECT * FROM Afiliados;
/*3. Las Empresas y aportantes realizan unos aportes para su afiliación, 
por favor identifique cuales son los municipios con mayor cantidad de aportes. 
A su vez, mencione el porcentaje de aportes por cada municipio.*/

SELECT COD_MUNICIPIO_DANE,TIP_APORTANTE, max(APO_TOTAL_MENSUAL) AS Aporte_Maximo FROM Empresas
GROUP BY COD_MUNICIPIO_DANE,TIP_APORTANTE, APO_TOTAL_MENSUAL
ORDER BY APO_TOTAL_MENSUAL ASC


otra posiblidad 
--c. Mencionar el porcentaje de cada rango respecto al total de afiliados
SELECT sum(try_convert(INT,TIP_IDENTIFICACION_AFILIADO)) AS RangoDeAfiliados FROM Afiliados
WHERE  TIP_IDENTIFICACION_AFILIADO=1
group by TIP_IDENTIFICACION_AFILIADO
order by TIP_IDENTIFICACION_AFILIADO desc;
---
SELECT SUM(try_convert(INT,TIP_IDENTIFICACION_AFILIADO)) AS RangoDeAfiliados FROM Afiliados 
GROUP BY TIP_IDENTIFICACION_AFILIADO
