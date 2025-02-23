-- Find the total slaes for each product

SELECT 
ProductID,
SUM(Sales) AS Total_Sum
FROM Sales.Orders
GROUP BY Sales.Orders.ProductID