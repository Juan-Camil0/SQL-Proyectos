--seleccionar toda la tabla de employees
SELECT * FROM Employees;
--Condición
SELECT * FROM Products
WHERE CategoryID=2;
--Varias condiciones utilizando OR
SELECT * FROM Products
WHERE CategoryID=6 OR CategoryID=2;
--BETWEEN
SELECT ProductID,ProductName,UnitPrice,UnitsInStock FROM Products
WHERE UnitsInStock BETWEEN 0 AND 10;
--Varias condiciones utilizando más OR
SELECT * FROM Products
WHERE CategoryID=6 OR CategoryID=4 OR CategoryID=8;
--IN ->Reduce el código, asignado a consultas con condiciones OR
SELECT * FROM Products
WHERE CategoryID IN (4,6,8,10);
SELECT * FROM Products
WHERE SupplierID IN (3,5,8);
--ORDERDATE
SELECT * FROM Orders
WHERE year()