select*
from Sales.SalesOrderHeader;

select OrderDate,ShipDate,TaxAmt,SubTotal,SubTotal - TaxAmt as NetProfit_ExTax
from Sales.SalesOrderHeader
where SubTotal - TaxAmt <1000;