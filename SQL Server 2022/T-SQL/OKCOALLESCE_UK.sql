/*******************************************************************************
**********************  COALESCE   *********************************************
********************************************************************************/
USE FORMATION
GO 
-- Evaluates the arguments in order and returns the current value 
-- of the first expression that does not initially take the NULL value.

-- A simple example 

SELECT COALESCE(NULL,1,2)

-- Return 1 because it is the first non-zero value in the list.
 
-- Example by creating a table 

create table number (Number1 int,number2 int, number3 int)

insert into number values 
(1,2,3),
(NULL,1,2),
(NULL,NULL,1)

--select ? 

select * from number

--And with coalesce

select coalesce (Number1,Number2,Number3) as Numero_de_telephone
from Number
