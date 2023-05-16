#!/bin/bash

docker rmi nginx_cat
docker rmi nginx_dog

docker build --tag=nginx_cat -f Dockerfiles/Dockerfile_cat .
docker build --tag=nginx_dog -f Dockerfiles/Dockerfile_dog .

minikube image rm nginx_cat
minikube image rm nginx_dog

minikube image load nginx_cat
minikube image load nginx_dog