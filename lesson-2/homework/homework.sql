1.
  CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
	)
2.
INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'Alice Johnson', 55000.00)
INSERT INTO Employees (EmpID, Name, Salary)
VALUES (2, 'Bob Smith', 62000.00)
INSERT INTO Employees (EmpID, Name, Salary)
VALUES 
    (3, 'Charlie Davis', 58000.00),
    (4, 'Diana King', 60000.00)
3.
UPDATE Employees
SET Salary = 58000.00
WHERE EmpID = 1

4.
DELETE FROM Employees
WHERE EmpID = 2

5.
CREATE TABLE Student (
    ID INT,
    Name VARCHAR(50)
)
INSERT INTO Student (ID, Name)
VALUES (1, 'John'), (2, 'Jane'), (3, 'Jack')
DELETE FROM Student
WHERE ID = 2
TRUNCATE TABLE Student
DROP TABLE Student

6.
ALTER TABLE Employees
ALTER COLUMN Name  VARCHAR(100)

7.
ALTER TABLE Employees
ADD Department varchar(50)

8.
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;

9.
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
)

10.
TRUNCATE TABLE Employees;

11.
INSERT INTO Departments (department_id, department_name, manager_id, location_id)
SELECT employee_id,  employee_name, manager_id, location_id
FROM Employees
WHERE ROWNUM <= 5

12.
UPDATE employees
SET department = 'Management'
WHERE salary > 5000

13.
TRUNCATE TABLE employees;

14.
ALTER TABLE Employees
DROP COLUMN Department


15.
ALTER TABLE Employees RENAME TO StaffMembers

16.
DROP TABLE Departments

17.
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
)

18.
ALTER TABLE Order
ADD CONSTRAINT Price CHECK (Price > 0)

19.
ALTER TABLE Customers
ADD Customer_Age INT DEFAULT 50

20.
ALTER TABLE Category RENAME TO ProductCategory

21.
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES (1, 'Wireless Mouse', 'Electronics', 25.99, 100);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES (2, 'Bluetooth Speaker', 'Electronics', 49.99, 50);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES (3, 'Coffee Mug', 'Kitchenware', 9.99, 200);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES (4, 'Notebook', 'Stationery', 3.49, 500);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES (5, 'LED Desk Lamp', 'Home Decor', 18.75, 75)

22.
SELECT * INTO Products_Backup
FROM Products

23.
ALTER TABLE Products RENAME TO Inventory;

24.
ALTER TABLE Inventory
MODIFY COLUMN Price FLOAT

25.
ALTER TABLE Products
ADD ProductCode INT IDENTITY(1000, 5)




