-- Active: 1708628626646@@localhost@3306@testdb
SHOW DATABASES;
USE testDB;
CREATE TABLE employees(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    dob DATETIME,
    email VARCHAR(70),
    phone INTEGER(11)
);
INSERT INTO employees (id, name, dob, email, phone)
VALUES(1, 'Madhur', '1989-11-20 11:55:00', 'madhur@gmail.com', 0904489562);
SELECT * FROM employees;