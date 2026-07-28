# UNION 
#A union is how you can combine rows together- not columns like we have been doing with joins 
#where one column is put next to another
#Joins allow you to combine the rows of data

#Now you should keep it the same kind of data otherwise if you start mixing tips with first_names
#it would be really confusing, but you can do it.
#Let's try it out and use Union to bring together some random data, then we will look at an actual use case

select first_name , last_name
from employee_demographics
union distinct
select first_name , last_name
from employee_salary
;

select first_name ,last_name , 'old man ' as label
from employee_demographics
where age > 40 and gender = "male"
union 
select first_name ,last_name , 'old lady' as label
from employee_demographics
where age > 40 and gender ="female"
union
select first_name ,last_name ,"highely paid " as label 
from employee_salary
where salary > 70000
order by  last_name 
;



