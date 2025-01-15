#!/bin/bash

# docker.service, docker.socket

docker build -t  mymultistage:v1 -f ./Dockerfile_4_go-build .
docker create -it -p 5000:5000 --name multistage --hostname multistage mymultistage:v1
docker start multistage