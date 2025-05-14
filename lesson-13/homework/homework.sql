1.
SELECT CONCAT(EMPLOYEE_ID, '-', first_name, ' ', last_name) AS employee_info
FROM employees
WHERE EMPLOYEE_ID = 100;

2.
UPDATE employees
SET phone_number = REPLACE(phone_number, '124', '999');



3.
select *from Employees

SELECT 
    first_name AS "First Name",
    LEN (first_name) AS "Name Length"
FROM 
    employees
WHERE 
    SUBSTRUNG(first_name, 1, 1) IN ('A', 'J', 'M')
ORDER BY 
    first_name;



SELECT 
    first_name AS "First Name",
    LEN(first_name) AS "Name Length"
FROM 
    Employees
WHERE 
    first_name LIKE 'A%' 
    OR first_name LIKE 'J%' 
    OR first_name LIKE 'M%'
ORDER BY 
    first_name;

4.
SELECT manager_id, SUM(salary) AS total_salary
FROM Employees
GROUP BY manager_id;
5.
SELECT Year1,
       CASE
           WHEN Max1 >= Max2 AND Max1 >= Max3 THEN Max1
           WHEN Max2 >= Max1 AND Max2 >= Max3 THEN Max2
           ELSE Max3
       END AS highest_value
FROM TestMax;
select* from TestMax


SELECT Year1, GREATEST(Max1, Max2, Max3) AS highest_value
FROM TestMax;


6.
SELECT *
FROM cinema
WHERE id % 2 = 1
  AND description != 'boring';


7.
SELECT *
FROM SingleOrder
ORDER BY id;


select * from person
8.
SELECT id, COALESCE(ssn, passportid, itin) AS first_non_null
FROM person;

--Medium Task

1.
SELECT
  FullName,
  SUBSTRING (FullName, ' ', 1) AS Firstname,
  SUBSTRING(SUBSTRING(FullName, ' ', 2), ' ', -1) AS Middlename,
  SUBSTRING(FullName, ' ', -1) AS Lastname
FROM Students;

SELECT
  FullName,
  SPLIT_PART(FullName, ' ', 1) AS Firstname,
  SPLIT_PART(FullName, ' ', 2) AS Middlename,
  SPLIT_PART(FullName, ' ', 3) AS Lastname
FROM Students;

SELECT
  FullName,
  -- First name: from start to first space
  SUBSTRING(FullName, 1, CHARINDEX(' ', FullName) - 1) AS Firstname,

  -- Middle name: between first and last space
  SUBSTRING(
    FullName,
    CHARINDEX(' ', FullName) + 1,
    CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1) - CHARINDEX(' ', FullName) - 1
  ) AS Middlename,

  -- Last name: from last space to end
  RIGHT(FullName, LEN(FullName) - CHARINDEX(' ', FullName, CHARINDEX(' ', FullName) + 1)) AS Lastname

FROM Students
WHERE FullName LIKE '% % %';  -- optional: only process rows with at least 3 parts


2.
SELECT *
FROM Orders
WHERE DeliveryState = 'TX'
  AND customerid IN (
    SELECT DISTINCT customerid
    FROM Orders
    WHERE DeliveryState = 'CA'
);

3.
select *from DMLTable

SELECT STRING_AGG(String, ', ') AS concatenated_values
FROM DMLTable;


4.
SELECT *
FROM Employees
WHERE LEN(CONCAT(first_name, last_name)) 
     - LEN(REPLACE(CONCAT(first_name, last_name), 'a', '')) >= 3;



5.
SELECT 
  department_id,
  COUNT(*) AS total_employees,
  100.0 * SUM(CASE WHEN DATEDIFF(YEAR, hire_date, GETDATE()) > 3 THEN 1 ELSE 0 END) / COUNT(*) AS percent_over_3_years
FROM Employees
GROUP BY department_id;


6.
SELECT 
    JobDescription,
    MAX(MissionCount) AS MaxExperience,
    MIN(MissionCount) AS MinExperience
FROM 
    Personal
GROUP BY 
    JobDescription;


SELECT DISTINCT
    JobDescription,
    FIRST_VALUE(SpacemanID) OVER (PARTITION BY JobDescription ORDER BY MissionCount DESC) AS MostExperiencedID,
    FIRST_VALUE(SpacemanID) OVER (PARTITION BY JobDescription ORDER BY MissionCount ASC) AS LeastExperiencedID
FROM 
    Personal;

SELECT 
    p1.JobDescription,
    (SELECT SpacemanID 
     FROM Personal p2 
     WHERE p2.JobDescription = p1.JobDescription 
     ORDER BY SELECT 
    p1.JobDescription,
    (SELECT SpacemanID 
     FROM Personal p2 
     WHERE p2.JobDescription = p1.JobDescription 
     ORDER BY MissionCount DESC 
     ) AS MostExperiencedID,
     
    (SELECT SpacemanID 
     FROM Personal p3 
     WHERE p3.JobDescription = p1.JobDescription 
     ORDER BY SELECT 
    p1.JobDescription,
    (SELECT SpacemanID 
     FROM Personal p2 
     WHERE p2.JobDescription = p1.JobDescription 
     ORDER BY MissionCount DESC 
     ) AS MostExperiencedID,
     
    (SELECT SpacemanID 
     FROM Personal p3 
     WHERE p3.JobDescription = p1.JobDescription 
     ORDER BY SELECT 
    p1.JobDescription,
    (SELECT SpacemanID 
     FROM Personal p2 
     WHERE p2.JobDescription = p1.JobDescription 
     ORDER BY MissionCount DESC 
     ) AS MostExperiencedID,
     
    (SELECT SpacemanID 
     FROM Personal p3 
     WHERE p3.JobDescription = p1.JobDescription 
     ORDER BY MissionCount ASC 
     ) AS LeastExperiencedID
FROM 
    Personal p1
GROUP BY 
    p1.JobDescription;
 ASC 
     ) AS LeastExperiencedID
FROM 
    Personal p1
GROUP BY 
    p1.JobDescription;
 ASC 
     LIMIT 1) AS LeastExperiencedID
FROM 
    Personal p1
GROUP BY 
    p1.JobDescription;
 DESC 
     LIMIT 1) AS MostExperiencedID,
     
    (SELECT SpacemanID 
     FROM Personal p3 
     WHERE p3.JobDescription = p1.JobDescription  
     ORDER BY MissionCount ASC 
     ) AS LeastExperiencedID
FROM 
    Personal p1
GROUP BY 
    p1.JobDescription;


--Difficult Tasks

1.



SELECT
    REPLACE('tf56sd#%OqH', '[^A-Z]', '') AS UppercaseLetters,
    REPLACE('tf56sd#%OqH', '[^a-z]', '') AS LowercaseLetters,
    REPLACE('tf56sd#%OqH', '[^0-9]', '') AS Numbers,
    REPLACE('tf56sd#%OqH', '[A-Za-z0-9]', '') AS OtherCharacters;
2.
SELECT 
    StudentID,
    Grade,
    SUM(Grade) OVER (ORDER BY StudentID) AS RunningTotal
FROM 
    Students;

5.
SELECT
  LEAST(PlayerA, PlayerB) AS Player1,
  GREATEST(PlayerA, PlayerB) AS Player2,
  SUM(Score) AS TotalScore
FROM PlayerScores
GROUP BY
  LEAST(PlayerA, PlayerB),
  GREATEST(PlayerA, PlayerB);
