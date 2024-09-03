/******************************************************************************
********************************   SELECT INTO ********************************
*******************************************************************************/
USE FORMATION
GO

-- SELECT ?

select * from contact

--How can I copy my table?

select * into contact_2 from contact

-- What does the select of the contact table give

select * from contact_2

--And if I want to copy just one column?

select [name] into contact_3 from contact

-- What does the select of the contact table give

select * from contact_3

-- you just see that just one column has been copied

--And if I just want to copy some data?

select * into contact_4 from contact where firstname = 'Mickael'

-- select ?

select * from contact_4