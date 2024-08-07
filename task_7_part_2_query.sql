select * from employees 

select * from departments

select * from employees as e inner join departments as d on e.dep_id= d.dep_id

select e.empid as "employee_id" , e.empname as "employee_name" , d.head as "head_of_department"
from employees as e 
inner join departments as d
on e.dep_id = d. dep_id 
group by e.empid,d.head


select e.empid as "employee_id" , e.empname as "employee_name" , e.jobtitle as "employees_jobtitle", 
d.deptname as "department_name", d.job_location as "job_locations", d.head as "department_head"
from employees as e 
inner join departments as d
on e.dep_id = d.dep_id
where d.job_location = 'building A'

select e.empid as "employee_id" , e.empname as "employee_name" , e.jobtitle as "employees_jobtitle", 
d.deptname as "department_name", d.job_location as "job_locations", d.head as "department_head"
from employees as e 
left join departments as d
on e.dep_id = d.dep_id
where d.deptname= 'Finance' or d.deptname= 'Legal'

select e.empid as "employee_id" , e.empname as "employee_name" , e.jobtitle as "employees_jobtitle", 
d.deptname as "department_name", d.job_location as "job_locations", d.head as "department_head"
from employees as e 
left join departments as d
on e.dep_id = d.dep_id
where e.jobtitle= 'software developer' or d.deptname= 'Legal'

select e.empid as "employee_id" , e.empname as "employee_name" , e.jobtitle as "employees_jobtitle", 
d.deptname as "department_name", d.job_location as "job_locations", d.head as "department_head"
from employees as e 
left join departments as d
on e.dep_id = d.dep_id
and (case when d.head = 'John Doe' then d.dep_id else null end) = d.dep_id





