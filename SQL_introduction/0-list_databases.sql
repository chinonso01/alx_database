-- Active: 1708628626646@@localhost@3306@good
--list all database in mysql server
#!/bin/bash

# Prompt for MySQL credentials
read -p "MySQL Username: " username
read -s -p "MySQL Password: " password
echo

# MySQL command to list databases
mysql -u"$username" -p"$password" -e "SHOW DATABASES;"
