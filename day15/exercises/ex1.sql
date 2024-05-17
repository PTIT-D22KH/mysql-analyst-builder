USE day15;

SELECT *
FROM `order`
WHERE number_of_orders >= (
    SELECT MAX(number_of_orders)
    FROM `order`
)