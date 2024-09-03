/*******************************************************************************
********************** TRIM LTRIM RTRIM     ************************************
********************************************************************************/
USE FORMATION
GO

-- TRIM Deletes the specified character at the beginning or end of a string.
-- TRIM only appeared in SQL Server 2017 and later :)

--Let's create a Test_TRIM Table

create table Test_TRIM (value_LTRIM varchar (100), value_RTRIM varchar (100), value_TRIM varchar (100))

Insert into Test_TRIM values
('    4 characters to my left','2 characters to my right  ','  2 spaces to my right and to my left  ')

-- SELECT :

select LTRIM(value_LTRIM),RTRIM(value_RTRIM),TRIM(value_TRIM) from Test_TRIM

/*******************************************************************************
********************** UPPER LOWER      ***************************************
********************************************************************************/

-- allows you to transform a text into lowercase and UPPERCASE :

-- Let's put the name column in UPPERCASE : 

select upper (firstname) from contact

-- and lower case 

select lower (firstname) from contact

