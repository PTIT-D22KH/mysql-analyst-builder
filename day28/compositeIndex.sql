EXPLAIN SELECT *
FROM bakery.us_household_income
where State_name = 'Rhode Island'
AND ALand > 5000000;

CREATE INDEX idx_state_Aland
ON bakery.us_household_income(State_Name(8), ALand);