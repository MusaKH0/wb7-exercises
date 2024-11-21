-- 1
SELECT count(*)
from northwind.suppliers as s;


-- 2
select SUM(e.Salary)
from northwind.employees as e;


-- 3
SELECT ProductID, ProductName, SupplierID, UnitPrice
FROM northwind.Products
WHERE UnitPrice = (SELECT min(UnitPrice) FROM northwind.Products);


-- 4
select AVG(p.UnitPrice) 
from northwind.products as p;


-- 5
SELECT ProductID, ProductName, SupplierID, UnitPrice
FROM northwind.Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM northwind.Products);


-- 6
SELECT p.SupplierID , COUNT(p.ProductName) as NumberOfItems 
FROM northwind.products as p
GROUP BY p.SupplierID;


-- 7 
SELECT p.CategoryID 
, AVG(p.UnitPrice) as AvgPricePerItem 
FROM northwind.products as p
GROUP BY p.CategoryID;


-- 8 
SELECT p.SupplierID, count(*) as Items
FROM northwind.products as p
GROUP BY p.SupplierID
HAVING COUNT(*) >= 5;


-- 9
SELECT 
p.ProductID
, p.ProductName
, (p.UnitPrice * p.UnitsInStock) as InventoryValue
FROM northwind.products as p
ORDER BY InventoryValue DESC, p.ProductName;
















