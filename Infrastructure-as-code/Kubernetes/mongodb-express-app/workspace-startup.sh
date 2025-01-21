#!/bin/bash

# Apply ConfigMap
echo "Applying ConfigMap..."
kubectl apply -f mongo-configmap.yaml

# Apply Secrets
echo "Applying Secrets..."
kubectl apply -f mongo-secret.yaml

# Apply MongoDB Deployment and Service
echo "Applying MongoDB Deployment and Service..."
kubectl apply -f mongo.yaml

# Apply Mongo-Express Deployment and Service
echo "Applying Mongo-Express Deployment and Service..."
kubectl apply -f mongo-express.yaml

# Start Minikube Tunnel
#echo "Starting Minikube tunnel..."
#minikube tunnel &

echo "Startup process completed."
