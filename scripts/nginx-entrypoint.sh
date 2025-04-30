#!/bin/bash

set -euo pipefail

SOURCE="/var/www/html/config/config.php.example"
DEST="/var/www/html/config/config.php"

if [[ -f "$DEST" ]]; then
  echo "Destination file already exists: $DEST"
  echo "Skipping copy to avoid overwriting existing config."
  exit 0
fi

if [[ -f "$SOURCE" ]]; then
  cp "$SOURCE" "$DEST"
  echo "Copied config example to config.php"
else
  echo "Source file not found: $SOURCE"
  exit 1
fi
