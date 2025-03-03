-- Find the percentage contribution of each product's sales to the total sales

SELECT
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	SUM(Sales) OVER () TotalSales,
	ROUND(CAST(sales AS float) / SUM(Sales) OVER () *100,2 ) AS percentageoftotal
 FROM Sales.Orders