# Udacity REST API course notes
---
## This is the code Repo for ud388 - Designing RESTful APIs

This code base was meant to supplement the Udacity course for designing RESTful APIs.  Within each directory you will find sample and solution code to the exercises in this course.  Some of this code will require some modification from the user before it is executable on your machine.

## API Keys for third party providers
This course uses the Google Maps and Foursquare APIs. You will need to create developer accounts and private keys in order to properly use code snippets that rely on these APIs.

## Python Libraries
The code in this repository assumes the following python libraries are installed:
* Flask
* SQLAlchemy
* httplib
* requests
* oauth2client
* redis
* passlib
* itsdangerous
* flask-httpauth

## Instructions
### Build base image to be used in this repo
Docker will be used to run all lessons
```sh
docker-machine ls
docker-machine start default
eval $(docker-machine env default)
docker build -t udacity-api-server .
```

Now, if Dockerfile is present in Lessons dir - it will use base image "udacity-api-server"
```sh
docker build -t l2p6 .
JOB=$(docker run -d -p 80:5000 --name l2p6 l2p6)
```
- attach to container in different shell(after exit container will run):
    `docker exec -it $JOB /bin/bash` 
- attach to the same shell `docker attach $JOB`


## Installing Redis
```sh
      wget http://download.redis.io/redis-stable.tar.gz
      tar xvzf redis-stable.tar.gz
      cd redis-stable
      make install
````