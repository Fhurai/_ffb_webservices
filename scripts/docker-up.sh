#!/bin/bash

# -------------------------------------------------------------------
# Script Name: start-docker-environment.sh
# Description: Builds and starts Docker Compose services in detached mode.
#              Forces rebuilds and recreates containers to ensure the
#              environment is fresh. Removes orphaned containers.
# -------------------------------------------------------------------

# Exit immediately if a command exits with a non-zero status
set -e

# Step 1: Build and start services using Docker Compose
# Options:
#   -d                : Run containers in detached mode
#   --build           : Build images before starting containers
#   --force-recreate  : Recreate containers even if their configuration hasn't changed
#   --remove-orphans  : Remove containers for services not defined in the current Compose file
echo "Starting Docker Compose services with fresh build and cleanup..."
docker-compose up -d --build --force-recreate --remove-orphans

echo "Docker Compose services are up and running."
