#!/bin/bash

# Define the keyword to search for
KEYWORD="mongo"

# Get and delete deployments containing the keyword
echo "Deleting deployments with keyword: $KEYWORD"
kubectl get deployments --no-headers | grep $KEYWORD | awk '{print $1}' | xargs -I {} kubectl delete deployment {}

# Get and delete services containing the keyword
echo "Deleting services with keyword: $KEYWORD"
kubectl get services --no-headers | grep $KEYWORD | awk '{print $1}' | xargs -I {} kubectl delete service {}

# Get and delete all other components containing the keyword (configmaps, secrets, etc.)
# Uncomment the following lines if you want to include more resources

echo "Deleting configmaps with keyword: $KEYWORD"
kubectl get configmaps --no-headers | grep $KEYWORD | awk '{print $1}' | xargs -I {} kubectl delete configmap {}

echo "Deleting secrets with keyword: $KEYWORD"
kubectl get secrets --no-headers | grep $KEYWORD | awk '{print $1}' | xargs -I {} kubectl delete secret {}

echo "Deletion process completed."
