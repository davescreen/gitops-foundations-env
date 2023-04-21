set -x
kubectl port-forward svc/gitops-foundations -n argocd-exercise 8081:8080