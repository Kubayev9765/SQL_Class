1.
SELECT 
    Category,  
    COUNT(*) AS TotalProducts
FROM 
    Products
GROUP BY 
    Category;

2.
select avg(Price)as avgPrice
from Products
group by Category
having Category='Electronics'

select AVG(Price) as avgPrice
from Products
where Category='Electronics'

3.
select *from Customers
where City like'L%'

4.
select ProductName from Products
where ProductName like'%er'

5.

select *from Customers
where Country like'%a'

6.
SELECT 
    MAX(Price) AS HighestPrice
FROM 
    Products

7.
select 
ProductName,
Category,
StockQuantity,
iif (StockQuantity<30,'Low Stock','Sufficient') as stock
from Products

8.
select Country,
COUNT(*) as CountMean
from customers
group by Country

9.
select Quantity,
MAX(TotalAmount) as MaxTotal,
MIN(TotalAmount) as MinTotal
from Orders
group by Quantity

10.
select CustomerID
from Orders
where YEAR(OrderDate)=2023
except
select CustomerID 
from Invoices

11.
select ProductName 
  from Products
union all
select  ProductName 
  from Products_Discounted
  
12.
select ProductName 
  from Products
union
select  ProductName 
  from Products_Discounted

13.
select OrderDate, AVG(TotalAmount) as avgTotalAmount from Orders
group by OrderDate

14.
select 
case 
	when StockQuantity<100 then 'LOW'
	WHEN StockQuantity between 100 and 500 THEN	'MID'
	WHEN StockQuantity>500 THEN	'HIGH'
	ELSE 'MercedesBenz'
end as PriseGroup,
ProductName from Products

15.
SELECT 
    DISTINCT City
FROM 
    Customers
ORDER BY 
    City ASC;
16.
SELECT 
    ProductID,
    SUM(SaleAmount) AS TotalSales
FROM 
    Sales
GROUP BY 
    ProductID;
17.
SELECT 
    ProductName
FROM 
    Products
WHERE 
    ProductName LIKE '%oo%';
18.
SELECT 
    ProductID
FROM 
    Products

INTERSECT

SELECT 
    ProductID
FROM 
    Products_Discounted;
19.
SELECT top(3)
    CustomerID,
    SUM(TotalAmount) AS TotalSpent
FROM 
    Invoices
GROUP BY 
    CustomerID
ORDER BY 
    TotalSpent DESC
20.
SELECT p.productID, p.productname
FROM Products p
LEFT JOIN Products_Discounted pd ON p.productID = pd.productID
WHERE pd.productID IS NULL

SELECT productID, productname
FROM Products
WHERE productID NOT IN (
    SELECT productID FROM Products_Discounted
)

21.
SELECT p.productname, COUNT(s.saleID) AS times_sold
FROM Products p
JOIN Sales s ON p.productID = s.productID
GROUP BY p.productname;

22.
SELECT top(5) productID, SUM(quantity) AS total_quantity
FROM Orders
GROUP BY productID
ORDER BY total_quantity DESC









