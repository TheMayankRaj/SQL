create database explore_hire;
use explore_hire;
CREATE TABLE course(
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) unique,
    duration int not null,
    fees INT DEFAULT 20000 CHECK (fees<= 100000)
);
insert into course (course_id,course_name,duration) values (01,'bsc ai',03 );
insert into Course values(02,"bcs animation",04,50000);
insert into Course values(03,'bcs digital marketing',05,30000);
select *from course;
select duration from Course where duration>=06;
select course_name,fees from course where fees<50000 and duration>12;
select distinct course_name,duration from course;
select course_name from course order by fees desc limit 1;
select course_name from course where duration between  06 and 12 order by fees;
SELECT duration, COUNT(*) as course_count FROM Course GROUP BY duration;
SELECT * FROM Course ORDER BY fees ASC LIMIT 1;
drop table course;