use netwin;
-- INTEGRITY CONSTRAINTS

CREATE TABLE employee (
employee_id INT PRIMARY KEY,
first_name VARCHAR(50)
);
DROP TABLE employees;

-- FK
CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(30)
);

CREATE TABLE employees (
employee_id INT PRIMARY KEY,
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- UNIQUE
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

-- NOT NULL
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL
);

-- CHECK
CREATE TABLE employees (
employee_id INT PRIMARY KEY,
hourly_pay DECIMAL(5, 2),
CHECK (hourly_pay > 0)
);

-- DEFAULT
CREATE TABLE employee (
employee_id INT PRIMARY KEY,
hire_date DATE DEFAULT CURRENT_DATE
);

-- AUTO INCREMENT
CREATE TABLE employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50)
)

SELECT * FROM employees;