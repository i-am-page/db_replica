#!/bin/bash

# Create a deployment
kubectl apply -f deployment.yaml

kubectl get deployments
kubectl get pods
kubectl get svc

# Execute a command in a pod
kubectl exec -it <pod-name> -- /bin/bash
