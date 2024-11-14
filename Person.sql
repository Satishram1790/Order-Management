select *
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName
from Person.Person
where MiddleName is not null;

select BusinessEntityID, FirstName,MiddleName,LastName, FirstName + ' ' + MiddleName + ' ' + LastName as FullName
from Person.Person
where MiddleName is not null;

select BusinessEntityID, FirstName,MiddleName,LastName, concat(FirstName,' ', MiddleName, ' ', LastName) as FullName
from Person.Person
where MiddleName is not null;

select FirstName, 
substring(FirstName,2,5) as ExtractNameSubstring
--right(FirstName,3) as ExtractNamefromRight
--left(FirstName,3) as ExtractNamefromLeft
--len(FirstName) as NameLength
from Person.Person;