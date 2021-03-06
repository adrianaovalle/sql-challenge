-- Data Analysis

--1. List the following details of each employee: 
--   employee number, last name, first name, sex, and salary.

SELECT e.emp_no as "Employee Number", e.last_name as "Last Name", 
		e.first_name as "First Name", e.sex as "Sex", s.salary as "Salary"
FROM "Employees" as e
JOIN "Salaries" as s ON s.emp_no=e.emp_no
ORDER BY e.emp_no ASC;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name as "First Name", e.last_name as "Last Name", e.hire_date as "Hire Date"
FROM "Employees" as e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY e.hire_date ASC;

--3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, 
-- first name.
SELECT dm.dept_no as "Department No", d.dept_name as "Department Name", 
		dm.emp_no as "Employee No", e.last_name as "Last Name" , e.first_name as "First Name"
FROM "Department_Manager" as dm
JOIN "Departments" as d ON d.dept_no=dm.dept_no
JOIN "Employees" as e ON e.emp_no=dm.emp_no;

--4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no as "Employee No", e.last_name as "Last Name" , 
	e.first_name as "First Name", d.dept_name as "Department Name"
FROM "Employees" as e
JOIN "Department_Employee" as de ON de.emp_no=e.emp_no
JOIN "Departments" as d ON de.dept_no=d.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."
SELECT e.first_name as "First Name", e.last_name as "Last Name", e.sex as "Sex"
FROM "Employees" as e
WHERE e.first_name='Hercules' AND e.last_name ILIKE 'B%'
ORDER BY e.last_name ASC;

--6.List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
SELECT e.emp_no as "Employee No" , e.last_name as "Last Name", 
	e.first_name as "First Name", d.dept_name as "Department Name"
FROM "Employees" as e
JOIN "Department_Employee" as de ON de.emp_no=e.emp_no
JOIN "Departments" as d ON de.dept_no=d.dept_no
WHERE d.dept_name='Sales';

--7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no as "Employee No", e.last_name as "Last Name", 
	e.first_name as "First Name" , d.dept_name as "Department Name"
FROM "Employees" as e
JOIN "Department_Employee" as de ON de.emp_no=e.emp_no
JOIN "Departments" as d ON de.dept_no=d.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

--8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT e.last_name as "Last Name", COUNT (e.last_name) as "Last Name Frequency"
FROM "Employees" as e
GROUP BY e.last_name
ORDER BY "Last Name Frequency" DESC;