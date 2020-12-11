# Docker:

#### Pull image:
```
docker pull <ImageName>
```


#### Create a container:
```
docker run <ImageName>
```


#### Create a container with port forwarding:
```
docker run -p <portOnTheHost>:<portInTheContainer> <ImageName>
```


#### Create a container with data volume(will create a volume on the host and attach it to the container with the specified alias):
```
docker run -v <ContainerVolumeAlias> <ImageName>
docker run -v /var/www Quote
```


#### Inspect container:
```
docker inspect <ContainerName>
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
