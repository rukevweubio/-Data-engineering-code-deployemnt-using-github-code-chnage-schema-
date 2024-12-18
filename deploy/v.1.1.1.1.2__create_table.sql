-- Create a table with id, name, and created_at columns
CREATE OR REPLACE TABLE swaggy_database.stage_schema.demo_table (
    id INT,
    name STRING,
    created_at TIMESTAMP
);

-- Insert 20 rows into the table
INSERT INTO swaggy_database.stage_schema.demo_table (id, name, created_at)
VALUES
    (1, 'Alice', CURRENT_TIMESTAMP),
    (2, 'Bob', CURRENT_TIMESTAMP),
    (3, 'Charlie', CURRENT_TIMESTAMP),
    (4, 'David', CURRENT_TIMESTAMP),
    (5, 'Eva', CURRENT_TIMESTAMP),
    (6, 'Frank', CURRENT_TIMESTAMP),
    (7, 'Grace', CURRENT_TIMESTAMP),
    (8, 'Hannah', CURRENT_TIMESTAMP),
    (9, 'Ian', CURRENT_TIMESTAMP),
    (10, 'Julia', CURRENT_TIMESTAMP),
    (11, 'Kevin', CURRENT_TIMESTAMP),
    (12, 'Laura', CURRENT_TIMESTAMP),
    (13, 'Michael', CURRENT_TIMESTAMP),
    (14, 'Nina', CURRENT_TIMESTAMP),
    (15, 'Oscar', CURRENT_TIMESTAMP),
    (16, 'Pamela', CURRENT_TIMESTAMP),
    (17, 'Quentin', CURRENT_TIMESTAMP),
    (18, 'Rachel', CURRENT_TIMESTAMP),
    (19, 'Steve', CURRENT_TIMESTAMP),
    (20, 'Tina', CURRENT_TIMESTAMP);
--- the name of the table
