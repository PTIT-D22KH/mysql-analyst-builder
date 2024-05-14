USE day12;
CREATE TABLE A (
    id INT,
    name VARCHAR(255)
);
CREATE TABLE B (
    id INT,
    value VARCHAR(255)
);
INSERT INTO A (id, name) VALUES
(1, 'Josh Harper'),
(2, 'Carolina Fancis'),
(3, 'Gerald Butler'),
(4, 'Richie Rich'),
(5, 'Carol Danvers'),
(6, 'Peter McMillan'),
(7, 'Sarah Burdauch'),
(8, 'Donald Glover');

INSERT INTO B (id, value) VALUES
(1, 'Josh Harper'),
(2, NULL),
(9, 'Gerald Butler'),
(4, 'Richie Rich'),
(5, NULL),
(10, 'Peter McMillan'),
(7, 'Sarah Burdauch'),
(8, 'Donald Glover');