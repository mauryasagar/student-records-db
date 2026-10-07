-- ==========================================
-- SESSION 1: Basic SELECT and WHERE Practice
-- ==========================================

CREATE TABLE students (
id INT,
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