# Experiment 2 – SQL SELECT Queries with WHERE, GROUP BY, HAVING, ORDER BY

## Experiment
Experiment 1.2: Understanding and implementing SQL SELECT queries using WHERE, GROUP BY, HAVING, and ORDER BY clauses on an EMPLOYEE table.

## Aim
The aim of this experiment is to write SQL SELECT queries to analyze employee salary data using filtering, grouping, aggregate functions, and sorting.

## Objective
- To write SQL SELECT queries on the EMPLOYEE table  
- To use the WHERE clause to filter records  
- To use the GROUP BY clause to group records  
- To apply conditions on grouped data using HAVING  
- To sort the output using ORDER BY  
- To calculate average salary using the AVG() function  

## Software Requirements
- Database: PostgreSQL (pgAdmin)  

## Practical / Experiment Steps
1. Display the department name and average salary of employees for each department.  
2. Display the department name and average salary of employees whose salary is greater than 20,000.  
3. Display only those departments where the average salary is greater than 30,000.  
4. Display departments with average salary greater than 30,000 (considering only salaries > 20,000) and arrange the result in descending order.  

## Procedure of the Experiment
1. Start the system and log in to the computer.  
2. Open pgAdmin and connect to the PostgreSQL server.  
3. Open the database containing the EMPLOYEE table.  
4. Verify the structure and records of the EMPLOYEE table.  
5. Write SQL SELECT queries using WHERE, GROUP BY, HAVING, and ORDER BY clauses.  
6. Execute each query one by one.  
7. Observe and verify the output.  
8. Take screenshots of each query output.  

## SQL Queries

**Step 1 – Average salary by department**  
```sql
SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;
Step 2 – Salary greater than 20,000

SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department;

Step 3 – Average salary greater than 30,000

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 30000;

Step 4 – Final query with WHERE + HAVING + ORDER BY

SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;

Learning Outcome

Learned how to analyze data using SQL SELECT queries.

Understood the use of WHERE, GROUP BY, HAVING, and ORDER BY clauses.

Learned how aggregate functions like AVG() help in deriving meaningful insights from database tables.
