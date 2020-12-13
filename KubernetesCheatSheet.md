# Kubernetes:

#### Get version:
```
kubectl version
```


#### Get information about deployments or services or pods:
```
kubectl get deploy
kubectl get services
kubectl get pods
```


#### Remove a deployment:
```
kubectl delete deployment <serviceName>
```


#### Remove the whole K8s created from yaml files:
```
kubectl delete -f <filePath/folderPath>
```


#### Run a specific service:
```
kubectl run <serviceName> --image=<imageName>
```


#### Apply a file or folder of K8s files:
```
kubectl apply -f <filePath/folderPath>
```


#### Expose a port to access the K8s:
```
kubectl port-forward <nameOfThePod> <portOnTheHost>:<portInTheK8s>
```
