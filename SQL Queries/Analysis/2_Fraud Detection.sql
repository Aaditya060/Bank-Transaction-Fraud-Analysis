--1. What percentage of transactions are fraudulent?

select (sum(is_fraud)*100/count(*)) as fraud_percentage from bank_transactions;


--2. Are there specific time periods (hour/day) with higher fraud rates?

--3. Which customers have repeated fraudulent transactions?

--4. Are fraudulent transactions higher for specific transaction amounts?