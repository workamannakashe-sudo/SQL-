CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price DECIMAL(10,2),
    stock INT
);

INSERT INTO products (product_id, product_name, unit_price, stock) VALUES
(1, 'Laptop', 55000.00, 25),
(2, 'Smartphone', 25000.00, 50),
(3, 'Headphones', 2000.00, 120),
(4, 'Keyboard', 1500.00, 80),
(5, 'Mouse', 800.00, 150),
(6, 'Monitor', 12000.00, 40),
(7, 'Tablet', 18000.00, 35),
(8, 'Printer', 9000.00, 20),
(9, 'Smartwatch', 7000.00, 60),
(10, 'USB Drive', 500.00, 300);

-- COLUMN ALIAS WITH AS
DESC products; 

select product_name AS Product , unit_price AS Price from products;