/*******************************************************************************
***************************  INTERSECT et EXECPT   *****************************
********************************************************************************/
use FORMATION

--  INNER JOIN 

Select A.IDcustomer from orders A
inner join customer B 
on A.IDcustomer=B.IDcustomer

-- INTERSECT


------- EXCEPT VS LEFT JOIN VS NOT IN

-- LEFT JOIN
select B.IDcustomer,B.[name] ,B.firstname from customer B
left join orders A
on A.IDcustomer =B.IDcustomer
where A.IDcustomer is NULL

--  NOT IN ? 

select IDcustomer,[name] ,firstname from customer 
where IDcustomer not in 
( select IDcustomer from orders)

-- EXECPT : 