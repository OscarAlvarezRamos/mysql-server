#!/bin/bash
clear

set -x

STORAGE=mysql-server-storage
QRY=$(docker volume ls | grep $STORAGE | awk '{print $2}')

echo $QRY


if [ -z "${$(docker volume ls | grep $STORAGE | awk '{print $2}')}" ]; then
    echo "VAR is unset or set to the empty string"
fi






docker-compose config
docker-compose build
docker-compose up -d
