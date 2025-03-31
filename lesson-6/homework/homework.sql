--CREATE DATABASE LESSON_6
--USE LESSON_6

CREATE TABLE [dbo].[TestMultipleZero]
(
    [A] [int] NULL,
    [B] [int] NULL,
    [C] [int] NULL,
    [D] [int] NULL
)

INSERT INTO [dbo].[TestMultipleZero](A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0)

CREATE TABLE FruitCount
(
    Name VARCHAR(20),
    Fruit VARCHAR(25)
);

INSERT INTO FruitCount(Name, Fruit) 
VALUES
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'APPLE'),
    ('Neeraj', 'ORANGE'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Isha', 'MANGO'),
    ('Isha', 'MANGO'),
    ('Isha', 'APPLE'),
    ('Isha', 'ORANGE'),
    ('Isha', 'LICHI'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'ORANGE'),
    ('Gopal', 'LICHI'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'ORANGE'),
    ('Mayank', 'LICHI');

Create table numbers (number int)

insert into numbers values
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100)
--Task 1
SELECT *from [dbo].TestMultipleZero
where a!=0 or b!=0 or c!=0 or d!=0 

SELECT *from [dbo].TestMultipleZero
where a+b+c+d > 0

SELECT *from [dbo].TestMultipleZero
where not (a=0 and b=0 and c=0 and d=0) 

--Task 2
select 
Name, 
Fruit ,
case Fruit when 'Mango' then 1 else 0 
end
from FruitCount

select 
Name, 
Fruit ,
case Fruit when 'Mango' then 1 else 0 end  as Mango,
case Fruit when 'Apple' then 1 else 0 end as Apple
from FruitCount

select 
Name, 
Fruit ,
case Fruit when 'Mango' then 1 else 0 end  as Mango,
case Fruit when 'Apple' then 1 else 0 end as Apple
from FruitCount

select 
Name, 
sum(case Fruit when 'Mango' then 1 else 0 end)  as Mango,
sum(case Fruit when 'Apple' then 1 else 0 end) as Apple,
sum(case Fruit when 'Lichi' then 1 else 0 end) as Lichi
from FruitCount
group by Name

--Task 3

create table GroupeMultipleColumns
(
ID INT,
Typ VARCHAR(1),
Value1 VARCHAR(1),
Value2 VARCHAR(1),
Value3 VARCHAR(1)
);
INSERT INTO	GroupeMultipleColumns(ID,Typ,Value1,Value2,Value3)
values
(1,'I','a','b',''),
(2,'O','a','d','f'),
(3,'I','d','b',''),
(4,'O','g','l',''),
(5,'I','z','g','a'),
(6,'I','z','g','a')
select *from GroupeMultipleColumns




