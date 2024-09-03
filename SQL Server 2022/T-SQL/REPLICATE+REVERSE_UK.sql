/*******************************************************************************
********************** REPLICATE/REVERSE/CHARINDEX     *************************
********************************************************************************/
-- REPLICATE: Repeats a string value a specified number of times.
-- REPLICATE (string_expression, integer_expression)

USE FORMATION
GO
SELECT [Name]
, REPLICATE('BRAD', 4) + [firstname] AS 'REPLICATE'  
FROM contact
WHERE [Name] = 'PITT'  
GO 

-- REVERSE: Returns the reverse order of a string value.

SELECT FirstName, REVERSE(FirstName) AS [Reverse]  
FROM contact
ORDER BY FirstName;  
GO  

-- CHARINDEX: This function searches for a character expression
-- inside a second character expression,
-- returning the starting position of the first expression if it is found.

DECLARE @document varchar(64);  
SELECT @document = 'Where is DarkVador ?' 
SELECT CHARINDEX('DarkVador', @document);  
GO  
