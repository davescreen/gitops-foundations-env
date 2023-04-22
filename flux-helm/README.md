# Make a release of a chart from my chart repo on GitHub

## Clean up if already installed manually
kubectl delete namespace my-chart-ns

# Setting up flux config to monitor the path
This uses the source already defined in gitops-foundations-source.yaml


```
cd flux-clusters-config
flux create kustomization flux-helm-app \
    --source=gitops-foundations \
    --path=./flux-helm \
    --prune=true \
    --interval=1m \
    --export > ./clusters/flux/flux-helm-app-kustomization.yaml
```

# Various commands to help get status

Checkout Weave on 9001 (port-forward-gitops.sh)

```
flux logs
kubectl get helmchart -A
kubectl get all -n my-chart-ns -o wide
flux get helmrelease --watch -n flux-helm
```

## Test on 8082
./port-forward-app-8082.sh

