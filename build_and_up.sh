#!/bin/bash

# Change directory to frontend_blue
#cd ./frontend_blue || exit
# Build the Docker image for frontend_blue
docker build ./frontend_blue --tag cooopeir/conint_frontend:blue
# Change back to the root directory
#cd ..

# Change directory to frontend_green
#cd frontend_green || exit
# Build the Docker image for frontend_green
docker build ./frontend_green --tag cooopeir/conint_frontend:green
# Change back to the root directory
#cd ..

# Bring up the Docker Compose services
docker compose up -d
