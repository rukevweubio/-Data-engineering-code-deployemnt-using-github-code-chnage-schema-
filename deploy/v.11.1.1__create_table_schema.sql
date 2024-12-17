-- Step 1: Create the table
CREATE OR REPLACE TABLE users (
    user_id INTEGER AUTOINCREMENT PRIMARY KEY,
    first_name STRING,
    last_name STRING,
    email STRING,
    date_of_birth DATE
);

-- Step 2: Insert values into the table
INSERT INTO users (first_name, last_name, email, date_of_birth)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '1990-01-15'),
    ('Jane', 'Smith', 'jane.smith@example.com', '1985-05-20'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '1992-07-10'),
    ('Bob', 'Brown', 'bob.brown@example.com', '1988-11-30');

-- Step 3: Verify the data inserted
SELECT * FROM users;
