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

15.
select
DepartmentName,
avg(Salary) as avgSalari,
count(*) as countDepName
from Employees
group by DepartmentName

16.
select Category,
avg(Price) avgPrice
from Products
group by Category
having avg(Price) >400

17.
select 
year(SaleDate) as YearSalData,
sum(SaleAmount)as sumSalAmout
from Sales
group by year (SaleDate)

18.
select distinct(CustomerID) as countCustamer
from Orders
group by CustomerID
having count(OrderID)>=3  

19.
select 
DepartmentName,
sum(Salary) as sumSalary
from Employees
group by DepartmentName
having sum(Salary)>500000

20.
select 
Category,
AVG(Price) as avgPrice
from Products
group by Category
having avg(Price)>200

21.
select 
sum(SaleAmount) as sum_SaleAmount
from Sales
group by CustomerID
having sum(SaleAmount)>1500

22.
select 
DepartmentName,
sum(Salary) as sumSalary,
AVG(Salary)as avgSalary
from Employees
group by DepartmentName
having AVG(Salary)>65000

23.
select CustomerID,
max(TotalAmount)as maxTotalAmount,
min(TotalAmount) as minTotalAmout
from Orders
group by CustomerID
having min(TotalAmount)>=50

24.
select
 sum(SaleAmount) as sumSaleAmount,
count(distinct ProductID)as countProdId,
month(SaleDate) as monthSaleData
from Sales
group by month(SaleDate)
having count(distinct ProductID)>8

25.
select 
YEAR(OrderDate) as year,
MAX(TotalAmount)as maxTotalAmount,
MIN(TotalAmount)as minTotalAmount
from Orders
group by YEAR(OrderDate)


