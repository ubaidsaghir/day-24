CREATE TABLE employee_records(
employee_id SERIAL PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
position VARCHAR(50),
salary INT,
hire_date DATE,
city VARCHAR(50)
);


INSERT INTO employee_records(name,age,department,position,salary,hire_date,city)
VALUES
('Ubaid',22,'IT','Data Analyst',60000,'2023-01-10','Multan'),
('Ali',25,'IT','Data Engineer',90000,'2022-05-12','Lahore'),
('Ahmad',27,'HR','HR Manager',75000,'2021-03-15','Karachi'),
('Sara',24,'Finance','Accountant',65000,'2023-02-20','Lahore'),
('Haris',29,'IT','ML Engineer',120000,'2020-11-10','Islamabad'),
('Awais',26,'Sales','Sales Manager',70000,'2022-08-05','Multan'),
('Nimra',23,'HR','Recruiter',55000,'2023-06-12','Karachi'),
('Zain',28,'Finance','Financial Analyst',85000,'2021-09-18','Lahore'),
('Huzaifa',30,'IT','Backend Developer',95000,'2019-12-01','Multan'),
('Iqra',24,'Sales','Sales Executive',50000,'2023-04-14','Karachi');

SELECT * FROM employee_records;


-- High Salary Employees
-- Show employees:
-- salary > 80000


SELECT * FROM employee_records
WHERE salary > 80000
ORDER BY salary DESC;


-- Show employees:
-- department = IT
-- Sirf show karo:
-- name,position,salary

SELECT name,position,salary FROM employee_records
WHERE department = 'IT';

-- Show employees city:
-- Lahore OR Karachi

SELECT * FROM employee_records
WHERE city = 'Lahore' OR city = 'Karachi';


-- Show employees :
-- department = IT
-- salary > 90000

SELECT * FROM employee_records
WHERE department = 'IT' AND salary > 90000;


-- Show all employees:
-- salary DESC
-- phir age ASC

SELECT * FROM employee_records
ORDER BY salary DESC, age ASC;


SELECT name, salary * 0.10 AS tax FROM employee_records;
