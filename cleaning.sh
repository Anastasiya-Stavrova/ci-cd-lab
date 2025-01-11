#!/bin/bash

echo "Stopping all containers..."
docker compose down --remove-orphans

echo "Deleting all old images for application..."
images=$(docker images --filter=reference="$CI_REGISTRY_IMAGE/*" --format "{{.ID}}") &&
if [ -n "$images" ]; then
    docker rmi -f $images;
else
    echo "There are no images to delete";
fi