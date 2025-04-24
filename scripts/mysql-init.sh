#!/bin/bash

# -------------------------------------------------------------------
# Script Name: db-setup.sh
# Description: This script sets up the MySQL databases (main, stats, tests, and user)
#              by executing various SQL files. It includes SQL operations like
#              creating tables, inserting data, and copying data between databases.
# -------------------------------------------------------------------

# Exit immediately if any command fails
set -e

# MySQL connection parameters (defaults to root user and localhost)
MYSQL_USER="${MYSQL_USER:-root}"             # MySQL user (default: root)
MYSQL_PASSWORD="${MYSQL_PASSWORD:-root}"     # MySQL password (default: root)
MYSQL_HOST="${MYSQL_HOST:-127.0.0.1}"        # MySQL host (default: 127.0.0.1)

# MySQL and mysqldump commands with the provided connection parameters
mysql_cmd="mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD"
mysqldump_cmd="mysqldump -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD"

# Step 1: Determine the SQL directory location
# The script checks two possible locations for SQL files:
# - ../sql (relative to this script)
# - ../docker-entrypoint-initdb.d (used by Docker for database initialization)
echo "Locating SQL directory..."
if [ -d "$(dirname "$0")/../sql" ]; then
  SQL_DIR="$(dirname "$0")/../sql"
elif [ -d "$(dirname "$0")/../docker-entrypoint-initdb.d" ]; then
  SQL_DIR="$(dirname "$0")/../docker-entrypoint-initdb.d"
else
  # Exit if no SQL directory is found
  echo "No SQL directory found." >&2
  exit 1
fi

# Navigate to the determined SQL directory
cd "$SQL_DIR" || exit 1

# Step 2: Apply SQL steps for the 'ffb_main' database
echo "Setting up main database..."
for step in \
  "10.main_drop.sql" \
  "11.main_struct.sql" \
  "12.main_data_params.sql" \
  "13.main_data_fanfictions.sql" \
  "14.main_data_fanfictions_fandoms.sql" \
  "15.main_data_fanfictions_relations.sql" \
  "16.main_data_fanfictions_characters.sql" \
  "17.main_data_fanfictions_tags.sql" \
  "18.main_data_series.sql"; do
  echo "Running $step >"
  # Run each SQL script for the main database
  $mysql_cmd --default-character-set=utf8 ffb_main < "$step"
  echo "-- done"
done

# Step 3: Apply SQL steps for the 'ffb_stats' database
echo ""
echo "Setting up stats database..."
for step in \
  "20.stats_drop.sql" \
  "21.stats_struct.sql"; do
  echo "Running $step >"
  # Run each SQL script for the stats database
  $mysql_cmd ffb_stats < "$step"
  echo "-- done"
done

# Step 4: Apply SQL steps for the 'ffb_tests' database
echo ""
echo "Setting up tests database..."
echo "Running 30.tests_drop.sql >"
# Drop the existing test data
$mysql_cmd ffb_tests < "30.tests_drop.sql"
echo "-- done"

echo "Copying data from ffb_main to ffb_tests >"
# Dump data from ffb_main and restore it into ffb_tests
$mysqldump_cmd ffb_main | $mysql_cmd ffb_tests
echo "-- done"

# Step 5: Apply SQL steps for the 'ffb_user' database
echo ""
echo "Setting up user database..."
echo "Running 40.user.sql >"
# Apply user-specific SQL operations
$mysql_cmd ffb_main < "40.user.sql"
echo "-- done"

echo "Database setup completed successfully."
