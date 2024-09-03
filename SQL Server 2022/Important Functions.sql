-- https://learn.microsoft.com/en-us/sql/t-sql/functions/format-transact-sql?view=sql-server-ver16

-- Simple FORMAT example
DECLARE @d DATE = '11/22/2024';

SELECT FORMAT(@d, 'd', 'en-US') 'US English',
    FORMAT(@d, 'd', 'en-gb') 'British English',
    FORMAT(@d, 'd', 'de-de') 'German',
    FORMAT(@d, 'd', 'zh-cn') 'Chinese Simplified (PRC)'
union all
SELECT FORMAT(@d, 'D', 'en-US') 'US English',
    FORMAT(@d, 'D', 'en-gb') 'British English',
    FORMAT(@d, 'D', 'de-de') 'German',
    FORMAT(@d, 'D', 'zh-cn') 'Chinese Simplified (PRC)';

-- FORMAT with custom formatting strings
DECLARE @d DATE = GETDATE();

SELECT FORMAT(@d, 'dd/MM/yyyy', 'en-US') AS 'Date',
    FORMAT(123456789, '###-##-####') AS 'Custom Number';

select * from string_split('1,2,3,4,5',',');

select STUFF('abcdef',2,3,'ASDF');