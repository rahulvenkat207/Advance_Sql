-- Find the total sales for each product,
--Find the total sales across all orders
-- additionally provide details such order id & order data

SELECT 
	OrderID,
	OrderDate,
	PRODUCTID,
	SUM(Sales) OVER() TotalSales,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProducts
 	

FROM Sales.Orders
