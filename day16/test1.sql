USE bakery;

SELECT `Rating 1-10`,
SUM(`Rating 1-10`) OVER (ORDER BY `Rating 1-10`) AS cumulative_sum
FROM customer_orders_review;