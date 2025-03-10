1. Salespeople from Paris or Rome

create table Salesmen(
	salesman_id int,
	name varchar(50),
	city varchar(50),
	commission decimal(4,2)
	)

insert into Salesmen 
values
	(5001, 'James Hoog', 'New York', 0.15),
	(5002, 'Nail Knite', 'Paris', 0.13),
	(5005, 'Pit Alex', 'London', 0.11),
	(5006, 'Mc Lyon', 'Paris', 0.14),
	(5007, 'Paul Adom', 'Rome', 0.13),
	(5003, 'Lausen Hen', 'San Jose', 0.12)

select *from Salesmen
where  city='Paris' or city='Rome

2. Salespeople in Paris or Rome
	
select *from Salesmen	
where city in  ('Paris' , 'Rome' )

3. Salespeople Not in Paris or Rome
	
select *from Salesmen
where city not in  ('Paris' , 'Rome' )


4. Customers with Specific IDs


select *from Customers
where customer_id in (3007,3008,3009)

5. Salespeople with Commission 0.12-0.14
	
select *from Salesmen
where commission between 0.12 and  0.14
	
