/*******************************************************************************
***************************  CAST et CONVERT   *************************
********************************************************************************/
--Small section on Conversions, conversions are operations 
-- which we see quite often in Transact SQL.
--You will see in several developments, that the CAST functions,
-- CONVERT, TRY_CONVERT and TRY_CAST, as well as TRY_PARSE and PARSE.

-- The CAST() function in SQL language is a transtyping function 
-- which converts data of one type into another type

USE FORMATION
GO

-- Select on our table

select date_of_birth from [dbo].[Contact]

-- Let's try a conversion on the date of birth column with a CAST in DATETIME2:

select cast (date_of_birth as datetime2) from [dbo].[Contact]

-- how about playing both requests at the same time with the DATETIME?

select cast (date_of_birth as datetime) from [dbo].[Contact]

-- Another example I will try to convert the name Merchant into INT 

select cast ([name] as int) from [dbo].[Contact]

-- Of course this is impossible, and can I convert the INT age to VARCHAR?

select cast (age as varchar(20)) from [dbo].[Contact]

-- Yes we can, because the numeric types are considered as a string of characters.

-- CONVERT  

---The SQL CONVERT() function, on SQL Server, 
--permits to convert data from one type to another, similarly to CAST(). 
---The function allows for example 
-to convert a FLOAT data type to INTEGER or a DATE to DATETIME.

SELECT CONVERT(int, 52.79); -- résultat : 52
SELECT CONVERT(varchar, 63.3); -- résultat : '63.3'

--Par contre la fonction CONVERT, beneficie d'un 3eme parametre important
-- C'est le style de format que vous souhaitez  

-- Jouons sur la colonne date de naissance

select date_of_birth from [dbo].[Contact] 

select CONVERT(varchar, date_of_birth, 103) from [dbo].[Contact]
-- résultat en British/French  dd/mm/yyyy

select CONVERT(varchar, date_of_birth, 104) from [dbo].[Contact]
-- résultat en allemand dd.mm.yyyy

select CONVERT(varchar, date_of_birth, 105) 
from [dbo].[Contact] -- résultat en italien  dd-mm-yyyy


-- super lien pour le tableau des conversions : 
https://www.w3schools.com/sql/func_sqlserver_convert.asp