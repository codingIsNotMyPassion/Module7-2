create database guvi_zen_class;
use guvi_zen_class;

CREATE TABLE users (user_id int,student_name varchar(50),mentor_name varchar(50));
CREATE TABLE codekata (user_id int, student_name varchar(50), problems_solved int);
CREATE TABLE attendance (user_id int,student_name varchar(50), presence_count int, total_days int);
CREATE TABLE topics (user_id int,student_name varchar(50),subject_name varchar(50),course_name varchar(50));
CREATE TABLE tasks (user_id int,student_name varchar(50), task_assigned varchar(40));
CREATE TABLE company_drives (user_id int,student_name varchar(50), drives_attended int);
CREATE TABLE mentors (mentor_id int,mentor_name varchar(45), students_taught int);
CREATE TABLE students_activated_courses (user_id int,student_name varchar(50), active_course varchar(10));
CREATE TABLE courses (course_id int,course_name varchar(45), course_start_date DATE,course_end_date DATE);

INSERT INTO users (user_id,student_name,mentor_name) VALUES (1,'Ram','Harry Sir'), 
(2,'Mad','Larry Mam'),(3,'Leo','Jack Sir'),(4,'Perry','Ginny Mam'),(5,'Dhruv','Shivam Sir');
INSERT INTO codekata (user_id,student_name,problems_solved) VALUES (1,'Ram',15), 
(2,'Mad',6),(3,'Leo',10),(4,'Perry',12),(5,'Dhruv',8);
INSERT INTO attendance (user_id,student_name,presence_count, total_days) VALUES (1,'Ram',25,28), 
(2,'Mad',25,35),(3,'Leo',25,38),(4,'Perry',55,58),(5,'Dhruv',45,48);
INSERT INTO topics (user_id,student_name,subject_name,course_name) VALUES (1,'Ram','Probability','CSE'), 
(2,'Mad','Calculus','CSE'),(3,'Leo','Electronics','EEE'),(4,'Perry','Digital Logic','ECE'),(5,'Dhruv','OS','CSE');
INSERT INTO tasks (user_id,student_name,task_assigned) VALUES (1,'Ram','Assignment1'), 
(2,'Mad','Assignment3'),(3,'Leo','Assignment2'),(4,'Perry','Assignment8'),(5,'Dhruv','Assignment11');
INSERT INTO company_drives (user_id,student_name,drives_attended) VALUES (1,'Ram',15), 
(2,'Mad',9),(3,'Leo',20),(4,'Perry',5),(5,'Dhruv',17);
INSERT INTO mentors (mentor_id,mentor_name,students_taught) VALUES (1000,'Harry Sir',3), 
(1001,'Larry Mam',2),(1002,'Jack Sir',1),(1003,'Ginny Mam',2),(1004,'Shivam Sir',3);
INSERT INTO students_activated_courses (user_id,student_name,active_course) VALUES (1,'Ram','CSE'), 
(2,'Mad','CSE'),(3,'Leo','EEE'),(4,'Perry','ECE'),(5,'Dhruv','CSE');
INSERT INTO courses (course_id,course_name, course_start_date,course_end_date) VALUES (100,'CSE','2015-07-02','2019-07-02'), 
(101,'ECE','2014-07-02','2018-07-02'),(102,'EEE','2015-07-02','2019-07-02'),(103,'CSIT','2016-07-02','2020-07-02'),(104,'MCH','2018-07-02','2022-07-02');

-- get number problems solved in codekata by combining the users
SELECT SUM(problems_solved) FROM codekata;

-- display the no of company drives attended by a user
SELECT student_name,drives_attended FROM company_drives;

-- combine display students_activated_courses courses by grouping them based the course
SELECT active_course,count(student_name) as Number_of_Students FROM students_activated_courses GROUP BY active_course order by Number_of_Students;

-- list all the mentors
SELECT * FROM mentors;

-- list the number of students assigned to a mentor
SELECT mentor_name,students_taught FROM mentors;
