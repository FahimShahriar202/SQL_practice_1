select *
from parks_and_recreation.employee_demographics;



-- select  statement
select employee_id,
first_name,
age,
(age+10) * 10 -10 as modified_age,  #this uses PEMDAS rule
gender
from parks_and_recreation.employee_demographics;


select distinct gender
from parks_and_recreation.employee_demographics;



-- where staement
select *
from parks_and_recreation.employee_demographics
where (age<45 and gender="Female") or (gender="Male");



-- like statement

 --   % means the character can be anything, 
 --   _ means the character must be a specific character
select *
from parks_and_recreation.employee_demographics
where first_name like "a%";


select *
from parks_and_recreation.employee_demographics
where first_name like "a___%";


-- group by, order by statement
select  gender,avg(age), max(age) as maximum_age, min(age) as minimum_age, count(age) 
from parks_and_recreation.employee_demographics
group by gender;


select occupation, salary
from employee_salary
group by occupation,salary;


-- order by sorts things out, it comes after where statement
select first_name, age, gender
from employee_demographics
order by gender, age desc;


-- having vs where
select gender, avg(age)
from employee_demographics
group by gender
having avg(age)> 40;


select occupation, avg(salary)
from employee_salary
where occupation like "%manager%"
group by occupation
having avg(salary) >50000;

-- limits and aliasing
select *
from employee_demographics
order by age desc
limit 2,2; 