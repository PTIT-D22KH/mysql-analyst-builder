USE day11;
-- SELECT *
-- FROM customers;

-- SELECT *
-- FROM date_viewed;

-- SELECT *
-- FROM movienames;

SELECT *
FROM customers c 
JOIN date_viewed d
    ON c.customer_id = d.customer_id
JOIN movienames m 
    ON d.movie_id = m.movie_id;

SELECT c.name
FROM customers c 
JOIN date_viewed d
    ON c.customer_id = d.customer_id
JOIN movienames m 
    ON d.movie_id = m.movie_id
GROUP BY c.customer_id, c.name
ORDER BY COUNT(m.movie_id) DESC
;

SELECT c.name
FROM customers c
JOIN date_viewed d ON c.customer_id = d.customer_id
JOIN movienames m ON d.movie_id = m.movie_id
GROUP BY c.customer_id, c.name
ORDER BY COUNT(DISTINCT m.movie_id) DESC
;

