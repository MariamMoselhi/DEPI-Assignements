/*

Assignment 6
Mariam Alaa ElDin Mohamed

*/


-- task 1

use demo;

select employee_id, last_name,salary from employees
where (salary between 2000 and 5000) and (manager_id not in(101,200));


-- task 2

select first_name, last_name, department_name
from employees, departments
where employees.department_id =  departments.department_id
order by department_name asc;



-- task 3

select department_id, count(employee_id) as emp_count, Avg(salary) as average_salary
from employees
group by department_id;






