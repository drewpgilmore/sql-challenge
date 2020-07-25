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
    emp_no VARCHAR, 
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

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
    employees.last_name,
    employees.first_name, 
    employees.sex,
    salaries.salary
FROM employees 
INNER JOIN salaries ON 
employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name,
    last_name,
    hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;
    
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_no, 
    departments.dept_name,
    dept_manager.emp_no,
    employees.last_name,
    employees.first_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
ORDER BY dept_no; 

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name,
    e.last_name,
    e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.




--Bonus 
--As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. 
--You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. 
--To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

--Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) 
--This step may require some research. Feel free to use the code below to get started. 
--Be sure to make any necessary modifications for your username, password, host, port, and database name:


--Consult SQLAlchemy documentation for more information.


If using a password, do not upload your password to your GitHub repository. See https://www.youtube.com/watch?v=2uaTPmNvH0I and https://help.github.com/en/github/using-git/ignoring-files for more information.




Create a histogram to visualize the most common salary ranges for employees.


Create a bar chart of average salary by title.