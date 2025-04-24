#!/bin/bash

# -------------------------------------------------------------------
# Script Name: composer-setup.sh
# Description: This script navigates to the project root directory
#              and runs essential Composer commands to validate,
#              install dependencies, and regenerate the autoload files.
# -------------------------------------------------------------------

# Exit immediately if a command fails
set -e

# Step 1: Navigate to the project root directory (one level up from the scripts folder)
# `$(dirname "$0")` gets the directory of the current script,
# and `..` moves one directory level up to the project root.
echo "Navigating to the project root directory..."
cd "$(dirname "$0")/.." || exit 1

# Step 2: Run Composer commands to validate, install, and regenerate autoload files
# composer validate: Checks the composer.json file for syntax errors
# composer install: Installs project dependencies defined in composer.json
# composer dump-autoload: Regenerates the autoloader to optimize performance
echo "Running Composer commands to validate and install dependencies..."

# Validate the composer.json for errors
composer validate

# Install project dependencies
composer install

# Regenerate the autoloader for optimized performance
composer dump-autoload

echo "Composer setup completed successfully."
