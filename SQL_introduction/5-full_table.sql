-- Active: 1708628626646@@localhost@3306@testdb
CREATE DATABASE hbtn_0c_0;
USE hbtn_0c_0;
CREATE TABLE IF NOT EXISTS first_table(
    id INT(11) DEFAULT NULL,
    name VARCHAR(256) DEFAULT NULL
);
SELECT * FROM first_table;