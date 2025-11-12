create database library_2;
use library_2;
CREATE TABLE Library2 (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) UNIQUE NOT NULL,
    author VARCHAR(50),
    price INT CHECK (price <= 1500)
);
INSERT INTO Library2 (book_id,title, author) VALUES (4,'Pride and Prejudice', 'Jane Austen');
insert into library2 values(1,'The Guide', 'R.K. Narayan', 1200);
insert into library2 values (2,'Malgudi Days', 'R.K. Narayan', 450);
insert into library2 values (3,'The Alchemist', 'Paulo Coelho', 900);
SELECT * FROM Library2 WHERE price > 1000;
SELECT * FROM Library2 WHERE author = 'R.K. Narayan' OR price < 500;
SELECT DISTINCT author FROM Library2;
SELECT * FROM Library2 WHERE price IS NOT NULL ORDER BY price DESC LIMIT 2;
SELECT * FROM Library2 WHERE price BETWEEN 400 AND 1000 ORDER BY price;
SELECT author, COUNT(*) AS book_count FROM Library2 GROUP BY author;
SELECT * FROM Library2 WHERE price = (SELECT MIN(price) FROM Library2 WHERE price IS NOT NULL);
drop table library2;