/*******************************************************************************
********************** CTE and the semicolon  *******************************  
********************************************************************************/

-- What if I want to embark on my quest for these two requests? 

-- Without a semicolon?

SELECT  @@SERVERNAME

;

with CTE 
as 
(select [name],firstname,A.job,gender from employee A
inner join salary_scale B on A.job=B.job)

select [name],firstname,job,gender from CTE where job ='Recruiter' and gender ='F'

-- This is one of the prerequisites of the ETC any other upstream request must end with a semicolon.

