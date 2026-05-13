CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees (emp_id, name, dept_id, salary, hire_date) VALUES
(101, 'Aman', 1, 50000.00, '2022-01-15'),
(102, 'Riya', 2, 65000.00, '2021-06-20'),
(103, 'Rahul', 1, 55000.00, '2023-03-10'),
(104, 'Sneha', 3, 70000.00, '2020-11-05'),
(105, 'Vikas', 2, 48000.00, '2024-02-18'),
(106, 'Neha', 1, 62000.00, '2021-08-25'),
(107, 'Arjun', 3, 75000.00, '2019-09-12'),
(108, 'Priya', 2, 53000.00, '2023-07-30'),
(109, 'Karan', 1, 58000.00, '2022-12-01'),
(110, 'Meera', 3, 80000.00, '2020-04-14');  

-- Question Select all employees 
select * from employees;
