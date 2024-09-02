/*******************************************************************************
**********************  DELETE and WHERE	   *********************************
********************************************************************************/
USE FORMATION
GO

-- What does the Select give?

select * from person

-- What if I just want to suppress the dagobert value?

delete from person where nickname = 'The king' 

-- What does the Select give?

select * from person

-- What if you don't put on the WHERE?

delete from person

-- There is nothing left ...hence the importance of the WHERE...

select * from person