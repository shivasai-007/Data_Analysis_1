-- case statement
-- A Case Statement allows you to add logic to your Select Statement,
-- sort of like an if else statement in other programming languages or even things like Excel

select first_name ,last_name,age,
case
	when age <= 30 then "Young" 
    when age between 31 and 50 then  "old"
    when age >= 50 then "on the death door "
end as age_bracket 
from employee_demographics
;
SELECT * 
FROM employee_salary;





-- Pawnee Council sent out a memo of their bonus and pay increase structure so we need to follow it
-- Basically if they make less than 45k then they get a 5% raise - very generous
-- if they make more than 45k they get a 7% raise
-- they get a bonus of 10% if they work for the Finance Department

-- pay incrase and bounds 

-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10 % bouns 

select first_name, last_name ,salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as new_salary,
case 
	when dept_id = 6 then salary * 1.10
end as bonus 
from employee_salary;


select * 
from parks_departments;

