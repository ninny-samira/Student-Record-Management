CREATE DATABASE student_management;
USE student_management;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(30),
    semester INT,
    cgpa DECIMAL(3,2)
);

INSERT INTO students
(student_id, student_name, department, semester, cgpa)
VALUES
(101, 'Rahim', 'CSE', 1, 3.50),
(102, 'Karim', 'EEE', 2, 3.70),
(103, 'Sadia', 'CSE', 3, 3.90),
(104, 'Nadia', 'BBA', 4, 3.40),
(105, 'Hasan', 'EEE', 5, 3.20),
(106, 'Rafi', 'CSE', 6, 3.80),
(107, 'Mim', 'BBA', 2, 3.60),
(108, 'Sakib', 'CSE', 4, 3.10),
(109, 'Tania', 'EEE', 3, 3.75),
(110, 'Fahim', 'BBA', 1, 3.30);

SELECT * FROM students;

SELECT * FROM students
WHERE student_id = 103;

SELECT * FROM students
WHERE student_name LIKE '%Rahim%';

UPDATE students
SET cgpa = 3.85
WHERE student_id = 101;

SELECT * FROM students
WHERE student_id = 101;

SELECT * FROM students
WHERE student_id = 110;

DELETE FROM students
WHERE student_id = 110;

SELECT COUNT(*) AS total_students
FROM students;

SELECT ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students;

SELECT
    COUNT(*) AS total_students,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students;

SELECT *
FROM students
WHERE department = 'CSE';

SELECT *
FROM students
ORDER BY cgpa DESC;







