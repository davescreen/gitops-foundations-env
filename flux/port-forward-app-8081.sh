# Flux installed in the 'flux' minikube cluster
set -x
# Or can minikube tunnel as the LoadBalancer starts port 80
kubectl port-forward svc/gitops-foundations -n flux-exercise 8081:80