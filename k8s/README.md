# Kubernetes Deployment

Apply both manifests:

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
# or
kubectl apply -k k8s/

kubectl get deployments
kubectl get pods
kubectl get services
```

- Deployment: `expense-manager`, 2 replicas, image
  `ghcr.io/skit-devops-2026/devops-24eskcs095:latest`, containerPort 80
- Service: `expense-manager-service`, NodePort 30080 -> port 80

If the GHCR package is private, make it public first:
GitHub repo > Packages > devops-24eskcs095 > Package settings >
Change visibility to Public. Otherwise Kubernetes cannot pull it.
