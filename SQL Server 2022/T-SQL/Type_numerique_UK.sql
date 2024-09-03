/*******************************************************************************
**********************  INT, BIGINT, SMALLINT,TYNINT     ***********************
********************************************************************************/

-- There are four types of columns for the numeric type: INT, BIGINT, TINYINT and SMALLINT
-- The TINYINT accepts a row from 0 to 255 bytes
-- The SMALLINT which goes from -32768 to 32767
-- The INT that goes from -2,147,483,648 to 2,147,483,648
-- BIGINT that goes from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,808.

USE FORMATION
GO
-- create a table with these four types of columns in numerical form

create table Table_numeric (column_TINYINT TINYINT ,column_SMALLINT SMALLINT, column_INT  INT, column_BIGINT BIGINT)
go

-- The value 256 can be inserted in the TYNINT for recall the maximum value is 255.

INSERT INTO Table_numeric values (256,1200,348,25100)

--- SELECT ? 

select * from Table_numeric

-- What if we try 255? 

INSERT INTO Table_numeric values (255,1200,348,25100)

-- It works
-- SELECT ? 

select * from Table_numeric

-- can we insert a letter in a column in INT? 

INSERT INTO Table_numeric values ('A',1200,348,25100)

-- Remember that you have to put quotes for the strings of characters key 4 of the keyboard.
-- Can negative values be inserted in the TINYINT? for reminder it goes from 0 to 255 

INSERT INTO Table_numeric values (-1,1200,348,25100)

-- Can negative values be inserted in the SMALLINT? for recall ca. -32 768 to 32 767)

INSERT INTO Table_numeric values (0,-5,348,25100)

-- SELECT ? 

select * from Table_numeric

-- Can I put commas in the columns let's try with 0,1? 

INSERT INTO Table_numeric values ('0,1',-5,348,25100)

-- it is necessary to create a column in DECIMAL type which accepts commas.