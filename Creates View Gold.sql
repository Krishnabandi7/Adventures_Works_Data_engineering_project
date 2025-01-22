
-- Create views
CREATE VIEW GOL.calendar AS
SELECT 
    * 
FROM 
    OPENROWSET(
        BULK 'https://awstoragedatalake44.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    ) AS QUER1;

CREATE VIEW GOL.customers AS
SELECT 
    * 
FROM 
    OPENROWSET(
        BULK 'https://awstoragedatalake44.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    ) AS QUER1;

CREATE VIEW GOL.products AS
SELECT 
    * 
FROM 
    OPENROWSET(
        BULK 'https://awstoragedatalake44.blob.core.windows.net/silver/Advanture_Products/',
        FORMAT = 'PARQUET'
    ) AS QUER1;

CREATE VIEW GOL.returns AS
SELECT 
    * 
FROM 
    OPENROWSET(
        BULK 'https://awstoragedatalake44.blob.core.windows.net/silver/Advanture_Returns/',
        FORMAT = 'PARQUET'
    ) AS QUER1;

CREATE VIEW GOL.sales AS
SELECT 
    * 
FROM 
    OPENROWSET(
        BULK 'https://awstoragedatalake44.blob.core.windows.net/silver/Advanture_Sales/',
        FORMAT = 'PARQUET'
    ) AS QUER1;

CREATE VIEW GOL.subcat1 AS
SELECT 
    * 
FROM 
    OPENROWSET(
        BULK 'https://awstoragedatalake44.blob.core.windows.net/silver/AdventureWorks_Product_Subcategory/',
        FORMAT = 'PARQUET'
    ) AS QUER1;

CREATE VIEW GOL.territories AS
SELECT 
    * 
FROM 
    OPENROWSET(
        BULK 'https://awstoragedatalake44.blob.core.windows.net/silver/Advanture_Territories/',
        FORMAT = 'PARQUET'
    ) AS QUER1;
