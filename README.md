- ### [Employee Database Design](https://github.com/dianewitt/sql-database-design) *with SQL*

* Design SQL tables to hold data imported from csv
* SQL Database Schema

![sql-schema](/Images/sql-schema.png)

* Create a table schema for each of the six csv files, specifying data types, primary keys, foreign keys and other constraints.
* Import each csv into the corresponding SQL table
* Sample SQL code
      
   ```
   CREATE TABLE "employees" (
   "emp_no" integer   NOT NULL,
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
   ```
* Data Analysis
   * List each employee with employee number, last name, first name, sex and salary.
   * 
