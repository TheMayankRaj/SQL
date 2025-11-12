create database shop_with;
use shop_with;
CREATE TABLE IF NOT EXISTS Shop (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) UNIQUE NOT NULL,
    supplier VARCHAR(40),
    price INT CHECK (price <= 20000)
);
INSERT INTO Shop (item_id,item_name, supplier) VALUES(1,'Keyboard', 'ABC Ltd');
insert into Shop values(2,'Laptop', 'ABC Ltd', 18000);
insert into Shop values(3,'Mouse', 'XYZ Corp', 2000);
SELECT * FROM Shop WHERE price > 15000;
SELECT * FROM Shop WHERE supplier = 'ABC Ltd' OR price < 5000;
SELECT DISTINCT supplier FROM Shop;
SELECT * FROM Shop WHERE price IS NOT NULL ORDER BY price DESC LIMIT 1;
SELECT * FROM Shop WHERE price BETWEEN 7000 AND 16000 ORDER BY price;
SELECT supplier, COUNT(*) AS item_count FROM Shop GROUP BY supplier;
SELECT * FROM Shop WHERE price = (SELECT MIN(price) FROM Shop WHERE price IS NOT NULL);
DROP TABLE IF EXISTS Shop;
