# Docker:

#### Pull image:
```
docker pull <ImageName>
```


#### Run image(Create a container):
```
docker run <ImageName>
```


#### Run image with port forwarding(Create a container and forwards port  in container to port  on host):
```
docker run -p <portOnTheHost>:<portInTheContainer> <ImageName>
```


#### List all image:
```
docker images
```


#### List all running containers:
```
docker ps
```


#### List all containers:
```
docker ps -a
```


#### remove container(by typing for instance 24 as container id it will remove the container that starts with 24 as container id):
```
docker rm <partOfTheContainerId>
```


#### remove image(by typing for instance 24 as image id it will remove the image that starts with 24 as image id):
```
docker rmi <partOfTheImageId>
```
