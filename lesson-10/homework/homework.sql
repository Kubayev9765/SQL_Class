1.
SELECT 
    e.Name, 
    e.Salary, 
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    e.Salary > 50000;
2.
SELECT 
    c.FirstName,
    c.LastName,
    o.OrderDate
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    YEAR(o.OrderDate) = 2023;
3.
  SELECT 
    e.Name,
    d.DepartmentName
FROM 
    Employees e
LEFT JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID;

4.
SELECT 
    s.SupplierName,
    p.ProductName
FROM 
    Suppliers s
LEFT JOIN 
    Products p ON s.SupplierID = p.SupplierID;

5.
SELECT 
    o.OrderID,
    o.OrderDate,
    p.PaymentDate,
    p.Amount
FROM 
    Orders o
FULL OUTER JOIN 
    Payments p ON o.OrderID = p.OrderID;

6.
SELECT 
    e.Name AS EmployeeName,
    m.Name AS ManagerName
FROM 
    Employees e
LEFT JOIN 
    Employees m ON e.ManagerID = m.EmployeeID;

7.
SELECT 
    s.Name,
    c.CourseName
FROM 
    Students s
JOIN 
    Enrollments e ON s.StudentID = e.StudentID
JOIN 
    Courses c ON e.CourseID = c.CourseID
WHERE 
    c.CourseName = 'Math 101';
8.

SELECT 
    c.FirstName,
    c.LastName,
    o.Quantity
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    o.Quantity > 3;

9.
SELECT 
    e.Name,
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName = 'Human Resources';
10.

SELECT 
    d.DepartmentName,
    COUNT(e.EmployeeID) AS EmployeeCount
FROM 
    Departments d
JOIN 
    Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY 
    d.DepartmentName
HAVING 
    COUNT(e.EmployeeID) > 5;

11.
SELECT 
    p.ProductID,
    p.ProductName
FROM 
    Products p
LEFT JOIN 
    Sales s ON p.ProductID = s.ProductID
WHERE 
    s.ProductID IS NULL;
12.SELECT 
    c.FirstName,
    c.LastName,
    COUNT(o.OrderID) AS TotalOrders
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerID, c.FirstName, c.LastName
HAVING 
    COUNT(o.OrderID) > 0;
13.
SELECT 
    e.Name,
    d.DepartmentName
FROM 
    Employees e
INNER JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID;

14.
SELECT 
    e1.Name AS Employee1,
    e2.Name AS Employee2,
    e1.ManagerID
FROM 
    Employees e1
JOIN 
    Employees e2 ON e1.ManagerID = e2.ManagerID
WHERE 
    e1.EmployeeID < e2.EmployeeID;

15.
SELECT 
    o.OrderID,
    o.OrderDate,
    c.FirstName,
    c.LastName
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
WHERE 
    YEAR(o.OrderDate) = 2022;

16.
SELECT 
    e.Name,
    e.Salary,
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName = 'Sales'
    AND e.Salary > 60000;
17.
SELECT 
    o.OrderID,
    o.OrderDate,
    p.PaymentDate,
    p.Amount
FROM 
    Orders o
INNER JOIN 
    Payments p ON o.OrderID = p.OrderID;
18.
SELECT 
    p.ProductID,
    p.ProductName
FROM 
    Products p
LEFT JOIN 
    Orders o ON p.ProductID = o.ProductID
WHERE 
    o.ProductID IS NULL;
19.
SELECT 
    e.Name,
    e.Salary
FROM 
    Employees e
WHERE 
    e.Salary > (
        SELECT 
            AVG(e2.Salary)
        FROM 
            Employees e2
        WHERE 
            e2.DepartmentID = e.DepartmentID
    );
20.
SELECT 
    o.OrderID,
    o.OrderDate
FROM 
    Orders o
LEFT JOIN 
    Payments p ON o.OrderID = p.OrderID
WHERE 
    p.OrderID IS NULL
    AND o.OrderDate < '2020-01-01';
21.
SELECT 
    p.ProductID,
    p.ProductName
FROM 
    Products p
LEFT JOIN 
    Categories c ON p.CategoryID = c.CategoryID
WHERE 
    c.CategoryID IS NULL;

22.
SELECT 
    e1.Name AS Employee1,
    e2.Name AS Employee2,
    e1.ManagerID,
    e1.Salary AS Salary1,
    e2.Salary AS Salary2
FROM 
    Employees e1
JOIN 
    Employees e2 ON e1.ManagerID = e2.ManagerID
WHERE 
    e1.EmployeeID < e2.EmployeeID
    AND e1.Salary > 60000
    AND e2.Salary > 60000;
23.
SELECT 
    e.Name,
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName LIKE 'M%';
24.
SELECT 
    s.SaleID,
    p.ProductName,
    s.SaleAmount
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
WHERE 
    s.SaleAmount > 500;

25.
SELECT 
    s.StudentID,
    s.Name
FROM 
    Students s
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollments e
    JOIN Courses c ON e.CourseID = c.CourseID
    WHERE 
        e.StudentID = s.StudentID
        AND c.CourseName = 'Math 101'
)
26.
SELECT 
    o.OrderID,
    o.OrderDate,
    p.PaymentID
FROM 
    Orders o
LEFT JOIN 
    Payments p ON o.OrderID = p.OrderID
WHERE 
    p.PaymentID IS NULL;

27.
SELECT 
    p.ProductID,
    p.ProductName,
    c.CategoryName
FROM 
    Products p
JOIN 
    Categories c ON p.CategoryID = c.CategoryID
WHERE 
    c.CategoryName IN ('Electronics', 'Furniture');


