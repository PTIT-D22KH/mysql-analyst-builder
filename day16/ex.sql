USE day16;
SELECT customer_id,
transaction_id,
amount,
ROW_NUMBER() OVER(
    PARTITION BY customer_id
    ORDER BY amount DESC
)
FROM purchases
;
