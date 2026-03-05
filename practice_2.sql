-- CRUD TASKS

CREATE TABLE company(
employee_id SERIAL PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT,
city VARCHAR(50)
);

INSERT INTO company (name,department,salary,city)
VALUES 
('Ubaid','IT',50000,'Multan'),
('Ali','HR',60000,'Lahore'),
('Ahmad','Finance',70000,'Multan'),
('Rehman','Sales',80000,'Lahore'),
('Raheel','HR',90000,'Multan'),
('Awais','IT',55000,'Lahore'),
('Afzal','HR',85000,'Multan');

-- Show name and salary

SELECT name,salary FROM company;

SELECT * FROM company
WHERE salary > 60000;
-- USE UPDATE
UPDATE company
SET salary = 90000
WHERE name = 'Ubaid';

SELECT * FROM company;

-- USE UPDATE
UPDATE company
SET salary = salary + 500
WHERE department = 'HR';
-- USE DELETE
DELETE FROM company
WHERE salary < 70000;

-- USE DELETE
DELETE FROM company
WHERE name = 'Awais';