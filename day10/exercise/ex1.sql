USE day10;
SELECT store_id, ROUND(AVG(revenue), 2) AS yearly_avg_revenue
FROM stores
GROUP BY store_id
HAVING ROUND(AVG(revenue), 2) > 1000000
;