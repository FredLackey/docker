#!/bin/bash

# Define the path to the Dockerfile
DOCKERFILE_PATH="$PWD/Dockerfile"

# Extract the version label from the Dockerfile
VERSION=$(grep -i "version" "$DOCKERFILE_PATH" | awk -F'=' '{print $2}' | tr -d '"')

# Check if VERSION is empty
if [ -z "$VERSION" ]; then
  echo "Version not found in Dockerfile."
  exit 1
fi

# Push the Docker images with the version tag and the latest tag
docker push fredlackey/ubuntu-dev:$VERSION
docker push fredlackey/ubuntu-dev:latest

# Print success message
echo "Docker images pushed to Docker Hub with tags fredlackey/ubuntu-dev:$VERSION and fredlackey/ubuntu-dev:latest"