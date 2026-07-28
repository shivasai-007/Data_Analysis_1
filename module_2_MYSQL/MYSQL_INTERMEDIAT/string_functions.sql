-- string functions 
#Now let's look at string functions. These help us change and look at strings differently.


#Length will give us the length of each value
SELECT LENGTH('shivsai');

select first_name , LENGTH(first_name)
from employee_demographics
order by 2
;


#Upper will change all the string characters to upper case

select upper("shivsai") as label;

# Lower will change all the string chaacters to lower case 

select lower("SHIVA") as lower_label ;


select first_name ,upper(first_name)
from employee_demographics;

#Now if you have values that have white space on the front or end, we can get rid of that white space using TRIM

select trim("   shivasai   and       my    age      is     19     .");

#Now if we have white space in the left  it doesn't work

select ltrim("   shivasai   and       my    age      is     19     .");


# now if we have white space in the right of the statement
select rtrim("   shivasai   and       my    age      is     19     .          ");

#sub-strings (left , right , substring(left,right) -> combination of the string )

#Now we have Left. Left is going to allow us to take a certain amount of strings from the left hand side.
SELECT LEFT('Alexander', 4);



select first_name , 
left(first_name, 4),
right(first_name, 3)
from employee_demographics;



select first_name, 
substring(first_name , 3 ),
birth_date,
substring(birth_date , 6,2)
from employee_demographics;


# replace 

select first_name,replace(first_name, "n","B")
from employee_demographics;

#Next we have locate - we have 2 arguments we can use here: we can specify what we are searching for and where to search
#It will return the position of that character in the string.

select locate("a","shivasai");

select first_name,locate("An",first_name)
from employee_demographics;

select first_name , last_name ,
concat(first_name , " " , last_name ) as full_name 
from employee_demographics
;




