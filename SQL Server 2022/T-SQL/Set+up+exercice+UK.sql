USE [FORMATION]
go
-- Create three tables : 

create table salary_scale (job varchar (200),salary varchar(200))
go
create table employee ( IDclient int,[name] varchar (200),firstname varchar (200), age varchar(2000),gender varchar(200),date_birth varchar(200),[job] varchar (200))
go
create table Job_status (IDclient int,[Types] varchar (200))

-- Insert some values :

insert into salary_scale values 
('Human resources','between 2000$ and 3000$'),
('Buisness developer','between 2500$ and 5000$'),
('Recruiter','between 2200$ and 6000$'),
('financial services','between 5000$ and 10000$')

go 

insert into employee values 
(1,'Jackson','Mickael',18,'F','1976-08-04','Human resources'),
(1,'Taylor','Liz',16,'F','1978-08-02','Buisness developer'),
(2,'Grace','Kelly',17,'F','1987-05-02','Recruiter'),
(1,'Eastwood','Clint',23,'M','1970-05-06','financial services'),
(1,'Willis','Bruce',22,'M','1983-08-02','Recruiter'),
(3,'Dicaprio','Leonardo',22,'M','1983-08-02','Buisness developer'),
(2,'Pitt','Brad',37,'M','1975-08-02','Buisness developer'),
(2,'Clooney','George',22,'M','1983-01-01','Human resources'),
(2,'Monroe','Marylin',48,'M','1960-06-12','Human resources'),
(2,'Roberts','Julia',47,'F','1968-06-12','Recruiter'),
(1,'Jolie','Angelina',28,'M','1972-07-24','Human resources'),
(1,'Thuillier','olivier',41,'M','12-08-1976','Buisness developer'),
(2,'Chuillier','olivier',43,'M','12-08-1978','financial services'),
(1,'Meilhac','ludivine',45,'F','08-05-1983','financial services'),
(2,'Stone','Sharon',34,'F','1983-05-08','financial services'),
(4,'Willis','Bruce',22,'M','1983-08-02','Human resources'),
(2,'Brando','Marlon',48,'M','12-06-1960','Human resources'),
(3,'Smith','Will',47,'F','22-01-1965','Recruiter'),
(1,'Watson','Emma',57,'M','24-09-1978','Human resources'),
(2,'Hanks','Tom',41,'M','12-08-1976','Recruiter'),
(2,'Gary','Grant',44,'M','12-08-1976','financial services'),
(1,'Clarke','Emilia',37,'F','08-05-1983','Buisness developer'),
(6,'Bardot','Brigitte',47,'F','22-01-1965','financial services'),
(5,'Cotillard','Marion',22,'M','01-01-1983','Human resources'),
(4,'Williams','Robin',48,'M','12-06-1960','Human resources'),
(2,'Stallone','Sylvester',47,'F','22-01-1965','Recruiter'),
(2,'Blanchett','Cate',28,'M','24-09-1988','Human resources'),
(3,'Redford','Robert',55,'M','12-08-1973','Buisness developer'),
(3,'Forster','Robert',58,'M','12-08-1970','financial services'),
(4,'Walters','Julie',47,'F','08-05-1978','Recruiter'),
(1,'Hall','Rebecca',52,'F','22-01-1963','Recruiter')

go 

insert into Job_status values
(1,'Full-Time contracts'),
(2,'Part-Time contracts'),
(3,'Temporary contracts'),
(4, 'Zero hours contracts')

select * from Job_status

select * from employee

select * from salary_scale