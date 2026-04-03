CREATE Table employee
(
    id SERIAL primary key,
    name varchar(20),
    salary int,
    department varchar(20)
);

INSERT into employee (name,salary,department)
values ('kallu',50000,'IT'),
('dholu',60000,'IT'),
('karim',50000,'hr'),
('Rohim',60000,'ht');

INSERT INTO employee (name,salary,department)
values ('sojib',60000,'dev'),
('kibria',30000,'sels');    

SELECT * FROM employee;

SELECT department, count(*)
FROM employee
GROUP BY department;

SELECT department, sum(salary)
FROM employee
GROUP BY department;

SELECT department, avg(salary) as average_salary
from employee
GROUP BY department

SELECT department, city,count(*)
from employee
GROUP BY department,city

ALTER Table employee
add COLUMN city VARCHAR(50) NOT NULL DEFAULT 'Dhaka'

ALTER Table employee
DROP COLUMN city

SELECT * FROM employee

SELECT department,count(*), sum(salary) FROM employee
GROUP BY department
