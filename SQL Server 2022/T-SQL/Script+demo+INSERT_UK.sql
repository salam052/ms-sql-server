/*******************************************************************************
********************** DEMO  INSERT    *****************************************
********************************************************************************/
use Formation
GO
set language english
-- I recreate my table ma_table on which we are going to play

create table Person (Nickname varchar(200),firstName varchar (200))

--- Insertion of a simple value in the table

insert into Person values ('Peter','pan')


-- what if I want to insert two lines? 

insert into Person values 
('The king','lion'),
('Le King','lion2')


-- is the value mandatory?

insert into Person
('The king','lion'),
('The king','lion2')


-- is into mandatory?

insert  Person values
('The king','lion'),
('The king','lion2')

