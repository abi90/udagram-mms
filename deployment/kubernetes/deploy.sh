kubectl delete deployment backend-user
kubectl delete deployment backend-feed
kubectl delete deployment frontend
kubectl delete secret aws-secret
kubectl delete secret env-secret
kubectl delete configmap env-config

## Apply env variables and secrets
kubectl apply -f deployment/kubernetes/aws-secret.yaml
kubectl apply -f deployment/kubernetes/env-secret.yaml
kubectl apply -f deployment/kubernetes/env-configmap.yaml
## Deployments - Double check the Dockerhub image name and version in the deployment files
kubectl apply -f deployment/kubernetes/backend-feed-deployment.yaml
## Do the same for other three deployment files
## Service
kubectl apply -f deployment/kubernetes/backend-feed-service.yaml

kubectl apply -f deployment/kubernetes/backend-user-deployment.yaml
kubectl apply -f deployment/kubernetes/backend-user-service.yaml

kubectl apply -f deployment/kubernetes/front-end-deployment.yaml
kubectl apply -f deployment/kubernetes/front-end-service.yaml

kubectl apply -f deployment/kubernetes/reverseproxy-deployment.yaml
kubectl apply -f deployment/kubernetes/reverseproxy-service.yaml

