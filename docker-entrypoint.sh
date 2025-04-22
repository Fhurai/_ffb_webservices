#!/bin/bash
set -e

echo "Waiting for MySQL to be available..."
until mysqladmin ping -h"$MYSQL_HOST" --silent; do
    sleep 10
done

echo "MySQL is up - executing init script..."
cd /app/sql && ./init.sh

exec "$@"
