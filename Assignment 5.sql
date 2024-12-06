/*
Assignment 5  
Mariam Alaa ElDin Mohamed
*/

--1
use demo;

select * from employees;


select employee_id, department_id from employees where location='Cairo';


--2
select distinct department_id from employees;


--3

create table students(ID int primary key, First_Name varchar(20) not null, Last_Name varchar(20) default('Unknown'),
Address varchar(50) default('N/A'),City varchar(20) default('N/A'), Birth_Date date );


drop table students;


--4


insert into students 
values(123,'Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');

update students set Address='Garden City'
where Last_Name='Ahmed';



--5
begin transaction;

delete from students
where City='Cairo';

rollback transaction;



