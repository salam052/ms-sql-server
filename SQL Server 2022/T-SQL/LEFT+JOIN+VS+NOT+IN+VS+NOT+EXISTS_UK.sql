/*******************************************************************************
********************** LEFT JOIN VS NOT IN VS NOT EXISTS      ******************
********************************************************************************/
USE [FORMATION]
go

-- Question: Which customer is not linked to an IDcustomer in the orders table?

select B.IDcustomer,B.[name] ,B.firstname from customer B
left join orders A
on A.IDcustomer =B.IDcustomer
where A.IDcustomer is NULL

-- What is the result in NOT IN? 

select IDcustomer,[name] ,firstname from customer 
where IDcustomer not in 
( select IDcustomer from orders)




-- What is the result in NOT EXISTS ? 

select B.IDcustomer,B.[name] ,B.firstname from customer B
where not exists ( select * from orders A where B.IDcustomer=A.IDcustomer)

-- Just out of curiosity, let's see the execution plan
