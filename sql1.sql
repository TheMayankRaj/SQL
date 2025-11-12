create database biillu_table;
use biillu_table;
CREATE TABLE Company4(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(20),
    salary INT DEFAULT 20000 CHECK (salary >= 20000)
);
insert into Company4 (emp_id,emp_name,department) values (01,'anjli','info tech');
insert into Company4 values(02,'aman','tech',20000);
insert into Company4 values(03,'neeraj','info',30000);
select *from company4;
select salary from Company4 where salary>=5000;
select emp_name from Company4 where department="tech"and salary<30000;
select distinct department from Company4;
select emp_name from Company4 order by salary desc limit 2;
select emp_name from Company4 where salary between 25000 and 60000;
SELECT department, count(*) from Company4 group by department;
select emp_name,salary,department from Company4 order by salary desc limit 1;
drop table Company4;


