1.
select ProductName as Name
from Products

2.
select 
*from Customers as Client

3.
select ProductName 
from Products
union
select ProductName 
from  Products_Discounted

4.
select *from Products
intersect
select *from Products_Discounted

5.
select distinct FirstName, Country from Customers
	
6.
select ProductName,Category,
case 
	when Price>1000 then 'High'
	else 'Low'
end as Case_Price
from Products

7.
select ProductName, Price, Category,
iif(StockQuantity>100 , 'Yes' , 'No') as Stock
from Products_Discounted

8.
select ProductName from Products
union
select ProductName from OutOfStock

9.
select *from Products
except
select *from Products_Discounted

10.
select ProductName, Category,
IIF(Price>1000,'Expensive', 'Affordable')as Price_Conditional
from Products

11.
select 
*from Employees
where Age>25 or Salary> 60000

12.
select *from Employees
update Employees
set Salary = Salary*1.1
where DepartmentName ='HR' or EmployeeId=5

13.
select *from Products
intersect
select * from Products_Discounted

14.
select 
case
	when SaleAmount>500 then 'Top Tier'
	when SaleAmount  BETWEEN 200 AND 500 then 'Mid Tier'
	else 'Low Tier'
end as CaseSaleAmount,
*from Sales
	
15.
select CustomerID from Orders
except
select CustomerID from Invoices

16.
select 
case
	when Quantity>1 then '3%'
	when Quantity between 1 and 3 then '5%'
	else '7%'
	
end as CaseQuantity,
*from Orders
