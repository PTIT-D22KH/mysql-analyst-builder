USE day10;
-- SELECT * , (tasks_completed / tasks_assigned) AS done_percentage
-- FROM employees_info
-- WHERE (tasks_completed / tasks_assigned) < 0.75 AND end_of_year_review_rating <= 5
-- ORDER BY name
-- ;

SELECT COUNT (*)
FROM employees_info
WHERE (tasks_completed / tasks_assigned) < 0.75 AND end_of_year_review_rating <= 5
ORDER BY name
;