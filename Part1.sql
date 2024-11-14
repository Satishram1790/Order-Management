select @@VERSION;

select @@SERVERNAME;

use AdventureWorks2019

select*
from HumanResources.Employee;

select BusinessEntityID,JobTitle,MaritalStatus
from HumanResources.Employee;

select distinct JobTitle
from HumanResources.Employee;

select JobTitle,MaritalStatus
from HumanResources.Employee
where jobtitle = 'Accountant';

select BusinessEntityID, JobTitle,MaritalStatus
from HumanResources.Employee
where BusinessEntityID >50;
--where jobtitle in ('Accountant', 'Accounts Manager');

select SubTotal,TaxAmt,
SubTotal-TaxAmt as SubTotalWithTax
--SubTotal+TaxAmt as SubTotalWithTax
from Purchasing.PurchaseOrderHeader;

select SubTotal,TaxAmt,
SubTotal-TaxAmt as SubTotalWithTax
--SubTotal+TaxAmt as SubTotalWithTax
from Purchasing.PurchaseOrderHeader
where SubTotal-TaxAmt <100;

select *
from Person.Person;

select FirstName, MiddleName, LastName
from Person.Person;

select FirstName, MiddleName, LastName, FirstName + ' ' + MiddleName + ' ' + LastName as FullName
from Person.Person
where MiddleName is not null;

select FirstName, MiddleName, LastName,
concat(FirstName, ' ',MiddleName, ' ',LastName) as FullName
from Person.Person
where MiddleName is not null;

select FirstName,
substring(firstname,3,5) as MExtractsubstringName
--right(firstname,3) as RightName
--left(firstname,3) as LeftName
--len(firstname) as LengthName
from Person.Person;

select *
from HumanResources.Employee
where JobTitle in ('Senior Tool Designer', 'Buyer');
--where MaritalStatus = 'S' and Gender= 'M';

select *
from HumanResources.Employee
where BusinessEntityID between 1 and 100;
--where MaritalStatus = 'S' and Gender= 'M';

select*
from Person.StateProvince
where Name like 'Al____';
--where Name like '%O';
--where Name like 'A%';

select FirstName,MiddleName,LastName
from Person.Person
where MiddleName is not null
order by FirstName desc, LastName asc;

select SalesOrderID,
max(Unitprice) as MaxSalePrice
--Min(Unitprice) as MinSalePrice
--count(Unitprice) as CountSalePrice
--avg(Unitprice) as AvgSalePrice
--sum(Unitprice) as TotalSalePrice
from Sales.SalesOrderDetail
group by SalesOrderID;


select SalesOrderID,OrderDate,ShipDate,
year(orderdate) as ExtractOrderYear
--Month(ShipDate) as ExtractShipMonth
--DAY(orderdate) as ExtractOrderDay
from Sales.SalesOrderHeader;

select CURRENT_TIMESTAMP;

*from > where > group by > having > select > order by

select SalesOrderID, 
sum(UnitPrice) as TotalPrice
from Sales.SalesOrderDetail
where SalesOrderID between 43000 and 45000
group by SalesOrderID
having sum(UnitPrice) <500
order by SalesOrderID;

--sub query

select PurchaseOrderID,EmployeeID
from Purchasing.PurchaseOrderHeader
where PurchaseOrderID in
(
select PurchaseOrderID from Purchasing.PurchaseOrderDetail where PurchaseOrderDetailID between 5 and 10
);

-- union and union all - combine mul rows

select PurchaseOrderID
from Purchasing.PurchaseOrderDetail
union all
select PurchaseOrderID
from Purchasing.PurchaseOrderHeader

-- Joins - Combine mul columns 

select pod.PurchaseOrderID, pod.PurchaseOrderDetailID, pod.StockedQty, poh.TotalDue
from Purchasing.PurchaseOrderDetail pod
inner join
Purchasing.PurchaseOrderHeader poh
on pod.PurchaseOrderID = poh.PurchaseOrderID;

select p.BusinessEntityID, p.FirstName, p.LastName, b.BusinessEntityID, b.AddressID
from Person.Person p
full outer join
--right outer join
--left join
Person.BusinessEntityAddress b
on p.BusinessEntityID = b.BusinessEntityID;





