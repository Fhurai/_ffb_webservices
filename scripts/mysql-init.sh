#!/bin/bash

# MySQL connection parameters
MYSQL_USER="${MYSQL_USER:-root}"
MYSQL_PASSWORD="${MYSQL_PASSWORD:-root}"
MYSQL_HOST="${MYSQL_HOST:-127.0.0.1}"

# Create a temporary credentials file
TMP_MY_CNF=$(mktemp)
chmod 600 "$TMP_MY_CNF"
cat > "$TMP_MY_CNF" <<EOF
[client]
user=$MYSQL_USER
password=$MYSQL_PASSWORD
host=$MYSQL_HOST
EOF

mysql_cmd="mysql --defaults-extra-file=$TMP_MY_CNF"
mysqldump_cmd="mysqldump --defaults-extra-file=$TMP_MY_CNF"

# Determine the SQL directory
if [ -d "$(dirname "$0")/../sql" ]; then
  SQL_DIR="$(dirname "$0")/../sql"
elif [ -d "$(dirname "$0")/../docker-entrypoint-initdb.d" ]; then
  SQL_DIR="$(dirname "$0")/../docker-entrypoint-initdb.d"
else
  echo "No SQL directory found." >&2
  rm -f "$TMP_MY_CNF"
  exit 1
fi

cd "$SQL_DIR" || {
  rm -f "$TMP_MY_CNF"
  exit 1
}

echo "main :"
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
  echo "$step >"
  $mysql_cmd --default-character-set=utf8 ffb_main < "$step"
  echo "-- done"
done

echo ""
echo "stats :"
for step in \
  "20.stats_drop.sql" \
  "21.stats_struct.sql"; do
  echo "$step >"
  $mysql_cmd ffb_stats < "$step"
  echo "-- done"
done

echo ""
echo "tests :"
echo "30.tests_drop.sql >"
$mysql_cmd ffb_tests < "30.tests_drop.sql"
echo "-- done"

echo "Copying ffb_main to ffb_tests >"
$mysqldump_cmd ffb_main | $mysql_cmd ffb_tests
echo "-- done"

echo ""
echo "user :"
echo "40.user.sql >"
$mysql_cmd ffb_main < "40.user.sql"
echo "-- done"

# Clean up temporary file
rm -f "$TMP_MY_CNF"
