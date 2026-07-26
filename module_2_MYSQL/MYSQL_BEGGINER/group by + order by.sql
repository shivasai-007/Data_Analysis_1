-- Group By
-- When you use the GROUP BY clause in a MySQL query, it groups together rows that have the same values in the specified column or columns.
-- GROUP BY is going to allow us to group rows that have the same data and run aggregate functions on them

select gender ,avg(age)
from employee_demographics
group by gender 
;


select occupation ,salary
from employee_salary
group by occupation,salary
;


select gender , avg(age), max(age),min(age),count(age)
from employee_demographics
group by gender 
;

#10 - The ORDER BY clause:
-------------------------
#The ORDER BY keyword is used to sort the result-set in ascending or descending order.

#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.


#So let's try it out with our customer table
#First let's start simple with just ordering by one column

select * 
from employee_demographics
order by first_name , age desc 
;

select * 
from employee_demographics
order by age desc 
;

select * 
from employee_demographics
order by 5  , 4  
;

