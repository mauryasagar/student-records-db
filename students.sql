-- ==========================================
-- SESSION 1: Basic SELECT and WHERE Practice
-- ==========================================

CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50),
marks INT
);

INSERT INTO students VALUES
(1, 'Aarav', 'Delhi', 85),
(2, 'Diya', 'Mumbai', 92),
(3, 'Vivaan', 'Delhi', 78),
(4, 'Ananya', 'Chennai', 88);

-- Q1: Get all columns from the students table.
SELECT * FROM students;

-- Q2: Get only the name and city columns.
SELECT name, city FROM students;

-- Q3: Get all details of students who live in Mumbai.
SELECT * FROM students WHERE city='Mumbai';

-- Q4: Get the name and marks of students who scored 80 or less.
SELECT name, marks FROM students WHERE marks <= 80;

-- ==========================================
-- SESSION 2: Sorting, Limiting, and Unique Values
-- ==========================================

-- Q1: Get all students, sorted by name alphabetically (A to Z).
SELECT * FROM students ORDER BY name ASC;

-- Q2: Get the name and marks of the top 2 students with the highest marks.
SELECT name, marks FROM students ORDER BY marks DESC LIMIT 2;

-- Q3: Get a list of all unique cities from the students table.
SELECT DISTINCT city FROM students;

-- Q4: Get all columns, sorted by city alphabetically. If two students live in the same city, sort them by marks descending.
SELECT * FROM students ORDER BY city ASC, marks DESC;

-- ==========================================
-- SESSION 3: Aggregate Functions and Grouping
-- ==========================================

-- Q1: Count the total number of students.
SELECT COUNT(*) FROM students;

-- Q2: Find the average marks of all students.
SELECT AVG(marks) FROM students;

-- Q3: Find the lowest and highest marks in the table.
SELECT MIN(marks), MAX(marks) FROM students;

-- Q4: Count how many students live in each city.
SELECT city, COUNT(*) FROM students GROUP BY city;

-- ==========================================
-- SESSION 4: Relational Database Design & JOINs
-- ==========================================

CREATE TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    instructor VARCHAR(50)
);

INSERT INTO courses VALUES
(1, 'SQL Basics', 'Dr. Mehta'),
(2, 'Python', 'Prof. Rao'),
(3, 'Web Development', 'Dr. Khan'),
(4, 'Data Science', 'Prof. Singh');

CREATE TABLE enrollments (
	enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollments VALUES
(1, 1, 1, 90),
(2, 1, 2, 85),
(3, 2, 1, 95),
(4, 2, 3, 88),
(5, 3, 2, 75);

-- Q1: Get each student's name and the course they are enrolled in.
SELECT students.name, courses.course_name
FROM students
JOIN enrollments ON students.id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.course_id;

-- Q2: Get each student's name, course name, and the course instructor.
SELECT students.name, courses.course_name, courses.instructor
FROM students
JOIN enrollments ON students.id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.course_id;

-- Q3: Get each student's name, course name, and their grade.
SELECT students.name, courses.course_name, enrollments.grade
FROM students
JOIN enrollments ON students.id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.course_id;