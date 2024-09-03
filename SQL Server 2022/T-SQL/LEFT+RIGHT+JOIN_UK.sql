/*******************************************************************************
********************** LEFT/RIGHT JOIN       ****************************************
********************************************************************************/
USE [FORMATION]
go

--SELECT ?

-- Question: Which customer is not attached to an IDcustomer in the order table? 

select B.IDcustomer, B.[name],B.firstname from customer B
left join orders A
on A.IDcustomer =B.IDcustomer

-- It doesn't work and why not with the IS NULL filter to bring back 
-- only the values that correspond only to the table on the left? 

select B.IDcustomer, B.[name],B.firstname from customer B
left join orders A
on A.IDcustomer =B.IDcustomer
where A.IDcustomer is NULL

-- it works
-- We sometimes see the OUTER value which is optional.

select B.IDcustomer, B.[name],B.firstname from customer B
left outer join orders A
on A.IDcustomer =B.IDcustomer
where A.IDcustomer is NULL


-- The same operation can be repeated with the RIGHT JOIN by inverting the tables.

select B.IDcustomer, B.[name],B.firstname from orders A
right join customer B  
on A.IDcustomer =B.IDcustomer
where A.IDcustomer is NULL

-- We sometimes see the OUTER value which is optional.
select B.IDcustomer, B.[name],B.firstname from orders A
right outer join customer B 
on A.IDcustomer =B.IDcustomer
where A.IDcustomer is NULL

