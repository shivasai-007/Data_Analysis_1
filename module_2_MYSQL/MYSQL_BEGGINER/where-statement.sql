#WHERE Clause:
#-------------
#The WHERE clause is used to filter records (rows of data)

#It's going to extract only those records that fulfill a specified condition.

# So basically if we say "Where name is = 'Alex' - only rows were the name = 'Alex' will return
# So this is only effecting the rows, not the columns


#Let's take a look at how this looks

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT * 
FROM employee_salary
WHERE salary > 50000
;


SELECT * 
FROM employee_salary
WHERE salary >= 50000
;

SELECT * 
FROM employee_salary
WHERE salary <= 50000
;

select * 
from employee_demographics
where gender = 'Female';

select * 
from employee_demographics
where birth_date >= '1985-01-01';
-- Here '1990-01-01' is the default data formate in MySQL.
-- There are other date formats as well that we will talk about in a later lesson.

-- AND OR NOT -- Logical operaters 

select * 
from employee_demographics
where birth_date > "1985-07-26"
and  gender = "male"
;


select * 
from employee_demographics
where birth_date > "1985-07-26"
or  gender = "male"
;

select * 
from employee_demographics
where birth_date > "1985-07-26"
or not  gender = "male"
;


select * 
from employee_demographics
where first_name = "leslie" and  age = 44  or age > 55
;

# LIKE STATEMENT
-- two special characters a % and a _
-- % means anything

select *
from employee_demographics
where first_name like "a%"
;


select *
from employee_demographics
where first_name like "a___%"
;

select * 
from employee_demographics
where birth_date like "%03%"
;