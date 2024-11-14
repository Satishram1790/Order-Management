-- Datatyupe
	Numeric > bit - money -int - int identity
	Text > String - char(n) -Varchar(n)
	DateTime - date -timestamp
	uniqueidentifier for store GUID

create Database Workout;

create table ResourceData
(
ID int identity(1,1) primary key,
JoineeName varchar(50),
WorkoutDate datetime,
ConfirmedJoinee int,
ReleavedMember smallint,
Country varchar(30),
ActiveFlag bit,
FeePaid Money
);

create Table Equipments
(
ItemId int primary key,
ItemName varchar(50) unique,
ItemOrderDate datetime not null,
ItemShipDate datetime not null,
ItemPrice money
);

create Table SubEquipments
(
SubItemId int,
SubItemName varchar(50) unique,
SubItemOrderDate datetime not null,
SubItemShipDate datetime not null,
SubItemPrice money,
constraint SubEquipmentsPK primary key(SubItemId,SubItemName),
constraint SubEquipmentsFK Foreign key(SubItemId) references Equipments(ItemId)
);

select * from dbo.ResourceData;

insert into dbo.ResourceData(JoineeName,WorkoutDate,ConfirmedJoinee,ReleavedMember,Country,ActiveFlag,FeePaid) 
values
('Cat','11/14/2024',10,2,'USA',0,1000),
('Dog','11/14/2024',0,0,'China',1,200);

update dbo.ResourceData
set ReleavedMember=5,ConfirmedJoinee=10
where ID=3;

alter table ResourceData
add Area Char(12);

alter table resourcedata
alter column Area varchar(25);

alter table resourcedata
drop column Area;

delete from ResourceData where Country = 'Thailand' and ConfirmedJoinee = 100;
delete top(1) from ResourceData;
delete top(10) percent from ResourceData;

select * from dbo.ResourceData;

create table DummyData
(
IDdummy int,
Namedummy varchar(20),
DOB datetime,
Area smallint);


drop table DummyData;