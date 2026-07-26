-- Having vs Where

-- Both were created to filter rows of data, but they filter 2 separate things
-- Where is going to filters rows based off columns of data
-- Having is going to filter rows based off aggregated columns when grouped

select gender , avg(age)
from employee_demographics
where age > 90         # when some table is grouped by some of the clumn then the table my not able to displayed without a agriate function 
group by gender 
;

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40 
;

-- this doesn't work because of order of operations. On the backend Where comes before the group by. 
-- So you can't filter on data that hasn't been grouped yet
-- this is why Having was created

select occupation ,avg(salary)
from employee_salary
where occupation like "%mana%"
group by occupation 
having avg(salary) > 60000
;
