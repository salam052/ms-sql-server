/*******************************************************************************
********************** UPDATE with the JOIN    *********************************
********************************************************************************/
USE FORMATION
go
-- Let's create two simple tables: 

CREATE TABLE table1 (Column1 INT,Column2 VARCHAR(100))

INSERT INTO Table1 (Column1,Column2) 
values (1,'First'),
(2,'Second'),
(3,'third'),
(4,'fourth')


CREATE TABLE Table2 (Column1 INT,Column2 VARCHAR(100))

INSERT INTO Table2 (Column1,Column2) 
values (1,'First'),
(2,'Second'),
(3,'fifth'),
(4,'Sixth')

-- For our tests we will make an UPDATE of the Table2 with the right values. 
-- that is to say, to put third and fourth

-- What does the simple give? 

select * from Table1
go
select * from Table2

--- UPDATE

update table2
set column2 = T1.column2
from table1 T1
inner join Table2 T2 on T1.Column1 =T2.column1
where T2.column1 in (3,4)
