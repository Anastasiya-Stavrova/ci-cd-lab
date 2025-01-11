#!/bin/bash

echo "Pulling latest images for application..."
docker compose pull

echo "Container startup..."
docker compose up -d --force-recreate

echo "Application successfully deployed!"