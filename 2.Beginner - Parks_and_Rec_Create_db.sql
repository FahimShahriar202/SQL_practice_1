select employee_id,
first_name,
age,
(age+10) * 10 -10 as modified_age,  #this uses PEMDAS rule
gender
from parks_and_recreation.employee_demographics;


select distinct gender
from parks_and_recreation.employee_demographics;
