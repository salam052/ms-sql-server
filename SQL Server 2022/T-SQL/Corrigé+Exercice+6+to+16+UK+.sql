/******************************************************************************
********************************   Exercise 6      ***************************
*******************************************************************************/
USE [FORMATION]
GO

--  Remove duplicates in the age column.

select distinct age from contact

-- select without distinct ? 

select age from contact

/******************************************************************************
********************************   Exercise 7      ***************************
*******************************************************************************/

-- Select the dates of birth starting with 1976 by renaming the date_de_naissance 
-- column with Year_1976.

select date_of_birth as  Year_1976 from contact where  date_of_birth like '1976%'

/******************************************************************************
********************************   Exercise 8      ***************************
*******************************************************************************/

-- Select the people who were born on January 1st

select * from contact where date_of_birth like '%02-01%'

/******************************************************************************
********************************   Exercise 9      ***************************
*******************************************************************************/

-- Select the first names that end with the letter E

select firstname from contact where firstname like '%E'

/******************************************************************************
********************************   Exercise 10      ***************************
*******************************************************************************/

-- A query that just takes out women in two different ways

select * from contact where gender not in ('M')
-- or 
select * from contact where gender <> ('M')

/******************************************************************************
********************************   Exercise 11      ***************************
*******************************************************************************/

-- Select in the query the people who are 17 years old and under. 

select * from contact where age < 17

/******************************************************************************
********************************   Exercise 12      ***************************
*******************************************************************************/

-- Select the people who are not 17 and 48 years old. 

select * from contact where age  in (17,48)

/******************************************************************************
********************************   Exercise 13      ***************************
*******************************************************************************/

-- Take just the first seven rows of the table.

select top 5 * from contact

/******************************************************************************
********************************   Exercise 14      ***************************
*******************************************************************************/

-- Copy just the line from Leonardo Dicaprio to another table called Contact_Leonardo

select * into contact_leonardo from contact where firstname ='leonardo'

select * from Contact_Leonardo

/******************************************************************************
********************************   Exercise 15      ***************************
*******************************************************************************/

--Select just the people who were not born in 1976

select * from contact where year (date_of_birth) <> 1976

/******************************************************************************
********************************   Exercise 16      ***************************
*******************************************************************************/

--Select just the persons who were not born in August

select * from contact where month (date_of_birth  ) <> 08 

-- or

select * from contact where month (date_of_birth  ) != 08 