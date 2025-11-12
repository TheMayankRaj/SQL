create database order_sql;
use order_sql;
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    product VARCHAR(40),
    amount INT CHECK (amount <= 50000)
);
INSERT INTO Orders (order_id,customer_name, product) VALUES(9,'Michael Chen', 'Laptop');
insert into Orders values (6,'Sarah Johnson', 'Phone', 20000);
insert into Orders values (4,'Emily Davis', 'Tablet', 46000);
SELECT * FROM Orders WHERE amount > 10000;
SELECT * FROM Orders WHERE product = 'Laptop' OR amount < 5000;
SELECT DISTINCT product FROM Orders;
SELECT * FROM Orders ORDER BY amount DESC LIMIT 2;
SELECT * FROM Orders WHERE amount BETWEEN 8000 AND 30000 ORDER BY amount ASC;
SELECT product, COUNT(*) as order_count FROM Orders GROUP BY product;
SELECT * FROM Orders WHERE amount = (SELECT MAX(amount) FROM Orders);
DROP TABLE Orders;