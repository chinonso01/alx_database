-- Active: 1708628626646@@localhost@3306@testd
CREATE TABLE IF NOT EXISTS first_table(
    id INT() NOT NULL AUTO_INCREMENT,
    name VARCHAR(128) DEFAULT NULL,
    c CHAR(1) DEFAULT NULL,
    created_at DATE DEFAULT NULL,
    PRIMARY KEY(id)
)
DESC hbtn_0c_0.first_table;