/*******************************************************************************
*************** DATENAME/DATEPART/GETDATE/GETUTCDATE   *************************
********************************************************************************/

-- Returns a character string that represents the date part of the specified date
-- DATENAME ( datepart , date )

SELECT DATENAME(yy, '2017/08/25') 

SELECT DATENAME(hour, '2017/08/25 08:36')

SELECT DATENAME(minute, '2017/08/25 08:36') 

SELECT DATENAME(month, '2017/08/25') 

-- and the difference with DATEPART? 
-- Returns an integer that represents the specified start date value of the specified date.
-- DATEPARTURE ( datepart , date ) 

SELECT DATEPART(yy, '2017/08/25') 
SELECT DATEPART(hour, '2017/08/25 08:36')
SELECT DATEPART(minute, '2017/08/25 08:36') 
SELECT DATEPART(month, '2017/08/25') 

-- in fact the functions are more or less similar except for the MONTH part 
-- GETDATE () nilatic function to know the current date 

SELECT GETDATE()

-- Why 1 hour difference?  

SELECT GETUTCDATE()

-- it's UTC time (Universal Time Coordinate or Greenwich Mean Time GMT)

DECLARE @local_time DATETIME;
DECLARE @gmt_time DATETIME;
SET @local_time = GETDATE();
SET @gmt_time = GETUTCDATE();
SELECT 'Server local time: '
   + CONVERT(VARCHAR(40),@local_time);
SELECT 'Server GMT time: '
   + CONVERT(VARCHAR(40),@gmt_time);
GO
