select *
from Sales.SalesOrderDetail;

select SalesOrderID, 
max(UnitPrice) as MaxSales
--min(UnitPrice) as MinSales
--count(UnitPrice) as TotalSalesCount
--avg(UnitPrice) as AvgSales
--sum(UnitPrice) as TotalSales
from Sales.SalesOrderDetail
group by SalesOrderID;