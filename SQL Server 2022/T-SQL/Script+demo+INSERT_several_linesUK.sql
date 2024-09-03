/*******************************************************************************
****** How to insert several identical values at once ?    *********************
********************************************************************************/
use Formation
GO
-- I recreate my table ma_table on which we are going to play

create table Simple_table (ID int)

-- If I want to insert this same value several times, ten times, for example, 

insert into Simple_table values (1)
insert into Simple_table values (1)
insert into Simple_table values (1)
insert into Simple_table values (1)
insert into Simple_table values (1)
insert into Simple_table values (1)
insert into Simple_table values (1)
insert into Simple_table values (1)
insert into Simple_table values (1)
insert into Simple_table values (1)

select * from Simple_table

select count (*) from simple_table

-- I have 10 lines but I can also try this way

insert into Simple_table values (1)

go 10

