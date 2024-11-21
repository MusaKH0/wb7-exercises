
-- 1
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM northwind.products as p
JOIN northwind.categories as c
	ON p.CategoryID = c.CategoryID
ORDER BY p.CategoryID, p.ProductName;


-- 2
SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName
FROM northwind.products as p
JOIN northwind.suppliers as s
	ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice < 75
ORDER BY p.ProductName;


-- 3
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName
FROM northwind.products as p
JOIN northwind.suppliers as s
	ON p.SupplierID = s.SupplierID
JOIN northwind.categories as c
	ON p.CategoryID = c.CategoryID
ORDER BY p.ProductName;


-- 4
SELECT p.ProductName, c.CategoryName, p.UnitPrice
FROM northwind.products as p
JOIN northwind.categories as c
	ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = 
	(SELECT MAX(p.UnitPrice) 
    FROM northwind.products as p);


-- 5
SELECT o.OrderID, o.ShipName, o.ShipAddress, o.ShipCountry, s.CompanyName
FROM northwind.orders as o
JOIN northwind.shippers as s
	ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry like '%Germany%';


-- 6
SELECT o.OrderID, p.ProductName, o.OrderDate, o.ShipName, o.ShipAddress
FROM northwind.orders as o
JOIN northwind.`order details` as od
	ON od.OrderID = o.OrderID
JOIN northwind.products as p
	ON p.ProductID = od.ProductID
WHERE p.ProductID = 34;
















