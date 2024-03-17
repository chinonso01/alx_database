-- This script checks if users user_0d_1 and user_0d_2 exist in the MySQL server.

-- Checking if user_0d_1 exists.
SELECT COUNT(*)
FROM mysql.user
WHERE user = 'user_0d_1';

-- Checking if user_0d_2 exists.
SELECT COUNT(*)
FROM mysql.user
WHERE user = 'user_0d_2';
