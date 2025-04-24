#!/bin/bash

# -------------------------------------------------------------------
# Script Name: restart-docker-environment.sh
# Description: A utility script to stop, rebuild, and restart Docker
#              Compose services by calling individual scripts.
# -------------------------------------------------------------------

# Exit immediately if a command fails
set -e

# Step 1: Bring down the existing Docker environment
# This stops and removes all running containers, volumes, and orphaned services
./scripts/docker-down.sh

# Step 2: Rebuild the Docker images and services
# This ensures that the latest code, configurations, and dependencies are used
./scripts/docker-build.sh

# Step 3: Start the Docker environment again
# This brings up the environment with the latest images and configurations
./scripts/docker-up.sh