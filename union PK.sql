select BusinessEntityID
from HumanResources.Employee
union
select BusinessEntityID
from Person.Person
union
select CustomerID
from Sales.Customer

select BusinessEntityID
from HumanResources.Employee
union all
select BusinessEntityID
from Person.Person
union all
select CustomerID
from Sales.Customer