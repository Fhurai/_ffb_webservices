#!/bin/bash

MYSQL_USER="${MYSQL_USER:-root}"
MYSQL_PASSWORD="${MYSQL_PASSWORD:-root}"
MYSQL_HOST="${MYSQL_HOST:-localhost}"

mysql_cmd="mysql -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD"
mysqldump_cmd="mysqldump -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASSWORD"

# Locate SQL directory
if [ -f "$(dirname "$0")/../sql/50.tests_drop.sql" ]; then
  SQL_DIR="$(dirname "$0")/../sql"
elif [ -f "$(dirname "$0")/../docker-entrypoint-initdb.d/50.tests_drop.sql" ]; then
  SQL_DIR="$(dirname "$0")/../docker-entrypoint-initdb.d"
else
  echo "50.tests_drop.sql not found." >&2
  exit 1
fi

echo -n "Reset db tests : " \
  && $mysql_cmd ffb_tests < "$SQL_DIR/50.tests_drop.sql" >/dev/null 2>&1 \
  && $mysqldump_cmd ffb_main 2>/dev/null | $mysql_cmd ffb_tests >/dev/null 2>&1 \
  && echo "done"
