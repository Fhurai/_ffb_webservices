#!/bin/bash

# -------------------------------------------------------------------
# Script Name: clean-docker-environment.sh
# Description: Stops and removes all Docker Compose services,
#              deletes associated volumes, and prunes dangling volumes.
# -------------------------------------------------------------------

# Exit immediately if a command fails
set -e

# Step 1: Bring down the Docker Compose services
# -v: Remove named volumes declared in the `volumes` section of the Compose file
# --remove-orphans: Remove containers for services not defined in the current Compose file
echo "Stopping and removing Docker Compose services, volumes, and orphans..."
docker-compose down -v --remove-orphans

# Step 2: Prune all unused/dangling Docker volumes (not referenced by any containers)
# -f: Force confirmation without prompt
echo "Pruning all unused Docker volumes..."
docker volume prune -f

echo "Docker environment cleaned up successfully."
