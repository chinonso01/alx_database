#!/bin/bash

# Script to create the table id_not_null in a MySQL database

# Check if the database name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Error: Database name is not provided."
    exit 1
fi

# Assign the database name provided as an argument
database_name="$1"

# SQL query to create the id_not_null table
create_table_query="CREATE TABLE IF NOT EXISTS $database_name.id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);"

# Execute the SQL query using the mysql command
mysql -u username -p -e "$create_table_query"
