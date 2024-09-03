/******************************************************************************
********************************   AND et OR **********************************
*******************************************************************************/
USE FORMATION
GO
--What does the SELECT give me? 

select  * from contact

--I want to select men who are under 41 years old

select  * from contact where gender='M' and age < 41

-- I want people born in August who are over 16 years of age.

select * from contact where month(date_of_birth) =08 and age > 16 

--The AND Clause requires both conditions to be met in order to return the application.
-- as I explained in the demo.

--- Let's take the same query and put an age which is not good like 101 

select * from contact where month(date_of_birth) =08 and age =101

-- it returns nothing because one of the conditions has not been fulfilled, yet
-- there are many people who were born in the month of August.

select * from contact where month(date_of_birth)=08

-- The OR requires that a condition be fulfilled
 
-- If the same request is played but replacing it with the OR

select * from contact where month(date_of_birth) =08 or age =101

-- I only get out people who were born in August Bingo!!!!

-- What if I take people who were born in August or who are 16 years old?

select * from contact where month(date_of_birth) =08 or age > 16

--it's interesting because the request returns: 

-- People who were born in August and also anyone over 16 years old.
-- In fact the two conditions have been met and he has cumulated the two results together
-- because he also took those who were not born in August ...

-- If I want the name Eastwood and Monroe in the same request? 

select * from contact where [name] ='Monroe' and [name] ='Eastwood'


-- it doesn't work, because the AND cannot be applied on the same column 
-- we will then leave on the OR 

select * from contact where [name] ='Monroe' or [name] ='Eastwood'

--We're good
