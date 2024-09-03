/*******************************************************************************
*********************** CHOOSE     *********************************************
********************************************************************************/
-- Returns the item to the specified index from a list of values in SQL Server.

USE FORMATION
go

-- The following example returns the first item in the value list provided. 

select choose (1,'France', 'Belgium', 'England') as country

-- The following example returns the second item in the value list provided. 

select choose (2,'France', 'Belgium', 'England') as country

------ If I set the index to 0 ?
select choose (0,'France', 'Belgium', 'England') as country


------ CASE WHEN Replaced by a CHOOSE 

select *, case  datepart(month,date_of_birth) 
when 1 THEN 'January'
when 2 THEN 'February'
when 3 THEN 'March'
when 4 THEN 'April'
when 5 THEN 'May'
when 6 THEN 'June'
when 7 THEN 'July'
when 8 THEN 'August'
when 9 THEN 'September'
when 10 THEN 'October'
when 11 THEN 'November'
when 12 then 'december'
end
as Month
 FROM contact

  -------- Is CHOOSE smart enough to do it? 

 select *, choose (datepart(month,date_of_birth) 
 ,'January','February','March','April','May','June','July','August',
 'September','October','November','december')  FROM contact

