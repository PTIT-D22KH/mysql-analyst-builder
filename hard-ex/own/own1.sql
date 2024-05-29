USE hard;
SELECT
    current.date,
    current.temperature
FROM
    temperatures AS current
JOIN
    temperatures AS previous
ON
    DATE(current.date) = DATE_ADD(previous.date, INTERVAL 1 DAY)
WHERE
    current.temperature > previous.temperature
ORDER BY
    current.date ASC;
