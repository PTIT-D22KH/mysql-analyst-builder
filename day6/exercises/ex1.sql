USE day6;
-- SELECT NUMERIC(10, 0);

-- SELECT * FROM products;

SELECT product_name, ROUND(0.93 * (sales_price - purchase_price), 2) AS profit
FROM products
ORDER BY profit DESC, product_name ASC;