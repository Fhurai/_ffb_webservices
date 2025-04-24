#!/bin/bash

# Clear terminal
clear

# Navigate to the root of the project (from scripts/)
cd "$(dirname "$0")/.." || exit 1

# Run the test DB reset script
./scripts/mysql-reset-tests.sh

# Run PHPUnit with code coverage and exclusions
./vendor/bin/phpunit --coverage-clover clover.xml --exclude-group abstract
