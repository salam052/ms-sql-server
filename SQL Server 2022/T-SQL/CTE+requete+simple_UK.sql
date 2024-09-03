/*******************************************************************************
**********************          CTE     ****************************************
********************************************************************************/

-- CTE (Common Table Expression) first appeared in SQL Server 2005, and
-- the great advantage of CTEs is that it makes an SQL query more readable, 
-- especially with correlated subqueries.

-- At the level of pure performance, the use of CTEs is completely transparent. 

USE FORMATION
go

-- Find women who are recruiters with the INNER JOIN 

select A.[name],A.firstname, B.job,A.gender from employee A
inner join salary_scale B on A.job=B.job
where B.job ='Recruiter' and A.gender ='F'



-- so we will first see the derived tables
-- derived table = subquery in the FROM clause.

select [name],firstname, B.job,gender
from 
(select [name],firstname, job,gender from employee ) A --derived table
inner join salary_scale B on A.job=B.job
where B.job ='Recruiter' and A.gender ='F'


-- and the CTE  ? 

WITH CTE
([name],firstname, job,gender)
AS
(
select A.[name],A.firstname, B.job,A.gender from employee A inner join salary_scale B on A.job=B.job
)
select [name],firstname, job,gender from CTE where job ='Recruiter' and gender ='F'