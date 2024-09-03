/******************************************************************************
************************  Exercise 42    **************************************
*******************************************************************************/
USE FORMATION 
GO
-- Create a stored procedure that we will name Ps_Insertion_two_rows which will insert two rows.

create procedure Ps_Insertion_two_rows
as
insert into contact values 
('Hanks','Tom',67,'M','1971-10-14'),
('Dean','James',43,'F','1983-08-02')

-- Let's execute the stored procedure

exec Ps_Insertion_two_rows

--  SELECT ? 

select * from contact 

/******************************************************************************
************************  Exercise 43    **************************************
*******************************************************************************/

-- Create a second stored procedure that we will name PS_Update_Monroe
-- who's going to do an UPDATE on the line on behalf of Monroe, and put Superman in his place.

create procedure PS_Update_Monroe
as
update contact set [name]='Superman' where firstname='Marylin'

exec PS_Update_Monroe

-- Que donne le SELECT ? 

select * from contact  where [name]='Superman'

/******************************************************************************
************************  Exercise 44    **************************************
*******************************************************************************/

-- Create a Ps_leonardo stored procedure and declare a variable in your stored procedure 
-- who's going to call the firstname "Leonardo"

create procedure Ps_leonardo  @firstname  varchar (200)
as
select *  from contact where firstname =@firstname

-- What does the execution of the PS give? 

exec Ps_leonardo  'leonardo'

/******************************************************************************
************************  Exercise 45    **************************************
*******************************************************************************/

-- Create a stored procedure Ps_Marvel which will contain two variables 
-- and return this result by executing it.

create procedure Ps_Marvel
as
declare @marvel1 varchar (10), @marvel2 varchar (10)
set @marvel1 = 'Hulk'
set @marvel2 = 'Wolverine'
print @marvel1 +' and '+ @marvel2 +' ' +'are some good friends' 

-- What does the execution of the PS give? 

execute Ps_Marvel

/******************************************************************************
************************  Exercise 46    **************************************
*******************************************************************************/

--  Create a view that you will call View_age where you will want to see  :
-- To select women born between 1976 and 1985

create view View_age as 

select * from contact where gender ='F' and year(date_of_birth) between 1976 and 1985

-- SELECT ? 

select * from View_age

/******************************************************************************
************************  Exercise 47    **************************************
*******************************************************************************/

-- Create a view called view_convert, which will convert the column 
-- date_of_birth in american format

create view View_convert 
as 
select CONVERT(varchar, date_of_birth, 110) as date_of_birth from [dbo].[Contact]

-- Que donne le SELECT de la vue ? 

select * from View_convert
