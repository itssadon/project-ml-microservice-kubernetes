#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=itssadon/project-ml-k8s:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project-ml-k8s\
    --image=$dockerpath\
    --port=80 --labels app=project-ml-k8s

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project-ml-k8s 8000:80
