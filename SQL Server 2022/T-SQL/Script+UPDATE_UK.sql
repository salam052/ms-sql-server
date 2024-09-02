/*******************************************************************************
**********************  DEMO  UPDATE and WHERE	   *****************************
********************************************************************************/
-- Let's look at the data 

select * from person

-- Change the king value by Elvis

update person set firstname='Elvis' where nickname ='the king'

-- Select  ?

select * from person

-- Let's see the data we want to update without the WHERE
-- I want to put the name candy in the Name column

update person set firstname='candy'


-- Select  ?

select * from person

-- I've updated all the data in the column ...





