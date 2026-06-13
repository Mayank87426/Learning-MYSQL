/*-----------------------------------------------------------Day-4--------------------------------------------------------------------*/
use Mayank_db;
Drop Table  Employees;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);
Drop table departments
-- Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    department_id INT,
    manager_id INT,
    job_id VARCHAR(50),

    CONSTRAINT fk_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    CONSTRAINT fk_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);

INSERT IGNORE INTO departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Engineering'),
(103, 'Human Resources'),
(104, 'Marketing'),
(105, 'Finance');
    
    -- Managers
INSERT INTO employees
(employee_id, last_name, salary, department_id, manager_id, job_id)
VALUES
(3, 'Carol', 7000, 102, NULL, 'Manager'),
(5, 'Eve', 4000, 103, NULL, 'HR');
-- Insert managers
INSERT INTO employees
(employee_id, last_name, salary, department_id, manager_id, job_id)
VALUES
(3, 'Carol', 7000, 102, NULL, 'Manager'),
(5, 'Eve', 4000, 103, NULL, 'HR');

-- Other Employees
INSERT INTO employees
(employee_id, last_name, salary, department_id, manager_id, job_id)
VALUES
(1, 'Alice', 5000, 101, 3, 'SalesRep'),
(2, 'Bob', 4500, 101, 3, 'SalesRep'),
(4, 'David', 6000, 102, 3, 'Developer'),
(6, 'Frank', 3500, 103, 5, 'HR');

/* correlated subqueries*/
SELECT last_name, salary, department_id
FROM employees AS t1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = t1.department_id
);
