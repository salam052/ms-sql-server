/*******************************************************************************
**********************  IIF   ***********************************************
********************************************************************************/
USE FORMATION
GO
--- Evaluates a list of conditions and returns one of several possible result expressions.
-- IIF is a quick way to write a CASE expression
-- Syntax: IIF ( boolean_expression, true_value, false_value ) 

-- Let us take the case of the WHEN CASE: 

select  *, 
case 
when gender ='F' then 'Mrs' else 'Mr'
end
from Contact  order by gender


 -- Rewrite with IFF 

 
