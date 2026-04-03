-- Active: 1768835019972@@127.0.0.1@5432@practice
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id int REFERENCES departments (department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);
drop Table employees

INSERT INTO employees ( employee_name, department_id, salary, hire_date)
VALUES (
    'John Doe', 1, 50000.00, '2022-01-01'),
    ('Jane Smith', 2, 60000.00, '2022-02-01'),
    ('Bob Johnson', 3, 70000.00, '2022-03-01'),
    ('Alice Williams', 4, 80000.00, '2022-04-01'),
    ('Charlie Brown', 5, 90000.00, '2022-05-01'),
    ('Eve Green', 6, 100000.00, '2022-06-01'),
    ('Frank White', 7, 110000.00, '2022-07-01'),
    ('Grace Black', 8, 120000.00, '2022-08-01'),
    ('Harry Red', 9, 130000.00, '2022-09-01'),
    ('Ivy Blue', 10, 140000.00, '2022-10-01'),
    ('Jack Green', 1, 150000.00, '2022-11-01'),
    ('Kate Brown', 2, 160000.00, '2022-12-01'),
    ('Liam White', 3, 170000.00, '2023-01-01'),
    ('Mia Black', 4, 180000.00, '2023-02-01'),
    ('Noah Red', 5, 190000.00, '2023-03-01'),
    ('Olivia Blue', 6, 200000.00, '2023-04-01'),
    ('Oscar Green', 7, 210000.00, '2023-05-01'),
    ('Penny Brown', 8, 220000.00, '2023-06-01'),
    ('Quinn White Walter', 1, 230000.00, '2023-07-01'),
    ('Quinn White', 9, 230000.00, '2023-07-01');
    
CREATE Table departments
(
    department_id SERIAL primary key,
    department_name varchar(20)
);

INSERT INTO departments (department_name)
VALUES
    ('HR'),
    ('IT'),
    ('Finance'),
    ('Sales'), 
    ('Marketing'),
    ('Operations'),
    ('Customer Support'),
    ('Legal'),
    ('Training'),
    ('Administration');
   
SELECT * FROM departments

SELECT * FROM employees

SELECT * FROM employees
INNER JOIN departments
USING (department_id)

SELECT department_name, round(avg(salary),2) FROM employees
INNER JOIN departments
USING (department_id)
GROUP BY department_name

-- count emplyees in each deaprtment
SELECT department_name, count(*) FROM departments
JOIN employees
USING (department_id)
GROUP BY department_name

-- highest avg salary
SELECT department_name, avg(salary) as avg_salary FROM employees
JOIN departments USING (department_id)
GROUP BY department_name
ORDER BY avg_salary DESC
LIMIT 1

SELECT extract (YEAR from hire_date) as hired_year, count(*) FROM employees
GROUP BY hired_year

SELECT *  FROM employees
