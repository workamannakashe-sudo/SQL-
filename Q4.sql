-- Create Database
CREATE DATABASE IF NOT EXISTS ecommer_db1;
USE ecommer_db1;


-- PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price DECIMAL(10,2),
    stock INT
);

INSERT INTO products VALUES
(1, 'Laptop', 55000.00, 20),
(2, 'Smartphone', 25000.00, 35),
(3, 'Headphones', 2000.00, 100),
(4, 'Keyboard', 1500.00, 75),
(5, 'Mouse', 800.00, 120),
(6, 'Monitor', 12000.00, 30),
(7, 'Tablet', 18000.00, 25),
(8, 'Smartwatch', 7000.00, 50);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    status VARCHAR(50),
    amount DECIMAL(10,2)
);

INSERT INTO orders VALUES
(1001, 201, 'Pending', 59000.00),
(1002, 202, 'Delivered', 27000.00),
(1003, 203, 'Shipped', 16000.00),
(1004, 204, 'Cancelled', 800.00),
(1005, 205, 'Delivered', 32000.00),
(1006, 206, 'Pending', 9000.00),
(1007, 207, 'Delivered', 7000.00),
(1008, 208, 'Shipped', 18000.00);

-- ORDER_ITEMS TABLE
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1, 1001, 1, 1),   -- Laptop
(2, 1001, 3, 2),   -- Headphones
(3, 1002, 2, 1),   -- Smartphone
(4, 1002, 5, 2),   -- Mouse
(5, 1003, 6, 1),   -- Monitor
(6, 1003, 4, 2),   -- Keyboard
(7, 1004, 5, 1),   -- Mouse
(8, 1005, 1, 1),   -- Laptop
(9, 1005, 7, 1),   -- Tablet
(10,1006, 8, 1),   -- Smartwatch
(11,1007, 8, 1),   -- Smartwatch
(12,1008, 7, 1);   -- Tablet


-- DISTINCT VALUES 

SELECT DISTINCT status
FROM orders;

