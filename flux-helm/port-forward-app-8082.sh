# Flux installed in the 'flux' minikube cluster
set -x
# Or can minikube tunnel as the LoadBalancer starts port 80
kubectl port-forward svc/my-chart -n my-chart-ns 8082:80