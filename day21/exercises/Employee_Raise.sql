-- CREATE DATABASE day21 ;
USE day21;
CREATE TABLE employee_raise (
    employee_id INT,
    department VARCHAR(255),
    salary INT
);

INSERT INTO employee_raise (employee_id, department, salary) VALUES
(1, 'IT', 50000),
(2, 'Sales', 11000),
(3, 'Accounting', 55000),
(4, 'IT', 65000),
(5, 'Sales', 75000),
(6, 'Accounting', 50000),
(7, 'IT', 75000),
(8, 'Accounting', 40000);
