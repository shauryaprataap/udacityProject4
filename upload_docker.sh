#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=shauryapratap/udacityproject4
# Step 2:
# Authenticate & tag
export DOCKER_ID_USER="shauryapratap"
docker login
docker tag project4 $DOCKER_ID_USER/udacityproject4
docker push $DOCKER_ID_USER/udacityproject4

# Step 3:
# Push image to a docker repository
docker push shauryapratap/udacityproject4
