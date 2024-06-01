USE finalproject;
SELECT *
FROM us_household_income;
-- data cleaning
SELECT DISTINCT Type
FROM us_household_income;
--  1
UPDATE us_household_income
SET Type = 'CDP'
WHERE Type = 'CPD';

UPDATE us_household_income
SET Type = 'Borough'
WHERE Type = 'Boroughs'
;
--  2 remove duplicates
SELECT *
FROM (
	SELECT id,
    row_number() over(partition by id order by id) as row_num
    from finalproject.us_household_income
) as table_row
where row_num > 1;

DELETE FROM finalproject.us_household_income
where id in(
	select id
    FROM (
	SELECT id,
    row_number() over(partition by id order by id) as row_num
    from finalproject.us_household_income
) as table_row
where row_num > 1
);



-- EDA

-- 0

DELIMITER $$

CREATE PROCEDURE DataCleaning()
BEGIN
	UPDATE us_household_income
	SET Type = 'CDP'
	WHERE Type = 'CPD';

	UPDATE us_household_income
	SET Type = 'Borough'
	WHERE Type = 'Boroughs'
	;
    
    DELETE FROM finalproject.us_household_income
	where id in(
		select id
		FROM (
		SELECT id,
		row_number() over(partition by id order by id) as row_num
		from finalproject.us_household_income
	) as table_row
	where row_num > 1
	);
END $$
DELIMITER ;

-- CREATE EVENT
CREATE EVENT cleaning_data_weekly
ON SCHEDULE EVERY 1 WEEK
DO
	CALL DataCleaning();

-- 1
SELECT State_Name , AVG(ALand) as average_land_area, AVG(AWater) as average_water_area
from us_household_income
group by State_Name
order by average_land_area desc, average_water_area desc;


-- 4 
select county, state_name, sum(AWater) as total_water_area
from us_household_income
group by county, state_name
order by total_water_area desc
limit 10;

-- 7
select state_name, sum(ALand) as total_land_area, sum(AWater) as total_water_area, count(distinct city) as num_cities
from us_household_income
group by state_name
order by total_land_area desc;
-- 10
DELIMITER $$
drop procedure if exists stateReport;
CREATE PROCEDURE stateReport(IN state_ab_input CHAR(2))
BEGIN
	SELECT 
		state_name,
        state_ab,
        count(distinct city) as total_cities,
        avg(aland) as avg_land_area,
        avg(awater) as avg_water_area
	from us_household_income
    where state_ab = upper(state_ab_input)
    group by state_name, state_ab;
    
    select 
		city,
        aland,
        awater
	from us_household_income
    where state_ab = upper(state_ab_input);
    
END $$
DELIMITER ;

call stateReport('AL');

-- 13
explain select state_name, city,county, aland, awater
from us_household_income
where State_Name = 'Alabama' and city like 'A%'
order by aland desc, awater desc;
create index idx_state_name on us_household_income(state_name);
create index idx_city on us_household_income(city);
create index idx_county on us_household_income(county);

-- nhan xet: khi chua dung index: rows : 32706, filtered:1.11
--  khi dung index : rows: 525 - giam di rat nhieu ~ 62x, filtered:4.74

-- 16
drop procedure if exists predictLandWaterArea;
DELIMITER $$


CREATE PROCEDURE predictLandWaterArea(IN city_name VARCHAR(25), IN input_state_name VARCHAR(20))
BEGIN 
    DECLARE predicted_land_area BIGINT;
    DECLARE predicted_water_area BIGINT;
    

    SELECT 
        ALand * 1.02 AS predicted_land_area,
        AWater * 1.02 AS predicted_water_area
    INTO
        predicted_land_area,
        predicted_water_area
    FROM us_household_income
    WHERE city = city_name AND state_name = input_state_name
    ORDER BY row_id DESC
    LIMIT 1;
    
    SELECT 
        city_name AS city,
        input_state_name AS state,
        predicted_land_area,
        predicted_water_area;
END $$

DELIMITER ;

-- Call the stored procedure
CALL predictLandWaterArea('Calera', 'Alabama');


-- 19
-- Haversine formula
drop procedure if exists findCitiesWithinRadius;
DELIMITER $$
CREATE PROCEDURE findCitiesWithinRadius(IN input_lat DECIMAL(10,7), IN input_lon DECIMAL(10,7), IN input_radius INT)
BEGIN
	SELECT 
		city,
        state_name,
        county,
        ROUND((6371 * ACOS(COS(RADIANS(input_lat)) * COS(RADIANS(Lat)) * COS(RADIANS(Lon) - RADIANS(input_lon)) + SIN(RADIANS(input_lat)) * SIN(RADIANS(Lat)))), 2) AS distance
	from us_household_income
    having distance <= input_radius
    order by distance;

END $$
DELIMITER ;

call findCitiesWithinRadius(32.4473511, -86.4768097, 50);

-- 22
with resourceAllocation as(
	select
		city,
        state_name,
        aland,
        awater,
        (aland + awater) / (select sum(aland + awater) from us_household_income) * 100 as allocation_percentage
	from us_household_income
) select
	city, 
    state_name, 
    aland, 
    awater,
    allocation_percentage,
    allocation_percentage * 10000 as allocated_resources
from resourceAllocation
order by allocation_percentage desc;