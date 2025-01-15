#!/bin/bash

# docker.service, docker.socket

docker build -t myhttpd:v1 -f Dockerfile_1_httpd .
docker create -it -p 80:8080 --name httpdxd --hostname httpdxd myhttpd:v1
docker start httpdxd