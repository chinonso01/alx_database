
if [ $# -eq 0 ]; then
    echo "Error: Database name is not provided."
    exit 1
fi

# Assign the database name provided as an argument
database_name="$1"

# SQL query to create the force_name table
create_table_query="CREATE TABLE IF NOT EXISTS $database_name.force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);"

# Execute the SQL query using the mysql command
echo "$create_table_query" | mysql -hlocalhost -uroot -p "$database_name"
