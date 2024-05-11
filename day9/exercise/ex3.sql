USE day9;
SELECT  class, AVG(grade) AS average_grade
FROM classes
GROUP BY class
ORDER BY average_grade DESC
;