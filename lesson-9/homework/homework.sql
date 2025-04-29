1.
select p.ProductName, s.SupplierName
from Products as p join Suppliers s
on p.SupplierID=s.SupplierID

2.
select d.DepartmentID,
		d.DepartmentName,
		e.EmployeeID,
		e.Name
from Departments d 
cross join 
Employees e

3.
select s.SupplierName, p.ProductName from Products p
join
Suppliers s
on 
p.SupplierID= s.SupplierID

4.
select c.FirstName, c.LastName , o.OrderID
from Orders o
join
Customers c
on 
o.CustomerID= c.CustomerID

5.
select s.StudentID, s.Name, c.CourseID, c.CourseName
from Students s
cross join
Courses c

6.
select o.OrderID, p.ProductName
from Products p
join
Orders o
on  
p.ProductID= o.ProductID

7.
 select e.EmployeeID, e.Name ,d.DepartmentName
 from Employees e
 join 
 Departments d
 on 
 e.DepartmentID= d.DepartmentID

8.
SELECT s.Name, e.courseID
FROM Students s
JOIN Enrollments e ON s.studentID = e.studentID;

9.
SELECT o.orderID, o.orderDate, p.paymentID, p.paymentDate
FROM Orders o
JOIN Payments p ON o.orderID = p.orderID;

10.
SELECT o.orderID, p.productName, p.Price
FROM Orders o
JOIN Products p ON o.productID = p.productID
WHERE p.Price > 100;

11.
select
e.DepartmentID,
e.Name,
d.DepartmentName
from Employees e
join
Departments d
on 
e.DepartmentID= d.DepartmentID

12.
 select o.orderID, p.productName, o.quantity AS orderedQuantity, p.stockQuantity
 from Orders o
 join
 Products p
 on
 o.ProductID=p.ProductID
 where o.Quantity> p.StockQuantity

13.
select c.FirstName,
	c.LastName,
	s.productID, 
	s.saleAmount
from Customers c
join
Sales s
on 
c.CustomerID= s.CustomerID
where s.SaleAmount> 500

14.
select s.StudentID,
		s.Name,
		c.CourseName
from Students s
join
Enrollments e
on 
s.StudentID=e.StudentID 
join Courses c
on 
e.CourseID= c.CourseID

15.
select p.productName, s.supplierName
from Products p
join
Suppliers s
on 
p.SupplierID= s.SupplierID
where SupplierName like '%Tech%'

16.
select  o.orderID, 
		o.totalAmount, 
		p.Amount

from Orders o
join
Payments p
on
o.OrderID= p.OrderID
where p.Amount < o.TotalAmount

17.
SELECT  e.Name, 
		e.salary,
		m.Name AS managerName, 
		m.salary AS managerSalary
FROM Employees e
JOIN Employees m 
ON 
e.managerID = m.employeeID
WHERE e.salary > m.salary;

18.
SELECT	p.productName, 
		c.categoryName
FROM Products p
JOIN 
Categories c 
ON p.categoryID = c.categoryID
WHERE c.categoryName IN ('Electronics', 'Furniture');

19.
select s.saleID, 
		s.productID, 
		s.saleAmount, 
		c.FirstName, 
		c.LastName, 
		c.country		
from Customers c
join 
Sales s
ON
c.CustomerID= s.CustomerID
where c.Country='USA'

20.
select  o.orderID, 
		o.totalAmount, 
		c.FirstName,
		c.LastName, 
		c.country
from Customers c
join
Orders o
on 
c.CustomerID= o.CustomerID and  c.Country like'Germany'
where o.TotalAmount>100

select  o.orderID, 
		o.totalAmount, 
		c.FirstName,
		c.LastName, 
		c.country
from Customers c
join
Orders o
on 
c.CustomerID= o.CustomerID and  c.Country ='Germany'
where o.TotalAmount>100

select  o.orderID, 
		o.totalAmount, 
		c.FirstName,
		c.LastName, 
		c.country
from Customers c
join
Orders o
on 
c.CustomerID= o.CustomerID   
where c.Country ='Germany' and o.TotalAmount>100

select  o.orderID, 
		o.totalAmount, 
		c.FirstName,
		c.LastName, 
		c.country
from Customers c
join
Orders o
on 
c.CustomerID= o.CustomerID   
where c.Country like'Germany' and o.TotalAmount>100

21.
SELECT e1.Name AS Employee1, 
        e2.Name AS Employee2,
       e1.departmentID AS Dept1, 
        e2.departmentID AS Dept2
FROM Employees e1
JOIN Employees e2 
  ON 
  e1.employeeID < e2.employeeID
WHERE e1.departmentID <> e2.departmentID

22.
SELECT   p.paymentID, 
        o.orderID, 
        pr.productName, 
        o.quantity, 
        pr.Price, 
        p.Amount
FROM Payments p
JOIN Orders o 
ON 
  p.orderID = o.orderID
JOIN Products pr 
ON 
  o.productID = pr.productID
WHERE p.Amount <> (o.quantity * pr.Price)

23.
SELECT s.Name
FROM Students s
LEFT JOIN 
Enrollments e 
ON 
s.studentID = e.studentID
WHERE e.courseID IS NULL

24.
SELECT m.employeeID AS managerID, 
		m.Name AS managerName,
       e.employeeID AS employeeID, 
	   e.Name AS employeeName,
       m.salary AS managerSalary, 
	   e.salary AS employeeSalary
FROM Employees e
JOIN 
Employees m 
ON
e.managerID = m.employeeID
WHERE m.salary <= e.salary;


25.
SELECT c.customerID, 
		c.FirstName, 
		c.LastName, 
		o.orderID
FROM Customers c
JOIN 
Orders o 
ON 
c.customerID = o.customerID
LEFT JOIN 
Payments p 
ON 
o.orderID = p.orderID
WHERE p.paymentID IS NULL;








