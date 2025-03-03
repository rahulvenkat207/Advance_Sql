-- Find the total number of Customers
-- Find the total number of socres for the customers
-- Additionally provide all the customers

SELECT
*,
COUNT(*) OVER() TOTALCUSTOMERS,
COUNT(Score) OVER() TOTALSCORES
FROM Sales.Customers
