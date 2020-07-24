CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	emp_no VARCHAR, --needs to be primary key, but has duplicate emp id (error?)
	dept_no VARCHAR
);

CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no VARCHAR
);

CREATE TABLE employees (
    emp_no SERIAL, 
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR, 
    last_name VARCHAR, 
    sex VARCHAR, 
    hire_date DATE
);

CREATE TABLE salaries (
    emp_no VARCHAR PRIMARY KEY, 
    salary INT
);

CREATE TABLE titles (
    title_id VARCHAR, 
    title VARCHAR
);

