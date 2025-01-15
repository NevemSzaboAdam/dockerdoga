#!/bin/bash

# docker.service, docker.socket

docker build -t mygolang:v1 -f ./Dockerfile_2_goapp .
docker create -it -p 8000:8000 --hostname golang1 --name golang1  mygolang:v1
docker start golang1