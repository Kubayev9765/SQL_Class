Write a query to select the top 5 employees from the Employees table.
select top (5) 
*from employees
order by manager_id desc

Use SELECT DISTINCT to select unique ProductName values from the Products table.
select distinct Name from Products

Write a query that filters the Products table to show products with Price > 100.
select 
*from Products
where Price>100

Write a query to select all CustomerName values that start with 'A' using the LIKE operator.
select *from Customers
where CustomerName  like 'A%'

Order the results of a Products query by Price in ascending order.
select *from Products
order by Price asc

Write a query that uses the WHERE clause to filter for employees with Salary >= 5000 and Department = 'HR'.
select *from Employees
 where  Salary >= 5000 and Department = 'HR'

Use ISNULL to replace NULL values in the Email column with the text "noemail@example.com".
select isnull(Email, 'noemail@example.com') from Customers

Write a query that shows all products with Price BETWEEN 50 AND 100.
select *
from Products
where Price BETWEEN 50 AND 100

Use SELECT DISTINCT on two columns (Category and ProductName) in the Products table.

select distinct Category,Name 
from Products
where Category= 'Accessories'

Order the results by ProductName in descending order
select Name from Products
order by Name desc


Write a query to select the top 10 products from the Products table, ordered by Price DESC.
select top(10) Price from Products
order by Price desc

Use COALESCE to return the first non-NULL value from FirstName or LastName in the Employees table.
select last_name, first_name, COALESCE(FirstName,LastName)  from employees

Write a query that selects distinct Category and Price from the Products table.
select distinct Category, Price  from Products
where Category='Accessories'

Write a query that filters the Employees table to show employees whose Age is either between 30 and 40 or Department = 'Marketing'.
select *from employees
where age =  between 30 and 40  or Department = 'Marketing'

Use OFFSET-FETCH to select rows 11 to 20 from the Employees table, ordered by Salary DESC.
select *from employees
order by salary desc
offset 20  rows fetch next 11 rows only


Write a query to display all products with Price <= 1000 and Stock > 50, sorted by Stock in ascending order.
select *from Products
where Price <= 1000 and StockQuantity > 50
order by StockQuantity asc

Write a query that filters the Products table for ProductName values containing the letter 'e' using LIKE.
select *from Products
where Name like 'e%'

Use IN operator to filter for employees who work in either 'HR', 'IT', or 'Finance'.
select *from Employees
where Department in('HR', 'IT',  'Finance')

Write a query that uses the ANY operator to find employees who earn more than the average salary of all employees.
select employee_id, first_name, last_name, salary
from employees
where salary > any (select AVG(salary) from employees);


Use ORDER BY to display a list of customers ordered by City in ascending and PostalCode in descending order.
select *from Customers
order by City asc, ZipCode desc


Use ORDER BY to display a list of customers ordered by City in ascending and PostalCode in descending order.
select *from Customers
order by City asc, ZipCode desc

 
Write a query that selects the top 10 products with the highest sales, using TOP(10) and ordered by SalesAmount DESC.
select top (10) 
*from Sales
order by SaleAmount desc


Use COALESCE to combine FirstName and LastName into one column named FullName in the Employees table.
select coalesce(first_name, ' ') + ' ' + coalesce(last_name,' ') as FullName
from employees

--Write a query to select the distinct Category, ProductName, and Price for products that are priced above $50, using DISTINCT on three columns.

select distinct Category, ProductName, Name from Products
select *from Products
where Price>50

Write a query that selects products whose Price is within 10% of the average price in the Products table.
  select 
 *from Products
 where Price between(select AVG(Price) * 0.9 from Products) 
					AND 
					(select AVG(Price) * 1.1 from Products) 
 
Use WHERE clause to filter for employees whose Age is less than 30 and who work in either the 'HR' or 'IT' department.
select * 
from Employees
where Age < 30 
AND Department IN ('HR', 'IT');

--Use LIKE with wildcard to select all customers whose Email contains the domain '@gmail.com'.
select 
*from Customers
where Email like('%@gmail.com')

Write a query that uses the ALL operator to find employees whose salary is greater than all employees in the 'Sales' department.
select * 
from Employees 
where Salary > ALL (
    select Salary 
    from Employees 
    where Department = 'Sales'
)

Use ANY with a subquery to select all employees who earn more than the average salary for their department.
select *
FROM employees e
where salary > ANY (
    select AVG(salary)
    from employees
    group by department_id
)
