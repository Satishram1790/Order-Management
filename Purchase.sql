use AdventureWorks2019

select PurchaseOrderID,EmployeeID
from Purchasing.PurchaseOrderHeader
where PurchaseOrderID=5;

select PurchaseOrderID,EmployeeID
from Purchasing.PurchaseOrderHeader
where PurchaseOrderID in 
(
select PurchaseOrderID from Purchasing.PurchaseOrderHeader
where PurchaseOrderID =5
)	;

