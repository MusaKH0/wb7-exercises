# ------------------------------------------------- #
# 1) name of table for sellable items at Northwind  #
# ------------------------------------------------- #
use northwind;
SELECT table_name
FROM information_schema.tables
WHERE table_type='BASE TABLE'
      AND table_schema = 'northwind'
      AND table_name = 'products';
      

# --------------------------------------------------------------------- #
# 2) list product ids, product name, and unit price for each product    #
# --------------------------------------------------------------------- #
SELECT ProductID, ProductName, UnitPrice
FROM products;


# ---------------------------------------------------------------------------------------- #
# 3) list product ids, product name, and unit price for each product in ascending order    #
# ---------------------------------------------------------------------------------------- #
SELECT ProductID, ProductName, UnitPrice
FROM products
order by ProductID, ProductName, UnitPrice asc;


# ---------------------------------------------------------- #
# 4) products where unit price is $7.50 or less              #
# ---------------------------------------------------------- #
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice <= 7.50;


# --------------------------------------------------------------------------- #
# 5) products with at least 100 units, order them in desc order by price      #
# --------------------------------------------------------------------------- #
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM products
WHERE UnitsInStock between 0 and 100
order by UnitPrice desc;


# ------------------------------------------------------------------------- #
# 6) products with at least 100 units, order them in desc order by price.   #
# If 2 or more have same price, list in ascending                           #
# ------------------------------------------------------------------------- #
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM products
WHERE UnitsInStock between 0 and 100
order by UnitPrice desc, ProductName;


# -------------------------------------------------------------------------------- #
# 7) Query to list the product with no unit, >= 1 backorder. Order by product name #
# -------------------------------------------------------------------------------- #
SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
FROM products
WHERE UnitsInStock = 0
and UnitsOnOrder >= 1
order by ProductName;


# --------------------------------------------------------------------------- #
# 8) Name of the table that holds the categories of the items Noethwind sells #
# --------------------------------------------------------------------------- #
SELECT table_name
FROM information_schema.tables
WHERE table_type='BASE TABLE'
      AND table_schema = 'northwind'
      AND table_name = 'categories';
      

# --------------------------------------------------------------------------- #
# 9) Display all columns/rows of categories table. categorgy id of seafood    #
# --------------------------------------------------------------------------- #
SELECT * FROM categories;
-- Seafood catergory id = 8


# --------------------------------------------------------------------------- #
# 10) Query to list all seafood sold from categories                          #
# --------------------------------------------------------------------------- #
SELECT ProductID, ProductName, CategoryID
FROM products
WHERE CategoryID = 8;


# --------------------------------------------------------------------------- #
# 11) list first and last name of all Northwind employees                     #
# --------------------------------------------------------------------------- #
SELECT concat(FirstName, ' ', LastName) as FullName
FROM employees;


# --------------------------------------------------------------------------- #
# 12) list all Northwind employees with "manager" in title                    #
# --------------------------------------------------------------------------- #
SELECT *
FROM employees
WHERE Title like "%Manager%";


# --------------------------------------------------------------------------- #
# 13) list all distinct job titles                                            #
# --------------------------------------------------------------------------- #
SELECT distinct Title
FROM employees;


# --------------------------------------------------------------------------- #
# 14) list all Northwind employees with salary between $2,000 and $2,500      #
# --------------------------------------------------------------------------- #
SELECT EmployeeID, FirstName, LastName, Title, Salary
FROM employees
WHERE Salary between 2000 and 2500;


# --------------------------------------------------------------------------- #
# 15) list all the items "Tokyo Traders" supply to Northwind                  #
# --------------------------------------------------------------------------- #
SELECT *
FROM suppliers
WHERE SupplierID = 4;
-- Tokyo Traders supplierID = 4

SELECT *
FROM products
WHERE SupplierID = 4;

-- why didn't this work?
-- vvvv vvvv vvvv vvvvv
-- SELECT *
-- FROM products, suppliers
-- WHERE SupplierID = 4 ;








