--1. Which age group spends the most on average per transaction?

select age, avg(transaction_amount) as avg_amount from bank_transactions group by age order by avg_amount desc;

--2. Who are the top 10 customers by total spending?

select customer_name, sum(transaction_amount) as total_spent from bank_transactions group by customer_name  order by total_spent desc limit 10;

--3. What is the average transaction amount per gender?

select gender, avg(transaction_amount) as avg_amt from bank_transactions group by gender;

--4. How many customers made transactions in the last month vs. the previous month?

---need to write code here!!!!