-- Create EMPLOYEE table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    joining_date DATE
);

-- Insert records
INSERT INTO employee VALUES (1, 'Ramesh', 'HR', 25000, '2022-01-10');
INSERT INTO employee VALUES (2, 'Suresh', 'HR', 35000, '2021-03-15');
INSERT INTO employee VALUES (3, 'Amit', 'IT', 40000, '2020-07-20');
INSERT INTO employee VALUES (4, 'Neha', 'IT', 18000, '2023-02-05');
INSERT INTO employee VALUES (5, 'Pooja', 'Finance', 45000, '2019-11-30');
INSERT INTO employee VALUES (6, 'Rahul', 'Finance', 32000, '2022-06-18');

-- Display all records
SELECT * FROM employee;

-- Department-wise average salary (salary > 20000)
SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;
