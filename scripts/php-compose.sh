#!/bin/bash

# Navigate to the project root directory (one level up from the scripts folder)
cd "$(dirname "$0")/.." || exit 1

# Run Composer commands from project root
composer validate && composer dump-autoload