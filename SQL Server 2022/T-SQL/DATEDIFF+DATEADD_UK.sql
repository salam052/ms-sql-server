/*******************************************************************************
*************************** DATEADD/DATEDIFF    *********************************
********************************************************************************/
USE FORMATION
go

-- DATEADD:This function adds a specified number value (signed integer)
-- to the specified start date of a date input value, 
-- then returns the modified value.

-- DATEADD (datepart , number , date ) 

SELECT DATEADD(month, 1, '20060830');
SELECT DATEADD(month, 1, '20060831')

-- by adding two days

SELECT date_of_birth  
    ,DATEADD(day,2,date_of_birth) AS dateaddingtwodays
FROM contact

-- allons un peu plus loin

SELECT DATEADD(qq, DATEDIFF(qq, 0, GETDATE()) - 1, 0) -- first day of term

SELECT DATEADD(dd, -1, DATEADD(qq, DATEDIFF(qq, 0, GETDATE()), 0)) -- last day of term

SELECT DATEADD(qq, DATEDIFF(qq, 0, GETDATE()), 0) -- first day of the current term

SELECT DATEADD(qq, DATEDIFF(qq, 0, GETDATE()) + 1, 0)-- first day of the following term


-- faisons joujou :

SELECT DATEADD(wk, -1, DATEADD(DAY, 1-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE()))) --1st day last week 
SELECT DATEADD(wk, 0, DATEADD(DAY, 1-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE()))) --1st day of the week
SELECT DATEADD(wk, 1, DATEADD(DAY, 1-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE()))) --1st day next week

SELECT DATEADD(wk, 0, DATEADD(DAY, 0-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE()))) --last day of last week
SELECT DATEADD(wk, 1, DATEADD(DAY, 0-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE()))) --last day of the week
SELECT DATEADD(wk, 2, DATEADD(DAY, 0-DATEPART(WEEKDAY, GETDATE()), DATEDIFF(dd, 0, GETDATE()))) --last day of the following week

-- This function returns the number (signed integer value) of specified start date limits,
-- crossings between the specified startdate and enddate values.
-- DATEDIFF ( startdate , startdate , enddate )

SELECT DATEDIFF(hh, '09:00', '11:00');

SELECT DATEDIFF(mm, '2011-09-30', '2011-11-02')


SELECT DATEDIFF(day, '2014-01-09', '2014-01-01'); -- = -8

SELECT DATEDIFF(day, '2014-01-09 00:00:00', '2014-01-01 00:00:00'); -- = -8

SELECT DATEDIFF(day, '2014-01-01', '2014-01-09'); --  8

SELECT DATEDIFF(day, '2015-01-01', '2014-01-01'); --  -365

SELECT DATEDIFF(day, '2014-01-02', '2014-01-01'); --   -1

SELECT DATEDIFF(day, '2014-01-02 23:59:59', '2014-01-01'); --  -1

