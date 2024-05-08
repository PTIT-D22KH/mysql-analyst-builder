USE bakery;
-- SELECT product_name AS 'Goodie Name', units_in_stock 'UIS'
-- FROM products
-- ;

-- SELECT products.units_in_stock * products.sale_price AS Potential_Revenue
-- FROM products
-- ;


SELECT p.units_in_stock * p.sale_price AS Potential_Revenue
FROM products p
;