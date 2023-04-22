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

# Setting up flux config
cd flux-clusters-config
flux create kustomization flux-helm-app \
--source=gitops-foundations \
--path=./flux-helm \
--prune=true \
--interval=1m \
--export > ./clusters/flux/flux-helm-app-kustomization.yaml
