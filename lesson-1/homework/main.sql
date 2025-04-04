1.
Here are the definitions of the terms:
Data – Raw facts, figures, or information that can be processed or analyzed. 
	Data can be in various formats, such as text, numbers, images, or symbols, and 	it serves as the foundation for making decisions.
Database – A structured collection of data that is stored and managed to facilitate easy access, retrieval, and manipulation. 
	Databases can be simple (like a file-based storage system) or complex (like relational databases with multiple interconnected tables).
Relational Database – A type of database that organizes data into tables (relations) with predefined relationships between them. 
	It uses structured query language (SQL) to store, retrieve, and manage data efficiently. 
	Examples include MySQL, PostgreSQL, and Microsoft SQL Server
Table – A structured format within a database that consists of rows (records) and columns (fields). 
	Each column represents a specific attribute of the data, and each row represents a single record or entry in the table.
2.
	SQL Server, developed by Microsoft, is a powerful relational database management system (RDBMS). Here are five key features:
High Availability and Disaster Recovery (HADR) – 	SQL Server provides built-in features like Always On Availability Groups, failover clustering, and database mirroring to ensure business continuity.
Security and Compliance – It includes robust security features such as Transparent Data Encryption (TDE), Always Encrypted, Role-Based Access Control (RBAC), and auditing to comply with industry regulations.
Performance Optimization – SQL Server offers Query Store, Dynamic Management Views (DMVs), and Intelligent Query Processing to enhance performance and troubleshoot queries efficiently.
Integration and BI Capabilities – It supports SQL Server Integration Services (SSIS), SQL Server Reporting Services (SSRS), and SQL Server Analysis Services (SSAS) for ETL, reporting, and analytics.
Scalability and Cloud Integration – SQL Server supports on-premises, hybrid, and cloud-based deployments with seamless integration into Microsoft Azure for high scalability and flexibility.
3.
When connecting to SQL Server, there are two main authentication modes:
Windows Authentication Mode – This mode uses Windows credentials (Active Directory) for authentication. It relies on the user's Windows account to log in without requiring a separate username and password for SQL Server.
SQL Server Authentication Mode – This mode requires a username and password created within SQL Server. The credentials are stored in SQL Server and managed separately from Windows accounts.
4.
CREATE DATABASE SchoolDB;

5.
	CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
6.
SQL Server, SSMS, and SQL are related but serve different purposes in the database world. Here's how they differ:
SQL Server (Microsoft SQL Server)
A Relational Database Management System (RDBMS) developed by Microsoft.
It is used to store, manage, and retrieve data efficiently.
Provides security, scalability, and support for various data types.
Supports T-SQL (Transact-SQL), Microsoft's extension of SQL.
Includes services like SQL Server Agent (for automation), Reporting Services (SSRS), Integration Services (SSIS), and Analysis Services (SSAS).
SSMS (SQL Server Management Studio)
A Graphical User Interface (GUI) tool used to manage SQL Server.
Allows users to write and execute SQL queries, design databases, and manage database objects.
Provides features like query execution plans, performance monitoring, and security configuration.
Mainly used by database administrators and developers for database management and troubleshooting.
SQL (Structured Query Language)
A programming language used for managing and querying relational databases.
Standardized by ANSI and used in various database systems like SQL Server, MySQL, PostgreSQL, and Oracle.
Includes commands like SELECT, INSERT, UPDATE, and DELETE.
T-SQL (used in SQL Server) extends standard SQL with procedural features like variables, loops, and error handling.

Summary:
SQL Server = The actual database system.
SSMS = The tool to interact with SQL Server.
SQL = The language used to query and manipulate data.
Let me know if you need further clarification! 😊
7.
1. DQL (Data Query Language)
Purpose: Used to retrieve data from a database.
Command: SELECT
Example:
SELECT * FROM employees WHERE department = 'Sales';
Explanation: Retrieves all records from the employees table where the department is 'Sales'.
2. DML (Data Manipulation Language)
Purpose: Used for modifying data in tables.
Commands:
INSERT: Adds new records to a table.
UPDATE: Modifies existing records.
DELETE: Removes records from a table.
Examples:

INSERT INTO employees (id, name, department) VALUES (1, 'Alice', 'HR');

UPDATE employees SET department = 'Marketing' WHERE name = 'Alice';

DELETE FROM employees WHERE name = 'Alice';
Explanation:
The INSERT statement adds a new employee.
The UPDATE statement changes Alice’s department.
The DELETE statement removes Alice’s record.

3. DDL (Data Definition Language)
Purpose: Defines and modifies database structure.
Commands:
CREATE: Creates a new database object (table, view, index, etc.).
ALTER: Modifies an existing object.
DROP: Deletes an object.
TRUNCATE: Removes all records from a table without logging individual row deletions.
Examples:


CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
)

ALTER TABLE employees ADD COLUMN salary DECIMAL(10,2);
DROP TABLE employees;
Explanation:
CREATE defines a new table.
ALTER adds a new column (salary).
DROP permanently deletes the table.

4. DCL (Data Control Language)
Purpose: Manages permissions and access controls.

Commands:
GRANT: Gives permissions.
REVOKE: Removes permissions.
Examples:

GRANT SELECT, INSERT ON employees TO user1;
REVOKE INSERT ON employees FROM user1;
Explanation:
GRANT allows user1 to select and insert data in the employees table.
REVOKE removes the insert permission from user1.

5. TCL (Transaction Control Language)
Purpose: Manages transactions to ensure data integrity.
Commands:
COMMIT: Saves changes permanently.
ROLLBACK: Undoes changes if needed.
SAVEPOINT: Creates a point within a transaction to rollback to.
Examples:
BEGIN TRANSACTION;
UPDATE employees SET salary = salary + 500 WHERE department = 'Sales';
SAVEPOINT before_bonus;
UPDATE employees SET salary = salary + 1000 WHERE department = 'HR';
ROLLBACK TO before_bonus;
COMMIT;
Explanation:
Begins a transaction.
Increases salary for the Sales department.
Creates a savepoint before updating HR salaries.
Rolls back to the savepoint (undoing only the HR salary update).
COMMIT permanently saves the changes.
	
8.
INSERT INTO Students (StudentID, FirstName, LastName, Age, Grade)
VALUES 
    (1, 'John', 'Doe', 18, 'A'),
    (2, 'Jane', 'Smith', 19, 'B'),
    (3, 'Michael', 'Johnson', 20, 'A');

9.
Steps to Backup and Restore a SchoolDB Database
Backup Process
Open the Command Prompt (Windows) or Terminal (Linux/Mac).


cd C:\xampp\mysql\bin  # For XAMPP users on Windows
Execute the mysqldump command to create a backup:
mysqldump -u root -p SchoolDB > C:\backup\SchoolDB_backup.sql
Replace root with your MySQL username.
Enter your password when prompted.
Change C:\backup\SchoolDB_backup.sql to your desired backup location.

Restore Process
Open the Command Prompt (Windows) or Terminal (Linux/Mac).
Navigate to MySQL bin directory if necessary.
Login to MySQL:

mysql -u root -p
Enter your MySQL password when prompted.

Create the SchoolDB database if it does not exist:

CREATE DATABASE SchoolDB;
Exit MySQL and Restore the Backup:


mysql -u root -p SchoolDB < C:\backup\SchoolDB_backup.sql
This restores all tables and data from the backup file.

Verification
Login to MySQL again:


mysql -u root -p
Check if the database is restored:

SHOW DATABASES;
USE SchoolDB;
SHOW TABLES;
Now, your SchoolDB database is successfully backed up and restored!








