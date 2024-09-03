/*******************************************************************************
********************** INNER JOIN       ****************************************
********************************************************************************/
USE [FORMATION]
go
-- create two tables

create table orders (Numerodeorders int,IDcustomer int)
go
create table customer (name varchar (200),firstname varchar (200), IDcustomer int, adress varchar(2000),city varchar(200))

-- Insert rows : 

insert into orders values 
('3712',1),
('4851',2),
('6712',3),
('3215',4),
('3218',5),
('3220',6),
('3221',7),
('3227',8),
('3238',9)

insert into customer values 
('Bill','Gates',1,'7 street Bill','Chicago'),
('Sinatra','Franck',3,'78 street Sinatra','Paris'),
('Jordan','Mickael',5,'15 street Jordan','Asterdam'),
('Einstein','Albert',12,'7 street Einstein','Prague'),
('Noris','Chuck',13,'7 street Noris','Vienne')

-- Select : 

select * from orders
go
select * from customer

--  first question I want the customers who have an order number


--I also want the name and firstname in my query.

select A.numerodeorders, A.IDcustomer,B.[name],b.firstname from orders A
inner join customer B 
on A.IDcustomer =B.IDcustomer
 
-- the INNER Join is completely optional ...

select A.numerodeorders, A.IDcustomer,B.[name],b.firstname from orders A
join customer B 
on A.IDcustomer =B.IDcustomer

-- there is no effect on the order of the joins in the join itself

select A.numerodeorders, A.IDcustomer,B.[name],b.firstname from orders A
join customer B 
on A.IDcustomer =B.IDcustomer
go
select A.numerodeorders, A.IDcustomer,B.[name],b.firstname from orders A 
join customer B
on B.IDcustomer =A.IDcustomer -- We change the joining order of the two columns



