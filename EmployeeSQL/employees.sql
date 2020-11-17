-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kb9hyh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "employees" (
    "emp_no" integer NOT NULL,
    "emp_title" VARCHAR(30) NOT NULL,
    "birth_date" VARCHAR(30) NOT NULL,
    "first_name" VARCHAR(30) NOT NULL,
    "last_name" VARCHAR(30) NOT NULL,
    "sex" VARCHAR(30) NOT NULL,
    "hire_date" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no", "emp_title" 
     )
);

CREATE TABLE "salaries" (
    "emp_no" integer   NOT NULL,
    "salary" money   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(30) NOT NULL,
    "dept_name" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(30) NOT NULL,
    "emp_no" integer   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" integer   NOT NULL,
    "dept_no" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(30) NOT NULL,
    "title" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

SELECT * FROM employees;

SELECT employees.emp_no, salaries.emp_no
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

SELECT * FROM salaries;

SELECT employees.emp_title, titles.title_id
FROM titles
INNER JOIN employees ON
employees.emp_title=titles.title_id;

SELECT * FROM titles;

SELECT departments.dept_no, dept_manager.dept_no
FROM dept_manager
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no

SELECT * FROM departments;

SELECT * FROM dept_manager;

SELECT dept_manager.emp_no, employees.emp_no
FROM employees
INNER JOIN dept_manager ON
dept_manager.emp_no=employees.emp_no

SELECT * FROM dept_emp;

SELECT dept_emp.emp_no, employees.emp_no
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no=employees.emp_no

SELECT * FROM dept_emp;

SELECT dept_emp.dept_no, departments.dept_no
FROM departments
INNER JOIN dept_emp ON
dept_emp.dept_no=departments.dept_no

SELECT dept_manager.dept_no, dept_emp.dept_no
FROM employees
INNER JOIN dept_manager ON
dept_manager.emp_no=employees.emp_no

