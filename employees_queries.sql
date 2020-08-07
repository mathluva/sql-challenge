
--QUERY 1-- EMPLOYEE INFO INCLUDE SALARY
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
JOIN employees ON  --JOIN SALARY EMPLOYEE TABLE
employees.emp_no = salaries.emp_no;

--QUERY 2-- EMPLOYEES HIRED IN 1986
SELECT employees.first_name,employees.last_name,employees.hire_date
FROM employees
WHERE hire_date >='1986-01-01' AND hire_date< '1987-01-01';

--QUERY 3--
SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.first_name, employees.last_name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
ORDER BY dept_name;

--QUERY 4--
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no

--QUERY 5--
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'; 
	
--QUERY 6--
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

--QUERY 7--
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--QUERY 8--
SELECT  last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


