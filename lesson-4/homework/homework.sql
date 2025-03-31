1.
select top(5) *from Employees

2.
select distinct ProductName from Products


3.
select 
*from Products
where Price>100

4.
select *from Customers
where FirstName  like 'A%'

5.
select *from Products
order by Price asc

6.
select *from Employees
where  Salary >= 5000 and DepartmentName = 'HR'

7.	
select isnull(Email, 'noemail@example.com') from Customers

8.
select *
from Products
where Price BETWEEN 50 AND 100

9.
select distinct Category , ProductName 
from Products

10.
select distinct Category, ProductName 
from Products
order by ProductName desc


11.
select top(10) Price from Products
order by Price desc

12.
select LastName, 
FirstName, 
COALESCE(FirstName,LastName) as ColName, 
*from employees

13.
select distinct Category, Price  from Products

14.
select *from employees
where Age  between 30 and 40  
or 
DepartmentName = 'Marketing'

15.
select *from employees
order by salary desc
offset 10  rows fetch next 10 rows only

16.
where Price <= 1000 and StockQuantity > 50
order by StockQuantity asc

17.
select *from Products
where ProductName like '%e%'

18.
select *from Employees
where DepartmentName in('HR', 'IT',  'Finance')

19.
select *from Customers
order by City asc, PostalCode desc

20.
select top (10) 
*from Sales
order by SaleAmount desc
select *from
21.
select concat(FirstName, ' ', LastName) as FulName 
from Employees

22.
select 
distinct Category, 
ProductName, 
ProductName,
Price
from Products
where Price>50


23.
 select 
 *from Products
 where Price between(select AVG(Price) * 0.9 from Products) 
					AND 
					(select AVG(Price) * 1.1 from Products) 

 
24.
select * 
from Employees
where Age < 30 
AND DepartmentName IN ('HR', 'IT');

25.
select 
*from Customers
where Email like('%@gmail.com')

26.
select * 
from Employees 
where Salary > ALL (
    select Salary 
    from Employees 
    where DepartmentName = 'Sales')
	
27.
SELECT *
FROM Orders
WHERE orderdate BETWEEN DATEADD(day, -180, CURRENT_TIMESTAMP) AND CURRENT_TIMESTAMP;

