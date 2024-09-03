/*******************************************************************************
**********************     CASE WHEN     ***************************************
********************************************************************************/
USE FORMATION
GO
-- The CASE WHEN allows to evaluate a condition and returns a result expression 
-- among several possibilities

select * from Contact

-- In the example we will say that in the sex column the F's are Ms 
-- and that the Hs are Mr

select *,
case when gender ='F' then 'Mrs'
when gender ='M' then 'Mr'
end
from contact

--There is also the syntax of the ELSE. If my result is not good,
-- I can give him another result that I will affiliate

select  *,
case 
when age between 16 and 20  then 'We are still young' ELSE 'We are not so young anymore :('
end
from Contact 






