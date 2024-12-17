-- Grant usage on the database
use database swaggy_database;
GRANT USAGE ON DATABASE swaggy_database TO ROLE my_swaggy_role;

-- Grant usage on the schema
GRANT USAGE ON SCHEMA swaggy_database.stage_schema TO ROLE my_swaggy_role;

-- Grant create and modify permissions on the schema
GRANT CREATE TABLE ON SCHEMA swaggy_database.stage_schema TO ROLE my_swaggy_role;
GRANT CREATE VIEW ON SCHEMA swaggy_database.stage_schema TO ROLE my_swaggy_role;
GRANT MODIFY ON SCHEMA swaggy_database.stage_schema TO ROLE my_swaggy_role;

-- Optional: Grant full schema ownership to the role (if needed)
GRANT OWNERSHIP ON SCHEMA swaggy_database.stage_schema TO ROLE my_swaggy_role;

-- Grant full permissions on all tables in the schema
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA swaggy_database.stage_schema TO ROLE my_swaggy_role;

-- Automatically grant permissions on new tables
GRANT SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA swaggy_database.stage_schema TO ROLE my_swaggy_role;





CREATE OR REPLACE TABLE stage_schema.demo_table (
    id INT,
    name STRING,
    created_at TIMESTAMP
);

INSERT INTO stage_schema.demo_table (id, name, created_at)
VALUES
    (1, 'Alice', CURRENT_TIMESTAMP),
    (2, 'Bob', CURRENT_TIMESTAMP),
    (3, 'Charlie', CURRENT_TIMESTAMP);
