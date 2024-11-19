# ------------------------------------------------- #
# 1) categories of products                         #
# ------------------------------------------------- #
SELECT * FROM northwind.categories;
#------------------


# ------------------------------------------------- #
# 2) name of product that sounds interesting to us  #
# 'Ipoh Coffee'                                     #
# ------------------------------------------------- #
SELECT * FROM northwind.products;
#------------------


# ------------------------------------------------- #
# 3) countries that we have customers               #
# ------------------------------------------------- #
SELECT Country 
FROM `northwind`.`customers`;
#------------------


# ------------------------------------------------- #
# 4) first order                                    #
# ------------------------------------------------- #
SELECT * FROM northwind.orders;

SELECT OrderDate
FROM `northwind`.`orders`;

# OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry
#10248, VINET, 5, 1996-07-04 00:00:00, 1996-08-01 00:00:00, 1996-07-16 00:00:00, 3, 32.3800, Vins et alcools Chevalier, 59 rue de l-Abbaye, Reims, , 51100, France
#------------------


# ------------------------------------------------- #
# 5) last order                                     #
# ------------------------------------------------- #
# OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry
#11074, SIMOB, 7, 1998-05-06 00:00:00, 1998-06-03 00:00:00, , 2, 18.4400, Simons bistro, Vinbltet 34, Kobenhavn, , 1734, Denmark
#------------------


# ------------------------------------------------- #
# 6) customer count                                 #
# ------------------------------------------------- #
Select count(CustomerID)
from northwind.customers;
#------------------


# ---------------------------------------------------------- #
# 7) suppliers in `South America` or `Europe` or `Africa`    #
# ---------------------------------------------------------- #
SELECT * FROM northwind.suppliers;
-- Where Country = `South America` or `Europe` or `Africa`;
#------------------


# ---------------------------------------------------------- #
# 8) most expensive product                                  #
# ---------------------------------------------------------- #
SELECT max(UnitPrice) FROM northwind.products;
#------------------


# ---------------------------------------------------------- #
# 9) least expensive product                                 #
# ---------------------------------------------------------- #
SELECT min(UnitPrice) FROM northwind.products;
#------------------


# ------------------------------------------------------------------------ #
# 10) customer 'The Big Cheese'. Get details about their last order        #
# ------------------------------------------------------------------------ #

#------------------











