-- find the total number of orders
-- Additionally provide details such order ID, Order Date

SELECT 
	OrderID,
	OrderDate,
	COUNT(*) OVER() TotalOrders
FROM Sales.Orders