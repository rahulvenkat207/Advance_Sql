-- find the highest and the loswes sales acrross all orders 
-- and the highest ad lowest sales for each prouct.
-- addtionally,provide dtials sucah as ODeRD ID and Order date

SELECT  
OrderID,
ProductID,
MAX (Sales) OVER() HIGHSALES,
MIN(Sales) OVER() LOWSALES,
MIN(Sales) OVER(PARTITION BY ProductID) LOWSALESBYPRODUCT,
MAX(Sales) OVER(PARTITION BY ProductID) HIGHSALESBYPRODUCT

FROM Sales.Orders