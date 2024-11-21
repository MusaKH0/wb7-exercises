
-- 1
INSERT INTO northwind.suppliers (SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage)
VALUES ('30', 'Exotic Solids', 'Charlotte Pooper', 'Purchasing Assistant Manager', '50 Santa Cruz St.', 'Wales', NULL, '38042', 'UK', '(621) 910-5492', NULL, NULL);


-- 2
INSERT INTO northwind.products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES (78, 'Chocolate', 30, 3, '10 pieces x 20 bags', '34.0000', 76, 0, 10, 0);

-- 3
SELECT * 
FROM northwind.products as p
JOIN northwind.suppliers as s
ON s.SupplierID = p.SupplierID
ORDER BY ProductID;


-- 4
UPDATE northwind.products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductId = 78;


-- 5
SELECT * 
FROM northwind.products as p
JOIN northwind.suppliers as s
ON s.SupplierID = p.SupplierID
ORDER BY ProductID;


-- 6
DELETE FROM northwind.products
WHERE ProductID = 78;


-- 7
DELETE FROM northwind.suppliers
WHERE SupplierID = 30;


-- 8
SELECT * 
FROM northwind.products as p
ORDER BY p.ProductID;


-- 9
SELECT * 
FROM northwind.suppliers as s
ORDER BY s.SupplierID;




