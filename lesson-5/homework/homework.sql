select o.ord_no, o.purch_amt, c.cust_name, c.city, c.grade, o.salesman_id from orders o
JOIN customer c on o.customer_id = c.customer_id

select Name as ProductName 
from 
Products

select Name cust_name, 
Location cust_Lokation 
from 
Customers

select 
Name 
from 
Products
union
select Name  
from 
ProductDiscounts

select 
Name 
from 
Products
union INTERSECT
select Name  
from 
ProductDiscounts


select 
ProductID  
from Products
union All
select 
ProductID 
from Orders

select 
  distinct name ,
  Location 
from 
  Customers


select 
	case 
		WHEN Price>100 then 'HIGH'
		ELSE  'LOW'
	end
from 
	Products



select 
  COUNT(Name)as count 
from  
  Products
group by ProductID
