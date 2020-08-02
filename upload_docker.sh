#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=susmithasusmi13/udacityproject

# Step 2:  
# Authenticate & tag
export DOCKER_ID_USER="susmithasusmi13"
docker login
docker tag udacityproject $DOCKER_ID_USER/udacityproject
docker push $DOCKER_ID_USER/udacityproject

# Step 3:
# Push image to a docker repository
docker push susmithasusmi13/udacityproject