use netwin;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
hourly_pay DECIMAL(5,2),
hire_date DATE
)

-- 1. Inserting single records 
INSERT INTO employees VALUES(1, 'John', 'Doe', '15.50', '2023-06-01');

-- 2. Insert Multiple Records:
INSERT INTO employees VALUES
(1, 'John', 'Doe', '15.50', '2023-06-01'),
(2, 'Jane', 'smith', '18.75', '2023-01-15' ),
(3, 'Jim', 'Brown', '22.00', '2022-12-10');
(1, 'John', 'Doe', '15.50', '2023-06-01', 'sales'),
(2, 'Jane', 'smith', '18.75', '2023-01-15', 'coding' ),
(3, 'Jim', 'Brown', '22.00', '2022-12-10', 'finanace');

ALTER TABLE employees ADD department VARCHAR(50);

DROP TABLE employees;

TRUNCATE TABLE employees;


-- DML
-- SELECT
-- Insert 
-- UPDATE
-- DELETE

UPDATE employees SET hourly_pay = 20.00 WHERE emp_id = 2;

DELETE FROM employees 
WHERE emp_id = 3;

-- DCL
GRANT SELECT ON employees TO 'username';
REVOKE INSERT ON employees FROM 'username';

-- DQL (Data Query Language):
SELECT * FROM employees;
-- specific colum
SELECT first_name, last_name, hourly_pay FROM employees;
-- conditional Select (Select employees with hourly_pay > 18.00):
SELECT * FROM employees WHERE emp_id = 1;
-- Order By (Sort employees by hire_date in ascending order):
SELECT * FROM employees ORDER BY hire_date ASC;


SELECT * FROM employees;