1.
min (Price) as minPrice
from products
2.
select max(Salary)as maxSalary
from Employees
3.
select count(*)as Num_rows
from Customers

4.
select count (distinct(category))
from Products
  
5.
select sum (SaleAmount)as sumSaleAmount 
from Sales
where ProductID=7

6.
select avg(Age)as avgAge
from Employees

7.
select DepartmentName, count(*) as countDepName
from Employees
group by DepartmentName

8.
select 
Category,
min(Price)as minPrice,
max(Price)as maxPrice
from Products
group by Category

9.
select
CustomerID,
sum(SaleAmount)as sumCus_id
from Sales
group by CustomerID

10.
select 
DepartmentName,
COUNT(DepartmentName)as countDepName
from Employees
group by DepartmentName
having (COUNT(DepartmentName))>5

11.
select 
ProductID,
sum(SaleAmount) as sumSaleAmout,
avg(SaleAmount) as avgSaleAmout
from Sales
group by ProductID

12.
select
count (DepartmentName) as countHR
from Employees
where DepartmentName='hr'

13.
select
DepartmentName,
max(Salary)as maxSalary,
min(Salary)as minSalary
from Employees
group by DepartmentName
14.
select
DepartmentName,
avg(Salary) as avg_Salary
from Employees
group by DepartmentName

16.
select
DepartmentName,
avg(Salary) as avgSalari,
count(*) as countDepName
from Employees
group by DepartmentName

17.
select Category,
avg(Price) avgPrice
from Products
group by Category
having avg(Price) >400

18.
select 
year(SaleDate) as YearSalData,
sum(SaleAmount)as sumSalAmout
from Sales
group by year (SaleDate)

19.
select distinct(CustomerID) as countCustamer
from Orders
group by CustomerID
having count(OrderID)>=3  

20.
select 
DepartmentName,
sum(Salary) as sumSalary
from Employees
group by DepartmentName
having sum(Salary)>500000


