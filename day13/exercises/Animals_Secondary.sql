USE day13;
CREATE TABLE animals_secondary (
    animal VARCHAR(255),
    region VARCHAR(255),
    average_weight INT
);

INSERT INTO animals_secondary (animal, region, average_weight) VALUES
('Rhinoceros', 'Africa and Asia', 800),
('Hippopotamus', 'Africa', 1200),
('Walrus', 'Arctic', 600),
('Squirrel Monkey', 'Central and South America', 20),
('Snow Leopard', 'Central Asia', 30),
('Beluga Whale', 'Arctic and sub-Arctic', 1000),
('Humpback Whale', 'Global', 25),
('Orangutan', 'Southeast Asia', 60),
('Giant Panda', 'China', 80),
('Manatee', 'West Africa and Caribbean and US coasts', 600),
('Koala', 'Australia', 45031),
('Sloth', 'Central and South America', 45030),
('Platypus', 'Australia', 25),
('Bison', 'North America', 600);