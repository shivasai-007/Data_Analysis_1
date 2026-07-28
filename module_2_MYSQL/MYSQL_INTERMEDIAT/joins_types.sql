-- joins 
-- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together
-- there are several joins we will look at today, inner joins, outer joins, and self joins

-- here are the first 2 tables - let's see what columns and data in the rows we have in common that we can join on
select * 
from employee_demographics
;

select * 
from employee_salary 
;


-- let's start with an inner join -- inner joins return rows that are the same in both columns

-- since we have the same columns we need to specify which table they're coming from

select *
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id 
;


-- notice Ron Swanson isn't in the results? This is because he doesn't have an employee id in the demographics table. He refused to give his birth date or age or gender

-- use aliasing!

select dm.employee_id,age,occupation
from employee_demographics as dm
inner join employee_salary as sal
	on dm.employee_id = sal.employee_id 
;

-- OUTER JOINS

-- for outer joins we have a left and a right join
-- a left join will take everything from the left table even if there is no match in the join, but will only return matches from the right table
-- the exact opposite is true for a right join
-- left outter and right outter 

select * 
from employee_demographics as dem 
left join employee_salary as sal
	 on dem.employee_id = sal.employee_id
;
-- so you'll notice we have everything from the left table or the salary table. Even though there is no match to ron swanson. 
-- Since there is not match on the right table it's just all Nulls

-- if we just switch this to a right join it basically just looks like an inner join
-- that's because we are taking everything from the demographics table and only matches from the left or salary table. Since they have all the matches
-- it looks kind of like an inner join

select * 
from employee_demographics as dem 
right join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- Self Join

-- a self join is where you tie a table to itself

select * 
from employee_demographics;

select emp1.employee_id as emp_santa ,
emp1.first_name as first_name_snata ,
emp1.first_name as last_name_snata ,
emp2.employee_id as emp_santa ,
emp2.first_name as first_name_emp ,
emp2.first_name as last_name_emp
from employee_demographics as emp1
join employee_demographics as emp2
	on emp1.employee_id + 1 = emp2.employee_id
;

-- joining multiple tables together 

select *
from employee_demographics dm
inner join employee_salary sal 
	on dm.employee_id = sal.employee_id
inner join parks_departments pd 
	 on  sal.dept_id = pd.department_id
;


select * 
from parks_departments
;
