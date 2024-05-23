USE day21;
CREATE TABLE employee_hierarchy (
    employee_id INT,
    supervisor_id INT
);

INSERT INTO employee_hierarchy (employee_id, supervisor_id) VALUES
(1, NULL),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 1),
(7, 6),
(8, 7),
(9, 7);
