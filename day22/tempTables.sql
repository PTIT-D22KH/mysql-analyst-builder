USE bakery;
CREATE TEMPORARY TABLE temp_table
(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    favorite_move VARCHAR(100)
);
INSERT INTO temp_table
VALUES('Alex', 'Freberg', 'Lord of the Rings: Two Towers')

SELECT *
FROM temp_table;

CREATE TEMPORARY TABLE temp_table2
SELECT *
FROM employees
WHERE salary > 50000;

SELECT *
FROM temp_table2;