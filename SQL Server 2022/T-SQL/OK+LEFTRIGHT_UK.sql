/*******************************************************************************
********************** LEFT et RIGHT     **************************************
********************************************************************************/
USE FORMATION
GO

-- In the SQL language the RIGHT and LEFT function allows to extract 
-- the end of a character string by defining the desired length.

select * from Contact

select left([name],2),right (firstname,5) from contact

-- You can even concatenate the fields

select left([name],2)+ right (firstname,5) from contact 