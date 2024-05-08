USE day6;
-- SELECT * FROM tesla_models;
SELECT tesla_model, ((car_price - production_cost) * cars_sold) AS profit
FROM tesla_models
ORDER BY profit DESC;