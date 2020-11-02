-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kb9hyh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title" VARCHAR(30)   NOT NULL,
    "birth_date" VARCHAR(30)   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(30)   NOT NULL,
    "hire_date" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" money   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR(30)   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(30)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT * FROM employees;
SELECT emp_no, last_name, first_name, sex
FROM employees;

-- List first name, last name, and hire date for employees who were hired in 1986.
-- Found solution here: https://stackoverflow.com/questions/2592412/how-to-convert-column-type-from-varchar-to-date-in-postgresql

ALTER TABLE employees ALTER COLUMN hire_date TYPE DATE 
using to_date(hire_date, 'MM/DD/YYYY');

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
