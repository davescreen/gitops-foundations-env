# App to use for Helm based flux deploy

# Install manually
kubectl create namespace flux-helm
kubectl apply -f service.yaml
kubectl apply -f deployment.yaml

# Get resources
clear && kubectl get all -n flux-helm -o wide

# Test on 8082
./port-forward-app-8082.sh

# Delete
kubectl delete namespace flux-helm
