### Now, if Dockerfile is present in Lessons dir - it will use base image "udacity-api-server"


```shell
docker build -t l2p6 .
JOB=$(docker run -d -p 80:5000 --name l2p6 l2p6)
```
attach to container in different shell(after exit container will run)
`docker exec -it $JOB /bin/bash`
attach to the same shell
`docker attach $JOB`



## Test

curl http://192.168.99.100/readHello
curl -XPOST http://192.168.99.100/createHello
curl -XPUT http://192.168.99.100/updateHello
curl -XDELETE http://192.168.99.100/deleteHello
