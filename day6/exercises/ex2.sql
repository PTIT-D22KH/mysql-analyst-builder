USE day6;
-- SELECT * FROM shopping_cart;
SELECT customer_id , ROUND((purchased_items / carted_items * 100),2) AS purchased_percentage

FROM shopping_cart
ORDER BY customer_id DESC
;

