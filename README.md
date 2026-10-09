# Student Records Database

A MySQL database project containing the foundational schema, seed data, and basic queries for a student records system.

## Database Schema

**students** table:
- `id` (INT, PRIMARY KEY): Unique identifier for the student.
- `name` (VARCHAR): Student's full name.
- `city` (VARCHAR): Student's city of residence.
- `marks` (INT): Student's academic score.

**courses** table:
- `course_id` (INT, PRIMARY KEY): Unique identifier for the course.
- `course_name` (VARCHAR): Name of the course.
- `instructor` (VARCHAR): Instructor teaching the course.

**enrollments** table:
- `enrollment_id` (INT, PRIMARY KEY): Unique identifier for the enrollment.
- `student_id` (INT, FOREIGN KEY → students.id): The enrolled student.
- `course_id` (INT, FOREIGN KEY → courses.course_id): The course enrolled in.
- `grade` (INT): Grade achieved in the course.

## Topics Covered

The script demonstrates the following SQL concepts:
- **DDL:** Creating tables, defining data types, primary keys, and foreign keys.
- **DML:** Inserting records into related tables.
- **DQL:** Retrieving data using `SELECT`, filtering with `WHERE`, sorting with `ORDER BY`, restricting rows with `LIMIT`, and finding unique values with `DISTINCT`.
- **Aggregations:** Summarizing data using `COUNT`, `AVG`, `MIN`, `MAX`, and `GROUP BY`.
- **Joins:** Combining data across multiple tables using `INNER JOIN` with primary and foreign key relationships.

## Tools Used
- MySQL 8.0
- MySQL Workbench
- Git & GitHub