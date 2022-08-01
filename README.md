# php-docker-hello-world-application
## About The Project
Its start up script to build your php script using docker file. 

## How to build docker image
_At first make sure docker daemon running in your local system after that to build docker image run following command from your._
  ```docker build --tag hello-world-docker-app .```

## How to run container
_In order to run container from the created image please run following script:_
 ```docker run -it --name hello-world-docker-app-cont -p 80:80 -d hello-world-docker-app:latest ```  
 
## How to run application?
Now type ```http://localhost``` on your browser to visit sample application.
