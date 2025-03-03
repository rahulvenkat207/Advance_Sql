-- Find the total number of Customers
-- Additionally provide all the customers

SELECT *,
COUNT(*) OVER() TOTALCUSTOMERS
FROM Sales.Customers