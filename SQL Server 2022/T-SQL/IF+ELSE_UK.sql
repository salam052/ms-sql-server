/*******************************************************************************
*************************   IF/ELSE and WAITFOR     *****************************
********************************************************************************/

-- When IF is True it is therefore executed.
--The IF condition is not met: the boolean expression returns the value FALSE, and thus goes 
-- execute the ELSE.


DECLARE @age integer  
SET @age = 17
IF @age = (SELECT  age   FROM contact WHERE age = @age)   

    (SELECT  age   FROM contact where age = @age);  
ELSE  
    (SELECT  age   FROM contact where age <> @age);  

-- WAITFOR :
-- Blocks the execution of a processing, stored procedure or transaction 
-- until the specified time or time interval is reached 

	BEGIN  
    WAITFOR DELAY '00:00:02';  
    EXECUTE sp_helpdb;  
END;  
GO 