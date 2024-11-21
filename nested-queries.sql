
-- 1
SELECT p.ProductName, p.UnitPrice
FROM northwind.products as p
WHERE p.UnitPrice = (SELECT MAX(p.UnitPrice) FROM northwind.products as p);


-- 2
SELECT o.OrderID, o.ShipName, o.ShipAddress, o.ShipVia
FROM northwind.orders as o
WHERE o.ShipVia = (SELECT s.ShipperID 
FROM northwind.shippers as s
WHERE s.CompanyName like '%FEDERAL SHIPPING%');


-- 3
SELECT o.OrderID, o.ProductID 
FROM northwind.`order details` as o
WHERE o.ProductID IN (
SELECT p.ProductID
FROM northwind.products as p
WHERE p.ProductName like '%Sasquatch Ale%');


-- 4. Get the full name of the employee who handled a specific order
SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS "Full Name"
FROM 
    northwind.Employees e 
WHERE 
    e.EmployeeID = (
        SELECT o.EmployeeID 
        FROM northwind.Orders o 
        WHERE OrderID = (
            SELECT OrderID 
            FROM northwind.`Order Details` od 
            WHERE OrderID = 10266
        )
    );


-- 5. Get the company name of the customer who placed a specific order
SELECT 
    c.CompanyName 
FROM 
    northwind.Customers c 
WHERE 
    c.CustomerID = (
        SELECT o.CustomerID 
        FROM northwind.Orders o 
        WHERE OrderID = (
            SELECT OrderID 
            FROM northwind.`Order Details` od 
            WHERE OrderID = 10266
        )
    );







