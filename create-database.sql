-- write your queries here

-- Create a new database called 'SimpleDB'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'SimpleDB'
)
CREATE DATABASE SimpleDB
GO

USE SimpleDB
GO

-- Create a new table called 'customers' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.customer', 'U') IS NOT NULL
DROP TABLE dbo.customers
GO
-- Create the table in the specified schema
CREATE TABLE dbo.customers
(
    customerId INT NOT NULL PRIMARY KEY, -- primary key column
    cust_name [NVARCHAR](30) NOT NULL,
    cust_address [NVARCHAR](80) NOT NULL
    -- specify more columns here
);
GO
