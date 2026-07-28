# Subqueries

#So subqueries are queries within queries. Let's see how this looks.

SELECT *
FROM employee_demographics;


#Now let's say we wanted to look at employees who actually work in the Parks and Rec Department, we could join tables together or we could use a subquery
#We can do that like this:

select * 
from employee_demographics
where employee_id in
		(select employee_id
			from employee_salary
            where dept_id = 1
)
;

select first_name ,salary ,
(select  avg(salary)
from employee_salary)
from employee_salary
;

select gender,avg(age),max(age),min(age),count(age)
from employee_demographics
group by gender;




select gender , avg (`max(age)`)
from 
(select gender,avg(age),max(age),min(age),count(age)
from employee_demographics
group by gender) as agg_table 
group by gender
;



select  avg (max_age) , sum(count_age)
from 
(select gender,
avg(age) as avg_age,
max(age) as max_age ,
min(age) as min_age ,
count(age) as count_age
from employee_demographics
group by gender) as agg_table 
;