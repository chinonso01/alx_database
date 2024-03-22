#!/bin/bash

# Check if database name is provided as argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Store database name from argument
db_name=$1

# MySQL query to create force_name table
create_table_query="CREATE TABLE IF NOT EXISTS force_name (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);"

# Execute MySQL query
mysql -e "$create_table_query" "$db_name"

# Check if table creation was successful
if [ $? -eq 0 ]; then
    echo "Table 'force_name' created successfully in database '$db_name'"
else
    echo "Failed to create table 'force_name' in database '$db_name'"
fi
