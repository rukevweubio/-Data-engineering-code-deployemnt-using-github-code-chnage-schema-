-- Step 1: Create a File Format (CSV Example)
CREATE OR REPLACE FILE FORMAT my_csv_format
    TYPE = 'CSV'
    FIELD_OPTIONALLY_ENCLOSED_BY = '"'
    SKIP_HEADER = 1
    FIELD_DELIMITER = ','
    NULL_IF = ('NULL', 'NA');

-- Step 2: Create Stage
CREATE OR REPLACE STAGE my_stage
file_format=(format_name='my_csv_format')
    

-- Step 3: Create Pipe for Continuous Data Loading


-- Step 4: Create Stream for Change Data Capture (CDC)
CREATE OR REPLACE STREAM my_stream
    ON TABLE my_target_table
    SHOW_INITIAL_ROWS = TRUE;

-- Step 5: Create Another Table (Target Table for Data Processing)
CREATE OR REPLACE TABLE my_target_table (
    id INTEGER AUTOINCREMENT PRIMARY KEY,
    first_name STRING,
    last_name STRING,
    email STRING,
    date_of_birth DATE,
    created_at TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP
);

-- Step 6: Insert Data into the Target Table
INSERT INTO my_target_table (first_name, last_name, email, date_of_birth)
VALUES
    ('Alice', 'Green', 'alice.green@example.com', '1995-03-22'),
    ('Charlie', 'White', 'charlie.white@example.com', '1987-11-02'),
    ('David', 'Black', 'david.black@example.com', '1992-12-15');

-- Step 7: Verify the Data Inserted
SELECT * FROM my_target_table;

