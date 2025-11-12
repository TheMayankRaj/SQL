create database college_informationss;
use college_informationss;
create table departments(
dept_id int primary key,
dept_name varchar (50),
hod_name varchar (50)
);
INSERT INTO departments VALUES
(1,'Computer Science','Dr. Mehta'),
(2,'Electronics','Dr. Roy'),
(3,'Mechanical','Dr. Singh'),
(4,'Civil','Dr. Sharma'),
(5,'IT','Dr. Gupta'),
(6,'Physics','Dr. Rao'),
(7,'Chemistry','Dr. Bansal'),
(8,'Mathematics','Dr. Das'),
(9,'Biotech','Dr. Verma'),
(10,'Commerce','Dr. Patel');
  
create table courses(
course_id int primary key,
course_name varchar (50),
duration_years int
);
 INSERT INTO courses VALUES
(1,'B.Tech',4),
(2,'M.Tech',2),
(3,'B.Sc',3),
(4,'M.Sc',2),
(5,'BCA',3),
(6,'MCA',2),
(7,'B.Com',3),
(8,'MBA',2),
(9,'Diploma',3),
(10,'PhD',5);
 
create table librarys(
library_id int primary key,
library_name varchar(50)
);

INSERT INTO librarys VALUES
(1,'Central Library'),
(2,'IT Library'),
(3,'Science Library'),
(4,'Commerce Library'),
(5,'Hostel Library'),
(6,'Research Library'),
(7,'MBA Library'),
(8,'E-Library'),
(9,'Student Library'),
(10,'Language Library');

create table students(
student_id int primary key,
student_name varchar(50),
gender varchar(10),
dept_id int,
course_id int,
foreign key (dept_id) references departments(dept_id),
foreign key (course_id) references courses(course_id)
);
INSERT INTO students VALUES
(1,'Amit','Male',1,1),
(2,'Priya','Female',2,2),
(3,'Rohan','Male',3,1),
(4,'Sneha','Female',4,3),
(5,'Rahul','Male',5,5),
(6,'Anita','Female',6,4),
(7,'Vikram','Male',7,6),
(8,'Pooja','Female',8,8),
(9,'Neha','Female',9,3),
(10,'Arjun','Male',10,7);

create table teachers(
teacher_id int primary key,
teacher_name varchar (50),
dept_id int,
foreign key (dept_id) references departments(dept_id)
);
 INSERT INTO teachers VALUES
(1,'Dr. Rao',1),
(2,'Dr. Kapoor',2),
(3,'Dr. Sinha',3),
(4,'Dr. Iyer',4),
(5,'Dr. Kaur',5),
(6,'Dr. Menon',6),
(7,'Dr. Pillai',7),
(8,'Dr. Joshi',8),
(9,'Dr. Paul',9),
(10,'Dr. Thomas',10);

create table subjects (
subject_id int primary key,
subject_name varchar (50),
course_id int,
teacher_id int,
foreign key (course_id) references courses (course_id),
foreign key (teacher_id) references teachers(teacher_id)
);
INSERT INTO subjects VALUES
(1,'DBMS',1,1),
(2,'Electronics I',2,2),
(3,'Thermodynamics',3,3),
(4,'Building Design',4,4),
(5,'Programming',5,5),
(6,'Quantum Physics',6,6),
(7,'Organic Chemistry',7,7),
(8,'Algebra',8,8),
(9,'Genetics',9,9),
(10,'Economics',10,10);

create table enrollments(
enroll_id int primary key,
student_id int,
subject_id int,
enrollment_date date,
foreign key (student_id) references students(student_id),
foreign key (subject_id) references subjects(subject_id)
);

INSERT INTO enrollments VALUES
(1,1,1,'2025-07-01'),
(2,2,2,'2025-07-01'),
(3,3,3,'2025-07-01'),
(4,4,4,'2025-07-01'),
(5,5,5,'2025-07-01'),
(6,6,6,'2025-07-01'),
(7,7,7,'2025-07-01'),
(8,8,8,'2025-07-01'),
(9,9,9,'2025-07-01'),
(10,10,10,'2025-07-01');

create table exams(
exam_id int primary key,
subject_id int,
exam_date date,
max_marks int,
foreign key (subject_id) references subjects(subject_id)
);

INSERT INTO exams VALUES
(1,1,'2025-09-10',100),
(2,2,'2025-09-11',100),
(3,3,'2025-09-12',100),
(4,4,'2025-09-13',100),
(5,5,'2025-09-14',100),
(6,6,'2025-09-15',100),
(7,7,'2025-09-16',100),
(8,8,'2025-09-17',100),
(9,9,'2025-09-18',100),
(10,10,'2025-09-19',100);

create table results(
result_id int primary key,
exam_id int,
student_id int,
marks_obtained int,
foreign key (exam_id) references exams (exam_id),
foreign key (student_id) references students(student_id)
);
INSERT INTO results VALUES
(1,1,1,85),
(2,2,2,78),
(3,3,3,90),
(4,4,4,88),
(5,5,5,76),
(6,6,6,80),
(7,7,7,92),
(8,8,8,84),
(9,9,9,79),
(10,10,10,91);
 
create table book_issues(
issue_id int primary key,
library_id int,
student_id int,
book_name varchar (50),
issue_date date,
return_date date ,
foreign key (library_id) references librarys (library_id),
foreign key (student_id) references students(student_id)
);
INSERT INTO book_issues VALUES
(1,1,1,'DBMS Concepts','2025-08-01','2025-08-15'),
(2,2,2,'Circuit Theory','2025-08-02','2025-08-16'),
(3,3,3,'Thermo Book','2025-08-03','2025-08-17'),
(4,4,4,'Civil Drawing','2025-08-04','2025-08-18'),
(5,5,5,'C Programming','2025-08-05','2025-08-19'),
(6,6,6,'Physics Text','2025-08-06','2025-08-20'),
(7,7,7,'Organic Chem','2025-08-07','2025-08-21'),
(8,8,8,'Math Guide','2025-08-08','2025-08-22'),
(9,9,9,'Genetics 101','2025-08-09','2025-08-23'),
(10,10,10,'Economics','2025-08-10','2025-08-24');


    