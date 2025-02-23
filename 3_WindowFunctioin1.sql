-- Find the total sales for each product, additionally provide details such order id & order data

SELECT 
	OrderID,
	OrderDate
	PRODUCTID,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProducts
 	

FROM Sales.Orders
