#!/bin/bash

# -------------------------------------------------------------------
# Script Name: run-tests.sh
# Description: This script prepares the testing environment by clearing
#              the terminal, resetting the test database, and running
#              PHPUnit with code coverage enabled and exclusions applied.
# -------------------------------------------------------------------

# Exit immediately if a command exits with a non-zero status
set -e

# Step 1: Clear the terminal screen for a fresh start
clear
echo "Terminal cleared. Preparing for test execution..."

# Step 2: Navigate to the root of the project directory
# - `cd "$(dirname "$0")/.."` ensures we move to the project root directory
# - `|| exit 1` ensures the script stops if the directory change fails
echo "Navigating to the root of the project..."
cd "$(dirname "$0")/.." || exit 1

# Step 3: Run the MySQL test database reset script
# This ensures a fresh database state before running tests
echo "Resetting the test database..."
./scripts/mysql-reset-tests.sh

# Step 4: Run PHPUnit tests with code coverage enabled and exclusions applied
# - `--coverage-clover clover.xml` generates a code coverage report in Clover format
# - `--exclude-group abstract` excludes tests marked with the 'abstract' group
echo "Running PHPUnit tests with code coverage..."
./vendor/bin/phpunit --coverage-clover clover.xml --exclude-group abstract

echo "Tests completed successfully."
