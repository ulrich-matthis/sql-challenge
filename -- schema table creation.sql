-- schema table creation

-- create departments table

DROP TABLE departments

CREATE TABLE departments (
    dept_no VARCHAR(10),
    dept_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments

-- create employees table

DROP TABLE employees

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(2) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

SELECT * FROM employees

-- create dept_emp table

DROP TABLE dept_emp

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

-- create dept_manager table

DROP TABLE dept_manager 

CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager

-- create salaries table

DROP TABLE salaries

CREATE TABLE salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

-- create titles table

DROP TABLE titles

CREATE TABLE titles (
    emp_title VARCHAR(10),
    title VARCHAR(40) NOT NULL
    FOREIGN KEY (emp_title) REFERENCES employees(emp_title)
);

SELECT * FROM titles