# Flux installed in the 'flux' minikube cluster
set -x
# Or can minikube tunnel as the LoadBalancer starts port 80
kubectl port-forward svc/flux-helm-app -n flux-helm 8082:80