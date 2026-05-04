#!/bin/bash
set -e

# Get running container IDs
CONTAINER_IDS=$(docker ps -q)

# Stop and remove containers if any exist
if [ -n "$CONTAINER_IDS" ]; then
  docker rm -f $CONTAINER_IDS
else
  echo "No running containers found"
fi
