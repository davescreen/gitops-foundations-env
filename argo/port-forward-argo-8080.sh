# ArgoCD installed in the default minikube cluster
set -x
kubectl port-forward svc/argocd-server -n argocd 8080:443