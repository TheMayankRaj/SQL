create database cinema_3;
use cinema_3;
CREATE TABLE Cinema (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(255) UNIQUE NOT NULL,
    language VARCHAR(20),
    rating INT CHECK (rating <= 10)
);
INSERT INTO Cinema ( movie_id,movie_name, language) VALUES(2,'Parasite', 'Korean');
insert into Cinema values (1,'Inception', 'English', 8);
insert into Cinema values (3,'Dangal', 'Hindi', 9);
SELECT * FROM Cinema WHERE rating > 7;
SELECT * FROM Cinema WHERE language = 'Hindi' OR rating < 5;
SELECT DISTINCT language FROM Cinema;
SELECT * FROM Cinema WHERE rating IS NOT NULL ORDER BY rating DESC limit 2;
SELECT * FROM Cinema WHERE rating BETWEEN 5 AND 9 ORDER BY rating;
SELECT language, COUNT(*) as movie_count FROM Cinema GROUP BY language;
SELECT * FROM Cinema WHERE rating = (SELECT MAX(rating) FROM Cinema);
drop table Cinema;