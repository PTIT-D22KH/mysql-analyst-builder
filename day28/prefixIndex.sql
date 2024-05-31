EXPLAIN SELECT *
FROM bakery.us_household_income
where State_name = 'Rhode Island';

CREATE INDEX indx_state_name
ON bakery.us_household_income(State_Name(8));
CREATE INDEX indx_state_name2
ON bakery.us_household_income(State_Name(13));

SHOW INDEXES IN bakery.us_household_income;