-- 1. How many fraud vs non-fraud transactions? 

SELECT is_fraud, COUNT(*) FROM bank_transactions GROUP BY is_fraud;

-- 2. Total transaction value by state

SELECT state, SUM(transaction_amount) AS total_amount FROM bank_transactions GROUP BY state ORDER BY total_amount DESC;

-- 3. Average transaction amount by account type

SELECT account_type, AVG(transaction_amount) AS avg_amount FROM bank_transactions GROUP BY account_type;

--4. Average Transaction done by Users below 25 Year of age

select age , AVG(transaction_amount) as avg_amount from bank_transactions where age<25 GROUP BY age;