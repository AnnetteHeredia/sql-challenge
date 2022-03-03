-- Creating table schema

--Creating salaries table

CREATE TABLE salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	primary key (emp_no)
);


select * from salaries;


-- Create table employees
CREATE TABLE employees (
	emp_no INT primary key NOT NULL unique,
	title_id varchar (20) NOT NULL unique,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
	
	
);

select * from employees;

--Creating titles table

CREATE TABLE titles (
	title_id varchar NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id),
	FOREIGN KEY(title_id) REFERENCES employees(title_id)
);

select * from titles;

CREATE TABLE dept_emp (
	
	emp_no INT NOT NULL unique,
	dept_no VARCHAR(10) NOT NULL unique
	
);

select * from dept_emp;

-- Create table dept_managers
CREATE TABLE dept_managers (
	dept_no VARCHAR (10),
 	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

select * from dept_managers;

-- Create table departments
Create Table departments (
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	primary key (dept_no),
	FOREIGN KEY (dept_no) REFERENCES dept_emp(dept_no)
);

select * from departments;






