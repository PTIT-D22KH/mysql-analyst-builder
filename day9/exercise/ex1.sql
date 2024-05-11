USE day9;
SELECT gender, ROUND(AVG(total_purchase), 2) AS average_purchase
FROM purchases
GROUP BY gender
;