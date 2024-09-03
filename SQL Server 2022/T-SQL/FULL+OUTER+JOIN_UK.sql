/*******************************************************************************
********************** FULL OUTER JOIN       ***********************************
********************************************************************************/
USE [FORMATION]
go

-- Now it's time for the FULL OUTER JOIN with both SELECT at the same time.

select A.IDcustomer from orders A
full outer join customer B  
on A.IDcustomer =B.IDcustomer

select * from orders
go
select * from customer

-- We can see that all the lines of the order table are brought back from 1 to 9. 
-- We see the 2 NULL at the bottom because 12 and 13 is not referenced 
-- in the client table (value 12 and 13)

-- To better understand, let's change the order of the join, playing with the two SELECT

select B.IDcustomer from orders A
full outer join customer B  
on A.IDcustomer =B.IDcustomer

select * from orders
go
select * from customer

-- You can see that there are all the rows of the client table (1,3,5,12,13)
-- We see the 5 NULL corresponding to the order table (2,4,6,8,9).

-- and if we add the ISNULL for the filter

select * from orders
go
select * from customer

select B.IDcustomer, B.[name],B.firstname from orders A
full outer join customer B  
on A.IDcustomer =B.IDcustomer
where A.IDcustomer is null

-- Is the OUTER optional? 

select B.IDcustomer, B.[name],B.firstname from orders A
full join customer B  
on A.IDcustomer =B.IDcustomer
where A.IDcustomer is null