-- calculate moving average of saels for each prdocut over time
SELECT 
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	AVG(Sales) OVER(PARTITION BY ProductID) AVGBYPRODUCT,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ) movingaverage
FROM Sales.Orders