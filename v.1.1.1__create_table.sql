-- Step 1: Create the table
CREATE OR REPLACE TABLE snowflake_ci_cd (
    id INTEGER AUTOINCREMENT PRIMARY KEY,
    name STRING,
    age INTEGER,
    city STRING
);

-- Step 2: Insert values into the table
INSERT INTO snowflake_ci_cd (name, age, city)
VALUES
    ('John Doe', 30, 'New York'),
    ('Jane Smith', 25, 'Los Angeles'),
    ('Alice Johnson', 35, 'Chicago');
    
-- Step 3: Verify the data inserted
SELECT * FROM snowflake_ci_cd;
