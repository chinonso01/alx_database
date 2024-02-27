#!/bin/bash

# Check if the correct number of arguments are passed
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Assign the argument to a variable
database_name=$1

# Create a temporary SQL file with the queries
temp_sql_file=$(mktemp /tmp/mysql_script.XXXXXX)

echo "USE information_schema;" >> "$temp_sql_file"
echo "SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT, EXTRA, COLUMN_COMMENT" >> "$temp_sql_file"
echo "FROM COLUMNS" >> "$temp_sql_file"
echo "WHERE TABLE_SCHEMA = '$database_name' AND TABLE_NAME = 'first_table';" >> "$temp_sql_file"

# Execute the SQL file using the mysql command
mysql -h your_mysql_host -u your_mysql_user -p < "$temp_sql_file"

# Remove the temporary SQL file
rm "$temp_sql_file"
