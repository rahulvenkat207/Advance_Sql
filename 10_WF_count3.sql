-- find the total number of orders
-- Additionally provide details such order ID, Order Date
-- Additionally provide details such as order ID, order Date

SELECT 
	OrderID,
	OrderDate,
	CustomerID,
	COUNT(*) OVER() TotalOrders,
	COUNT(*) OVER(PARTITION BY CustomerID) OrdersBYCustomers
FROM Sales.Orders