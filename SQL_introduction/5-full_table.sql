-- Active: 1708628626646@@localhost@3306@testd
CREATE TABLE IF NOT EXISTS first_table(
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(256) DEFAULT NULL,
    c CHAR(1) DEFAULT NULL,
    created_at DATETIME DEFAULT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SHOW TABLES FROM hbtn_0c_0;