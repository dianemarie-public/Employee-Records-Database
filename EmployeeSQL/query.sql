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
SELECT * FROM employees;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date SIMILAR TO '%1986'; 

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT * FROM dept_manager;

SELECT employees.id, employees.last_name, employees.first_name, dept_manager.dept_no, deptartments.dept_name
FROM employees
JOIN salaries AS salary
	ON employees.id = salary.emp_no;
	
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.