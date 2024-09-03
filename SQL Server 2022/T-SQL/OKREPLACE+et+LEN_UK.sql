/*******************************************************************************
**********************    REPLACE  et LEN    ***********************************
********************************************************************************/
USE FORMATION
GO
-- Replaces all occurrences of a specified string value with another string value.

-- REPLACE ( string_expression , string_pattern , string_replacement )

-- A simple example :

SELECT REPLACE('The King of pop', 'pop', 'Soul');

-- and in our contact table? 

SELECT * FROM Contact 

-- Let's have fun replacing value 

SELECT firstname, REPLACE(firstname, 'Mickael', 'Wonder Woman') FROM Contact 


-- LEN Returns the number of characters of the specified string expression, excluding right spaces.
-- Warning LEN excludes right spaces. 

-- and in our contact table 

SELECT firstname, len(firstname) as length FROM Contact 