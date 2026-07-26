-- SELECT STATEMENET

-- the SELECT statement is used to work with columns and specify what columns you want to work see in your output. There are a few other things as well that
-- we will discuss throughout this video

#We can also select a specefic number of column based on our requirement. 

#Now remember we can just select everything by saying:

SELECT *
FROM parks_and_recreation.employee_demographics;

#Let's try selecting a specific column
SELECT first_name , last_name , age 
FROM  employee_demographics;
#You'll also often see SQL queries formatted like this.
SELECT first_name , 
last_name , 
age 
FROM  employee_demographics;
#The query still runs the exact same, but it is easier to read and pick out the columns
#being selected and what you're doing with them.

#For example let's take a look at using a calculation in the select statement
select first_name ,
last_name ,
age ,
age + 10 
from employee_demographics;

# PEMDAS -  pranthies , end code , multipliaction , division , addition , subsation 
select first_name ,
last_name ,
age ,
(age + 10 ) + 3  * 10  
from employee_demographics;

#One thing I wanted to show you about the select statement in this lesson is the DISTINCT Statement - this will return only unique values in
#The output - and you won't have any duplicates

SELECT DISTINCT first_name, gender
FROM employee_demographics;







