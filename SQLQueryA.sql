select *
from HumanResources.Employee;

select BusinessEntityID,JobTitle
from HumanResources.Employee;

select BusinessEntityID,JobTitle, LoginID
from HumanResources.Employee
--where jobtitle in ('Design Engineer','Senior Tool Designer');
--where BusinessEntityID between 1 and 10;
--where JobTitle like 'Acc%';
where JobTitle like 'A%'
order by BusinessEntityID desc;

