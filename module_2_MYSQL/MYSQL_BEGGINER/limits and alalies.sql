-- LIMIT and ALIASING

-- Limit is just going to specify how many rows you want in the output

select * 
from employee_demographics
limit 3 
;


select * 
from employee_demographics
order by  age desc 
limit 2 , 1 
;

-- ALIASING

-- aliasing is just a way to change the name of the column (for the most part)
-- it can also be used in joins, but we will look at that in the intermediate series


select gender  , avg (age) as avg_age 
from employee_demographics
group by gender
having avg_age > 40
;


