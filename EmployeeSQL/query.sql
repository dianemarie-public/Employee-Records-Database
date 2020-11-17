SELECT * FROM employees;

ALTER TABLE employees
RENAME COLUMN emp_no TO id;

SELECT * FROM employees;
SELECT * FROM salaries;

-- 1. List the following details of each employee: 
------employee number, last name, first name, sex, and salary.
SELECT employees.id, employees.last_name, employees.first_name, employees.sex, salary.salary
FROM employees
JOIN salaries AS salary
	ON employees.id = salary.emp_no;
	
--2. List first name, last name, and hire date for employees who were hired in 1986.
