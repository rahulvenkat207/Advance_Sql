-- find the total sales across all orders
-- And the total sales for each prduct
-- Additionally provide details such as order ID,over date

SELECT
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	SUM(Sales) OVER () TotalSales,
	SUM(Sales) OVER (PARTITION BY ProductID) TotalSales
FROM Sales.Orders