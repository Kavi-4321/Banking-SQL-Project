/* ==========================================
   BANKING SYSTEM SQL PROJECT
   Author: Kaviyarasu
   Description: Banking customer data analysis
   ========================================== */


/* ========= DATABASE CREATION ========= */

CREATE DATABASE IF NOT EXISTS banking_db;
USE banking_db;


/* ========= TABLE CREATION ========= */

CREATE TABLE bank_customers(
    age INT,
    job VARCHAR(100),
    marital VARCHAR(100),
    education VARCHAR(100),
    default_status VARCHAR(100),
    balance INT,
    housing VARCHAR(100),
    loan VARCHAR(100),
    contact VARCHAR(100),
    day INT,
    month VARCHAR(100),
    duration INT,
    campaign INT,
    pdays INT,
    previous INT,
    poutcome VARCHAR(100),
    deposit VARCHAR(100)
);


/* ========= BASIC DATA CHECK ========= */

SELECT * FROM bank_customers LIMIT 10;
SELECT COUNT(*) FROM bank_customers;


/* ========= DATA EXPLORATION ========= */

SELECT DISTINCT job FROM bank_customers;
SELECT DISTINCT education FROM bank_customers;
SELECT DISTINCT deposit FROM bank_customers;


/* ========= DATA FILTERING ========= */

SELECT * FROM bank_customers WHERE age IS NULL OR job IS NULL;
SELECT * FROM bank_customers WHERE balance < 0;


/* ========= GROUP BY ANALYSIS ========= */

SELECT age, job, COUNT(*)
FROM bank_customers
GROUP BY age, job
HAVING COUNT(*) > 1;

SELECT job, ROUND(AVG(balance),0) AS avg_balance
FROM bank_customers
GROUP BY job
ORDER BY avg_balance DESC;

SELECT job, ROUND(SUM(balance),0) AS total_balance
FROM bank_customers
GROUP BY job
ORDER BY total_balance DESC;

SELECT deposit, COUNT(*) AS total_count
FROM bank_customers
GROUP BY deposit;

SELECT loan, deposit, COUNT(*) AS total_count
FROM bank_customers
GROUP BY loan, deposit;

SELECT education, deposit, COUNT(*) AS total_count
FROM bank_customers
GROUP BY education, deposit;


/* ========= SORTING ========= */

SELECT * FROM bank_customers
ORDER BY balance DESC
LIMIT 10;


/* ========= VIEW CREATION ========= */

CREATE VIEW high_balance_customers AS
SELECT * FROM bank_customers
WHERE balance > 5000;

SELECT * FROM high_balance_customers;

SELECT COUNT(*) AS no_of_high_balance_customers
FROM high_balance_customers;


/* ========= AGGREGATE FUNCTIONS ========= */

SELECT education, COUNT(*) AS total_count
FROM bank_customers
GROUP BY education;

SELECT MAX(balance) AS high_balance,
       MIN(balance) AS low_balance
FROM bank_customers;

SELECT deposit,
COUNT(*) * 100.0 / (SELECT COUNT(*) FROM bank_customers) AS percentage
FROM bank_customers
GROUP BY deposit;

SELECT marital, ROUND(AVG(balance),0) AS average_balance
FROM bank_customers
GROUP BY marital;


/* ========= WINDOW FUNCTIONS ========= */

SELECT age, job, balance,
RANK() OVER(ORDER BY balance DESC) AS balance_rank
FROM bank_customers
LIMIT 10;

SELECT age, job, balance,
DENSE_RANK() OVER(ORDER BY balance DESC) AS balance_rank
FROM bank_customers
LIMIT 10;

SELECT age, job, balance,
ROW_NUMBER() OVER(ORDER BY balance DESC) AS row_num
FROM bank_customers
LIMIT 10;

SELECT age, job, balance,
AVG(balance) OVER(PARTITION BY job) AS job_avg_balance
FROM bank_customers;

SELECT age, balance,
SUM(balance) OVER(ORDER BY age) AS running_total
FROM bank_customers;

SELECT age, job, balance,
LAG(balance) OVER(ORDER BY balance DESC) AS previous_balance
FROM bank_customers;


/* ========= CASE STATEMENTS ========= */

SELECT age, job, balance,
CASE
    WHEN balance < 0 THEN 'Loss'
    WHEN balance BETWEEN 0 AND 1000 THEN 'Low Balance'
    WHEN balance BETWEEN 1001 AND 5000 THEN 'Medium Balance'
    ELSE 'High Balance'
END AS balance_category
FROM bank_customers;

SELECT
CASE
    WHEN balance > 5000 THEN 'High Value'
    ELSE 'Regular Type'
END AS customer_type,
COUNT(*) AS total_count
FROM bank_customers
GROUP BY customer_type;


/* ========= NULL CHECK ========= */

SELECT COUNT(*) AS total_count
FROM bank_customers
WHERE job IS NULL;
