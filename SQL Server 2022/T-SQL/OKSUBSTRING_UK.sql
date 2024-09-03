/*******************************************************************************
**********************    SUBSTRING      ****************************************
********************************************************************************/
USE FORMATION
GO

-- allows to extract a string from the specified length
-- example substring(firstname,2,4)
-- will take the first two characters and stop at the 4th character afterwards

select * from contact

-- if we just use first names as initials. 

select substring (firstname,1,1) as initial, firstname from contact

-- What if you want the first two letters of the name and the next three? 

select substring (firstname,2,7) as initial, firstname from contact