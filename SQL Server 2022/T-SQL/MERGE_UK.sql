/*******************************************************************************
*************************   MERGE     ******************************************
********************************************************************************/
-- MERGE allows you to extract rows from a source table to make an UPDATE
-- DELETE or INSERT in a target table 
-- this avoids writing multiple modifications in several instructions

Use FORMATION
go

-- Creation of two simple tables

IF OBJECT_ID ('BookOrder', 'U') IS NOT NULL
DROP TABLE dbo.BookInventory;

CREATE TABLE dbo.BookInventory  -- target
(
  TitleID INT NOT NULL PRIMARY KEY,
  Title NVARCHAR(100) NOT NULL,
  Quantity INT NOT NULL
    CONSTRAINT Quantity_Default_1 DEFAULT 0
);
 
IF OBJECT_ID ('BookOrder', 'U') IS NOT NULL
DROP TABLE dbo.BookOrder;
 
CREATE TABLE dbo.BookOrder  -- source
(
  TitleID INT NOT NULL PRIMARY KEY,
  Title NVARCHAR(100) NOT NULL,
  Quantity INT NOT NULL
    CONSTRAINT Quantity_Default_2 DEFAULT 0
);
 
INSERT BookInventory VALUES
  (1, 'The Catcher in the Rye', 6),
  (2, 'Pride and Prejudice', 3),
  (3, 'The Great Gatsby', 0),
  (5, 'Jane Eyre', 0),
  (6, 'Catch 22', 0),
  (8, 'Slaughterhouse Five', 4);
 
INSERT BookOrder VALUES
  (1, 'The Catcher in the Rye', 3),
  (3, 'The Great Gatsby', 0),
  (4, 'Gone with the Wind', 4),
  (5, 'Jane Eyre', 5),
  (7, 'Age of Innocence', 8);


 
 SELECT bi.TitleID,bi.Quantity FROM BookInventory bi 
 INNER JOIN BookOrder bo
ON bi.TitleID = bo.TitleID;

SELECT TitleID,Quantity FROM BookInventory
SELECT TitleID,Quantity FROM BookOrder

-- in this MERGE we will update the quantity columns by adding 
-- the quantity column of the BookInventory and BookOrder table

 MERGE 
 INTO -- optional
 BookInventory bi -- destination table 
USING BookOrder bo -- source table
ON bi.TitleID = bo.TitleID -- join on both tables 
WHEN MATCHED THEN -- When it Matches 
  UPDATE
  SET bi.Quantity = bi.Quantity + bo.Quantity;

-- let's look at the result
-- Quantity 1 =6 +3 9 ,0+0=0,5+0=5

 SELECT bi.TitleID,bi.Quantity FROM BookInventory bi 
 INNER JOIN BookOrder bo
ON bi.TitleID = bo.TitleID;
 
-- You can also put a DELETE and an INSERT. 

SELECT * FROM BookInventory
SELECT * FROM BookOrder


MERGE BookInventory bi -- destination table 
USING BookOrder bo -- source table
ON bi.TitleID = bo.TitleID
WHEN MATCHED AND -- When it Matches 
  bi.Quantity + bo.Quantity = 0 THEN -- if the quantity is 0 I delete
  DELETE
WHEN NOT MATCHED THEN --insert me new lines in the BookInventory table
  INSERT (TitleID, Title, Quantity) --column names
  VALUES (bo.TitleID, bo.Title,bo.Quantity);

SELECT * FROM BookInventory

--I have line 3 which had the sum of 0 which has been deleted. 
-- line 7 was inserted because it did not match
 
  