USE bakery;

SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
FROM bakery.customer_orders
WHERE tip != 0
GROUP BY product_id
;


WITH cte_examples(product_id, sum_order_total, sum_tim, count_tip) AS
(
    SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
    FROM bakery.customer_orders
    WHERE tip != 0
    GROUP BY product_id
),
cte_examples2 AS(
    SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
    FROM bakery.customer_orders
    GROUP BY product_id
) 
SELECT *
FROM cte_examples cte1
RIGHT JOIN cte_examples2 cte2
    ON cte1.product_id = cte2.product_id
;
SELECT product_id, ROUND(`SUM(tip)` / `COUNT(tip)`, 2)
FROM cte_examples
WHERE `SUM(tip)` > 3
;


SELECT product_id, ROUND(sum_tip / count_tip, 2)
FROM (
    SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
    FROM bakery.customer_orders
    WHERE tip != 0
    GROUP BY product_id
) AS subquery_examples
GROUP BY product_id;