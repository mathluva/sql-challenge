DROP TABLE titles;
DROP TABLE employees;
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;

--Create tables--
CREATE TABLE titles (
  title_id VARCHAR(10) PRIMARY KEY,
  title VARCHAR(50)
);

CREATE TABLE employees (
  emp_no VARCHAR(10) PRIMARY KEY,
  employee_title_id VARCHAR(10) NOT NULL,
  FOREIGN KEY (employee_title_id) REFERENCES titles(title_id),
  birth_date DATE,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  sex VARCHAR(1),
  hire_date DATE
);

CREATE TABLE salaries(
  emp_no VARCHAR(10) PRIMARY KEY,
  salary INT
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(10) NOT NULL,
  emp_no VARCHAR(10) NOT NULL,
  PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE dept_emp(
  emp_no VARCHAR(10) NOT NULL,
  dept_no VARCHAR(30),
  PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE departments(
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(50),
  PRIMARY KEY (dept_no)
);