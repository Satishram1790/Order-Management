select *
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,
Year(orderdate) as ExtractYear
--month(orderdate) as ExtractMonth
--day(orderdate) as ExtractDay
from Sales.SalesOrderHeader;

select CURRENT_TIMESTAMP

select *
from Sales.SalesOrderDetail;

select SalesOrderID, sum(UnitPrice) as TotalSales
from Sales.SalesOrderDetail
where SalesOrderID between 40000 and 50000
group by SalesOrderID
having sum(UnitPrice) <500
order by Totalsales desc;