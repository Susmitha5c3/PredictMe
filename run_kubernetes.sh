dockerpath=susmithasusmi13/udacityproject

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity 8000:80