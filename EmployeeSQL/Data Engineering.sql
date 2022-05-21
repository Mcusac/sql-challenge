-----------------------------------------

DROP TABLE departments;

-- Create a new table
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Query all fields from the table
SELECT *
FROM departments;

-----------------------------------------

DROP TABLE titles;

-- Create a new table
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

-- Query all fields from the table
SELECT *
FROM titles;

-----------------------------------------

DROP TABLE employees;

-- Create a new table
CREATE TABLE employees (
	emp_no INT,
	title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

-- Query all fields from the table
SELECT *
FROM employees;

-----------------------------------------

DROP TABLE salaries;

-- Create a new table
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Query all fields from the table
SELECT *
FROM salaries;

-----------------------------------------

DROP TABLE dept_emp;

-- Create a new table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Query all fields from the table
SELECT *
FROM dept_emp;

-----------------------------------------

DROP TABLE dept_manager;

-- Create a new table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Query all fields from the table
SELECT *
FROM dept_manager;

-----------------------------------------