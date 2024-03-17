-- This script creates or updates the MySQL server user user_0d_1.

-- Creating or updating the user user_0d_1 and setting the password.
CREATE OR REPLACE USER 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';

-- Granting all privileges to the user user_0d_1.
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Flushing privileges to apply the changes.
FLUSH PRIVILEGES;
