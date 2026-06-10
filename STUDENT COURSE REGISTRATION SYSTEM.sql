-- STUDENT COURSE REGISTRATION SYSTEM --
-- TABLES (students, courses, enrollments) --

-- CHECK THE AVAILBE DATABASES --
SHOW DATABASES;

-- CREATE NEW DATABASE (college) --
CREATE DATABASE college;

-- SELECT THE college DATABASE --
USE college;

-- Create students table [student_id(primary_key), name(not null), email(unique), age, created_date(CURRENT_DATE)]
CREATE TABLE students (
	student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT,
    create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Create courses table [course_id (PRIMARY KEY), course_name (NOTO NULL), duration (int)]
CREATE TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration INT
);

-- Create enrollment table [student_id, course_id, enroll_date] --
CREATE TABLE enrollments (
	student_id INT,
    course_id INT,
    enroll_date DATE,
    
    PRIMARY KEY( student_id, course_id),
    
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert Records on students table --
INSERT INTO students VALUES
(1, 'john', 'john@gmail.com', 20, CURDATE()),
(2, 'Mary', 'mary@gmail.com', 22, CURDATE()),
(3, 'David', 'david@gmail.com', 19, CURDATE());

-- VIEW INSTERED data from the students table --
SELECT * FROM students;

-- Insert Records on the course table --
INSERT INTO courses VALUES
(101, 'Database', 3),
(102, 'Networking', 4),
(103, 'Programming', 5);

-- View inserted data from courses table --
SELECT * FROM courses;

-- Insert Records on the enrollments table --
INSERT INTO enrollments VALUES
(1, 101, '2026-04-01'),
(1, 102, '2026-04-02'),
(2, 101, '2026-04-03'),
(3, 103, '2026-04-04');

-- vIEW INSERTED DATA FROM COURSES TABLE --
SELECT * FROM enrollments;

-- 'WHERE' key word (Task: Students age > 20) --
SELECT * FROM students WHERE age > 20;

-- WHERE with AND (Task: age > 19, age < 23) --
SELECT * FROM students WHERE age > 19 AND age < 23;

-- UPDATE RECORDS VALUE --
UPDATE students SET name = 'Siva' WHERE student_id = 1;

-- change the table name --
ALTER TABLE student RENAME TO students;

-- View all tables --
SHOW TABLES;

-- ORDER BY --
SELECT * FROM students ORDER BY name;

-- ORDER BY DESC --
SELECT * FROM students ORDER BY age DESC;

-- LIMIT --
SELECT * FROM students LIMIT 4;

-- LIKE --
SELECT * FROM students WHERE name LIKE 'S%';

-- UPDATE --
UPDATE students SET age = 25 WHERE student_id = 1;

-- DELETE --
DELETE FROM enrollments WHERE student_id = 3;
DELETE FROM students WHERE student_id = 3;

-- INNER JOIN -- 
SELECT students.name, courses.course_name FROM enrollments 
INNER JOIN students ON enrollments.student_id = students.student_id 
INNER JOIN courses ON enrollments.course_id = courses.course_id;

-- LEFT JOIN --
SELECT students.name, courses.course_name FROM enrollments 
LEFT JOIN students ON enrollments.student_id = students.student_id 
LEFT JOIN courses ON enrollments.course_id = courses.course_id;

-- RIGHT JOIN --
SELECT students.name, courses.course_name FROM enrollments 
RIGHT JOIN students ON enrollments.student_id = students.student_id 
RIGHT JOIN courses ON enrollments.course_id = courses.course_id;

-- Specific Column --
SELECT name, email, age FROM students;

-- Multpile Condition --
SELECT * FROM students WHERE age > 19 ORDER BY age DESC;

-- Count Records --
SELECT COUNT(*) FROM students;

-- Show student Name --
SELECT students.name FROM enrollments
JOIN students ON enrollments.student_id = students.student_id
WHERE enrollments.course_id = 101;

-- Find the course Count --
SELECT course_id, COUNT(student_id) FROM enrollments GROUP BY course_id;