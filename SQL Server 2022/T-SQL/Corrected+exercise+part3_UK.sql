/******************************************************************************
********************************  Exercice 34  ********************************
*******************************************************************************/

-- Select the employees from line 7 to 13 with their names in uppercase.

SELECT UPPER(NAME) FROM employee  order by [name]  OFFSET 7 ROWS FETCH NEXT 13 ROWS ONLY

select * from employee order by [name] 

/******************************************************************************
********************************  Exercice 35  ********************************
*******************************************************************************/

-- Find the men who are in the financial services and with an IIF get this result with Mister

select A.[name],A.firstname, B.job,iif (gender='M','Mister','Mrs') as gender from employee A
inner join salary_scale B on A.job=B.job
where B.job ='financial services' and A.gender ='M'

/******************************************************************************
********************************  Exercice 36  ********************************
*******************************************************************************/

--Find the people who are only after the month of May by obtaining this result

 select *, choose (datepart(month,date_of_birth) 
 ,'January','February','March','April','May','June','July','August',
 'September','October','November','december') as after_May  FROM contact
 where datepart(month,date_of_birth) > '05'

/******************************************************************************
********************************  Exercice 37  ********************************
*******************************************************************************/

-- Find a way to write this query with a result format in Italian.

 select top (1) date_of_birth as Date,
format (date_of_birth,'D','it-IT' ) as Italian FROM Contact

/******************************************************************************
********************************  Exercice 38  ********************************
*******************************************************************************/

 -- Replace in the employee table Mickael Jackson by Harry Potter

SELECT REPLACE(firstname, 'Mickael', 'Harry') ,replace ([name], 'Jackson', 'Potter') 
FROM employee

/******************************************************************************
********************************  Exercice 39  ********************************
*******************************************************************************/

--With a SELECT find me the initials of Brad Pitt and Clint Eastwood.

select firstname ,[name], substring (firstname,1,1) + substring ([name],1,1)as initial from employee
where firstname in ('Brad','Clint')


/******************************************************************************
********************************  Exercice 40  ********************************
*******************************************************************************/

--Find me names that are longer than 6 characters.

select [name] from employee where len(name) > 7

/******************************************************************************
********************************  Exercice 41   ********************************
*******************************************************************************/

-- Can you please correct me on this request?

select len(name),A.[name],A.firstname, B.job,B.salary,C.[types],
substring (firstname,1,2)
from employee A
inner join salary_scale B on A.job = B.job
inner join job_status C on C.IDclient=A.IDclient
where C.[types]='Full-Time contracts' and salary ='between 2000$ and 3000$'

-- Correction 

select len(name),A.[name],A.firstname, B.job,B.salary,C.[types],
substring (firstname,1,2)
from employee A
inner join salary_scale B on A.job = B.job
inner join job_status C on C.IDclient=A.IDclient
where C.[types]='Full-Time contracts' and salary ='between 2000$ and 3000$'