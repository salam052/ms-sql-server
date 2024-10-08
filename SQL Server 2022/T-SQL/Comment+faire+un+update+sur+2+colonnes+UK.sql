/*******************************************************************************
*********      How to make an update on two columns?     **********************
********************************************************************************/
use FORMATION
go

-- insert just two rows :

insert into Person values 
('The king','elvis'),
('The king','Lion')


-- What does the select give? 

select * from Person

-- Let's start from a simple UPDATE 

update Person set nickname = 'Peter' where firstname = 'Elvis'
go

-- what does the SELECT give? 

select * from Person

-- The value has been changed to Elvis

-- But what if I want to do an UPDATE on two columns at the same time? 

-- if I want to change for example the Peter elvis, by Thuillier Olivier

-- Either make two UPDATES 

update Person set nickname = 'Thuillier' where firstname = 'elvis'
go

update Person set firstname = 'olivier' where nickname = 'Thuillier'
go

-- what does the SELECT give? 

select * from Person

-- Let's DELETE and insert a new row for TEST and SELECT: 

delete from person where nickname ='thuillier'
go
insert into Person values 
('The king','elvis')
GO
select * from Person

-- You can also do it by putting a comma after the value

update Person set nickname = 'Thuillier',firstname = 'olivier' where firstname = 'elvis'
go

-- What does the select give? 

select * from person
