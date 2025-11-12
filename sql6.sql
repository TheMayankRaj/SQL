create database teacher_2;
use teacher_2;
CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(255) NOT NULL,
    subject VARCHAR(30),
    salary INT CHECK (salary <= 80000)
);
INSERT INTO Teacher ( teacher_id,teacher_name, subject) VALUES(1,'Emily Brown', 'Physics');
insert into Teacher values (2,'John Doe', 'Maths', 60000);
insert into Teacher values (3,'Jane Smith', 'English', 25000);
SELECT * FROM Teacher WHERE salary > 50000;
SELECT * FROM Teacher WHERE subject = 'Maths' OR salary < 30000;
SELECT DISTINCT subject FROM Teacher;
SELECT * FROM Teacher WHERE salary = (SELECT MAX(salary) FROM Teacher) LIMIT 1;
SELECT * FROM Teacher WHERE salary BETWEEN 20000 AND 70000 ORDER BY salary ASC;
SELECT subject, COUNT(*) AS teacher_count FROM Teacher GROUP BY subject;
SELECT * FROM Teacher WHERE salary = (SELECT MIN(salary) FROM Teacher WHERE salary IS NOT NULL) LIMIT 1;
drop table Teacher;

