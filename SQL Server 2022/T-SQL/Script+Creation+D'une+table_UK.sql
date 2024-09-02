/*******************************************************************************
********************** DEMO  CREATE TABLE     **********************************
********************************************************************************/
Use [FORMATION]  

-- Use of my database - the square brackets are optional

--- To put comments on SQL you have to put two dashes 

-- If I want to use the BDD Master?

use [master]
go

-- We go back to the current database 
Use [FORMATION]  


-- Creation of a simple table with one column

create table my_table (names varchar(200))


-- Creation of a simple table with two columns

create table my_table2 (names varchar(200),firstname varchar(200))

-- What if I take out the comma?

create table ma_table3 (names varchar(200) firstname varchar(200))



