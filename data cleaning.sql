select * from [Paragon DB].[dbo].[Campaigns]

-- standardize the data format


select CreateTime
from [Paragon DB].[dbo].[Campaigns]

alter table [dbo].[Campaigns]
add Createdateconverted date;

update [dbo].[Campaigns]
set Createdateconverted = CONVERT(date,CreateTime)

select Createdateconverted, CONVERT(date,CreateTime)
from [Paragon DB].[dbo].[Campaigns]

-- Populate address data

select * from [dbo].[Campaigns]
where DashboardLink is null
order by CreatedAt




