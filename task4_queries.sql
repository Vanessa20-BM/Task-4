CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

SELECT *
FROM customers
WHERE city = 'Kumasi';

SELECT *
FROM orders
ORDER BY total_amount DESC;

SELECT customer_id,
       SUM(total_amount) AS total_sales
FROM orders
GROUP BY customer_id;

SELECT SUM(total_amount)
AS total_revenue
FROM orders;

SELECT AVG(total_amount)
AS average_order
FROM orders;

SELECT c.customer_name,
       o.order_id,
       o.total_amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name,
       o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.customer_name,
       o.order_id
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

SELECT *
FROM orders
WHERE total_amount >
(
    SELECT AVG(total_amount)
    FROM orders
);

CREATE VIEW customer_sales AS
SELECT customer_id,
       SUM(total_amount) AS total_sales
FROM orders
GROUP BY customer_id;

SELECT * FROM customer_sales;

CREATE INDEX idx_customer
ON orders(customer_id);
SELECT *
FROM pg_indexes
WHERE tablename = 'orders';
