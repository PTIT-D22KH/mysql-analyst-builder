USE bakery;

-- SELECT product_id, quantity, 
--     (
--         SELECT AVG(quantity)
--         FROM ordered_items
--     ) avg_quantity
-- FROM ordered_items

-- SELECT product_id, quantity, 
--     quantity / (
--         SELECT SUM(quantity)
--         FROM ordered_items
--     ) * 100 percent_of_quantity
-- FROM ordered_items

SELECT  product_id, avg_quantity
FROM(
SELECT product_id, quantity, 
    (
        SELECT AVG(quantity)
        FROM ordered_items
    ) avg_quantity
FROM ordered_items) AS avg_quant