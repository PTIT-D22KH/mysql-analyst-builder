USE day7;
SELECT *
FROM bakery_items
WHERE LOCATE('Chocolate', product_name) > 0
;