-- Creating Table inside DB with columns and there Datatype

CREATE TABLE bank_transactions (
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    state VARCHAR(50),
    city VARCHAR(50),
    bank_branch VARCHAR(100),
    account_type VARCHAR(30),
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date DATE,
    transaction_time TIME,
    transaction_amount NUMERIC(12,2),
    merchant_id VARCHAR(50),
    transaction_type VARCHAR(50),
    merchant_category VARCHAR(50),
    account_balance NUMERIC(12,2),
    transaction_device VARCHAR(50),
    transaction_location VARCHAR(100),
    device_type VARCHAR(30),
    is_fraud INT,
    transaction_currency VARCHAR(10),
    customer_contact VARCHAR(30),
    transaction_description TEXT,
    customer_email VARCHAR(100)
);
/* Method to Import Dataset into DB
 click on Table ---> go to table made ---> right click ---> Import Dataset ----> Select dataset ----> Now you are GG !!!
*/

-- Testing after Importing Dataset into PostgreSQL

SELECT COUNT(*) FROM bank_transactions;
SELECT * FROM bank_transactions LIMIT 10;