#!/bin/bash

# -------------------------------------------------------------------
# Script Name: build-docker-image.sh
# Description: Builds the Docker image for the ffb-api service without using cache.
#              This ensures that all layers are rebuilt, which is useful when
#              dependencies or base images may have changed.
# -------------------------------------------------------------------

# Exit immediately if a command exits with a non-zero status
set -e

# Define image name and tag
IMAGE_NAME="ffb-api"
IMAGE_TAG="latest"

# Build the Docker image without using the cache
echo "Building Docker image: ${IMAGE_NAME}:${IMAGE_TAG} (no cache)..."
docker build --no-cache -t "${IMAGE_NAME}:${IMAGE_TAG}" .

echo "Docker image '${IMAGE_NAME}:${IMAGE_TAG}' built successfully."
