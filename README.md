# Banking Customer Data Analysis (SQL Project)

## 📌 Project Overview

This project focuses on analyzing banking customer data using SQL.
The objective is to explore customer information, analyze balance patterns, identify trends, and apply SQL concepts such as aggregate functions, window functions, views, and conditional logic.

The dataset contains customer details like age, job, education, balance, loan status, and deposit information.

---

## 🎯 Objectives

* Understand customer financial behavior
* Analyze balance distribution across job roles
* Identify high-value customers
* Practice SQL aggregation and window functions
* Perform data categorization using CASE statements

---

## 🛠 Tools Used

* MySQL Workbench
* SQL (DDL, DML, Aggregate Functions, Window Functions)

---

## 🗄 Database Structure

### Database

`banking_db`

### Table: `bank_customers`

| Column         | Description               |
| -------------- | ------------------------- |
| age            | Customer age              |
| job            | Customer job type         |
| marital        | Marital status            |
| education      | Education level           |
| default_status | Credit default status     |
| balance        | Account balance           |
| housing        | Housing loan status       |
| loan           | Personal loan status      |
| contact        | Contact type              |
| day            | Last contact day          |
| month          | Last contact month        |
| duration       | Call duration             |
| campaign       | Number of contacts        |
| pdays          | Days since last contact   |
| previous       | Previous contacts         |
| poutcome       | Previous campaign outcome |
| deposit        | Term deposit subscription |

---

## 🔍 SQL Concepts Implemented

### ✅ Basic Queries

* Retrieve records using SELECT
* Filter data using WHERE
* Handle NULL values
* Sort data using ORDER BY
* Use DISTINCT values

### ✅ Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY and HAVING

### ✅ Data Analysis

* Job-wise average balance
* Total balance by job category
* Deposit distribution analysis
* Education-based customer count

### ✅ Window Functions

* RANK()
* DENSE_RANK()
* ROW_NUMBER()
* AVG() OVER (PARTITION BY)
* LAG()

### ✅ Conditional Logic

* CASE statement for balance categorization
* Customer classification (High value / Regular)

### ✅ Views

* Created view for high balance customers

---

## 📊 Key Analysis Performed

* Identified customers with negative balance
* Ranked customers based on account balance
* Categorized customers by balance level
* Calculated job-wise average balance
* Calculated deposit percentage
* Identified high balance customers (>5000)

---

## 📁 Project Workflow

1. Create database and table
2. Import dataset
3. Perform exploratory queries
4. Apply aggregate functions
5. Use window functions
6. Create views for analysis
7. Perform customer segmentation

---

## 🚀 Learning Outcomes

* Strong understanding of SQL data analysis
* Hands-on experience with window functions
* Practical knowledge of customer segmentation
* Improved query optimization and data exploration skills

---

## 👨‍💻 Author

KAVIYARASU
| Aspiring SQL Developer 

