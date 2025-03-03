SELECT 
	OrderID,
	OrderDate,
	PRODUCTID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProducts

 	

FROM Sales.Orders
WHERE ProductID in (101,102)