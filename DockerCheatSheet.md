# Docker:

#### Pull image:
```
docker pull <ImageName>
```


#### Run a container:
```
docker run <ImageName>
```


#### Run a container and clean up when exiting:
```
docker run -rm <ImageName>
```


#### Run a container and link terminal into the container(example opens bash inside the container):
```
docker run -it <ImageName>
docker run -it <ImageName> /bin/bash
```


#### Run a container in daemon mode(runs in background and command line is free for use):
```
docker run -d <ImageName>
```


#### Run a container and give it a custom name(used for legacy linking):
```
docker run --name <customContainerName> <ImageName>
```


#### Run a container and link it to another container(legacy linking):
```
docker run --link <customNameOfLinkedContainer>:<linkedContainerAliasInThisContainer> <ImageName>
```


#### Run a container with environment variable:
```
docker run -e <variableName>=<value> <ImageName>
docker run -e NODE_ENV=production node
```


#### Run a container with port forwarding:
```
docker run -p <portOnTheHost>:<portInTheContainer> <ImageName>
```


#### Run a container with data volume(will create a volume on the host and attach it to the container with the specified alias. This volume is managed by docker):
```
docker run -v <ContainerVolumeAlias> <ImageName>
docker run -v /var/www Quote
```


#### Run a container with data volume host address specified($(pwd) is current working directory):
```
docker run -v $(pwd):<ContainerVolumeAlias> <ImageName>
docker run -v $(pwd):/var/www Quote
```


#### Run a container and run commands in specific container directory:
```
docker run -v $(pwd):<ContainerVolumeAlias> -w "<ContainerVolumeAlias>" <ImageName> <extraCommandsYouWantExecutedInContainer>
docker run -v $(pwd):/var/www -w "/var/www" QuoteWeb npm start
```


#### Execute command in running container:
```
docker exec <partOfTheContainerId> <command>
docker exec d6 npm run dev
```


#### Create a network for the containers:
```
docker network create --driver <driverType> <customNetworkName>
docker network create --driver bridge isolated_network
```


#### List all networks available for the container:
```
docker network ls
```


#### Inspect network:
```
docker network inspect <networkName>
```


#### Run and attach the container to the custom network:
```
docker run --net=<customNetworkName> --name <customContainerNameUsedForLinking> <ImageName>
docker run -d --net=isolated_network --name mongodb mongo
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


#### Build image(if docker file uses default name Dockerfile no need to specify):
```
docker build -f <dockerFileNamePathFromTheBuildContextDir> -t <imageName/tagName> <buildContextDir>
```


#### Publish image to docker hub:
```
docker push <imageName/tagName>
```


#### Login to docker hub:
```
docker login
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


#### Copy to the custom image from another image:
```
COPY --from=<sourceImageAlias> <sourceDir> <InsideContainerDir>
COPY --from=publish /app .
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
ENTRYPOINT ["<entryPoint>","<entryPoint>"]
ENTRYPOINT ["npm","start"]
ENTRYPOINT npm start
```


#### Specify a volume that will be created in the custom image(Be careful with volumes, it can make some of the commands in the file to be overwritten):
```
VOLUME ["<ContainerVolumeAlias>"]
```


#### Specify environment variables for the custom image:
```
ENV <variableName>=<value>
ENV NODE_ENV=production
```


#### Use specified environment variable in the docker file:
```
$<variableName>
ENV PORT=3000
EXPOSE $PORT
```



# Docker compose yaml file:

#### Build services defined in docker compose file:
```
docker-compose build
```

#### Build individual services defined in docker compose file:
```
docker-compose build <serviceName>
```


#### create, link and start containers in docker compose file:
```
docker-compose up
```


#### create and start container in docker compose file without creating its dependencies:
```
docker-compose up --no-deps <serviceName>
```


#### Build services defined in docker compose file:
```
docker-compose up -d
```


#### teardown(stop and remove) services in docker compose file:
```
docker-compose down
```


#### teardown(stop and remove) services and images and volumes in docker compose file:
```
docker-compose down --rmi all --volumes
```


#### View the logs in docker compose file:
```
docker-compose logs
```


#### list the containers running in docker compose file:
```
docker-compose ps
```


#### stop services in docker compose file:
```
docker-compose stop
```


#### start services in docker compose file:
```
docker-compose start
```


#### remove containers in docker compose file:
```
docker-compose rm
```


