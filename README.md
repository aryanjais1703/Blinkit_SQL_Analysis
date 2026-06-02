# Blinkit Sales & Customer Analytics Using SQL

## About This Project

I created this project to practice SQL using a real-world Blinkit dataset. The project focuses on cleaning data, analyzing customer behavior, understanding sales performance, and generating business insights using SQL.

Through this project, I worked with multiple related tables and applied both basic and advanced SQL concepts to answer business-related questions.

---

## Project Objective

The main objective of this project was to:

* Understand customer purchasing behavior
* Analyze sales performance across different categories
* Identify top customers and best-selling products
* Evaluate payment methods and delivery performance
* Generate useful business insights from data

---

## Dataset Used

The dataset contains four tables:

### Customers

Contains customer information such as name, customer type, total orders, and average order value.

### Products

Contains product details including category, brand, price, and stock quantity.

### Orders

Contains order information such as payment method, delivery status, and order value.

### Order Items

Contains product-level transaction details for each order.

---

## Database Structure

The project uses four related tables:

Customers → Orders → Order_Items ← Products

Foreign keys were used to connect the tables and perform analysis across the dataset.

---

## SQL Concepts Used

### Data Cleaning

* NULL checks
* Duplicate checks
* Data validation

### Basic SQL

* SELECT
* WHERE
* ORDER BY
* LIMIT

### Aggregate Functions

* SUM()
* AVG()
* COUNT()
* MIN()
* MAX()
* GROUP BY

### Advanced SQL

* JOINs
* CASE WHEN
* CTEs
* Subqueries
* Window Functions
* RANK()
* DENSE_RANK()
* PARTITION BY

---

## Questions Answered

Some of the business questions explored in this project:

* Which customer type generates the most revenue?
* Which payment method is used the most?
* Who are the top spending customers?
* Which categories generate the highest sales?
* What are the best-selling products?
* How is delivery performance distributed?
* Which categories are underperforming?

---

## Key Insights

* Regular customers generated the highest revenue.
* Card payments contributed the most revenue.
* Dairy & Breakfast was the top-performing category.
* Baby Wipes and Baby Food were among the best-selling products.
* Most orders were delivered on time.
* Instant & Frozen Food generated the lowest revenue among categories.

---

## Project Structure

Blinkit-SQL-Analysis

* dataset/
* sql_queries/
* screenshots/
* README.md

---

## Tools Used

* MySQL Workbench
* SQL
* Kaggle Dataset
* GitHub

---

## What I Learned

This project helped me improve my understanding of:

* Database design
* Primary and Foreign Keys
* SQL Joins
* Data Cleaning
* Business Analysis
* Window Functions
* Writing SQL to solve real business problems

---

## Conclusion

This project helped me understand how SQL can be used to transform raw data into meaningful insights. It also gave me hands-on experience with data cleaning, analysis, and business reporting using a relational database.

## Author

Aryan Jaiswal