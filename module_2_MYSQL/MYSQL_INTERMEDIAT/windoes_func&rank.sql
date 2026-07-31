-- Window Functions

-- windows functions are really powerful and are somewhat like a group by - except they don't roll everything up into 1 row when grouping. 
-- windows functions allow us to look at a partition or a group, but they each keep their own unique rows in the output
-- we will also look at things like Row Numbers, rank, and dense rank

select * 
from employee_demographics;

select gender, avg(age)
from employee_demographics
group by employee_demographics.gender;

select dept_id,avg(salary)
from employee_demographics
join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
group by employee_salary.dept_id;

select gender,count(gender),avg(salary)
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
group by gender ;

select dem.first_name,dem.last_name,count(gender) over( partition by gender ),
sum(salary) over( partition by gender )
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
 ;

select dem.first_name , sal.last_name,sum(salary),gender
from employee_demographics dem 
join employee_salary sal
on dem.employee_id = sal.employee_id
group by dem.first_name , sal.last_name,gender;


select dem.first_name,dem.last_name,gender,salary,
sum(salary) over( partition by gender order by dem.employee_id ) as Rolling_total
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
 ;
-- Let's look at row_number rank and dense rank now

select dem.employee_id,dem.first_name,dem.last_name,gender,salary,
row_number()over(partition by gender order by salary desc) as row_num,
rank()over(partition by gender order by salary desc) as rank_num ,
dense_rank()over(partition by gender order by salary desc) as dens_renk_num
from employee_demographics dem 
join employee_salary sal 
	on dem.employee_id = sal.employee_id
 ;
