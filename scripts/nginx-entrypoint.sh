#!/bin/bash

# -------------------------------------------------------------------
# Script Name: reset-config.sh
# Description: This script removes the existing `config.php` file
#              and copies the example configuration file to the
#              original location. This is typically used to reset
#              the configuration to a default state.
# -------------------------------------------------------------------

# Exit immediately if a command fails
set -e

# Step 1: Check if the config.php file exists and remove it
# This ensures we only delete the file if it exists, avoiding errors.
if [ -f /var/www/html/config/config.php ]; then
    echo "Removing existing config.php file..."
    rm /var/www/html/config/config.php
else
    echo "config.php not found, skipping removal."
fi

# Step 2: Copy the example configuration file to the expected location
# This sets up the default configuration.
echo "Copying example config file to config.php..."
cp /var/www/html/config/config.php.example /var/www/html/config/config.php

echo "Configuration reset completed successfully."
