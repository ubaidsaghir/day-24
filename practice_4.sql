CREATE TABLE students (
std_id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
course VARCHAR(50) DEFAULT 'IT'
);

INSERT INTO students (name, course)
VALUES
('Ubaid','CS'),
('Ali','IT'),
('Sara','CS'),
('Iqra','Computer'),
('Nimra','Bio'),
('Emaan','Chemistry'),
('Zain','Math'),
('Haris','Computer'),
('Huzaifa','IT'),
('Awais','CS');

CREATE TABLE products (
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(50) NOT NULL,
price INT DEFAULT 0
);

INSERT INTO products (product_name, price)
VALUES
('Laptop', 50000),
('Mobile', 30000),
('Keyboard', 2000),
('Mouse', 1500),
('Shoes', 4000),
('Shirt', 1200),
('Bag', 2500),
('Headphones', 3500),
('Smartwatch', 8000),
('Monitor', 10000);


CREATE TABLE emp (
emp_id SERIAL PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE,
department VARCHAR(50) DEFAULT 'IT',
salary INT DEFAULT 0,
joining_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO emp (emp_name, email, department, salary, joining_date)
VALUES
('Ubaid','ubaid@gmail.com','IT',60000,'2023-01-10'),
('Ali','ali@gmail.com','IT',90000,'2022-05-12'),
('Ahmad','ahmad@gmail.com','HR',75000,'2021-03-15'),
('Sara','sara@gmail.com','Finance',65000,'2023-02-20'),
('Haris','haris@gmail.com','IT',120000,'2020-11-10'),
('Awais','awais@gmail.com','Sales',70000,'2022-08-05'),
('Nimra','nimra@gmail.com','HR',55000,'2023-06-12'),
('Zain','zain@gmail.com','Finance',85000,'2021-09-18'),
('Huzaifa','huzaifa@gmail.com','IT',95000,'2019-12-01'),
('Iqra','iqra@gmail.com','Sales',50000,'2023-04-14');


CREATE TABLE orders (
cust_id SERIAL PRIMARY KEY,
cust_name VARCHAR(50) NOT NULL,
product_name VARCHAR(50) NOT NULL,
quantity INT DEFAULT 1,
price INT DEFAULT 0,
order_no VARCHAR DEFAULT 'ORD1'
);

INSERT INTO orders (cust_name, product_name, quantity, price, order_no)
VALUES
('Ubaid','Laptop',1,50000,'ORD1001'),
('Ali','Mobile',2,30000,'ORD1002'),
('Sara','Keyboard',3,2000,'ORD1003'),
('Iqra','Mouse',1,1500,'ORD1004'),
('Nimra','Shoes',4,4000,'ORD1005'),
('Emaan','Shirt',5,1200,'ORD1006'),
('Zain','Bag',2,2500,'ORD1007'),
('Haris','Headphones',1,3500,'ORD1008'),
('Huzaifa','Smartwatch',3,8000,'ORD1009'),
('Awais','Monitor',2,10000,'ORD1010');


-- TASK 1

SELECT name, course
FROM students
WHERE course = 'CS'

SELECT emp_name, department, salary
FROM emp
WHERE department = 'IT';


-- Show orders where product price > 5000 OR quantity >= 3
-- Show customer_name, product_name, total_amount (quantity × price)
-- Use WHERE, calculation, ORDER BY DESC, LIMIT 5

SELECT cust_name,
       product_name,
       quantity * price AS total_amount
FROM orders
WHERE price > 5000 OR quantity >= 3
ORDER BY total_amount DESC
LIMIT 5;


-- Show employees whose name starts with 'A' OR email ends with 'gmail.com'
-- Only unique departments
-- Sort salary DESC
-- Use WHERE, LIKE, DISTINCT, ORDER BY

SELECT DISTINCT department
FROM emp
WHERE emp_name LIKE 'A%' OR email LIKE '%gmail.com'
ORDER BY department ASC;