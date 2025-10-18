--1. What percentage of transactions are fraudulent?

select (sum(is_fraud)*100/count(*)) as "fraud percentage" from bank_transactions;


--2. Are there specific time periods (hour/day) with higher fraud rates?

select extract(hour from transaction_time) as "Hour of day", count(*) as "total transaction" , sum(is_fraud) as "fraud trans"
from bank_transactions group by "Hour of day" order by "fraud trans" desc;

--3. Which customers have repeated fraudulent transactions?

select customer_id, customer_name , count(*) as "fraud commition count" ,sum(transaction_amount) as 
"total fraud amount" from bank_transactions where is_fraud = 1 group by customer_id, customer_name 
order by "total fraud amount" desc;

--4. Are fraudulent transactions higher for specific transaction amounts?

select case
when transaction_amount < 500 then '< 500'
when transaction_amount between 500 and 1000 then '500-1000'
when transaction_amount between 1000 and 2000 then '1000-2000'
when transaction_amount between 2000 and 5000 then '2000-5000'
when transaction_amount between 5000 and 10000 then '5000-10000'
when transaction_amount between 10000 and 50000 then '10000-50000'
when transaction_amount between 50000 and 100000 then '50000-100000'
else '100000+' end as "Amount Range",
count(*) as "Total Transactions" ,  sum(is_fraud) as "Fraud Transaction",
round(sum(is_fraud)*100/count(*),2) as "Fraud Percentage" from bank_transactions
group by "Amount Range" order by "Fraud Percentage" desc;