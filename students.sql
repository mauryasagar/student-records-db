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