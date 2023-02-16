``` bash
helm repo add stakater https://stakater.github.io/stakater-charts

helm repo update stakater

helm upgrade --install reloader stakater/reloader -nkube-system
```