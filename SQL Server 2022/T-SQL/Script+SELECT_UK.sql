/*******************************************************************************
********************** DEMO SELECT and WHERE    ********************************
********************************************************************************/
USE FORMATION 
go

--- the simple SELECT 

select * from person

--- What if I want to select just one column?

select nickname from person

--- What if I want to select both columns by name?

select nickname,firstName from person 

-- what if I reverse the names of the columns? 

select firstName,nickname from person

-- What if I remove the FROM? 

select firstName,nickname person


/*******************************************************************************
*****************************  WHERE ?     ************************************
********************************************************************************/

-- I want to search for the name Peter how do I do?

select * from person where nickname ='The king'

-- Is the column in the WHERE mandatory?

select * from person person ='The king'