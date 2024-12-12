/*
Assignment 7 
Mariam Alaa ElDin Mohamed
*/

-- task 1
use demo;
create view vw_employee_details as
select e.first_name as fname, e.last_name as lname , d.department_name as dname
from employees e, departments d
where e.department_id=d.department_id;

--select * from vw_employee_details;


-- task 2
use Employee;
create or alter view vw_work_hrs as
select e.Fname as fname, e.Lname as lname, p.pname, w.hours 
from employee e, department d, project p, works_on w
where e.DNO=d.Dnumber and p.dnum=d.Dnumber and 
w.essn=e.SSN and d.Dnumber=5;

--select * from vw_work_hrs;



-- task 3 

create view vw_high_status_suppliers as
select * from suppliers
where status>15
with check option;