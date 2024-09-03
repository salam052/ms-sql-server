/*******************************************************************************
************** CTE with the view and stored procedure ***************************
********************************************************************************/
USE [FORMATION];
GO
-- Despite the restrictions at the view level and that there
-- may also be on the CTE, we can see that we can create a CTE in a view.

CREATE VIEW [dbo].[View_CTE]
AS
WITH CTE
([name],firstname, job,gender)
AS
(
select A.[name],A.firstname, B.job,A.gender from employee A inner join salary_scale B on A.job=B.job
)
select [name],firstname, job,gender from CTE where job ='Recruiter' and gender ='F'

 -- And the SELECT ? : 

select * from View_CTE

-- PS :

create procedure[dbo].[Ps_CTE]
AS
with CTE 
AS
(
select A.[name],A.firstname, B.job,A.gender from employee A inner join salary_scale B on A.job=B.job
)
select [name],firstname, job,gender from CTE where job ='Recruiter' and gender ='F'

 -- Exec PS : 

EXECUTE [dbo].[Ps_CTE];
GO

