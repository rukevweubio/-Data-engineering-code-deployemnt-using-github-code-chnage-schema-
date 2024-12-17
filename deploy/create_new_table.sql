use database swaggy_database;
use schema stage_shema;

CREATE OR REPLACE TABLE demo_table (
    id INT,
    name STRING,
    created_at TIMESTAMP
);

INSERT INTO demo_table (id, name, created_at)
VALUES
    (1, 'Alice', CURRENT_TIMESTAMP),
    (2, 'Bob', CURRENT_TIMESTAMP),
    (3, 'Charlie', CURRENT_TIMESTAMP);
