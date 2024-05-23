-- cte
WITH cte_name AS(
    SELECT *
    FROM table_name
)
SELECT *
FROM cte_name
;
-- temp table
CREATE TEMPORARY TABLE temp_table_name
SELECT *
FROM table_name;
select *
FROM temp_table_name;