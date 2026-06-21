# Task-4
SQL Data Analysis project using PostgreSQL and an e-commerce dataset. Demonstrates data import, filtering, sorting, aggregation, joins, subqueries, views, and indexing to extract business insights from structured relational data.
# SQL Data Analysis Project – E-commerce Database

## Project Overview

This project demonstrates the use of SQL for data analysis using PostgreSQL. An e-commerce dataset was imported into a relational database and analyzed using various SQL operations. The project focuses on data retrieval, filtering, aggregation, table relationships, subqueries, views, and query optimization.

---

## Objectives

* Import and manage structured data in PostgreSQL.
* Perform data analysis using SQL queries.
* Apply filtering, sorting, grouping, and aggregation techniques.
* Use joins to combine data from multiple tables.
* Create views for reusable analysis.
* Improve query performance using indexes.

---

## Tools Used

* PostgreSQL
* pgAdmin 4
* CSV Dataset Files

---

## Dataset Description

The project uses a small e-commerce database consisting of four tables:

### Customers

Stores customer information.

| Column        | Description        |
| ------------- | ------------------ |
| customer_id   | Unique customer ID |
| customer_name | Customer name      |
| city          | Customer city      |

### Products

Stores product information.

| Column       | Description       |
| ------------ | ----------------- |
| product_id   | Unique product ID |
| product_name | Product name      |
| price        | Product price     |

### Orders

Stores customer order details.

| Column       | Description                   |
| ------------ | ----------------------------- |
| order_id     | Unique order ID               |
| customer_id  | Customer who placed the order |
| order_date   | Date of order                 |
| total_amount | Total order value             |

### Order_Items

Stores products purchased in each order.

| Column     | Description        |
| ---------- | ------------------ |
| item_id    | Unique item ID     |
| order_id   | Associated order   |
| product_id | Purchased product  |
| quantity   | Quantity purchased |

---

## Database Operations Performed

### Data Import

* Imported CSV files into PostgreSQL tables.
* Verified imported records using SELECT statements.

### Data Retrieval

* Used SELECT statements to display records.
* Applied WHERE clauses to filter data.

### Sorting

* Used ORDER BY to sort records based on order values.

### Aggregation

* Calculated total revenue using SUM().
* Calculated average order value using AVG().
* Grouped customer sales using GROUP BY.

### Joins

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN

These joins were used to combine customer and order information.

### Subqueries

Used nested queries to identify orders above the average order value.

### Views

Created a reusable view named `customer_sales` to summarize customer purchases.

### Indexing

Created an index on `customer_id` to improve query performance.

---

## Key SQL Concepts Demonstrated

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* SUM()
* AVG()
* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* Subqueries
* Views
* Indexes

---

## Project Outcome

The project successfully demonstrated how SQL can be used to store, retrieve, and analyze structured business data. By applying different SQL techniques, meaningful insights were generated from the e-commerce dataset while improving understanding of relational databases and data analysis workflows.

---

## Files Included

* task4_queries.sql
* README.md
* customers.csv
* products.csv
* orders.csv
* order_items.csv
* Screenshots of query outputs

---

## Author

Vanessa Banongkur

Computer Engineering Student
