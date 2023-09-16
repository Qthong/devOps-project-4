#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=thongnq2/dev-ops-project-4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity --image=$dockerpath:latest

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
sleep 1m

kubectl port-forward pod/udacity 8000:80
