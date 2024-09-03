/*******************************************************************************
********   Correction of exercise 26 to 33 for the joins.     ******************
********************************************************************************/
USE FORMATION
go

/*******************************************************************************
*********************   Exercise 26            *********************************
********************************************************************************/
USE FORMATION

--Find the job of each employee in the company.

select A.[name],A.firstname, B.job from employee A
inner join salary_scale B on A.job=B.job



/*******************************************************************************
*********************   Exercise 27            *********************************
********************************************************************************/
--Find the job of each employee in the company but using a CROSS APPLY ?


select A.[name],A.firstname, C.job from employee A
cross apply 
( select * from salary_scale B where A.job=B.job) C 


/*******************************************************************************
*********************   Exercise 28            *********************************
********************************************************************************/

-- Find women who are recruiters?

select A.[name],A.firstname, B.job from employee A
inner join salary_scale B on A.job=B.job
where B.job ='Recruiter' and A.gender ='F'


/*******************************************************************************
*********************   Exercise 29            *********************************
********************************************************************************/

-- Find people working with a permanent contract with a salary between 2,000 and 3,000 dollars.

select A.[name],A.firstname, B.job,B.salary,C.[types] from employee A
inner join salary_scale B on A.job=B.job
inner join job_status C on C.IDclient=A.IDclient
where C.[types]='Full-Time contracts' and B.salary ='between 2000$ and 3000$'


/*******************************************************************************
*********************   Exercise 30            *********************************
********************************************************************************/
-- How to get the two people who do not have a contract yet, with the joins

select A.[name],A.firstname,
case when C.[types] is null then 'No contract' end as 'No contract' 
from employee A
left join Job_status C on C.IDclient=A.IDclient
where C.IDclient is null

/*******************************************************************************
*********************   Exercise 31            *********************************
********************************************************************************/

-- How to get all the people who have a contract with joins. This is the third column. 

select A.[name],A.firstname,
case when C.[types] is not null then 'He/She has a contract' end as 'He/She has a contract' 
from employee A
right join Job_status C on C.IDclient=A.IDclient
where C.IDclient is not null


/*******************************************************************************
*********************   Exercise 32            *********************************
********************************************************************************/
-- Find, in the same query, those who have a contract and those who do not

select A.[name],A.firstname,
case when C.[types] is not null then 'He/she has a contract' else 'No contrat' end as 'Contract' 
from employee A
full join Job_status C on C.IDclient=A.IDclient

/*******************************************************************************
*********************   Exercise 33            *********************************
********************************************************************************/

-- Can you correct me this request ?

select top (5) A.[name],A.firstname,C.[types]
from employee A
right join Job_status C on C.IDclient = A.IDclient
where C.IDclient  is  not null

