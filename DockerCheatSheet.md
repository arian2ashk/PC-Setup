# Docker:

#### Pull image:
```
docker pull <ImageName>
```


#### Create a container:
```
docker run <ImageName>
```


#### Create a container and link terminal into the container(example opens bash inside the container):
```
docker run -it <ImageName>
docker run -it <ImageName> /bin/bash
```


#### Create a container with port forwarding:
```
docker run -p <portOnTheHost>:<portInTheContainer> <ImageName>
```


#### Create a container with data volume(will create a volume on the host and attach it to the container with the specified alias. This volume is managed by docker):
```
docker run -v <ContainerVolumeAlias> <ImageName>
docker run -v /var/www Quote
```


#### Create a container with data volume host address specified($(pwd) is current working directory):
```
docker run -v $(pwd):<ContainerVolumeAlias> <ImageName>
docker run -v $(pwd):/var/www Quote
```


#### Create a container and run commands in specific container directory:
```
docker run -v $(pwd):<ContainerVolumeAlias> -w "<ContainerVolumeAlias>" <ImageName> <extraCommandsYouWantExecutedInContainer>
docker run -v $(pwd):/var/www -w "/var/www" QuoteWeb npm start
```


#### Inspect container:
```
docker inspect <ContainerNameOrPartOfTheContainerId>
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


#### remove container(Cleanup volume that is managed by docker. If not managed by docker the volume will not be removed):
```
docker rm -v <partOfTheContainerId>
```


#### remove image(by typing for instance 24 as image id it will remove the image that starts with 24 as image id):
```
docker rmi <partOfTheImageId>
```


#### Terminal Shortcuts:
```
on Linux: $(pwd)
on Windows Powershell: ${PWD}
on Dos: %cd%
```



# Dockerfile:

#### Create From a base image:
```
FROM <ImageName>
```


#### Label the custom image:
```
LABEL <text>
LABEL author="Bob"
```


#### Copy to the custom image:
```
COPY <sourceDir> <InsideContainerDir>
COPY . /var/www
```


#### Specify working directory for the custom image:
```
WORKDIR <InsideContainerDir>
```


#### Run command inside the custom image:
```
RUN <command>
```


#### Specify the port that is exposed in the custom image:
```
EXPOSE <portNumber>
```


#### Specify the entry point in the custom image:
```
ENTRYPOINT [<entryPoint>,<entryPoint>]
ENTRYPOINT ["npm","start"]
ENTRYPOINT npm start
```


