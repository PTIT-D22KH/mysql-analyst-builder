USE day6;
-- SELECT * FROM students;

-- SELECT first_name, last_name, grade
SELECT first_name, last_name 
FROM students
WHERE grade <= 'B'
ORDER BY first_name ASC, last_name ASC;
