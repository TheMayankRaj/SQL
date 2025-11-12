create database bank_neeraj;
use bank_neeraj;
CREATE TABLE BankAccount (
    acc_id INT AUTO_INCREMENT PRIMARY KEY,
    holder_name VARCHAR(255) NOT NULL,
    branch VARCHAR(30),
    balance INT CHECK (balance >= 1000)
);
INSERT INTO BankAccount (holder_name, branch, balance) VALUES
('Alice Smith', 'Delhi', 25000),
('Bob Johnson', 'Mumbai', 1000),  
('Charlie Brown', 'Delhi', 15000);
SELECT * FROM BankAccount WHERE balance > 20000;
SELECT * FROM BankAccount WHERE branch = 'Delhi' OR balance < 5000;
SELECT DISTINCT branch FROM BankAccount;
SELECT * FROM BankAccount ORDER BY balance DESC LIMIT 2;
SELECT * FROM BankAccount 
WHERE balance BETWEEN 10000 AND 30000 ORDER BY balance;
SELECT branch, COUNT(*) AS account_count FROM BankAccount GROUP BY branch;
SELECT * FROM BankAccount WHERE balance = (SELECT MIN(balance) FROM BankAccount);
DROP TABLE IF EXISTS BankAccount;