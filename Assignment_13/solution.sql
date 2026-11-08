-- Assignment 13: UNION and INTERSECT
CREATE TABLE club_a (student_name VARCHAR(30));
INSERT INTO club_a (student_name) VALUES ('Asha'), ('Rohan'), ('Neha');

CREATE TABLE club_b (student_name VARCHAR(30));
INSERT INTO club_b (student_name) VALUES ('Neha'), ('Pooja'), ('Meera');

-- Task 1
SELECT student_name FROM club_a
UNION
SELECT student_name FROM club_b
ORDER BY student_name;

-- Task 2 (supported in PostgreSQL and MySQL 8.0.31+)
SELECT student_name FROM club_a
INTERSECT
SELECT student_name FROM club_b
ORDER BY student_name;

-- Task 3
SELECT student_name FROM club_a
UNION ALL
SELECT student_name FROM club_b
ORDER BY student_name;
