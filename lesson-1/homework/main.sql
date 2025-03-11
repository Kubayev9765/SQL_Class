1. Display All Salespeople


create database Homework_1

create table Salesman(
	Salesman_ID int,
	Name varchar(20),
	City varchar(20),
	Comission decimal(5,2)
	)

insert into Salesman values(5001, 'James Hoog', 'New York', 0.15)
insert into Salesman values(5002, 'nail Knite', 'PAris', 0.13),
							(5005, 'Pit Alex','London', 0.11),
							(5006,'Mc Lyon', 'Paris', 0.14),
							(5007, 'Paul Adom', 'Rome', 0.13),
							(5003, 'Lausan Hen', 'San Jose', 0.12)
select *from Salesman

2. Display a Custom String
SELECT

3. Display Three Numbers
SELECT 25, 45, 55, 65

5. Arithmetic Expression Result
SELECT 25+45+55*65

  
6. Specific Columns of Salespeople
SELECT Salesman_ID, Name
FROM Salesman



  7. Custom Column Order in Orders

CREATE TABLE Orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2) NOT NULL,
    ord_date DATE NOT NULL,
    customer_id INT NOT NULL,
    salesman_id INT NOT NULL,
   
);

INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);


SELECT ord_date, salesman_id, ord_no, purch_amt
FROM orders;

8. Unique Salespeople IDs
SELECT salesman_id
FROM orders;

9. Salespeople in Paris
select Name, City 
from Salesman
where City='Paris'


10. Customers with Grade 200
create table Customer(
					Customer_ID int,
					Cust_Name varchar(20),
					City varchar(20),
					Grade int,
					Salesman_ID int
					)

insert into Customer values(3002, 'Nick Rimando', 'New York', 100, 5001)
insert into Customer values(3007, 'Brad Davis', 'New York', 200, 5001)
insert into Customer values(3005, 'Graham Zusi', 'California', 200, 5002)
insert into Customer values(3008, 'Julian Green', 'London', 300, 5002)
insert into Customer values(3004, 'Fabian Johnson', 'Paris', 300, 5006)
insert into Customer values(3009, 'Geoff Cameron', 'Berlin', 100, 5003)
insert into Customer values(3003, 'Jozy Altidor', 'Moskow', 200, 5007)
insert into Customer values(3001, 'Brad Guzan', 'London', NULL  , 5005)



select Customer_ID, Cust_Name,City,Grade,Salesman_ID
from Customer
where Grade=200

11. Orders by Salesperson 5001
select ord_no, ord_date, purch_amt
from Orders
where Salesman_id=5001

12. Nobel Winner of 1970

	create table Nobel_Win(
	YEAR INT,
	SUBJECT VARCHAR(20),
	WINNER VARCHAR(20),
	COUNTRY VARCHAR(20),
	CATEGORY VARCHAR(20)
	)




insert into Nobel_Win values(1970, 'Physics','Hannes Alfven','Sweden', 'Scientist')
insert into Nobel_Win values(		1970, 'Physics','Hannes Alfven','Sweden', 'Scientist')
insert into Nobel_Win values(		1970, 'Physics','Louis Neel', 'France', 'Scientist')
insert into Nobel_Win values(		1970, 'Chemistry',' Luis Federico Lel','France','Scientist')
insert into Nobel_Win values(		1970, 'Physiology',' Ulf von Euler',' Sweden',' Scientist')
insert into Nobel_Win values(		1970, 'Physiology',' Bernard Katz',' Germany ',' Scientist')
insert into Nobel_Win values(		1970, 'Literature ', 'Aleksandr', ' Solzhenitsyn',  'Russia')
insert into Nobel_Win values(		1970, 'Economics ',  'Paul Samuelson ', 'USA', 'Economist')
insert into Nobel_Win values(		1971, 'Physics ',  'Dennis Gabor ', 'Hungary ','Scientist')
insert into Nobel_Win values(		1971, 'Chemistry ', ' Gerhard Herzberg', ' Germany ','Scientist')
insert into Nobel_Win values(		1971, 'Peace ',  ' Willy Brandt', 'Germany ', 'Chancellor')
insert into Nobel_Win values(		1971, 'Literature ', 'Pablo Neruda ','Chile ', 'Linguist')
insert into Nobel_Win values(		1971, 'Economics','  Simon Kuznets ', 'Russia', 'Economist')
insert into Nobel_Win values(		1978, 'Peace', ' Anwar al-Sadat  ',  'Egypt ',  'President')
insert into Nobel_Win values(		1978, 'Peace  ', ' Menachem Begin ', 'Israel', 'Prime Minister')
insert into Nobel_Win values(		1987, 'Chemistry ','Donald J. Cram ', 'USA  ', 'Scientist')
insert into Nobel_Win values(		1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist')
insert into Nobel_Win values(		1987, 'Physiology', 'Susumu Tonegawa', 'Japan ', 'Scientist')
insert into Nobel_Win values(		1994, 'Economics', 'Reinhard Selten', 'Germany','Economist')
insert into Nobel_Win values(		1994, 'Peace', 'Yitzhak Rabin', 'Israel ', 'Prime Minister')
insert into Nobel_Win values(		1987, 'Physics', 'Johannes Georg Bednorz', 'Germany ', 'Scientist')
insert into Nobel_Win values(		1987, 'Literature',' Joseph Brodsky','Russia ','Linguist')
insert into Nobel_Win values(		1987, 'Economics',' Robert Solow','USA ','Economist')
insert into Nobel_Win values(		1994, 'Literature',' Kenzaburo Oe ', 'Japan','Linguist')



select YEAR, SUBJECT, WINNER
from Nobel_Win
where YEAR=1970
