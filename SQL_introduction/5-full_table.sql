-- Active: 1708628626646@@localhost@3306@testd
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'first_table'
AND TABLE_SCHEMA = 'hbtn_0c_0';