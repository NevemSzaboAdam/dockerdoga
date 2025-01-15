#!/bin/bash

# docker.service, docker.socket
#docker network create mynet
docker build -t mymaria:v1 -f ./Dockerfile_3_mariadb .
docker create -it -p 3306:3306 --network mynet --hostname mariadb01 --name mariadb01 mymaria:v1
docker start mariadb01

docker build -t mygolang2:v1 -f ./Dockerfile_3_goapp3 .
docker create -it -p 5050:5050 --network mynet --hostname golang2 --name golang2 mygolang2:v1
docker start golang2
