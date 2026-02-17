# Experiment 1 – Library Management System Database

## Experiment
Experiment 1: Design and implementation of a Library Management System using PostgreSQL with DDL, DML and DCL commands.

---

## Aim
The aim of this experiment is to design and implement a Library Management System database using PostgreSQL. The database is created using appropriate tables, primary keys, foreign keys and constraints. Data manipulation operations are performed and database security is implemented using roles and privileges.

---

## Objective
The objective of this experiment is to understand the use of DDL, DML and DCL commands in PostgreSQL. It also helps in learning role-based access control by creating roles and assigning permissions.

---

## Practical / Experiment Steps

1. Create tables for book details, library users and book transactions.
2. Apply primary keys, foreign keys and check constraints.
3. Insert sample records into the tables.
4. Display records using SELECT queries.
5. Create a database role named LIBRARIAN_ROLE.
6. Grant required permissions to the role.
7. Revoke permissions when required to ensure database security.

---

## Procedure of the Experiment

1. Open pgAdmin and connect to the PostgreSQL server.
2. Create a new database for the Library Management System.
3. Create tables BOOK_DETAILS, LIBRARY_USERS, and BOOK_TRANSACTIONS using CREATE TABLE command.
4. Define primary keys and foreign keys while creating tables.
5. Insert records into tables using INSERT command.
6. Retrieve data using SELECT command.
7. Create a role named LIBRARIAN_ROLE using CREATE ROLE command.
8. Grant SELECT, INSERT, UPDATE and DELETE permissions to the role.
9. Revoke INSERT, UPDATE and DELETE permissions from BOOK_DETAILS table.
10. Execute all queries and verify the output.

---

## Input / Output Details

### Input
SQL commands for table creation, insertion of records, selection of data, role creation, grant and revoke permissions.

### Output
Successful creation of tables, insertion and display of records, creation of role, granting and revoking of permissions.

---

## Screenshots / Outputs

### 1️⃣ Table Creation
<img src="screenshot/Screenshot 2026-01-30 at 8.12.24 AM.png" width="500"/>

### 2️⃣ DML Operations
<img src="screenshot/Screenshot 2026-01-30 at 8.13.23 AM.png" width="500"/>

### 3️⃣ SELECT Output
<img src="screenshot/Screenshot 2026-01-30 at 8.14.33 AM.png" width="500"/>

### 4️⃣ Role Creation and Grant
<img src="screenshot/Screenshot 2026-01-30 at 8.15.53 AM.png" width="500"/>

### 5️⃣ Revoke Permissions
<img src="screenshot/Screenshot 2026-01-30 at 8.15.53 AM.png" width="500"/>

---

## Learning Outcome
After completing this experiment, the student learned how to design a database using tables and constraints. The student also understood the use of DDL, DML and DCL commands in PostgreSQL and gained practical knowledge of role-based access control.
