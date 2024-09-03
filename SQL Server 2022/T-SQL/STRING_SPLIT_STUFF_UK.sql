/*******************************************************************************
***************************  STRING_SPLIT/STUFF  *******************************
********************************************************************************/
-- STRING_SPLIT

-- STRING_SPLIT, first, will split the character expression using a specified separator.

use FORMATION
go
SELECT * from STRING_SPLIT ('1,2,3,4,5', ',') 

-- STUFF
-- The STUFF function allows you to insert a channel into another channel
-- STUFF (character_expression, start, length, replaceWith_expression) 

SELECT STUFF('abcdef', 2, 3, 'ijklmn');  
GO  