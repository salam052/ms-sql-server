/*******************************************************************************
********************** OFFSET FETCH and NEXT ROWS     *************************
********************************************************************************/
USE BDD
GO
-- The OFFSET-FETCH clause gives you the possibility to extract only one window or result page from the result set.
-- ORDER BY is mandatory with the OFFSET and FETCH clauses.
-- OFFSET: Indicates the number of rows to be ignored
-- FETCH: Indicates the number of lines to be returned, after the OFFSET clause has been processed.
-- Example 
-- I want the following 10 lines from my table when I SELECT
-- With the classic select : 



SELECT * FROM contact  order by [name] 

-- WITH OFFSET : 

SELECT * FROM contact  order by [name]   OFFSET 10 ROWS 

-- what if I just want the first 3 lines with the next 5 lines? 

SELECT * FROM contact  order by [name]   OFFSET 5 ROWS FETCH NEXT 7 ROWS ONLY

-- The OFFSET clause is mandatory with FETCH. You must never use ORDER BY .... FETCH.

SELECT * FROM contact  order by [name]   FETCH NEXT 5 ROWS ONLY

-- TOP cannot be combined with OFFSET and FETCH in the same query expression.

SELECT top(2) *  FROM contact  order by [name]   OFFSET 3 ROWS FETCH NEXT 5 ROWS ONLY