USE bakery;
-- SELECT *,
-- RANK() OVER(PARTITION BY department ORDER BY salary DESC)
-- FROM employees;
SELECT *
FROM
(   SELECT *,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_row,
    DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank_row
    FROM employees
A) AS ranked
WHERE rank_row < 3
;