/******************************************************************************
********************************  Exercice 17  ********************************
*******************************************************************************/
USE FORMATION
GO
--Count the number of rows concerning Bruce Willis.

select count(*)as Total  from contact
where  firstname ='Bruce'

-- To check
  
select * from contact where firstname ='Bruce'

/******************************************************************************
********************************  Exercise 18  ********************************
*******************************************************************************/
-- Add up the number of women who were born in 1983.

select sum(1) from contact 
where year (date_of_birth) =1983

/******************************************************************************
********************************  Exercise 19  ********************************
*******************************************************************************/

-- 3/ Count the number of women between the ages of 20 and 45 whose number is greater 
-- than 1 by ranking the age in descending order

select count(*) gender,age from contact 
where age between 20 and 45 
group by gender,age
having count(*) >1 
order by age desc

/******************************************************************************
********************************  Exercise 20  ********************************
*******************************************************************************/

-- Count the separate rows in the gender column. 

select count(distinct gender) from contact

/******************************************************************************
********************************  Exercise 21  ********************************
*******************************************************************************/

-- Insert two lines in the contact table and print the results: 

insert into contact values ('Marlon','Brando',43,'M','1974-06-02')

print 'insertion of Marlon Brando OK'

-- Insertion of the other line to follow the insertions

insert into contact values ('Streep','Meryl',26,'F','1988-02-01')

print 'insertion of Streep Meryl OK'

delete from contact where firstname ='Meryl'

/******************************************************************************
********************************  Exercise 22  ********************************
*******************************************************************************/

-- Select people who are not between 20 and 27 years old. 

select * from contact where age not between 20 and 27 

/******************************************************************************
********************************  Exercise 23  ********************************
*******************************************************************************/

-- Count the people who have the letter B in their first names, 
-- who are between 18 and 40 years old, male and whose total is greater than 1

select count(*),age,gender,firstname from contact 
where firstname like '%B%' and age between 16 and 40 and gender ='M'
group by age,gender,firstname
having count (*) > 1

/******************************************************************************
********************************  Exercise 24  ********************************
*******************************************************************************/
-- Write me the request to get this result

select [name] from contact where [name] ='Grace' or [name] ='Pitt'

/******************************************************************************
********************************  Exercise 25  ********************************
*******************************************************************************/

-- Correct me this request

select count(*) as total,age,firstname from contact 
where age between 16 and 40 and  gender ='F' 
group by age,gender,firstname
