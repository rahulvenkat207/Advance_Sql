-- calculate moving average of saels for each prdocut over time,including only the next order.

SELECT 
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	AVG(Sales) OVER(PARTITION BY ProductID) AVGBYPRODUCT,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ) movingavg,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) ROLLINGAVERAGE
FROM Sales.Orders