/*******************************************************************************
*************************  CONCAT/CONCAT_WS  **********************************
********************************************************************************/
-- This function returns a string that results from the concatenation 
-- or the joining of two or more chain values from end to end

-- CONCAT ( string_value1, string_value2 [, string_valueN ]

SELECT CONCAT ( 'Happy ', 'Birthday ', 11, '/', '25' ) AS Result

-- Will support a separator

select database_id, recovery_model_desc, containment_desc AS DatabaseInfo  FROM sys.databases
go
SELECT CONCAT_WS( ' - ', database_id, recovery_model_desc, containment_desc) AS DatabaseInfo FROM sys.databases