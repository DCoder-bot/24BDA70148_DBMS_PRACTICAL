
# Lab Experiment 1.2 – SQL SELECT Queries

## 📌 Aim

To understand and implement SQL **SELECT queries** using clauses such as **WHERE, GROUP BY, HAVING, and ORDER BY** to retrieve and analyze data from an existing relational database table.

---

## 🎯 Objective of the Experiment

* To practice writing basic SQL `SELECT` statements
* To filter records using the `WHERE` clause
* To group records using `GROUP BY`
* To apply conditions on grouped data using `HAVING`
* To sort query results using `ORDER BY`
* To use aggregate functions like `AVG()`

---

## 🛠️ Software Requirements

* **Database:**

  * Oracle Database Express Edition (Oracle XE)
  * PostgreSQL (PgAdmin)
* **Language:** SQL

---

## 🗂️ Given Table Details

The EMPLOYEE table is **already provided** in the question.

| Column Name  | Data Type |
| ------------ | --------- |
| emp_id       | NUMBER    |
| emp_name     | VARCHAR   |
| department   | VARCHAR   |
| salary       | NUMBER    |
| joining_date | DATE      |

⚠️ **Note:** Since the table structure is given, **no table creation or data insertion is required**.

---

## ❓ Problem Statement

Write an SQL query to:

1. Display the **department name** and **average salary** of employees
2. Consider only employees whose **salary is greater than 20,000**
3. Display only those departments where the **average salary is greater than 30,000**
4. Arrange the result in **descending order of average salary**

---

## 🧠 SQL Clauses Used

* `WHERE` – to filter rows
* `GROUP BY` – to group data department-wise
* `HAVING` – to filter grouped data
* `ORDER BY` – to sort results
* `AVG()` – aggregate function to calculate average salary

---

## 🧾 SQL Query

```sql
SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;
```

---

## 📘 Explanation (Beginner Friendly)

* `WHERE salary > 20000` filters employees before grouping
* `GROUP BY department` groups employees by department
* `AVG(salary)` calculates average salary per department
* `HAVING AVG(salary) > 30000` filters departments based on average salary
* `ORDER BY avg_salary DESC` sorts the output in descending order

---

## ✅ Learning Outcomes

After completing this experiment, students will be able to:

* Apply filtering using `WHERE`
* Group data using `GROUP BY`
* Use `HAVING` with aggregate functions
* Sort query results using `ORDER BY`
* Understand how a single SQL query can perform multiple operations efficiently

---

## 📌 Conclusion

This experiment demonstrates the effective use of SQL SELECT queries with multiple clauses to analyze data from an existing table. It highlights how SQL can perform filtering, grouping, aggregation, and sorting in a concise and efficient manner, which is essential for real-world database applications.

