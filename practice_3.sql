-- #USE CONSTRAINT

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    course VARCHAR(50) DEFAULT 'CS'
);


CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL UNIQUE,
    price INT DEFAULT 1000
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    department VARCHAR(50) DEFAULT 'IT',
    joining_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    quantity INT DEFAULT 1,
    price INT DEFAULT 500,
    order_date DATE DEFAULT CURRENT_DATE,
    order_number VARCHAR(20) UNIQUE
);