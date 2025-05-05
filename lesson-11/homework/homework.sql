1.
SELECT 
    o.OrderID,
    c.FirstName,
	c.LastName,
    o.OrderDate
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
WHERE 
    o.OrderDate > '2022-12-31';
2.
SELECT 
    e.Name, 
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName IN ('Sales', 'Marketing')
3.
SELECT 
    d.DepartmentName, 
    MAX(e.Salary) AS MaxSalary
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY 
    d.DepartmentName;


4.
SELECT 
    c.FirstName,
	c.LastName,
    o.OrderID, 
    o.OrderDate
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    c.Country = 'USA'
    AND YEAR(o.OrderDate) = 2023;

5.
SELECT 
    c.FirstName,
	
    COUNT(o.OrderID) AS TotalOrders
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.FirstName;

6.
SELECT 
    p.ProductName, 
    s.SupplierName
FROM 
    Products p
JOIN 
    Suppliers s ON p.SupplierID = s.SupplierID
WHERE 
    s.SupplierName IN ('Gadget Supplies', 'Clothing Mart');

7.
  SELECT 
    c.FirstName, 
    MAX(o.OrderDate) AS MostRecentOrderDate
FROM 
    Customers c
LEFT JOIN 
    Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.FirstName;

8.
SELECT 
    c.LastName, 
    o.TotalAmount
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    o.TotalAmount > 500;

	select *from Orders
9.
SELECT 
    p.ProductName, 
    s.SaleDate, 
    s.SaleAmount
FROM 
    Products p
JOIN 
    Sales s ON p.ProductID = s.ProductID
WHERE 
    YEAR(s.SaleDate) = 2022 
    OR s.SaleAmount > 400;
10.
SELECT 
    p.ProductName, 
    SUM(s.SaleAmount) AS TotalSalesAmount
FROM 
    Products p
JOIN 
    Sales s ON p.ProductID = s.ProductID
GROUP BY 
    p.ProductName;
11.
SELECT 
    e.Name, 
    d.DepartmentName, 
    e.Salary
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName = 'HR' 
    AND e.Salary > 60000;
12.
SELECT 
    p.ProductName, 
    s.SaleDate, 
    p.StockQuantity
FROM 
    Products p
JOIN 
    Sales s ON p.ProductID = s.ProductID
WHERE 
    YEAR(s.SaleDate) = 2023
    AND p.StockQuantity > 100;
13.
SELECT 
    e.Name, 
    d.DepartmentName, 
    e.HireDate
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName = 'Sales' 
    OR e.HireDate > '2020-12-31';
14.
SELECT 
    c.LastName,
	c.FirstName,
    o.OrderID, 
    c.Address, 
    o.OrderDate
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    c.Country = 'USA'
    AND c.Address like '^[0-9]{4}';
15.
SELECT 
    p.ProductName, 
    p.Category, 
    s.SaleAmount
FROM 
    Products p
JOIN 
    Sales s ON p.ProductID = s.ProductID
WHERE 
    p.ProductName = 'Electronics' 
    OR s.SaleAmount > 350;
16.
SELECT 
    c.CategoryName, 
    COUNT(p.ProductID) AS ProductCount
FROM 
    Categories c
LEFT JOIN 
    Products p ON c.CategoryID = p.Category
GROUP BY 
    c.CategoryName;

17.
SELECT 
    c.LastName, 
    c.City, 
    o.OrderID, 
    o.TotalAmount
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
WHERE 
    c.City = 'Los Angeles' 
    AND o.TotalAmount > 300;
18.
SELECT 
    e.Name, 
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName IN ('HR', 'Finance')
    OR LEN(REPLACE(e.Name, '[^aeiouAEIOU]', '')) >= 4;

19.
SELECT 
    e.Name, 
    d.DepartmentName, 
    e.Salary
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName IN ('Sales', 'Marketing')
    AND e.Salary > 60000;
