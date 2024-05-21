USE bakery;
CREATE TABLE customer_sweepstakes(
   sweepstake_id     INTEGER  NOT NULL PRIMARY KEY,
   customer_id       INTEGER  NOT NULL,
   phone             VARCHAR(13),
   birth_date        DATE NOT NULL,
   address           VARCHAR(37) NOT NULL,
   total_money_spent INTEGER  NOT NULL,
   income            INTEGER,
   `Are_you_over_18` VARCHAR(3) NOT NULL,
   favorite_color    VARCHAR(6) NOT NULL
);

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (1, 100101, '635-573-9754', '1989-04-28', '1229 Main Street, Scranton, PA', 11000, 100000, 'Yes', 'Blue');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (2, 100101, '635-573-9754', '1989-04-28', '1229 Main Street, Scranton, PA', 11000, 100000, 'Yes', 'Blue');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (3, 100102, '7292879456', '1965-04-11', '123 North Hill Drive, Dallas, TX', 947, 75000, 'Y', 'Purple');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (4, 100103, '126-583-7856', '1999-02-07', '432 Hilly Road, Austin, TX', 534, 60000, 'No', 'Green');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (5, 100104, '(975)357-7663', '1921-04-22', '101 Alpine Avenue, New York, NY', 3567, NULL, 'Yes', 'Blue');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (6, 100105, NULL, '1948-11-07', '12 South Main Lane, San Francisco, CA', 195, 105000, 'Y', 'Teal');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (7, 100106, NULL, '2001-09-04', '1 Pastery Lane, Chicago, IL', 56, 50000, 'N', 'Orange');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (8, 100106, NULL, '2001-09-04', '1 Pastery Lane, Chicago, IL', 56, 50000, 'N', 'Orange');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (9, 100107, '235-357-3464', '1978-08-20', '987 Croissant Street, Scranton, PA', 2536, 30000, 'Yes', 'Yellow');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (10, 100108, '906-485-1542', '2006-07-06', '701 North Street, Sarasota, FL', 1009, 65000, 'Y', 'Red');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (11, 100109, '674-357-9151', '1987-05-30', '62810 Julip Lane, Scranton, PA', 540, NULL, 'Y', 'Pink');

INSERT INTO customer_sweepstakes(sweepstake_id, customer_id, phone, birth_date, address, total_money_spent, income, `Are_you_over_18`, favorite_color) 
VALUES (12, 100110, '346/458/3370', '1934-10-15', '122 South Street, Charleston, SC', 36, 45000, 'Yes', 'Purple');

