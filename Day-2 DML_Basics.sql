/*------------------------------------------------------Day 2 --------------------------------------------------------------------------*/

/* check constraint */
CREATE TABLE Society (
    AADHAR INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT NOT NULL,
    CONSTRAINT chk_age CHECK (Age > 18)
);
INSERT INTO Society VALUES
(123, 'MAYANK', 9);
DROP TABLE Society;

/* Foreign Key*/
CREATE TABLE student ( student_id INT PRIMARY KEY, name VARCHAR(20),
    address VARCHAR(20), age INT, dob DATE
);

CREATE TABLE courses ( course_name VARCHAR(20), instructor VARCHAR(20), reference_id INT,
 CONSTRAINT fk_refer  FOREIGN KEY (reference_id) REFERENCES student(student_id)
);

 -- Insert into student table
INSERT INTO student VALUES (1, 'Michael', 'New York', 20, '2005-03-10');
INSERT INTO student VALUES (2, 'Emma', 'London', 22, '2003-07-21');

-- Insert into courses table
INSERT INTO courses VALUES ('mathematics', 'Dr. Smith', 1);
INSERT INTO courses VALUES ('biology', 'Dr. Adams', 2);
/* Distinct*/
SELECT DISTINCT(course_name) as'all_courses' FROM courses;

UPDATE courses 
SET instructor='Mayank Jha' WHERE course_name ='mathematics' ;
/*Aggregate Functions*/
SELECT MAX(reference_id) From courses;
SELECT MIN(reference_id) From courses;
SELECT AVG(reference_id) as 'avg r-id' FROM courses;
SELECT COUNT(reference_id) as 'course-count' FROM courses;
SELECT SUM(reference_id) as 'course-sum' FROM courses;
SELECT STD(reference_id) as 'course -std' FROM courses;
/* Sorting */
SELECT course_name FROM courses ORDER BY reference_id DESC ;

SELECT course_name FROM courses ORDER BY reference_id DESC LIMIT 1,1;




