#!/bin/bash

# Clear terminal
clear

# Run the test DB reset script
./scripts/mysql-reset-tests.sh

# Run PHPUnit with code coverage and exclusions
./vendor/bin/phpunit --exclude-group abstract
