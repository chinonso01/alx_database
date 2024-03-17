-- This script creates the database hbtn_0d_2 and the user user_0d_2.

-- Creating the database hbtn_0d_2 if it doesn't already exist.
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;

-- Creating or updating the user user_0d_2 and setting the password.
CREATE OR REPLACE USER 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';

-- Granting SELECT privilege on the database hbtn_0d_2 to the user user_0d_2.
GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';

-- Flushing privileges to apply the changes.
FLUSH PRIVILEGES;
