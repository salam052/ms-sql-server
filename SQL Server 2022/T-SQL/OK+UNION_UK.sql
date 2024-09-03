/*******************************************************************************
**********************  UNION et UNION ALL   ***********************************
********************************************************************************/
USE FORMATION
GO
--- This allows the results of 2 or more queries to be concatenated.
-- On the other hand, each of the requests to be concatenated must return the same number of columns.

-- example of two tables, we will create another contact table

create table client_1 ([name] varchar(20), [firstname] varchar(20), age int)

insert into client_1 values 
('Wonder','Woman','30'),
('Captain','America','25')

create table client_2 ([name] varchar(20), [firstname] varchar(20), age int)

insert into client_2 values 
('Wonder','Woman','30'),-- in duplicate
('Dark','Vador','24') 


-- SELECT ? 

select * from client_1
go 
select * from client_2

-- UNION ?  

select * from client_1
UNION 
select * from client_2

-- Concatenation of the two applications by removing Wonder Woman

-- conversely UNION ALL takes the duplicates

select * from client_1
UNION ALL
select * from client_2

