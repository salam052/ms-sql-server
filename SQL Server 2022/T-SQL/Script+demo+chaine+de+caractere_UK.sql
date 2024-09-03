/*******************************************************************************
********************** DEMO VARCHAR and CHAR     *******************************
********************************************************************************/
USE [FORMATION]
go
		
-- Characters can be inserted in columns of type :
-- CHAR and VARCHAR and TEXT (which will disappear in future SQL versions).
-- CHAR has a fixed length, VARCHAR has a variable length.
-- If a column is declared as CHAR(10), the column will not be longer than 10 characters.

-- If the size of the Text varies a lot, or if the length of the data can be large, 
-- the VARCHAR should be used.
-- The maximum size of (VAR)CHAR is 8000 characters.
--For example: : 
-- We will opt more on CHAR (1) to give the Sex of a person (M or F).

-- creation of a table with one column in VARCHAR and one in CHAR

create table Type_column (column_1 varchar (2000),column_2 char (1))
go

-- If I insert any value what happens? 

INSERT INTO Type_column values ('VARCHAR','CHAR')

-- The insertion does not work because the CHAR value has 4 characters and has been created. 
-- one column with a maximum of one character.

-- and if I try it? 

INSERT INTO Type_column values ('VARCHAR','C8')

--  SELECT ?

select * from Type_column

-- It works

-- Can be inserted in a CHAR or VARCHAR column.

insert into Type_column values (1,2)

--  SELECT ?

select * from Type_column

-- it works

-- It is possible to create a column with 8001 characters:

CREATE TABLE Test_CHAR (CHAR_TEST CHAR (8001))

-- and 8000 ?

CREATE TABLE Test_CHAR2 (CHAR_TEST NCHAR (8000))

--  DIFFERENCE between VARCHAR and NVARCHAR     

--------------------------- chinese ? 
-- 奥利维耶 = olivier (Aò lì wéi yē)

-- From time to time you will see the N character in front of CHAR and VARCHAR, 
-- giving columns in NCHAR and NVARCHAR.
-- These types of columns are used in an International Database context.
-- with the N we switch to (international) Unicode, and without the N we switch to ANSI standard.

select '奥利维耶'
select N'奥利维耶'

GO
