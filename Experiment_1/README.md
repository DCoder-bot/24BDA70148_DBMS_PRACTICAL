📚 Library Management System – Database Design
📌 Aim

To design and implement a Library Management System database using SQL by creating normalized tables with appropriate primary keys, foreign keys, and constraints, and to perform DML and DCL operations such as role creation, privilege granting, and revoking to ensure secure and efficient data management.

🛠️ Technologies Used

Database: PostgreSQL / SQL-compliant RDBMS

Language: SQL

🗂️ Database Schema Overview

The system consists of the following tables:

BOOK_DETAILS

LIBRARY_USERS

BOOK_TRANSACTIONS

Additionally, roles and privileges are managed using SQL DCL commands.

📘 Table Descriptions
1️⃣ BOOK_DETAILS Table

Stores information about books available in the library.

Column Name	Data Type	Constraints
BOOK_ID	INT	Primary Key
TITLE	VARCHAR(30)	NOT NULL
AUTHOR	VARCHAR(30)	NOT NULL
COPIES_AVAILABLE	INT	CHECK (COPIES_AVAILABLE ≥ 1)

✔ Ensures at least one copy of a book is available.

2️⃣ LIBRARY_USERS Table

Stores details of users registered in the library.

Column Name	Data Type	Constraints
USER_ID	INT	Primary Key
FULL_NAME	VARCHAR(25)	NOT NULL
AGE	INT	NOT NULL, CHECK (AGE ≥ 17)
EMAIL_ID	VARCHAR(40)	UNIQUE

✔ Restricts registration to users aged 17 or above
✔ Prevents duplicate email registrations

3️⃣ BOOK_TRANSACTIONS Table

Maintains records of books issued to users.

Column Name	Data Type	Constraints
ISSUE_ID	INT	Primary Key
BOOK_ID	INT	Foreign Key → BOOK_DETAILS(BOOK_ID)
USER_ID	INT	Foreign Key → LIBRARY_USERS(USER_ID)
ISSUE_DATE	DATE	NOT NULL

✔ Maintains referential integrity between books and users

🔗 Relationships

One book can be issued multiple times

One user can issue multiple books

Foreign keys ensure valid references between tables

✏️ DML Operations Performed

INSERT – Add books, users, and issue records

SELECT – Retrieve data from tables

🔐 DCL (Data Control Language)
👤 Role Creation

A librarian role is created to manage library data:

CREATE ROLE LIBRARIAN_ROLE LOGIN PASSWORD 'lib123';

✅ Granting Privileges

The librarian is granted permissions on all tables:

GRANT SELECT, INSERT, UPDATE, DELETE
ON BOOK_DETAILS, BOOK_TRANSACTIONS, LIBRARY_USERS
TO LIBRARIAN_ROLE;

❌ Revoking Privileges

Restricting modification access on book data:

REVOKE INSERT, UPDATE, DELETE
ON BOOK_DETAILS
FROM LIBRARIAN_ROLE;

🎯 Key Features

Strong data integrity using constraints

Proper normalization

Secure access through roles and privileges

Efficient tracking of book transactions

Scalable and maintainable database design

📌 Conclusion

This project demonstrates a well-structured Library Management System database using SQL. By effectively applying DDL, DML, and DCL commands, the system ensures data accuracy, security, and flexibility, making it suitable for real-world library applications.
