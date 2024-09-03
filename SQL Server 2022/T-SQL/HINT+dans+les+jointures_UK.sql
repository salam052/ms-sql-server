/*******************************************************************************
*************************** Les Hints dans les jointures     *******************
********************************************************************************/
USE FORMATION
go

-- A hint in SQL is an indicator 
-- A JOIN is the mechanism we use to combine the data set from two or more tables.
-- HASH JOIN :
-- Powerful operator that can be used for large volumes of data.
-- Technically it takes a set of input lines, hashes the keys and uses these 
-- hash values as the basis for the join.

-- 1st phase: construction phase, internally SQL Server will hash the join columns. 
--to create a hash table (memory structure). 

-- in the 2nd phase: The Probe or SQL Server phase scrolls through each line hashes the join column, 
--then analyses the hash table (1st phase) to look for a match. 

--let's start on a simple join and look at the execution plan

Select A.IDcustomer from orders A
inner join customer B 
on A.IDcustomer=B.IDcustomer

-- let's add the HASH in the joint and look at the execution plan

Select A.IDcustomer from orders A
inner hash join customer B 
on A.IDcustomer=B.IDcustomer

-- We can see that it's the same execution plan.

-- MERGE JOIN :

-- Merge join can only be used when both sets of lines are pre-sorted according to join expressions.
-- Also generally used on large volumes.

-- let's add the MERGE in the joint and look at the execution plan

Select A.IDcustomer from orders A
inner merge join customer B 
on A.IDcustomer=B.IDcustomer

-- what if we compare it with a HASH? 

Select A.IDcustomer from orders A
inner hash join customer B 
on A.IDcustomer=B.IDcustomer

-- We can see that the MERGE has changed in the implementation plan.

-- NESTED LOOP :
-- a nested loop join is the simplest physical implementation of joining two tables
-- It is generally used on the joints of small tables.
-- let's add the LOOP in the joint and look at the execution plan

Select A.IDcustomer from orders A
inner loop join customer B 
on A.IDcustomer=B.IDcustomer

-- What if we compare it with a HASH and a MERGE? 

Select A.IDcustomer from orders A
inner hash join customer B 
on A.IDcustomer=B.IDcustomer

Select A.IDcustomer from orders A
inner merge join customer B 
on A.IDcustomer=B.IDcustomer

-- let's add the remote in the join and look at the execution plan

Select A.IDcustomer from orders A
inner remote join customer B 
on A.IDcustomer=B.IDcustomer

-- remote can only be used in an INNER JOIN 

Select A.IDcustomer from orders A
left remote join customer B 
on A.IDcustomer=B.IDcustomer

-- It can also be written in this way 

Select A.IDcustomer from orders A
inner join customer B 
on A.IDcustomer=B.IDcustomer
option (hash join)

-- Or

Select A.IDcustomer from orders A
inner join customer B 
on A.IDcustomer=B.IDcustomer
option (merge join)

-- or 

Select A.IDcustomer from orders A
inner join customer B 
on A.IDcustomer=B.IDcustomer
option (loop join)
