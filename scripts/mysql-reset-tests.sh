#!/bin/bash

# -------------------------------------------------------------------
# Script Name: reset-test-db.sh
# Description: This script resets the test database by:
#              - Locating and executing the 30.tests_drop.sql script
#              - Dropping and recreating necessary tables in the test database
#              - Dumping data from the main database and restoring it to the test database
# -------------------------------------------------------------------

# Exit immediately if any command fails
set -e

# Set default values for MySQL connection parameters if not provided
MYSQL_USER="${MYSQL_USER:-root}"        # Default MySQL user is root
MYSQL_PASSWORD="${MYSQL_PASSWORD:-root}" # Default MySQL password is root
MYSQL_HOST="${MYSQL_HOST:-localhost}"    # Default MySQL host is localhost

# MySQL and mysqldump commands with the provided connection parameters
mysql_cmd="mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD"
mysqldump_cmd="mysqldump -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD"

# Step 1: Locate the SQL directory containing the 30.tests_drop.sql script
# This script will look in two possible locations for the 30.tests_drop.sql file:
# - A default location relative to this script (../sql)
# - A location used in Docker entrypoint initialization (../docker-entrypoint-initdb.d)
echo "Locating SQL directory..."
if [ -f "$(dirname "$0")/../sql/30.tests_drop.sql" ]; then
  SQL_DIR="$(dirname "$0")/../sql"
elif [ -f "$(dirname "$0")/../docker-entrypoint-initdb.d/30.tests_drop.sql" ]; then
  SQL_DIR="$(dirname "$0")/../docker-entrypoint-initdb.d"
else
  # If the file isn't found in either location, exit with an error
  echo "30.tests_drop.sql not found." >&2
  exit 1
fi

# Step 2: Reset the test database
# 1. Drop existing test data using the 30.tests_drop.sql script
# 2. Dump data from the main database (ffb_main) and restore it into the test database (ffb_tests)
echo -n "Resetting test database: "
$mysql_cmd ffb_tests < "$SQL_DIR/30.tests_drop.sql" >/dev/null 2>&1 && \
$mysqldump_cmd ffb_main 2>/dev/null | $mysql_cmd ffb_tests >/dev/null 2>&1 && \
echo "done"
