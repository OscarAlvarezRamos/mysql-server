#!/bin/bash
clear

#set -x

STORAGE=mysql-server-storage
# QRY=$(docker volume ls | grep $STORAGE | awk '{print $2}')
# echo $QRY


if [ -z "$(docker volume ls | grep $STORAGE | awk '{print $2}')" ]; 
then
    echo "Build docker  volume : [$STORAGE]"
    docker volume create $STORAGE
else
    echo "Docker volume : [$STORAGE] was found..."
fi






docker-compose config
docker-compose build
docker-compose up -d
