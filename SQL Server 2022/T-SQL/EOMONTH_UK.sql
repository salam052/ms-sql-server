/*******************************************************************************
*********************** EOMONTH   **********************************
********************************************************************************/
USE [FORMATION]
GO
------ on the last day of the current month


select eomonth (getdate ())




------ on the last day of the following month

select eomonth (getdate (), 1)

----- on the first day of the month

SELECT DATEADD(mm, DATEDIFF(mm, 0, GETDATE()), 0)

----- on the first day of the previous month

SELECT DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) - 1, 0)

----- on the first day of the following month

SELECT DATEADD(mm, DATEDIFF(mm, 0, GETDATE()) + 1, 0)

--Why not EOMONTH AND FORMAT?  

select top (1) 
format (EOMONTH(date_of_birth),'D','fr-FR' ) as French,
format (eomonth(date_of_birth),'D','en-US' ) as English,
format (eomonth(date_of_birth),'D', 'de-de') as German
FROM [Contact]
where date_of_birth is not null
