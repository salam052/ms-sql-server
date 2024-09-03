/*******************************************************************************
********************   Restrictions on the CTE     *****************************
********************************************************************************/

USE [FORMATION];
GO

-- Does it work  ?
WITH CTE
([name],firstname, job,gender)
AS
(
select A.[name],A.firstname, B.job,A.gender from employee A inner join salary_scale B on A.job=B.job
order by A.[name]
)
select [name],firstname, job,gender from CTE where job ='Recruiter' and gender ='F'

-- The ORDER BY clause is invalid in views.
-- To bypass the ORDER BY, the request must have a TOP

WITH CTE
([name],firstname, job,gender)
AS
(
select top (100) A.[name],A.firstname, B.job,A.gender from employee A inner join salary_scale B on A.job=B.job
order by A.[name]
)
select [name],firstname, job,gender from CTE where job ='Recruiter' and gender ='F'

-- Even better

WITH CTE
([name],firstname, job,gender)
AS
(
select A.[name],A.firstname, B.job,A.gender from employee A inner join salary_scale B on A.job=B.job
)
select [name],firstname, job,gender from CTE where job ='Recruiter' and gender ='F' order by [name]

-- SELECT INTO 

WITH CTE
([name],firstname, job,gender)
AS
(
select A.[name],A.firstname, B.job,A.gender into new_table  from employee A inner join salary_scale B on A.job=B.job
)
select [name],firstname, job,gender from CTE where job ='Recruiter' and gender ='F' order by [name]


-- let's try like this?

WITH CTE
([name],firstname, job,gender)
AS
(
select A.[name],A.firstname, B.job,A.gender from employee A inner join salary_scale B on A.job=B.job
)
select [name],firstname, job,gender into new_table from CTE where job ='Recruiter' and gender ='F' order by [name]

select * from new_table