use  warehouse  my_snowflake_swaggy;
use role my_snowflake_role;

use database swaggy_database;
use schema stage_schema;


--- create table in the scgema 

CREATE OR REPLACE TABLE stage_schema.ubioworo (
    OrderItemID INT,
    OrderID NUMBER,
    MenuID NUMBER,
    Quantity NUMBER,
    Price FLOAT,
    Subtotal FLOAT,
    CreatedDate TIMESTAMP,
    ModifiedDate TIMESTAMP,
    _stg_file_name TEXT,
    _stg_file_load_ts TIMESTAMP_NTZ,
    _stg_file_content_key TEXT,
    _copy_data_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COPY INTO stage_schema.ubioworo (
    OrderItemID,
    OrderID,
    MenuID,
    Quantity,
    Price,
    Subtotal,
    CreatedDate,
    ModifiedDate,
    _stg_file_name,
    _stg_file_load_ts,
    _stg_file_content_key,
    _copy_data_ts
)
FROM (
    SELECT
        $1::NUMBER AS OrderItemID,
        $2::NUMBER AS OrderID,
        $3::NUMBER AS MenuID,
        $4::NUMBER AS Quantity,
        $5::FLOAT AS Price,
        $6::FLOAT AS Subtotal,
        $7::TIMESTAMP AS CreatedDate,
        $8::TIMESTAMP AS ModifiedDate,
        METADATA$FILENAME AS _stg_file_name,
        METADATA$FILE_LAST_MODIFIED AS _stg_file_load_ts,
        METADATA$FILE_CONTENT_KEY AS _stg_file_content_key,
        CURRENT_TIMESTAMP AS _copy_data_ts
    FROM @my_csv_stage/order-Item-initial.csv.gz
)
FILE_FORMAT = (FORMAT_NAME = 'stage_schema.csv_file_format')
ON_ERROR = 'ABORT_STATEMENT';


CREATE OR REPLACE TABLE stage_schema.delivery_agent_ubio (
    DeliveryAgentID NUMBER,
    Name STRING,
    Phone STRING,
    VehicleType STRING,
    LocationID NUMBER,
    Status STRING,
    Gender STRING,
    Rating FLOAT,
    CreatedDate TIMESTAMP,
    ModifiedDate TIMESTAMP,
    _stg_file_name TEXT,
    _stg_file_load_ts TIMESTAMP_NTZ,
    _stg_file_content_key TEXT,
    _copy_data_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COPY INTO stage_schema.delivery_agent_ubio(
    DeliveryAgentID,
    Name,
    Phone,
    VehicleType,
    LocationID,
    Status,
    Gender,
    Rating,
    CreatedDate,
    ModifiedDate,
    _stg_file_name,
    _stg_file_load_ts,
    _stg_file_content_key,
    _copy_data_ts
)
FROM (
    SELECT
        $1::NUMBER AS DeliveryAgentID,
        $2::STRING AS Name,
        $3::STRING AS Phone,
        $4::STRING AS VehicleType,
        $5::NUMBER AS LocationID,
        $6::STRING AS Status,
        $7::STRING AS Gender,
        $8::FLOAT AS Rating,
        $9::TIMESTAMP AS CreatedDate,
        $10::TIMESTAMP AS ModifiedDate,
        METADATA$FILENAME AS _stg_file_name,
        METADATA$FILE_LAST_MODIFIED AS _stg_file_load_ts,
        METADATA$FILE_CONTENT_KEY AS _stg_file_content_key,
        CURRENT_TIMESTAMP AS _copy_data_ts
    FROM @my_csv_stage/day-02-delivery-agent.csv.gz
)
FILE_FORMAT = (FORMAT_NAME = 'stage_schema.csv_file_format')
ON_ERROR = 'ABORT_STATEMENT';

